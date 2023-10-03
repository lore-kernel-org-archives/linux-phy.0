Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 383FEE7544F
	for <linux-phy@archiver.kernel.org>; Tue,  3 Oct 2023 11:31:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5lDZE2x3JX/ruCgOkNCFGKz8SicnacZDDYLcaHNLiH4=; b=zxUiR3Vam+te0C
	X4HEdlcXKKXSWt/51UQEHa05inPvLcwOVzGWxytsDJc7+7kAWda+zY+tS8LD81O6sa5joFWqGgKdn
	JSkX1ihzY2PjjvClVrAbBiYtsGLFfYkZBwmH8s8zv4WmljAh4TodHiqOZCI7OF+A6hwfXf2O2Dkwk
	EtE8eTCRdQ/d9mIgenPxlqMvWXzTv1cGi+l2NPk1Dwt4013EaF4IHMgg+kQAK34L80yx0YaEs5Ow1
	UshQ33wRnnzfWSr06652d9gi9+C4Mg32pUUjysduNrQ6a+x0yqruwD/vBYPiBawWWVJcErqsidjEA
	jpak2SupA0tj/Ivdgt1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qndd1-00EXe3-2y;
	Tue, 03 Oct 2023 11:31:51 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qndcz-00EXdY-0D
	for linux-phy@lists.infradead.org;
	Tue, 03 Oct 2023 11:31:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=734NRbey6LNjF6R5LmBVtB+1cSnVkKre8lbeKBodetI=; b=PDYW7AztC1pHCw3wGKmtfkTHpB
	qj19+US3uAB2HwkhlhO86L6h02RzPk0PWcq3io2UnD+bjI+0shQgSJzlZxRcYXZsJz+7LDqoRnIPl
	7dCNP23mJCMiKLcAPolrhJ1wR+QcNpKGyncU/Z2s04bMIc+awnwq0CE7P9RnIALNASEH7Yty2cSlL
	EB558/UW88bbx/d8MIQTArGbwcT5EM1AKJf/wgFlEX+VhdGysJAdnksI/DRclkRWhcu3urr0AExgo
	MsHQ4Cc4RUaS+uyEJWzBYw63aMX6swqd5tLrnSE7Jg558ST27F4PyDUnwFhmpQkPIMhvGZgM8oWYI
	yfl3fh1g==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:57792)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <linux@armlinux.org.uk>)
	id 1qndcw-0001cu-03;
	Tue, 03 Oct 2023 12:31:46 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.94.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1qndcx-0007qY-0s; Tue, 03 Oct 2023 12:31:47 +0100
Date: Tue, 3 Oct 2023 12:31:46 +0100
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
Subject: Re: [RFC PATCH v2 net-next 11/15] net: phylink: support the
 25GBase-KR-S and 25GBase-CR-S link modes too
Message-ID: <ZRv7oicdAgyzZYPi@shell.armlinux.org.uk>
References: <20230923134904.3627402-1-vladimir.oltean@nxp.com>
 <20230923134904.3627402-12-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230923134904.3627402-12-vladimir.oltean@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231003_043149_107614_8D85FF3A 
X-CRM114-Status: UNSURE (   9.20  )
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

On Sat, Sep 23, 2023 at 04:49:00PM +0300, Vladimir Oltean wrote:
> Treat the newly introduced subsets of 25GBase-KR and 25GBase-CR the same
> way as the fully-featured link modes. The difference only consists in
> RS-FEC support.

As mentioned in the patch adding these new linkmodes, I wonder whether
this should be part of that patch. Is there a reason to keep it
separate?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
