Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21501C4332F
	for <linux-phy@archiver.kernel.org>; Tue,  8 Nov 2022 06:39:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6dhi+fmtYFbWzAGFE0bcTIUmve10NBMAJlE+hvvseho=; b=N0lhYkLO40Tucu
	Ohq5bTItJWbZcNqSTIJ43uTCx2+zR7MIW5UYtjsVNnISZuqVX9DHbGDq5qnh1WJ4QM2nvTcoCKKAt
	u9X6cqSzhL5zOhQI4GhPhbrhNYFyoPjdWMQOB+rJqzYu5h9ZFUCnmR28dUU/yKoI3Z06YaCQ9ytyB
	o0U1TAsGOz4w9zzTeSaB7uQE5TZTiNvEp4kmuXrZL58fo3Rj5YnirepsQoNDmYHJYAEJFoYmPhgXx
	hZflvPln2BGE1dc1+xjMTwMzCpCq2XfrEATsjzpPH/5zx5P9UB0H8TxpJ+XofBe7PSeRlqt7MWEXM
	p1iIJtniKxBKlGp/LXzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osIGU-003CaM-F7; Tue, 08 Nov 2022 06:39:18 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osIGR-003CZ1-HQ
	for linux-phy@lists.infradead.org; Tue, 08 Nov 2022 06:39:16 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id 175173200955;
	Tue,  8 Nov 2022 01:38:59 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Tue, 08 Nov 2022 01:39:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm1; t=1667889538; x=1667975938; bh=gA9fsyjBPj
	RHdKmfjlhpRrepPj4+JdSQ+31PMTfZEn4=; b=riixV1saCnuncTA2Vy9m/OAcX1
	+l6aF1ZwXfLx1Hxg84LORKPP27a3AWLQg3vQ4LqbfYdD3GlvQjv4LJqYYNc0HfSt
	Nc81msQk4Ugvz4ivkSVvZyUEIlEFASoKzUidTjybxt1qY7KyZGTYf2aShNbz2RQE
	HDVniaY0l+7WUkDKOHPCcErJkDT99M+PGDWB0211atKZgsfEsbXavI8Hw6XmfCGq
	S2kT2DVVRgVIg88Fg0roFLGgtcaurTaA4m2BztPU6+VTYyxWRj13eQeJjdOTttU8
	uuTHhsLclLTd7MW3Yt7gFxibt/h5l73b15jZ3bDY8O5lbs87cXyn/8GbHCNw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1667889538; x=1667975938; bh=gA9fsyjBPjRHdKmfjlhpRrepPj4+
	JdSQ+31PMTfZEn4=; b=MZ2B1AwKIO1+ne1WpWa46OAV1OD4rjd50MQfZK2L0JzK
	Ym6LysEtMwYrLvTgnP+kkUTiFvmPmEy1ZbERVcxKakLnsoTfgLMs0++ViV3gY5vP
	UJr6gpEha2aSIMP1Z7XoZvk+wXnB3CTQKScfAKrdhkQI+095WKke2/i69ITfjh1A
	TeSieOpUoJacdH50tfL239o13AGCXuSyq2FIbNHsFW2ENBxJji+k3IfhMtaTW0tK
	NyqeyU7Jw7Ll3vUTCtWvACEc1o+OiZAkFNaEOJIxhSMQANnI+LZW60E3wnn2MRe2
	3VVYeJ3g4+qRc3u0mYmCm8hhLDpZlkO75HOi2uJNFw==
X-ME-Sender: <xms:gvlpY5nySF8BbD7tl-fAJyuq4DWFHPmJ9DvGOJICJHBVY2-fpTvpkQ>
    <xme:gvlpY03dBrfRiVymEef_2vJ_hCN8ISP4JuFIgTJGYR692-gVcnNJlf-FymFgie2YQ
    PU67Lmzw_e2AQ>
X-ME-Received: <xmr:gvlpY_q_G9mvZjZx-y5jH5MfkbRdDHDNquvzxc4fr54bD5h_rkZsCFk-sa6s3DCJArCG-ZLo0pMieQqZIlsr-X9EenO18ygg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrvdelgdellecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuffkfhggtggujgesthdtre
    dttddtvdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
    necuggftrfgrthhtvghrnhepheegvdevvdeljeeugfdtudduhfekledtiefhveejkeejue
    fhtdeufefhgfehkeetnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
    lhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhm
X-ME-Proxy: <xmx:gvlpY5nFpmqqP8HwkUwB3JaCF0c3EInSyQowD2XdGM-3ZPOMpB03Pw>
    <xmx:gvlpY31c2VFbO5E-qHqwMXZYQ-ZDVUAgJebIzt9IYj-eHGKSmMdY5A>
    <xmx:gvlpY4tLx0xakFn5diq2-iA0LIGCu3lYtD12j20Xy2aeeTTfNFClXw>
    <xmx:gvlpY1N1TjLSXa2mnmGD34skNk3Ww59Yrn67tTH7_09ghhmS4lj-DA>
Feedback-ID: i787e41f1:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 8 Nov 2022 01:38:57 -0500 (EST)
Date: Tue, 8 Nov 2022 07:38:54 +0100
From: Greg KH <greg@kroah.com>
To: YueHaibing <yuehaibing@huawei.com>
Cc: vincent.sunplus@gmail.com, vkoul@kernel.org, kishon@kernel.org,
	linux-usb@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: usb: sunplus: Fix memleak in update_disc_vol()
Message-ID: <Y2n5fhFq4ozEzlBL@kroah.com>
References: <20221108061113.35964-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221108061113.35964-1-yuehaibing@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_223915_624738_F28BBB7C 
X-CRM114-Status: GOOD (  14.33  )
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

On Tue, Nov 08, 2022 at 02:11:13PM +0800, YueHaibing wrote:
> 'otp_v' is allocated in nvmem_cell_read(), it should be freed
> before return.
> 
> Fixes: 99d9ccd97385 ("phy: usb: Add USB2.0 phy driver for Sunplus SP7021")
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  drivers/phy/sunplus/phy-sunplus-usb2.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/phy/sunplus/phy-sunplus-usb2.c b/drivers/phy/sunplus/phy-sunplus-usb2.c
> index e827b79f6d49..450cf8e6d7fb 100644
> --- a/drivers/phy/sunplus/phy-sunplus-usb2.c
> +++ b/drivers/phy/sunplus/phy-sunplus-usb2.c
> @@ -96,6 +96,7 @@ static int update_disc_vol(struct sp_usbphy *usbphy)
>  		set = *(otp_v + 1);
>  		set = (set << (sizeof(char) * 8)) | *otp_v;
>  		set = (set >> usbphy->disc_vol_addr_off) & J_DISC;
> +		kfree(otp_v);
>  	}
>  
>  	if (IS_ERR(otp_v) || set == 0)

How did you test this?

Just by looking at this tiny diff, this seems to be wrong, please fix
your tools and your review process to catch errors like this.

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
