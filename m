Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 772CCC25B7D
	for <linux-phy@archiver.kernel.org>; Sat, 25 May 2024 17:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9jOV4mk2QP9SjIM2o68H60ffKaW5ObdQyggV/eni/v4=; b=UDO4PhZdsUqPQG
	0fyL+DOvA8d97hTUCe/46hYOxtamcWG3crqwgxHhXY50DAlI8c89o5Iw59hSFBOCxHvv6/aOToZBc
	OCPZqRUYga3t18R4LRuSLRjpgTus8c82qZdqyrtwjRFYUz4y1n8LURXhpFkxAV37ScktgRNm0zH2v
	iN9XgeCyq4u0YQXDn8J0LF6Kqk1fliDuRIh0+CabCFhYBPYcGaHaLbSqQGdHZ/qWD9linp3vWeZ5g
	p8YxHD31fjiBqXYlKuiE5ypZiwTepP0F/MckBk6/Zoze5anKBFhOcSMWHZb/K66hWCKqTWp4brCfB
	BaAQ+iagltT4WIdiPiZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sAvfw-0000000BSsu-08t5;
	Sat, 25 May 2024 17:59:24 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sAvfs-0000000BSqV-2hvG
	for linux-phy@lists.infradead.org;
	Sat, 25 May 2024 17:59:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E899663537;
	Sat, 25 May 2024 17:59:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99111C2BD11;
	Sat, 25 May 2024 17:59:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716659959;
	bh=fT5H+9k0dKw7ylUnpXt7G6BQhfF1fStNR237iT1CHY8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=o02yb0UKPRXZxFxcEHmh8tMsjOm6BiAvD/893mJ893f/ZwQEyIIau/DS+CM1pEfTd
	 nC56c9jwM9H32u2z93g5C6AeMQ7WX8SQJ85s1PBkaG+eZwHo1jaiOjKr5Xs7Uxg2LX
	 xGM3XdwPn09hPoa8b3tpiLELe/tnrZOp4/hogknJrs2zU7bbInV4x1lWm3Z+opstA1
	 W6ZIFS3TnEZwRe/ej6iaLFWAFtGcieHQTqHLH47jAMn3S3XAM2OiNpT9jjqTIbapRd
	 Jy0Z6jRcu/vlLWObrEq5nL/cBpOJ/HlBnHfm4PsOspalGeaGVSdJhWo63oF5ybJ2/U
	 Ac4FSx7aQVJqQ==
From: Bjorn Andersson <andersson@kernel.org>
Date: Sat, 25 May 2024 11:04:01 -0700
Subject: [PATCH 08/10] arm64: dts: qcom: sc8180x: Add USB MP controller and
 phys
MIME-Version: 1.0
Message-Id: <20240525-sc8180x-usb-mp-v1-8-60a904392438@quicinc.com>
References: <20240525-sc8180x-usb-mp-v1-0-60a904392438@quicinc.com>
In-Reply-To: <20240525-sc8180x-usb-mp-v1-0-60a904392438@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-clk@vger.kernel.org, linux-usb@vger.kernel.org, 
 Bjorn Andersson <quic_bjorande@quicinc.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=5451;
 i=quic_bjorande@quicinc.com; h=from:subject:message-id;
 bh=9MKZGUklgYXdQmJb0Ci7E4C65gPkhylXhTIui5TVewU=;
 b=owEBgwJ8/ZANAwAIAQsfOT8Nma3FAcsmYgBmUigMg+OuqInwHR3RI2Cbb/opRwyNFctoxU0Lg
 lxkKpgSqVKJAkkEAAEIADMWIQQF3gPMXzXqTwlm1SULHzk/DZmtxQUCZlIoDBUcYW5kZXJzc29u
 QGtlcm5lbC5vcmcACgkQCx85Pw2ZrcWfsBAAriYmGV1MSfQ406DVeil3lKzAMNUvyEzswoSUrjA
 H1OvR34xU/YVI6XR2dhoK/2fQLLu+eAPCrJkYP2fl+sZQ9NlA0wKhIW7mmn2+/eFooE9w9y6Yo1
 wUg58YMdagu6B0Vwlv81uAn6ZMq3rrPfPArGwSE1IuOxlMsZU22kL2W92tJpNTqeDH+ji2usSr9
 CS9KhDso0t8c4yHtoD/IRlJ9LqsTu0vbivKqRg/dFsqybAVCPF3fjL+QJRU/q39NfxwCti+r1uL
 0CYjXXbL59FaSTyRgmlJ4ZemOESoiomy6jlkokZDjDaB8Mwilu98jimWeoq3dUXK4br4p8m6GMG
 ayC+4lCgtPX7NNLGhNJ+ysR/0RrT1bBdqJ2HSToXG+M89fjZqdBujar8L0EQZEULGRmbfUFFd7J
 pH0s0JyU8HeybUnm7gdF6Dx+eUzM1vsgvYg9FTzGRXjHuqF0dFA1cdsWjYL11AJi31p1x24DBdK
 ZRZWB9WEmJdF0GkYNXKy8lx6qE5889QmDNQ7eQgwjgSL1Jj+r1KAEIBvmnXbi0OR31c+FgRm5TM
 +aGKjbPKSGdy3Hf8NpQ9nVUbwZiN2/QYOZaURLPHnH/OnQ+7UQaUxC82q5ZSo3vEaw2hhMS5ZMG
 SL9um5RxXSPNJ9G4lVRUakJ134C80m7MDk7Q3MWbUzTU=
