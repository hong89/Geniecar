package com.rental.geniecar.login.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.rental.geniecar.domain.api.NaverToken;
import com.rental.geniecar.domain.member.MemberVo;
import com.rental.geniecar.login.service.LoginService;
import com.rental.geniecar.member.service.MemberService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.reactive.function.client.WebClient;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import reactor.core.publisher.Mono;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.security.SecureRandom;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("/login")
public class LoginController {

    private final LoginService loginService;
    private final MemberService memberService;

    //ruddud
    @GetMapping("/login.do")
    public String login(HttpSession session, Model model){
        session.getAttribute("isLogOn");
        //System.out.println(session.getAttribute("isLogOn"));
        return "login/login";
    }


    @GetMapping("/fetchNaverApiUrl.do")
    @ResponseBody
    public String fetchNaverApiUrl(HttpServletRequest request) throws UnsupportedEncodingException {
        String clientId = "UzPVeRTcU83j7OZ_dIac";//애플리케이션 클라이언트 아이디값";


        String redirectURI = URLEncoder.encode("http://" + request.getServerName() + ":8085/login/naverLogin.do", "UTF-8");
        SecureRandom random = new SecureRandom();
        String state = new BigInteger(130, random).toString();
        String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code"
                + "&client_id=" + clientId
                + "&redirect_uri=" + redirectURI
                + "&state=" + state;

        return apiURL;
    }

    //ruddud
    @PostMapping("/dologin.do")
    public void dologin(@RequestParam Map<String, String> loginMap, HttpSession session, HttpServletResponse response) throws IOException {

        MemberVo memberVo = loginService.login(loginMap);
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();

        if (memberVo != null && memberVo.getId() != null) {

            if (memberVo.getWithdrawalYn().equals("N")) {
                session.setAttribute("isLogOn", true);
                session.setAttribute("memberInfo", memberVo);

                response.sendRedirect("/main/index.do");
            } else if (memberVo.getWithdrawalYn().equals("K")) {
                out.print("<script>alert('규정위반으로 강퇴당한 회원입니다. 관리자에게 문의하세요.');history.back();</script>");
                out.flush();
                out.close();
            } else {
                out.print("<script>alert(\"등록되지 않은 아이디이거나 아이디 또는 비밀번호를 잘못 입력하셨습니다.\");history.back();</script>");
                out.flush();
                out.close();
            }
        } else {
            out.print("<script>alert(\"등록되지 않은 아이디이거나 아이디 또는 비밀번호를 잘못 입력하셨습니다.\");history.back();</script>");
            out.flush();
            out.close();
        }
    }

    //ruddud
    @GetMapping("/logout.do")
    public String logout(HttpSession session) {
        session.setAttribute("isLogOn", false);
        session.removeAttribute("memberInfo");
        return "redirect:/main/index.do";
    }

    //ruddud
    @GetMapping("/findId.do")
    public String findId() {
        return "login/findId";
    }

    //ruddud
    @PostMapping("/resultFindId.do")
    public @ResponseBody String resultFindId(@RequestParam Map member) {
        return loginService.findId(member);
    }

    //ruddud
    @GetMapping("/findPw.do")
    public String findPw() {
        return "login/findPw";
    }

    //ruddud
    @PostMapping("/resultFindPw.do")
    public String resultFindPw(@RequestParam Map member, RedirectAttributes re) {
        if (loginService.findPw(member)) {
            return "forward:/login/changePw.do";
        } else {
            String msg = "not";
            re.addFlashAttribute("msg", msg);
            return "redirect:/login/findPw.do";
        }
    }

    @PostMapping("/changePw.do")
    public String changePw(String id, Model model) {
        model.addAttribute("id", id);
        return "/login/changePw";
    }

    @PostMapping("/dochangePw.do")
    public String dochangePw(@RequestParam Map pw, RedirectAttributes re) {
        if (pw.get("pw").equals(pw.get("pw_"))) {
            loginService.changePw(pw);
            String msg = "ok";
            re.addFlashAttribute("msg", msg);
        }
        return "redirect:/login/findPw.do";
    }


