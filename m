Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BD9ACAC5B0
	for <linux-phy@archiver.kernel.org>; Tue,  7 Oct 2025 05:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j5eLOdVG8G/WfCdUkW5emdmG9t+uPJgRPJJbfTlYPiQ=; b=MFdoy+tvjt41Po
	+Prqe1mDOVMIK0kRWqSiCP2AAtwrkf2Z2o08HNNgJ47ZBIE+sO9PIwMkXGQuOcUVpnZjioikHiS5w
	aT9HvAxQEZk2mZfSL+f7xVfz0mkpQYgHUBDmW4cphDm5pQsw71+Mc6Disg9T2xRNEkjj87eo1Kjxf
	iTQKtd4JaOPUuhhK531il/iFJvQRxkhTtZKn9ks4hRvberpRTvwl8/r3Fqx2cc0GEg6gxeto827C6
	QlfwR74w5Idp+i2Z0tdvbRUpX132nOwZEGw+WHv6nKpFXnxNDodufkiQAd5XgnQ+CVFyiq55s8jL9
	HgySMHbKZVGvrABBT25w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v60bm-00000001JBn-3Qoe;
	Tue, 07 Oct 2025 05:51:34 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v60bk-00000001JBY-2X4Z;
	Tue, 07 Oct 2025 05:51:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 0E8D061215;
	Tue,  7 Oct 2025 05:51:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 384EAC4CEF1;
	Tue,  7 Oct 2025 05:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1759816289;
	bh=LPQQPlIwuR2+Qcdx0QIWLHqlQNGepDAbb03LkBRGWUE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JAJlWI1h8cZeELmkitk9Hz2GVuULYk1cHI3gCRt/ZfSKrGohI+U9rVFP8ZXwFrSa9
	 DW/iLS9KT0KU+6L0wk+LFrZMaDdcd0RIeAbBO49gFGrHqZu2RNnBuGI2/+9phU+GhB
	 Y9c1+pAR4MLaUzmZetibux383gBX/aA7BoudcwkM=
Date: Tue, 7 Oct 2025 07:51:27 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Roy Luo <royluo@google.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Peter Griffin <peter.griffin@linaro.org>,
	=?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Joy Chakraborty <joychakr@google.com>,
	Naveen Kumar <mnkumar@google.com>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v1 3/4] usb: dwc3: Add Google SoC USB PHY driver
Message-ID: <2025100735-gulf-error-2ce2@gregkh>
References: <20251006232125.1833979-1-royluo@google.com>
 <20251006232125.1833979-4-royluo@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251006232125.1833979-4-royluo@google.com>
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

On Mon, Oct 06, 2025 at 11:21:24PM +0000, Roy Luo wrote:
> Support the USB PHY found on Google Tensor SoCs.

That's great, but that's not what your subject line says (it says "usb:
dwc3")

> This particular USB PHY supports both high-speed and super-speed
> operations, and is paired with the SNPS DWC3 controller that's also
> integrated on the SoCs.
> This initial patch specifically adds functionality for high-speed.
> 
> Co-developed-by: Joy Chakraborty <joychakr@google.com>
> Signed-off-by: Joy Chakraborty <joychakr@google.com>
> Co-developed-by: Naveen Kumar <mnkumar@google.com>
> Signed-off-by: Naveen Kumar <mnkumar@google.com>
> Signed-off-by: Roy Luo <royluo@google.com>
> ---
>  drivers/phy/Kconfig                 |   1 +
>  drivers/phy/Makefile                |   1 +
>  drivers/phy/google/Kconfig          |  15 ++
>  drivers/phy/google/Makefile         |   2 +
>  drivers/phy/google/phy-google-usb.c | 286 ++++++++++++++++++++++++++++

And as others said, you don't need a whole new directory for one single
.c file.

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
