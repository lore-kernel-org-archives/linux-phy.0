Return-Path: <SRS0=Qt1L=OT=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD143C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 29 Sep 2021 03:43:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 78010613E6
	for <linux-phy@archiver.kernel.org>; Wed, 29 Sep 2021 03:43:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 78010613E6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OnOlKuebp4hvcVTzwRXnrxmFEhWur9kZuPIQzczzClU=; b=ibysCQYpRUrDBS
	AJnCpSZhfhuSke9nOsDiqv+RzrXSjCdN/1QIesYCsYnWhKoh+yfY35mWZDkl3Kv5cjxqgyw0SxwRD
	QQ3EH14/XEgbM3H9dCgiV23jyuttUo3eR9WrbjGAhrRi3P5PAWZBK4ZHTAkWd8lfKqfxCe9pSWexJ
	deXOvqEcE6/TTchUOTl6MeYOVLS+43Xh43YxOiAsemuMVDOXRLHwCXIrhGzXrNlj2KB1IpIZEr2R4
	IpDxX5ZgPAZLwcMjXyOzQ2Y2375b5UWSmEQwFx9mrwTpiNDPJhcoe+sTnnVmpuLBU92Ra0v04gKri
	BMDdh3L/drGUmxHSMs/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVQV8-009q2u-14; Wed, 29 Sep 2021 03:43:22 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVQV4-009q1L-CG
 for linux-phy@lists.infradead.org; Wed, 29 Sep 2021 03:43:20 +0000
Received: by mail-pl1-x62e.google.com with SMTP id l6so571992plh.9
 for <linux-phy@lists.infradead.org>; Tue, 28 Sep 2021 20:43:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=DdGxFZl6atvUpTyvNvQjUqEOKV5hQQ0OgkqUqC3owd0=;
 b=Fi/DD7kyMatSKuFi+7rfk5bVggZQufMuuoIsIA8IvDVfpl08QajYjitc2Qtf5idFO8
 7nCBmYueDmtm9WkH+ADOeGVFUMOk5n+wHyHGs1ipqeRisjBxjEqVtgEwHIQEJ+HolRyO
 e1lJK6FKQ3EZumVRY4G/RB5fXMh1JqCXBOcLlciJFc16s84yYJThdi/aHgvau2p26nil
 m8m3hlEqmA0a82ayBI2UD9Hqx9+6vXP9AbFJ1WszGkvITPK4lE1h2TAQ5XM79hhuCsOx
 qEdLPfQL4DFwyPxtk91jhGCMLgK20ZYawCJcJl6cLlIkxFbSlWWJWOGilDqf+9t55SGD
 16NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=DdGxFZl6atvUpTyvNvQjUqEOKV5hQQ0OgkqUqC3owd0=;
 b=P9dfQ9X2k+vEQCwFNASv4lbbmMtxw294UehXDmC2P/m6FvjZEH+lvD2xFbX6fVzQq6
 GjCZ7Y+SkbyR/BoBJKKaxNoeBQfX9h7VVFSS1HiNsCR0vqYT++HzxK5T3r0VJz93eBy1
 c7kF06xL6z8SPH6EaDt7u3L1b9IeMqF1MHAf3WBZz+jiFXa1UGs3oLOxb2WMs6Y1H0SG
 jiy9QB7t2ND/o3MI7mpd4PZJ4lrpPtM3BBpn2ZxIO7+4HmFTqzffcF91i3U5i2q+rxHZ
 ryYeL7Ho4tKBEYbTc3ZzaOtJi4PDbi8rGceXHN/9S2W1PN6yJCzu1iAcb8WGIzMPe69R
 uGKw==
X-Gm-Message-State: AOAM5328pAOTrKIEXPyUqOy6u+ah9AezOk+ID5dcl6xvP6cQbV+E4rJF
 88gOQKbEMGHMI4EGWbM2IlmX1g==
X-Google-Smtp-Source: ABdhPJxR6Q+dwvvAlulmgyy85HyD13UmRB9sM1jEj6BZ+uB9eLjhRF3eW7TOfSIPhRP//vWeWQVfGA==
X-Received: by 2002:a17:90b:4a44:: with SMTP id
 lb4mr3915805pjb.140.1632886997283; 
 Tue, 28 Sep 2021 20:43:17 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com.
 [80.251.214.228])
 by smtp.gmail.com with ESMTPSA id b7sm533032pfb.20.2021.09.28.20.43.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Sep 2021 20:43:16 -0700 (PDT)
From: Shawn Guo <shawn.guo@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 05/10] arm64: dts: qcom: Drop max-microamp and vddp-ref-clk
 properties from QMP PHY
