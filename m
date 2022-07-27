Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CC02C04A68
	for <linux-phy@archiver.kernel.org>; Wed, 27 Jul 2022 10:58:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yR8lQcOCP5z7Ro01Qufa2a7HkxwJOSsNBboKV1H4Zxc=; b=O3gPcfcGMR2FHB
	vsdP3j9P9xTmDfOs3qqAGgBF+MysEcyvc4YLBXaJLDE+5N2GmJTWM+TuV2f6WF/nGWZUD+MkL3eqn
	180RzMwyDb+zl2f3+eGrcAqXOL3iNjWZQlB5TOruMgMoDmB+SIFRsJZUPGskjv1+DQvZ5GXg3UrKn
	GQAyBFpiMEDvzeHIAP9MTmVsdjvtqUiZ80CiFC6pNFlle/AHxw5RDUPblfTzs5Z5emGrEOa/5OZzs
	Naie+L3/stUKIjKzeA9PX5isxJ1jd6enR3QlbKWTlDuqhyuRMTVmQQPdOYkq4IsgrdtHF+r59Ce+P
	Ij7QdxsQ4ifAW2NoodTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGejv-00CfAR-O5; Wed, 27 Jul 2022 10:58:07 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGejs-00Cf8K-PE
	for linux-phy@lists.infradead.org; Wed, 27 Jul 2022 10:58:06 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1E0B4618A9;
	Wed, 27 Jul 2022 10:58:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E952C433C1;
	Wed, 27 Jul 2022 10:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1658919483;
	bh=8zvjoYn3iaPSAV/n1nrhAfFVcbmaZQTSCwUK6lTktII=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cCgoaxMeh5iovE14Rg9ny5zVHEhU8GsO5vxuJq4lA9ZuQyC7my8FGyQQQ27bDoh/z
	 YvWXaq0pEGLcSg9b4atRtAfSTY8sjPjO7mG+ia+F06C95V9vwiJ2alA+ox6yB/Yfpr
	 iq/Ms1PurOCCyxdV146ZIcoiCBA/SR4jei9SJwk8=
Date: Wed, 27 Jul 2022 12:58:00 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jim Lin <jilin@nvidia.com>
Cc: jckuo@nvidia.com, thierry.reding@gmail.com, jonathanh@nvidia.com,
	linux-tegra@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-phy@lists.infradead.org, balbi@kernel.org, vkoul@kernel.org,
	mathias.nyman@intel.com, Allie Liu <alliel@nvidia.com>
Subject: Re: [PATCH] xhci: tegra: USB2 pad power controls
Message-ID: <YuEaOGP/AaUKimFg@kroah.com>
References: <20220727105314.14681-1-jilin@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220727105314.14681-1-jilin@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220727_035804_891369_A98FD970 
X-CRM114-Status: GOOD (  14.93  )
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

On Wed, Jul 27, 2022 at 06:53:14PM +0800, Jim Lin wrote:
> Program USB2 pad PD controls during port
> connect/disconnect, port suspend/resume etc
> as suggested by HW to reduce power consumption.

You do have a full 72 columns to use :)

And this does not explain what this commit does at all, or why we would
want to take it.  Please read the kernel documentation for how to write
a good changelog commit.

> Squash following fixes from local kernel 4.9 to this commit:
> ce4e7e5 usb: host: tegra: Power on utmi pads
> 3a10c61 usb: tegra: Program USB2 pad PD controls
> 4e62fbb xhci: tegra: move pad power on to non-atomic place
> ed0fb0a usb: xhci: tegra: don't use hs_pls in xhci-iov
> 401801a usb: xhci: add USB2 pad PD control for Test Mode

This makes no sense, as these commits are not in our kernel tree at all.

Also they are not even in the correct format, if we were to take them
(hint, you need to fix your development process to not take lines like
this.)



> 
> Signed-off-by: Allie Liu <alliel@nvidia.com>
> Signed-off-by: Jim Lin <jilin@nvidia.com>
> ---
>  drivers/phy/tegra/xusb-tegra186.c   |  27 +++--
>  drivers/phy/tegra/xusb.c            |  32 +++++-
>  drivers/phy/tegra/xusb.h            |   4 +-
>  drivers/usb/gadget/udc/tegra-xudc.c |   8 +-
>  drivers/usb/host/xhci-hub.c         |   2 +
>  drivers/usb/host/xhci-tegra.c       | 146 +++++++++++++++++++++++++++-
>  include/linux/phy/tegra/xusb.h      |   4 +-
>  7 files changed, 209 insertions(+), 14 deletions(-)

Are you sure you want to touch all of these files in a single commit?
Why not submit a patch series?

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
