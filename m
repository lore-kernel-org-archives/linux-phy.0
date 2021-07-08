Return-Path: <SRS0=EZuF=MA=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8038C07E96
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jul 2021 11:31:23 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A77406144E
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jul 2021 11:31:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A77406144E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=armlinux.org.uk
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g9nY4n7bKoUyXyPc1OnttK4wGskJ52Ws9QVrAdIWv7I=; b=Ff/xPNuRo7v5gD
	xwkZZbmPHvgEj+b6BFSBLldI2qOuU3LENRLYUSMRkoWJLWdZpKAQWCAAZYMqXhNOpILnNjBwZ9Wen
	GA8wtSGXYxCbLBG+vP24QforrwIU5/tOIu1sWDi4vwfkFb5faLqfqANdspjukAG1mb6dr0JmAXyqe
	HiZq/Mua6f1A86mYTWKBmIwWKSsqi5pnBiaYxy4mbd2ifaiayBO07LQuPOWgbz2h/KZHXS1exhuFD
	73X/X/szWRtC/RCOYF0owuFR07fccEqyLnYZehpeTO9PL8gV/4xzzaYPwG4/QUyK6ba3/HW6voUyj
	jFvoAWGPk7X++xOdXPzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m1SFX-00Gj20-7b; Thu, 08 Jul 2021 11:31:23 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1SFP-00Gizm-GS; Thu, 08 Jul 2021 11:31:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bbyR1F16p1tRYPcUbpgTSalCf5u8zAJ9zT0uymCmpbc=; b=m6FT/x/yn/ggFqI2/qYAnOG4n
 wz+NoEdUVAljhki0NCx0tZdeWTvXee+fseVcY9KD/SxFf/Cbavfj4iowpUwpjJik3Kim2zzGW3Fjk
 tf6Afqbd3xXGNJg5tp7l7KqI0A5sI7MdIscjgmezPQDXClC4NuP/4Z8MGuJrLmubuH/e6e6gcNTZM
 eDgYoE98S3/wwyehe06l2LWfQyZuqfLmQ7NzzXGL6rsHxI0Xw2RchIlbljHVdn3d5DJt9G5y/l7J8
 Cz2MaiYrDBRW5Qs1ZvZ2idpXxrqxdTYz16e8619KUZpqfxCXqva46HduGQ5Jzmfl+ZhaRITwpy7OP
 a9ulDj9Dw==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:45864)
 by pandora.armlinux.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <linux@armlinux.org.uk>)
 id 1m1SFK-0000a0-Ao; Thu, 08 Jul 2021 12:31:10 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1m1SFJ-0003qw-I3; Thu, 08 Jul 2021 12:31:09 +0100
Date: Thu, 8 Jul 2021 12:31:09 +0100
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: kostap@marvell.com
Cc: miquel.raynal@bootlin.com, kishon@ti.com, vkoul@kernel.org,
 robh+dt@kernel.org, andrew@lunn.ch, gregory.clement@bootlin.com,
 sebastian.hesselbarth@gmail.com, vladimir.vid@sartura.hr,
 luka.kovacic@sartura.hr, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, mw@semihalf.com,
 jaz@semihalf.com, nadavh@marvell.com, stefanc@marvell.com,
 bpeled@marvell.com
Subject: Re: [PATCH v6 1/5] Documentation/bindings: phy: update references to
 cp11x
Message-ID: <20210708113109.GV22278@shell.armlinux.org.uk>
References: <20210708112528.3254-1-kostap@marvell.com>
 <20210708112528.3254-2-kostap@marvell.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210708112528.3254-2-kostap@marvell.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210708_043115_593295_BADDE88E 
X-CRM114-Status: UNSURE (   9.31  )
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

On Thu, Jul 08, 2021 at 02:25:24PM +0300, kostap@marvell.com wrote:
> From: Grzegorz Jaszczyk <jaz@semihalf.com>
> 
> The cp11x references in dts has changed, reflect it in comphy
> documentation.
> 
> Signed-off-by: Grzegorz Jaszczyk <jaz@semihalf.com>
> Signed-off-by: Konstantin Porotchkin <kostap@marvell.com>

I don't think it's really necessary to reflect the syntactic sugar
that gets used to cope with the fact we have two CP11x dies in the
DT examples. They are exactly that - an example of the usage. They
don't need to reflect reality.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
