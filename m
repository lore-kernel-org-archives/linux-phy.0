Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A908DC4332F
	for <linux-phy@archiver.kernel.org>; Tue,  7 Nov 2023 07:01:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s2StjjEgt+s97qZGmczgMytzxpi8ZIPrubBkhbdh2as=; b=l9B/1HiUTPRVtL
	lr7GGPxjTPaYxwgQUw//Iw5w8+C9/3Oi6sfZoEkYpKzuN1PyTvTXKBVwsbhzJPn5KFsRsvkcXjANJ
	gfcbd9qPXzSg9rorKn2HSJaUik1P2IbLpl567ukFqXCgsQbUEp13lEtRSDjEpB54Vu3rY4w00n5MU
	lCo71jZOrGkrJTiBW3unGGPBKn9iIXj3ANpvYIykCtRyWemn2rbRN/j68vVG/ihlod9jF9TfBQCI8
	kPIr3xopIkmhj76PwPJAzWUHta9kPfZLObImjO/1ZGl+iDLXa4fBTaCAuHQxNFjXTnztgKnpb2Zxi
	fXVXXlOO5eZPRYEJzFMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0G5R-000gAM-1C;
	Tue, 07 Nov 2023 07:01:21 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0G5P-000g9d-03
	for linux-phy@lists.infradead.org;
	Tue, 07 Nov 2023 07:01:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 6DBFEB80F02;
	Tue,  7 Nov 2023 07:01:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41A5BC433C7;
	Tue,  7 Nov 2023 07:01:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1699340476;
	bh=pTogYhi8zS1WiutkSZQEnV8vqByAHH90aOvNtaJCd4w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BBVayIwbw80fMwQtZH9iXIre1SiZf3cGwRxYVcUNMDV1zoB12BUpxZOGOLJkYJzdM
	 NI9TGleMAp9NulH8tGfLKRTUm2qk2OD38v//V0fH2sNDQ68K2JrIsCJmu3uaw5K/BT
	 KiUEIs8oo8umG1pZdYNejd6Ed4aD2GhmPSNCWrNQ=
Date: Mon, 6 Nov 2023 14:48:31 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Stanley Chang <stanley_chang@realtek.com>,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org
Subject: Re: [PATCH 0/3] Revert "usb: phy: add usb phy notify port status API"
Message-ID: <2023110617-lushly-static-4d32@gregkh>
References: <20231106110654.31090-1-johan+linaro@kernel.org>
 <2023110623-pointing-stump-643d@gregkh>
 <ZUjM/VEliT5c8H4C@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZUjM/VEliT5c8H4C@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231106_230119_206509_726868D7 
X-CRM114-Status: GOOD (  20.41  )
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

On Mon, Nov 06, 2023 at 04:54:45PM +0530, Vinod Koul wrote:
> On 06-11-23, 12:15, Greg Kroah-Hartman wrote:
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
> Not sure why, they didnt go thru phy ss!
> 
> > 
> > > Preferably these should go in through Greg's tree for 6.7-rc1.
> > 
> > I'll be glad to take this if I can get an ack for it.
> 
> Pls do drop this:
> 
> Acked-by: Vinod Koul <vkoul@kernel.org>

Thanks, now applied.

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
