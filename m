Return-Path: <SRS0=Qt1L=OT=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7FA18C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 29 Sep 2021 03:43:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 43F1E613D3
	for <linux-phy@archiver.kernel.org>; Wed, 29 Sep 2021 03:43:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 43F1E613D3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f1zbPcRlF83O4RkzCilAi7I1OwsYn1rQq+I64UPzOV8=; b=e9fBS6OCAKCxFr
	b+4nLJJVKANDPLrtLikbGtq/tRl6ZB4xmRNKoxdLoCHC9FO+8tE1iwCLzSVgtgdI1Bo6f0wNy+f36
	gNe7xiHoeNzb7Nwottmty66Uov5PiJ/k9udkxHMTOujClmmsf4mJabC81Fg3makz7MBowcFB3dKfh
	W6r/p9A4gpNzLJHEEEcqFBZbt8n9cWqr7J8SEjr9QvEg/dspC7g5pQmozUP6YxVpHPV7KChASsbZU
	P68bB2LjPiyxZ1T3wKY7DXPaPE0kNzFhxsZ1sEvsyQ6Xyva96oNwdetAP+hgbp7SS8x8Bux8UCLBh
	93nTzF8H5033uEwI2fcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVQV1-009q0l-Rk; Wed, 29 Sep 2021 03:43:15 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVQUz-009pzM-6g
 for linux-phy@lists.infradead.org; Wed, 29 Sep 2021 03:43:14 +0000
Received: by mail-pj1-x102f.google.com with SMTP id
 ce20-20020a17090aff1400b0019f13f6a749so2968963pjb.4
 for <linux-phy@lists.infradead.org>; Tue, 28 Sep 2021 20:43:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=2S4yGClQSZgmuVRD9a/4dL7gNKQgoI+PuKk7owY775c=;
 b=qDP0JVLCFQwXgFCvkxBm9t4km3NTJAVZKlqpQnO/KJsDy8KsP/azvNJy4Wz2tR5pk4
 gJgY7FKZ+7znpP9yO/a8azdfpxZyCG392dujAWLfqIfTSLGMuKPmanLxjTfLPzmaWNqB
 lu652L6O0tktSNnOUQowzUk6MMPaU8OaHtz91L6+NTcRN3Zuo3E/TkwYXbdCkPF7ReI3
 kS4XbClJ7xSujJsMN1DqnCdOFlRJCx9HHMiFUZz1mFATJbaWdRwnvuo60d2jkExa2Z7d
 NH8UtkI2NhVpictLpB1qrd9FHYqvgDn5RcPBNite9RI9tak227hmNna2sT3X10VmBMFM
 +WbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=2S4yGClQSZgmuVRD9a/4dL7gNKQgoI+PuKk7owY775c=;
 b=E2jGiDTWCPjOxBHI+JEHepdAZ/3cZHkxEOMdbGLbuuJ3IgPK/H3GVnRzxZjx6bffw+
 xolCCREE3UfoosChbAhXfiAzURhCiWC9ypkuRhnou7zcZ2unu9xq89G8khSlm297eX1U
 fz/eMoWyrZRb/+DJPZujFxCQgmi9sQAacJart5Wi8VftBAW3CcpcwbNxP+2FQFfDuP4z
 jFxd+X2DWV5SsR1eY9+zWjdM0GRRvrcFWMKM3SrgZfp4kXAMdcDfR26H78VTGUwWsvoo
 8IB2kilQDP2/wiTkZUkZvN8jNiQA/tCak2kYLH2769qhtF5Z9Wo7fnx2epmCj04tXhfL
 IdlQ==
X-Gm-Message-State: AOAM530xD16qruJBUTMk8H4qyImhGpZPsQKo4nW7MZhtpS42eP9xOSJd
 RPpUM1iME1iRGsXChLveqTFLyA==
X-Google-Smtp-Source: ABdhPJwg9KsJ3amPlcAiziIFqnvDQf7ayJQhQETQytogxHh6/Otv4nk7iVdha8An6aRj2YEu1nDnCA==
X-Received: by 2002:a17:90b:4a09:: with SMTP id
 kk9mr3901602pjb.103.1632886992093; 
 Tue, 28 Sep 2021 20:43:12 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com.
 [80.251.214.228])
 by smtp.gmail.com with ESMTPSA id b7sm533032pfb.20.2021.09.28.20.43.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Sep 2021 20:43:11 -0700 (PDT)
From: Shawn Guo <shawn.guo@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 03/10] arm64: dts: qcom: msm8996: Move '#clock-cells' to QMP
 PHY child node
Date: Wed, 29 Sep 2021 11:42:46 +0800
Message-Id: <20210929034253.24570-4-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210929034253.24570-1-shawn.guo@linaro.org>
References: <20210929034253.24570-1-shawn.guo@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210928_204313_265367_165437DF 
X-CRM114-Status: GOOD (  12.17  )
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

