Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1D31C25B79
	for <linux-phy@archiver.kernel.org>; Sat, 25 May 2024 17:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E40wgbi1euACB5UkIYV+3Uce3+Df26oBqesI0kW/XKs=; b=cKmvsrjL72UEcJ
	usw2m6JexOzM+Q9eIswS6+4/wYbFW5nSEEgfGZoqZC6AN86n5CRVRLvl98If5aFJo8QzE2AE8PU+s
	bB7MirnxRNaoutHMzr2To8zbyAvDjeRI+dRlvXpefh80K8MsIT6ot3/8yHEHoQjvUnhBHSw/d0WA8
	SU9JyoGzRjaXy/QFPGFKs4LPGiIQxSgcFWStfQL/qvRpnFT4pQEW1cuLPK6KcwpNueWFTysZ9Z0iW
	pc0pJ5e5B9VBxjMZ43AYs+vGKpS43j9T1IEQ73AO7HirVzTfQywK65OG0WBpTo3Dkjz1xrFVhjMo7
	cNXz0CoGbLpuGznKix1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sAvfu-0000000BSrW-1CJz;
	Sat, 25 May 2024 17:59:22 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sAvfr-0000000BSpZ-1GZh
	for linux-phy@lists.infradead.org;
	Sat, 25 May 2024 17:59:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 93E5B63571;
	Sat, 25 May 2024 17:59:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E51BC4AF12;
	Sat, 25 May 2024 17:59:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716659958;
	bh=k2Zrv/KzpO8todlcSye5iZdki24cp3kSkjj42zD5Afw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Wke20qqMekGOA2zzhzgisOSD+FWiYq9uR/7meyG0Ywc9KdVHp7wGNDQr0mAulBX53
	 lE2tpWox2g247DLH8Vr5cbVLDgSA7Qag+R5iAixar66emxL7kdlch8N/23mI8HLIJS
	 Nx0jeLoMg06p69omqiJroFAdzvhkHY1/WeM2j+jk2XoKH2M2obaErPUq1NmQNUTVaF
	 gKO9GvHsCswT/PpBPrAEKTd1Wk/1K+8jzqVbRNtpSwvKtBskV9G1CI9bQ4hrhTlG39
	 rcswIY1ITHE+xzaYFGEzLWM8nVAgpKTa/vHG3OO3KNXFdMtwXjPmssD6D4hCX6ANG6
	 r/CSPOkOeLeHg==
From: Bjorn Andersson <andersson@kernel.org>
Date: Sat, 25 May 2024 11:04:00 -0700
Subject: [PATCH 07/10] arm64: dts: qcom: sc8180x: Align USB nodes with
 binding
MIME-Version: 1.0
Message-Id: <20240525-sc8180x-usb-mp-v1-7-60a904392438@quicinc.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2316;
 i=quic_bjorande@quicinc.com; h=from:subject:message-id;
 bh=YF0b2S8RermZ7DOy6SglxA1mcPt1MWrQ6lnKCRwbj0A=;
 b=owEBgwJ8/ZANAwAIAQsfOT8Nma3FAcsmYgBmUigMgQMBXUlGaner4t231riNoisxNP5xQ/tcw
 wgnDp6XSTKJAkkEAAEIADMWIQQF3gPMXzXqTwlm1SULHzk/DZmtxQUCZlIoDBUcYW5kZXJzc29u
 QGtlcm5lbC5vcmcACgkQCx85Pw2ZrcXNiQ/+Ndkh5jz0DWSWYmKm3qdD5coLzti8YsUlSD1JfS8
 SWjs8oZFArhy64bRns30/EdOKAhimPnB4/SiRHM6GdxdZDbAje3eJknqIE/UFhBQmQlo/zrZ2xw
 CWIzr4ij4tIvPUx+GZ0rjIPU0E7SEgDq2XeDUXV954Rpu7HhuQWNmLdeN3Xc8DXW1Z0i5QRo7Qn
 v+08XnBw/RSKf1DVkGtz+oatEPPHBPZmNOLHbMaq9V0AoXmXcT2/KgQ+WElZK0u7AZbymjkj9FM
 O14Bx5gRma697iKioMwRQv894Wbo9ylQD8wnolrpQ5U3A+4UkvmvstRu63x994zrqHh5gOQtz1q
 WJzBNqURDLFxiAmKH8FjYbeh73z3L4+8OzOED8Lqa6OWClexc1bKC72zTkN2W9TdtUb+s2EBhU/
 UN/B0xx1TqheMLpmCqMaLqD7yUkA4vCs624AfgahN3ZdJNlmqrqciPAcTT3DVTWY/0Mfp854Gdf
 CjuSzwJ06ySPlLfCDGaDbHvFS+3w0b7Voqg2MOeyJxbThwnyMmmFM5sMFuYqxxx/yCljcjy5kBW
 5KGA+NYPxZSvqOZxJt/OwKjM60514j9N4pkvll/AiWXVWek1LUFYd2bP6G7FFd6dsfutpLLIh9S
 AxtJFw+fgIeWa7IvwT2+VnogbcVg3F0qr6LTnRIROuk4=
