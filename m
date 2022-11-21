Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17F2BC43219
	for <linux-phy@archiver.kernel.org>; Mon, 21 Nov 2022 08:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gxo/h2b0R5Mu4uxvyplNEHgywhBKS3RAfCS3zkrZ9RM=; b=mFJFEHpCXjIpBf
	Oy92PnV6gEDuyYxZEp/jNR7SSyNwBGrR0ZYRn/BrxlrniaiBrklLJTzG22d10yodm5CGqqbegdJnl
	WMfc+yLOamDkPLlRUThGip7WXd9W1DwSGpKeLOOXgwV8ywbERpuSSG8DaWPTyrUd0OjERlqlEwAHe
	xv5lb7SsF+hxyM5vcKNz/Qbc7k+XbicxbtTeXxZ1i4fHSZVlEXbJwEzckdMA6/gOD1F9nwejB0UmD
	pW3rDlFem1h6Xq7MC7RbGkuIBuZ+EthtkpZnSerSetGAurCI8NRMNBvNnh18VpCFxXe44p8cipGNO
	qKjFt9g4QUBcFhCuNQbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox2XE-00BUn5-Gw; Mon, 21 Nov 2022 08:52:12 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox2X3-00BUdA-9g
	for linux-phy@lists.infradead.org; Mon, 21 Nov 2022 08:52:04 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id CE0FD60F3B;
	Mon, 21 Nov 2022 08:52:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3EA4EC433D6;
	Mon, 21 Nov 2022 08:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669020720;
	bh=DiTiFhITTJAs4MUg6xmD0lJZnTNOGszS1cZFFoBRtIY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=FQ5LDqk6bap7VHo3bW2hTHpjjl3ixgyC00Wzlx8mbM8oSP2+NpXKFvo1/0t8QaIx7
	 aTjFRzJrmUoLeOxPnre3xUOwtyKvC4dyb0zScpAhiVxuHmuhMz/CdsQVgM8G4mjZbh
	 aXaC8fmFg1jbYkTUBBkHqM/Ebn4WQAvQZm0+2J1LyzqgOFs2XsKFOxJmWiHQGWGsPd
	 h9vcZbqWVx9PKOEdXhb7Eq59lDqIvy/Rme4Dfj4WqXR/5Xb/31wBndnxXJ06WjNbFs
	 wh3/XLEOzJJdVRNux+R9IIqWNMtRbHeeHwdgpiO4difuTUqqi1sT4Od26KRzpaZ2ug
	 3GA5GBzh+o01g==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ox2WT-00088t-Nr; Mon, 21 Nov 2022 09:51:25 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v3 15/15] arm64: dts: qcom: sc8280xp: fix USB-DP PHY nodes
Date: Mon, 21 Nov 2022 09:50:58 +0100
Message-Id: <20221121085058.31213-16-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221121085058.31213-1-johan+linaro@kernel.org>
References: <20221121085058.31213-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_005201_501847_AB1BC81A 
X-CRM114-Status: GOOD (  12.49  )
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

Update the USB4-USB3-DP QMP PHY nodes to match the new binding which
specifically includes the missing register regions (e.g. DP_PHY) and
allows for supporting DisplayPort Alternate Mode.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 77 ++++++++------------------
 1 file changed, 23 insertions(+), 54 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index 85c674e7e1a5..3c5bc56e68fc 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -11,6 +11,7 @@
 #include <dt-bindings/interconnect/qcom,sc8280xp.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/mailbox/qcom-ipcc.h>
+#include <dt-bindings/phy/phy-qcom-qmp.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
 #include <dt-bindings/thermal/thermal.h>
@@ -763,7 +764,7 @@ gcc: clock-controller@100000 {
 				 <0>,
 				 <0>,
 				 <0>,
-				 <&usb_0_ssphy>,
+				 <&usb_0_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
 				 <0>,
 				 <0>,
 				 <0>,
@@ -771,7 +772,7 @@ gcc: clock-controller@100000 {
 				 <0>,
 				 <0>,
 				 <0>,
-				 <&usb_1_ssphy>,
+				 <&usb_1_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
 				 <0>,
 				 <0>,
 				 <0>,
@@ -1666,42 +1667,26 @@ IPCC_MPROC_SIGNAL_GLINK_QMP
 			};
 		};
 
