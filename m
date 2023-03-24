Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF1F5C77B60
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 02:25:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SF0NR00oLhF/w36hgFA8Vrw6iWP/HUiIsX0klVQd+9M=; b=ep4EG0on9LBqmu
	tI9jDc3R9rohMaiejLKd60i9Ryia4cK5iADTk8SVehOPQ3Pb58KxbNlGdAc7CwysXxMbEs1Dz8u2R
	b4uwfWUjkUTLN6nzVWcvvfu3kH27+1Xxig0FuO5Cs1viMe1nd1FFjMvpJRD8ebBr2IPGbLbXIYGrn
	sR0Qt4Dv6wEua+FATKYb8u5Hp5K8E9g29uCN++1DI8s9JoeqNcxDAp8Tz0Kcjzoofrp5LcycgjeuR
	PYGzVG+OIELa5QNJpA5++flHkfwLC0n0F6RiL/wcJ5shMdTb2nTBhAJdy4+Uuoy1Ty20P2DDXMT+n
	NvCY0tDNbM7RjcUPLsPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7X-003OFW-1a;
	Fri, 24 Mar 2023 02:25:35 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7U-003ODA-2V
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 02:25:34 +0000
Received: by mail-lf1-x12d.google.com with SMTP id q16so386555lfe.10
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 19:25:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679624730;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zrnLZFJZjQTK78KKuTjB3tD/VQE3uKg65KwHoav209g=;
        b=eMIjiyDSEUs2NzMN4Gl1WogKuCkWMz8Bjr8aNPaqk9tkqVEaENmWB0V9SYu35RL5td
         9Kjq8emr3H+ekCADKc2esLSvzhKyMqC+bpv7bczugSIkpVSQnIuWv2rbVg5Ob1sM38Lz
         RrEusZkgCymvJWcp7OCrPU2SD2GKK9fH0syZX2hdN13incrLEK8/FfWfiJjB+7A2WzRR
         ohC39cHYnu5rgbm84Wo+ruEh9QvZTyDXCnCCWJaxFnZ2mvB4XWzll2U3f8zvc847zc07
         o5FFSiRcXNAMiP97zZtB1Dtd4HM5UieaguY1Xq4w0zr6JhS9/4jY6N3PE6Vps+Z96bba
         d3Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679624730;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zrnLZFJZjQTK78KKuTjB3tD/VQE3uKg65KwHoav209g=;
        b=ZPpA5GbwhPU0VGM+PFBiWrMC6t6TXRLxcD4/9+YL4xR5pG5ShU2IV2W9H4+m+AQebH
         Er+ZDcsE9UX5tGZiHsKvd5R+WQdcZVUYIS+AHI3Qfu1SBAmJrpJvhQZXrxN90GmKYP0R
         YcWHvgPgQ4aKxhnELL6EY6uylsoCpX2JPGhNf897TAXwxKBxz5TGkl93NQ6UkIKGkURu
         2NbqMAYYtViUVjbFOhhO4KNyxV59DyM+8jZuWyPFWx3v6S1AXWp1I+EpVdqlaBPVd6rv
         uBdA+BLVWRlrlS3jc4ne/yzuMEceP6wkxRxfKWicrztj0XS8+HFPXgttQRloA+KOOlvW
         4V2Q==
X-Gm-Message-State: AAQBX9d5OdQpbNJklH0CMFYy7FTfRmSFhCKpr3+rYvpuGIApzeadk0ea
	+CCVXJoaMzfY1CqW7Zq83G3gMA==
X-Google-Smtp-Source: AKy350Z4fGACFf9176McZnAi8nBpD0erIZxd1XtpsHmX8hwt/lPDkz168LAGrPeNoRCwatS3z1WVVQ==
X-Received: by 2002:ac2:5291:0:b0:4dd:9ddc:4463 with SMTP id q17-20020ac25291000000b004dd9ddc4463mr212058lfm.5.1679624730492;
        Thu, 23 Mar 2023 19:25:30 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x4-20020a19f604000000b004db3aa3c542sm3162628lfe.47.2023.03.23.19.25.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 19:25:29 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 14/41] arm64: dts: qcom: sdm845: switch USB QMP PHY to new style of bindings
Date: Fri, 24 Mar 2023 05:24:47 +0300
Message-Id: <20230324022514.1800382-15-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_192532_812916_A00531C0 
X-CRM114-Status: UNSURE (   7.96  )
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

Change the USB QMP PHY to use newer style of QMP PHY bindings (single
resource region, no per-PHY subnodes).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 31 +++++++++++-----------------
 1 file changed, 12 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 2f32179c7d1b..10c53756a903 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -3956,33 +3956,26 @@ dp_phy: dp-phy@88ea200 {
 
 		usb_2_qmpphy: phy@88eb000 {
 			compatible = "qcom,sdm845-qmp-usb3-uni-phy";
-			reg = <0 0x088eb000 0 0x18c>;
+			reg = <0 0x088eb000 0 0x1000>;
 			status = "disabled";
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
 
 			clocks = <&gcc GCC_USB3_SEC_PHY_AUX_CLK>,
 				 <&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>,
 				 <&gcc GCC_USB3_SEC_CLKREF_CLK>,
-				 <&gcc GCC_USB3_SEC_PHY_COM_AUX_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref", "com_aux";
+				 <&gcc GCC_USB3_SEC_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref",
+				      "com_aux",
+				      "pipe";
+			clock-output-names = "usb3_uni_phy_pipe_clk_src";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
 
 			resets = <&gcc GCC_USB3PHY_PHY_SEC_BCR>,
 				 <&gcc GCC_USB3_PHY_SEC_BCR>;
 			reset-names = "phy", "common";
-
-			usb_2_ssphy: phy@88eb200 {
-				reg = <0 0x088eb200 0 0x128>,
-				      <0 0x088eb400 0 0x1fc>,
-				      <0 0x088eb800 0 0x218>,
-				      <0 0x088eb600 0 0x70>;
-				#clock-cells = <0>;
-				#phy-cells = <0>;
-				clocks = <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "usb3_uni_phy_pipe_clk_src";
-			};
 		};
 
 		usb_1: usb@a6f8800 {
@@ -4082,7 +4075,7 @@ usb_2_dwc3: usb@a800000 {
 				iommus = <&apps_smmu 0x760 0>;
 				snps,dis_u2_susphy_quirk;
 				snps,dis_enblslpm_quirk;
-				phys = <&usb_2_hsphy>, <&usb_2_ssphy>;
+				phys = <&usb_2_hsphy>, <&usb_2_qmpphy>;
 				phy-names = "usb2-phy", "usb3-phy";
 			};
 		};
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
