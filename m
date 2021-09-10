Return-Path: <SRS0=5sx/=OA=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 332A9C433FE
	for <linux-phy@archiver.kernel.org>; Fri, 10 Sep 2021 18:46:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EA69261251
	for <linux-phy@archiver.kernel.org>; Fri, 10 Sep 2021 18:46:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org EA69261251
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/3x7LdhgE2jawo2hkTOmk1cTv3Zw5neZfBHrdzd0+cQ=; b=gc4BHia18qdhNU
	PxrdgFIacP11I1IYh/O3M8GVUelJupr3Et7xl/w/bh7u8rOXMqYp5Sz5qvGTb1xVZPaqtO0rHos8Z
	fcXh/DpL6rGhirbQbleD64ZkJaHsupTlycGYUlvWj4nf4q28CqwJqmT3wqr2lTtq5YXxhDt3izL5y
	gutKfQehvgyL+SB4WlcnZpX7wKIDOr3kmMXx69hBWWyLrXrd0Afv0TgGZdU1sLMtT5n9QffY5Veuf
	t6dGYYx8/fv0eRzuHTEIOYUA+HJgvqSETs0cdW0E0WGkhWnHzrqLGE7bwSMo1sKfrxByQX9dDtdA/
	Y/Q1IraXWrwvOstfwPfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mOlXP-00DNva-Bv; Fri, 10 Sep 2021 18:46:11 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mOlTq-00DLy5-De; Fri, 10 Sep 2021 18:42:32 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 6C89A240008;
 Fri, 10 Sep 2021 18:42:27 +0000 (UTC)
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-staging@lists.linux.dev
Cc: Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: [PATCH 09/22] ARM: dts: sun8i: v3s: Add nodes for MIPI CSI-2 support
Date: Fri, 10 Sep 2021 20:41:34 +0200
Message-Id: <20210910184147.336618-10-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210910184147.336618-1-paul.kocialkowski@bootlin.com>
References: <20210910184147.336618-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210910_114230_839152_923FAEE5 
X-CRM114-Status: GOOD (  13.04  )
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

MIPI CSI-2 is supported on the V3s with an A31-based MIPI CSI-2 bridge
controller. The controller uses a separate D-PHY, which is the same
that is otherwise used for MIPI DSI, but used in Rx mode.

On the V3s, the CSI0 controller is dedicated to MIPI CSI-2 as it does
not have access to any parallel interface pins.

Add all the necessary nodes (CSI0, MIPI CSI-2 bridge and D-PHY) to
support the MIPI CSI-2 interface.

Note that a fwnode graph link is created between CSI0 and MIPI CSI-2
even when no sensor is connected. This will result in a probe failure
for the controller as long as no sensor is connected but this is fine
since no other interface is available.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 arch/arm/boot/dts/sun8i-v3s.dtsi | 72 ++++++++++++++++++++++++++++++++
 1 file changed, 72 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-v3s.dtsi b/arch/arm/boot/dts/sun8i-v3s.dtsi
index a77b63362a1d..ec7fa6459547 100644
--- a/arch/arm/boot/dts/sun8i-v3s.dtsi
+++ b/arch/arm/boot/dts/sun8i-v3s.dtsi
@@ -612,6 +612,34 @@ spi0: spi@1c68000 {
 			#size-cells = <0>;
 		};
 
+		csi0: camera@1cb0000 {
+			compatible = "allwinner,sun8i-v3s-csi";
+			reg = <0x01cb0000 0x1000>;
+			interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_CSI>,
+				 <&ccu CLK_CSI1_SCLK>,
+				 <&ccu CLK_DRAM_CSI>;
+			clock-names = "bus", "mod", "ram";
+			resets = <&ccu RST_BUS_CSI>;
+			status = "disabled";
+
+			assigned-clocks = <&ccu CLK_CSI1_SCLK>;
+			assigned-clock-parents = <&ccu CLK_PLL_ISP>;
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@1 {
+					reg = <1>;
+
+					csi0_in_mipi_csi2: endpoint {
+						remote-endpoint = <&mipi_csi2_out_csi0>;
+					};
+				};
+			};
+		};
+
 		csi1: camera@1cb4000 {
 			compatible = "allwinner,sun8i-v3s-csi";
 			reg = <0x01cb4000 0x3000>;
@@ -637,5 +665,49 @@ gic: interrupt-controller@1c81000 {
 			#interrupt-cells = <3>;
 			interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
 		};
+
+		mipi_csi2: csi@1cb1000 {
+			compatible = "allwinner,sun8i-v3s-mipi-csi2",
+				     "allwinner,sun6i-a31-mipi-csi2";
+			reg = <0x01cb1000 0x1000>;
+			interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_CSI>,
+				 <&ccu CLK_CSI1_SCLK>;
+			clock-names = "bus", "mod";
+			resets = <&ccu RST_BUS_CSI>;
+			status = "disabled";
+
+			phys = <&dphy>;
+			phy-names = "dphy";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				mipi_csi2_in: port@0 {
+					reg = <0>;
+				};
+
+				mipi_csi2_out: port@1 {
+					reg = <1>;
+
+					mipi_csi2_out_csi0: endpoint {
+						remote-endpoint = <&csi0_in_mipi_csi2>;
+					};
+				};
+			};
+		};
+
+		dphy: d-phy@1cb2000 {
+			compatible = "allwinner,sun6i-a31-mipi-dphy";
+			reg = <0x01cb2000 0x1000>;
+			clocks = <&ccu CLK_BUS_CSI>,
+				 <&ccu CLK_MIPI_CSI>;
+			clock-names = "bus", "mod";
+			resets = <&ccu RST_BUS_CSI>;
+			allwinner,direction = "rx";
+			status = "disabled";
+			#phy-cells = <0>;
+		};
 	};
 };
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
