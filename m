Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 467F6E75459
	for <linux-phy@archiver.kernel.org>; Tue,  3 Oct 2023 13:14:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i88Diok4yyxQYKrkeILf8v1LKNpEI+Sxbdy4XEwk0XA=; b=M1hZwxmIHZLk4c
	LP2+PhLqKmn8MeH84dBqzjvLiIPiG5UJdxkZPi272weBZL1EBtVRyRs76+01wfu0Ueg1MRNxLJ4pd
	yLIE5TqvCjaAlH0bhcsWLKirVGjeLvzvhN4LNRXmDuxWmJFa7bajK8tX89IB3M8z+8zyS7b8zVaqY
	ZToNXCce2szeryi0Ibl5/ipmuX3ux3kIA4Lby7LW1biJANILv3AZV3Zc2kDuax0LY75K2UeAUdaja
	ohi/1+DXZAd9ILOJYEwXs0HBkEmUWXcnVPHZfPuyMvuNZXpN7rUw9qSwsURaz1tR3GFgp9bo1mJO9
	xwDHlVsaT1wSCDNgxgiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnfEf-00Egsf-39;
	Tue, 03 Oct 2023 13:14:49 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnfEc-00Egs2-08
	for linux-phy@lists.infradead.org;
	Tue, 03 Oct 2023 13:14:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ZBWxmjNd8vCby7186bpocAw7l6dn7FqP/N8fvvIhwNQ=; b=ZbZ5sNuyOVjEKuk2Kc6owm9Oi+
	CVbKdlROVMemxNuPYLOm079PCNAxkqdn4FkkzHPaSiU9q0vd2xEwwJTLyUjb7sxEkJ9v6Se+YR+mO
	hyMHF6d2oMlZaBrzFAiWx0N5ARTRfQipZyGr28fZWLkAQfYIy1bRiOaRD2/jWOamKQD5/W8Rodx1t
	EZXxuHLGJBUvOFkHWeqIOCy45AXwGibkSc0bqIy27Um1+1UC0vQzlqX6CSDkf9vPyCSvEZPDhz9WV
	cui5XvDfIapsKVW+mDOebBgACDtLVTHwl3AlSmnPOOB/5KoWZS3z7Y3ZT3iGso8tvkovDyikqzr49
	EwUqFH0Q==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:38818)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <linux@armlinux.org.uk>)
	id 1qnfEW-0001l1-2j;
	Tue, 03 Oct 2023 14:14:40 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.94.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1qnfEX-0007v4-3o; Tue, 03 Oct 2023 14:14:41 +0100
Date: Tue, 3 Oct 2023 14:14:41 +0100
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
Subject: Re: [RFC PATCH v2 net-next 15/15] net: pcs: lynx: use MTIP AN/LT
 block for copper backplanes
Message-ID: <ZRwTwd18xWczDnur@shell.armlinux.org.uk>
References: <20230923134904.3627402-1-vladimir.oltean@nxp.com>
 <20230923134904.3627402-16-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230923134904.3627402-16-vladimir.oltean@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231003_061446_075353_7177C7E2 
X-CRM114-Status: GOOD (  22.64  )
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

On Sat, Sep 23, 2023 at 04:49:04PM +0300, Vladimir Oltean wrote:
> +static int lynx_pcs_parse_fwnode(struct lynx_pcs *lynx)
> +{
> +	struct fwnode_handle *node = lynx->mdio->dev.fwnode;
> +	enum mtip_model model = MTIP_MODEL_AUTODETECT;
> +	struct device_node *np = to_of_node(node);
> +	struct mdio_device *mdio = lynx->mdio;
> +	struct device *dev = &mdio->dev;
> +	struct phy *phy;
> +	int i, err;
> +
> +	if (!node)
> +		return 0;
> +
> +	lynx->backplane_mode = fwnode_property_present(node, "fsl,backplane-mode");
> +	if (!lynx->backplane_mode)
> +		return 0;
> +
> +	if (fwnode_device_is_compatible(node, "fsl,lx2160a-lynx-pcs"))
> +		model = MTIP_MODEL_LX2160A;
> +
> +	lynx->num_lanes = of_count_phandle_with_args(np, "phys", "#phy-cells");
> +	if (lynx->num_lanes < 0)
> +		return lynx->num_lanes;

Is it possible for ->num_lanes to be zero at this point? If that is
possible, then ->anlt[PRIMARY_LANE] will be NULL but ->backplane_mode
will be set, so won't that cause the mtip_* calls above to pass a
NULL pointer into those functions? Is that safe? Should we trap that
case here?

If that's correct, then I don't see any point in storing
->backplane_mode, since we can then use ->num_lanes > PRIMARY_LANE
or similar instead.

> +
> +	if (WARN_ON(lynx->num_lanes > MAX_NUM_LANES))
> +		return -EINVAL;

Do we need to use WARN_ON() here, or would it be better to print a short
error-level message?

> +
> +	for (i = 0; i < lynx->num_lanes; i++) {
> +		phy = devm_of_phy_get_by_index(dev, np, i);
> +		if (IS_ERR(phy))
> +			return dev_err_probe(dev, PTR_ERR(phy),
> +					     "Failed to get SerDes PHY %d\n", i);
> +
> +		lynx->anlt[i] = mtip_backplane_create(mdio, phy, model);
> +		if (IS_ERR(lynx->anlt[i])) {
> +			err = PTR_ERR(lynx->anlt[i]);
> +
> +			while (i-- > 0)
> +				mtip_backplane_destroy(lynx->anlt[i]);
> +
> +			return err;
> +		}
> +	}
> +
> +	for (i = 1; i < lynx->num_lanes; i++) {
> +		err = mtip_backplane_add_subordinate(lynx->anlt[PRIMARY_LANE],
> +						     lynx->anlt[i]);
> +		if (WARN_ON(err)) {

Again, does this need to be a backtrace-producing WARN_ON()?

> +			/* Too many SerDes lanes in the device tree? */
> +			for (i = 0; i < lynx->num_lanes; i++)
> +				mtip_backplane_destroy(lynx->anlt[i]);
> +			return err;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
>  static struct phylink_pcs *lynx_pcs_create(struct mdio_device *mdio)
>  {
>  	struct lynx_pcs *lynx;
> +	int err;
>  
>  	lynx = kzalloc(sizeof(*lynx), GFP_KERNEL);
>  	if (!lynx)
> @@ -327,6 +451,12 @@ static struct phylink_pcs *lynx_pcs_create(struct mdio_device *mdio)
>  	lynx->pcs.neg_mode = true;
>  	lynx->pcs.poll = true;
>  
> +	err = lynx_pcs_parse_fwnode(lynx);
> +	if (err) {
> +		kfree(lynx);
> +		return ERR_PTR(err);
> +	}
> +
>  	return lynx_to_phylink_pcs(lynx);
>  }
>  
> @@ -392,6 +522,11 @@ EXPORT_SYMBOL_GPL(lynx_pcs_create_fwnode);
>  void lynx_pcs_destroy(struct phylink_pcs *pcs)
>  {
>  	struct lynx_pcs *lynx = phylink_pcs_to_lynx(pcs);
> +	int i;
> +
> +	if (lynx->backplane_mode)
> +		for (i = 0; i < lynx->num_lanes; i++)
> +			mtip_backplane_destroy(lynx->anlt[i]);

Won't ->num_lanes only be non-zero when ->backplane_mode is set, so
isn't the test for ->backplane_mode redundant here?

>  
>  	mdio_device_put(lynx->mdio);
>  	kfree(lynx);
> -- 
> 2.34.1
> 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
