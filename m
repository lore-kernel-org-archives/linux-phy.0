Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E45CCDB46F
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jun 2026 16:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mrkRjaeflI/SvOv8KCePcjOiw/M+tutRbcBB+8pi0hs=; b=Q4RDpYWn98gPTr
	QG28CVhHTQekBaVRKAh6spiTwBiVxPW7BZAnQQJ9QcnTbolKySsZuuSU9KBfAdIyCKrZ3L43HLLiT
	qeA6gcdKGkoT6rQx85pquO8k1ke5O7nCGa1wJ+gTdmJfvsJBIKhjJASeEueNFV4AnQGp91a724IO9
	t5A+qrEe0QRt2GGPLy4lRQZCLYCS3F0jwtzRsuRsMFUuVqy5AcIi56C9BkwFFW46VVHSkKYOJPbPA
	NYYdOMPtk5a1BEyF6PlPb5Tk2ySLweMQ241mRFqCB9BRmHBP3cRO8h8Hyz6hLFFCWD620gmKpsela
	YqXimp2rFDHrGrT3tdig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc45G-00000006dgV-0NNm;
	Tue, 23 Jun 2026 16:34:46 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc45C-00000006dg8-1SFv
	for linux-phy@lists.infradead.org;
	Tue, 23 Jun 2026 16:34:44 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id A14774E40773;
	Tue, 23 Jun 2026 16:34:38 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 5F793601C2;
	Tue, 23 Jun 2026 16:34:38 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 85E0A106C8382;
	Tue, 23 Jun 2026 18:34:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1782232477; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=2wrqOjRzMhTb93M3exBJA5foYnr34jfu7Zmsb7q95s4=;
	b=PwsCCeSxTkhSaGoTDg4xMxOoL2zk6ED1MVfvwyPJwRYk5o/tBKr9xwp0bp3tVAV+1jWQFx
	aXOFvygrE8H0EM9WRUdBcMhbSGm5hdjaRUlOF4YjdOBWMz7ruzOkAzqJZq+GSinJ0PHaZS
	OIvOUOReO5w6MMQYLlYlmJiiF6wmd+BoxMc33zS7hYx/XqLHFTnwqI+GspefyRnGHr+p/N
	hi36FB6nBMSnCDhwtkRiwqd5l44Pf0use01uJ9BgFF5cek9TkqE/RIy9ywPS072cIjLgoM
	7JDhtOCvX+1BDNMuow4M5LA+oaq6a1O23DTc0O20HQMNJmTcvTSGYPgmgT4Omg==
Message-ID: <6738bbb7-63ed-4c65-a0df-f5f9514fcde0@bootlin.com>
Date: Tue, 23 Jun 2026 18:34:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v3 0/2] net: phy: sfp/mdio-i2c: defer RollBall
 probe + fix mii_bus leak
To: Petr Wozniak <petr.wozniak@gmail.com>, linux@armlinux.org.uk,
 andrew@lunn.ch, hkallweit1@gmail.com
Cc: kuba@kernel.org, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, bjorn@mork.no, olek2@wp.pl, kabel@kernel.org
References: <20260623080538.7646-1-petr.wozniak@gmail.com>
Content-Language: en-US
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
In-Reply-To: <20260623080538.7646-1-petr.wozniak@gmail.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260623_093442_555522_EC3AE9EB 
X-CRM114-Status: GOOD (  10.76  )
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

Hi Petr,

On 6/23/26 10:05, Petr Wozniak wrote:
> This series resends the RollBall bridge probe deferral (a fix for the
> regression in commit 8fe125892f40) and adds a related mii_bus leak fix.

These are bugfixes, you need to target the 'net' tree as explained here :

https://docs.kernel.org/process/maintainer-netdev.html

Thanks :)

Maxime
> 
> Patch 1 fixes a pre-existing mii_bus leak in sfp_i2c_mdiobus_destroy()
> that has been present since the helper was introduced in 2022. Patch 2's
> new -ENODEV path destroys the MDIO bus via sfp_i2c_mdiobus_destroy(), so
> patch 1 is a prerequisite to avoid leaking the bus on that path.
> 
> The v2 deferral patch was corrupted in transit and failed to apply; it is
> regenerated here against current net-next with no functional change.
> 
> v3:
>  - Resend: v2 defer patch was corrupted in transit and failed to apply
>    (netdev/apply); regenerated against current net-next.
>  - Fixed block comment style flagged by checkpatch. No functional change.
>  - Added patch 1/2 (sfp: free mii_bus in sfp_i2c_mdiobus_destroy).
> v2 (defer):
>  - Generalized scope: regression affects boot-inserted and hotplugged
>    modules where bridge init exceeds 200 ms; Aleksander Bajkowski
>    confirmed FLYPRO SFP-10GT-CS-30M / AQR113C broken when hotplugged.
>  - Corrected state machine description (probe runs in SFP_S_INIT after
>    SFP_S_WAIT) - Jan Hoffmann.
>  - No code changes from v1.
> v1: initial submission.
> 
> Petr Wozniak (2):
>   net: phy: sfp: free mii_bus in sfp_i2c_mdiobus_destroy
>   net: phy: mdio-i2c: defer RollBall bridge probe to PHY discovery
> 
>  drivers/net/mdio/mdio-i2c.c   | 15 +++++++++------
>  drivers/net/phy/sfp.c         | 23 ++++++++++++++---------
>  include/linux/mdio/mdio-i2c.h |  1 +
>  3 files changed, 24 insertions(+), 15 deletions(-)
> 
> 
> base-commit: b85966adbf5de0668a815c6e3527f87e0c387fb4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
