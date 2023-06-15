Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7894CEB64DA
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jun 2023 17:10:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jSDueD0tkxeH4OyF/mNOEWpOFGDnm2ITXAihj0SLmbQ=; b=Z/lkOCVEjN+tLu
	Vz0lkmY0r4UO4QAx0YfL1WkpjPodGPAsjfmcFpEM8IHPZFgItQEjXr9FjxXrZwUEFnGY9pNByxakI
	nzLwCGFWnO66zAfP9wVtFenZwQ8HCUCbYQ1+n/zdwb3D++o2LNlcmVO/8Uy0YktX6EpvXst6HriV1
	NuMNLIC6bqFd+55DpzHBEcHOORp2EghXNbLij0AaUAw/h5Hjf1HZRaf/Fg5nAfH/6WZ+69Nboa1LB
	xY/XtKqwxAzREATxI6DXMZwbbUXT38G6xI8CcIf+R9EhfD1Xz4Voz8ihK4TVMRTbNgjbl/bSpm4k3
	YZmYVlAncNzqim9XGPdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9qUJ-00FXD9-0O;
	Thu, 15 Jun 2023 17:10:23 +0000
Received: from s.wrqvtbkv.outbound-mail.sendgrid.net ([149.72.123.24])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9qUF-00FXAM-27
	for linux-phy@lists.infradead.org;
	Thu, 15 Jun 2023 17:10:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=from:subject:mime-version:to:cc:content-transfer-encoding:
	content-type:cc:content-type:from:subject:to;
	s=s1; bh=/iMiHruchMZdH7EbKaXXVbEUNCDq8w9JXi9nEY/WsG0=;
	b=rO8/HnoE9YtWXVLmjXww+B4Qqmh2HHf+JnA+/rg1e9HzBFSKZgm2cRhwyyfazuNoVUPn
	lmPBmV28a01qMJEC2UaPnponVCxXOghiGItj+76wIWtPsVSTP8lT+CyzIaNa7LfN0obOnQ
	c5P6T5HViCabUuQQTnskaK/oVfH74EhBi5RUfzzEDu8LQUA9YrRP3ElfEyUijPZ/wW8u1U
	KC5W0RT+rlR5pK4OY6Mo30Q73x1IRAtIpq4gqTrqNYwy8Y4GSrRVgsNSvbSYMdLHI4UoNg
	Igc0NezKG+mcM0a3IFcbUFWcmBWgCKg3+ehe9bjaZWrsCzYJJzYJdTehv8HSteqQ==
Received: by filterdrecv-77869f68cc-l7kjz with SMTP id filterdrecv-77869f68cc-l7kjz-1-648B45F7-28
        2023-06-15 17:10:15.543950118 +0000 UTC m=+3087258.628411507
Received: from bionic.localdomain (unknown)
	by geopod-ismtpd-2 (SG)
	with ESMTP
	id nGTvoAPVSCO8vRsd_RsRfg
	Thu, 15 Jun 2023 17:10:15.220 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v4 0/6] Support more HDMI modes on RK3228/RK3328
Date: Thu, 15 Jun 2023 17:10:15 +0000 (UTC)
Message-Id: <20230615171005.2251032-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h1XOkue=2FcxLltwil4?=
 =?us-ascii?Q?k2y4aiZwCJ7=2FvKmD3jebfAfZdtNcM7nB2rsB1rs?=
 =?us-ascii?Q?W2x6dmGJ+tvdv5r2Scmow9SIkrsu9+6hOucs81d?=
 =?us-ascii?Q?1NkWqYPqs7UBSMix8KvsYYHcGfBoy2R7RP0Qg04?=
 =?us-ascii?Q?z5=2FFGoiuS=2Fk6Zc2QPaz+EcewvTU2L6baDiAas9?=
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Alex Bee <knaerzche@gmail.com>, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_101019_768712_F85D354D 
X-CRM114-Status: GOOD (  11.37  )
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

This is a revival of a 3+ year old series that never got picked up,
it contains fixes and adds support for more HDMI modes on RK3228/RK3328.

This v4 series contains the original v2/v3 patches targeting the inno
hdmi phy driver, the last patch that adds support for more HDMI modes
has been replaced with a new patch from Alex Bee.

Part of this has been reworked from vendor BSP 4.4 kernel commits.

Patch 1-5 fixes issues and shortcomings in the inno hdmi phy driver.

Patch 6 adds support for more pixel clock rates in order to support
common DMT modes in addition to CEA modes.

These patches has been in use by LibreELEC and other distros for the
past 3+ years, hoping they can be merged this time around :-)

Changes i v4:
- replace last patch

Changes in v3:
- split series
- drop drm and device tree changes

Changes in v2:
- collect acked-by tag
- drop the limit resolution width to 3840 patch

This series is also available at [1].

[1] https://github.com/Kwiboo/linux-rockchip/commits/next-20230615-inno-hdmi-phy

Regards,
Jonas

Alex Bee (1):
  phy/rockchip: inno-hdmi: add more supported pre-pll rates

Huicong Xu (1):
  phy/rockchip: inno-hdmi: force set_rate on power_on

Jonas Karlman (3):
  phy/rockchip: inno-hdmi: use correct vco_div_5 macro on rk3328
  phy/rockchip: inno-hdmi: remove unused no_c from rk3328 recalc_rate
  phy/rockchip: inno-hdmi: do not power on rk3328 post pll on reg write

Zheng Yang (1):
  phy/rockchip: inno-hdmi: round fractal pixclock in rk3328 recalc_rate

 drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 234 +++++++++++++++---
 1 file changed, 198 insertions(+), 36 deletions(-)

-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
