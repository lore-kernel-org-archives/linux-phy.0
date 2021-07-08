Return-Path: <SRS0=EZuF=MA=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D99F3C07E99
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jul 2021 11:31:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9FE846144E
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jul 2021 11:31:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9FE846144E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=armlinux.org.uk
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GhCbsi8n3SMIzaLJIJa5+6OoDVmd6qnmcvAaHug8VCE=; b=aKqhkkLPoqmRbH
	N/yWqCKaQFr7pD/bCy7hppHSIVvigiak/gbGxCYfSCHpl10tx+tNsSi/wM2wlSEQVNn486l621rk9
	PBr9hWqI9fQJGJsV+BraNJjAWC18GURduIwkxq26bZbTmi/oflRl7NUv8sucQn88raJaT4KjnIhxN
	qB/7l06j4tzhuNupr4VcFvJwiHp+tYeW3S6wAnoSd11pruw6p3xhytr7XC9Skp5Zl+omMr1dmj9Iw
	Gi9e1/eZM8rsa4y8xZ448hmg56bWLWnn0GF5UGxWsDO7udQ0FAKJkfxH/BrMrSesv0lIbyoJ6Pq0o
	U93xWkqJgvSW8XGQixmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m1SFJ-00GiyC-5o; Thu, 08 Jul 2021 11:31:09 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1SFE-00GiJa-1v; Thu, 08 Jul 2021 11:31:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XklnTibCIfL0KxRMp3VAV+u5OGxp6nW7GyB3N7FCslM=; b=RnPRykNqoRIciHiBGOioYhzGq
 8pEhFzQ8/PchxJVYlnDI9rIh4nXFHOcomsktEOgUFKX9BOB53McqZAZ+bm9WpMgPH5dQA41MH3RNX
 gdJi1lSmcj6MQOWkgMoXvz68MquR/M7qh5qzC7OzzilVQBc28ybRmQS3Qv8aiyDuUpDcW0QBbn7ue
 eaOmeiFT+LyClPphBUnm6eODSkKdI3BZR99cdznwfGAn6bfdrCQ6WurAVs7xOrOl/+lh6+sZ4vAs1
 08W2uThVSwafeBQ2cBvrOxU9lF3EFerheFf7RGBcYayJMUm+Pw8MQLfsQRDkVK5NV/T4ndm+QgPqG
 5vOgcs9AA==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:45862)
 by pandora.armlinux.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <linux@armlinux.org.uk>)
 id 1m1SD7-0000ZE-JO; Thu, 08 Jul 2021 12:28:53 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1m1SD5-0003qP-1B; Thu, 08 Jul 2021 12:28:51 +0100
Date: Thu, 8 Jul 2021 12:28:51 +0100
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
Subject: Re: [PATCH v6 4/5] dts: marvell: Enable 10G interfaces on 9130-DB
 and 9131-DB boards
Message-ID: <20210708112850.GU22278@shell.armlinux.org.uk>
References: <20210708112528.3254-1-kostap@marvell.com>
 <20210708112528.3254-5-kostap@marvell.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210708112528.3254-5-kostap@marvell.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210708_043104_148598_4253C1CF 
X-CRM114-Status: GOOD (  15.13  )
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

On Thu, Jul 08, 2021 at 02:25:27PM +0300, kostap@marvell.com wrote:
> From: Stefan Chulski <stefanc@marvell.com>
> 
> This patch enables eth0 10G interface on CN9130-DB paltforms and
> eth0 10G and eth3 10G interfaces on CN9131-DB.
> 
> Signed-off-by: Stefan Chulski <stefanc@marvell.com>
> Signed-off-by: Konstantin Porotchkin <kostap@marvell.com>
> ---
>  arch/arm64/boot/dts/marvell/cn9130-db.dtsi | 2 +-
>  arch/arm64/boot/dts/marvell/cn9131-db.dtsi | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/marvell/cn9130-db.dtsi b/arch/arm64/boot/dts/marvell/cn9130-db.dtsi
> index 34274e061958..39fc90716454 100644
> --- a/arch/arm64/boot/dts/marvell/cn9130-db.dtsi
> +++ b/arch/arm64/boot/dts/marvell/cn9130-db.dtsi
> @@ -125,7 +125,7 @@
>  
>  /* SLM-1521-V2, CON9 */
>  &cp0_eth0 {
> -	status = "disabled";
> +	status = "okay";
>  	phy-mode = "10gbase-kr";

Are these really 10gbase-kr? Or should this be 10gbase-r ?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
