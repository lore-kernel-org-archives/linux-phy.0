Return-Path: <SRS0=CyPL=LR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PULL_REQUEST,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1BAAC48BC2
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jun 2021 07:21:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C35FC61185
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jun 2021 07:21:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C35FC61185
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y8WP9hQoJsxFc8j54lraFCirDL10P/vxnaeh5ghUC2Y=; b=Z9blnAS3PnfauK
	mn1+lTebu4PT/x3wxNu8vixkqk5k4wbggCdnUhUp1Z5MlKDKfQThGUbe6g2ebd2dpj8GlPnmJVGs4
	a3ONH+yR98382a5SDsp9djX2Ud0MeyZ2rbyQROuQoZkK/OmdubRi1GHBhWl7hgErGTedKtltx7DuS
	iHSuw2/5pGPd9e5nsY4cw63wVlNZt5MgclJc2SbV3ZY0NAAd/GX5IFmYSELcIHMzwhvEuZKf2v0BQ
	Kh8+LcBC9w9Cd4hv1KZ+dxWfjdz1y9NUk/SMP0vUU+JQn/IJcFcj68x+Z9+m4TSrNWnLMogCHi90w
	gCc8Hf3TJRdMN3qW602w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvxCl-009iAX-B7; Wed, 23 Jun 2021 07:21:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvxCi-009i9o-DN
 for linux-phy@lists.infradead.org; Wed, 23 Jun 2021 07:21:45 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 25AFE60FD8;
 Wed, 23 Jun 2021 07:21:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1624432903;
 bh=Wr7Xwj0AVGz4/fmNTS3r6GUj58PDzxfEICzQj91dEMI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Eeh6f5ZxGETBItmTo6twrdn3krfzpeB8Nz9+B+ucHn/VNkJ5S5Qe7UHgbpI7V1VPv
 VYw0Aqy7adNJddCzLxxBAJXLsTn/xcVqXMIhHHTZT41kUCULKH1qtTh+kZBLmXtMJU
 NiYK3SzeeyA1K/4LlbVQyHcpiBYcE6A3YiEDbVd4=
Date: Wed, 23 Jun 2021 09:21:41 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>,
 Vinod Koul <vkoul@kernel.org>
Cc: Linux Phy <linux-phy@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [GIT PULL]: Generic phy updates for v5.14
Message-ID: <YNLhBZokBed/jxNC@kroah.com>
References: <YNLRn/5JkyYhYwxi@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YNLRn/5JkyYhYwxi@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210623_002144_486764_4180A05F 
X-CRM114-Status: GOOD (  13.14  )
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

On Wed, Jun 23, 2021 at 11:45:59AM +0530, Vinod Koul wrote:
> Hello Greg,
> 
> Please pull to receive Generic phy subsystem updates for v5.14
> 
> The following changes since commit 6efb943b8616ec53a5e444193dccf1af9ad627b5:
> 
>   Linux 5.13-rc1 (2021-05-09 14:17:44 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-for-5.14
> 
> for you to fetch changes up to f7eedcb8539ddcbb6fe7791f1b4ccf43f905c72f:
> 
>   phy: ti: dm816x: Fix the error handling path in 'dm816x_usb_phy_probe() (2021-06-21 12:04:18 +0530)
> 
> ----------------------------------------------------------------
> phy-for-5.14
> 
>   - Updates:
>         - Yaml conversion for renesas,rcar-gen3 pcie phy and
> 	  rockchip-usb-phy bindings
>         - Support for devm_phy_get() taking NULL phy name
> 
>   - New support:
> 	- PCIe phy for Qualcomm IPQ60xx
> 	- PCIe phy for Qualcomm SDX55
> 	- USB phy for RK3308
> 	- CAN transceivers phy for TI TCAN104x
>         - Innosilicon-based CSI dphy for rockchip

Why is PHY_MT7621_PCI only y/n?  Shouldn't this be able to be built as a
module?

The USB phy enables this driver, which now forces me to build it into my
kernel, which does not seem like a wise idea.  I'm not sure which commit
in this series does this, but that isn't a good thing.

Ah, it's 6eded551cefe ("phy: ralink: Kconfig: convert mt7621-pci-phy
into 'bool'"), why is that needed?  We are working to turn more code
into modules, not force them to be built in, this feels like the wrong
way to go :(

I don't want to take this series because of this at the moment.

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
