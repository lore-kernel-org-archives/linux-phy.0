Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90B13CAC5B8
	for <linux-phy@archiver.kernel.org>; Mon,  6 Oct 2025 16:21:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QMCof1gsCFWc4FL+ZoQscPpR5mij+UvAWm1pMPbzDI8=; b=1xj2/OBdcYGz7B
	TvePm3HeLjLN1V9+bDbaBkHKlp2UsqCCPcJRNbbe1OSrrqbCcH1aVQM7i3escwKVT+xs/P6mQidMB
	Cvu7i1WR4ErMzG/PXMaVCbwLIRplp+uelxtP1/AApsh7lCU6M9e44RZjWxFvcoiu/hXcV81je5DQA
	/fmf5TUdXgfGAT021IM0NFYFdXd7g12Ge500oTA6EIcWTy1qi9g7pjyNBhDD8DydH7rRcrjEEAW3C
	LgW8x76VFu8NBfXK9HwTPuWnRlW2yr1Oy4riAKYvPy2ivtj41zCVnGc0uIvTCh7a5+XEfknPFPj31
	1D8cfDz7wKbbFlS+3nWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5ny4-00000000NBp-16eL;
	Mon, 06 Oct 2025 16:21:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5ny1-00000000N9q-2IMP
	for linux-phy@lists.infradead.org;
	Mon, 06 Oct 2025 16:21:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1v5nxm-0000oi-Ef; Mon, 06 Oct 2025 18:21:26 +0200
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1v5nxl-002GFW-1G;
	Mon, 06 Oct 2025 18:21:25 +0200
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1v5nxl-00000000DI2-1Hhd;
	Mon, 06 Oct 2025 18:21:25 +0200
Message-ID: <c3e1e3da577de1370e7604560f0b42c0fcb7db44.camel@pengutronix.de>
Subject: Re: [PATCH 03/18] reset: rzv2h-usb2phy: Simplify pm_runtime driver
 handling
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>, 
	tomm.merciai@gmail.com
Cc: linux-renesas-soc@vger.kernel.org, biju.das.jz@bp.renesas.com, Yoshihiro
 Shimoda <yoshihiro.shimoda.uh@renesas.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I	 <kishon@kernel.org>, Geert Uytterhoeven
 <geert+renesas@glider.be>, Magnus Damm	 <magnus.damm@gmail.com>, Fabrizio
 Castro <fabrizio.castro.jz@renesas.com>,  Lad Prabhakar
 <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Date: Mon, 06 Oct 2025 18:21:25 +0200
In-Reply-To: <20251001212709.579080-4-tommaso.merciai.xr@bp.renesas.com>
References: <20251001212709.579080-1-tommaso.merciai.xr@bp.renesas.com>
	 <20251001212709.579080-4-tommaso.merciai.xr@bp.renesas.com>
User-Agent: Evolution 3.56.1-1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_092141_591773_3DBADA51 
X-CRM114-Status: GOOD (  11.06  )
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

Hi Tommaso,

On Mi, 2025-10-01 at 23:26 +0200, Tommaso Merciai wrote:
> Remove redundant pm_runtime_resume_and_get() and pm_runtime_put() calls
> from the reset assert, deassert, and status paths.

These calls are only made redundant by this patch.

> These paths do not require runtime PM handling, as power management is
> already taken care of during probe and remove.

Only since you removed the pm_runtime_put() in
rzv2h_usb2phy_reset_probe(). It feels like the important part of this
patch is actually the side note:

> Additionally, the IP is active only when its clock is enabled.
> Previously, the clock was being turned off immediately after register
> configuration, which is incorrect. The code may have appeared to work
> if another module had incremented the clock usage count, but this
> behavior is unreliable.

So this is a reliability fix first and foremost?
The IP must be active to reliably keep reset lines at the configured
level?

If so, please make this clear in the commit subject and description.

regards
Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
