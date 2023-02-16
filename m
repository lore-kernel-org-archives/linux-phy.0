Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D201C61DA4
	for <linux-phy@archiver.kernel.org>; Thu, 16 Feb 2023 11:20:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fYkkQMBESi/jUfN8ndcF+VC3V3LsncttS/xyLSZxtdo=; b=NpR8GD4YfzwLb3
	ojzWOmSuVmsL/2k07j/Y5jKgler984jYCmgz1yNO2yySaFkmi1q5kXwqQPAoZE2JjzVp03wa0cShU
	avJWGFBpnbqJEILLvQUbQX0j00Kref6OwM0w0qE6UZTHujOUXmF9d6YMzjMhet8nLYTHVmxWWGjnI
	3NOWaSTPLbVUgBLEOAEuFkmvM/L28AdhUnFwnIMS9OkB5rWxigBrdtsDflVgIf+EW9lomM3rUF7CD
	tOv9hN5gj3LKlRlrJqmQRyazrWEKZIuq6b4eplo9VOT8nmOchl/dcZKQzxOiw+q5RFBX+d53/BvJE
	UE/Nvna+HBsrohlGZoBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pScJ4-009vAE-R1; Thu, 16 Feb 2023 11:20:06 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pScIz-009uYX-DT
	for linux-phy@lists.infradead.org; Thu, 16 Feb 2023 11:20:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=c3W/OHTUSIK1upohG2aWJfs7KtAZo7Enbm4Kuliw+kw=; b=ieZsLaCw8lRD+19/eiwDK5f0E3
	Jp/NRXrB/W8uGw9zuydF8wcqJY/SOSuRCPJTrtagWxVOTi1axuH+JEMZuUglxUkH+AMqyWmevdxn/
	6SBU/q9Q+8lnXju+k0Cr9FLG9YgzzF2AB97siXsvNydJvbBUU9iYJyJvXktGDn7eNVv7qnZaCZE/+
	k4LP3Gk7oZHE0fCgVN1udZJTmlRcKuAMqEUTaudXmkBLJAQffrTP3cu3ysZKH0XQrysmPtVsQPoi/
	TfaDqv9uE4dzTRrfyvuZdWGbnd7ClDA5EYhahbOf9hGzfzh9SgrmvorrNqI9fC3+4F5O54u5Bummu
	5n5P8/qg==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:55348)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1pScGu-0007xe-6H; Thu, 16 Feb 2023 11:17:52 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.94.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1pScGq-0005na-3K; Thu, 16 Feb 2023 11:17:48 +0000
Date: Thu, 16 Feb 2023 11:17:48 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Colin Foster <colin.foster@in-advantage.com>
Cc: linux-phy@lists.infradead.org, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Eric Dumazet <edumazet@google.com>,
	"David S. Miller" <davem@davemloft.net>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>, UNGLinuxDriver@microchip.com,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Manoil <claudiu.manoil@nxp.com>,
	Vladimir Oltean <vladimir.oltean@nxp.com>,
	Lee Jones <lee@kernel.org>
Subject: Re: [RFC v1 net-next 7/7] net: dsa: ocelot_ext: add support for
 external phys
Message-ID: <Y+4Q3PDlj+lVQAPx@shell.armlinux.org.uk>
References: <20230216075321.2898003-1-colin.foster@in-advantage.com>
 <20230216075321.2898003-8-colin.foster@in-advantage.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230216075321.2898003-8-colin.foster@in-advantage.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230216_032001_644943_28A247CF 
X-CRM114-Status: GOOD (  19.27  )
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

Hi Colin,

