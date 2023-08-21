Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6531CEE49A4
	for <linux-phy@archiver.kernel.org>; Mon, 21 Aug 2023 00:25:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/T3bDG7KcuNuZGuSpTMY/y7TQUaLPKp27twK9t58abQ=; b=gbCeHYOw3m5E22
	vaSDZy1psU4C2MMogzQbXghlOGFuUZ7RrSJuHn3tML5Ej5O6+8ys4y4H9j2tvWQZ/BsoC8Gzhg4fR
	x9PQ/R4vTHbEnONQUcpR+p0E+xD51SChovAODnnc98om+9Y7wo6kgpLR4/dpTi/PZZrwLzc/71rW0
	F7IBC6OjApsIaC8IFD4XbcDTEZU00OXq30daPbeqW5TsqDMIwsOk9afaHnD9cgOgyNfWAhi96sxqS
	JMx4b3z4x1rBUOKw2kM6RRewbipvMeQXCEkesGA6kd4xxo0yxPr3CeLhdmPvzkjyrcCHF3mtRfJ44
	8YxEqfb1HvjI9ot4PkTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXsju-00Cjr2-2x;
	Mon, 21 Aug 2023 00:25:50 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXsjr-00CjmM-1h
	for linux-phy@lists.infradead.org;
	Mon, 21 Aug 2023 00:25:48 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2b9b904bb04so45122211fa.1
        for <linux-phy@lists.infradead.org>; Sun, 20 Aug 2023 17:25:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692577545; x=1693182345;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pRFue1T8d7jR28oiKkWulLduMD9W04zC4SIMVMD0pKU=;
        b=flOcc9/tSlJh3P2sT8uJXUB/Ir9Wx5USwHfAp/hBd///fpKKkEXY7c2ngEBpod12rn
         Tf1VkApKX3DAfXAMsQu8YC8eedF0BB0XGtS3N43/KIPoGmbgb3R2F0yFsqcKGUOUVQcd
         lxzRlGpZ19+QLhRAvIuaamaU0BCocJb4WqQBAo7XZceOY+/6Feq5nIjTN5kQAc6baU/T
         t3G09u8gg0zu90P7WMDee7HRPgATDBK4GrRrjMCU97VFgUrcx1Sf5sEnjpAI0atznTza
         DV+k7fLFb51qRrp1pM9qIMo8C6AV1lpZbSDv98sXb+rGlstuD8T0jqXjp6FC/b3jDyeJ
         QSdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692577545; x=1693182345;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pRFue1T8d7jR28oiKkWulLduMD9W04zC4SIMVMD0pKU=;
        b=BhLFo4x+zT1eNsBP1Er6+7YRHSmphbdxspF2MrAHbqEtfJ5K8MvFRS+IprG5KzpzKk
         MEc5Ff7fi4srxpak8K8a2mKfoPDQvKVHZg9tZIyjk/2T2wI4DYGAqUj/UMYxfjV7rW0p
         CWqRZDty1NmdVChUMPUIrh8R4+Iqvnml2J73Xdmcqy5Mvdu7EpRe8TTnXuOo4jNJNHqA
         NhcdJpdO6oFSNxE0BBx/HSMIcauxpujLxnERAtoqQQiKUUG8S6fOQetHzgyfsWCOJkHN
         WKxE8A9RXpPkjE+Srp26BlDJP1nYAoE7Wqeqkg+adj2eBx/+ngI9iHl+lvr+Ugh7jAV8
         7EBA==
X-Gm-Message-State: AOJu0Yxrgy1p2WsavwXJhiptv1cY7wLkZCqaMcdC5aOqY/ZBGc+JWxwC
	TOIPRTIMVNPkrDc00CEoNs9YQA==
X-Google-Smtp-Source: AGHT+IETXVv+WpO/STDARkfABjKjVrty4oMUUQAY3f2XfuRPfzinE7rTWTOMagyuYPtveUsy72WQlA==
X-Received: by 2002:a2e:300f:0:b0:2b7:3a8a:4d5f with SMTP id w15-20020a2e300f000000b002b73a8a4d5fmr3767441ljw.0.1692577545091;
        Sun, 20 Aug 2023 17:25:45 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h27-20020a2eb0fb000000b002b6fe751b6esm1964923ljl.124.2023.08.20.17.25.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 17:25:44 -0700 (PDT)
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
Subject: [PATCH v2 10/16] arm64: dts: qcom: msm8998: switch USB QMP PHY to new style of bindings
Date: Mon, 21 Aug 2023 03:25:29 +0300
Message-Id: <20230821002535.585660-11-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230821002535.585660-1-dmitry.baryshkov@linaro.org>
References: <20230821002535.585660-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230820_172547_564278_D21746D0 
X-CRM114-Status: UNSURE (   9.22  )
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
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 39 +++++++++++----------------
 1 file changed, 16 insertions(+), 23 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index 30d8730fa4de..46a6ef0e454b 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -979,12 +979,12 @@ pcie_phy: phy@1c06000 {
 			status = "disabled";
 
 			clocks = <&gcc GCC_PCIE_PHY_AUX_CLK>,
-				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
 				 <&gcc GCC_PCIE_CLKREF_CLK>,
+				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
 				 <&gcc GCC_PCIE_0_PIPE_CLK>;
 			clock-names = "aux",
-				      "cfg_ahb",
 				      "ref",
+				      "cfg_ahb",
 				      "pipe";
 
 			clock-output-names = "pcie_0_pipe_clk_src";
@@ -2138,7 +2138,7 @@ usb3_dwc3: usb@a800000 {
 				interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
 				snps,dis_u2_susphy_quirk;
 				snps,dis_enblslpm_quirk;
-				phys = <&qusb2phy>, <&usb1_ssphy>;
+				phys = <&qusb2phy>, <&usb3phy>;
 				phy-names = "usb2-phy", "usb3-phy";
 				snps,has-lpm-erratum;
 				snps,hird-threshold = /bits/ 8 <0x10>;
@@ -2147,33 +2147,26 @@ usb3_dwc3: usb@a800000 {
 
 		usb3phy: phy@c010000 {
 			compatible = "qcom,msm8998-qmp-usb3-phy";
-			reg = <0x0c010000 0x18c>;
-			status = "disabled";
-			#address-cells = <1>;
-			#size-cells = <1>;
-			ranges;
+			reg = <0x0c010000 0x1000>;
 
 			clocks = <&gcc GCC_USB3_PHY_AUX_CLK>,
+				 <&gcc GCC_USB3_CLKREF_CLK>,
 				 <&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>,
-				 <&gcc GCC_USB3_CLKREF_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref";
+				 <&gcc GCC_USB3_PHY_PIPE_CLK>;
+			clock-names = "aux",
+				      "ref",
+				      "cfg_ahb",
+				      "pipe";
+			clock-output-names = "usb3_phy_pipe_clk_src";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
 
 			resets = <&gcc GCC_USB3_PHY_BCR>,
 				 <&gcc GCC_USB3PHY_PHY_BCR>;
-			reset-names = "phy", "common";
+			reset-names = "phy",
+				      "phy_phy";
 
-			usb1_ssphy: phy@c010200 {
-				reg = <0xc010200 0x128>,
-				      <0xc010400 0x200>,
-				      <0xc010c00 0x20c>,
-				      <0xc010600 0x128>,
-				      <0xc010800 0x200>;
-				#phy-cells = <0>;
-				#clock-cells = <0>;
-				clocks = <&gcc GCC_USB3_PHY_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "usb3_phy_pipe_clk_src";
-			};
+			status = "disabled";
 		};
 
 		qusb2phy: phy@c012000 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