X-Developer-Key: i=quic_bjorande@quicinc.com; a=openpgp;
 fpr=05DE03CC5F35EA4F0966D5250B1F393F0D99ADC5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240525_105919_526951_0BF4CA41 
X-CRM114-Status: UNSURE (   8.78  )
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

Add the pwr_event interrupt and rearrange the order of the other
interrupts to match the binding.

Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
---
 arch/arm64/boot/dts/qcom/sc8180x.dtsi | 29 ++++++++++++++++++-----------
 1 file changed, 18 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
index 067712310560..9ef3fa40e1d8 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
@@ -2665,14 +2665,16 @@ gem_noc: interconnect@9680000 {
 		usb_prim: usb@a6f8800 {
 			compatible = "qcom,sc8180x-dwc3", "qcom,dwc3";
 			reg = <0 0x0a6f8800 0 0x400>;
-			interrupts-extended = <&intc GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>,
-					      <&pdc 6 IRQ_TYPE_LEVEL_HIGH>,
+			interrupts-extended = <&intc GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>,
+					      <&intc GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>,
+					      <&pdc 9 IRQ_TYPE_EDGE_BOTH>,
 					      <&pdc 8 IRQ_TYPE_EDGE_BOTH>,
-					      <&pdc 9 IRQ_TYPE_EDGE_BOTH>;
-			interrupt-names = "hs_phy_irq",
-					  "ss_phy_irq",
+					      <&pdc 6 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "pwr_event",
+					  "hs_phy_irq",
+					  "dp_hs_phy_irq",
 					  "dm_hs_phy_irq",
-					  "dp_hs_phy_irq";
+					  "ss_phy_irq";
 
 			clocks = <&gcc GCC_CFG_NOC_USB3_PRIM_AXI_CLK>,
 				 <&gcc GCC_USB30_PRIM_MASTER_CLK>,
@@ -2739,12 +2741,17 @@ usb_sec: usb@a8f8800 {
 				      "xo";
 			resets = <&gcc GCC_USB30_SEC_BCR>;
 			power-domains = <&gcc USB30_SEC_GDSC>;
-			interrupts-extended = <&intc GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>,
-					      <&pdc 40 IRQ_TYPE_LEVEL_HIGH>,
+
+			interrupts-extended = <&intc GIC_SPI 135 IRQ_TYPE_LEVEL_HIGH>,
+					      <&intc GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>,
+					      <&pdc 11 IRQ_TYPE_EDGE_BOTH>,
 					      <&pdc 10 IRQ_TYPE_EDGE_BOTH>,
-					      <&pdc 11 IRQ_TYPE_EDGE_BOTH>;
-			interrupt-names = "hs_phy_irq", "ss_phy_irq",
-					  "dm_hs_phy_irq", "dp_hs_phy_irq";
+					      <&pdc 40 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "pwr_event",
+					  "hs_phy_irq",
+					  "dp_hs_phy_irq",
+					  "dm_hs_phy_irq",
+					  "ss_phy_irq";
 
 			assigned-clocks = <&gcc GCC_USB30_SEC_MOCK_UTMI_CLK>,
 					  <&gcc GCC_USB30_SEC_MASTER_CLK>;

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
