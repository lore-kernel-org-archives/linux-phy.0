Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF551C433F5
	for <linux-phy@archiver.kernel.org>; Sun, 23 Jan 2022 11:46:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b9vMkQXUr/eH4rB2Bt64e9s6ZMdBDa/U0LafJxBGDnc=; b=ZlaJwPDB1k1fEQ
	L21H55XOSNHYNjQf0I+0xuICpHCqS7NhjSebOrXIfz7ZvArbu4wnwMLjD+zvcRHAqJGzppUyr9nZK
	dO+WjAv7XC9PvStKXslzW79lSKILsdlKA77OypO1qomZ9gz4gUsC2xFNuDqbTw5t6iZl6i3pYKrkO
	lkBJGP7oHzOGN4oyDpbEWAwhhOTJ+Xae2GWR74uQydmxnlPTRw514Xc0uoVfwtE+NXldac4IlSAKi
	DRnTMb3TIiDCcDJk1J5rqn4RsrfvvS+ne4/AtcuuwSkVqCgIvZgNqnDJnFnJP4gSvMOOxDk5IgDZQ
	3DUbv+lfF0z4d18OCjdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBbJr-000kGn-63; Sun, 23 Jan 2022 11:46:03 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBbJo-000kGQ-KK
 for linux-phy@lists.infradead.org; Sun, 23 Jan 2022 11:46:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 1F6D3B80C76;
 Sun, 23 Jan 2022 11:45:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05AEDC340E2;
 Sun, 23 Jan 2022 11:45:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1642938356;
 bh=UhU7E+vx7Dalcg6EmkOXd1hIwDDZ71eS8u67xI1UUSA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=raKMiK95afWZ8hzulavL/GwFzgCKG4JoXWdp3I8Zoaq9A3N46u/5NeJ7T02181wil
 R32Lr3beLtp3UOx3cEmdSfEcJC+LQnd439NGZdiYRL2l1BrfJMf2liUIP+bU1+40v8
 TWmQzz6aoes4Ah7vdtrRsD1IeBbHy6KBiBeh1yBfeKlB+Y2kX0HGxNot4hjf31Wcyr
 eSE5HyS3tvQuzYmvQ2E67hEVt8FLnYw2sF4cxQ1Ts8xZVDjeDg4jzF7UhFB+x6LJaD
 yidPfrRm3TAo3tHVBCMEasp8Yln11hdmTJynadvi0QzZLA5YOPaj6dXcQP0PrMDgXf
 ggPdE1Fjm5Q1g==
Date: Sun, 23 Jan 2022 17:15:52 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Cc: Al Cooper <alcooperx@gmail.com>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH 0/3] phy: phy-brcm-usb: Fixes for phy-brcm-usb driver
Message-ID: <Ye0/8MSBRVNuBr3L@matsya>
References: <20211201180653.35097-1-alcooperx@gmail.com>
 <7cbb745e-8b95-1eed-0903-44070a112ec0@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7cbb745e-8b95-1eed-0903-44070a112ec0@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220123_034600_847221_8925AB19 
X-CRM114-Status: GOOD (  10.09  )
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

On 19-01-22, 15:26, Florian Fainelli wrote:
> Hi Vinod,
> 
> On 12/1/21 10:06 AM, Al Cooper wrote:
> > A few fixes for the phy-brcm-usb driver.
> > 
> > Al Cooper (3):
> >   phy: usb: Leave some clocks running during suspend
> >   usb: Add "wake on" functionality for newer Synopsis XHCI controllers
> >   phy: broadcom: Kconfig: Fix PHY_BRCM_USB config option
> 
> Are you able to pick up those patches? Thank you

Applied phy patches to phy-fixes, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
