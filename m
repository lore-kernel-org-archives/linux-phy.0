Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0693910F284C
	for <linux-phy@archiver.kernel.org>; Fri, 27 Mar 2026 16:07:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wKRekFqwQNlGhJgClQ+2TOrNL6e4BXjiPQp4wldTpmU=; b=IrVkzcSIyLUUHV
	eSnZZ6qoH3Taj89nab5yqM0QCxK/2kpceHMSZezU8iEBL6Nd7vX4F5enWZdWyfGYrUYaMeujN7THO
	N0RzwTxd6qD+XNap0S5itijVqJvtokvtuPqsCtJjvqZAJcspy8JV13v/KA7n03zy5A+z0IfqT87Os
	WVa4WmNh4ljDkA9p19f9FzMeA1cYKIkvCAR/8K1gxVw3AXx8/SN+lZqMs38TVRSlj4gko6+JfGJ+k
	Y/vHbMMpi/RS2KlQfuPsezgnEjgTo6/rcRhLGQa1/I1pVI38ovyDzXZk05dMRgQDKJ/ztfaWQmEdU
	4BlA3SJ8gaHltUl0GOCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w69iR-00000007jtq-36S6;
	Fri, 27 Mar 2026 16:07:19 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w69iO-00000007jt6-0vn5
	for linux-phy@lists.infradead.org;
	Fri, 27 Mar 2026 16:07:18 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 494DF266E7;
	Fri, 27 Mar 2026 17:07:13 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2u7hCyCmTeIq; Fri, 27 Mar 2026 17:07:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1774627632; bh=jC+qjtyvOKNhOkXqAUVF9LEdYKJqioeMUZsW91IPHSc=;
	h=From:To:Cc:Subject:Date;
	b=aaXw1kpB3wepjnrovKFK3BIXcuXFMNrSeK6py4vWiO3JfNDxv9ixj4B8oy8YWLLew
	 Vgoo7Y1tjPBJwAnyh+XuKwr4cZyTsF+zX8UZ1U86mxcXqvwQrxZ7wZ4C0NZro9Jy4q
	 vMehVNSHtBtp500fLH6TK1KF8eZtVECZdOO5PVJGzD7HAXGtgT20dczXcJmS/luf9e
	 2S9z4HOSlgwz8oKq282JYym8ZBb16x0GgIk3FqzZJlA4JMFHoghVa7sIOsTBRMCnNX
	 pSw2gSOnC4c76DQ6w+9qHPmTZEpuoMDHinaQNOAXQBqs11Q9IJHW0s7iRx92nmVH4g
	 6edXVoGBxWI0A==
From: Rustam Adilov <adilov@disroot.org>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stanley Chang <stanley_chang@realtek.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Rustam Adilov <adilov@disroot.org>
Subject: [PATCH v2 0/6] phy: realtek: usb2: support for RTL9607C USB2 PHY
Date: Fri, 27 Mar 2026 21:06:32 +0500
Message-ID: <20260327160638.15134-1-adilov@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260327_090716_691136_18F1B59B 
X-CRM114-Status: GOOD (  10.37  )
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

[1] - https://github.com/jameywine/GPL-for-GP3000/blob/main/linux-5.10.x/arch/mips/rtl9607c/usb.c

---
Changelog in v2:
- Patch 5
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
  phy: realtek: usb2: Make configs available for MACH_REALTEK_RTL

 .../bindings/phy/realtek,usb2phy.yaml         |  25 ++-
 drivers/phy/realtek/Kconfig                   |   2 +-
 drivers/phy/realtek/phy-rtk-usb2.c            | 189 ++++++++++++++++--
 3 files changed, 196 insertions(+), 20 deletions(-)

-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
