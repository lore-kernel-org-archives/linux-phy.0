Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE8B2C07E8F
	for <linux-phy@archiver.kernel.org>; Mon, 22 Apr 2024 08:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OfJc616d8f1cRhDq/T3/M1jIAXMhXFBAsZyxUsnHG8g=; b=lmyLauREO+FyXO
	GifQ/GAojekMqMal8Adaph3C0Fp2NFxs4o1K7x1cM/+6Iqg/e9CznsMvShD2Zaq6+UsfE9/iTR0lk
	KIRUg86Z69LF1cekDkNBaPiSZSs5kkFEv+jk4NjPghyd6kwaWFTfceeK8Kjwwp8COL1fNnjEk0knY
	LAi+wK/y4XVWVdENY99sD2kVlfl+IzLHlNxz2f5WzzOaKDXRxZt8dF+k3X9OY9d7/TyqmmZ71rg6b
	NfttUk+Knf/GV7N+HbqFAs+24jL7Rarv+7rTnwi2WkmHu0GDUvBkBSiuLP/vgu9OKKPXFJdg5j/kX
	/MIBE3fpGCybA5YtdJ0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryp74-0000000CfRy-2j1q;
	Mon, 22 Apr 2024 08:33:22 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryp70-0000000CfPj-0Ywb
	for linux-phy@lists.infradead.org;
	Mon, 22 Apr 2024 08:33:20 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-41a5b68ed5cso5868925e9.2
        for <linux-phy@lists.infradead.org>; Mon, 22 Apr 2024 01:33:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713774796; x=1714379596; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E+2buCEoaK85v2L3RrMSrTLmmbAA6+KMzzn+JIjinZ8=;
        b=UYsiHXwoWyRBY30/INk0PLj90fD4INIwvoEI1WbCSnXHWNXn4R+jXptxnDB6AniUQj
         zYVPZj6pKDEOJVjmvnBQSKevnTzI0IZ2HIT/uhOpJCkT8o5tgPyeXK5iR1utOpSjRQOU
         pi61EeRq66yr1vte+WMSqfP+RITm/X9+h3QTtwkMAU6K7eHjNB2nDSEODCB5O317SbJV
         B4fS4bjhlWWp9bU1+5noVG9TozZRg10T1L3PGDDlf9AvbyufoL72Dkm1io/yveTCfjR3
         BsnYgBKDJJyhl5aYMKJq/ObWx3xizqaZkMe2y/Dsqv2s6ZOzb8clX2TcqXDqAWr7BWNQ
         A4hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713774796; x=1714379596;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E+2buCEoaK85v2L3RrMSrTLmmbAA6+KMzzn+JIjinZ8=;
        b=qp3mxwb4XBe2Ip+7Ed7QXs7ZlXUPK1ps5MaKP6I/Q5dcGqjMaqEx098+iI2jY6ncLD
         nQCMdq9e9T/1g1yIztSKP6bopKDYeAH4/3SLkDEGMUSlHADOQ8WZvLzNOGenJoTVDntf
         m54ivTi0XaNZlUmJKUKf8bfG94eo5VZdKJOwVf1IjkDfcfttutGA7p87SCTqThlrSFG/
         ZXHgNaj/aYPWr/omlxcW/q8vI4Knl8jQbmRQXskF7c3q7UYrT/eFbCsoj7pB/TFfL8DH
         gch85L9sOhMVuUwMlHgC9SvNduqw8PQ+zDZR8U/2263/VV1ZS0TqRSkZ2nepGFJskLWS
         8gUw==
X-Forwarded-Encrypted: i=1; AJvYcCWuNOlY6qLzvs5S6pXhrPQU/o3wS2akneujs1wzkn6HNzOPbuKViW+OrHIzeN3DT6v3wAYYonx8GR5SRcXoI6ptE9Sw0Zh/WPVZkfh+CA==
X-Gm-Message-State: AOJu0Yzdar765oqui6B745kVzjnSYJkewg8ao0fx6Vo49ktaFhu4NoYj
	0IRzU0f5KjwR3PBrQ1vWDSe27bcrYLyG/iJasAkZJQGlBDJHSRVLd1MHPw+nUpM=
X-Google-Smtp-Source: AGHT+IEgr7AtR5kDCO971CSg++/mcgo/iZQ4+3qL3bk2pCiVRwD9RxQhUdjpZ8H7bWEG/ngb4hoL3w==
X-Received: by 2002:a05:600c:3ca1:b0:419:f3fa:23ef with SMTP id bg33-20020a05600c3ca100b00419f3fa23efmr4167711wmb.25.1713774796370;
        Mon, 22 Apr 2024 01:33:16 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id j19-20020a05600c1c1300b004161bffa48csm15978786wms.40.2024.04.22.01.33.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Apr 2024 01:33:16 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 22 Apr 2024 10:33:12 +0200
Subject: [PATCH v3 2/3] arm64: dts: qcom: sm8550: remove pcie-1-phy-aux-clk
 and add pcie1_phy pcie1_phy_aux_clk
