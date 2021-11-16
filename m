Return-Path: <SRS0=azk1=QD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05528C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 18:12:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AB48963225
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 18:12:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org AB48963225
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y+1L7n9yVGHsUv+qbPc6iUB23JH7dhVcWnz+ZNWToNc=; b=Ou54xaMYzX1anw
	ppqYoVT5I7nJ1FA8gyyXPfuy8ITYoNiyq2fw9Z1mJ/2JLdIuAReLXsRGG21OPkmqDiyFUUNSuMtNu
	m7xfeYqUxhsPcf3NPHh48qkGvpoIQHRu5gUFdoD++99PuG9fWtG9cX8lMnDOf3fRDD9xdSF6jGUHH
	OS0Uq7DB5lbLWgU8BQec+sII5ix3GA3QUtdE4Uf905wsD8IKX+0ifBrns4Cl+7sz+KoJT3ijdr9+Y
	HGN2VQo9+PR/v5GgIqXBC4f1fng7WbKrZ0uaC9t6q8Mt4Nfs3L5edGSD1OEMO7/r9ikFE1x/deuas
	P8qyFI5PjwUA26nAsS+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mn2wn-002XMZ-6O; Tue, 16 Nov 2021 18:12:45 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mn2wk-002XKt-1E
 for linux-phy@lists.infradead.org; Tue, 16 Nov 2021 18:12:43 +0000
Received: (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id EF86A40002;
 Tue, 16 Nov 2021 18:12:36 +0000 (UTC)
Date: Tue, 16 Nov 2021 19:12:36 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: Vinod Koul <vkoul@kernel.org>, kishon@ti.com, robh+dt@kernel.org,
 andrew@lunn.ch, kuba@kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH resend v4 0/3] phy: Add driver for lan966x Serdes driver
Message-ID: <YZP0lPN+TCtBN8ic@piout.net>
References: <20211116100818.1615762-1-horatiu.vultur@microchip.com>
 <20211116102151.k3evnn4f2rwsi5nk@soft-dev3-1.localhost>
 <YZOLyQPsgoOYJZch@matsya>
 <20211116105601.fauvfv2wzlmcf6jc@soft-dev3-1.localhost>
 <YZOZZv3NPq2C9NXu@matsya>
 <20211116115228.5qn4o3gkh26674rw@soft-dev3-1.localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211116115228.5qn4o3gkh26674rw@soft-dev3-1.localhost>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_101242_235625_3121A1FA 
X-CRM114-Status: GOOD (  22.55  )
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

Hello,

On 16/11/2021 12:52:28+0100, Horatiu Vultur wrote:
> The 11/16/2021 17:13, Vinod Koul wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> > 
> > On 16-11-21, 11:56, Horatiu Vultur wrote:
> > > The 11/16/2021 16:15, Vinod Koul wrote:
> > > >
> > > > On 16-11-21, 11:21, Horatiu Vultur wrote:
> > > > > The 11/16/2021 11:08, Horatiu Vultur wrote:
> > > > >
> > > > > Hi Kison, Vinod,
> > > > >
> > > > > Can you let me know if you have more comments to this patch series?
> > > > > Otherwise can you ack on it? Because I would like to have the patches
> > > > > merged via netdev if that is OK for you.
> > > >
> > > > Any reason for merge thru netdev, there is no dependency and now with
> > > > merge window closed, I can pick this up..
> > >
> > > Because I would like to send some patches for the lan966x network driver.
> > > And these network patches depend on the serdes driver.
> > 
> > There cant be a compile time dependency... the network driver can use
> > the phy apis.. I dont think it is required here... Did I miss something
> > obvious?
> 
> You are right, there is no compile time dependency and the network
> driver can use the PHY APIs.
> 
> But at runtime the network driver will need to configure the serdes
> using the PHY API to be able to work properly.
> 

It is fine if it doesn't work at runtime with only one branch, both will
get merged in linux-next and you can test with that if necessary. I'll
let both series go through separate trees.


-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
