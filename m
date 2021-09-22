Return-Path: <SRS0=p6f2=OM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3E74EC4332F
	for <linux-phy@archiver.kernel.org>; Wed, 22 Sep 2021 09:58:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0631561178
	for <linux-phy@archiver.kernel.org>; Wed, 22 Sep 2021 09:58:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0631561178
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=epN1KbQqR566jZfq7w9T+CjjEPiFup4MO8ycq5wEVXc=; b=G+f+OdCB+2qq9G
	iZwUEJ4RHBglsIwb1EFy1A9NgVnWsneik4udJgNAKZUrt5FAAXSUqaYcDSjRQWhejJAVz/r1d9zfU
	dm0+uq/v+NaM2q0kTP7pwSNQsYGiY2zT6/h40tVDRgqDqlxiK8iqJXgm13B+Dlv5ui96Ndpn2m95s
	ejHia9EppnEpCcX2qqscSZrtk+ew6niSArGho1dZKTXNn85DqjGY58Ds0jH9H3Fi7OYAAekwxDszb
	xGjXEyROyHaQNud1MkidzgH4P/NyWwaqLQ8OeagKG4HedbVwprX9Vd5KuWWGqpmqKQDW7BVX3m8OG
	cxIvgidwu0PNC2BoB4ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSz1L-007fzQ-H6; Wed, 22 Sep 2021 09:58:31 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSz1H-007fxu-Ve
 for linux-phy@lists.infradead.org; Wed, 22 Sep 2021 09:58:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1632304707; x=1663840707;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=28a3lLNqXtQh35HGEvcVFM9lt13KcNMXr9Ft+baDXFQ=;
 b=Wq6QUdTKlNEkAAsRIaQTgbijmYim7i/+H4bjxn4Uaj1yhtQeOKw9hVXC
 xBb+kdhD2rEQnroq5B0UAvK7nFkB6o29rUl27XQgMFTcThUGg9mjZ0EyQ
 3qxpDqbCs2GG6qqjM9EFESdqKtcPo78l8MBjm77QpMK7dBXSxKLLA6M9I
 NqsofsNYTdEyqf7lywtFrQTwqMnLW+iy3ZjZ7MX9onn5/J8pT0TQ8/kSz
 PuB3rxFUXFnK2RYm2CgqXfSyD/x2J8pWON446qakLl6JKeqvyniXuuI4x
 UbhygwxMEzRtOig7IaKlcctBK/XYuaFQeauL+jkw/fdJiWemRgWl9hDQu Q==;
IronPort-SDR: dR61EeXGDmxfoVB+BiPAR9niYPzuF3lQhhCvQY4domCSs7BL27IQfZk8owei7OF9cKLheLL+M0
 V1RvxRNVlpLtHqH3I0Bzy+XKwqIydo/qd30jMElG/2PendTRyeN+ICbSA7D833/ebPYrK1N49b
 6ubFEOk3dsUVQi9uHZx5odeIgayL9qFZ2ULevJgtBly0Izo2HsQSwfS2u+JfaRkw6PopmxdL+c
 SlYhPz8ai77L+iKA2EYH/RntMic9BLgV4+FeuLiiaoOENuMI28CNC232NSdJ7D+K85dcacyP2c
 cLT6j3p+SfaJpwd0j5eqgajM
X-IronPort-AV: E=Sophos;i="5.85,313,1624345200"; d="scan'208";a="145122886"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 22 Sep 2021 02:58:25 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Wed, 22 Sep 2021 02:58:24 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.2176.14 via Frontend
 Transport; Wed, 22 Sep 2021 02:58:24 -0700
Date: Wed, 22 Sep 2021 11:59:53 +0200
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Andrew Lunn <andrew@lunn.ch>
CC: <davem@davemloft.net>, <kuba@kernel.org>, <robh+dt@kernel.org>,
 <linux@armlinux.org.uk>, <f.fainelli@gmail.com>,
 <alexandre.belloni@bootlin.com>, <vladimir.oltean@nxp.com>,
 <UNGLinuxDriver@microchip.com>, <netdev@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <linux-pm@vger.kernel.org>
Subject: Re: [RFC PATCH net-next 05/12] reset: lan966x: Add switch reset driver
Message-ID: <20210922095953.r6xcr2dtx7diavhj@soft-dev3-1.localhost>
References: <20210920095218.1108151-1-horatiu.vultur@microchip.com>
 <20210920095218.1108151-6-horatiu.vultur@microchip.com>
 <YUh6WcEVBigG61y6@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YUh6WcEVBigG61y6@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_025828_104052_D6F39C4D 
X-CRM114-Status: GOOD (  16.57  )
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

The 09/20/2021 14:11, Andrew Lunn wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On Mon, Sep 20, 2021 at 11:52:11AM +0200, Horatiu Vultur wrote:
> > The lan966x switch SoC has a number of components that can be reset
> > indiviually, but at least the switch core needs to be in a well defined
> > state at power on, when any of the lan966x drivers starts to access the
> > switch core, this reset driver is available.
> >
> > The reset driver is loaded early via the postcore_initcall interface, and
> > will then be available for the other lan966x drivers (SGPIO, SwitchDev etc)
> > that are loaded next, and the first of them to be loaded can perform the
> > one-time switch core reset that is needed.
> 
> A lot of this looks very similar to
> reset-microchip-sparx5.c. PROTECT_REG is 0x88 rather than 0x84, but
> actually using the value is the same. SOFT_RESET_REG is identical.  So
> rather than adding a new driver, maybe you can generalize
> reset-microchip-sparx5.c, and add a second compatible string?

You are right, they look similar.
I will try to add a new compatible string.

> 
>         Andrew

-- 
/Horatiu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
