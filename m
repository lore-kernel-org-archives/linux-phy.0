Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05646C433FE
	for <linux-phy@archiver.kernel.org>; Sun,  6 Nov 2022 15:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NYeJYVRJ67QDYdO9+ROPTOszumiLgce+X+Elbmo+UDk=; b=IIIxdMBjnK+y2N
	DyKIBs8JyGzapD9AFBHDdDd2IXMR4nL3nHNuqFNGm2WuWJphAgozTKjN8IV83GUdGCMaopyBClNdb
	FTevGtIbjgSuzKg4NRC4NQTROuZsxIxqAPb7jTzLrFTSBCG/YzehWo+IM8YzSr76L4w0svXRzxB4y
	gaWJA/5UNZukjyJCYNardmvodMg/OcbE/m8Y7pHNtG+ROcsopiVmq4/t9wWTVHFRWrKe6vt42HUb8
	B6F/93U6wakMhrDuI6+DZ+4ao50R8VTSJAS93lld+vROD7Y/NFucoYm83L2mkvjggMXrytfo1ZCUG
	fIFqlRevsDfV9bALrByg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orhud-008ewT-5J; Sun, 06 Nov 2022 15:50:19 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orhuQ-008ep1-EL; Sun, 06 Nov 2022 15:50:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 35B9A1FB;
	Sun,  6 Nov 2022 07:50:06 -0800 (PST)
Received: from slackpad.fritz.box (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 333783F534;
	Sun,  6 Nov 2022 07:49:58 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Chen-Yu Tsai <wens@csie.org>,
	Samuel Holland <samuel@sholland.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Icenowy Zheng <uwu@icenowy.me>
Cc: soc@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org
Subject: [PATCH v3 00/11] ARM: suniv: USB and PopStick board support
Date: Sun,  6 Nov 2022 15:48:15 +0000
Message-Id: <20221106154826.6687-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.35.5
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221106_075006_614623_AC109795 
X-CRM114-Status: GOOD (  14.18  )
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

This is an update to Icenowy's v2 of the series, fixing the smaller
issues mentioned during the review. Also it adds two patches that
improve the quirk handling for the sunxi MUSB and USB PHY driver, as it
was hinted in some replies. I put those patches at the end, to not
jeopardy the actual USB functionality of the Allwinner F1C100s series.
For a changelog see below.
================
This patchset introduces support for F1C100s' USB and SourceParts
PopStick board.

The DT binding and driver support for SUNIV USB PHY/MUSB are added, in
addition to DT changes to the DTSI and Lichee Nano DT. A new DT is added
for SourceParts PopStick v1.1 board.

Changelog v1 ... v2:
- USB PHY binding: clarify the relation with other phy-sun4i-usb bindings
- Add Popstick binding and .dts patches

Changelog v2 ... v3:
- remove redundant "Device Tree Bindings" suffix in DT binding doc title
- add BSD license to binding doc file (as per checkpatch)
- use existing PHY sun4i_a10_phy type instead of inventing new one
- fix some commit message title prefixes
- use proper plural spelling for usb0_id_det-gpios
- popstick.dts: Reorder otg_sram node reference alphabetically
- popstick.dts: Add regulator- prefix to 3.3V regulator node name
- popstick.dts: Fix status, compatible and reg property order
- popstick.dts: Drop unneeded mmc0 and spi0 aliases
- add two patches to clean up sunxi MUSB and USB PHY driver
- add Acks and Reviewed-by's


Andre Przywara (2):
  phy: sun4i-usb: Replace types with explicit quirk flags
  usb: musb: sunxi: Introduce config struct

Icenowy Zheng (9):
  dt-bindings: phy: add binding document for Allwinner F1C100s USB PHY
  dt-bindings: usb: sunxi-musb: add F1C100s MUSB compatible string
  phy: sun4i-usb: add support for the USB PHY on F1C100s SoC
  musb: sunxi: add support for the F1C100s MUSB controller
  ARM: dts: suniv: add USB-related device nodes
  ARM: dts: suniv: licheepi-nano: enable USB
  dt-bindings: vendor-prefixes: add Source Parts
  dt-binding: arm: sunxi: add compatible strings for PopStick v1.1
  ARM: dts: suniv: add device tree for PopStick v1.1

 .../devicetree/bindings/arm/sunxi.yaml        |  7 ++
 .../phy/allwinner,suniv-f1c100s-usb-phy.yaml  | 83 ++++++++++++++++
 .../usb/allwinner,sun4i-a10-musb.yaml         |  1 +
 .../devicetree/bindings/vendor-prefixes.yaml  |  2 +
 arch/arm/boot/dts/Makefile                    |  3 +-
 .../boot/dts/suniv-f1c100s-licheepi-nano.dts  | 16 +++
 arch/arm/boot/dts/suniv-f1c100s.dtsi          | 26 +++++
 .../boot/dts/suniv-f1c200s-popstick-v1.1.dts  | 99 +++++++++++++++++++
 drivers/phy/allwinner/phy-sun4i-usb.c         | 58 +++++------
 drivers/usb/musb/sunxi.c                      | 97 +++++++++++++-----
 10 files changed, 335 insertions(+), 57 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/allwinner,suniv-f1c100s-usb-phy.yaml
 create mode 100644 arch/arm/boot/dts/suniv-f1c200s-popstick-v1.1.dts

-- 
2.35.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
