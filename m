Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C452C4332F
	for <linux-phy@archiver.kernel.org>; Tue, 22 Nov 2022 16:08:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YgJvuqPcUYl0Z0M4pzhg8Yl6obvycKv1h4udk5MU3H4=; b=gRd4sYeGey03c5
	SXR2afpSP1I/bTwV0x+UkgA+zedDY67HeLb0gzXdr1t0vSte97OiDlzKRz7d2T2bX8VewRdJZPZm8
	t3rbT8i02Ir/0RZjCEbWwccWcN5rsCWnr6y663r+bGoJbrrlpOvP0FDyz62vfToaiEc4OzkinzX4W
	Wutg+NaZH2p7OV6Vf6rlAYcvF1zQoBvmloS0H77F2G7/fjkgR/hBsFs3/yZxliHzvVdaz/NrISSVG
	mBkYgLd+J4kgItt5uNbWUEcomZ3V7auqmIk2AvdJFYyJm9/Tl6oi4hxHB+ZZtTFaJ5+qd0Y/JLQeD
	eOGiN8+22zd2eJ+OA4Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxVoY-00AbDn-H5; Tue, 22 Nov 2022 16:08:02 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxVoU-00Ab9u-AX
	for linux-phy@lists.infradead.org; Tue, 22 Nov 2022 16:08:00 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 8A9E2B81BEA;
	Tue, 22 Nov 2022 16:07:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9AE8EC433D6;
	Tue, 22 Nov 2022 16:07:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1669133273;
	bh=9d709dY27e9sKclMchjHuvqwPGttUZYMm9Spd9lti9c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=A5KY8IuePGA9asotPaACLp34JRBmK2B7AAP9OE8pWdL2/7aBDQYScnqLQghEXx6YB
	 gHOH9OP1kJj7U46pZTixFjPyDjgvKDabw26Ax6rUGl4OjTn1ntawUcdqHAvJ9fQ4T5
	 1K8gTY+XmPgXHzonLqWpMZJ0sORsipciU5k+6e0s=
Date: Tue, 22 Nov 2022 17:07:49 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jon Hunter <jonathanh@nvidia.com>
Cc: Mathias Nyman <mathias.nyman@intel.com>,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	vkoul@kernel.org, treding@nvidia.com, linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org, waynec@nvidia.com,
	Sing-Han Chen <singhanc@nvidia.com>
Subject: Re: [PATCH V4 5/6] usb: host: xhci-tegra: Add Tegra234 XHCI support
Message-ID: <Y3zz1YHu1643ppuS@kroah.com>
References: <20221118154006.173082-1-jonathanh@nvidia.com>
 <20221118154006.173082-6-jonathanh@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221118154006.173082-6-jonathanh@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_080758_537594_19CD31FB 
X-CRM114-Status: GOOD (  13.35  )
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

On Fri, Nov 18, 2022 at 03:40:05PM +0000, Jon Hunter wrote:
> From: Sing-Han Chen <singhanc@nvidia.com>
> 
> This change adds Tegra234 XUSB host mode controller support.
> 
> In Tegra234, some of the registers have moved to bar2 space.
> The new soc variable has_bar2 indicates the chip with bar2
> area. This patch adds new reg helper to let the driver reuse
> the same code for those chips with bar2 support.
> 
> Signed-off-by: Sing-Han Chen <singhanc@nvidia.com>
> Co-developed-by: Wayne Chang <waynec@nvidia.com>
> Signed-off-by: Wayne Chang <waynec@nvidia.com>
> Signed-off-by: Jon Hunter <jonathanh@nvidia.com>

This is should be much slower with the additional redirection.  Is it
noticable on this hardware platform with, and without this change?  Or
is the hardware slow enough that it doesn't even show up as a speed
decrease?

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
