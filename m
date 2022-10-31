Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6676C38A02
	for <linux-phy@archiver.kernel.org>; Mon, 31 Oct 2022 11:16:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ST4M6FhZj/3/6B0ltR/1C9aHRa24uEQTcokgJ846Bgc=; b=WSW45vTwajDIJd
	tvNjhhPNbEmDW8xw9SW3g+b+xHV5lLUVEma7QjoEGEXJ8BrqS+DF9f+CZ1JRv/F08XUPrD7xXP6Wa
	IaZJUESea5bjh1AMdSnEFVM4KpYff0EMUCfI/NDKnm7lvyaMJV2/ZXxhItDqP/pOaF9BqKFmT0sDs
	wnRY/EcU3OwPmq2TUg9EuJSRmBsDFEZhCOih34c6W4vTFLbrnhgcV7IcPvwUsYuZd6Vk5d1uo+Knb
	qOccUPsSsQ78NjSYHaB3t37cZzjzImGqDBTA1+fqJZ6MFm/rpXz4Qo5RtwigGFeT6lp9N1EPqgoiR
	c1RY0qFifE8MihLFlR6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opSlt-00B8FW-Ux; Mon, 31 Oct 2022 11:16:01 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opSkO-00B7DK-CI; Mon, 31 Oct 2022 11:14:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 905241FB;
	Mon, 31 Oct 2022 04:14:26 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.42])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AADA73F703;
	Mon, 31 Oct 2022 04:14:17 -0700 (PDT)
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
	Icenowy Zheng <uwu@icenowy.me>
Subject: [PATCH v2 0/7] arm64: sunxi: h616: Add USB support
Date: Mon, 31 Oct 2022 11:13:51 +0000
Message-Id: <20221031111358.3387297-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_041428_507601_A644621F 
X-CRM114-Status: GOOD (  16.02  )
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

This is a fixed and rebased update of the previous version, with only
the DT binding and one DT seeing changes, triggered by Krzysztof's
comments. For a changelog see below.
Thanks to Karl for testing this on the OrangePi Zero 2!

------------------------
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

The patches in this series were originally contained in the initial H616
support series, but where dropped there to speed up mainlining of the
basic support.

It is now based on v6.1-rc3 and is also available here:
https://github.com/apritzel/linux/commits/h616-usb-v2

Please have a look and test on your hardware, especically on all ports
exposed on header pins of the OrangePi Zero2 board.

Cheers,
Andre

Changelog v1 .. v2:
- Add Krzysztof's ACK
- wrap If: clause in allOf: (patch 2/7)
- limit old (H3) PHYs to 4 clocks (else clause, patch 2/7)
- change subsystem to phy: in subject (patch 2/7)
- use "regulator-" prefix for DT node name (patch 6/7)
- drop unneeded status property in regulator node (patch 6/7)

Andre Przywara (7):
  dt-bindings: usb: Add H616 compatible string
  dt-bindings: phy: Add special clock for Allwinner H616 PHY
  phy: sun4i-usb: Introduce port2 SIDDQ quirk
  phy: sun4i-usb: Add support for the H616 USB PHY
  arm64: dts: allwinner: h616: Add USB nodes
  arm64: dts: allwinner: h616: OrangePi Zero 2: Add USB nodes
  arm64: dts: allwinner: h616: X96 Mate: Add USB nodes

 .../phy/allwinner,sun8i-h3-usb-phy.yaml       |  26 +++
 .../devicetree/bindings/usb/generic-ehci.yaml |   1 +
 .../devicetree/bindings/usb/generic-ohci.yaml |   1 +
 .../allwinner/sun50i-h616-orangepi-zero2.dts  |  41 +++++
 .../dts/allwinner/sun50i-h616-x96-mate.dts    |  25 +++
 .../arm64/boot/dts/allwinner/sun50i-h616.dtsi | 160 ++++++++++++++++++
 drivers/phy/allwinner/phy-sun4i-usb.c         |  71 ++++++++
 7 files changed, 325 insertions(+)

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
