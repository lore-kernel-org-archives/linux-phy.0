Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7C44C61DA4
	for <linux-phy@archiver.kernel.org>; Fri,  3 Feb 2023 09:59:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Hsubrz9SlS7ErMT4WWLKOb9PH4lpAuUIgxdOji1PWc=; b=TQH1K2VlN0Du5g
	mTka8AoNuqq+xxeEB3eFr5R6TS4uI47VZpACQnAgPj/oupcCFcLCRcXGWkTzkaEbJeNtSq5AYeRDY
	evXI9JDi6d9Gwe5ukTcd2ecO/etr/qAZ3j77MmRY0/z+zDiCi/v/O81bOXehOPq+BXAQu92tg6fdc
	CM35lhCZX7hBYBchFvRy3wvjnBJ7ww89vpj/lAoI4CnSecUOOfrDgSX6f0f814MNwiKvNnsYbXiXY
	oOvrJLOO22QO9/0XpD5weDVlF5vaTclGjbbSGqgmnERIrjDXh4DZ2Q85VCco/vW9IVtf/Izt1LBs/
	YA+KXvMfXyHzqY7MioBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNsqt-001HQv-9V; Fri, 03 Feb 2023 09:59:27 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNsqd-001HJX-RT; Fri, 03 Feb 2023 09:59:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id E210FCE2F9D;
	Fri,  3 Feb 2023 09:59:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B8FDC433EF;
	Fri,  3 Feb 2023 09:59:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675418342;
	bh=bsaJGpoQ3BowAWk0LACdzI62vcqdapO3RJNXwpE5yEA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h0ETe13YECCMtn9AWUX0nh4FVq4BJ3UctF9xsmAOpnMiWQxgaE70MpuMpH3R7s83h
	 8o/TZiFzxMnf00ZTJPjL9Ui7/P0QvRj01+dxcCQ+I8XGAwKufbUkga2u+usCVriXa4
	 01Y26kFxNoEXMLKRf07RdcwqtHtZzZU7oQUgDkIoSbtKNPu4GjeoGkcHloDAQXAWbO
	 d6zwta61uOEbhYsUgmtNMj+NGmwFbL08fZaCAhh6i2zRraN+i+PHM5yxzZgqMs89zl
	 38saQ9tCrvgyZKQNnkAeX4uIcD/xg/dsyHFgtw5dKIbzPe3J9r4upBwF1JgcpR2eGF
	 BovIGvGxEL2/A==
Date: Fri, 3 Feb 2023 15:28:57 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Jonathan Corbet <corbet@lwn.net>, Madalin Bucur <madalin.bucur@nxp.com>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Horatiu Vultur <horatiu.vultur@microchip.com>,
	UNGLinuxDriver@microchip.com,
	Thierry Reding <thierry.reding@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Russell King <linux@armlinux.org.uk>, linux-phy@lists.infradead.org,
	linux-doc@vger.kernel.org, netdev@vger.kernel.org,
	linux-tegra@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH treewide v2 0/9] phy: Add devm_of_phy_optional_get()
 helper
Message-ID: <Y9za4a8qyapi4CWD@matsya>
References: <cover.1674584626.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1674584626.git.geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_015912_297337_A6642FE6 
X-CRM114-Status: GOOD (  31.85  )
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

On 24-01-23, 19:37, Geert Uytterhoeven wrote:
> 	Hi Vinod et al,
> 
> While there exist several optional_get() PHY helper functions, there is
> no optional variant of devm_of_phy_get(), leading to several drivers
> implementing this theirselves, sometimes in buggy ways.
> 
> Hence this series, after two cleanup patches, introduces a
> devm_of_phy_optional_get() helper(), and converts existing users of
> devm_of_phy_get() where appropriate.

Applied and pushed to tag phy-devm_of_phy_optional_get

