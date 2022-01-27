Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FD09C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 27 Jan 2022 05:27:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+dV65DABHQx4SOsSB+sCTJhh/pnAoUi8qXCbShxbwF0=; b=16aDoP7LlB8Rf3
	1yBb6RWrT2Be+uK9W3XTGKQbVjL0shYTh9Rxhj9/WXmqm9abU04hvpuRu2jADceDBwMn/cDsshoY6
	+pU39qrqmdXldL1oMo68SegBaoriM5u57qBc/M1XL/M5kcXeoB7lE5nN1u/M+FcOfhcdi8gdf6p2E
	b8jqW6xhwC0lOQLFNVHyc+J5057IPKtWURqncBWK3AY3/UVLHv7KSzAYaSqxoyS+rvb9dxu6KNBi7
	N+aUnNTfKg/z/yVqQRljj0zY/2YZoD2x4HuTRQ8CzqQl3MPxXc+Lp0vOQWo2Im0dUmjPPX5oonf9d
	lvKD/kwgWyesI6Y/7mdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCxJt-00EOer-Qb; Thu, 27 Jan 2022 05:27:41 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCxJr-00EOeX-CV
 for linux-phy@lists.infradead.org; Thu, 27 Jan 2022 05:27:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 17EC7B82025;
 Thu, 27 Jan 2022 05:27:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 057E0C340E4;
 Thu, 27 Jan 2022 05:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1643261254;
 bh=fTYpbel51UiOwkooMZZZehU/EQ0y4jCHNjSpqQhKvTY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IVeEQpJ9t838HPG2X8bMpO5fJtMd7ITEXQ06/UaUmfSYtXxvt3sESkos0+PleGHbI
 +N/3VudeueATlRGgjM0W3yDvE1mXPosZoW8AS3a90PtdPzDY8dVmu5THrByMPzSq0q
 fTyGJOIsGvoivxT+Kp1MhTiJW3vgGpe/vMxtcrBbbo4VxiPbs2SIB30CsTf/j909m9
 DqnyfrjRuqcKdUj562g+oIlk6iuH0baBffdxP/4gtUAw0nzyoRt24jk/b9a6rY4pwd
 qf8NpkjaLxkUFr2us5KuPIOUqiIAxDgHvrgNOKXzbhrcLV9wm9xoiuYnCNGLt8sAS0
 l3CWH/9pi2HkQ==
Date: Thu, 27 Jan 2022 10:57:30 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>
Cc: linux-phy@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>,
 pali@kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: [PATCH phy v3 0/5] Armada 3720 comphy native implementation
Message-ID: <YfItQmAizb8h9BqG@matsya>
References: <20220103143220.13070-1-kabel@kernel.org>
 <20220117155851.5759b337@thinkpad>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220117155851.5759b337@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_212739_747427_563F34DB 
X-CRM114-Status: GOOD (  25.85  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 17-01-22, 15:58, Marek Beh=FAn wrote:
> Dear Vinod,
> =

> did you find time to look at this series?

Pls do not top post!

This came in just before merge window, I dont pick patches during that
time. rc1 came this monday, so this is in queue...

> =

> Marek
> =

> On Mon,  3 Jan 2022 15:32:15 +0100
> Marek Beh=FAn <kabel@kernel.org> wrote:
> =

> > Hello Vinod,
> > =

> > this is v3 of series converting A3720 comphy to native kernel
> > implementation.
> > =

> > Tested on Turris MOX and ESPRESSObin (tested all supported PHY modes:
> > ethernet, PCIe, USB3, SATA).
> > =

> > Changes since v2:
> > - removed device-tree changing patch, Gregory applied it on mvebu/dt64
> > - changed raw spin lock to ordinary spin lock
> > - fixed indentation of gbe_phy_init_fix
> > - use FIELD_PREP() macro
> > =

> > Changes since v1 (all changes in patch 2/6):
> > - refactored to use GENMASK()
> > - fixed various register names to conform to Functional Specification
> > - refactored various register names to have uniform naming
> > - refactored register access into one function, which decides whether
> >   the access should be direct or indirect, so as to not have all these
> >   checks done everywhere in the code
> > - moved around one register definition to have the registers sorted
> >   according to their offset
> > - added comments to some register definitions
> > - added support for PHY reset() method
> > - when changing PHY mode, the driver now resets the PHY and its
> >   registers to put the PHY in known state
> > - fixed the power_off() method
> > - added spinlock guard when accessing PHY Selector register, since it
> >   is shared between the PHYs and so the PHY mutex is insufficient
> > - upon driver probe changed the calls to power_off() to reset()
> > =

> > =

> > The original cover letter said:
> > =

> > The RPC calling to ARM Trusted Firmware implementation of Armada 3720
> > comphy driver caused quite a number of issues (explained more in patch =
2).
> > =

> > This series fixes those issues by reimplementing the driver to native
> > kernel implementation.
> > =

> > The last 3 commits revert commits in AHCI, USB, and PCI drivers, that w=
ere
> > introduced there because of those issues.
> > =

> > Pali Roh=E1r (5):
> >   phy: marvell: phy-mvebu-a3700-comphy: Remove port from driver
> >     configuration
> >   phy: marvell: phy-mvebu-a3700-comphy: Add native kernel implementation
> >   Revert "ata: ahci: mvebu: Make SATA PHY optional for Armada 3720"
> >   Revert "usb: host: xhci: mvebu: make USB 3.0 PHY optional for Armada
> >     3720"
> >   Revert "PCI: aardvark: Fix initialization with old Marvell's Arm
> >     Trusted Firmware"
> > =

> >  drivers/ata/ahci.h                           |    2 -
> >  drivers/ata/ahci_mvebu.c                     |    2 +-
> >  drivers/ata/libahci_platform.c               |    2 +-
> >  drivers/pci/controller/pci-aardvark.c        |    4 +-
> >  drivers/phy/marvell/phy-mvebu-a3700-comphy.c | 1369 ++++++++++++++++--
> >  drivers/usb/host/xhci-mvebu.c                |   42 -
> >  drivers/usb/host/xhci-mvebu.h                |    6 -
> >  drivers/usb/host/xhci-plat.c                 |   20 +-
> >  drivers/usb/host/xhci-plat.h                 |    1 -
> >  9 files changed, 1245 insertions(+), 203 deletions(-)
> > =


-- =

~Vinod

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
