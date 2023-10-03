Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9C69E75450
	for <linux-phy@archiver.kernel.org>; Tue,  3 Oct 2023 11:28:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z++ezjysbNRqeT14mdkKNNc482nlicu6pcGMNiUB1q0=; b=ECRy4FjKSgH6iL
	Ix+SeOmCQAPvKg+JAZZk9YOQvD8T6RA8DiRawW9nGFp8cLvXq/g/078a7MgZ7vtaKpwcOdrkl1/8e
	NCi/IWCt64wGV+fS0L1cipZLCs9PxWNpSgEJ5QeGgwOhF8fkrdWduYHj1AZEFEZA9ir7VTkci8dGp
	1Z68hPuC9gbmgDMdkbV50nZzHloze8Q2qxMaqQFaz7v8FjjPu8xxbyCLvunrHC/f0QaukYwFcNdro
	8gYr7vhyamu7v4t+IJIS/N2QK573/xFU8Aus655sz0yG4D87Rj3xRAFrxeBtWAWQXkDb7ibI5YBOI
	85/8iObnWzs56Fty+fNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qndZL-00EXAp-1k;
	Tue, 03 Oct 2023 11:28:03 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qndZJ-00EXAN-08
	for linux-phy@lists.infradead.org;
	Tue, 03 Oct 2023 11:28:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=tK8pzkcsxIaL3oiwk6+iWM2JEPMsTxZXWPkeUbBVdRk=; b=nofYjpUbyQd0PTxPAjDablBAUV
	kF9bPAbgGYPHQaHk13Ek8xwnG/fs4mx+dyWyCEcvDv87s7wipvXC+2+uFrdswoSCOFaGrLd+QFHrU
	do+E8ZSsR4/rxwPLj99FNyQP5wC/YNRQPnKwnbQcz82mlbF67W80bRVzdYCpuQrIdTNLbiroFgj7p
	kM80hUhUY/67hjSqkOBZmBgoOdLhetxIgGhcIw0jZkcMyqHd2rxc7J8qp3riwa5kKH3x0DmOAmFCC
	aBsOF0hpnhZwCT+G/WDT1V1oq9oXJkmn1jK5mEPClpOY63wVijsIQljA5Zy09ujZVV42NhVAISEZ5
	kGs/6WpQ==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:51456)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <linux@armlinux.org.uk>)
	id 1qndZD-0001bn-2k;
	Tue, 03 Oct 2023 12:27:56 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.94.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1qndZE-0007q8-7J; Tue, 03 Oct 2023 12:27:56 +0100
Date: Tue, 3 Oct 2023 12:27:56 +0100
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Madalin Bucur <madalin.bucur@nxp.com>,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Camelia Groza <camelia.groza@nxp.com>, Li Yang <leoyang.li@nxp.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor@kernel.org>,
	Sean Anderson <sean.anderson@seco.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Subject: Re: [RFC PATCH v2 net-next 07/15] net: phylink: centralize
 phy_interface_mode_is_8023z() && phylink_autoneg_inband() checks
Message-ID: <ZRv6vNJhvVI9/1RX@shell.armlinux.org.uk>
References: <20230923134904.3627402-1-vladimir.oltean@nxp.com>
 <20230923134904.3627402-8-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230923134904.3627402-8-vladimir.oltean@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231003_042801_084390_6ABBAC74 
X-CRM114-Status: UNSURE (   9.32  )
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

On Sat, Sep 23, 2023 at 04:48:56PM +0300, Vladimir Oltean wrote:
> In a future change, we will extend the PHY interface modes for which
> phylink allows the PCS to handle autoneg. Group the existing occurences
> into a common phylink_pcs_handles_an().

I don't see anything wrong with this change, despite my comments on the
next patch. However, including INTERNAL in this may cause problems with
DSA. I think maybe these two patches need to be tested on DSA setups
that make use of INTERNAL.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
