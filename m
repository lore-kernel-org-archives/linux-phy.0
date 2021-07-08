Return-Path: <SRS0=EZuF=MA=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A6C2C07E96
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jul 2021 13:47:28 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2491F613D1
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jul 2021 13:47:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2491F613D1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=armlinux.org.uk
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=THPgPCPf5D0rs2SpkZil5MnbAn7M59rcA+iOJNsy7hk=; b=IHEjyjLxwm8hUL
	e4YUs6hXdDzaDQJS2CtM80JXA18ww8vjb4ZimLZhkHqk1SmlKbKT4p/dioD8gIBddhnGvlLNx0KgF
	yvWsvOQKDHRc+CjSo/4vBm7llq2bz/jlySkkhS7Nk9opHGpsnA0V2hF/D+JAyc1bhYYcoFapkUBuC
	I7Xd/6PBqQDIdSYivgKp0sq9ANrqXONk9qXDDM8Q8+S5sA+a2y1m2Rre9zN+Q+pnRCyg2O/iaiHmc
	5fyIaL+ymfG95Qkq+2lg8L+UHH27xN78IW9f4Ui2bkd2HUH/TwSh0GxZvxrXiUj2InJKj91uC8KQy
	Aslr8pN1ufQuYiXlIr4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m1UND-00H7zz-EA; Thu, 08 Jul 2021 13:47:27 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1UNA-00H7z9-FI; Thu, 08 Jul 2021 13:47:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1onv7D7UfHyZd8wp8ojsjToOmTb+gozwlqpKz22PFwA=; b=TpZkE+0BQeQej1Agy5fZqyTFT
 hFSYwtGsK8Pl+xngd8lz79GnwL+3yN0X+W+qtFrhv+pJFh8XZlBfSZuIBUCUkcn/IiKtdPYXJQMtx
 HMs/fl7rkKdoPTLQuJt4psYINCtusbYYLmROGLujLQMGzhzSIFHGo7lBZAs0pKDgBkxQZN/+db2V4
 t+Cafd1TchDzzeDobP+gzHLGTXklXgsDW/faAZsdni5GlC0svTdFPk+UUfYlUXdapHTEF7b1ul3HQ
 VLcyNW8Ti3U1KRU3mpIABO7RaBFtDydNHcb1eNMyLFrHyC1QPWsOfw8PsCOE+gOIz7btAG7bPnDVM
 9/d2T69mA==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:45872)
 by pandora.armlinux.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <linux@armlinux.org.uk>)
 id 1m1UN0-0000jh-7e; Thu, 08 Jul 2021 14:47:14 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1m1UMw-0003wE-ER; Thu, 08 Jul 2021 14:47:10 +0100
Date: Thu, 8 Jul 2021 14:47:10 +0100
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
Subject: Re: [PATCH v7 5/5] arch/arm64: dts: change 10gbase-kr to 10gbase-r
 in Armada
Message-ID: <20210708134710.GW22278@shell.armlinux.org.uk>
References: <20210708124612.30742-1-kostap@marvell.com>
 <20210708124612.30742-6-kostap@marvell.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210708124612.30742-6-kostap@marvell.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210708_064724_554838_1BB136DE 
X-CRM114-Status: UNSURE (   7.48  )
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

On Thu, Jul 08, 2021 at 03:46:12PM +0300, kostap@marvell.com wrote:
> From: Konstantin Porotchkin <kostap@marvell.com>
> 
> Change all 10G port modes in Armada family device trees from
> 10gbase-kr to 10gbase-r
> 
> Signed-off-by: Konstantin Porotchkin <kostap@marvell.com>
> Suggested-by: Russell King <linux@armlinux.org.uk>

Please change the "suggested-by" to:
Suggested-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>

Reviewed-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
