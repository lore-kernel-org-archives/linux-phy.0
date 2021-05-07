Return-Path: <SRS0=/0rM=KC=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E98D0C433B4
	for <linux-phy@archiver.kernel.org>; Fri,  7 May 2021 06:27:55 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A03CF613DD
	for <linux-phy@archiver.kernel.org>; Fri,  7 May 2021 06:27:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A03CF613DD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ntcZv2c1soUb9Khhu8WBKwEd1GlgANbLgUOp+hYznw0=; b=a/pwj8zNgBivMVd95PJ6Ihzb+
	+bAmHj7zlNxcROhxZMHZ6RHDHqStttlH5CfwAZRrH9yevkJufAidP2Leaha9Lhqi9bZ8T2gfsEU9l
	rTYJJYXLN4fpxlid5IYih/v709CTO0SJ8Rg7d4hyKaOmfhlEZIPTZwWbIKWYAAqWVZo2mNUhIC3GG
	j9mkfuG9X2ZRBY82Seq0U+RWjGOox4M6ApnGIZm/mQGQTEnbO6DDfnqNr0i1/eFhISABp4aaB9KJW
	X7bhzKDvouiZ0ck9g80tEdhPGwhEEGLcFUMRGUZCa8gAT4X1SjH62DMQTy1hU3akY4nXiKQDHnDZe
	uTIoioL7g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1letxp-006GLr-DP; Fri, 07 May 2021 06:27:53 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1letxn-006GLP-42
 for linux-phy@desiato.infradead.org; Fri, 07 May 2021 06:27:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=dRtFMgaousXO9uGfQKNDupORwkgL6esBKh24HxhIIjw=; b=CNd6dc1/HNNHjHc2fssejbiT8B
 7k0woTUWvcbSO77VE/QRz1faTzlVzVo2TVFbsavN53yUeJaJJN+BcH5gjqDYBZSgc1nF0Hdo34Rtt
 IEQ/25UBbzKuQahrhvg3zne94UtOOxWkxYPRpSLSgfpzFAZOJq1w6suLrdOifJfHMmeJZdzdEWU7h
 bk2EfaK1stAsupw0jlX9yg/wy/GfS7E05JTNzq1GlCqDLyWOeTY15c2mBbPSaJZo/Q42EaVDrsbDC
 9p2FEsHoTrKo2eE1akg4mpufVy12ObQD6abfUIMj8vEqNU8NZJmhdWDrQ9Ya4njhPhZnCuxZbbW31
 iElsE8qw==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1letxk-006cOn-G2
 for linux-phy@lists.infradead.org; Fri, 07 May 2021 06:27:49 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4EEC061154;
 Fri,  7 May 2021 06:27:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1620368867;
 bh=g1Waw8S6g5srkV3sVXlOHNgN6nlneoJfnIMAns1P+VE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=g3PEIreIaW+nzWBEdSVfqdJhwEdc7NN2leomcf4N40HwAPfbHgdf7YujMkCYmvX0w
 XTz2sIWLKvRx3AQny+FBTl0mCFB8WygbodegvGHknye+iUaV6Si7889MDZKi0/K/Bi
 e+rhleY+RpuarDC9B8Q4yOoIqRwYiGIIFUMnTqGU=
Date: Fri, 7 May 2021 08:27:45 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, kishon@ti.com,
 linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev,
 neil@brown.name, ilya.lipnitskiy@gmail.com,
 kernel test robot <lkp@intel.com>
Subject: Re: [PATCH] phy: ralink: phy-mt7621-pci: properly print pointer
 address
Message-ID: <YJTd4cl6ZsPieC1b@kroah.com>
References: <20210507060142.17049-1-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210507060142.17049-1-sergio.paracuellos@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_232748_582613_6A8BB885 
X-CRM114-Status: GOOD (  15.53  )
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

On Fri, May 07, 2021 at 08:01:42AM +0200, Sergio Paracuellos wrote:
> The way of printing the pointer address for the 'port_base'
> address got into compile warnings on some architectures
> [-Wpointer-to-int-cast]. Instead of use '%08x' and cast
> to an 'unsigned int' just make use of '%px' and avoid the
> cast.
> 
> Fixes: d87da32372a0 ("phy: ralink: Add PHY driver for MT7621 PCIe PHY")
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---
>  drivers/phy/ralink/phy-mt7621-pci.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/ralink/phy-mt7621-pci.c b/drivers/phy/ralink/phy-mt7621-pci.c
> index 753cb5bab930..4705931fb072 100644
> --- a/drivers/phy/ralink/phy-mt7621-pci.c
> +++ b/drivers/phy/ralink/phy-mt7621-pci.c
> @@ -272,8 +272,8 @@ static struct phy *mt7621_pcie_phy_of_xlate(struct device *dev,
>  
>  	mt7621_phy->has_dual_port = args->args[0];
>  
> -	dev_info(dev, "PHY for 0x%08x (dual port = %d)\n",
> -		 (unsigned int)mt7621_phy->port_base, mt7621_phy->has_dual_port);
> +	dev_info(dev, "PHY for 0x%px (dual port = %d)\n",
> +		 mt7621_phy->port_base, mt7621_phy->has_dual_port);

This whole message should be dropped as drivers should be quiet if all
is going well, and only print messages when things go wrong.

And why cc: linux-staging?

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