'#clock-cells' is a required property of QMP PHY child node, not itself.
Move it to fix the dtbs_check warnings.

There are only '#clock-cells' removal from SM8350 QMP PHY nodes, because
child nodes already have the property.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 arch/arm64/boot/dts/qcom/ipq8074.dtsi | 4 ++--
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 4 ++--
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 2 +-
 arch/arm64/boot/dts/qcom/sm8350.dtsi  | 3 ---
 4 files changed, 5 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq8074.dtsi b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
index db333001df4d..0c7dbdc861c1 100644
--- a/arch/arm64/boot/dts/qcom/ipq8074.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
@@ -91,7 +91,6 @@
 		ssphy_1: phy@58000 {
 			compatible = "qcom,ipq8074-qmp-usb3-phy";
 			reg = <0x00058000 0x1c4>;
-			#clock-cells = <1>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
@@ -112,6 +111,7 @@
 				      <0x00058800 0x1f8>,     /* PCS  */
 				      <0x00058600 0x044>;     /* PCS misc*/
 				#phy-cells = <0>;
+				#clock-cells = <1>;
 				clocks = <&gcc GCC_USB1_PIPE_CLK>;
 				clock-names = "pipe0";
 				clock-output-names = "gcc_usb1_pipe_clk_src";
@@ -134,7 +134,6 @@
 		ssphy_0: phy@78000 {
 			compatible = "qcom,ipq8074-qmp-usb3-phy";
 			reg = <0x00078000 0x1c4>;
-			#clock-cells = <1>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
@@ -155,6 +154,7 @@
 				      <0x00078800 0x1f8>,     /* PCS  */
 				      <0x00078600 0x044>;     /* PCS misc*/
 				#phy-cells = <0>;
+				#clock-cells = <1>;
 				clocks = <&gcc GCC_USB0_PIPE_CLK>;
 				clock-names = "pipe0";
 				clock-output-names = "gcc_usb0_pipe_clk_src";
diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 52df22ab3f6a..a190ed891a62 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -582,7 +582,6 @@
 		pcie_phy: phy@34000 {
 			compatible = "qcom,msm8996-qmp-pcie-phy";
 			reg = <0x00034000 0x488>;
-			#clock-cells = <1>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
@@ -604,6 +603,7 @@
 				      <0x00035400 0x1dc>;
 				#phy-cells = <0>;
 
+				#clock-cells = <1>;
 				clock-output-names = "pcie_0_pipe_clk_src";
 				clocks = <&gcc GCC_PCIE_0_PIPE_CLK>;
 				clock-names = "pipe0";
@@ -2586,7 +2586,6 @@
 		usb3phy: phy@7410000 {
 			compatible = "qcom,msm8996-qmp-usb3-phy";
 			reg = <0x07410000 0x1c4>;
-			#clock-cells = <1>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
@@ -2607,6 +2606,7 @@
 				      <0x07410600 0x1a8>;
 				#phy-cells = <0>;
 
+				#clock-cells = <1>;
 				clock-output-names = "usb3_phy_pipe_clk_src";
 				clocks = <&gcc GCC_USB3_PHY_PIPE_CLK>;
 				clock-names = "pipe0";
diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index 34039b5c8017..f3bd1197d65e 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -1981,7 +1981,6 @@
 			compatible = "qcom,msm8998-qmp-usb3-phy";
 			reg = <0x0c010000 0x18c>;
 			status = "disabled";
-			#clock-cells = <1>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
@@ -2002,6 +2001,7 @@
 				      <0xc010600 0x128>,
 				      <0xc010800 0x200>;
 				#phy-cells = <0>;
+				#clock-cells = <1>;
 				clocks = <&gcc GCC_USB3_PHY_PIPE_CLK>;
 				clock-names = "pipe0";
 				clock-output-names = "usb3_phy_pipe_clk_src";
diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index e91cd8a5e535..9c44e62a9cd9 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -1070,7 +1070,6 @@
 			reg = <0 0x01d87000 0 0xe10>;
 			#address-cells = <2>;
 			#size-cells = <2>;
-			#clock-cells = <1>;
 			ranges;
 			clock-names = "ref",
 				      "ref_aux";
@@ -1205,7 +1204,6 @@
 			      <0 0x088e8000 0 0x20>;
 			reg-names = "reg-base", "dp_com";
 			status = "disabled";
-			#clock-cells = <1>;
 			#address-cells = <2>;
 			#size-cells = <2>;
 			ranges;
@@ -1238,7 +1236,6 @@
 			compatible = "qcom,sm8350-qmp-usb3-uni-phy";
 			reg = <0 0x088eb000 0 0x200>;
 			status = "disabled";
-			#clock-cells = <1>;
 			#address-cells = <2>;
 			#size-cells = <2>;
 			ranges;
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
