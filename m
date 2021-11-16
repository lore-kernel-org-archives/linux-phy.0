Return-Path: <SRS0=azk1=QD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 239F3C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 22:04:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DC3E061994
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 22:04:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org DC3E061994
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/BbhKuJDzqKJbkRy9/jzLyTU3Pdy41A5+YJtA7o3u78=; b=rO162LUGEuIPB8
	UWusBdBk/94AdeQO7d1voZxzIO4xqeOWP2Et235OtVCpcixTvABwhRHilYEqjO3AhhM3Q2+SfLIU9
	Vw4IsFCvMNHqGx65iESMncQPVuCaGuw1F+KovZUorHL50q8ZEKwGIHtG38vdQaNDkYa0jFYI7JiZq
	VaUj0m0Gzf08j8jsfDJUXzo3whgMVgYgzTDupxSRmg+X8X1+vzU9iDzR/EN1mvZTJL60rZNJdB9p6
	HFzBwFP4kXnYkJtv5JlirKlbEP0mm2mWewRiOz9MQeRnUG5qO55f/Xl5X3RMnrQc+sRApIAJVr1SQ
	7Eeg+lpoCzGitYnHNHXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mn6Yn-002qgm-Eq; Tue, 16 Nov 2021 22:04:13 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mn6Yk-002qfh-Qn
 for linux-phy@lists.infradead.org; Tue, 16 Nov 2021 22:04:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1637100250; x=1668636250;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Rx/13bF/6Q3rEmvkBsxSO5hcFOb0mDykR+WPgNyDP/o=;
 b=QDD7ajEv6kwCnN7PV7Elri8W9z29KpZlgWTN2LnerrsKXUYfl1FQNH9g
 orB3hgL4DRBevWI1WDv5cP7l2JN2PcUHmmVG0KYoeNHc6eSWo8La0RycO
 h9vkGZZFr7jWwyL7mjIguGrUzMrNSqiBuA1WjXND00WeQO6fvbTc49JYG
 wUMBdSJ1+3bcCzZgae8e9fjkICj1HFBjwiowxTui90dXaFiQvW7fJpP2S
 qj5Vk3pWTL6Qdor8TovnvTZ5OY2/QBybdEDg1vodmB3Vjbek7Ji7RtqOn
 usGAm8oOfGxbTG2/Tb2uPazVovADll1EAjVJNsxhw2GtvRK5YZtUH0pmv A==;
IronPort-SDR: fUkcPZPrJJZn8G8UKtM5Ng0a7pjArBarDEblODBTaZaGzVU+HpnZuodRu7jcH2GvZV8seeU5kv
 H/T6euq0LrhJO+vxJcbM6Xf3WBTSC8pw2HAhKyqhJwcxy9EV8UpB/sHjD+gL2PTCracEGW+/Sm
 At3iY4G22+znlUPY0emOpvB7hzCi57Sco12iK+RQFbw+LOwaVaRkd78noReFfwRQr2cArdYzs5
 U7jBWNUWm3sRgWcA0fPWPxkVHY8EOj7GujSWZ4wYbqMivhDoz4LJ+MYrCKfviK+Ld9qMi1Z0dM
 9ws3oExXxIgD35L4IZebY6Jj
X-IronPort-AV: E=Sophos;i="5.87,239,1631602800"; d="scan'208";a="143579219"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 16 Nov 2021 15:04:09 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Tue, 16 Nov 2021 15:04:08 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2176.14 via Frontend
 Transport; Tue, 16 Nov 2021 15:04:08 -0700
Date: Tue, 16 Nov 2021 23:05:54 +0100
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
CC: Vinod Koul <vkoul@kernel.org>, <kishon@ti.com>, <robh+dt@kernel.org>,
 <andrew@lunn.ch>, <kuba@kernel.org>, <linux-phy@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH resend v4 0/3] phy: Add driver for lan966x Serdes driver
Message-ID: <20211116220554.d3amfihujwua2sff@soft-dev3-1.localhost>
References: <20211116100818.1615762-1-horatiu.vultur@microchip.com>
 <20211116102151.k3evnn4f2rwsi5nk@soft-dev3-1.localhost>
 <YZOLyQPsgoOYJZch@matsya>
 <20211116105601.fauvfv2wzlmcf6jc@soft-dev3-1.localhost>
 <YZOZZv3NPq2C9NXu@matsya>
 <20211116115228.5qn4o3gkh26674rw@soft-dev3-1.localhost>
 <YZP0lPN+TCtBN8ic@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YZP0lPN+TCtBN8ic@piout.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_140410_945749_6373B306 
X-CRM114-Status: GOOD (  26.79  )
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

The 11/16/2021 19:12, Alexandre Belloni wrote:
> 
> Hello,
> 
> On 16/11/2021 12:52:28+0100, Horatiu Vultur wrote:
> > The 11/16/2021 17:13, Vinod Koul wrote:
> > >
> > > On 16-11-21, 11:56, Horatiu Vultur wrote:
> > > > The 11/16/2021 16:15, Vinod Koul wrote:
> > > > >
> > > > > On 16-11-21, 11:21, Horatiu Vultur wrote:
> > > > > > The 11/16/2021 11:08, Horatiu Vultur wrote:
> > > > > >
> > > > > > Hi Kison, Vinod,
> > > > > >
> > > > > > Can you let me know if you have more comments to this patch series?
> > > > > > Otherwise can you ack on it? Because I would like to have the patches
> > > > > > merged via netdev if that is OK for you.
> > > > >
> > > > > Any reason for merge thru netdev, there is no dependency and now with
> > > > > merge window closed, I can pick this up..
> > > >
> > > > Because I would like to send some patches for the lan966x network driver.
> > > > And these network patches depend on the serdes driver.
> > >
> > > There cant be a compile time dependency... the network driver can use
> > > the phy apis.. I dont think it is required here... Did I miss something
> > > obvious?
> >
> > You are right, there is no compile time dependency and the network
> > driver can use the PHY APIs.
> >
> > But at runtime the network driver will need to configure the serdes
> > using the PHY API to be able to work properly.
> >
> 
> It is fine if it doesn't work at runtime with only one branch, both will
> get merged in linux-next and you can test with that if necessary. I'll
> let both series go through separate trees.

Ah.. sorry for all the confusion. I though they need to go through the
same tree.

So Vinod, if you think that the patch series is OK please take it in
your tree, otherwise let me know what comments you have.

> 
> 
> --
> Alexandre Belloni, co-owner and COO, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com

-- 
/Horatiu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
