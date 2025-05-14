Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19B8CC3DA4A
	for <linux-phy@archiver.kernel.org>; Wed, 14 May 2025 13:53:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FfF8AEpgOOfp4mpa9+7amwVkC4nSbWEOctqzdGuSvtE=; b=CJaQACLFj7hUOl
	CzXDV/sDI1fg6YbKifewEsKWavmzI7o+v1aQiJzggxSROuJQojkwWRyhnNJ+YinqtNjgP6QKT7/sO
	XSpUNcfJFhL+I0OmlpRg54HYXt2v+WK4CE8KT1VuW2I5EbGcukqdk7idx0oze2yjcrBH0fbz28l66
	nGJwiBrzpFBZLNxWGdeD+klK4DKtfdmI9vdoR0q7R7W5tLmf8ZCTl2/iIERf4T0laSyOfJWyLtRPa
	SzIgOOyuOnSf+rg8+iXfP+Cc4XS8xz+dGf2MCVLIFLjqMC35XMmsDk9NCODY0I2bpV5QGoV9h4ap+
	vFiMFzgz+F+x3ApV7m2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFCYR-0000000FI7B-2GPi;
	Wed, 14 May 2025 13:53:51 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFAL3-0000000Eu03-31HL
	for linux-phy@lists.infradead.org;
	Wed, 14 May 2025 11:31:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6E30A434A2;
	Wed, 14 May 2025 11:31:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25422C4CEF0;
	Wed, 14 May 2025 11:31:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747222313;
	bh=gxyZSrmBDmqX32YqUTwl2p4jw1lJWQ4gQiNsJnaveRw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=p0JCzueKZiWVU9x5plR+Ot+TmLrStNZOlN9S/m9Q9M/3bmw0sS32GdWCEFAEgSROH
	 kCMJuZyTEef5L7ABdau0wQQm0ZBxtPoZrINmik+1VW5SKpzYLHcZZb5prmZErMJnX5
	 j+TfVsVnh8MY75y3nBVIWQ6miHJMu1qI2fyNX3o1XJDee1RmLJnTXRSUqyhtvBeGHq
	 kE/Xe50tCq4DT/vFtK0YIeRG/gwgXdLatXEqzs97ffsSTAIC390T+bVTaI1yALHaba
	 5dgmuWOFWoMdFyAj6W98B49/osm+iA/vHXhxwByEDTndRJjsBEGN2iwzEa2WF7dSft
	 RqOuBbTD4CEhA==
From: Vinod Koul <vkoul@kernel.org>
To: yoshihiro.shimoda.uh@renesas.com, kishon@kernel.org, 
 geert+renesas@glider.be, magnus.damm@gmail.com, horms+renesas@verge.net.au, 
 fabrizio.castro@bp.renesas.com, Claudiu <claudiu.beznea@tuxon.dev>
Cc: linux-renesas-soc@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20250507125032.565017-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250507125032.565017-1-claudiu.beznea.uj@bp.renesas.com>
Subject: Re: [PATCH RESEND v3 0/5] phy: renesas: rcar-gen3-usb2: Fixes for
 Renesas RZ/G3S
Message-Id: <174722231081.74407.5340697321228432140.b4-ty@kernel.org>
Date: Wed, 14 May 2025 12:31:50 +0100
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250514_043153_783610_F3E94DA4 
X-CRM114-Status: UNSURE (   6.39  )
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


On Wed, 07 May 2025 15:50:27 +0300, Claudiu wrote:
> Series add fixes for the Renesas USB2 PHY driver identified while
> working on the Renesas RZ/G3S USB support. These changes are
> needed for the upcomming RZ/G3S USB support (especially for the
> power management support).
> 
> Series (with [1] on top) was tested on Renesas RZ/G3S with consecutive
> unbind/bind and data transfer tests before/after the unbind/bind.
> 
> [...]

Applied, thanks!

[1/5] phy: renesas: rcar-gen3-usb2: Fix role detection on unbind/bind
      commit: 54c4c58713aaff76c2422ff5750e557ab3b100d7
[2/5] phy: renesas: rcar-gen3-usb2: Move IRQ request in probe
      commit: de76809f60cc938d3580bbbd5b04b7d12af6ce3a
[3/5] phy: renesas: rcar-gen3-usb2: Lock around hardware registers and driver data
      commit: 55a387ebb9219cbe4edfa8ba9996ccb0e7ad4932
[4/5] phy: renesas: rcar-gen3-usb2: Assert PLL reset on PHY power off
      commit: 9ce71e85b29eb63e48e294479742e670513f03a0
[5/5] phy: renesas: rcar-gen3-usb2: Set timing registers only once
      commit: 86e70849f4b2b4597ac9f7c7931f2a363774be25

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
