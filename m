Return-Path: <SRS0=XorX=M3=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1C1DC4338F
	for <linux-phy@archiver.kernel.org>; Wed,  4 Aug 2021 14:11:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B11FA60EE8
	for <linux-phy@archiver.kernel.org>; Wed,  4 Aug 2021 14:11:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B11FA60EE8
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=tkos.co.il
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ojZ6DA0giM9BMIWXgmtHdJGITMr1ze6nwFeqMrRfmho=; b=3TzGITRbhpjbFN
	114btxUnIL3GAAhjr2Xnpsd42UaooWM59AXlDBrsTIBwsRcf9GBcER2rKyXP40jZN5hyg2nrzRGUp
	TV3V851rIDjlwCpLrHrui+aDxUDTvgLDsfzwvI45a55KXzuMNgyfTmHpHeMpSC+eoroO9IB/jKgqA
	ctsCz1ZHz70gQOa4madDOz7OyLl6gSSBhfqJPelc1KKTJdMs+t+k9bJO2d9m25G+yqzlVqmzJW1x0
	WUAFSZHxo/BK6ehj/44bASpTSI/T9WEyp1tNA66k8w8QXFrm6URAsOpVX7XMge0NECdHo4YFnHWW2
	unyo+cfI7QDFirCi1Ldg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBHcT-006M4V-Ua; Wed, 04 Aug 2021 14:11:41 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBHXV-006IsD-95; Wed, 04 Aug 2021 14:06:36 +0000
Received: from tarshish.tkos.co.il (unknown [10.0.8.3])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id 2005C440EBC;
 Wed,  4 Aug 2021 17:06:07 +0300 (IDT)
From: Baruch Siach <baruch@tkos.co.il>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Felipe Balbi <balbi@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc: Kathiravan T <kathirav@codeaurora.org>, Baruch Siach <baruch@tkos.co.il>,
 Balaji Prakash J <bjagadee@codeaurora.org>,
 Jack Pham <jackp@codeaurora.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
 linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: [PATCH v2 6/6] arm64: qcom: ipq6018: add usb3 DT description
Date: Wed,  4 Aug 2021 17:05:10 +0300
Message-Id: <436c458546b2a783af36a190ed72ebc5c74de44e.1628085910.git.baruch@tkos.co.il>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <3d86f45004fe2fcbae0a2cd197df81a1fd076a1e.1628085910.git.baruch@tkos.co.il>
References: <3d86f45004fe2fcbae0a2cd197df81a1fd076a1e.1628085910.git.baruch@tkos.co.il>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210804_070633_917682_4F171BB0 
X-CRM114-Status: UNSURE (   9.91  )
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

From: Kathiravan T <kathirav@codeaurora.org>

Based on downstream codeaurora code.

Tested (USB2 only) on IPQ6010 based hardware.

Signed-off-by: Kathiravan T <kathirav@codeaurora.org>
Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 arch/arm64/boot/dts/qcom/ipq6018.dtsi | 83 +++++++++++++++++++++++++++
 1 file changed, 83 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
index 9fa5b028e4f3..ab701da582e5 100644
--- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
@@ -524,6 +524,89 @@ qrtr_requests {
 			};
 		};
 
+		ssphy_0: ssphy@78000 {
+			compatible = "qcom,ipq6018-qmp-usb3-phy";
+			reg = <0x0 0x78000 0x0 0x1C4>;
+			#address-cells = <2>;
+			#size-cells = <2>;
+			#clock-cells = <1>;
+			ranges;
+
+			clocks = <&gcc GCC_USB0_AUX_CLK>,
+				 <&gcc GCC_USB0_PHY_CFG_AHB_CLK>, <&xo>;
+			clock-names = "aux", "cfg_ahb", "ref";
+
+			resets = <&gcc GCC_USB0_PHY_BCR>,
+				 <&gcc GCC_USB3PHY_0_PHY_BCR>;
+			reset-names = "phy","common";
+			status = "disabled";
+
+			usb0_ssphy: lane@78200 {
+				reg = <0x0 0x00078200 0x0 0x130>, /* Tx */
+				      <0x0 0x00078400 0x0 0x200>, /* Rx */
+				      <0x0 0x00078800 0x0 0x1F8>, /* PCS */
+				      <0x0 0x00078600 0x0 0x044>; /* PCS misc */
+				#phy-cells = <0>;
+				clocks = <&gcc GCC_USB0_PIPE_CLK>;
+				clock-names = "pipe0";
+				clock-output-names = "gcc_usb0_pipe_clk_src";
+			};
+		};
+
+		qusb_phy_0: qusb@79000 {
+			compatible = "qcom,ipq6018-qusb2-phy";
+			reg = <0x0 0x079000 0x0 0x180>;
+			#phy-cells = <0>;
+
+			clocks = <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
+				<&xo>;
+			clock-names = "cfg_ahb", "ref";
+
+			resets = <&gcc GCC_QUSB2_0_PHY_BCR>;
+			status = "disabled";
+		};
+
+		usb3: usb3@8A00000 {
+			compatible = "qcom,ipq6018-dwc3", "qcom,dwc3";
+			reg = <0x0 0x8AF8800 0x0 0x400>;
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+
+			clocks = <&gcc GCC_SYS_NOC_USB0_AXI_CLK>,
+				<&gcc GCC_USB0_MASTER_CLK>,
+				<&gcc GCC_USB0_SLEEP_CLK>,
+				<&gcc GCC_USB0_MOCK_UTMI_CLK>;
+			clock-names = "sys_noc_axi",
+				"master",
+				"sleep",
+				"mock_utmi";
+
+			assigned-clocks = <&gcc GCC_SYS_NOC_USB0_AXI_CLK>,
+					  <&gcc GCC_USB0_MASTER_CLK>,
+					  <&gcc GCC_USB0_MOCK_UTMI_CLK>;
+			assigned-clock-rates = <133330000>,
+					       <133330000>,
+					       <20000000>;
+
+			resets = <&gcc GCC_USB0_BCR>;
+			status = "disabled";
+
+			dwc_0: dwc3@8A00000 {
+				compatible = "snps,dwc3";
+				reg = <0x0 0x8A00000 0x0 0xcd00>;
+				interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
+				phys = <&qusb_phy_0>, <&usb0_ssphy>;
+				phy-names = "usb2-phy", "usb3-phy";
+				tx-fifo-resize;
+				snps,is-utmi-l1-suspend;
+				snps,hird-threshold = /bits/ 8 <0x0>;
+				snps,dis_u2_susphy_quirk;
+				snps,dis_u3_susphy_quirk;
+				snps,ref-clock-period = <0x32>;
+				dr_mode = "host";
+			};
+		};
 	};
 
 	wcss: wcss-smp2p {
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