X-Developer-Key: i=quic_bjorande@quicinc.com; a=openpgp;
 fpr=05DE03CC5F35EA4F0966D5250B1F393F0D99ADC5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240525_105920_843471_84AA89DD 
X-CRM114-Status: UNSURE (   8.52  )
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

From: Bjorn Andersson <quic_bjorande@quicinc.com>

The SC8180X platform comes with a multiport DWC3 controller with two
ports, each connected to a pair of HighSpeed and QMP SuperSpeed PHYs.

Describe these blocks.

Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
---
 arch/arm64/boot/dts/qcom/sc8180x.dtsi | 146 ++++++++++++++++++++++++++++++++++
 1 file changed, 146 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
index 9ef3fa40e1d8..0950dc7adb20 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
@@ -2511,6 +2511,34 @@ usb_sec_hsphy: phy@88e3000 {
 			status = "disabled";
 		};
 
+		usb_mp0_hsphy: phy@88e4000 {
+			compatible = "qcom,sc8180x-usb-hs-phy",
+				     "qcom,usb-snps-hs-7nm-phy";
+			reg = <0 0x088e4000 0 0x400>;
+			#phy-cells = <0>;
+
+			clocks = <&rpmhcc RPMH_CXO_CLK>;
+			clock-names = "ref";
+
+			resets = <&gcc GCC_QUSB2PHY_MP0_BCR>;
+
+			status = "disabled";
+		};
+
+		usb_mp1_hsphy: phy@88e5000 {
+			compatible = "qcom,sc8180x-usb-hs-phy",
+				     "qcom,usb-snps-hs-7nm-phy";
+			reg = <0 0x088e5000 0 0x400>;
+			#phy-cells = <0>;
+
+			clocks = <&rpmhcc RPMH_CXO_CLK>;
+			clock-names = "ref";
+
+			resets = <&gcc GCC_QUSB2PHY_MP1_BCR>;
+
+			status = "disabled";
+		};
+
 		usb_prim_qmpphy: phy@88e9000 {
 			compatible = "qcom,sc8180x-qmp-usb3-dp-phy";
 			reg = <0 0x088e9000 0 0x18c>,
@@ -2577,6 +2605,54 @@ usb_prim_dpphy: dp-phy@88ea200 {
 			};
 		};
 
