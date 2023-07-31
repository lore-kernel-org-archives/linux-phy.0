Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1423C04FDF
	for <linux-phy@archiver.kernel.org>; Mon, 31 Jul 2023 10:58:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VVMk6A08thW4Zrjyu9HaBR2so33BXvJuC/0K/CIEmRI=; b=I4gjnopYBQQ7/j
	hIMkuqDsfIMAZMIyF+87w/P+wRbU4+ywvtYbmk4sE7I4b84VJ0/Cz0Mm898dqVodgogICRYYyQyCO
	OE7nMUDY7Ns+cWA3wPV6qHYg3qgBtcgHaSwEHlJuR40S6xY6zGXqFfMyaV4x3uiYI/9J9zcS6+a0z
	kc/Zk4NtJmb4DVx8TH3db0Q3JvCOYP1da3Tf9/9ascDIA5apiELaHbQ8R8RqI84g3/DAapEQvoqj/
	w3W2PdujzCF6Lo5tDWoLpjVB6UoK9XgIj3x9vn0/bNm66WSlDdOhBLeI4D9FXMsBtP4Y98EjIiPoZ
	Yp/tNCjdDdlESimTnkfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQbL-00FCXh-24;
	Mon, 31 Jul 2023 10:58:11 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQbH-00FCUW-2v
	for linux-phy@lists.infradead.org;
	Mon, 31 Jul 2023 10:58:09 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-4fe1b00fce2so5878909e87.3
        for <linux-phy@lists.infradead.org>; Mon, 31 Jul 2023 03:58:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690801085; x=1691405885;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rZs+XA887yOdDh13HfRbXJE0uKxE8hQJqIpSr9eIzhE=;
        b=KzuDT3MDsa0wwmIvReQlX6+S1coz+Op4WoRwgCFpDlz+gz1GIQdtTsCrY0xc3s+xJ5
         WiKeO1iV1n9PTigB4ihxYEetmG9IZXqURSSD9THC01/IGPc/2YXKV5iQR2+EYRXt3NJj
         GBoV/ZUa6/W5HLLtF/mFuJ6FO9B4gytpDMEdv1SoIcb8TnqxlEWMjWhARXLSKnImJx6B
         5kmve9mGrLZIyf1CJZUqoziDF6zlnAl3EPoEvyTGV9kvJ+5JOZixnY1HPx9PVABG3Toc
         q16gnBnj0g5mEnylTuLJWWoe7SKMMQsGC1/tLrcBCRg3+LQjgITgkz9opT0J080SrdGm
         c/Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690801085; x=1691405885;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rZs+XA887yOdDh13HfRbXJE0uKxE8hQJqIpSr9eIzhE=;
        b=RvZLZIgnrP5fBg/suk9I9zmZVqiOM19dXRdRn8/lYpW5IKmn0HwjX/75Jlfr2rIzGN
         +IIEA5OIgqImyiqnGxWU2bWQ28Dtd00KrYuoYf446GyqxZygVr3DKQjBtNt/htSNcazj
         I8HxqYoboL5nZQK2C13wuNvq+TiXxVpNGM86vpeQW+XmQ3MtUf2RSIt7qLuww3OZYlSk
         rWDIsSaHB6wlGdwPU38tOM+WsoD6nxmkdd+D6HF2sAX8t/pfG9CgvdlOTC9pKv2QWQK8
         npzVcKhHflKKfYzlUogbZvr+6qhaX9Kc1mqjbvBAZ2vvJdQ3d+rxFSX088AT60xY2BBy
         Nibg==
X-Gm-Message-State: ABy/qLaWOOb1bA7qlb3iK1F4BFGYJuADulhXwXXFXsuUxEnjSMi0vwQh
	ZUpRO0UNTTHxuao7HHyA1eaX6Q==
X-Google-Smtp-Source: APBJJlFoUMOKFealad9blBZ/xmRzzXlQ7cm3Z1mwwUG4Rg7eudXs9QEewAKx8V/i+NiPP73mRA92eQ==
X-Received: by 2002:a19:e041:0:b0:4f8:69f8:47a0 with SMTP id g1-20020a19e041000000b004f869f847a0mr4822865lfj.29.1690801084910;
        Mon, 31 Jul 2023 03:58:04 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id c19-20020ac24153000000b004fb9fe34c27sm2025497lfi.92.2023.07.31.03.58.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:58:04 -0700 (PDT)
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
Subject: [PATCH v2 05/13] arm64: dts: qcom: ipq8074: switch PCIe QMP PHY to new style of bindings
Date: Mon, 31 Jul 2023 13:57:51 +0300
Message-Id: <20230731105759.3997549-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230731105759.3997549-1-dmitry.baryshkov@linaro.org>
References: <20230731105759.3997549-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_035807_945298_22CD7784 
X-CRM114-Status: UNSURE (   9.99  )
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

