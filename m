Return-Path: <SRS0=lbOJ=IP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BC1DC433DB
	for <linux-phy@archiver.kernel.org>; Wed, 17 Mar 2021 11:02:47 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0602164F64
	for <linux-phy@archiver.kernel.org>; Wed, 17 Mar 2021 11:02:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0602164F64
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5AlY22COQLu5y70uC4fvwllul8HxZnCpXYZVz3DaN7s=; b=Z/q5Uyt4xqEb+eO5x3BQEXcTdK
	pOJvAG5wgIDKk3ovR81FOc5W27vh9O4eeN3cxaDw4c4hTGKD/1dieCSzwyChIPIisr75Z5YoMtASE
	Qi/scJ4O7b3TX9cXvwJmM7GsDRi5U5RwwkhBoff9jhajnDnIpFVe2HHUe33FjG+kv0Ywgx5wY3WyX
	UwJsSPkCc/fn/rR96WlWMS1MRC79mjPUUO5gzafjsHCy9bPwx3jn7rBrUuARZCHgZx4NZNSiui9BV
	udLKNNQanA8l7jWKI1lqMGGzgRhxFXdhwi01Zr0SnPe1y+VqCfJltrBI2qa9CNAxmClHgP4kZFr0G
	eQigUXJg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lMTwr-002zmL-HI; Wed, 17 Mar 2021 11:02:45 +0000
Received: from alexa-out.qualcomm.com ([129.46.98.28])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lMTwl-002zkp-V5
 for linux-phy@lists.infradead.org; Wed, 17 Mar 2021 11:02:41 +0000
Received: from ironmsg09-lv.qualcomm.com ([10.47.202.153])
 by alexa-out.qualcomm.com with ESMTP; 17 Mar 2021 04:02:33 -0700
X-QCInternal: smtphost
Received: from ironmsg02-blr.qualcomm.com ([10.86.208.131])
 by ironmsg09-lv.qualcomm.com with ESMTP/TLS/AES256-SHA;
 17 Mar 2021 04:02:32 -0700
X-QCInternal: smtphost
Received: from c-sanm-linux.qualcomm.com ([10.206.25.31])
 by ironmsg02-blr.qualcomm.com with ESMTP; 17 Mar 2021 16:31:50 +0530
Received: by c-sanm-linux.qualcomm.com (Postfix, from userid 2343233)
 id DF71937D7; Wed, 17 Mar 2021 16:31:49 +0530 (IST)
From: Sandeep Maheswaram <sanm@codeaurora.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wesley Cheng <wcheng@codeaurora.org>, Stephen Boyd <swboyd@chromium.org>,
 Doug Anderson <dianders@chromium.org>, Matthias Kaehlcke <mka@chromium.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org, Manu Gautam <mgautam@codeaurora.org>,
 Sandeep Maheswaram <sanm@codeaurora.org>
Subject: [PATCH 3/3] arm64: dts: qcom: sc7280: Add USB related nodes
Date: Wed, 17 Mar 2021 16:31:41 +0530
Message-Id: <1615978901-4202-4-git-send-email-sanm@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1615978901-4202-1-git-send-email-sanm@codeaurora.org>
References: <1615978901-4202-1-git-send-email-sanm@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210317_110240_346545_CEC6B5F0 
X-CRM114-Status: UNSURE (   8.51  )
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

Add nodes for DWC3 USB controller, QMP and HS USB PHYs.

Signed-off-by: Sandeep Maheswaram <sanm@codeaurora.org>
---
 arch/arm64/boot/dts/qcom/sc7280-idp.dts |  39 +++++++++
 arch/arm64/boot/dts/qcom/sc7280.dtsi    | 149 ++++++++++++++++++++++++++++++++
 2 files changed, 188 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dts b/arch/arm64/boot/dts/qcom/sc7280-idp.dts
index 54d2cb3..251a5b5 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-idp.dts
+++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dts
@@ -257,3 +257,42 @@
 		bias-pull-up;
 	};
 };
