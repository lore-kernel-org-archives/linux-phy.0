Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AA93CD4F3D
	for <linux-phy@archiver.kernel.org>; Wed, 20 May 2026 17:58:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AmvGEezwIZyKinA3Wz9K1rksVr3GW5oNC80liH5BSIo=; b=3TO7pQAOukyYek
	GocTqg/JN46X3rctIctWuYnBSX9V82aggjzCy4BQBq0GeYqoBtJAV0dGJFTKPlAQcqn0bK5z7FgjN
	FFappmrrs1YazKBL/bGd+lN/+BGc7AX0qCdYdAanYieA7ecui9qCdamzuzFESTOcRdwNMCSKsViOZ
	iJZcxkQ5ZvfJxVW5Ldafv/FulL5GQTWUfvz2keq+zCl2p1N3tF7gAh8E7M4QRV2h8I6CEmpQT859i
	Efrr3dg0nZ3r0ASiE8YSYyMIQwIrKRGU+ZkLLvB4WaKAqYjYVVf/WMBVIID4QmJua0XLXpkwOgCnJ
	ehGMcdf9UK3Hbq8lWhGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPlBK-00000005Nay-3DJf;
	Wed, 20 May 2026 17:58:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPlBJ-00000005Naa-1tbC
	for linux-phy@bombadil.infradead.org;
	Wed, 20 May 2026 17:58:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=zfMVTOjlatgB798QzYG6HySltKyKQKv67NKh8zresE4=; b=Wqfq4NtyQ8vd7Z/sOdJ9bZSgZr
	9lzcTQfNZsIU1WxLo4ljfFltUF61H+TqcjoNKN9SXUjLdfkFNnlkbLShMmHHxdbYrdTdS97My8XIL
	jlA8/c8BD1xZMJLBSzUR/Rrs3N9Fw7ivsRCheBPCkNKa3Df208GdI24Zk6vybcLq2gMaNaQnk4yR9
	tftDDDJ2f6A2gsVaZsWBjF6tHfvFqDIz/GFzeSt6MhIW9MuetupefFIGIGD7dOCyHIksXpz/M6Jtb
	flboZh7H6MgbgahtRDvslPzSFiwSpJ9hFeiPbya3AiQBUQr6+lTNB79W56y2xaw4fDax/ZiKzCmzy
	ePDLuz2Q==;
Received: from layka.disroot.org ([178.21.23.139])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPlBF-0000000HYRQ-19iV
	for linux-phy@lists.infradead.org;
	Wed, 20 May 2026 17:58:07 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 739D8275C1;
	Wed, 20 May 2026 19:58:02 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A--ynDofJVxY; Wed, 20 May 2026 19:58:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1779299881; bh=2NkRc386fV0Tgt0p2m70A2/Us9y0xHQS2xgqPJg5ZGo=;
	h=From:To:Cc:Subject:Date;
	b=NqNpUJx0xMWpt1b+Vz1gM2M3iqjOih+wqzH1Pyicrwx7+WwcYrTTxU5M5hDOt3aIm
	 SEmdvG41TZ1sKK/5AIEHPr6Ez/GJesa2362tvxiStbvz+DnjPaV3t+QC/ofxFPcoQ4
	 WxeqpEF1Qu3xCv2IMYehP3v+h4/cbc+VJSZBohVfryCfOXYjRhgTi6xV3P0Fg/FKwD
	 XspOzd3CKlDaSsOV9Og0DpigDwGfohi5HGgYgiD8yGH89E8Aei9Zr3SyyucExJK7bg
	 RF24Y5vPa1YfPKExWeRYvW6qo1gKmLvebdk8CcP/rckg9N5k56w5eyjZ4V9ODjmBlK
	 Zc1DUv7t8lktg==
From: Rustam Adilov <adilov@disroot.org>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stanley Chang <stanley_chang@realtek.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Rustam Adilov <adilov@disroot.org>
Subject: [PATCH v6 0/6] phy: realtek: usb2: support for RTL9607C USB2 PHY
Date: Wed, 20 May 2026 22:57:22 +0500
Message-ID: <20260520175728.720877-1-adilov@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_185805_866315_5A08806B 
X-CRM114-Status: GOOD (  16.98  )
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

This patch series for Realtek USB2 PHY driver adds support for RTL9607C
USB2 PHY.

RTL9607C is a big endian MIPS CPU which is quite far from RTD series SoCs
supported by realtek usb2 phy driver, but the phy initilization is found
to be very indentical in most areas.

Most of the code was based on the Realtek's usb driver from the GPL tarball
in [1] and adjusted to fit into the realtek usb2 phy driver code format.

