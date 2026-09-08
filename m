Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62334C79FB3
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 09:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5fMtCWFa0qRyuowPhsqJzpv4MHITKRTUhLF7CWLI9mQ=; b=VIxMOHIDj5bMXV
	3LgvadFSoHfyuDzjC0t8ZfPqG95+gQTa9Hcq3So7vcAY+dRDa/qfGjGa4LxCVezjkkRVOqVlNfhtN
	x2Kq2J9VyN0ilhWUfytPp5e+xLlyTFUEG6yELMZkY2U1QB0sCSq0hCvWkZ9msy72IsUVcEYWA4uHa
	HlFBeJHZhF8674Ir59k4hbseDjyTbTPEcuwVA4z0+hxU2sRp5CUfMYBjVXakFxVNV6e+ehTmxy8uV
	hnSWHslFPbUf2fOPb+yO+PuYk/d4xIG1Bgc0GR/JJa/PN31ihlxlM8mEXxODPQR3E9p6e3vYf2zuD
	iBtRTZ0RI9t4elQi0T9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3sL0-00000008dto-03WR;
	Tue, 08 Sep 2026 09:41:58 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3sKy-00000008drT-3GAW
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 09:41:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 85A9543CBC;
	Tue,  8 Sep 2026 09:41:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 672C1C2BCFC;
	Tue,  8 Sep 2026 09:41:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788860516;
	bh=6rrENnExuPWnVu3LsSNeNwwki1fRkiuqcMOe8pK5ajM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=EEYLq/pAsCRYIZ2m/rJt+W8yr6hv+hJJZ1mjoZcd9REztimE6rJkspMDSbzkZ1i1I
	 rAgGUzX9YQO+aOqq9LAjEFuKzgND/3ZGMctoRjor/NJYYJuzyRsoZGsb6T0QZ/2g/y
	 UBl2hIv1rBKMJrkv4KALYDWLBqhCWq2GZ5rAjnfT/cjBftYjm6aZcnYQ/43ylunNxa
	 8wiQVEqlgkbP7apQ/kb+U200l1L38p4ubecV2DaWJJX7REsO4bKff/6+0d4rMlrCnL
	 LSqSmGeHs2rRNHYEVIAnHNaHVP600uWCLR5kb9fvMb+52hP+bRRjKgfpMQi4iaZPo4
	 e9v+z/QXG42Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54663C79F82;
	Tue,  8 Sep 2026 09:41:56 +0000 (UTC)
From: George Moussalem via B4 Relay <devnull+george.moussalem.outlook.com@kernel.org>
Date: Tue, 08 Sep 2026 13:41:02 +0400
Subject: [PATCH v4 09/13] arm64: dts: qcom: ipq5018: Add USB Super-Speed
 PHY node
MIME-Version: 1.0
Message-Id: <20260908-ipq5018-usb3-v4-9-b789702f0695@outlook.com>
References: <20260908-ipq5018-usb3-v4-0-b789702f0695@outlook.com>
In-Reply-To: <20260908-ipq5018-usb3-v4-0-b789702f0695@outlook.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Praveenkumar I <praveenkumar.i@oss.qualcomm.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>, 
 Nitheesh Sekar <quic_nsekar@quicinc.com>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, Stanislaw Pal <kuncy7@gmail.com>, 
 George Moussalem <george.moussalem@outlook.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788860513; l=1365;
 i=george.moussalem@outlook.com; s=20250321; h=from:subject:message-id;
 bh=E1RXspduA/qm4y+OQopUpGy17R6HIoV4JDWYYWUJv1I=;
 b=+5aKJQzhNectQFle6jqBMtjnlnyl8ime8/xt5oo529EKwQPuifI4WiJ27M4tgvsYaKC0/Z6HH
 mV8Wz+WafQ9CP11d89JRMolziqhBmVd3p27IDez4eZy3GIli0yJob1P
X-Developer-Key: i=george.moussalem@outlook.com; a=ed25519;
 pk=/PuRTSI9iYiHwcc6Nrde8qF4ZDhJBlUgpHdhsIjnqIk=
X-Endpoint-Received: by B4 Relay for george.moussalem@outlook.com/20250321
 with auth_id=364
X-Original-From: George Moussalem <george.moussalem@outlook.com>
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
Reply-To: george.moussalem@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: George Moussalem <george.moussalem@outlook.com>

Add the USB3 PHY node and populate the USB DT clock on the GCC node for
the GCC to gate the PIPE clock supplied by the USB3 PHY.

Tested-by: Stanislaw Pal <kuncy7@gmail.com>
Signed-off-by: George Moussalem <george.moussalem@outlook.com>
---
 arch/arm64/boot/dts/qcom/ipq5018.dtsi | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
index 956d3217ec52..34d882b047bc 100644
--- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
@@ -179,6 +179,23 @@ usbphy0: phy@5b000 {
 			status = "disabled";
 		};
 
+		usbphy1: phy@5d000 {
+			compatible = "qcom,ipq5018-uniphy-usb3-phy";
+			reg = <0x0005d000 0x800>;
+
+			clocks = <&gcc GCC_USB0_PIPE_CLK>,
+				 <&gcc GCC_USB0_PHY_CFG_AHB_CLK>;
+
+			resets = <&gcc GCC_USB0_PHY_BCR>;
+
+			#clock-cells = <0>;
+			#phy-cells = <0>;
+
+			qcom,phy-usb-mux-sel = <&tcsr 0x10540>;
+
+			status = "disabled";
+		};
+
 		pcie1_phy: phy@7e000 {
 			compatible = "qcom,ipq5018-uniphy-pcie-phy";
 			reg = <0x0007e000 0x800>;
@@ -436,7 +453,7 @@ gcc: clock-controller@1800000 {
 				 <&sleep_clk>,
 				 <&pcie0_phy>,
 				 <&pcie1_phy>,
-				 <0>,
+				 <&usbphy1>,
 				 <&gephy_rx_clk>,
 				 <&gephy_tx_clk>,
 				 <0>,

-- 
2.53.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
