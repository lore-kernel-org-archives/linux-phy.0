Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1C1DE63F3D
	for <linux-phy@archiver.kernel.org>; Mon, 16 Feb 2026 09:01:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0pcvb9ifylT1K3rzl9ACva8cBb4golxfLJdvY6X2B3Q=; b=PbeEPbcZNgpf9J
	5L7HwHhYZ1VOU4s27GlFFCQGnsTT5bLHzy39f4LC9psnG4n9PwGZzLPFIHWqN/M6f3fKq0y+iREfq
	dwe3Ns+tLLFq39189TA0wv/4pgqrAPRiZomE5IC0t6UjJZpHNcECXr49VuDJhX9x2rDksYRCCKDzR
	bLVLIaKRxd7Nts6xzbZMZx9NfGzcQe1i2jtGskTvGKK5SqVqeEzLxl9/fVbRP/rTQiXPKchPZpdsv
	stPSAB7RtQarFdWpE1yp4CFa/M6YE4DD7Hdt3SN2ZdSC6gE9ag2haz04QZL9OgholbFs+6Om97O4E
	BOvMTd6vYFYJi0+q2f9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruTr-00000006DBB-1V0F;
	Mon, 16 Feb 2026 09:01:23 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruTl-00000006DAS-38KH
	for linux-phy@lists.infradead.org;
	Mon, 16 Feb 2026 09:01:20 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-4830b67aa6bso3452305e9.0
        for <linux-phy@lists.infradead.org>; Mon, 16 Feb 2026 01:01:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771232476; x=1771837276; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qHnHPcuynIqTUxCpCO7mrbWmUqF4Rxqiy/wTilKTles=;
        b=YPsd3GCdL0uBUTU70dXzIX+p+Fj7hCSunBpzAt9Ca2+XJxeMpOG5SQP0O1ZjGE8JkW
         dq2NRIf8NHjU4Bi9SwKHiZg5pr96+O1pfclqOr5OaAC1SsC+3kRu3/lHHNfdz6ja5rB5
         3TjtiTU9TAlmCZYFx7uzKqvwc3inptEW6AlTMoLcvt9fs6TvqUZX5n4wlYWO0AsXzwB+
         w3fhuBkQwbukIURE5eLkgbrn8vb6BrTl8/R1Zdd2/VpZjblA9CKUWnZtwarC1rigzLui
         INeF1hQ6mNrMt5a7dFtXaqGUaFrwCAO6Y3OJP0zqZ6Q6kefaumKyh9uw9XAR+dX9tnPr
         C6bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771232476; x=1771837276;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qHnHPcuynIqTUxCpCO7mrbWmUqF4Rxqiy/wTilKTles=;
        b=kJFbkuzvgpA4Yk+No0VIdO2fIrPieVdaQ4sEcuUXSdrBs0mWanlHLzFC1HJUvYsCMU
         kFvPvogNSY0lfepExo2FMQlzqgJ15cZxHl2ge5QXsHypUieOCa6OyDpl0XeuaDaIgkB+
         +IklYOnQ75bhMxRyvNDARh+6hV05L+KCGA0ySOHKZ6ig0RB7O3fbA8kKGj3nlhD97at9
         4c51RMnzgVqrf5PrbNXr+RGcVQLE/EGMy83kcHrVV4e7iYuYWVfFw3PLJu9tj+1RrE0c
         bq9Dzm+dOvuUpACOu2z+cBEj0GYyPfaU1DO+ihrJpKcrVMApr/gUDnXidwKm4aya6r9k
         8Cbg==
X-Forwarded-Encrypted: i=1; AJvYcCVlQ2bw2e8Z6UFs+/ne4a9uzvC+rskSvrE1Bw6Er+ww2jg4awkTbcNpNQJnF3in+3aAT4rwNQ24XlM=@lists.infradead.org
X-Gm-Message-State: AOJu0YxFdBnkKltqB6ueQ8cdSAeLEMoqig/HoWt4s1DG0vLB3dfPlIsK
	nvHoK3PT6C38Mx2IB+0KTI9VTYgrGTtYU76WZZTrfWIcHfGX6dScrJhX
