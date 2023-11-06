Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02052C4167D
	for <linux-phy@archiver.kernel.org>; Tue,  7 Nov 2023 07:01:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yk4DkpbZt9T2TdCg8JEgNgM/tpMkxMoQTrS4poK/p8g=; b=N2isoiJESkMNHm
	Y6ptfQSOHx/v7Rl6C0GtoBDTgckOJENPBXqqiHJoY1EFRQcF9ekXX0VVwmBDyUJb0UJpRRzeh41DK
	z8Ske++ZVCjUQgEuqUeqZC17AdS2lbM2MMsZ63fP0ol+5pLOQqhUc3vUM9nNcedK74W6xjqbWSWQq
	0rosu0ooakUa0TRloYZAuYnsN5Nhb6HGrn7x//64qGNia+gu0aXeBl0O4HN88fNVkDQUJyNp9N8ih
	ikSNdFv8TOgrmsMpJx2POFKNUO5TnQSPcqiXwbj/eObVqeTH2E92cRZO8p7GLJpyADN0UmTbavnP9
	q6ABpzj17/X82dSK7y4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0G5T-000gAk-2I;
	Tue, 07 Nov 2023 07:01:23 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0G5R-000gA6-0K
	for linux-phy@lists.infradead.org;
	Tue, 07 Nov 2023 07:01:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 89F4B600BE;
	Tue,  7 Nov 2023 07:01:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0F91C433C7;
	Tue,  7 Nov 2023 07:01:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1699340480;
	bh=PwZNo4H0+xJc5t0ME1zU4siHPtjo0n0x/hgKoJJp1Wg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bvO/Z76czVdugwXRRrUFDNfBthP/D12rTYBLpKCN+UGrmf+R9/mGKKmmUbRXr8hSw
	 e/REna7XTvcgMxQnjIiAyL/boIYfNbHSVH3EaVydchap1uEDHzUlYdXqML8gSasN2z
	 8Fa1rtL5eBYNPnr85IdktQc1KkR1ZXojJhdrKo/c=
Date: Mon, 6 Nov 2023 14:48:48 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Stanley Chang <stanley_chang@realtek.com>,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org
Subject: Re: [PATCH 0/3] Revert "usb: phy: add usb phy notify port status API"
Message-ID: <2023110636-illusive-widow-8c95@gregkh>
References: <20231106110654.31090-1-johan+linaro@kernel.org>
 <2023110623-pointing-stump-643d@gregkh>
 <ZUjNLj-sKBogTKcd@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZUjNLj-sKBogTKcd@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231106_230121_181761_4C786D47 
X-CRM114-Status: GOOD (  23.55  )
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

On Mon, Nov 06, 2023 at 12:25:34PM +0100, Johan Hovold wrote:
> On Mon, Nov 06, 2023 at 12:15:59PM +0100, Greg Kroah-Hartman wrote:
> > On Mon, Nov 06, 2023 at 12:06:51PM +0100, Johan Hovold wrote:
> > > The recently added Realtek PHY drivers depend on the new port status
> > > notification mechanism which was built on the deprecated USB PHY
> > > implementation and devicetree binding.
> > > 
> > > Specifically, using these PHYs would require describing the very same
> > > PHY using both the generic "phy" property and the deprecated "usb-phy"
> > > property which is clearly wrong.
> > > 
> > > We should not be building new functionality on top of the legacy USB PHY
> > > implementation even if it is currently stuck in some kind of
> > > transitional limbo.
> > > 
> > > Revert the new Realtek PHY drivers for now so that the port status
> > > notification interface can be reverted and replaced before we dig
> > > ourselves into an even deeper hole with this PHY mess.
> > > 
> > > Note that there are no upstream users of these PHYs and the drivers were
> > > only included in 6.6 so there should still be time to undo this.
> > 
> > No users of these phy drivers yet?  Why were they added?
> 
> The devicetree bindings were also merged in 6.6 (and are left in place),
> but there are no devicetrees that actually use these new bindings in
> mainline yet.
> 
> > > Preferably these should go in through Greg's tree for 6.7-rc1.
> > 
> > I'll be glad to take this if I can get an ack for it.
> 
> They went in through your tree, but note that you may now get a conflict
> with 
> 
> 	7e909370a5cd ("phy: realtek: Replace of_device.h with explicit includes")
> 
> in the phy tree.

I fixed it up by hand, should be good now, thanks.

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
