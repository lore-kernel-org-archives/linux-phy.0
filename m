Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 993D9EE49A5
	for <linux-phy@archiver.kernel.org>; Mon, 21 Aug 2023 18:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dIBDJdWHi80Dsz0BTMj1bG5tXxXwABnqpFcvI72n9Bs=; b=NW3lgfMkUPwGjL
	+WSVozCWq4Dc+LoFNVsQSrHjKVQWnKJ++YIyJPcnrTmED7LmTS6Jq6GHUIRVlLA/K7f1BKCWUI+Uf
	wmPuiu6HPg38s0Eal0A+uqOIsSNATw6LgA9o2+QwBrREce8Pr7lq/k2Ss4VVy/mJZoIjH4l1U38Ec
	UV7hA2mADBMm6WUk+rhOonVAO4qsv6VA8Tk5Ucs+T8v6GqJmB2fw/FZDxOdM2tP0rUawWWA4Ayn8h
	zQD7K6XtPN4Nd+nA54rgxDIwhVovWfD1cdwSGXPWtgB2l0hptsWBb54mMfkW1Cybv+mnyGkPW8lQ1
	ECKLWpzJSjsuoO8lesVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qY9Pt-00EVXJ-0x;
	Mon, 21 Aug 2023 18:14:17 +0000
Received: from [2001:4d48:ad52:32c8:5054:ff:fe00:142] (helo=pandora.armlinux.org.uk)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qY9Pp-00EVVI-2l
	for linux-phy@lists.infradead.org;
	Mon, 21 Aug 2023 18:14:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=PFfiLCI2R7ATd6hcl7JXyE5Uz7TCFK+2Vv1ns3pt91Q=; b=I5+khQo/td8bEtwQS2sgNHr64q
	LqVFlxc7i9m07+ofNwwnPeIAGnS+U+P+aUHcuSk79D1gmKXJPNTY1Ihmo75J/wbWxD5c8KBtiAowe
	N8AVwNfMVwi0rvhiSnXgxoozq0NiVd13vovvpyWDSTt3pcfIJEEeadRcPiPXWxqyJKXKrc3lyUdQg
	/oI36FyWw+LO3Wr/kg33z1QwwQmXmift2EvYvBz0gUW5AEzz+Mt248wTWkipqIsLDJEUvlW+J0VAT
	bkiaoKeQIb6yXU21LDe/CvBK1enMQwwOboxoLzUJxLlv17ImM/HIKT6ids9lXVWLgC256fpqhhy5d
	Nnusltgw==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:57594)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <linux@armlinux.org.uk>)
	id 1qY9Pi-0000NZ-2A;
	Mon, 21 Aug 2023 19:14:06 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.94.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1qY9Pg-0004zN-Bn; Mon, 21 Aug 2023 19:14:04 +0100
Date: Mon, 21 Aug 2023 19:14:04 +0100
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
Subject: Re: [RFC PATCH net-next 2/8] phy: introduce the
 PHY_MODE_ETHERNET_PHY mode for phy_set_mode_ext()
Message-ID: <ZOOpbBX7MoZ0s1L/@shell.armlinux.org.uk>
References: <20230817150644.3605105-1-vladimir.oltean@nxp.com>
 <20230817150644.3605105-3-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230817150644.3605105-3-vladimir.oltean@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230821_111413_914043_10B4768F 
X-CRM114-Status: UNSURE (   9.71  )
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

On Thu, Aug 17, 2023 at 06:06:38PM +0300, Vladimir Oltean wrote:
> As opposed to PHY_MODE_ETHERNET which takes a phy_interface_t as is
> expected to be used by an Ethernet MAC driver, PHY_MODE_ETHERNET takes
> an enum ethtool_link_mode_bit_indices and expects to be used by an
> Ethernet PHY driver.

This doesn't seem to be correct. I think one of your PHY_MODE_ETHERNET
above should be PHY_MODE_ETHERNET_PHY - but maybe instead it should
be PHY_MODE_ETHTOOL so that it's clearly different and doesn't get
confused with PHY_MODE_ETHERNET ?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
