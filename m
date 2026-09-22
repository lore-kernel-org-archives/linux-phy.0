Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 552B0C98305
	for <linux-phy@archiver.kernel.org>; Tue, 22 Sep 2026 05:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UAGYA4v/+CQlQIxp4OaqBvpWlVtAFBKiVfAM4RHPiyQ=; b=32Z0jvHuQYPw3F
	DaYWVftInXAfg1ftBWvqf9aeaz1bu3Fe79o5dmiotvI3xwhXgdB/ASos+HlD2dKrUdTA0FtKefLTM
	XqN7yhHMT5SdaOxUh2CGtGH4reEH1UY6SpMVwG4fr1VreHl+i4OFM+jR9jRg/Y9Uu8zJ9Ab7nt0Of
	lWsJ7B9qNI7CFkEsKbg/7qZ5eX7pUWdBs1GXI/6VaDAsceJXsDxV+FSdO6Vl9QOjU77gVx4q9TbFa
	gCC9nOGFe92T08CvA2hzAzvIxYJKifNF4irfhhrBuSlMpp4WWZZVEmJnHURkQ74/vTh9QAKKNwfMI
	daXzRAjdYvV13W4aEXiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8tA4-00000004FuJ-05ao;
	Tue, 22 Sep 2026 05:35:24 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8tA2-00000004Ftx-3oAl
	for linux-phy@lists.infradead.org;
	Tue, 22 Sep 2026 05:35:22 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5114444A58;
	Tue, 22 Sep 2026 05:35:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ACE741F00893;
	Tue, 22 Sep 2026 05:35:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linuxfoundation.org;
	s=korg; t=1790055322;
	bh=ZYB+hYGCWQEfwSVJqO8SUr9ROMxy5Ef20Zm5SUiNP9Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=wIsvkYIvlUY9UsSJ/aW+SnrQSjbGvHJ1ZN8sNav7y7N2VK528nQsLqMr+h10YEZrs
	 NH36ZRYG/n9KpCvh4jXBG9N5lSf0tOC0JKcowQwkyDRU1L7+CzXCttCA5xeFDKPXAK
	 VgF7FOX7Fi3Q7q37GHcSFqB1wMaHW3X1wlYUYZyg=
Date: Tue, 22 Sep 2026 07:35:19 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Inochi Amaoto <inochiama@gmail.com>
Cc: Hans de Goede <hansg@kernel.org>, Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Minas Harutyunyan <hminas@synopsys.com>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Vinod Koul <vkoul@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Damon Ding <damon.ding@rock-chips.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-ide@vger.kernel.org,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-usb@vger.kernel.org, linux-phy@lists.infradead.org,
	Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [RFC PATCH 1/5] phy: core: Use EOPNOTSUPP for disabled blob
 return value
Message-ID: <2026092256-shading-gratify-835a@gregkh>
References: <20260922024724.191412-1-inochiama@gmail.com>
 <20260922024724.191412-2-inochiama@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260922024724.191412-2-inochiama@gmail.com>
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

On Tue, Sep 22, 2026 at 10:47:16AM +0800, Inochi Amaoto wrote:
> Currently, the phy subsystem uses ENOSYS for dummy blob functions,
> it does not reflect the function state correctly. As kernel already
> has EOPNOTSUPP for disabled blob function, replace ENOSYS with
> EOPNOTSUPP for a clear return value.
> 
> Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
> ---
>  include/linux/phy/phy.h | 52 ++++++++++++++++++++---------------------
>  1 file changed, 26 insertions(+), 26 deletions(-)

Based on the other patches in this series, this patch now breaks the
users, right?  Shouldn't this all happen at once?

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
