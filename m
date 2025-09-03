Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70A77CAC580
	for <linux-phy@archiver.kernel.org>; Wed,  3 Sep 2025 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o9jsa5fcjVEc1+nTplKVZDeN5ar2aBik5SoWlEuUdsg=; b=CGEZDNSM7zONPK
	CHUJw1PwkzR9pDfVcLPUfIoEokdH4y+mpPcffRrDNvjcBy6/2rOK2Vi5c3WhF+IlvUXJd2Jif1Mq4
	1DOItUYiDn6Fj/AopjfkEFS161Y28CURAqM9V0owdD7BED1T4uJ34X9HTISjI91udNeX6glTcR1fK
	Tdw+urrrNSKNX7dR6UszZc2zic07C8QmiOHbcvy5rO/tgcF1mij+6xHFq0prWnefSgAzEjmvJCTTD
	GEkzGLmwPT9eQ5UMeNq3IqRWiJgXbQPNaoagTcR8U7bGnUWbznDwU0X9j+XgUn+R8SEdCCx6a4X+E
	6+aghRP9XwEdm/eIDBmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utomW-00000006lQv-0n3U;
	Wed, 03 Sep 2025 14:48:16 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utmkV-00000006PgY-3ePG
	for linux-phy@lists.infradead.org;
	Wed, 03 Sep 2025 12:38:04 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-45b8b1a104cso31516495e9.2
        for <linux-phy@lists.infradead.org>; Wed, 03 Sep 2025 05:38:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756903082; x=1757507882; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gBq2AL4q+hvpDTTNrtzvNXi1ClcvgDH146gronVyWSU=;
        b=zA2x4p4vCGQNarTqY1ti23QN1W55yWdslC/65Qw6rZxq9e8L7LSd5jMSgd55VaRHnG
         3O0ulC11OoFkdkkpBNeRkQWzt4rcun+5QodrYgieW/I1Ry9hO9TFch/XgYPrVbuHj6QW
         nzIkIaJdZ/bBF7bFE5xVuxmQNvSOrd4gDsUmNL40UcNWQgSBfUjWsrv8qk5Xr3Qo8n1X
         NNM/NT1sB0ukY023C31uuQAXuilfVybGL0XYVzCC86hCUM+/uDGY+ppiVmAGWnfq91Ys
         WXKYoZCGZ1V7mrKOOs1pzGEE5J34UsjM6UWAqW2Hsfh2y3ZvZnexfc6rFlQ+mE7BjB5e
         bb8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756903082; x=1757507882;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gBq2AL4q+hvpDTTNrtzvNXi1ClcvgDH146gronVyWSU=;
        b=RgjRWCUAIhBcwqHBRSFYOmX1ja0I8J4g4qaLM8I4nBmghADDd0PLPJ2rcPZ2OZ3qha
         dwsY5g5C9a6SWcDauDmxav1j1k0fwGjKMmt6YuPQyh82S2L/GkL7YY1KB74AjFPwWRYZ
         ELmXamqLY9hMOjWS0PONUGJzv9LpkWgwz2h+3KWgQ4dSrdXTDOn0M9/w25xpXsL2JEv8
         D7OAwe0oX5mIx1we1jNve4qaA4kyPmCFA41nGGs//aa+S6NHxsboZUpO1ItSw7kW+Jc4
         tRc3OAw7V8uj9iTNeuoleiUSrWdrVi2Ei0H4AJ7KlS7vWCdNHiuT1MzpahS3oHgaPhde
         EGmw==
X-Forwarded-Encrypted: i=1; AJvYcCX+FHN8YPGIqN4J3fDBVV5u5Q/VzxwWK1tQzGARunSdY8q6M8GGFflk6pdOWRA7OrpVJeBnu8OrKis=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw2S9H42R9nZrOrDVlYzrFFICNm1e0fW5yA5QpN8PE8jWXDGs1Z
	oQh/0NZJmdE8JaxZZodX9iKdALBcw7lNdnvQyMQCtCxpnMIp7OQR/awclMWSZeDDGKE=
X-Gm-Gg: ASbGncsTnkvYo7yloUbcfCYN8tOSGS3pGSvyObazV5nKCbnPxswI+BzTt5t4glQy58S
	S5HpmeOdFxWPMDNDrhi3XfsCrQxFX2sUKU8lOm4D8q2xl5Qw0ip+baSb2EVyRc5TagNEmfOQxnt
	JZszUrmSRnc1zDJl2kiqPwkLz+ulvsEwnFSIjFfR5mkpfOAriCYTQFR7/I61MAl2Fyzr4IwL0L6
	5sR95zQKEW0OGcLd4URnBjpdTUyCf2QXSqExAx+FFgzk+aZcmFlreoKtrPU/yd6L2Zm+1hfLw32
	MemW6NH5qVaNYScabZXqm5SmozTLTRyLqBDCmh5Z4Fb2BRYkzpImn6EFyYwrcGzBqXIu2n/HK3m
	Cb8PSLcyG1/jMkIBhPz3fU/8=