+
+&usb_1 {
+	status = "okay";
+};
+
+&usb_1_dwc3 {
+	dr_mode = "host";
+};
+
+&usb_1_hsphy {
+	status = "okay";
+
+	vdda-pll-supply = <&vreg_l10c_0p8>;
+	vdda33-supply = <&vreg_l2b_3p0>;
+	vdda18-supply = <&vreg_l1c_1p8>;
+};
+
+&usb_1_qmpphy {
+	status = "okay";
+
+	vdda-phy-supply = <&vreg_l6b_1p2>;
+	vdda-pll-supply = <&vreg_l1b_0p8>;
+};
+
+&usb_2 {
+	status = "okay";
+};
+
+&usb_2_dwc3 {
+	dr_mode = "peripheral";
+};
+
+&usb_2_hsphy {
+	status = "okay";
+
+	vdda-pll-supply = <&vreg_l10c_0p8>;
+	vdda33-supply = <&vreg_l2b_3p0>;
+	vdda18-supply = <&vreg_l1c_1p8>;
+};
diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 39cf0be..a785f65 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -305,6 +305,155 @@
 			};
 		};
 
+		usb_1_hsphy: phy@88e3000 {
+			compatible = "qcom,sc7280-usb-hs-phy",
+				     "qcom,usb-snps-hs-7nm-phy";
+			reg = <0 0x088e3000 0 0x400>;
+			status = "disabled";
+			#phy-cells = <0>;
+
+			clocks = <&rpmhcc RPMH_CXO_CLK>;
+			clock-names = "ref";
+
+			resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
+		};
+
+		usb_2_hsphy: phy@88e4000 {
+			compatible = "qcom,sc7280-usb-hs-phy",
+				     "qcom,usb-snps-hs-7nm-phy";
+			reg = <0 0x088e4000 0 0x400>;
+			status = "disabled";
+			#phy-cells = <0>;
+
+			clocks = <&rpmhcc RPMH_CXO_CLK>;
+			clock-names = "ref";
+
+			resets = <&gcc GCC_QUSB2PHY_SEC_BCR>;
+		};
+
+		usb_1_qmpphy: phy@88e9000 {
+			compatible = "qcom,sm8250-qmp-usb3-phy";
+			reg = <0 0x088e9000 0 0x200>,
+			      <0 0x088e8000 0 0x20>;
+			reg-names = "reg-base", "dp_com";
+			status = "disabled";
+			#clock-cells = <1>;
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+
+			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>;
+			clock-names = "aux", "ref_clk_src", "com_aux";
+
+			resets = <&gcc GCC_USB3_DP_PHY_PRIM_BCR>,
+				 <&gcc GCC_USB3_PHY_PRIM_BCR>;
+			reset-names = "phy", "common";
+
+			usb_1_ssphy: lanes@88e9200 {
+				reg = <0 0x088e9200 0 0x200>,
+				      <0 0x088e9400 0 0x200>,
+				      <0 0x088e9c00 0 0x400>,
+				      <0 0x088e9600 0 0x200>,
+				      <0 0x088e9800 0 0x200>,
+				      <0 0x088e9a00 0 0x100>;
+				#phy-cells = <0>;
+				clocks = <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
+				clock-names = "pipe0";
+				clock-output-names = "usb3_phy_pipe_clk_src";
+			};
+		};
+
+		usb_2: usb@8cf8800 {
+			compatible = "qcom,sc7280-dwc3", "qcom,dwc3";
+			reg = <0 0x08cf8800 0 0x400>;
+			status = "disabled";
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+			dma-ranges;
+
+			clocks = <&gcc GCC_CFG_NOC_USB3_SEC_AXI_CLK>,
+				 <&gcc GCC_USB30_SEC_MASTER_CLK>,
+				 <&gcc GCC_AGGRE_USB3_SEC_AXI_CLK>,
+				 <&gcc GCC_USB30_SEC_MOCK_UTMI_CLK>,
+				 <&gcc GCC_USB30_SEC_SLEEP_CLK>;
+			clock-names = "cfg_noc", "core", "iface","mock_utmi",
+				      "sleep";
+
+			assigned-clocks = <&gcc GCC_USB30_SEC_MOCK_UTMI_CLK>,
+					  <&gcc GCC_USB30_SEC_MASTER_CLK>;
+			assigned-clock-rates = <19200000>, <200000000>;
+
+			interrupts-extended = <&intc GIC_SPI 240 IRQ_TYPE_LEVEL_HIGH>,
+				     <&pdc 13 IRQ_TYPE_EDGE_RISING>,
+				     <&pdc 12 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "hs_phy_irq",
+					  "dm_hs_phy_irq", "dp_hs_phy_irq";
+
+			power-domains = <&gcc GCC_USB30_SEC_GDSC>;
+
+			resets = <&gcc GCC_USB30_SEC_BCR>;
+
+			usb_2_dwc3: dwc3@8c00000 {
+				compatible = "snps,dwc3";
+				reg = <0 0x08c00000 0 0xe000>;
+				interrupts = <GIC_SPI 242 IRQ_TYPE_LEVEL_HIGH>;
+				iommus = <&apps_smmu 0xa0 0x0>;
+				snps,dis_u2_susphy_quirk;
+				snps,dis_enblslpm_quirk;
+				phys = <&usb_2_hsphy>;
+				phy-names = "usb2-phy";
+				maximum-speed = "high-speed";
+			};
+		};
+
+		usb_1: usb@a6f8800 {
+			compatible = "qcom,sc7280-dwc3", "qcom,dwc3";
+			reg = <0 0x0a6f8800 0 0x400>;
+			status = "disabled";
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+			dma-ranges;
+
+			clocks = <&gcc GCC_CFG_NOC_USB3_PRIM_AXI_CLK>,
+				 <&gcc GCC_USB30_PRIM_MASTER_CLK>,
+				 <&gcc GCC_AGGRE_USB3_PRIM_AXI_CLK>,
+				 <&gcc GCC_USB30_PRIM_MOCK_UTMI_CLK>,
+				 <&gcc GCC_USB30_PRIM_SLEEP_CLK>;
+
+			clock-names = "cfg_noc", "core", "iface", "mock_utmi",
+				      "sleep";
+
+			assigned-clocks = <&gcc GCC_USB30_PRIM_MOCK_UTMI_CLK>,
+					  <&gcc GCC_USB30_PRIM_MASTER_CLK>;
+			assigned-clock-rates = <19200000>, <200000000>;
+
+			interrupts-extended = <&intc GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>,
+					      <&pdc 14 IRQ_TYPE_EDGE_BOTH>,
+					      <&pdc 15 IRQ_TYPE_EDGE_BOTH>,
+					      <&pdc 17 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "hs_phy_irq", "dp_hs_phy_irq",
+					  "dm_hs_phy_irq", "ss_phy_irq";
+
+			power-domains = <&gcc GCC_USB30_PRIM_GDSC>;
+
+			resets = <&gcc GCC_USB30_PRIM_BCR>;
+
+			usb_1_dwc3: dwc3@a600000 {
+				compatible = "snps,dwc3";
+				reg = <0 0x0a600000 0 0xe000>;
+				interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
+				iommus = <&apps_smmu 0xe0 0x0>;
+				snps,dis_u2_susphy_quirk;
+				snps,dis_enblslpm_quirk;
+				phys = <&usb_1_hsphy>, <&usb_1_ssphy>;
+				phy-names = "usb2-phy", "usb3-phy";
+			};
+		};
+
 		pdc: interrupt-controller@b220000 {
 			compatible = "qcom,sc7280-pdc", "qcom,pdc";
 			reg = <0 0x0b220000 0 0x30000>;
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
