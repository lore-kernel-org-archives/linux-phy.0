Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB2D8CA5FE1
	for <linux-phy@archiver.kernel.org>; Sun, 18 Jan 2026 13:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ilSEWNIYA/dh83Bl49VXmxE7qoDsfUI11kLsY48PsI=; b=VZjWXnoyJX2nDK
	t0nT6/RskFD/I7kO+9gLmnVKqVGXZIbtwdzvj+FQMDRIo4MnM/jEVINijMuzFOYpPI6rzgQ2eRF5c
	WIMK6kGVj/55V9IUMc1/tZ1ZXNc7DX4/LOgy4j2OsxDv/pH5sMXqIeqpJaDSTGcOAZ7niUuAeiDop
	okRtUXJ2xTgePA26thumlYdU2jiUGv3h+uLhFcOEPXrZX0fs65Dqd76TX7vjPLfi9nSOXcl1LNBHq
	Sla6hjpWzaeNSPssRA8YqwzUS6hbxodv/ODQoPvTIc6/mQ6Ab262dAqksj4F4UOIntOD4GTascP8y
	2wJwyrD/4RRNc7RPkF4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhTCA-000000009nY-2tPo;
	Sun, 18 Jan 2026 13:51:58 +0000
Received: from mout-p-202.mailbox.org ([80.241.56.172])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhTBq-000000009W4-2IDV;
	Sun, 18 Jan 2026 13:51:50 +0000
Received: from smtp202.mailbox.org (smtp202.mailbox.org [10.196.197.202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4dvFPN3vDHz9tlQ;
	Sun, 18 Jan 2026 14:51:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1768744296;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1rFp++szFwKhe/aS+BdF0LwvGh5g0rpUwtgmKQmOfa8=;
	b=K6B5LGm/eDKBoqubI4IxRBg3qGZxmw6oHq1R8wlyd/xYoSmj/TwcnGucckte1bFbAYjo03
	vktuwe38vZcfO4YVtvpVfAPg2IQ6cL9GsxwzU6ImdGJvZZsKmGYP4iacdaCsjFufpJ9xpf
	XIHMYMIE9xk010cx3SugXvWTqa9G63GtPBPvZnXJGeMnsj6eoTqCQlitJ4LVBFHYx+T3/2
	FQqOdzQsZr8cf8qCXF22Jw0tTHtJYKG8FIg5NIozFwFOjE3pl9WH9jyW7cUYvqTbo5M6fG
	pIsbsDR1cbRslftvEWEUSH64AT7iUQ6QC3XyhoQ3ygBqcbBHA9afS5Unb9AgEA==
From: Marek Vasut <marek.vasut+renesas@mailbox.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1768744294;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1rFp++szFwKhe/aS+BdF0LwvGh5g0rpUwtgmKQmOfa8=;
	b=NxgyC/EWSbG/scOOVminTK/OSZfYol4fbAO8ShO05ghLYeBhUiah1t4kcrfploCHXUBkpO
	8M2KfrehFASyGwNcSYh2g84YobYkJo+yQ52+AAmS+ei+YoWy+BBbpNT7KW5N2LvWUT98sg
	pGrOtWCP1awSyd1G9hsV5wiS0eCpetG3KAzBWKDSjoUNyiNSbUxWVNnUAsRspcSKl82mBt
	9RvvT2s9WHR+fIrq6qANissRZtQEuoaRUiKnNCPGMCRXCFbU6lnYaDojjeb3+TRo3c2OGw
	6TY8tHbMKwUCtGvLTqMrGqKKSXNpHlHlBFjyUKXI1XMtbUk9bptknDeHrCsZxQ==
To: linux-arm-kernel@lists.infradead.org
Cc: Marek Vasut <marek.vasut+renesas@mailbox.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH v2 9/9] arm64: dts: renesas: ebisu: Describe PCIe/USB3.0 clock generator
Date: Sun, 18 Jan 2026 14:49:57 +0100
Message-ID: <20260118135038.8033-10-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20260118135038.8033-1-marek.vasut+renesas@mailbox.org>
References: <20260118135038.8033-1-marek.vasut+renesas@mailbox.org>
MIME-Version: 1.0
X-MBO-RS-META: uemityo16qautgos11k8sys8sits49b7
X-MBO-RS-ID: 0c1bd4268929741fa1a
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260118_055140_819845_7474C081 
X-CRM114-Status: GOOD (  12.27  )
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

Describe the 9FGV0841 PCIe and USB3.0 clock generator present on Ebisu
board. The clock generator supplies 100 MHz differential clock for both
PCIe slot and BT/WLAN expansion port, as well as for the USB 3.0 PHY.

This configuration is valid for SW49 in OFF position, which means the
PCIe signals are routed to the PCIe slot and U11 9FGV0841 PCIe clock
generator output 3 supplies clock to the PCIe slot.

In case the SW49 is set to ON position, which means the PCIe signals
are routed to the EX BT/WLAN expansion port, and U11 9FGV0841 PCIe
clock generator output 4 supplies clock to the port and &pciec0_rp
clocks should be changed to "clocks = <&pcie_usb_clk 4>;". Once the
BT/WLAN port is tested, this can be implemented using a DTO. Until
then, assume SW49 is set to OFF position.

Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Magnus Damm <magnus.damm@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: devicetree@vger.kernel.org
Cc: linux-phy@lists.infradead.org
Cc: linux-renesas-soc@vger.kernel.org
---
V2: Combine with USB 3.0 simple PHY enablement and update commit message
---
 arch/arm64/boot/dts/renesas/ebisu.dtsi | 43 ++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/ebisu.dtsi b/arch/arm64/boot/dts/renesas/ebisu.dtsi
index 692a2b12aa035..d8de9568d0605 100644
--- a/arch/arm64/boot/dts/renesas/ebisu.dtsi
+++ b/arch/arm64/boot/dts/renesas/ebisu.dtsi
@@ -53,6 +53,12 @@ backlight: backlight {
 		power-supply = <&reg_12p0v>;
 	};
 
+	pcie_usb_refclk: clk-x7 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <25000000>;
+	};
+
 	cvbs-in {
 		compatible = "composite-video-connector";
 		label = "CVBS IN";
@@ -439,6 +445,13 @@ adv7511_out: endpoint {
 		};
 	};
 