The patch series was split into smaller patches that add/change something
in the driver that are not exactly related to RTL9607C and that also
helps for easier review. That also means, patch 5 depends on all the prior
patches that come before it.

USB2 PHY on RTL9607C is primarly used for its internal OHCI/EHCI controllers.

Tested on my RTL9607C based machine as a backport to 6.18 linux in OpenWrt.

[1] - https://github.com/jameywine/GPL-for-GP3000/blob/main/linux-5.10.x/arch/mips/rtl9607c/usb.c

---
Changelog in v6:
Driver has been refactored with enabled SWAP_IO_SPACE config in mind.
- Patch 1
 - fixed one line exceeding 80 columns.
- Patch 2
 - changed to use the introduced read/write functions for reg_wrap_vstatus
   instead of reg_gusb2phyacc0.
- Patch 3
 - properly added the review tag from v4 of patch series.
- Patch 5
 - fixed the lines exceeding 80 columns.
 - changed msleep(10) to usleep_range(10000, 11000).
 - changed the read and write functions to use ioread32be instead of __le32 
   now that we are using them for reg_wrap_vstatus.
- Link to v5: https://lore.kernel.org/linux-phy/20260420191941.81834-1-adilov@disroot.org/

Changelog in v5:
Mostly addressing LLM review
- Patch 1
 - changed int to u32 type for new_reg_req and vstatus_busy data fields.
 - changed comments in rtk_phy_read/write from PHY_NEW_REG_REQ to phy_reg->new_reg_req.
- Patch 2
 - explained readl/writel native endianess issue in more detail.
 - explained why vstatus register doesn't need byte swapping.
- Patch 4
 - moved reset_control_deassert to rtk_phy_init function to keep it outside of for loop.
 - changed msleep(5) to usleep_range(5000, 6000).
 - explained why reset_control_assert is not needed.
- Patch 5
 - explained readl/writel native endianess issue here as well.
 - explained why FORCE_DISCONNECT_REG doesn't need byte swapping.
- Link to v4: https://lore.kernel.org/linux-phy/20260406181228.25892-1-adilov@disroot.org/

Changelog in v4:
- Patch 2
 - moved the le variations of read/write functions to Patch 5 where it is actually used because
   otherwise, it results in unused errors when only Patch 2 is applied.
 - updated the commit message to to point the reason for le32 wrappers around readl/writel.
- Patch 3
 - added "Reviewed by Krzysztof Kozlowski"
- Patch 5
 - updated the commit message to include the addition of little endian read/write functions from
   Patch 2.
- Link to v3: https://lore.kernel.org/linux-phy/20260402154414.196012-1-adilov@disroot.org/

Changelog in v3:
- Patch 2
 - renamed phy read and functions to "rtk_usb2phy" to not collide with networking API functions
 - fixed the sparse warnings by creating intermidiate "tmp" variable and then pass it to writel
 - sligtly adjusted commit message to instead use "default read" not "default phy_read"
- Patch 4
 - added the check for reset_control_deassert() just in case
 - changed mdelay(5) to msleep(5)
 - changed dev_err and return combo with one dev_err_probe for phy_rst
- Patch 5
 - changed mdelay(10) under force_host_disconnect to msleep(10)
 - removed struct fields with false like force_host_disconnect and more in rtl9607_phy_cfg
- Patch 6
 - updated the #endif commend to now include MACH_REALTEK_RTL to reflect if on top
- Link to v2: https://lore.kernel.org/linux-phy/20260327160638.15134-1-adilov@disroot.org/

Changelog in v2:
- Patch 3
 - removed the line about OHCI/EHCI controllers from description.
 - set the resets to false for RTD SoC devices and changed the
   commit message to reflect that.
- Link to v1: https://lore.kernel.org/linux-phy/20260326193419.48419-1-adilov@disroot.org/

Rustam Adilov (6):
  phy: realtek: usb2: introduce vstatus/new_reg_req variables to driver
    data
  phy: realtek: usb2: introduce read and write functions to driver data
  dt-bindings: phy: realtek,usb2phy.yaml: extend for resets and RTL9607C
    support
  phy: realtek: usb2: introduce reset controller struct
  phy: realtek: usb2: add support for RTL9607C USB2 PHY
  phy: realtek: Make configs available for MACH_REALTEK_RTL

 .../bindings/phy/realtek,usb2phy.yaml         |  25 ++-
 drivers/phy/realtek/Kconfig                   |   4 +-
 drivers/phy/realtek/phy-rtk-usb2.c            | 178 ++++++++++++++++--
 3 files changed, 189 insertions(+), 18 deletions(-)

-- 
2.54.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
