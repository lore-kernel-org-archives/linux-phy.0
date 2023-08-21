Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01ECEEE49B2
	for <linux-phy@archiver.kernel.org>; Mon, 21 Aug 2023 00:25:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YpY/dKwy9n8/OJoaka2A+Y9kw5CrRZ90bkd6RrpT0uY=; b=zVyYRxJbfv9qvu
	6ko8rF3Ky5Bf/bE7oCIAEPmcD3vmjdeX+2U/+/4NGlYadRE9HWYLl384Aiox28ypESUbW3E/aA8pE
	cCbhxySdp5d3XLrLsTS1/I1yMMZxtd/SovKsNtk8JjO5r0um3z2K8NEKzxTqJwDwoJpyo99jJrz7O
	jJOYtDO1YuPm9vgYPwszQIr1JTxGu62wOn3+jVOAbDu/EE+BCs4tQmeYG6Q2gSP4y4Pt2T6jZ8XRo
	fOoJGQ4e2ixeGk5mU8Bn3lS9Tx+JPPuB6Li+wiJXg+Z/LqJ2vuBYBWYqaz7cyiA1VzGriOylhBWw8
	m/d4/jNV1heydzWK/j2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXsju-00Cjqc-22;
	Mon, 21 Aug 2023 00:25:50 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXsjp-00Cjll-1u
	for linux-phy@lists.infradead.org;
	Mon, 21 Aug 2023 00:25:47 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2b9cdba1228so44900371fa.2
        for <linux-phy@lists.infradead.org>; Sun, 20 Aug 2023 17:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692577544; x=1693182344;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eil83J6swtIZs9wN/isJUA8e6KGbFpAZ1S8rsr3xUpM=;
        b=h3y07gP9lOpmE5zV4s7Ih/X2qSug5mA39ofNTPjtlzuHRl4DcMf1UhicdHQ4W9jLHT
         SIPrbLLncDGzPBCVC1THMg8wLD+O16+J9ugznzmaRIXv6nlyRxeLHQQhIZ3sxyQOS5ma
         uLD8FgCr5lyw+W1YtAnXHPhfrD/odu14kcrWvNYQqlinPvZZyafokQEg+XaprNf7gXV6
         LPA5xb/fEXWDLofV3n6AvGrxboe91TpoAkxPRFCPh+6CiDqiRQY/ZGwjbVwXNKlM1Za3
         P9Wk4diBOrTrBkkaq/BQRfr2tZ3X1WfSWF5i4+NO1hFzuDofL+bnZhCJpSKPYQFj+Vlm
         4xSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692577544; x=1693182344;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eil83J6swtIZs9wN/isJUA8e6KGbFpAZ1S8rsr3xUpM=;
        b=Uc7cdNE/Z7dMmAVF52PYfbtq4ZPgTdNex5pmmYuMXsoam5w0LEPSNveXNBxpWwlf2+
         emEmFIZS1bYDEfKgNn0zX8BEbGvzjBFv6WBho6JlkEJGrEgdgbrY9FHSrh+SYn2DT1+N
         HZtgqh4PAZgUMAJyICo4MCciU6jzbi+291fM3sBslis+H4HEmtet7I1+NNUhtzI4xc6a
         AXtajI4q4sUA7ztQBfpqfk7SiffMiZVFAKrSclkbzzfJBj1D9T1U7/Q/d0O6yzy5ISh1
         c7yg9duKn4u44A8aNXyrasOBpbo/y9n97OJxlV1X++DhSGCPMEbTmv0Z3AdrJbBOQ+9y
         piPg==
X-Gm-Message-State: AOJu0Yya9UExle35RFa/mCTpiO8J85yN3qsUVGMdZ2r40bE+wclb7VFi
	qGoAXblEyaOlBDbTTbuuBHbPHA==
X-Google-Smtp-Source: AGHT+IGAS+VgWXV/RlluMi1DkatRLfetfSxREy7yT4NSeT7TrxlvTahy0/q15189DIKFNhbjMACLkA==
X-Received: by 2002:a2e:9989:0:b0:2b9:36d5:729c with SMTP id w9-20020a2e9989000000b002b936d5729cmr3520345lji.47.1692577544240;
        Sun, 20 Aug 2023 17:25:44 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h27-20020a2eb0fb000000b002b6fe751b6esm1964923ljl.124.2023.08.20.17.25.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 17:25:43 -0700 (PDT)
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
Subject: [PATCH v2 09/16] arm64: dts: qcom: msm8996: switch USB QMP PHY to new style of bindings
Date: Mon, 21 Aug 2023 03:25:28 +0300
Message-Id: <20230821002535.585660-10-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230821002535.585660-1-dmitry.baryshkov@linaro.org>
References: <20230821002535.585660-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230820_172545_633501_3D2EE736 
X-CRM114-Status: UNSURE (   9.25  )
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