-		usb_0_qmpphy: phy-wrapper@88ec000 {
+		usb_0_qmpphy: phy@88eb000 {
 			compatible = "qcom,sc8280xp-qmp-usb43dp-phy";
-			reg = <0 0x088ec000 0 0x1e4>,
-			      <0 0x088eb000 0 0x40>,
-			      <0 0x088ed000 0 0x1c8>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x088eb000 0 0x4000>;
 
 			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
-				 <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_USB4_EUD_CLKREF_CLK>,
-				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>;
-			clock-names = "aux", "ref_clk_src", "ref", "com_aux";
+				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
+			clock-names = "aux", "ref", "com_aux", "usb3_pipe";
+
+			power-domains = <&gcc USB30_PRIM_GDSC>;
 
 			resets = <&gcc GCC_USB3_PHY_PRIM_BCR>,
 				 <&gcc GCC_USB4_DP_PHY_PRIM_BCR>;
 			reset-names = "phy", "common";
 
-			power-domains = <&gcc USB30_PRIM_GDSC>;
+			#clock-cells = <1>;
+			#phy-cells = <1>;
 
 			status = "disabled";
-
-			usb_0_ssphy: usb3-phy@88eb400 {
-				reg = <0 0x088eb400 0 0x100>,
-				      <0 0x088eb600 0 0x3ec>,
-				      <0 0x088ec400 0 0x364>,
-				      <0 0x088eba00 0 0x100>,
-				      <0 0x088ebc00 0 0x3ec>,
-				      <0 0x088ec200 0 0x18>;
-				#phy-cells = <0>;
-				#clock-cells = <0>;
-				clocks = <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "usb0_phy_pipe_clk_src";
-			};
 		};
 
 		usb_1_hsphy: phy@8902000 {
@@ -1718,42 +1703,26 @@ usb_1_hsphy: phy@8902000 {
 			status = "disabled";
 		};
 
-		usb_1_qmpphy: phy-wrapper@8904000 {
+		usb_1_qmpphy: phy@8903000 {
 			compatible = "qcom,sc8280xp-qmp-usb43dp-phy";
-			reg = <0 0x08904000 0 0x1e4>,
-			      <0 0x08903000 0 0x40>,
-			      <0 0x08905000 0 0x1c8>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x08903000 0 0x4000>;
 
 			clocks = <&gcc GCC_USB3_SEC_PHY_AUX_CLK>,
-				 <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_USB4_CLKREF_CLK>,
-				 <&gcc GCC_USB3_SEC_PHY_COM_AUX_CLK>;
-			clock-names = "aux", "ref_clk_src", "ref", "com_aux";
+				 <&gcc GCC_USB3_SEC_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
+			clock-names = "aux", "ref", "com_aux", "usb3_pipe";
+
+			power-domains = <&gcc USB30_SEC_GDSC>;
 
 			resets = <&gcc GCC_USB3_PHY_SEC_BCR>,
 				 <&gcc GCC_USB4_1_DP_PHY_PRIM_BCR>;
 			reset-names = "phy", "common";
 
-			power-domains = <&gcc USB30_SEC_GDSC>;
+			#clock-cells = <1>;
+			#phy-cells = <1>;
 
 			status = "disabled";
-
-			usb_1_ssphy: usb3-phy@8903400 {
-				reg = <0 0x08903400 0 0x100>,
-				      <0 0x08903600 0 0x3ec>,
-				      <0 0x08904400 0 0x364>,
-				      <0 0x08903a00 0 0x100>,
-				      <0 0x08903c00 0 0x3ec>,
-				      <0 0x08904200 0 0x18>;
-				#phy-cells = <0>;
-				#clock-cells = <0>;
-				clocks = <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "usb1_phy_pipe_clk_src";
-			};
 		};
 
 		mdss1_dp0_phy: phy@8909a00 {
@@ -1941,7 +1910,7 @@ usb_0_dwc3: usb@a600000 {
 				reg = <0 0x0a600000 0 0xcd00>;
 				interrupts = <GIC_SPI 803 IRQ_TYPE_LEVEL_HIGH>;
 				iommus = <&apps_smmu 0x820 0x0>;
-				phys = <&usb_0_hsphy>, <&usb_0_ssphy>;
+				phys = <&usb_0_hsphy>, <&usb_0_qmpphy QMP_USB43DP_USB3_PHY>;
 				phy-names = "usb2-phy", "usb3-phy";
 			};
 		};
@@ -1995,7 +1964,7 @@ usb_1_dwc3: usb@a800000 {
 				reg = <0 0x0a800000 0 0xcd00>;
 				interrupts = <GIC_SPI 810 IRQ_TYPE_LEVEL_HIGH>;
 				iommus = <&apps_smmu 0x860 0x0>;
-				phys = <&usb_1_hsphy>, <&usb_1_ssphy>;
+				phys = <&usb_1_hsphy>, <&usb_1_qmpphy QMP_USB43DP_USB3_PHY>;
 				phy-names = "usb2-phy", "usb3-phy";
 			};
 		};
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