Date: Wed, 29 Sep 2021 11:42:48 +0800
Message-Id: <20210929034253.24570-6-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210929034253.24570-1-shawn.guo@linaro.org>
References: <20210929034253.24570-1-shawn.guo@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210928_204318_438948_5FCB060F 
X-CRM114-Status: UNSURE (   9.89  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

The following properties are not supported and causing dtbs_check
warnings.

- vdda-phy-max-microamp
- vdda-pll-max-microamp
- vddp-ref-clk-max-microamp
- vddp-ref-clk-always-on

Drop them from QMP PHY nodes.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 arch/arm64/boot/dts/qcom/apq8096-ifc6640.dts              | 3 ---
 arch/arm64/boot/dts/qcom/msm8998-mtp.dtsi                 | 4 ----
 arch/arm64/boot/dts/qcom/msm8998-oneplus-common.dtsi      | 4 ----
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts                  | 2 --
 arch/arm64/boot/dts/qcom/sa8155p-adp.dts                  | 2 --
 arch/arm64/boot/dts/qcom/sm8150-hdk.dts                   | 2 --
 arch/arm64/boot/dts/qcom/sm8150-microsoft-surface-duo.dts | 2 --
 arch/arm64/boot/dts/qcom/sm8150-mtp.dts                   | 2 --
 arch/arm64/boot/dts/qcom/sm8250-hdk.dts                   | 2 --
 arch/arm64/boot/dts/qcom/sm8250-mtp.dts                   | 2 --
 arch/arm64/boot/dts/qcom/sm8350-hdk.dts                   | 2 --
 arch/arm64/boot/dts/qcom/sm8350-mtp.dts                   | 2 --
 12 files changed, 29 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/apq8096-ifc6640.dts b/arch/arm64/boot/dts/qcom/apq8096-ifc6640.dts
index a57c60070cdc..567b33106556 100644
--- a/arch/arm64/boot/dts/qcom/apq8096-ifc6640.dts
+++ b/arch/arm64/boot/dts/qcom/apq8096-ifc6640.dts
@@ -395,9 +395,6 @@
 
 	vdda-phy-supply = <&vreg_l28a_0p925>;
 	vdda-pll-supply = <&vreg_l12a_1p8>;
-
-	vdda-phy-max-microamp = <18380>;
-	vdda-pll-max-microamp = <9440>;
 };
 
 &venus {
diff --git a/arch/arm64/boot/dts/qcom/msm8998-mtp.dtsi b/arch/arm64/boot/dts/qcom/msm8998-mtp.dtsi
index a1d15eab8553..af67c641df4e 100644
--- a/arch/arm64/boot/dts/qcom/msm8998-mtp.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998-mtp.dtsi
@@ -371,10 +371,6 @@
 	vdda-phy-supply = <&vreg_l1a_0p875>;
 	vdda-pll-supply = <&vreg_l2a_1p2>;
 	vddp-ref-clk-supply = <&vreg_l26a_1p2>;
-	vdda-phy-max-microamp = <51400>;
-	vdda-pll-max-microamp = <14600>;
-	vddp-ref-clk-max-microamp = <100>;
-	vddp-ref-clk-always-on;
 };
 
 &usb3 {
diff --git a/arch/arm64/boot/dts/qcom/msm8998-oneplus-common.dtsi b/arch/arm64/boot/dts/qcom/msm8998-oneplus-common.dtsi
index 0f5c7828a901..654188027f79 100644
--- a/arch/arm64/boot/dts/qcom/msm8998-oneplus-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998-oneplus-common.dtsi
@@ -480,10 +480,6 @@
 	vdda-phy-supply = <&vreg_l1a_0p875>;
 	vdda-pll-supply = <&vreg_l2a_1p2>;
 	vddp-ref-clk-supply = <&vreg_l26a_1p2>;
-	vdda-phy-max-microamp = <51400>;
-	vdda-pll-max-microamp = <14600>;
-	vddp-ref-clk-max-microamp = <100>;
-	vddp-ref-clk-always-on;
 };
 
 &usb3 {
diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index 8ac96f8e79d4..100254489b87 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -1212,9 +1212,7 @@
 	status = "okay";
 
 	vdda-phy-supply = <&vreg_l5a_0p88>;
-	vdda-max-microamp = <89900>;
 	vdda-pll-supply = <&vreg_l9a_1p2>;
-	vdda-pll-max-microamp = <18800>;
 };
 
 &usb_1 {
diff --git a/arch/arm64/boot/dts/qcom/sa8155p-adp.dts b/arch/arm64/boot/dts/qcom/sa8155p-adp.dts
index 5ae2ddc65f7e..6f05934b4ccc 100644
--- a/arch/arm64/boot/dts/qcom/sa8155p-adp.dts
+++ b/arch/arm64/boot/dts/qcom/sa8155p-adp.dts
@@ -328,9 +328,7 @@
 	status = "okay";
 
 	vdda-phy-supply = <&vreg_l8c_1p2>;
-	vdda-max-microamp = <87100>;
 	vdda-pll-supply = <&vreg_l5a_0p88>;
-	vdda-pll-max-microamp = <18300>;
 };
 
 &usb_1 {
diff --git a/arch/arm64/boot/dts/qcom/sm8150-hdk.dts b/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
index 335aa0753fc0..37ddca0f0223 100644
--- a/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
@@ -419,9 +419,7 @@
 	status = "okay";
 
 	vdda-phy-supply = <&vdda_ufs_2ln_core_1>;
-	vdda-max-microamp = <90200>;
 	vdda-pll-supply = <&vreg_l3c_1p2>;
-	vdda-pll-max-microamp = <19000>;
 };
 
 &usb_1_hsphy {
diff --git a/arch/arm64/boot/dts/qcom/sm8150-microsoft-surface-duo.dts b/arch/arm64/boot/dts/qcom/sm8150-microsoft-surface-duo.dts
index 736da9af44e0..6802097f576f 100644
--- a/arch/arm64/boot/dts/qcom/sm8150-microsoft-surface-duo.dts
+++ b/arch/arm64/boot/dts/qcom/sm8150-microsoft-surface-duo.dts
@@ -507,9 +507,7 @@
 	status = "okay";
 
 	vdda-phy-supply = <&vdda_ufs_2ln_core_1>;
-	vdda-max-microamp = <90200>;
 	vdda-pll-supply = <&vreg_l3c_1p2>;
-	vdda-pll-max-microamp = <19000>;
 };
 
 &usb_1_hsphy {
diff --git a/arch/arm64/boot/dts/qcom/sm8150-mtp.dts b/arch/arm64/boot/dts/qcom/sm8150-mtp.dts
index b484371a6044..46b5cf9a1192 100644
--- a/arch/arm64/boot/dts/qcom/sm8150-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8150-mtp.dts
@@ -416,9 +416,7 @@
 	status = "okay";
 
 	vdda-phy-supply = <&vdda_ufs_2ln_core_1>;
-	vdda-max-microamp = <90200>;
 	vdda-pll-supply = <&vreg_l3c_1p2>;
-	vdda-pll-max-microamp = <19000>;
 };
 
 &usb_1_hsphy {
diff --git a/arch/arm64/boot/dts/qcom/sm8250-hdk.dts b/arch/arm64/boot/dts/qcom/sm8250-hdk.dts
index 47742816ac2f..3b082472062b 100644
--- a/arch/arm64/boot/dts/qcom/sm8250-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8250-hdk.dts
@@ -409,9 +409,7 @@
 	status = "okay";
 
 	vdda-phy-supply = <&vreg_l5a_0p88>;
-	vdda-max-microamp = <89900>;
 	vdda-pll-supply = <&vreg_l9a_1p2>;
-	vdda-pll-max-microamp = <18800>;
 };
 
 &usb_1_hsphy {
diff --git a/arch/arm64/boot/dts/qcom/sm8250-mtp.dts b/arch/arm64/boot/dts/qcom/sm8250-mtp.dts
index 062b944be91d..5ffbcdd387ba 100644
--- a/arch/arm64/boot/dts/qcom/sm8250-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8250-mtp.dts
@@ -647,9 +647,7 @@
 	status = "okay";
 
 	vdda-phy-supply = <&vreg_l5a_0p875>;
-	vdda-max-microamp = <90200>;
 	vdda-pll-supply = <&vreg_l9a_1p2>;
-	vdda-pll-max-microamp = <19000>;
 };
 
 &usb_1 {
diff --git a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
index 56093e260ddf..be062377c936 100644
--- a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
@@ -251,9 +251,7 @@
 	status = "okay";
 
 	vdda-phy-supply = <&vreg_l5b_0p88>;
-	vdda-max-microamp = <91600>;
 	vdda-pll-supply = <&vreg_l6b_1p2>;
-	vdda-pll-max-microamp = <19000>;
 };
 
 &usb_1 {
diff --git a/arch/arm64/boot/dts/qcom/sm8350-mtp.dts b/arch/arm64/boot/dts/qcom/sm8350-mtp.dts
index bd95009c1875..5a8a966c475c 100644
--- a/arch/arm64/boot/dts/qcom/sm8350-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8350-mtp.dts
@@ -318,9 +318,7 @@
 	status = "okay";
 
 	vdda-phy-supply = <&vreg_l5b_0p88>;
-	vdda-max-microamp = <91600>;
 	vdda-pll-supply = <&vreg_l6b_1p2>;
-	vdda-pll-max-microamp = <19000>;
 };
 
 &usb_1 {
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
