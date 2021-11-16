Return-Path: <SRS0=azk1=QD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43946C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 11:43:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 00865608FE
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 11:43:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 00865608FE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NRkzXogn/GdbSBoH+SBleOqeh9YD1tvCzfIoL4NZL38=; b=RBxjnMXIgdP7iV
	ZdrzWAnNb8QWNwjzUKG2maiZHtgs2ISzZkqJcbK+ko7AECZLuHUp4Vwizuwa49Rr1JVrC020v+x3g
	4bKeFJLarpFY7BuEDCv35MuHHg+NC53WSTpG67E5fJXXzk3RyixKp/LgzIbTiU2fpSIbWHOIhuL8Y
	qUd4ZtyD2JuUZcYW/YCdj//VkmLAFtsCzEHxHCZEnveuaOGezN+L081qCijryHxwg5R0an1gtIkp1
	s+D0MlIaKo3Ok55+UA7bJjs0tWAroLXWgZo7wPLpObelZ1FnxpstiNN4zyZVo8PBbD/HH4JPA8Zrc
	laDvMTvr45/Op5ueYm6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmwsM-001WC3-94; Tue, 16 Nov 2021 11:43:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmwsF-001W8g-Pf
 for linux-phy@lists.infradead.org; Tue, 16 Nov 2021 11:43:41 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 71CEF633A7;
 Tue, 16 Nov 2021 11:43:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637063019;
 bh=o1JBPKCGWXJZZefm25NEXxuyxdUOXV5+XVYEGGp4c1M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hPyTBmyG5aCaRg26nwZduQUfNBTrVNFuF9GIsUbB9I12Ulen8QrIaH7V4jxJ6RfwM
 S558ejiHY31B2KOlH3G3SqjjwPu67jK8De09n4Al7+giCqNX3rGUzrUm+lUNEVXIx4
 53xDSDbPS7eaCxsGV0EFEOsFx23wVDPb4+AOh5x34DicmqrvB3U8vElutfer+SjNKW
 FVA/wRTWAv0aXxG4eq23rtC+RYHBAJtwC4BBpzoyGU2UkMoJjA7aLk2zqIuOgpsR9P
 SzD9GC3FSswh01tLebizJO4mofNetsvvoHGelTKzN6XD8XUT82595EX0SRuU+uT/JX
 V/G96o8Igmf3Q==
Date: Tue, 16 Nov 2021 17:13:34 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: kishon@ti.com, robh+dt@kernel.org, andrew@lunn.ch,
 alexandre.belloni@bootlin.com, kuba@kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH resend v4 0/3] phy: Add driver for lan966x Serdes driver
Message-ID: <YZOZZv3NPq2C9NXu@matsya>
References: <20211116100818.1615762-1-horatiu.vultur@microchip.com>
 <20211116102151.k3evnn4f2rwsi5nk@soft-dev3-1.localhost>
 <YZOLyQPsgoOYJZch@matsya>
 <20211116105601.fauvfv2wzlmcf6jc@soft-dev3-1.localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211116105601.fauvfv2wzlmcf6jc@soft-dev3-1.localhost>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_034339_894414_1890BE4F 
X-CRM114-Status: GOOD (  14.59  )
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

On 16-11-21, 11:56, Horatiu Vultur wrote:
> The 11/16/2021 16:15, Vinod Koul wrote:
> > 
> > On 16-11-21, 11:21, Horatiu Vultur wrote:
> > > The 11/16/2021 11:08, Horatiu Vultur wrote:
> > >
> > > Hi Kison, Vinod,
> > >
> > > Can you let me know if you have more comments to this patch series?
> > > Otherwise can you ack on it? Because I would like to have the patches
> > > merged via netdev if that is OK for you.
> > 
> > Any reason for merge thru netdev, there is no dependency and now with
> > merge window closed, I can pick this up..
> 
> Because I would like to send some patches for the lan966x network driver.
> And these network patches depend on the serdes driver.

There cant be a compile time dependency... the network driver can use
the phy apis.. I dont think it is required here... Did I miss something
obvious?

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
