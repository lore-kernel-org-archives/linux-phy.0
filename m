Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FAB8EC01A6
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WiwgcTO5UPuiaRswwy+fVDtBGPY3YPidujVD1fdLT2A=; b=S8TjvO6i0rkGcp
	RElPTcXogBAY7D3UXvuSfh5HEPz0kU+YK7TW5oqNDqSzEjVbpYQd7gryyCwLzpPjmsksi152ls8uv
	owvUwvHJSuZRPvCw0R2r4GgN357Dq+IWoQank0z7R1oavqLFS9QjEI6W3TnrLfK2jLCy1PLILfldT
	i3rfFkQOslnLJPp4nkZy+z+2CBiHE3Gv8MgUwvjEm76hiJkQccCULZhVOT7fc0QMJkMgbLAffVsHW
	CAEyKmyRixc49Vl78mNGV0ix8Q++MWCeZRAB2DHAfsEW8SfffkUKetjjkvbQy1sP7xmACajqqPvZ8
	QHjaSE/MnmKIUlC5KpJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4b9E-0000000GK4G-3b6O;
	Mon, 23 Mar 2026 09:00:32 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4b9B-0000000GK3l-0hV9
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 09:00:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=yMWdX5rPU/LnYnaKYFuAJpacSJjdsYtQkCNE/5cAkNw=; b=PSwEOmg+s3OczIMqw7GtGr0Fdf
	HA30SHMempCUFsF4P+/wB4O9mxAJuHBvKfp+WopGLmcVaWKey4NeTTNgrCfcludwaigtBAvL9AKy9
	8aKNh6qwqzU15V1EkY49I1k0ExipPVcIuFfZKT40j53SnOJOki341VbB9gviwD+1G1WYuTn+6djf4
	Co73IutMNyyt7iaIhJWnbAdqd7wVO0CVjDKF4+CH1H2AwCYPaoHJHA4qtXmx+URFIrsxOmLraeEOx
	uC0UiZMh9oYmRKRMHBboKtS4j73+15+KcBX3gfsOkW5zdkl6cy5Mm0u9h378R3sO1FFB3I8BtvfAa
	4gisQ0dA==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:53602)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1w4b8f-0000000009l-0dMz;
	Mon, 23 Mar 2026 08:59:57 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1w4b8a-000000003tW-2pe0;
	Mon, 23 Mar 2026 08:59:52 +0000
Date: Mon, 23 Mar 2026 08:59:52 +0000
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
Message-ID: <acEBCBgMV3RrGKiU@shell.armlinux.org.uk>
References: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
 <20260322-remove-device-find-by-of-node-v1-7-b72eb22a1215@gmail.com>
 <32679fc0-c388-4cd7-a030-5f5ed5abab78@lunn.ch>
 <acDLzK8vpptTUMf1@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <acDLzK8vpptTUMf1@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_020029_489637_23135407 
X-CRM114-Status: GOOD (  14.62  )
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

On Sun, Mar 22, 2026 at 10:17:15PM -0700, Dmitry Torokhov wrote:
> On Mon, Mar 23, 2026 at 03:54:09AM +0100, Andrew Lunn wrote:
> > > -	d = class_find_device_by_of_node(&mdio_bus_class, mdio_bus_np);
> > > +	d = class_find_device_by_fwnode(&mdio_bus_class,
> > > +					of_fwnode_handle(mdio_bus_np));
> > 
> > When you look at this, why is it better?
> 
> I think we should move as much as possible towards firmware-agnostic
> APIs and use fwnode_handle instead of device_node or software_node or
> ACPI companion. To discourage this I think we better remove
> firmware-specific APIs where we have firmware-agnostic ones and
> eventually clean up drivers that use OF- or ACPI-specific APIs.

Basically, no. This is wrong.

It may sound like a good goal, but there's an underlying issue. This
goal assumes that the firmware description in OF and ACPI are
indentical.

Sure, looking up devices by fwnode handle makes sense, but looking up
anything that is described in firmware is not suitable for this kind
of conversion, because in doing so, you effectively "port" the DT
bindings to ACPI, and it may not be suitable for ACPI.

So, please don't make wholesale changes that transfer the DT bindings
into ACPI.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