Change the PCIe QMP PHY to use newer style of QMP PHY bindings (single
resource region, no per-PHY subnodes).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/ipq8074.dtsi | 63 +++++++++++----------------
 1 file changed, 26 insertions(+), 37 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq8074.dtsi b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
index 00ed71936b47..e4447a9d7929 100644
--- a/arch/arm64/boot/dts/qcom/ipq8074.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
@@ -211,59 +211,48 @@ qusb_phy_0: phy@79000 {
 
 		pcie_qmp0: phy@84000 {
 			compatible = "qcom,ipq8074-qmp-gen3-pcie-phy";
-			reg = <0x00084000 0x1bc>;
-			#address-cells = <1>;
-			#size-cells = <1>;
-			ranges;
+			reg = <0x00084000 0x1000>;
 
 			clocks = <&gcc GCC_PCIE0_AUX_CLK>,
-				<&gcc GCC_PCIE0_AHB_CLK>;
-			clock-names = "aux", "cfg_ahb";
+				<&gcc GCC_PCIE0_AHB_CLK>,
+				<&gcc GCC_PCIE0_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "pipe";
+
+			clock-output-names = "pcie20_phy0_pipe_clk";
+			#clock-cells = <0>;
+
+			#phy-cells = <0>;
+
 			resets = <&gcc GCC_PCIE0_PHY_BCR>,
 				<&gcc GCC_PCIE0PHY_PHY_BCR>;
 			reset-names = "phy",
 				      "common";
 			status = "disabled";
-
-			pcie_phy0: phy@84200 {
-				reg = <0x84200 0x16c>,
-				      <0x84400 0x200>,
-				      <0x84800 0x1f0>,
-				      <0x84c00 0xf4>;
-				#phy-cells = <0>;
-				#clock-cells = <0>;
-				clocks = <&gcc GCC_PCIE0_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "pcie20_phy0_pipe_clk";
-			};
 		};
 
 		pcie_qmp1: phy@8e000 {
 			compatible = "qcom,ipq8074-qmp-pcie-phy";
-			reg = <0x0008e000 0x1c4>;
-			#address-cells = <1>;
-			#size-cells = <1>;
-			ranges;
+			reg = <0x0008e000 0x1000>;
 
 			clocks = <&gcc GCC_PCIE1_AUX_CLK>,
-				<&gcc GCC_PCIE1_AHB_CLK>;
-			clock-names = "aux", "cfg_ahb";
+				<&gcc GCC_PCIE1_AHB_CLK>,
+				<&gcc GCC_PCIE1_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "pipe";
+
+			clock-output-names = "pcie20_phy1_pipe_clk";
+			#clock-cells = <0>;
+
+			#phy-cells = <0>;
+
 			resets = <&gcc GCC_PCIE1_PHY_BCR>,
 				<&gcc GCC_PCIE1PHY_PHY_BCR>;
 			reset-names = "phy",
 				      "common";
 			status = "disabled";
-
-			pcie_phy1: phy@8e200 {
-				reg = <0x8e200 0x130>,
-				      <0x8e400 0x200>,
-				      <0x8e800 0x1f8>;
-				#phy-cells = <0>;
-				#clock-cells = <0>;
-				clocks = <&gcc GCC_PCIE1_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "pcie20_phy1_pipe_clk";
-			};
 		};
 
 		mdio: mdio@90000 {
@@ -807,7 +796,7 @@ pcie1: pci@10000000 {
 			#address-cells = <3>;
 			#size-cells = <2>;
 
-			phys = <&pcie_phy1>;
+			phys = <&pcie_qmp1>;
 			phy-names = "pciephy";
 
 			ranges = <0x81000000 0x0 0x00000000 0x10200000 0x0 0x10000>,   /* I/O */
@@ -869,7 +858,7 @@ pcie0: pci@20000000 {
 			#address-cells = <3>;
 			#size-cells = <2>;
 
-			phys = <&pcie_phy0>;
+			phys = <&pcie_qmp0>;
 			phy-names = "pciephy";
 
 			ranges = <0x81000000 0x0 0x00000000 0x20200000 0x0 0x10000>,   /* I/O */
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
