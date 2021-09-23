Return-Path: <SRS0=xaqD=ON=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 37ED0C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 23 Sep 2021 08:01:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E613561215
	for <linux-phy@archiver.kernel.org>; Thu, 23 Sep 2021 08:01:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E613561215
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0CDcn+4Z1JCQ/mztW28yHlUIhiBQmHSlJSrRmblQf3w=; b=iLmjie4faGdzyC
	pQ+NLPcQCzYUusncE7DrbW02kI/KKeg/b2JtAUVpoIbcJMWBeqZa+PHK/sfp5Uyyoqf1VcPZSxrQ/
	1dWPmm8PvQHb//p5fgPOAPx2I0Zb6qYXSQCYGUF1aI0R9twnWFHLk7OjMQKP8QB/1ioWBj6JvwESg
	UnzLWprTutweGGalPJNbXM6SdISdxn9MuMXJQPKmvg02zl2S/Py5BxDq3hrNLq7Ps4tpA3x2cMYPo
	wFB3576mZPQxA6B02OpElY0t1goODIjY/YtEaJ2WTYFLeeH9SI90Ftu+QDeXAonEzuU0EqqythFgN
	AubvAuGMMYPcv17uSxRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mTJfS-00AaWR-GG; Thu, 23 Sep 2021 08:01:18 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mTJfM-00AaUj-7d
 for linux-phy@lists.infradead.org; Thu, 23 Sep 2021 08:01:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1632384072; x=1663920072;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=WYny+JtM14LGY8ybiycqCdBduZdzBrvRWNVNMawq9uo=;
 b=lpVOEP0zZZd4SVqhLxNbviseAmAuuRTTAvMwwpqlL52MPA0BiEFPhean
 WuZ89KubrTvliJkwzYKcXRhuLnuluu9kNvpSVApmIamXe/Zb51js9/0R8
 L4oUzE9FHEVF8zZk2AhWLahU4LiWNLI+Hwcz5kx2sQ1KK/zJoLtdEtSqx
 mlY8RX/Kkm3eIi2uZuGY66Wj5Sa3DvZ8fNZg5XxNILlBvppokPgNLsWfS
 qWa+5ScAkY1uvj8KK7kpxZy2cSYUXi1N/qRQ+Wjjn+KJJqvGgq1rCGdsx
 exlfRxb3yex9XhTEXaCsC4jKS69p6F10KwW/t1TRM32xUAh+ZJ2pIrqWY w==;
IronPort-SDR: 8TQx98vnj7J6asqOL3DMtxQAVE6uI+QpIf/19c+/I5MxgRCG0Sd+QDGwV7jPbMaK+704azDPP8
 uboc08sNjV05bqX72tFSVNUTIy3LycPf6HQJ3xGroq447wJWMfBdM5Tnq0FY2+YRUWy4l9uoKR
 Yb9lJvTdeFdkWlyI3bAyDv8Yznji4nGq698fNOsV4j0+Bo8/wKojZUARNAXyJYgASyTjgpu77M
 Nibn/AuWuZpqkk9G12g40lrnbYiyJKM25bdKBlSAGe4VYP3O47Tw38kcTs1d2gm8NNqGFDP+jr
 rZ7ffdvJkdd5rjVyWBKBtKlr
X-IronPort-AV: E=Sophos;i="5.85,316,1624345200"; d="scan'208";a="137634402"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Sep 2021 01:01:07 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Thu, 23 Sep 2021 01:01:07 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.2176.14 via Frontend
 Transport; Thu, 23 Sep 2021 01:01:07 -0700
Date: Thu, 23 Sep 2021 10:02:36 +0200
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
CC: <davem@davemloft.net>, <kuba@kernel.org>, <robh+dt@kernel.org>,
 <andrew@lunn.ch>, <f.fainelli@gmail.com>, <alexandre.belloni@bootlin.com>,
 <vladimir.oltean@nxp.com>, <UNGLinuxDriver@microchip.com>,
 <netdev@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-pm@vger.kernel.org>