+		usb_mp0_qmpphy: phy@88eb000 {
+			compatible = "qcom,sc8180x-qmp-usb3-uni-phy";
+			reg = <0 0x088eb000 0 0x1000>;
+
+			clocks = <&gcc GCC_USB3_MP_PHY_AUX_CLK>,
+				 <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
+				 <&gcc GCC_USB3_MP_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_MP_PHY_PIPE_0_CLK>;
+			clock-names = "aux", "ref", "com_aux", "pipe";
+
+			resets = <&gcc GCC_USB3_UNIPHY_MP0_BCR>,
+				 <&gcc GCC_USB3UNIPHY_PHY_MP0_BCR>;
+			reset-names = "phy", "phy_phy";
+
+			power-domains = <&gcc USB30_MP_GDSC>;
+
+			#clock-cells = <0>;
+			clock-output-names = "usb2_phy0_pipe_clk";
+
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
+		usb_mp1_qmpphy: phy@88ec000 {
+			compatible = "qcom,sc8180x-qmp-usb3-uni-phy";
+			reg = <0 0x088ec000 0 0x1000>;
+
+			clocks = <&gcc GCC_USB3_MP_PHY_AUX_CLK>,
+				 <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
+				 <&gcc GCC_USB3_MP_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_MP_PHY_PIPE_0_CLK>;
+			clock-names = "aux", "ref", "com_aux", "pipe";
+
+			resets = <&gcc GCC_USB3_UNIPHY_MP1_BCR>,
+				 <&gcc GCC_USB3UNIPHY_PHY_MP1_BCR>;
+			reset-names = "phy", "phy_phy";
+
+			power-domains = <&gcc USB30_MP_GDSC>;
+
+			#clock-cells = <0>;
+			clock-output-names = "usb2_phy1_pipe_clk";
+
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
 		usb_sec_qmpphy: phy@88ee000 {
 			compatible = "qcom,sc8180x-qmp-usb3-dp-phy";
 			reg = <0 0x088ee000 0 0x18c>,
@@ -2662,6 +2738,76 @@ gem_noc: interconnect@9680000 {
 			qcom,bcm-voters = <&apps_bcm_voter>;
 		};
 
+		usb_mp: usb@a4f8800 {
+			compatible = "qcom,sc8180x-dwc3-mp", "qcom,dwc3";
+			reg = <0 0x0a4f8800 0 0x400>;
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+			dma-ranges;
+
+			clocks = <&gcc GCC_CFG_NOC_USB3_MP_AXI_CLK>,
+				 <&gcc GCC_USB30_MP_MASTER_CLK>,
+				 <&gcc GCC_AGGRE_USB3_MP_AXI_CLK>,
+				 <&gcc GCC_USB30_MP_SLEEP_CLK>,
+				 <&gcc GCC_USB30_MP_MOCK_UTMI_CLK>,
+				 <&gcc GCC_USB3_SEC_CLKREF_CLK>;
+			clock-names = "cfg_noc",
+				      "core",
+				      "iface",
+				      "sleep",
+				      "mock_utmi",
+				      "xo";
+
+			interconnects = <&aggre1_noc MASTER_USB3_2 0 &mc_virt SLAVE_EBI_CH0 0>,
+					<&gem_noc MASTER_AMPSS_M0 0 &config_noc SLAVE_USB3_2 0>;
+			interconnect-names = "usb-ddr", "apps-usb";
+
+			assigned-clocks = <&gcc GCC_USB30_MP_MOCK_UTMI_CLK>,
+					  <&gcc GCC_USB30_MP_MASTER_CLK>;
+			assigned-clock-rates = <19200000>, <200000000>;
+
+			interrupts-extended = <&intc GIC_SPI 656 IRQ_TYPE_LEVEL_HIGH>,
+					      <&intc GIC_SPI 655 IRQ_TYPE_LEVEL_HIGH>,
+					      <&intc GIC_SPI 658 IRQ_TYPE_LEVEL_HIGH>,
+					      <&intc GIC_SPI 657 IRQ_TYPE_LEVEL_HIGH>,
+					      <&pdc 59 IRQ_TYPE_EDGE_BOTH>,
+					      <&pdc 46 IRQ_TYPE_EDGE_BOTH>,
+					      <&pdc 71 IRQ_TYPE_EDGE_BOTH>,
+					      <&pdc 68 IRQ_TYPE_EDGE_BOTH>,
+					      <&pdc 7 IRQ_TYPE_LEVEL_HIGH>,
+					      <&pdc 30 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "pwr_event_1", "pwr_event_2",
+					  "hs_phy_1",	 "hs_phy_2",
+					  "dp_hs_phy_1", "dm_hs_phy_1",
+					  "dp_hs_phy_2", "dm_hs_phy_2",
+					  "ss_phy_1",	 "ss_phy_2";
+
+			power-domains = <&gcc USB30_MP_GDSC>;
+
+			resets = <&gcc GCC_USB30_MP_BCR>;
+
+			status = "disabled";
+
+			usb_mp_dwc3: usb@a400000 {
+				compatible = "snps,dwc3";
+				reg = <0 0x0a400000 0 0xcd00>;
+				interrupts = <GIC_SPI 654 IRQ_TYPE_LEVEL_HIGH>;
+				iommus = <&apps_smmu 0x60 0>;
+				snps,dis_u2_susphy_quirk;
+				snps,dis_enblslpm_quirk;
+				phys = <&usb_mp0_hsphy>,
+				       <&usb_mp0_qmpphy>,
+				       <&usb_mp1_hsphy>,
+				       <&usb_mp1_qmpphy>;
+				phy-names = "usb2-0",
+					    "usb3-0",
+					    "usb2-1",
+					    "usb3-1";
+				dr_mode = "host";
+			};
+		};
+
 		usb_prim: usb@a6f8800 {
 			compatible = "qcom,sc8180x-dwc3", "qcom,dwc3";
 			reg = <0 0x0a6f8800 0 0x400>;

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
