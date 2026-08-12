Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BECF0C5CFEE
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 09:34:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mDnWdR3CUiVeAU7lhb0DMT49LVbARCvRc46Lt7O+R4s=; b=kzgWZpfb2EEgj6
	ByAoFX9EFLWLbfMkMvYTc2CI/dPfs2uPi3skMv5PmrxGXqw9DqHB1UbVf4Bsy5AxFWQpiisMRpryJ
	jx276K3wzIxubaVgINyyMW3j+pq9gjwMSHUsyARtUwkTBkvE2vJa84c2LSk3qV/ECZuxKYtrZs/7s
	ySg1kN9FX3pzpGcv2U0cGd3nR0Rr2WkUU7OG7jyjUtN+qutn78dXmB3/A65nFd65Z6bpQwmQDppvR
	T6ETUEL5tL60043EEqEPyO+ZTlwNfXUklHfdO7LLrExVTOWlpLO2WTSAN1u1FGBc7t6F5rt2BKVmY
	UxQRwmu/PTrzAseVsHtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5MJ-0000000FliQ-251f;
	Wed, 12 Aug 2026 09:34:51 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5MD-0000000FleW-3t6l
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 09:34:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 19AAF43F1B;
	Wed, 12 Aug 2026 09:34:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF34C4AF0C;
	Wed, 12 Aug 2026 09:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786527284;
	bh=TxZEg/967MIvOveyPvlS6NGS5qBdrqXFzdbhFtlshy8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=ts/Nc7eBX8jYP6ChSXm+ZY+mqGRFE2ueBJcVhmYmrCOWqJZkUEEYOlEs9BvPPg76r
	 6r6R3XlsU/0c43qXr1DJNscFpT5KG/V97LBRVRs+V146WOgZIruUSeG3AA3JDgwW5D
	 +sop/5BzcYjR+JYSjqyHTmVTU9s702Uy64wzbo+dN3RC2g5hCp0iCBSoZTtKzfLPDf
	 68XazAAvBAMGGTl65Oz9oRZmGPIP1TIH/7FZqb/7BtiriQw2cw0xBzRMJn9O7Xe1Ar
	 pc+FFng3qQCr/CUao6FaBEzeGs8Ubuoo2UgbYP7+0v4Q1NSX8tc/1UTOULJLGbnzMe
	 kUBwc7LSckYRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952ABC5AD5A;
	Wed, 12 Aug 2026 09:34:44 +0000 (UTC)
From: George Moussalem via B4 Relay <devnull+george.moussalem.outlook.com@kernel.org>
Date: Wed, 12 Aug 2026 13:34:38 +0400
Subject: [PATCH v2 03/14] arm64: dts: qcom: ipq5018: Add USB Super-Speed
 PHY node
MIME-Version: 1.0
Message-Id: <20260812-ipq5018-usb3-v2-3-8f355d7ff0ef@outlook.com>
References: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
In-Reply-To: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Praveenkumar I <quic_ipkumar@quicinc.com>, 
 Varadarajan Narayanan <quic_varada@quicinc.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, George Moussalem <george.moussalem@outlook.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786527282; l=1332;
 i=george.moussalem@outlook.com; s=20250321; h=from:subject:message-id;
 bh=riheTfE3kh2GSOSS8RnJjpesQWZx6C7ohPUXJLruDeM=;
 b=MGGdMWSaw90KDhnG0Bo2qowHXR3DKAMO2S3WqejJu/XPmdeUVGpmNtNf3IrH/nLhiKJ1nGY6o
 ZbWxBWVjBVQCYSOx3kH1wVqDZdPde9G9MX2jjE3ynywxNAKgfJWTldY
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

Add USB Super-Speed UNIPHY node and populate the USB DT clock on the GCC
node for the GCC to gate the PIPE clock supplied by the USB3 PHY.

Signed-off-by: George Moussalem <george.moussalem@outlook.com>
---
 arch/arm64/boot/dts/qcom/ipq5018.dtsi | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
index 4fc627b47fe7..d259a841ad17 100644
--- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
@@ -179,6 +179,23 @@ usbphy0: phy@5b000 {
 			status = "disabled";
 		};
 
+		usbphy1: phy@5d000 {
+			compatible = "qcom,ipq5018-uniphy-usb-ss-phy";
+			reg = <0x0005d000 0x800>;
+
+			clocks = <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
+				 <&gcc GCC_USB0_PIPE_CLK>;
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
