Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB9CFC4332F
	for <linux-phy@archiver.kernel.org>; Mon, 17 Oct 2022 05:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=18KCDHsGTm6FG1VPqkrivz/sC+6weKT6lpyo+8UkPnM=; b=VHA0lVFum/OJ8a
	l6lZZ2+Re+9hgyLBQh0gtyANdDorv5OnmFpZ6ITsvvdpVvk7iWkQAl749/7odfAjL+ItSooa7m4PC
	YX3B9ywMFz1lxEbVEeW7srQ46AubwgMStJWyfctGG1CLoKT3Kka3/7XjHD3XgFRCeWNi/gz1/Q9bp
	CQ70D95dhD5ZroX13KqzXWKVLEOZQLMTkHMJMls+Rr/NsSPIvfs8LSzRmT3AIlT4vFXK6j8G/72sO
	V+ljvOZYOPb4RGsjFUMfjmMcXEGCxOGKcBBsO3sYMmbPoCJA/nZVakrN6Qzsuu0aYh5JUBS+APIG8
	qlIA9XR80XndyHLzb7hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okIp2-007QPJ-AF; Mon, 17 Oct 2022 05:37:56 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okIoz-007QOc-D9
	for linux-phy@lists.infradead.org; Mon, 17 Oct 2022 05:37:54 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 0D1D2B80DFD;
	Mon, 17 Oct 2022 05:37:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40FCAC433D6;
	Mon, 17 Oct 2022 05:37:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665985070;
	bh=l82/GTBkohY3ZdHf/rjfVba1i2r1OPoKfMNAHu+bjqA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GwrSM0rVJ7HY+i4wSl5aLapJJJZgZjRAlcEVPMSVmjGRRyc7/mTNvEt8ohkGapKjy
	 P5/lAlHfVBcVyiZ1boyRdtZajW0YK2VvN7ZFHq0thNW0ksiODzE9F6+wWMvtgnzr8G
	 jytacvPLcaxw3t0Dm5uRAhV4lRYZEbxyuPRLI9sYxXBa0hOCdKW5zdAUenR1uRfwX9
	 ZYZHXCxadzqvpOELQ2u3VVQSXURsb1OIhEmkzZ8TVmbfnIKKuxCIJJDHHaRP2xyEV+
	 8EP0bNB+LRGylh5kItcILDu//3z31LzJobi9dV5IxafO9Npi/gM8OzALrqeC3YbWKm
	 vgdrLU4CfY35w==
Date: Mon, 17 Oct 2022 11:07:46 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Jon Hunter <jonathanh@nvidia.com>
Cc: JC Kuo <jckuo@nvidia.com>, Kishon Vijay Abraham I <kishon@ti.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org,
	Jim Lin <jilin@nvidia.com>
Subject: Re: [PATCH] phy: tegra: xusb: Fix crash during pad power on/down
Message-ID: <Y0zqKh7B9BaOoREo@matsya>
References: <20221010135132.30809-1-jonathanh@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221010135132.30809-1-jonathanh@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221016_223753_608764_F4E43758 
X-CRM114-Status: GOOD (  11.42  )
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

On 10-10-22, 14:51, Jon Hunter wrote:
> Commit a88520bfc0ec ("usb: gadget: tegra: Reduce pad power") added calls
> to tegra_phy_xusb_utmi_pad_power_on/down in the Tegra XUDC driver to
> control the pad power. This change is causing a kernel panic when
> powering down the pads on entering suspend with the Jetson TX2 platform.
> The panic occurs because the 'xudc->curr_utmi_phy' is not configured on
> this platform and we do not check to see if the pointer is valid before
> attempting to deference the pointer. Fix this by checking to see if the
> 'phy' pointer passed to tegra_phy_xusb_utmi_pad_power_on/down is valid.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