The following changes since commit 1b929c02afd37871d5afb9d498426f83432e71c2:

  Linux 6.2-rc1 (2022-12-25 13:41:39 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-devm_of_phy_optional_get

for you to fetch changes up to 41a435e30eb007ca2c8f71db734af6ec3509af4d:

  usb: host: ohci-exynos: Convert to devm_of_phy_optional_get() (2023-02-03 11:19:35 +0530)

----------------------------------------------------------------
Phy tag for new devm_of_phy_optional_get() API

----------------------------------------------------------------
Geert Uytterhoeven (8):
      phy: Remove unused phy_optional_get()
      doc: phy: Document devm_of_phy_get()
      phy: Add devm_of_phy_optional_get() helper
      net: fman: memac: Convert to devm_of_phy_optional_get()
      net: lan966x: Convert to devm_of_phy_optional_get()
      PCI: tegra: Convert to devm_of_phy_optional_get()
      usb: host: ehci-exynos: Convert to devm_of_phy_optional_get()
      usb: host: ohci-exynos: Convert to devm_of_phy_optional_get()

 Documentation/driver-api/phy/phy.rst                  | 24 ++++++++++++++----------
 drivers/net/ethernet/freescale/fman/fman_memac.c      |  9 ++++-----
 drivers/net/ethernet/microchip/lan966x/lan966x_main.c |  5 ++---
 drivers/pci/controller/pci-tegra.c                    |  5 +----
 drivers/phy/phy-core.c                                | 51 ++++++++++++++++++++++++++++++---------------------
 drivers/usb/host/ehci-exynos.c                        | 23 ++++++-----------------
 drivers/usb/host/ohci-exynos.c                        | 23 ++++++-----------------
 include/linux/phy/phy.h                               | 16 +++++++++-------
 8 files changed, 72 insertions(+), 84 deletions(-)


> Thanks!
> 
> > > --- a/drivers/net/ethernet/ti/am65-cpsw-nuss.c
> > > +++ b/drivers/net/ethernet/ti/am65-cpsw-nuss.c
> > > @@ -1460,11 +1460,9 @@ static int am65_cpsw_init_serdes_phy(struct device *dev, struct device_node *por
> > >       struct phy *phy;
> > >       int ret;
> > >
> > > -     phy = devm_of_phy_get(dev, port_np, name);
> > > -     if (PTR_ERR(phy) == -ENODEV)
> > > -             return 0;
> > > -     if (IS_ERR(phy))
> > > -             return PTR_ERR(phy);
> > > +     phy = devm_of_phy_optional_get(dev, port_np, name);
> > > +     if (IS_ERR_OR_NULL(phy))
> > > +             return PTR_ERR_OR_ZERO(phy);
> > >
> > >       /* Serdes PHY exists. Store it. */
> > >       port->slave.serdes_phy = phy;
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds


> 
> Changes compared to v1[1]:
>   - Incorporate "[PATCH v2 1/9] phy: Remove unused phy_optional_get()",
>     as it touches the same documentation,
>   - New patch "[PATCH v2 2/9] doc: phy: Document devm_of_phy_get()",
>   - Print an error message in case of failure, as requested by RobH,
>   - Update Documentation,
>   - Clarify removed checks for -ENODEV and -ENOSYS,
>   - Remove error printing in case of real failures from callers,
>   - Rebase am65-cpsw change on top of commit 854617f52ab42418 ("net:
>     ethernet: ti: am65-cpsw: Handle -EPROBE_DEFER for Serdes PHY") in
>     net-next (next-20230123 and later),
>   - Add Reviewed-by, Acked-by.
> 
> Most of this series been compile-tested only, but the new helper itself
> has been tested with a new user[2].
> 
> Thanks for your comments!
> 
> [1] "[PATCH treewide 0/7] phy: Add devm_of_phy_optional_get() helper"
>     https://lore.kernel.org/r/cover.1674036164.git.geert+renesas@glider.be
> [2] "[PATCH 12/12] can: rcar_canfd: Add transceiver support"
>     https://lore.kernel.org/r/e825b50a843ffe40e33f34e4d858c07c1b2ff259.1674499048.git.geert+renesas@glider.be
> 
> Geert Uytterhoeven (9):
>   phy: Remove unused phy_optional_get()
>   doc: phy: Document devm_of_phy_get()
>   phy: Add devm_of_phy_optional_get() helper
>   net: fman: memac: Convert to devm_of_phy_optional_get()
>   net: lan966x: Convert to devm_of_phy_optional_get()
>   net: ethernet: ti: am65-cpsw: Convert to devm_of_phy_optional_get()
>   PCI: tegra: Convert to devm_of_phy_optional_get()
>   usb: host: ehci-exynos: Convert to devm_of_phy_optional_get()
>   usb: host: ohci-exynos: Convert to devm_of_phy_optional_get()
> 
>  Documentation/driver-api/phy/phy.rst          | 24 +++++----
>  .../net/ethernet/freescale/fman/fman_memac.c  |  9 ++--
>  .../ethernet/microchip/lan966x/lan966x_main.c |  5 +-
>  drivers/net/ethernet/ti/am65-cpsw-nuss.c      |  8 ++-
>  drivers/pci/controller/pci-tegra.c            |  5 +-
>  drivers/phy/phy-core.c                        | 51 +++++++++++--------
>  drivers/usb/host/ehci-exynos.c                | 23 +++------
>  drivers/usb/host/ohci-exynos.c                | 23 +++------
>  include/linux/phy/phy.h                       | 16 +++---
>  9 files changed, 75 insertions(+), 89 deletions(-)
> 
> -- 
> 2.34.1
> 
> Gr{oetje,eeting}s,
> 
> 						Geert
> 
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
> 							    -- Linus Torvalds

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
