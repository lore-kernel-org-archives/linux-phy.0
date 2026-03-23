Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BA77F483E3
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 18:40:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hv98ffXJAU2IiyByIroSOTBy/oUEohws82vfOMokyYo=; b=U7w/Hww5n2tr/G
	Ty0SWS+OcOpX3HAAwYh3ZaOamPM2/P/kbEcdSQi4Jf/ikS4UzlkBlZKN/HDUBtsV/fAtedhSwCE4J
	tQsFJFV0DW6XKFkQz6asv+4jOx/t/NQ2H62x0a6b6tPKnipo6hOTsSCshSggUhl+iEfqb1mvqczMM
	n+5E8pPNOXQ9j8P3VkxSSmENqvr2HHb82xSdwwSMBF+66gSbKiQAbiFKUSFcP4eGprsfyi9m0aPKL
	X7JVEIbjXdkrqWWkdm2o3IQf9ddT26YQsyb1/MAowII3WCtfEyEufHMvWXA0zZE/EJQLMbwucLASj
	8XI1Qvp3FUteOSlbsVyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4kCQ-0000000HMSb-3gIB;
	Mon, 23 Mar 2026 18:40:26 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4kCN-0000000HMRw-1vkn
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 18:40:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=5bAnUpk4I5KuTFj8AGK69+RpszMB18SfsdhQE/fiuhQ=; b=FN3SACl30X141swDnDlBG3rFc5
	p8yiMw1NN0kVVU3WmULf53sxfUT3xL7XFNbIzsC+bcHlURm2o3wmy/om57nvrP7yljlC5M/KcAUtr
	boFAm1VYfgoGlUzK7S7NPGDfredUqpUpdzPRmmLhMbvgRKETyWH2RkAzJ5+HJvRjxNvx5317X7JEX
	8EYBG/jIZXk7hbLOZd724shWZDyA8bzLU7L4F0IllL3rkm5NspIZ5cTkZcnxhOba9gIDUQIJ5uMAE
	gBPVL+jCmDhLVPFFrCPMaV0RATkjAq0qgOEyNuAxSmg1bcdQ38OzZjbv/QoAVYUM2p8VYbenp6eyw
	1WU5eMRA==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:47290)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1w4kC4-000000000pl-05ok;
	Mon, 23 Mar 2026 18:40:04 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1w4kBV-000000004Je-0Qmx;
	Mon, 23 Mar 2026 18:39:29 +0000
Date: Mon, 23 Mar 2026 18:39:28 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>, Lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>, Peter Rosin <peda@axentia.se>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Moritz Fischer <mdf@kernel.org>, Xu Yilun <yilun.xu@intel.com>,
	Tom Rix <trix@redhat.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Danilo Krummrich <dakr@kernel.org>, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-spi@vger.kernel.org, linux-leds@vger.kernel.org,
	linux-fpga@vger.kernel.org, driver-core@lists.linux.dev
Subject: Re: [PATCH net-next 07/10] net: phy: switch to using
 class_find_device_by_fwnode()
Message-ID: <acGI4PI3MHML9Pce@shell.armlinux.org.uk>
References: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
 <20260322-remove-device-find-by-of-node-v1-7-b72eb22a1215@gmail.com>
 <32679fc0-c388-4cd7-a030-5f5ed5abab78@lunn.ch>
 <acDLzK8vpptTUMf1@google.com>
 <acEBCBgMV3RrGKiU@shell.armlinux.org.uk>
 <acGGWTmSMuc5h3Od@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <acGGWTmSMuc5h3Od@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_114023_501497_9FF3752B 
X-CRM114-Status: GOOD (  21.54  )
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

On Mon, Mar 23, 2026 at 11:33:36AM -0700, Dmitry Torokhov wrote:
> On Mon, Mar 23, 2026 at 08:59:52AM +0000, Russell King (Oracle) wrote:
> > On Sun, Mar 22, 2026 at 10:17:15PM -0700, Dmitry Torokhov wrote:
> > > On Mon, Mar 23, 2026 at 03:54:09AM +0100, Andrew Lunn wrote:
> > > > > -	d = class_find_device_by_of_node(&mdio_bus_class, mdio_bus_np);
> > > > > +	d = class_find_device_by_fwnode(&mdio_bus_class,
> > > > > +					of_fwnode_handle(mdio_bus_np));
> > > > 
> > > > When you look at this, why is it better?
> > > 
> > > I think we should move as much as possible towards firmware-agnostic
> > > APIs and use fwnode_handle instead of device_node or software_node or
> > > ACPI companion. To discourage this I think we better remove
> > > firmware-specific APIs where we have firmware-agnostic ones and
> > > eventually clean up drivers that use OF- or ACPI-specific APIs.
> > 
> > Basically, no. This is wrong.
> > 
> > It may sound like a good goal, but there's an underlying issue. This
> > goal assumes that the firmware description in OF and ACPI are
> > indentical.
> 
> If they are different then drivers will make allowance for this, like
> I2C core or SPI core does. But most of the modern drivers use
> firmware-agnostic APIs (device_property_*()).

What is appropriate is up to the standards bodies responsible for
the firmware. ACPI has a separate body, and we can't just dump
the structure we use for networking into ACPI. So no, you can't
just switch to firmware-agnostic APIs for networking.

For infrastructure where we lookup stuff by some kind of firmware
node, I have no problem with converting that to fwnode APIs,
because that doesn't transfer the DT description into other
firmwares without prior agreement of the appropriate firmware
standards bodies.

This is not "foreign territory" - ACPI in general doesn't want to
describe e.g. the individual components of a network card, unlike
DT.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
