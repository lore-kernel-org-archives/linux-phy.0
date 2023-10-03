Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1308FE7544A
	for <linux-phy@archiver.kernel.org>; Tue,  3 Oct 2023 11:20:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ix784owJPcOE74IsbpHXsajc2tygfet0WaKsPCAFO0U=; b=ZmObnRN0OG51OX
	lTD42i3n2mkrNJo7bMuIj4IrlskGcDpYROGcVQhIbU+pyJ+Q4Kuyqb0U34cjaHT5rAhfK7LHNbW5T
	mnZZancqjLJOjoP0zOnZNx76JDCfGwwNDQ1TkNg2Wup/34H00w9hVGhsMjOq9DhRjiIDz7yfVxo5H
	ef6aGLA+DjFDtPnSHy+elnxGPcF2t5C3fPodgKg+eJqZHWc8Gayf07pmPkye1vEiySiKbbhYGKMt3
	cZcQ5MStUpBulsGI5v6dxmRz/SzeZop8x4Zlpy6F+vYhnTsc7RL7K4cmykOuqYVgiPSsSsirpyPsp
	6zkGE5fVcHDBWUU8PInQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qndRb-00EWcd-2a;
	Tue, 03 Oct 2023 11:20:03 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qndRY-00EWac-1P
	for linux-phy@lists.infradead.org;
	Tue, 03 Oct 2023 11:20:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=3WQtsnIMGU3EZC75/U7lh4It7npmOBkHEQvs4xM/XDs=; b=aavn7HoNfrpw9SVa81FqPKDf4a
	rkJiu/tRdgeUXh/cuL2QtIkZcKvjWiTqq6en38DvV2HNkpAykI5bBM0o2MrVZg2wlYpofS28FmgFO
	MxVyVfaulb+pQ/XkcZwVzIBHI7sWOr+S885g77Cxh/MOzpB+lEDpPqmX/YiUyh8FcMJddBxgR83cB
	jFKMebHrdXPTpyhZT7C+36PB3yMyeM9zL424iBQNgW2PtEkfOdGL42Q3WlHXKSMZWauNr/EQtqkd0
	p27nqbQEV3fORj6PVCRrtAlbayUFDamfgr9F2RtFvthe1dzG6Sxq5DmxuxShJQrCvW3kQs3G2bUfa
	TAdgqKSg==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:47706)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <linux@armlinux.org.uk>)
	id 1qndRO-0001ak-2X;
	Tue, 03 Oct 2023 12:19:50 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.94.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1qndRP-0007px-9b; Tue, 03 Oct 2023 12:19:51 +0100
Date: Tue, 3 Oct 2023 12:19:51 +0100
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
Subject: Re: [RFC PATCH v2 net-next 05/15] net: add 25GBase-KR-S and
 25GBase-CR-S to ethtool link mode UAPI
Message-ID: <ZRv4162uJ9pUVpR6@shell.armlinux.org.uk>
References: <20230923134904.3627402-1-vladimir.oltean@nxp.com>
 <20230923134904.3627402-6-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230923134904.3627402-6-vladimir.oltean@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231003_042000_473928_812C2F72 
X-CRM114-Status: UNSURE (   9.76  )
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

On Sat, Sep 23, 2023 at 04:48:54PM +0300, Vladimir Oltean wrote:
> diff --git a/include/uapi/linux/ethtool.h b/include/uapi/linux/ethtool.h
> index f7fba0dc87e5..421eb57fb6e9 100644
> --- a/include/uapi/linux/ethtool.h
> +++ b/include/uapi/linux/ethtool.h
> @@ -1787,6 +1787,8 @@ enum ethtool_link_mode_bit_indices {
>  	ETHTOOL_LINK_MODE_10baseT1S_Full_BIT		 = 99,
>  	ETHTOOL_LINK_MODE_10baseT1S_Half_BIT		 = 100,
>  	ETHTOOL_LINK_MODE_10baseT1S_P2MP_Half_BIT	 = 101,
> +	ETHTOOL_LINK_MODE_25000baseCR_S_Full_BIT	 = 102,
> +	ETHTOOL_LINK_MODE_25000baseKR_S_Full_BIT	 = 103,

Should these also be add to phylink_caps_to_linkmodes()'s MAC_25000FD
conditional block?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