    //hsh
    //Todo 네이버 로그인 요청
    @GetMapping("/naverLogin.do")
    public String naverLogin(HttpServletRequest request, Model model, RedirectAttributes ra, HttpSession session) {

        try {
            String clientId = "UzPVeRTcU83j7OZ_dIac";//애플리케이션 클라이언트 아이디값";
            String clientSecret = "GUacqebacy";//애플리케이션 클라이언트 시크릿값";
            String code = request.getParameter("code");
            String state = request.getParameter("state");
            String redirectURI = URLEncoder.encode("http://localhost:8085/login/naverLogin.do", "UTF-8");
            String apiURL = "https://nid.naver.com/oauth2.0/token?grant_type=authorization_code"
                    + "&client_id=" + clientId
                    + "&client_secret=" + clientSecret
                    + "&redirect_uri=" + redirectURI
                    + "&code=" + code
                    + "&state=" + state;

            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection) url.openConnection();
            con.setRequestMethod("GET");
            int responseCode = con.getResponseCode();
            BufferedReader br;

            if (responseCode == 200) { // 정상 호출
                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            } else {  // 에러 발생
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
            }
            String inputLine;
            StringBuilder res = new StringBuilder();

            while ((inputLine = br.readLine()) != null) {
                res.append(inputLine);
            }
            br.close();

            if (responseCode == 200) {
                var objectMapper = new ObjectMapper();
                NaverToken naverToken = objectMapper.readValue(res.toString(), NaverToken.class);
                WebClient webClient = WebClient.builder()
                        .baseUrl("https://openapi.naver.com/v1/nid/me")
                        .defaultHeaders(httpHeaders -> {
                            httpHeaders.setBearerAuth(naverToken.getAccessToken());
                            httpHeaders.add("Host", "openapi.naver.com");
                            httpHeaders.add("Accept", "*/*");
                            httpHeaders.add("Pragma", "no-cache");
                            httpHeaders.add("User-Agent", "curl/7.12.1 (i686-redhat-linux-gnu) libcurl/7.12.1 OpenSSL/0.9.7a zlib/1.2.1.2 libidn/0.5.6");
                        })
                        .build();

                Mono<Map> mapMono = webClient.get().retrieve().bodyToMono(Map.class);
                Map naverMemberInfo = (Map) mapMono.block().get("response");
                System.out.println(naverMemberInfo);

                // db에 접근하여 회원인지 확인
                String naverId = memberService.hasNaverMemberId(naverMemberInfo.get("email").toString());
                // false면 회원가입 진행
                if (naverId.equals("false")) {
                    MemberVo memberVo = new MemberVo();
                    memberVo.setId(naverMemberInfo.get("email").toString());
                    memberVo.setPw("naverMemberLogin");
                    memberVo.setName(naverMemberInfo.get("name").toString());
                    memberVo.setGender(naverMemberInfo.get("gender").toString());
                    memberVo.setHp(naverMemberInfo.get("mobile").toString());
                    memberVo.setSnsCode("N");
                    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                    Date birth = formatter.parse(naverMemberInfo.get("birthyear").toString() + "-" + naverMemberInfo.get("birthday").toString());
                    memberVo.setBirthday(birth);
                    memberService.insertNaverMember(memberVo);
                }
                MemberVo memberInfo = memberService.naverLogin(naverMemberInfo.get("email").toString());
                session.setAttribute("isLogOn", true);
                session.setAttribute("memberInfo", memberInfo);

            } else {
                ra.addFlashAttribute("errorMsg", "네이버 로그인에 실패하였습니다.");
                return "redirect:login.do";
            }
        } catch (IOException | ParseException e) {
            log.error(e.getMessage());
        }

        return "main/index";
    }
	@GetMapping("/kakao.do")
	public @ResponseBody ResponseEntity<String> kakao(String code){
		RestTemplate rest = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		MultiValueMap<String, String> body = new LinkedMultiValueMap<>();
		body.add("grant_type", "authorization_code");
		body.add("client_id", "d32e45df85093ba4bbab108ac5afd304");
		body.add("redirect_uri", "http://localhost:8085/login/kakao.do");
		body.add("code", code);
		HttpEntity<MultiValueMap<String, String>> entity = new HttpEntity<>(body, headers);
		ResponseEntity<String> token = rest.exchange(
				"https://kauth.kakao.com/oauth/token", 
				HttpMethod.POST, 
				entity,
				String.class 
		);
		return token;
		
    }

}
