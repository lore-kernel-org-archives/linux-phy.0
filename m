Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96E03C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 21 Apr 2022 10:23:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DixFf5UpGJ1/5XlE3fUjFygzwGQr5vmquxa4HV4BM94=; b=gmkGuht4OyXvfj
	TgWTPbqkyDrUG0f3TPdM8/+04u+FkWplD3rBa6ZJfupHThOR35hR7awugiL3pcgZjrFh7kgy7ifrT
	wCB+OL2ghWuvWkXVITpXZfABj3nz7HU2Lg2O/CEKBsWUssaIy+0F7Ib0abJkLtfm1j2z6s7gn8Z02
	rxhDpQM5G72Wp4/WhQP1+Kf6+hzyVJy6xBHi+VnwhHRgh3PK5l6aBGBAihvhcp2RNj5nSPdQ5pjsb
	da+e2mEmblsuaM3QRBWer295/j2GTZlYIXAbuYXLOJpOKOTkdgGsularmKbxZU9jY+Z0KqXQ+NYXe
	2DA1ZBcGZb6LUCLDYqKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhTyR-00D1DW-2G; Thu, 21 Apr 2022 10:23:43 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhTyO-00D1AW-Ak
 for linux-phy@lists.infradead.org; Thu, 21 Apr 2022 10:23:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 84478B823E7;
 Thu, 21 Apr 2022 10:23:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3918C385AC;
 Thu, 21 Apr 2022 10:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650536613;
 bh=mHz5AgVnSrTaGOXojcB9hqQaqAnullRbzrWC0LxA+34=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Kf4bONYIYSzcRnbOsffSWTKg0KeT6uacWY5b7ltg3atcuxm8YaZbk3QeXhQMtW3QJ
 VzAGHV1kO03iO43dr9ete/OH+Dbq9rl54qLBZQ5Tbx5uTJWWcCiZaSz7KNTzrCq0Jm
 sFec/tTzfFT3zYvOWqaV4TgZDfPPYUgrAF5FanPFBY4+CFJpedG3GpDtRx/HlkncWw
 +Nex6h1hUgDbKNgexjx8VJjtBHLdjcdAWf1tBAD6jMPRLMpcT4ZXyPnnv0s9g/59M+
 W115TExH4IGGSKrQAQdARgPSwCYKDKfJuz5HTt0dTFBcNQKlU5e4JCjpex28Sl8mAW
 onPCbXwZCe28g==
Received: from johan by xi.lan with local (Exim 4.94.2)
 (envelope-from <johan+linaro@kernel.org>)
 id 1nhTyB-0004Xg-D9; Thu, 21 Apr 2022 12:23:27 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 "Stephen Boyd" <swboyd@chromium.org>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Prasad Malisetty <quic_pmaliset@quicinc.com>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org, Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH RFC 2/5] arm64: dts: qcom: sc7280: move pipe mux handling to
 phy
Date: Thu, 21 Apr 2022 12:20:38 +0200
Message-Id: <20220421102041.17345-3-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220421102041.17345-1-johan+linaro@kernel.org>
References: <20220421102041.17345-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220421_032340_675053_D35D318F 
X-CRM114-Status: GOOD (  10.52  )
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

The QMP PHY pipe clock remuxing is part of the PHY, which is both the
producer and the consumer of the pipe clock.

Update the PCIe controller and PHY node to reflect the new binding.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 arch/arm64/boot/dts/qcom/sc7280.dtsi | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index c07765df9303..b3a9630262dc 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -1837,11 +1837,7 @@ pcie1: pci@1c08000 {
 					<0 0 0 3 &intc 0 0 0 438 IRQ_TYPE_LEVEL_HIGH>,
 					<0 0 0 4 &intc 0 0 0 439 IRQ_TYPE_LEVEL_HIGH>;
 
-			clocks = <&gcc GCC_PCIE_1_PIPE_CLK>,
-				 <&gcc GCC_PCIE_1_PIPE_CLK_SRC>,
-				 <&pcie1_lane 0>,
-				 <&rpmhcc RPMH_CXO_CLK>,
-				 <&gcc GCC_PCIE_1_AUX_CLK>,
+			clocks = <&gcc GCC_PCIE_1_AUX_CLK>,
 				 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
 				 <&gcc GCC_PCIE_1_MSTR_AXI_CLK>,
 				 <&gcc GCC_PCIE_1_SLV_AXI_CLK>,
@@ -1849,11 +1845,7 @@ pcie1: pci@1c08000 {
 				 <&gcc GCC_AGGRE_NOC_PCIE_TBU_CLK>,
 				 <&gcc GCC_DDRSS_PCIE_SF_CLK>;
 
-			clock-names = "pipe",
-				      "pipe_mux",
-				      "phy_pipe",
-				      "ref",
-				      "aux",
+			clock-names = "aux",
 				      "cfg",
 				      "bus_master",
 				      "bus_slave",
@@ -1910,8 +1902,10 @@ pcie1_lane: lanes@1c0e200 {
 				      <0 0x01c0e600 0 0x170>,
 				      <0 0x01c0e800 0 0x200>,
 				      <0 0x01c0ee00 0 0xf4>;
-				clocks = <&gcc GCC_PCIE_1_PIPE_CLK>;
-				clock-names = "pipe0";
+				clocks = <&gcc GCC_PCIE_1_PIPE_CLK>,
+					 <&gcc GCC_PCIE_1_PIPE_CLK_SRC>,
+					 <&rpmhcc RPMH_CXO_CLK>;
+				clock-names = "pipe0", "mux", "ref";
 
 				#phy-cells = <0>;
 				#clock-cells = <1>;
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
