Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58D11C46CD2
	for <linux-phy@archiver.kernel.org>; Tue,  2 Jan 2024 17:34:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=00nqDaJDQ6fx8KWxsWXP1LLV99VXQlxWMoowtDt54uo=; b=WaiAsFtqGGQXuL
	yaEV2ACeHt5AErqUV8QYWf2ET4UzuKPqpM+hNC+UVwAgSqjCKTkFky803YGBAFZBcyS0kabSxWGlb
	D+/JBHzl1kVfiN5UfctLS29IKvrmpPetM5p0XliWMSswapG1JS+QXyRRy27Y0XAhuJrfUX8tHznKl
	UUwaUJ2nBHrPDP/SMKe2BwysBISyzaf3AicyIxaBrJ84Ds9HsGlm63FuIHg30czT0hu/m32YIi4eM
	+rADIh5XlU61oWNM9exiyThtsVdRItLRD4hwzorCu+rfVKZZ5CUkrWL2UhdTBtUYaVkOCeBg9SGOZ
	72aSJ6/VvcEfXuLfoKbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKifG-008cFE-2m;
	Tue, 02 Jan 2024 17:34:54 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKifD-008cEP-2U
	for linux-phy@lists.infradead.org;
	Tue, 02 Jan 2024 17:34:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=88r7GWZg9xFdEciPBDZ+JiD1krfoRUPpwddSStVgxfI=; b=lX8vRVOlpuM7hDdD6K2fvkbOZd
	VPP1QhUFJ4aS6XuiyBU0+LaB5nF8+uXuDtdGI6avGTcWrZ/BL8p7az1o7FPvyNdZipjGK2ah5ynfz
	TG2AteKgS+BoCTpBZmmMTQhzrrZ9b8WMT3dpxn+sl2zLSyjzteRW/mgRNvCOCwBK8WZ2SgB0XUEkm
	DSPk6qJSzoeTwUKbcGMN1b2pv7lC1HKOqCx5vtRrmjZagAwnDWZXQZCQ9MvJynlJcC9C0lTjOQ0YW
	llhPsiBz3W6zNEhp9vCe6BDndWXdRk+ey1c1ieFBY8koLAz80NK8Aql1GaYPRKFlcNgOzTIxKjdEo
	3JHPgw8g==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:58516)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <linux@armlinux.org.uk>)
	id 1rKiey-0006lm-0p;
	Tue, 02 Jan 2024 17:34:36 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.94.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1rKif0-0005VF-Bu; Tue, 02 Jan 2024 17:34:38 +0000
Date: Tue, 2 Jan 2024 17:34:38 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Yajun Deng <yajun.deng@linux.dev>
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
	pabeni@redhat.com, andrew@lunn.ch, olteanv@gmail.com,
	hkallweit1@gmail.com, kabel@kernel.org, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH net-next] net: phy: Cleanup struct mdio_driver_common
Message-ID: <ZZRJLg6U0G5CNRQ0@shell.armlinux.org.uk>
References: <20231228072350.1294425-1-yajun.deng@linux.dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231228072350.1294425-1-yajun.deng@linux.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240102_093451_857017_7B9C4EF1 
X-CRM114-Status: GOOD (  15.04  )
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

On Thu, Dec 28, 2023 at 03:23:50PM +0800, Yajun Deng wrote:
> The struct mdio_driver_common is a wrapper for driver-model structure,
> it contains device_driver and flags. There are only struct phy_driver
> and mdio_driver that use it. The flags is used to distinguish between
> struct phy_driver and mdio_driver.
> 
> We can test that if probe of device_driver is equal to phy_probe. This
> way, the struct mdio_driver_common is no longer needed, and struct
> phy_driver and usb_mdio_driver will be consistent with other driver
> structs.

usb_mdio_driver?

I'm not sure why this consistency is even desired, the commit message
doesn't properly say _why_ this change is being proposed.

> +bool is_phy_driver(struct device_driver *driver)
> +{
> +	return driver->probe == phy_probe;
> +}
> +EXPORT_SYMBOL_GPL(is_phy_driver);

Do we really need this exported? It doesn't seem like something anything
other than core MDIO/phylib code should know about, and all that becomes
a single module when building it in a modular way - phylib can't be a
separate module from mdio stuff.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