X-Google-Smtp-Source: AGHT+IHHjMfeUR3VPdWUhkYeBHLjrlPVEuiMEAPZ5ou8OrAN5gHnevrmutrWJRDE5DWhNlET0FIhsw==
X-Received: by 2002:a05:600c:524d:b0:45b:8a10:e5a6 with SMTP id 5b1f17b1804b1-45b8a10e833mr115504315e9.15.1756903082281;
        Wed, 03 Sep 2025 05:38:02 -0700 (PDT)
Received: from hackbox.lan ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d0a7691340sm22526782f8f.39.2025.09.03.05.38.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 05:38:01 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 03 Sep 2025 15:37:44 +0300
Subject: [PATCH v2 3/3] arm64: dts: qcom: Add missing TCSR refclk to the DP
 PHYs
MIME-Version: 1.0
Message-Id: <20250903-phy-qcom-edp-add-missing-refclk-v2-3-d88c1b0cdc1b@linaro.org>
References: <20250903-phy-qcom-edp-add-missing-refclk-v2-0-d88c1b0cdc1b@linaro.org>
In-Reply-To: <20250903-phy-qcom-edp-add-missing-refclk-v2-0-d88c1b0cdc1b@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Sibi Sankar <quic_sibis@quicinc.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>, stable@vger.kernel.org
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1464; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=gjoz5nwDFenqDS6hJyaeD48yf8bV5QGodUXJKjCBlis=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBouDagx3idw9QI9tPiz91f6ITE+nyun9EJds1pt
 OKHuigb1g6JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaLg2oAAKCRAbX0TJAJUV
 VpDyEACKT75jHFu/u91xhCbvMJWadVagqyszBJuFCNz0c0XNoJSRkovYTbCmhGaCSsG1Ec5U6Va
 OPT7aPr4V2pv2efX2EdEVy/6k66jxUZZ6nfl6PNyrVubbDo+LoPsC3T9zqNWaLEub+QHJGrdPQ2
 wuzKNLlckf6lfDX5CL0qsNJBjIBk5M9phhfaGZOne8eSj9/vhMBfY8BGpPHqrJLinoPEI72lIGs
 oiwTBIcXU4Aknf7NX7iIgsLxhZz2Cg8Gorio9zfT8Cp9a8ePFeLQzfeiA5TkRaPLqo36WGJ3CqH
 P/uEJuM0gPabltVHJQHkXrjEjtwjvRR68ye1EWgO1ERuwSSxuPmMysz6Vamfflr4eSj1c2f7xhc
 lR5wPssdj8zOUIMVS57+yzu48Y0sf9P+rg96n0lvoHsaAsUErq8fd5pp41sNXd5rBaFrTxmyxnO
 usAsFMPchM3EzvqXC2OCZR49gugUbBbMFi5RaaAIf4lXmzmdyv+sAmnFmfwI15/6gwxtY6jcXKj
 euI9qY2s0uWiudY9Y29UqR+3mrQt1uGVKfDSprjHgRpMlaKZ0v8+OHiZNYW5Or/76riAcVTCSQ+
 kinxeHZ3eqWmiLj1XyMavclXOfNhgUU6Q8prwwiFVnfyApijOR2oXzmxY5Gc/LJ8FezMcUEeDhU
 xD+giQpWtAUIu5A==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_053803_910765_79AAFA0B 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

The DP PHYs on X1E80100 need the refclk which is provided
by the TCSR CC. So add it to the PHYs.

Cc: stable@vger.kernel.org # v6.9
Fixes: 1940c25eaa63 ("arm64: dts: qcom: x1e80100: Add display nodes")
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 737c5dbd1c808300041cc8897ca1f7450e16e019..495356a7ebe662c68385a19ee0657033e44e0c7a 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -5670,9 +5670,11 @@ mdss_dp2_phy: phy@aec2a00 {
 			      <0 0x0aec2000 0 0x1c8>;
 
 			clocks = <&dispcc DISP_CC_MDSS_DPTX2_AUX_CLK>,
-				 <&dispcc DISP_CC_MDSS_AHB_CLK>;
+				 <&dispcc DISP_CC_MDSS_AHB_CLK>,
+				 <&tcsr TCSR_EDP_CLKREF_EN>;
 			clock-names = "aux",
-				      "cfg_ahb";
+				      "cfg_ahb",
+				      "refclk";
 
 			power-domains = <&rpmhpd RPMHPD_MX>;
 
@@ -5690,9 +5692,11 @@ mdss_dp3_phy: phy@aec5a00 {
 			      <0 0x0aec5000 0 0x1c8>;
 
 			clocks = <&dispcc DISP_CC_MDSS_DPTX3_AUX_CLK>,
-				 <&dispcc DISP_CC_MDSS_AHB_CLK>;
+				 <&dispcc DISP_CC_MDSS_AHB_CLK>,
+				 <&tcsr TCSR_EDP_CLKREF_EN>;
 			clock-names = "aux",
-				      "cfg_ahb";
+				      "cfg_ahb",
+				      "refclk";
 
 			power-domains = <&rpmhpd RPMHPD_MX>;
 

-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
