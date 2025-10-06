Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DEE1CAC5B8
	for <linux-phy@archiver.kernel.org>; Mon,  6 Oct 2025 16:31:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rt0mr5VlIAxb1A+wO0+OObSLVn1pSo+7IElHZFz2DWg=; b=d5dJId4NUkyV9u
	iVs98Jl5IG3ciiig0L4FOGx5e2ZMwAsDetqnocNOzYmM0k0i/MwFcKyVMJzjiQIPMjfeSFiV/oqN4
	eOui1FL4W0jg1u+Q4zBgFEkfzrOdaVYN6fmd3vHm6MNxXuHJ7hJUakbAL7kKj3wzFkDV8BHtY7JgU
	wCD15z7XKf4/9A/vRKVfxrWmcXK4RPNbJFiiJ5hL3iABXEq7uhE7TXx8hPkxqkb8uPfQOVRQbcftN
	v1KpwBXs5XmgJ39eKGytT7sBYKRHf+vBC4TaifWUlH1greBVsNXVL1In272qSFLq6uNbQpbC4W27z
	mX0lKGwO8EOF20zGEtrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5o7w-00000000PPQ-3ero;
	Mon, 06 Oct 2025 16:31:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5o7u-00000000PO6-1zS4
	for linux-phy@lists.infradead.org;
	Mon, 06 Oct 2025 16:31:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1v5o7h-0002Fu-8i; Mon, 06 Oct 2025 18:31:41 +0200
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1v5o7g-002GHH-0j;
	Mon, 06 Oct 2025 18:31:40 +0200
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1v5o7g-00000000DSK-0bId;
	Mon, 06 Oct 2025 18:31:40 +0200
Message-ID: <593eb851ae6ce0ec03ddeacf436180b6538fdd1e.camel@pengutronix.de>
Subject: Re: [PATCH 04/18] reset: rzv2h-usb2phy: Set VBENCTL register for
 OTG mode
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
Date: Mon, 06 Oct 2025 18:31:39 +0200
In-Reply-To: <20251001212709.579080-5-tommaso.merciai.xr@bp.renesas.com>
References: <20251001212709.579080-1-tommaso.merciai.xr@bp.renesas.com>
	 <20251001212709.579080-5-tommaso.merciai.xr@bp.renesas.com>
User-Agent: Evolution 3.56.1-1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_093154_508237_9502586D 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
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

On Mi, 2025-10-01 at 23:26 +0200, Tommaso Merciai wrote:
> Add logic to set the VBENCTL register when the USB controller operates in
> OTG mode. This is required to ensure proper USB transceiver behavior when
> the device is configured as OTG.
> 
> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>

I had reservations about this driver before, because of the opaque
register initialization sequence, and I was told that no, this is a
reset driver alright [1].

Can you please try to find a proper abstraction for this, because
drivers/reset is not the correct place for USB OTG mode handling.

[1] https://lore.kernel.org/all/TYCPR01MB12093DB963348A8FD58409E5AC2DE2@TYCPR01MB12093.jpnprd01.prod.outlook.com/


regards
Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