MIME-Version: 1.0
Message-Id: <20240422-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v3-2-799475a27cce@linaro.org>
References: <20240422-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v3-0-799475a27cce@linaro.org>
In-Reply-To: <20240422-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v3-0-799475a27cce@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=3193;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=/XAPDMkZMT1mZ9FOhnEUgwml1nugoL+UQJKgB4y595o=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmJiDIRKeRNA/WDMhtnMFoRtGB8wJy8e0uRvk3OXyG
 7dOOQ6uJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZiYgyAAKCRB33NvayMhJ0UCAEA
 DHUtccp5Zt/hmVIaWMrasPeto2TCrvaYT0N62I/nfa2mUnUa9eu4WBOkhCSi6d8/Gw7YEp7h1KM/6u
 1r0ttUSYdNtXIUPWG56Ku02CxF7rKMnAXo4qUoBxzZTNKa5vbzYDmZcwdgnTGhd6zk2GJXnjMnuvBv
 j8IzzPu9caCfKfylSj5GXCRmCW5erg14k4fLx2OQa6In6eUdTvErnHItUcXeNxmjP88p199tqMCvGi
 7XR3m9i+j4GEMrDsHi7jzwZLRYIZAnWHR/PuuT7RdpTsihkOUzv+qiutZF6faQ9JINiaB7kJAHA270
 XSuqygZS8QWuUXl9kppYb9MGpKVM+IeRuwbENpokKVy/B9Yb9VcaffRQ4RJ6++UhLerxRoLMCEfYj1
 QgskyRD5mOQ5RG8NHQyOISXbYDKhdC6v7DJUz9knCOSCkMwkYT+kumwSkRrnnD+PkwpHd71VxYMUX/
 KbNb1/RZBq0pRKtwjSue9cTHSnb7RR05CID3EnHqI5zEol1i49aqGY/HXisVYfRdmmUfjYZactTJGA
 LFmKD5nE310+AFayyB4E3yB691YQ5g2qZSij3qcR71ubCadyrKJmv7xRiHwIS0z+kehIHqWT37rJEI
 542qa/74ktuBev/tL+3EkWXPkJvb2+zKakR1p99tN55rTMCg0jHEM2lUez3g==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_013318_225208_D4BC1681 
X-CRM114-Status: GOOD (  10.77  )
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

Remove the dummy pcie-1-phy-aux-clk clock and replace with the pcie1_phy
provided QMP_PCIE_PHY_AUX_CLK.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550-hdk.dts |  4 ----
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts |  4 ----
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts |  8 --------
 arch/arm64/boot/dts/qcom/sm8550.dtsi    | 13 ++++---------
 4 files changed, 4 insertions(+), 25 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
index 12d60a0ee095..ccff744dcd14 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
@@ -979,10 +979,6 @@ &pcie1_phy {
 	status = "okay";
 };
 
-&pcie_1_phy_aux_clk {
-	clock-frequency = <1000>;
-};
-
 &pm8550_gpios {
 	sdc2_card_det_n: sdc2-card-det-state {
 		pins = "gpio12";
diff --git a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
index 3d4ad5aac70f..1fa7c4492057 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
@@ -739,10 +739,6 @@ &mdss_dp0_out {
 	remote-endpoint = <&usb_dp_qmpphy_dp_in>;
 };
 
-&pcie_1_phy_aux_clk {
-	clock-frequency = <1000>;
-};
-
 &pcie0 {
 	wake-gpios = <&tlmm 96 GPIO_ACTIVE_HIGH>;
 	perst-gpios = <&tlmm 94 GPIO_ACTIVE_LOW>;
diff --git a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
index 92f015017418..da3cfa697969 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
@@ -810,10 +810,6 @@ &mdss_dp0_out {
 	remote-endpoint = <&usb_dp_qmpphy_dp_in>;
 };
 
-&pcie_1_phy_aux_clk {
-	status = "disabled";
-};
-
 &pcie0 {
 	wake-gpios = <&tlmm 96 GPIO_ACTIVE_HIGH>;
 	perst-gpios = <&tlmm 94 GPIO_ACTIVE_LOW>;
@@ -907,10 +903,6 @@ &pon_resin {
 	status = "okay";
 };
 
-&pcie_1_phy_aux_clk {
-	clock-frequency = <1000>;
-};
-
 &qupv3_id_0 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index bc5aeb05ffc3..143994d1e6ca 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -58,11 +58,6 @@ bi_tcxo_ao_div2: bi-tcxo-ao-div2-clk {
 			clock-mult = <1>;
 			clock-div = <2>;
 		};
-
-		pcie_1_phy_aux_clk: pcie-1-phy-aux-clk {
-			compatible = "fixed-clock";
-			#clock-cells = <0>;
-		};
 	};
 
 	cpus {
@@ -776,8 +771,8 @@ gcc: clock-controller@100000 {
 			#power-domain-cells = <1>;
 			clocks = <&bi_tcxo_div2>, <&sleep_clk>,
 				 <&pcie0_phy>,
-				 <&pcie1_phy>,
-				 <&pcie_1_phy_aux_clk>,
+				 <&pcie1_phy QMP_PCIE_PIPE_CLK>,
+				 <&pcie1_phy QMP_PCIE_PHY_AUX_CLK>,
 				 <&ufs_mem_phy 0>,
 				 <&ufs_mem_phy 1>,
 				 <&ufs_mem_phy 2>,
@@ -1928,8 +1923,8 @@ pcie1_phy: phy@1c0e000 {
 
 			power-domains = <&gcc PCIE_1_PHY_GDSC>;
 
-			#clock-cells = <0>;
-			clock-output-names = "pcie1_pipe_clk";
+			#clock-cells = <1>;
+			clock-output-names = "pcie1_pipe_clk", "pcie1_phy_aux_clk";
 
 			#phy-cells = <0>;
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
