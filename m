Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF65AC27C40
	for <linux-phy@archiver.kernel.org>; Thu, 24 Aug 2023 21:20:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YpY/dKwy9n8/OJoaka2A+Y9kw5CrRZ90bkd6RrpT0uY=; b=nZSeTJ1jk5b4VD
	biAQNtAS1oqUgJraw2cgdK8sBvwZus5nA2ja1n31aHvEjt2IiS7vxSZNwcGLqqNtLkwIVdvFk1ibW
	T20ZJ1IxwVvjKh62dLvnbq5eMfxqaEZT3jlC6Kimn30mZr09i5YArLeUvOdF5yQY/zOU7VmaMIO6r
	IRTcfMUyTuDiakVMpYjenhywibzW6sTP2HEFHyvjVoW/w6iSPFssIK3Es2b+uBibB9GuErF4kxzcK
	uHc/CEahNAttxkzBPv3oCHWLpS6yOzQXk0do+ZLz6+QfNy3wM2ud1g7TtcBK7RO9hhIPnzD0/4vhG
	rHNLo39Ti0fbX/m4uxFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZHkQ-003owg-1A;
	Thu, 24 Aug 2023 21:20:10 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZHkL-003oot-1z
	for linux-phy@lists.infradead.org;
	Thu, 24 Aug 2023 21:20:07 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2b95d5ee18dso3477681fa.1
        for <linux-phy@lists.infradead.org>; Thu, 24 Aug 2023 14:20:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692912001; x=1693516801;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eil83J6swtIZs9wN/isJUA8e6KGbFpAZ1S8rsr3xUpM=;
        b=s5I6cbnMOKFvbCWbHaXyJ02vjxi13VFaSebEMkahMMeBA295bJSf4eI8G60goOCH26
         tsYt2sYYhdjlCJ4/fyWn4sYKaEtjxWxMvT2kd75fIXx7kFJEe+jFMiZTW1hW696w4gFv
         vt3KpDrChsnxSwMFkWzcfot3sKeDzZYqIFSd+a5zYZLF05emJCHuC1FX0dZHbfgF37ID
         eJvxEpsMBDnclH0G5b7lzGlH3vjEfj7JxGSJDCFPcqSaWQVeuWKNQXkMR3xND/rtWpI/
         gIMmtRuFc4tTLShagDW5189o1V4jUGHPfTdBGA2QWy62KGElwDtZM/wSmRVrST6cDunc
         JBOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692912001; x=1693516801;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eil83J6swtIZs9wN/isJUA8e6KGbFpAZ1S8rsr3xUpM=;
        b=NX52CPRA7TGPx3NCqZgVQCz3AorrrjQfiZYl2S7+F0F00FpOkQQkFtSUQSqDV7impW
         ZAxHFpupG1hxGSgN24hsejJORQoH8xkyiKSr/egP8mHMwnuGCrffM2dBPs+F1layj/1Y
         lyFFE0QnBiGqlQNMQ9sBdx1qimPvKosSGLn5U3RgrEXEv/vbfVn+/dC98haIIrMFl2u5
         TCnPe41ZGZ49n+heTnSGDp78Ef2hB8MJ2E+0jeJxFxZVqoGrFSh+E9kAGBCg+mlNiqzn
         NrNpw4WRFhBMr8Y1jfGUXVl+BqReYfCZgOqaNvEKnXn7Z2cQeSnxDNvNCaTyfmnPDJFv
         c+Qw==
X-Gm-Message-State: AOJu0YxoewI73EuJyrMMPwAuDLVbakMLACf30OEA80hpvUQ+mRfusaxN
	d6NvzPdoPRo6zTNToL7gF+6yKQ==
X-Google-Smtp-Source: AGHT+IHd0dWBQmcVzl/Sc09z8470seW2mqUteQANveV8Wyi8oC4WS7A3tRbDXqtrjVMvSavtO1/+6Q==
X-Received: by 2002:a19:5f43:0:b0:4ff:70d2:4512 with SMTP id a3-20020a195f43000000b004ff70d24512mr9407798lfj.23.1692912001555;
        Thu, 24 Aug 2023 14:20:01 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id j29-20020a056512029d00b004fe4ab686b4sm17690lfp.167.2023.08.24.14.20.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Aug 2023 14:20:01 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 09/16] arm64: dts: qcom: msm8996: switch USB QMP PHY to new style of bindings
Date: Fri, 25 Aug 2023 00:19:45 +0300
Message-Id: <20230824211952.1397699-10-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230824211952.1397699-1-dmitry.baryshkov@linaro.org>
References: <20230824211952.1397699-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230824_142005_680569_A4C20616 
X-CRM114-Status: UNSURE (   9.34  )
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
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 40 ++++++++++++---------------
 1 file changed, 17 insertions(+), 23 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 44298912b3a3..cdf00d22c3bb 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -778,7 +778,7 @@ gcc: clock-controller@300000 {
 				 <&pciephy_0>,
 				 <&pciephy_1>,
 				 <&pciephy_2>,
-				 <&ssusb_phy_0>,
+				 <&usb3phy>,
 				 <&ufsphy 0>,
 				 <&ufsphy 1>,
 				 <&ufsphy 2>;
@@ -3048,7 +3048,7 @@ usb3_dwc3: usb@6a00000 {
 				compatible = "snps,dwc3";
 				reg = <0x06a00000 0xcc00>;
 				interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
-				phys = <&hsusb_phy1>, <&ssusb_phy_0>;
+				phys = <&hsusb_phy1>, <&usb3phy>;
 				phy-names = "usb2-phy", "usb3-phy";
 				snps,hird-threshold = /bits/ 8 <0>;
 				snps,dis_u2_susphy_quirk;
@@ -3060,32 +3060,26 @@ usb3_dwc3: usb@6a00000 {
 
 		usb3phy: phy@7410000 {
 			compatible = "qcom,msm8996-qmp-usb3-phy";
-			reg = <0x07410000 0x1c4>;
-			#address-cells = <1>;
-			#size-cells = <1>;
-			ranges;
+			reg = <0x07410000 0x1000>;
 
 			clocks = <&gcc GCC_USB3_PHY_AUX_CLK>,
-				<&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>,
-				<&gcc GCC_USB3_CLKREF_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref";
+				 <&gcc GCC_USB3_CLKREF_CLK>,
+				 <&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>,
+				 <&gcc GCC_USB3_PHY_PIPE_CLK>;
+			clock-names = "aux",
+				      "ref",
+				      "cfg_ahb",
+				      "pipe";
+			clock-output-names = "usb3_phy_pipe_clk_src";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
 
 			resets = <&gcc GCC_USB3_PHY_BCR>,
-				<&gcc GCC_USB3PHY_PHY_BCR>;
-			reset-names = "phy", "common";
-			status = "disabled";
+				 <&gcc GCC_USB3PHY_PHY_BCR>;
+			reset-names = "phy",
+				      "phy_phy";
 
-			ssusb_phy_0: phy@7410200 {
-				reg = <0x07410200 0x200>,
-				      <0x07410400 0x130>,
-				      <0x07410600 0x1a8>;
-				#phy-cells = <0>;
-
-				#clock-cells = <0>;
-				clock-output-names = "usb3_phy_pipe_clk_src";
-				clocks = <&gcc GCC_USB3_PHY_PIPE_CLK>;
-				clock-names = "pipe0";
-			};
+			status = "disabled";
 		};
 
 		hsusb_phy1: phy@7411000 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
