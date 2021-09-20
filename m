Return-Path: <SRS0=0RCf=OK=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 259DAC433EF
	for <linux-phy@archiver.kernel.org>; Mon, 20 Sep 2021 12:11:15 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D535360F93
	for <linux-phy@archiver.kernel.org>; Mon, 20 Sep 2021 12:11:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D535360F93
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=lunn.ch
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=61fF5woi9o465FlStTiwodCE7Nk7KAwQS9HaQwJp8WI=; b=Ul5xVMin3JauwF
	3dShZL3yAUiv+js29+NFQTr9rMZ3+Tv/RU4alkNa1EvMLLXPr93X7VfeHtAu+TkWtvynHkofWBO7c
	kb4QqDdk6kJ28sBglhYcbOqle8A09fu6KajvSO67dL/Xom0upf1vTnBuxZU1SVEJQj7GW72bVutXd
	0x+hvZgSahR7OclpSiyCEqZ8lxQVNZ22yyUOrffKNNY6CD4d7tmCI9yRC9sZ2fEmWM93I2QYJvxt/
	SmzV1BOQQSTugs+ZTfY/JxCZp233gMB4uHamI/CkIOX1VAh/D7fwZXB8rlIiQwTiZh0Wila/5zWyJ
	D+15ZK0Uf3Iy8COQJrZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSI8g-001VQj-CW; Mon, 20 Sep 2021 12:11:14 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSI8d-001VQD-Tz
 for linux-phy@lists.infradead.org; Mon, 20 Sep 2021 12:11:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=ynPuYJw34L7manFae3VE050hQpjFpbwhxqvbfLwY7L0=; b=FZiXvErhz6wL2EaMma7YyZQSC3
 p6+kdVyLCZeK0GSHrY9xr94uhueRxQvSvm1egCUVK5StQar3ptI8/M7Mprn58CAg7BuAVUehFXMIM
 vfEU1l1Qniq59ljCvcXnEQv8D1ADqNm1CYLrNguEYB550lbMUrL4Ic3wwuag4QsKTWIk=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1mSI8X-007UdS-Ke; Mon, 20 Sep 2021 14:11:05 +0200
Date: Mon, 20 Sep 2021 14:11:05 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: davem@davemloft.net, kuba@kernel.org, robh+dt@kernel.org,
 linux@armlinux.org.uk, f.fainelli@gmail.com,
 alexandre.belloni@bootlin.com, vladimir.oltean@nxp.com,
 UNGLinuxDriver@microchip.com, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-pm@vger.kernel.org
Subject: Re: [RFC PATCH net-next 05/12] reset: lan966x: Add switch reset driver
Message-ID: <YUh6WcEVBigG61y6@lunn.ch>
References: <20210920095218.1108151-1-horatiu.vultur@microchip.com>
 <20210920095218.1108151-6-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210920095218.1108151-6-horatiu.vultur@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210920_051112_010564_845CF3AD 
X-CRM114-Status: GOOD (  11.17  )
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

On Mon, Sep 20, 2021 at 11:52:11AM +0200, Horatiu Vultur wrote:
> The lan966x switch SoC has a number of components that can be reset
> indiviually, but at least the switch core needs to be in a well defined
> state at power on, when any of the lan966x drivers starts to access the
> switch core, this reset driver is available.
> 
> The reset driver is loaded early via the postcore_initcall interface, and
> will then be available for the other lan966x drivers (SGPIO, SwitchDev etc)
> that are loaded next, and the first of them to be loaded can perform the
> one-time switch core reset that is needed.

A lot of this looks very similar to
reset-microchip-sparx5.c. PROTECT_REG is 0x88 rather than 0x84, but
actually using the value is the same. SOFT_RESET_REG is identical.  So
rather than adding a new driver, maybe you can generalize
reset-microchip-sparx5.c, and add a second compatible string?

	Andrew

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
