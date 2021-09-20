Return-Path: <SRS0=0RCf=OK=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0CCE6C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 20 Sep 2021 13:54:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8921D61019
	for <linux-phy@archiver.kernel.org>; Mon, 20 Sep 2021 13:54:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8921D61019
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=armlinux.org.uk
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KqXylPSEg7sQEMof6OaEcsaIP60ZouRw7va+sJDZYE4=; b=3XpSlkh2wyjkQs
	wzCuNSFTY7v93p6eo86042BbfrgBuMAcbmtRnFcZBdLS5xeby1pAG9iw7kAHe3HMn3x3XBYEQ6u3q
	egAl8XIbdkDfRxyhkz7LY0MBN6KdD/hVCxCkSA64ZPMqJbkTO5X5BBqP2VWhZhPpK9E9pjlNwuuc5
	n7yipksKmccA1L+ppn6HWQdkpET9fWc9V7edpBshiFfNeidmHnLB4AqAinuQRDx5uogIPr0A2ab75
	fFnOGHTfDUivf0t34nXSCxStbvuode6VfCirx+FX8ggV0oKiGznqj5npkQriMpBmGDFutilaUgjVY
	tVgQYTLxIPoJ7JjAdh5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSJkn-001qXR-2i; Mon, 20 Sep 2021 13:54:41 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSJkj-001qWF-IC
 for linux-phy@lists.infradead.org; Mon, 20 Sep 2021 13:54:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ml6l0rn52QlsFUnOCfmpKHL/TyYLnkrCtmGMxVRDliA=; b=yd65DEFZ25sB3j/ggV0Xl+wDsh
 phEeQ/Xfp/Ie5T4Emv+TWwNaWVoIe7ZNgyAEWfMmTDNu/nY+MHAGAEoBfMPigvGdh1DQg0FmtdtKK
 Oo2gOJYUvAqfda08B9g5n6BcoOnN6GGYZvkfenUxmMojG/0LY0BEUw+F5FfCQnmjKl6zvZFrW4B71
 WaWkKs0Tu8dwAfsYwfsNoYbGoew4mMDznzGpfzGjTMvLToDfCfSioUQc4o9AI4b7FKTbZJ5KQqU/7
 8T9bAiwzoFOGh2xqQsFW5OQkA2wWLKZisi0iVvUUy5BmkaZ2S0UdPdm2kyaPawR1DIUaI/NfBR+Md
 0+j7LgZw==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:54674)
 by pandora.armlinux.org.uk with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux@armlinux.org.uk>)
 id 1mSJkb-0001fr-D8; Mon, 20 Sep 2021 14:54:29 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.94.2)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1mSJkY-0002LQ-Tm; Mon, 20 Sep 2021 14:54:26 +0100
Date: Mon, 20 Sep 2021 14:54:26 +0100
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: davem@davemloft.net, kuba@kernel.org, robh+dt@kernel.org,
 andrew@lunn.ch, f.fainelli@gmail.com, alexandre.belloni@bootlin.com,
 vladimir.oltean@nxp.com, UNGLinuxDriver@microchip.com,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-pm@vger.kernel.org
Subject: Re: [RFC PATCH net-next 10/12] net: lan966x: add port module support
Message-ID: <YUiSkpRvvL0fvija@shell.armlinux.org.uk>
References: <20210920095218.1108151-1-horatiu.vultur@microchip.com>
 <20210920095218.1108151-11-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210920095218.1108151-11-horatiu.vultur@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210920_065437_653990_593862F1 
X-CRM114-Status: GOOD (  14.48  )
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

On Mon, Sep 20, 2021 at 11:52:16AM +0200, Horatiu Vultur wrote:
> +static void lan966x_cleanup_ports(struct lan966x *lan966x)
> +{
> +	struct lan966x_port *port;
> +	int portno;
> +
> +	for (portno = 0; portno < lan966x->num_phys_ports; portno++) {
> +		port = lan966x->ports[portno];
> +		if (!port)
> +			continue;
> +
> +		if (port->phylink) {
> +			rtnl_lock();
> +			lan966x_port_stop(port->dev);
> +			rtnl_unlock();
> +			port->phylink = NULL;

This leaks the phylink structure. You need to call phylink_destroy().

>  static int lan966x_probe_port(struct lan966x *lan966x, u8 port,
>  			      phy_interface_t phy_mode)
>  {
>  	struct lan966x_port *lan966x_port;
> +	struct phylink *phylink;
> +	struct net_device *dev;
> +	int err;
>  
>  	if (port >= lan966x->num_phys_ports)
>  		return -EINVAL;
>  
> -	lan966x_port = devm_kzalloc(lan966x->dev, sizeof(*lan966x_port),
> -				    GFP_KERNEL);
> +	dev = devm_alloc_etherdev_mqs(lan966x->dev,
> +				      sizeof(struct lan966x_port), 8, 1);
> +	if (!dev)
> +		return -ENOMEM;
>  
> +	SET_NETDEV_DEV(dev, lan966x->dev);
> +	lan966x_port = netdev_priv(dev);
> +	lan966x_port->dev = dev;
>  	lan966x_port->lan966x = lan966x;
>  	lan966x_port->chip_port = port;
>  	lan966x_port->pvid = PORT_PVID;
>  	lan966x->ports[port] = lan966x_port;
>  
> +	dev->max_mtu = ETH_MAX_MTU;
> +
> +	dev->netdev_ops = &lan966x_port_netdev_ops;
> +	dev->needed_headroom = IFH_LEN * sizeof(u32);
> +
> +	err = register_netdev(dev);
> +	if (err) {
> +		dev_err(lan966x->dev, "register_netdev failed\n");
> +		goto err_register_netdev;
> +	}

register_netdev() publishes the network device.

> +
> +	lan966x_port->phylink_config.dev = &lan966x_port->dev->dev;
> +	lan966x_port->phylink_config.type = PHYLINK_NETDEV;
> +	lan966x_port->phylink_config.pcs_poll = true;
> +
> +	phylink = phylink_create(&lan966x_port->phylink_config,
> +				 lan966x_port->fwnode,
> +				 phy_mode,
> +				 &lan966x_phylink_mac_ops);

phylink_create() should always be called _prior_ to the network device
being published. In any case...

> +	if (IS_ERR(phylink))
> +		return PTR_ERR(phylink);

If this fails, this function returns an error, but leaves the network
device published - which is a bug in itself.

> +static void lan966x_phylink_mac_link_down(struct phylink_config *config,
> +					  unsigned int mode,
> +					  phy_interface_t interface)
> +{

Hmm? Shouldn't this do something?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
