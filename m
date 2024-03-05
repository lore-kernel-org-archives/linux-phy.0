Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71845C54E41
	for <linux-phy@archiver.kernel.org>; Tue,  5 Mar 2024 22:10:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wgQeEbkWZMC10a7qmGJ+DDrCLSi4sPDXCFZXwRNp3Xk=; b=dH3lQMkNgHRxJb
	UwJmtzoXSKetNz9L36s4YyOEBcN4vmIaezalUiLh+LBsjOF9s/dWyi5hbsmc4X2VxgUwP/CItizG1
	HykaZPo/cGb8t7O2ReYwkrQHOEwtjAEFmWF2QR3ii7fSFlZ18SbOk3kS77ylG2XJN8IgMj37BAA+P
	nXbZBhx6XLFSEetjJ4zZPpV8Lh+tWJIoeeLhr/jrTzJMhpZ+GUP7Ae6SmjPOawMkXxfN7QNF9jCA0
	/8ef39eWONGCjn2R4bwZfrJhHkzMxP12Bk6S24f/XpigIZae56wNcVnFE7zDR5IfmJ8vHPXF5If7I
	eETYbuDygbHPlECNnhkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhczD-0000000FPpG-3xDh;
	Tue, 05 Mar 2024 22:10:11 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhczB-0000000FPoE-1k90
	for linux-phy@lists.infradead.org;
	Tue, 05 Mar 2024 22:10:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 2C1A6CE1E6E;
	Tue,  5 Mar 2024 22:10:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E995DC433F1;
	Tue,  5 Mar 2024 22:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1709676606;
	bh=WDxMUNOyXV2FFp94ZE1OPJHosybU6j2MV9abgvJyXmQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=az7C5NbtIzHvbFY1k6RzXtyMA4G2ovT4iIuq2qGGFKzfSb8A466Xms9g9gAM91/Sd
	 og+XcB2nHMHjZhAznjVov+MTzwoi9/bBPr2aPvdlImEjJpCzSsmqS81OJZpHu4k18B
	 oVVNfNT/qh/v7X42qVgXBHRy8hmrEfNVHcSb+ZCs=
Date: Tue, 5 Mar 2024 22:10:02 +0000
From: Greg KH <gregkh@linuxfoundation.org>
To: Wayne Chang <waynec@nvidia.com>
Cc: jonathanh@nvidia.com, thierry.reding@gmail.com, jckuo@nvidia.com,
	vkoul@kernel.org, kishon@kernel.org, linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH 2/2] usb: gadget: tegra-xudc: Fix USB3 PHY retrieval logic
Message-ID: <2024030542-broker-promptly-de99@gregkh>
References: <20240305161122.1254099-1-waynec@nvidia.com>
 <20240305161122.1254099-3-waynec@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240305161122.1254099-3-waynec@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_141009_660401_20A6BB0C 
X-CRM114-Status: GOOD (  13.78  )
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

On Wed, Mar 06, 2024 at 12:11:22AM +0800, Wayne Chang wrote:
> This commit resolves an issue in the tegra-xudc USB gadget driver that
> incorrectly fetched USB3 PHY instances. The problem stemmed from the
> assumption of a one-to-one correspondence between USB2 and USB3 PHY
> names and their association with physical USB ports in the device tree.
> 
> Previously, the driver associated USB3 PHY names directly with the USB3
> instance number, leading to mismatches when mapping the physical USB
> ports. For instance, if using USB3-1 PHY, the driver expect the
> corresponding PHY name as 'usb3-1'. However, the physical USB ports in
> the device tree were designated as USB2-0 and USB3-0 as we only have
> one device controller, causing a misalignment.
> 
> This commit rectifies the issue by adjusting the PHY naming logic.
> Now, the driver correctly correlates the USB2 and USB3 PHY instances,
> allowing the USB2-0 and USB3-1 PHYs to form a physical USB port pair
> while accurately reflecting their configuration in the device tree by
> naming them USB2-0 and USB3-0, respectively.
> 
> The change ensures that the PHY and PHY names align appropriately,
> resolving the mismatch between physical USB ports and their associated
> names in the device tree.
> 
> Fixes: b4e19931c98a ("usb: gadget: tegra-xudc: Support multiple device modes")
> Cc: stable@vger.kernel.org

You mark patch 2/2 for stable, but not patch 1/2?  That's not going to
work well, is it?  :(

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
