Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A3CDC79F89
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 11:01:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U86L58OITN7ebfoAAe+m49xbZyDEfZgDLw3R7Y/DgHA=; b=YQyURfDSRjxRoa
	knw6RxlhWUVzRR22QFQvRvMHFL+3SlvVPBI9thR5bP07QNcOsojNgVtztH903J2W+9e7oiBB1x0GS
	9+JqCVVtQz8v3nrcumfjRWrxOisIS7lwzK/hXDMfNULiAYJSOMDtcLpayycIUywFHNwSjUX9qSqaZ
	li+5Cgn7svQoyhCzJKMf/yEelZCw3XLGwvP4tj2trzC+u9HUuav7YSEMFTCuBkIIZjJWNq5v0qFP2
	eCrdeKEFMzzTv/Lm+hzPVY3Ynq9n7UnWuoi0yEXqdtN309N7QwevJNmeajI6GdOcLCW4eihPnj/xk
	VSMDgApwgQgPJh2Fd7Og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3X6S-00000006b7v-38fA;
	Mon, 07 Sep 2026 11:01:32 +0000
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3X6N-00000006b6r-1u3s
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 11:01:29 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-4858a186d5bso228578f8f.2
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 04:01:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788778885; x=1789383685; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=hmQkGxTXpbepXYDRQ84g3dgJxZsX5xz0ouxxoFxBPoQ=;
        b=O0pf9Ld+4Ei6M/Z5cGP1ZNm3+65DzGJa+/fYNJX1hc8cfH6dGHbOhINQME2n/mlSlK
         yyeION3lobX/xRNBLIo4OC3EW0d8d3tpcSjHcyETcktalCYVp/g0M13DAysP5K4jBvDo
         S7viwmfE8HGvR+RufUdI40sTZezeFNps5oD9yZy6c377+fTtjca/O4rDd7UHM6E1GwSn
         AnfCqPvewwwiSfn0QB2mdCvGbIl8UUQ/b5GWQ3fnet30byQZhuYAaLSGAQsFJNYmb0NQ
         NvlMJiAhM3FW0su2U4DsqWKl2HJZF5bKBvQXrZBb+W0/JxM7/eq/kjZcipCSnhQkiMq4
         RGRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788778885; x=1789383685;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=hmQkGxTXpbepXYDRQ84g3dgJxZsX5xz0ouxxoFxBPoQ=;
        b=LAAyZlLyB6JlhyeQy8E0KMB8qmdIHLjJbIQrJjz5RQBOobK8s3tq9ypcHrrN+W28uZ
         Kkko6sUfybRZvmonc6j7GgxQXtyIOw/BtF1f7n+0qggDs1b6pSZemNxOSqVxgsYVPJj9
         lzwgf/MuB/Dad2aKnSJ2qLvIIISkwMPYzk2yjNJS6Scr1auFjqc/Q7CYG8Ya9v/6ByuU
         LOYQN3JsoHl5NnG/o/gpT2wL5fgUz+aUw/RZtt/4+oRzhMvl5WgRwA1ro8WhyFcHdaPJ
         4KY4qRZgcTnLm5vp1FhB09UuSfiDBqiEsqmLLplBujJC3DujxCmICoxRfzA6VJazRJQo
         O8Aw==
X-Forwarded-Encrypted: i=1; AKwUvBwNO0Zi1wSUvwESOeKEG+IJuOhjiSz8RsIFhCwnYzxj28bBPZTv+jjl3hBdONdoX5m9gmoBlSG8LwA=@lists.infradead.org
X-Gm-Message-State: AFuF++lNBy2XvdA4cKWP9hhpDAWyYcWADCN0edfEq28vnTi2Ikj+sw5m
	Q1FfjSiOf0iHwy93mXMZP7BmNl0COLdlVo9chO+Ws9F+w4o6q5NR+I3c
