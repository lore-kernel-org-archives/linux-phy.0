Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CD9FC982F1
	for <linux-phy@archiver.kernel.org>; Tue, 22 Sep 2026 03:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OW4BN18ZMVkU7RTvCt5oA9Zz/4izdj0+HFTXTlLTmGY=; b=LYnCTA3EHa8WT6
	AjaiDuwgD/hzZRgbYTPr1SyNkhVzY35w0Hy4W1xwAtLA94qA3AiFl23vavIMmR59IHJxDrKzKCd8M
	oanAAu/aNv7F46One34tv1KofM0Dvx5OPhvgJBqO+bl9HDnnLhXbGWP73t9WuSRclizxL4Kt+pSyr
	rUuDIv1PwqkDCIP4dXy21tnbYMQ6jkqlPDUEM06kybElEMQ9vrDjIhVBY3YVwCBvHPtFE+qOCSNpU
	TNQsul3WELMnOJt+kIFCZ+9KG9M5hsmF8NAmz66udosb6vZhI53oqu9tNdNcuN6kbXg4/6J60jkji
	iCq5yFs2v6XFqrRGgkTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8r6y-000000044Iw-3V3z;
	Tue, 22 Sep 2026 03:24:04 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8r6v-000000044Il-2JeT
	for linux-phy@lists.infradead.org;
	Tue, 22 Sep 2026 03:24:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A0D8C60210;
	Tue, 22 Sep 2026 03:24:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2327F1F000FF;
	Tue, 22 Sep 2026 03:23:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790047440;
	bh=Ii3qyc0w1aYDJN77yU+YWW/365rbaC06cgQrcopc6Fc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=BpMJC8SyVUJOti0rK1Ie6MGWeuSoqdfPyKzTiQwdBRdYY4EI/SNW39IKeIQjIE3cC
	 VA4qzmdOIj+qc6zlDqH1lojF/6QtemOwrf7+HI1ZQg54dPX48Lg7HyWvEo+bGWWWbU
	 f+2oMo7f8ZRROQdvOJyhC316ig3XBt30r0S5qm726aq4SYYUOyl980MuUUHamYp7Lb
	 UAPG/mTuzYQlgL7v/fxhCT1fFstwC6c22j4CJhNHD+CrbVMibx5bphuSm6FK3kIiVp
	 RdzXvvrPKH4I6L5aexGN64U1ZUyNlI71UeUyUT/s2VFwc/X3aS6MPTty+IAOB2OqK2
	 T3JK08iR/TlSw==
Message-ID: <f0db06a2-08e4-4013-96cb-c6754f673126@kernel.org>
Date: Tue, 22 Sep 2026 12:23:54 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 2/5] ata: libahci_platform: Adapt the return value
 changed for disabled blob
To: Inochi Amaoto <inochiama@gmail.com>, Hans de Goede <hansg@kernel.org>,
 Niklas Cassel <cassel@kernel.org>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Minas Harutyunyan <hminas@synopsys.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>, Vinod Koul <vkoul@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Damon Ding <damon.ding@rock-chips.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-usb@vger.kernel.org,
 linux-phy@lists.infradead.org, Yixun Lan <dlan@gentoo.org>,
 Longbin Li <looong.bin@gmail.com>
References: <20260922024724.191412-1-inochiama@gmail.com>
 <20260922024724.191412-3-inochiama@gmail.com>
Content-Language: en-US
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20260922024724.191412-3-inochiama@gmail.com>
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

On 9/22/26 11:47, Inochi Amaoto wrote:
> Check EOPNOTSUPP for disabled helper function as the change in phy core.
> 
> Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
> ---
>  drivers/ata/libahci_platform.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/ata/libahci_platform.c b/drivers/ata/libahci_platform.c
> index 6e072d681341..3e8ddbeb49b3 100644
> --- a/drivers/ata/libahci_platform.c
> +++ b/drivers/ata/libahci_platform.c
> @@ -371,11 +371,11 @@ static int ahci_platform_get_phy(struct ahci_host_priv *hpriv, u32 port,
>  
>  	rc = PTR_ERR(hpriv->phys[port]);
>  	switch (rc) {
> -	case -ENOSYS:
> +	case -EOPNOTSUPP:
>  		/* No PHY support. Check if PHY is required. */
>  		if (of_property_present(node, "phys")) {
>  			dev_err(dev,
> -				"couldn't get PHY in node %pOFn: ENOSYS\n",
> +				"couldn't get PHY in node %pOFn: EOPNOTSUPP\n",

I do not see the point in printing an error code name. Instead, let's make the
error message more sensible. Something like:

	dev_err(dev, "Node %pOFn: PHY not supported\n", node);

Or

	dev_err(dev, "PHY not supported on node %pOFn\n", node);

>  				node);
>  			break;
>  		}


-- 
Damien Le Moal
Western Digital Research

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