+	pcie_usb_clk: clk@68 {
+		compatible = "renesas,9fgv0841";
+		reg = <0x68>;
+		clocks = <&pcie_usb_refclk>;
+		#clock-cells = <1>;
+	};
+
 	video-receiver@70 {
 		compatible = "adi,adv7482";
 		reg = <0x70>;
@@ -578,12 +591,30 @@ &ohci0 {
 
 &pcie_bus_clk {
 	clock-frequency = <100000000>;
+	status = "disabled";
 };
 
 &pciec0 {
+	clocks = <&cpg CPG_MOD 319>, <&pcie_usb_clk 1>;
 	status = "okay";
 };
 
+&pciec0_rp {
+	/*
+	 * This configuration is valid for SW49 in OFF position,
+	 * which means the PCIe signals are routed to the PCIe slot
+	 * and U11 9FGV0841 PCIe clock generator output 3 supplies
+	 * clock to the PCIe slot.
+	 *
+	 * In case the SW49 is set to ON position, which means the
+	 * PCIe signals are routed to the EX BT/WLAN expansion port,
+	 * and U11 9FGV0841 PCIe clock generator output 4 supplies
+	 * clock to the port, change clocks below to:
+	 * clocks = <&pcie_usb_clk 4>;
+	 */
+	clocks = <&pcie_usb_clk 3>;
+};
+
 &pfc {
 	avb_pins: avb {
 		groups = "avb_link", "avb_mii";
@@ -871,7 +902,19 @@ &usb2_phy0 {
 	status = "okay";
 };
 
+&usb3_phy0 {
+	clocks = <&pcie_usb_clk 6>;
+	status = "okay";
+};
+
+&usb3s0_clk {
+	clock-frequency = <100000000>;
+	status = "disabled";
+};
+
 &usb3_peri0 {
+	phys = <&usb3_phy0>;
+	phy-names = "usb";
 	companion = <&xhci0>;
 	status = "okay";
 };
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