X-Gm-Gg: AYBFou0V2qLvGgS3Ftx3I1mCN+N7CtXu9LXpe43I2/rF3NNsMpV1KqHYyJlH32mgxSt
	TIMQWUlyiDVcS0jz54xbsILFwY6biRi5Qm4+1t1hZ77MPdbEJuTg88pW8FGsF4Mht13pafQ5id2
	uVs9vBe7SdSz/3IZ3TuurNES6TQIE+8pNCIt0404ZiVWig5aruB1ZYII3i4WK7u3WP+xo4XhFt/
	LO2yHDdmALTYIbNzCun2/SphBF+YfcCIPabYq3VGlkTHCOGFUB4jAbFJMOYbtZbqJ7P8a9lhnnZ
	y+PoYOg5ntaV/ekPdVhYBXL6qMtz/io0mPDKh+toXSxLUVIvOmFkYq++Wq6SxcFaX8qBm6KtJ6D
	HcAnQw0/8ycza21aQPlmpUhnMV5JbOy8LOfi6QSVfPRjFaQCXVmsVad2lX2eidVUQV1tOtt3TvD
	M1/J0wzt2saYe2ogWoqxIAntWgfILQPbgtUeh/4/2Cr3X6y1IjFw==
X-Received: by 2002:a05:600c:a012:b0:49c:eac2:ddad with SMTP id 5b1f17b1804b1-49d01dc0137mr124980435e9.1.1788778885385;
        Mon, 07 Sep 2026 04:01:25 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d006:ef01:8e86:58dc:206e:83a0])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-485885be1c1sm27074419f8f.32.2026.09.07.04.01.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 04:01:23 -0700 (PDT)
Date: Mon, 7 Sep 2026 14:01:21 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Inochi Amaoto <inochiama@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH v2 1/4] phy: core: Add common helper to add phy phandle
 device link
Message-ID: <20260907110121.hfrblphv5vhzobj7@skbuf>
References: <20260904083709.425893-1-inochiama@gmail.com>
 <20260904083709.425893-1-inochiama@gmail.com>
 <20260904083709.425893-2-inochiama@gmail.com>
 <20260904083709.425893-2-inochiama@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260904083709.425893-2-inochiama@gmail.com>
 <20260904083709.425893-2-inochiama@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_040128_358056_6FE2245B 
X-CRM114-Status: GOOD (  19.54  )
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

On Fri, Sep 04, 2026 at 04:37:05PM +0800, Inochi Amaoto wrote:
> It is very common for adding a device link for phy phandle
> for device managed phy helper functions. So add a common
> helper for future reuse.
> 
> Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
> ---
>  drivers/phy/phy-core.c | 38 +++++++++++++++++++++++---------------
>  1 file changed, 23 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
> index 21aaf2f76e53..ea79913fbb87 100644
> --- a/drivers/phy/phy-core.c
> +++ b/drivers/phy/phy-core.c
> @@ -606,6 +606,26 @@ int phy_validate(struct phy *phy, enum phy_mode mode, int submode,
>  }
>  EXPORT_SYMBOL_GPL(phy_validate);
>  
> +/**
> + * phy_add_device_link() - Associate the phy with the device
> + * @dev: the device to link the phy
> + * @phy: the phy to associate
> + *
> + * Associate the phy with the device by using device link.

I guess it would be good to specify somewhere "consumer" device, because
there are multiple devices involved.

> + */
> +static void phy_add_device_link(struct device *dev, struct phy *phy)
> +{
> +	struct device_link *link;
> +
> +	if (!phy)
> +		return;
> +
> +	link = device_link_add(dev, &phy->dev, DL_FLAG_STATELESS);
> +	if (!link)
> +		dev_dbg(dev, "failed to create device link to %s\n",
> +			dev_name(phy->dev.parent));
> +}
> +
>  /**
>   * _of_phy_get() - lookup and obtain a reference to a phy by phandle
>   * @np: device_node for which to get the phy

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
