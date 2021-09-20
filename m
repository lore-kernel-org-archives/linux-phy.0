Return-Path: <SRS0=0RCf=OK=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1389DC433EF
	for <linux-phy@archiver.kernel.org>; Mon, 20 Sep 2021 11:52:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C971560F56
	for <linux-phy@archiver.kernel.org>; Mon, 20 Sep 2021 11:52:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C971560F56
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=lunn.ch
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sJKaRY1UzYVjoTrxrESq57QAPER7Zw10kPBSKdkCuLI=; b=Hspq7VaOZGCw4o
	pY1MzHP12VO4sjjndBhgzN1uwTDwMGTssTvHb7Qv3VvpvT9C5S2qZLiZ81ED5eJBCsKw3j+hJTzcN
	mOhHpGrdd1NaKYAv5RN5tKMplfyOHRP4AYSBx5VtfeFFBroQX1buJ0ww12xn3T3RhfCkneF8GQya7
	B4M03snzq7RURVTX+gMLELUDf9XxEdpE3yrvvrvvSnV/+zMvXdf7w+ZZK+cWv4q6rFSzd9QhTOj+U
	bFePaeLiehuahVzfpvU2bYNr8pOPyWAt9ZvjFXwsCJh5qgGjSTpwa/SLwj3OHl4B6ZXx5bOSHa2/h
	n1DyJJBGkn/G5Yv4W8kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSHqa-001TRf-Bx; Mon, 20 Sep 2021 11:52:32 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSHqY-001TQb-01
 for linux-phy@lists.infradead.org; Mon, 20 Sep 2021 11:52:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=yGE8gpbmE7JEaUwJzRYJcDw6OeJj0fv2qAbkqApHilU=; b=v8ypol8CHDW+nq/kmj6lcE3eP5
 IqSiooPJCsz5hzR9c7OrsObf4jclmAW9+rLtNr1Vea8nQaCEyfoXMLkfYzfDIRsjpQuNpP8n5IxjF
 ba4WqRbR9MAKoZxT66EtLc569vI/AV0bbLjbyhC1iIzVgQ92D1F9StzFQOYn+ANSfxPo=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1mSHqA-007UX0-Ba; Mon, 20 Sep 2021 13:52:06 +0200
Date: Mon, 20 Sep 2021 13:52:06 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: davem@davemloft.net, kuba@kernel.org, robh+dt@kernel.org,
 linux@armlinux.org.uk, f.fainelli@gmail.com,
 alexandre.belloni@bootlin.com, vladimir.oltean@nxp.com,
 UNGLinuxDriver@microchip.com, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-pm@vger.kernel.org
Subject: Re: [RFC PATCH net-next 01/12] net: mdio: mscc-miim: Fix the mdio
 controller
Message-ID: <YUh15ieAzBiCVeX9@lunn.ch>
References: <20210920095218.1108151-1-horatiu.vultur@microchip.com>
 <20210920095218.1108151-2-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210920095218.1108151-2-horatiu.vultur@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210920_045230_080805_DCCC653F 
X-CRM114-Status: GOOD (  11.38  )
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

On Mon, Sep 20, 2021 at 11:52:07AM +0200, Horatiu Vultur wrote:
> According to the documentation the second resource is optional. But the
> blamed commit ignores that and if the resource is not there it just
> fails.
> 
> This patch reverts that to still allow the second resource to be
> optional because other SoC have the some MDIO controller and doesn't
> need to second resource.
> 
> Fixes: 672a1c394950 ("net: mdio: mscc-miim: Make use of the helper function devm_platform_ioremap_resource()")
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>

Hi Moratiu

The script kiddies might come long and 'fix' this again. Maybe
consider adding devm_platform_ioremap_resource_optional(), following
the pattern of other _optional() API calls. Otherwise add a comment.

    Andrew

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