Subject: Re: [RFC PATCH net-next 10/12] net: lan966x: add port module support
Message-ID: <20210923080236.mqnb7shs2x6rzmh2@soft-dev3-1.localhost>
References: <20210920095218.1108151-1-horatiu.vultur@microchip.com>
 <20210920095218.1108151-11-horatiu.vultur@microchip.com>
 <YUiSkpRvvL0fvija@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YUiSkpRvvL0fvija@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210923_010112_347111_9BC5053D 
X-CRM114-Status: GOOD (  20.87  )
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

The 09/20/2021 14:54, Russell King (Oracle) wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe

Hi Russell,

> 
> On Mon, Sep 20, 2021 at 11:52:16AM +0200, Horatiu Vultur wrote:
> > +static void lan966x_cleanup_ports(struct lan966x *lan966x)
> > +{
> > +     struct lan966x_port *port;
> > +     int portno;
> > +
> > +     for (portno = 0; portno < lan966x->num_phys_ports; portno++) {
> > +             port = lan966x->ports[portno];
> > +             if (!port)
> > +                     continue;
> > +
> > +             if (port->phylink) {
> > +                     rtnl_lock();
> > +                     lan966x_port_stop(port->dev);
> > +                     rtnl_unlock();
> > +                     port->phylink = NULL;
> 
> This leaks the phylink structure. You need to call phylink_destroy().
> 
> >  static int lan966x_probe_port(struct lan966x *lan966x, u8 port,
> >                             phy_interface_t phy_mode)
> >  {
> >       struct lan966x_port *lan966x_port;
> > +     struct phylink *phylink;
> > +     struct net_device *dev;
> > +     int err;
> >
> >       if (port >= lan966x->num_phys_ports)
> >               return -EINVAL;
> >
> > -     lan966x_port = devm_kzalloc(lan966x->dev, sizeof(*lan966x_port),
> > -                                 GFP_KERNEL);
> > +     dev = devm_alloc_etherdev_mqs(lan966x->dev,
> > +                                   sizeof(struct lan966x_port), 8, 1);
> > +     if (!dev)
> > +             return -ENOMEM;
> >
> > +     SET_NETDEV_DEV(dev, lan966x->dev);
> > +     lan966x_port = netdev_priv(dev);
> > +     lan966x_port->dev = dev;
> >       lan966x_port->lan966x = lan966x;
> >       lan966x_port->chip_port = port;
> >       lan966x_port->pvid = PORT_PVID;
> >       lan966x->ports[port] = lan966x_port;
> >
> > +     dev->max_mtu = ETH_MAX_MTU;
> > +
> > +     dev->netdev_ops = &lan966x_port_netdev_ops;
> > +     dev->needed_headroom = IFH_LEN * sizeof(u32);
> > +
> > +     err = register_netdev(dev);
> > +     if (err) {
> > +             dev_err(lan966x->dev, "register_netdev failed\n");
> > +             goto err_register_netdev;
> > +     }
> 
> register_netdev() publishes the network device.
> 
> > +
> > +     lan966x_port->phylink_config.dev = &lan966x_port->dev->dev;
> > +     lan966x_port->phylink_config.type = PHYLINK_NETDEV;
> > +     lan966x_port->phylink_config.pcs_poll = true;
> > +
> > +     phylink = phylink_create(&lan966x_port->phylink_config,
> > +                              lan966x_port->fwnode,
> > +                              phy_mode,
> > +                              &lan966x_phylink_mac_ops);
> 
> phylink_create() should always be called _prior_ to the network device
> being published. In any case...
> 
> > +     if (IS_ERR(phylink))
> > +             return PTR_ERR(phylink);
> 
> If this fails, this function returns an error, but leaves the network
> device published - which is a bug in itself.

If this fails it should eventually call lan966x_cleaup_ports where the
net_device will be unregister. But first I will need to make
phylink_create() be called prior the network device.

> 
> > +static void lan966x_phylink_mac_link_down(struct phylink_config *config,
> > +                                       unsigned int mode,
> > +                                       phy_interface_t interface)
> > +{
> 
> Hmm? Shouldn't this do something?

I don't think I need to do anything here. The current setup is that
there is a PHY in front of the MAC.
So when the link partner goes down, the PHY will go down and the MAC
will still be up. Is this a problem?
When we force the port to be set down, then in the function
lan966x_port_stop we actually shutdown the port.

> 
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

-- 
/Horatiu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