X-Gm-Gg: AZuq6aK6zCdtGqvjzxEYE0mGfZkcYwK+FUepM4RIzzEXNEnjcAo6EnnAJLPG0vER7u0
	HsIylRBfeTVvT1h9LDRfQZctyyMLFcaaGZcLGPdD36JhwnWl+SqEGg+EpUlQP1McreRDI3goC7t
	VAPUcV2QmJ1bK3OMkVLIG520G+LVJy8r6EU7MWhrXP7CtC6PxbjCY+MQ+NVKQfby7n/OCeTJfvl
	ePQlQbMDYOCYceO49yguD54MF3EDSr1nCkrcfKOHyvjhEwERAh6xS0eWZh0oLImCrkQ8npo7cME
	jPhTQI75YOQBu6bOcYk/p8Giw4v7GDpICs1GbX94jQWIODK6Jza0G+AlYAKlNS1keSf9SLOn/su
	mChn7JvtKMFpvIXid8Q6eAfc2NfWR0fhT4jdNwBsyLhpYsfFkNh7XFynmKFshhktYNg1o2SskfP
	WvL4qcCTz4cOs+/Q==
X-Received: by 2002:a05:600c:4448:b0:47b:d992:601e with SMTP id 5b1f17b1804b1-48370e2b6bemr118797125e9.2.1771232475530;
        Mon, 16 Feb 2026 01:01:15 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:68e2:cc27:74c:c083])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48370a78c89sm249517325e9.5.2026.02.16.01.01.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 01:01:14 -0800 (PST)
Date: Mon, 16 Feb 2026 11:01:12 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Yixun Lan <dlan@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Ze Huang <huang.ze@linux.dev>,
	Junzhong Pan <panjunzhong@linux.spacemit.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] phy: k1-usb: add disconnect function support
Message-ID: <20260216090112.n5jjpui3luqsybb5@skbuf>
References: <20260214-11-k3-usb2-phy-v2-0-6ed31e031ab4@kernel.org>
 <20260214-11-k3-usb2-phy-v2-2-6ed31e031ab4@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260214-11-k3-usb2-phy-v2-2-6ed31e031ab4@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_010117_911606_F88CCF78 
X-CRM114-Status: GOOD (  23.30  )
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

Hello Yixun,

On Sat, Feb 14, 2026 at 08:29:15PM +0800, Yixun Lan wrote:
> A disconnect status BIT of USB2 PHY need to be cleared, otherwise
> it will fail to work properly during next connection when devices
> connect to roothub directly.
> 
> Fixes: fe4bc1a08638 ("phy: spacemit: support K1 USB2.0 PHY controller")
> Signed-off-by: Yixun Lan <dlan@kernel.org>
> ---
>  drivers/phy/spacemit/phy-k1-usb2.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/drivers/phy/spacemit/phy-k1-usb2.c b/drivers/phy/spacemit/phy-k1-usb2.c
> index 342061380012..959bf79c7a72 100644
> --- a/drivers/phy/spacemit/phy-k1-usb2.c
> +++ b/drivers/phy/spacemit/phy-k1-usb2.c
> @@ -48,6 +48,9 @@
>  #define  PHY_CLK_HSTXP_EN		BIT(3)		/* clock hstxp enable */
>  #define  PHY_HSTXP_MODE			BIT(4)		/* 0: force en_txp to be 1; 1: no force */
>  
> +#define PHY_K1_HS_HOST_DISC		0x40
> +#define  PHY_K1_HS_HOST_DISC_CLR		BIT(0)
> +
>  #define PHY_PLL_DIV_CFG			0x98
>  #define  PHY_FDIV_FRACT_8_15		GENMASK(7, 0)
>  #define  PHY_FDIV_FRACT_16_19		GENMASK(11, 8)
> @@ -142,9 +145,20 @@ static int spacemit_usb2phy_exit(struct phy *phy)
>  	return 0;
>  }
>  
> +static int spacemit_usb2phy_disconnect(struct phy *phy, int port)
> +{
> +	struct spacemit_usb2phy *sphy = phy_get_drvdata(phy);
> +
> +	regmap_update_bits(sphy->regmap_base, PHY_K1_HS_HOST_DISC,
> +					   PHY_K1_HS_HOST_DISC_CLR, PHY_K1_HS_HOST_DISC_CLR);

Please align function arguments to the open parenthesis.

Since we are in the merge window, it is likely that new features will
not be picked up at this stage.

But this seems to be a fix for existing SpacemiT K1 support, currently
in the linux-phy/next branch. The linux-phy pull request hasn't been
sent yet, so if you can resend just this patch and we can get an ACK for
it in time, perhaps it can be included for v7.0.

The K3 support should be resent after the merge window.

> +
> +	return 0;
> +}
> +
>  static const struct phy_ops spacemit_usb2phy_ops = {
>  	.init = spacemit_usb2phy_init,
>  	.exit = spacemit_usb2phy_exit,
> +	.disconnect = spacemit_usb2phy_disconnect,
>  	.owner = THIS_MODULE,
>  };
>  
> 
> -- 
> 2.52.0
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
