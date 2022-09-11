Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4323DC6FA83
	for <linux-phy@archiver.kernel.org>; Mon, 12 Sep 2022 00:02:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=orYKxy8+NjkuBJSArXhWzjlsnOKT0VcnURp1s0+2Pxg=; b=42pkSzmK5WptdO
	ZnvvvnxaVIgZNCfzKkasc0hZcbK0tPo6d82qirLCOSgsZEYMOQMrJCairUseANg4I6gmheEUYWI25
	mmyBGONdgKk/NJjquVd4lj2RqsaK49FvmEt7W5WxGENcbH+c+SkPYhgRZCCGtQSnmV9ab+5S7h5Ie
	H/BQLkjkAVWeZJenLx3IPmM37gK/wOv2W1REREaDg9dsig8NS56laVuJthmA4Mtgbk9CO7bEAO1dF
	4CZkNmGLGOanFjz4pf6/AGE4CEgpgJha4aJcABL9+8b50W/0NUhDNsN216ElK7sFZ15+LQkYAnJRX
	oXkEZmI+siKZROHW4qow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXWuR-005PZI-MO; Mon, 12 Sep 2022 00:02:43 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXWtg-005PG6-Fc; Mon, 12 Sep 2022 00:01:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BB9A9113E;
	Sun, 11 Sep 2022 17:01:49 -0700 (PDT)
Received: from slackpad.fritz.box (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AC5713F73B;
	Sun, 11 Sep 2022 17:01:40 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	Karl Kurbjun <karl.os@veroson.com>,
	Icenowy Zheng <icenowy@aosc.io>
Subject: [PATCH 0/7] arm64: sunxi: h616: Add USB support
Date: Mon, 12 Sep 2022 00:59:38 +0100
Message-Id: <20220911235945.6635-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220911_170156_689309_BA22E1BF 
X-CRM114-Status: GOOD (  15.87  )
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

The USB IP used in the Allwinner H616 SoC is very similar to the one
used in the H3 chip: it contains four USB 2.0 host controllers and four
PHYs, where the first PHY is shared with a separate USB-OTG controller.

But out of the four ports, only port 2 works out of the box, the other
ports require some resources and registers of port 2 to be enabled as
well.

Implement the required workaround in the Allwinner USB PHY driver, and
key this off the respective compatible string. This core code is
contained in patch 3/7. The first two patches add the respective DT
binding documentation, whereas patch 4/7 encodes all the configuration
options for the H616 USB PHY into the driver.
The last three patches add the respective devicetree nodes, to the H616
.dtsi, but also to the DTs of the two supported boards.

This allows USB to be used on any H616 based machine. This was tested on
the X96 Mate box.

This series is an update on what was included in earlier versions of the
initial H616 support series, but was later dropped to get the basic
support in first more quickly.
It is now based on v6.0-rc4 and is also available here:
https://github.com/apritzel/linux/commits/h616-usb

Please have a look and test on your hardware, especically on all ports
exposed on header pins of the OrangePi Zero2 board.

Cheers,
Andre

Andre Przywara (7):
  dt-bindings: usb: Add H616 compatible string
  dt-bindings: usb: Add special clock for Allwinner H616 PHY
  phy: sun4i-usb: Introduce port2 SIDDQ quirk
  phy: sun4i-usb: Add support for the H616 USB PHY
  arm64: dts: allwinner: h616: Add USB nodes
  arm64: dts: allwinner: h616: OrangePi Zero 2: Add USB nodes
  arm64: dts: allwinner: h616: X96 Mate: Add USB nodes

 .../phy/allwinner,sun8i-h3-usb-phy.yaml       |  19 +++
 .../devicetree/bindings/usb/generic-ehci.yaml |   1 +
 .../devicetree/bindings/usb/generic-ohci.yaml |   1 +
 .../allwinner/sun50i-h616-orangepi-zero2.dts  |  42 +++++
 .../dts/allwinner/sun50i-h616-x96-mate.dts    |  25 +++
 .../arm64/boot/dts/allwinner/sun50i-h616.dtsi | 160 ++++++++++++++++++
 drivers/phy/allwinner/phy-sun4i-usb.c         |  71 ++++++++
 7 files changed, 319 insertions(+)

-- 
2.35.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