On Wed, Feb 15, 2023 at 11:53:21PM -0800, Colin Foster wrote:
> +static const struct phylink_mac_ops ocelot_ext_phylink_ops = {
> +	.validate		= phylink_generic_validate,

There is no need to set this anymore.

> +	.mac_config		= ocelot_ext_phylink_mac_config,
> +	.mac_link_down		= ocelot_ext_phylink_mac_link_down,
> +	.mac_link_up		= ocelot_ext_phylink_mac_link_up,
> +};
> +
> +static void ocelot_ext_pcs_get_state(struct phylink_pcs *pcs,
> +				     struct phylink_link_state *state)
> +{
> +	struct ocelot_ext_port_priv *port_priv =
> +		phylink_pcs_to_ocelot_port(pcs);
> +
> +	/* TODO: Determine state from hardware? */
> +}
> +
> +static int ocelot_ext_pcs_config(struct phylink_pcs *pcs, unsigned int mode,
> +				 phy_interface_t interface,
> +				 const unsigned long *advertising,
> +				 bool permit_pause_to_mac)
> +{
> +	struct ocelot_ext_port_priv *port_priv =
> +		phylink_pcs_to_ocelot_port(pcs);
> +
> +	switch (interface) {
> +	case PHY_INTERFACE_MODE_QSGMII:
> +		ocelot_ext_phylink_mac_config(&port_priv->phylink_config, mode,
> +					      NULL);

Why are you calling a "mac" operation from a "pcs" operation? If this
PCS is attached to the same phylink instance as the MAC, you'll get
the .mac_config method called along with the .pcs_config, so calling
one from the other really isn't necessary.

> +		break;
> +	default:
> +		break;
> +	}
> +
> +	return 0;
> +}
> +
> +static void ocelot_ext_pcs_an_restart(struct phylink_pcs *pcs)
> +{
> +	/* TODO: Restart autonegotiaion process */
> +}
> +
> +static void ocelot_ext_pcs_link_up(struct phylink_pcs *pcs, unsigned int mode,
> +				   phy_interface_t interface, int speed,
> +				   int duplex)
> +{
> +	struct ocelot_ext_port_priv *port_priv =
> +		phylink_pcs_to_ocelot_port(pcs);
> +
> +	ocelot_ext_phylink_mac_link_up(&port_priv->phylink_config, NULL, mode,
> +				       interface, speed, duplex, false, false);

Same here... and I fail to see why any of these need to be implemented
or what the purpose of providing this pcs code is.

> +}
> +
> +static const struct phylink_pcs_ops ocelot_ext_pcs_ops = {
> +	.pcs_get_state = ocelot_ext_pcs_get_state,
> +	.pcs_config = ocelot_ext_pcs_config,
> +	.pcs_an_restart = ocelot_ext_pcs_an_restart,
> +	.pcs_link_up = ocelot_ext_pcs_link_up,
>  };
>  
> +static int ocelot_ext_parse_port_node(struct ocelot *ocelot,
> +				      struct device_node *ports_node,
> +				      phy_interface_t phy_mode, int port)
> +{
> +	struct ocelot_ext_port_priv *ocelot_ext_port_priv;
> +	struct felix *felix = ocelot_to_felix(ocelot);
> +	struct ocelot_ext_priv *ocelot_ext_priv;
> +
> +	ocelot_ext_priv = felix_to_ocelot_ext_priv(felix);
> +
> +	ocelot_ext_port_priv = devm_kzalloc(ocelot->dev,
> +					    sizeof(*ocelot_ext_port_priv),
> +					    GFP_KERNEL);
> +	if (!ocelot_ext_port_priv)
> +		return -ENOMEM;
> +
> +	ocelot_ext_port_priv->ocelot = ocelot;
> +	ocelot_ext_port_priv->chip_port = port;
> +	ocelot_ext_port_priv->pcs.ops = &ocelot_ext_pcs_ops;
> +
> +	if (!felix->pcs)
> +		felix->pcs = devm_kcalloc(ocelot->dev, felix->info->num_ports,
> +					  sizeof(struct phylink_pcs *),
> +					  GFP_KERNEL);
> +
> +	if (!felix->pcs)
> +		return -ENOMEM;
> +
> +	felix->pcs[port] = &ocelot_ext_port_priv->pcs;
> +
> +	ocelot_ext_priv->port_priv[port] = ocelot_ext_port_priv;
> +
> +	ocelot_ext_port_priv->node = of_node_get(ports_node);
> +
> +	return 0;
> +}
> +
> +static int ocelot_ext_phylink_create(struct ocelot *ocelot, int port)
> +{
> +	struct ocelot_ext_port_priv *ocelot_ext_port_priv;
> +	struct felix *felix = ocelot_to_felix(ocelot);
> +	struct ocelot_ext_priv *ocelot_ext_priv;
> +	struct device *dev = ocelot->dev;
> +	struct ocelot_port *ocelot_port;
> +	struct device_node *portnp;
> +	phy_interface_t phy_mode;
> +	struct phylink *phylink;
> +	int err;
> +
> +	ocelot_ext_priv = felix_to_ocelot_ext_priv(felix);
> +	ocelot_port = ocelot->ports[port];
> +	ocelot_ext_port_priv = ocelot_ext_priv->port_priv[port];
> +
> +	if (!ocelot_ext_port_priv)
> +		return 0;
> +
> +	portnp = ocelot_ext_port_priv->node;
> +	phy_mode = ocelot_port->phy_mode;
> +
> +	/* Break out early if we're internal...? */
> +	if (phy_mode == PHY_INTERFACE_MODE_INTERNAL)
> +		return 0;
> +
> +	if (phy_mode == PHY_INTERFACE_MODE_QSGMII)
> +		ocelot_port_rmwl(ocelot_port, 0,
> +				 DEV_CLOCK_CFG_MAC_TX_RST |
> +				 DEV_CLOCK_CFG_MAC_RX_RST,
> +				 DEV_CLOCK_CFG);
> +
> +	if (phy_mode != PHY_INTERFACE_MODE_INTERNAL) {
> +		struct phy *serdes = of_phy_get(portnp, NULL);
> +
> +		if (IS_ERR(serdes)) {
> +			err = PTR_ERR(serdes);
> +			dev_err_probe(dev, err,
> +				      "missing SerDes phys for port %d\n",
> +				      port);
> +			return err;
> +		}
> +
> +		err = phy_set_mode_ext(serdes, PHY_MODE_ETHERNET, phy_mode);
> +		of_phy_put(serdes);
> +		if (err) {
> +			dev_err(dev,
> +				"Could not set SerDes mode on port %d: %pe\n",
> +				port, ERR_PTR(err));
> +			return err;
> +		}
> +	}
> +
> +	ocelot_ext_port_priv->phylink_config.dev = dev;
> +	ocelot_ext_port_priv->phylink_config.type = PHYLINK_DEV;
> +	ocelot_ext_port_priv->phylink_config.mac_capabilities = MAC_ASYM_PAUSE |
> +		MAC_SYM_PAUSE | MAC_10 | MAC_100 | MAC_1000FD | MAC_2500FD;
> +
> +	__set_bit(ocelot_port->phy_mode,
> +		  ocelot_ext_port_priv->phylink_config.supported_interfaces);
> +
> +	phylink = phylink_create(&ocelot_ext_port_priv->phylink_config,
> +				 of_fwnode_handle(portnp),
> +				 phy_mode, &ocelot_ext_phylink_ops);

I'm confused. DSA already sets up a phylink instance per port, so why
do you need another one?

Thanks.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
