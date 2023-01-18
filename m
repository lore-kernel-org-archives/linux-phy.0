Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D082C004D4
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 10:16:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9FWDpM/UpYFmp2SiBgMcT6qBSBB6PwAoW0xRdUhmXQY=; b=t8nkvs2B1yCHtp
	AiiLqZCO0h/2rhvjI5aTzx4Zkm1oCgx/arPVIo6fAQvcmYA6jfXS9xWM6Nnchu/DwYM6B9AcalMnt
	ZGitM7GE3aB4QdWqVF8VSpvBOWepK30KLr2g1XxIBfusoEnqgQHHyLfYrh4oHyR+aqDFwl7blbbOi
	TrjTwGzL/0E2jYfOPoe8piZ17GVj6igchfDlaHQspkTAVIaeeUV3gLcxpSkVxnqNPL+CVgI3B7bT/
	I+cxjqWTwnmaCz/QGvy6PcIDs2RuQqFt5tWmaWCIUHEmXDib2eT2dP0RAkQd9H0PQgoJluEslrmkf
	8Nl+Xlu6ScECm/4hZnFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI5UU-000Iqz-Fe; Wed, 18 Jan 2023 10:16:22 +0000
Received: from xavier.telenet-ops.be ([2a02:1800:120:4::f00:14])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI5U0-000IfC-Au
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 10:15:55 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed50:4745:2e6d:e3a6:3327])
	by xavier.telenet-ops.be with bizsmtp
	id AAFN290042zf9gW01AFNxL; Wed, 18 Jan 2023 11:15:42 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1pI5TQ-005aIN-M1;
	Wed, 18 Jan 2023 11:15:22 +0100
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1pI5TV-001JVg-Uw;
	Wed, 18 Jan 2023 11:15:21 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Madalin Bucur <madalin.bucur@nxp.com>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Horatiu Vultur <horatiu.vultur@microchip.com>,
	UNGLinuxDriver@microchip.com,
	Thierry Reding <thierry.reding@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Russell King <linux@armlinux.org.uk>
Cc: netdev@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH treewide 0/7] phy: Add devm_of_phy_optional_get() helper
Date: Wed, 18 Jan 2023 11:15:13 +0100
Message-Id: <cover.1674036164.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_021552_601781_20944CDF 
X-CRM114-Status: GOOD (  15.64  )
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

	Hi all,

While there exist several optional_get() PHY helper functions, there is
no optional variant of devm_of_phy_get(), leading to several drivers
implementing this theirselves, sometimes in buggy ways.

Hence this series introduces a devm_of_phy_optional_get() helper(), and
converts existing users of devm_of_phy_get() where appropriate.

This series been compile-tested only, but the new helper itself has been
tested with a new user I am about to submit.

Thanks for your comments!

Geert Uytterhoeven (7):
  phy: Add devm_of_phy_optional_get() helper
  net: fman: memac: Convert to devm_of_phy_optional_get()
  net: lan966x: Convert to devm_of_phy_optional_get()
  net: ethernet: ti: am65-cpsw: Convert to devm_of_phy_optional_get()
  PCI: tegra: Convert to devm_of_phy_optional_get()
  usb: host: ehci-exynos: Convert to devm_of_phy_optional_get()
  usb: host: ohci-exynos: Convert to devm_of_phy_optional_get()

 .../net/ethernet/freescale/fman/fman_memac.c  |  8 +++---
 .../ethernet/microchip/lan966x/lan966x_main.c |  5 ++--
 drivers/net/ethernet/ti/am65-cpsw-nuss.c      |  6 ++---
 drivers/pci/controller/pci-tegra.c            |  5 +---
 drivers/phy/phy-core.c                        | 26 +++++++++++++++++++
 drivers/usb/host/ehci-exynos.c                | 24 +++++------------
 drivers/usb/host/ohci-exynos.c                | 24 +++++------------
 include/linux/phy/phy.h                       |  9 ++++++
 8 files changed, 59 insertions(+), 48 deletions(-)

-- 
2.34.1

Gr{oetje,eeting}s,

						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
							    -- Linus Torvalds

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
