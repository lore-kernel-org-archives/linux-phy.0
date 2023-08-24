Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F385CC7EE43
	for <linux-phy@archiver.kernel.org>; Thu, 24 Aug 2023 21:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=piLh0FSP6J/euZuCCJOw2QeXZvONeH5dnsQEmgG3G3o=; b=yoHpD+ATFAdTQ7
	KFpYpSJf18FHBIaH2F/qYKSSvEA6T/FzVvEDbbSvcwIIav6mvzMHV3Rqu14c4spYNjzock6PGuVmO
	AuymeVRW/RfTdWAG1sVyPh6NmC9wO2OMcpjGUmBPGrUsd607qRD7h/0ULgYzRkzVvAGXO1k+UiOLl
	0UF5NeCPgtsir23gthv3WSxY7VrzzOhQl9H2Rp1Yto2cdW4hD4pjJYJROnsOy14dQJgKbtyGybnXm
	1/DIbR8ZS3vr8v1zDnt6ACa2BRkK5y5rkT15/DylI20H/R7KrMW53yXhkfk/mPKy01KKlMjY0Ttwi
	XTeqZnzluNqJiuGP/2Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZHkP-003ovt-1i;
	Thu, 24 Aug 2023 21:20:09 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZHkJ-003omE-2w
	for linux-phy@lists.infradead.org;
	Thu, 24 Aug 2023 21:20:07 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-4ff8a1746e0so393721e87.0
        for <linux-phy@lists.infradead.org>; Thu, 24 Aug 2023 14:20:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692912000; x=1693516800;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hc8pSN8VZcLAgrrCg9Hdw/Sq6XrZ7CHaLJcqEMsAhS8=;
        b=kfyZaJCOyigH2bHO0UclDifKimrMbeJ5LHILl13/7TcrbMr3LScQ95lxOAfjaXcFIv
         LpOEwOBrOk33X84I6b7p82S2eo5D+eqfO5iVTZ68sF0IApxaju5MXLLihKZyZ4x9bEVo
         hZkLUpyn98Vvou0UUGV1X/WRybmfPsL3hEgVkJxCWEsDvY82n7r9SMV6XPREQPaTqA4O
         +I4rlDFgIhACMzt9Sfur5wYnFLn0wY/8ZzWiKI+IZdCDoWQIBnFz+II+RvljeJVH5v3Z
         +FFtSh+cjoS8Q1aMJL/8O7zsQhPnOCNA6kzwn8w3CqftC28nps96PVjlyYxN9wCrJte5
         muqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692912000; x=1693516800;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hc8pSN8VZcLAgrrCg9Hdw/Sq6XrZ7CHaLJcqEMsAhS8=;
        b=QjaoI/ofiMkoMA7TwRg3AC+WZChKPdeiWeoM2Ye6UKeMKKdI++IYU+n/nsYiNqQ9qs
         9/95QGhwgc8z3xQse1TlpW+Nqfr1KbFcyhZTp3l/4LzaOnWIcVfzQq3wH1/E7ztVf5yV
         JKawA7zhLpCFiSfCarby2UkTBY6XSuV8FtJxZ8TBavDHCX54sRHsYGdCX5iFuqvS+gBO
         sQFspHDos6lZ8SOB8R+HPuIu8Kjg8ZrSn7/R9DVtJdLT0Z3FzflG9OCbQ1S7oIYmPDCq
         162/oJqqTso7cphF5Rb2J+ZzqYkLD8/kfAVdAInZ/9Zpeey+ayrMfMhSmP92C2MhwkVY
         wU3g==
X-Gm-Message-State: AOJu0YzptfkvkDWLV7xsVNkkaDrGtcX12InzHIqtUe03urhR0v9iY+qr
	w/s9aYFmFk8nf1aSEHqgtjejwg==
X-Google-Smtp-Source: AGHT+IGPplUXgMOlKf/8SoZyUc4KgnLrO1Fzxwjvb1nw5lZqwzUWenteFutCv9/WWKyxJQWCKVEAuQ==
X-Received: by 2002:a05:6512:2803:b0:500:8725:1351 with SMTP id cf3-20020a056512280300b0050087251351mr9808353lfb.47.1692912000003;
        Thu, 24 Aug 2023 14:20:00 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id j29-20020a056512029d00b004fe4ab686b4sm17690lfp.167.2023.08.24.14.19.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Aug 2023 14:19:59 -0700 (PDT)
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
Subject: [PATCH v3 07/16] arm64: dts: qcom: ipq6018: switch USB QMP PHY to new style of bindings
Date: Fri, 25 Aug 2023 00:19:43 +0300
Message-Id: <20230824211952.1397699-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230824211952.1397699-1-dmitry.baryshkov@linaro.org>
References: <20230824211952.1397699-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230824_142003_998217_C74581C2 
X-CRM114-Status: UNSURE (   9.19  )
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
 arch/arm64/boot/dts/qcom/ipq6018.dtsi | 35 ++++++++++++---------------
 1 file changed, 15 insertions(+), 20 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
index 3c8a2f4e26a3..f0458de265ad 100644
--- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
@@ -236,31 +236,26 @@ qusb_phy_1: qusb@59000 {
 
 		ssphy_0: ssphy@78000 {
 			compatible = "qcom,ipq6018-qmp-usb3-phy";
-			reg = <0x0 0x00078000 0x0 0x1c4>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0x0 0x00078000 0x0 0x1000>;
 
 			clocks = <&gcc GCC_USB0_AUX_CLK>,
-				 <&gcc GCC_USB0_PHY_CFG_AHB_CLK>, <&xo>;
-			clock-names = "aux", "cfg_ahb", "ref";
+				 <&xo>,
+				 <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
+				 <&gcc GCC_USB0_PIPE_CLK>;
+			clock-names = "aux",
+				      "ref",
+				      "cfg_ahb",
+				      "pipe";
+			clock-output-names = "gcc_usb0_pipe_clk_src";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
 
 			resets = <&gcc GCC_USB0_PHY_BCR>,
 				 <&gcc GCC_USB3PHY_0_PHY_BCR>;
-			reset-names = "phy","common";
-			status = "disabled";
+			reset-names = "phy",
+				      "phy_phy";
 
-			usb0_ssphy: phy@78200 {
-				reg = <0x0 0x00078200 0x0 0x130>, /* Tx */
-				      <0x0 0x00078400 0x0 0x200>, /* Rx */
-				      <0x0 0x00078800 0x0 0x1f8>, /* PCS */
-				      <0x0 0x00078600 0x0 0x044>; /* PCS misc */
-				#phy-cells = <0>;
-				#clock-cells = <0>;
-				clocks = <&gcc GCC_USB0_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "gcc_usb0_pipe_clk_src";
-			};
+			status = "disabled";
 		};
 
 		qusb_phy_0: qusb@79000 {
@@ -566,7 +561,7 @@ dwc_0: usb@8a00000 {
 				compatible = "snps,dwc3";
 				reg = <0x0 0x08a00000 0x0 0xcd00>;
 				interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
-				phys = <&qusb_phy_0>, <&usb0_ssphy>;
+				phys = <&qusb_phy_0>, <&ssphy_0>;
 				phy-names = "usb2-phy", "usb3-phy";
 				clocks = <&xo>;
 				clock-names = "ref";
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
