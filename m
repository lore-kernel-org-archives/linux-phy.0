Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E276EC531F4
	for <linux-phy@archiver.kernel.org>; Fri, 20 Feb 2026 00:11:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aJbc0dSYyy5PQWPlpCSrIHsEQSiI7UsRsdsllckeHzM=; b=tVw2D5SRNPF0Bv
	mgl82n9LYTEbCg5iwXrrxIJHFZUIhRkxx1Wmobgacypp1YeTOg3AJ6D3ulRYmTaGRQqu4AouIhfGH
	yDJT7fqLgpzHM1NOetUbrwylpjUNXRSfM5eUvlFlKt2RJ0p1X5HirAdzAkdJ9FcaiAIfIYDuvQyzV
	wbd5mAwi6qoYCmYPHcQ49YWwCOVhw01MPtUpMY4yDYWJzJww3kiGASxSBsVkN3T1uLSEQfd07e7Vz
	0OpRzYGf1h+ntP9e27fJzcrmzsQcF6VkQ/o11Vdzhca9LyTQzmrhhtQWb+871OYKB4zne7mKxo+bH
	QG+KouttmOuJaZWkgVmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtE7U-0000000Cgs8-1iJr;
	Fri, 20 Feb 2026 00:11:44 +0000
Received: from mail-dl1-x1229.google.com ([2607:f8b0:4864:20::1229])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtE7S-0000000Cgrj-0ReE
	for linux-phy@lists.infradead.org;
	Fri, 20 Feb 2026 00:11:43 +0000
Received: by mail-dl1-x1229.google.com with SMTP id a92af1059eb24-126ea4b77adso1994232c88.1
        for <linux-phy@lists.infradead.org>; Thu, 19 Feb 2026 16:11:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771546301; x=1772151101; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=j2U93/4fvmbZohmoy0XdQR5Anr+HRvlp6CtO8IRjQgs=;
        b=Tp8fGzIZwN0ZgoE6MpOmHiz/Odd15X0BhHD578ZeLc63wqVmOdqY+pByuIoP+INNwc
         XVFz+acK1GsD9yTFD1tQhG0l5ZBBiJ+vblYnO9XWBvjYLSH+UNTTz7D0S72tlWwbo4Is
         k79NIb3FZdo1Wh9OrF/Hnf4i2R60EtvsCqTZCr68a6CQ8ImNLTdyUo6gwUJh7xzi+j5q
         b6ZFEIqinRibrtoUJ+rKW5B5UPYtpXYdJ0vD6ZwSpXq4BID5h7iVrmpZZOHaQsTvjgof
         kFIZwb1K0OOZNgKd9fYO2qaPaZFFtiTD9s4nTdtOycSs8st/8sli2QLSr/YUV7a1iSk3
         gnHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771546301; x=1772151101;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j2U93/4fvmbZohmoy0XdQR5Anr+HRvlp6CtO8IRjQgs=;
        b=fsKNidgMUw4Z34ZVgIsyRWIuY/05BY3veIgGgCOEcFIiHfxVtcmZnwVttRPCNjK9Cd
         VKuK/0KzBfkQUJxzecQ459qH83cWaGERaRhIlJRjKhE5u8i6SE8oh+g6IUiSxPvVWw7Q
         tjfe5+DKmgi2YGOc5jV7G/Dc71pg8tsrhYf80fakI2oh6MWuuBYsx2Qa8+c7F8bDqnVD
         Lb0QOnNISQNGdu999GRtrejU3OwghizTTdU1acfQtzIOepnWsjPwnnr0wz96SXciUCP/
         6w8KN9geCqsavxJ+DAobHj7sqYnzDYWteTfRB9qw9X1SeHNUw5agxuI5IRrMCAAejsPI
         VP2Q==
X-Forwarded-Encrypted: i=1; AJvYcCViMoSt0JZjXV2H9cUUsRlWI6yMV8+YGcfoV1lT3KSUUGjiJBPsmGKNB+XC4MKJk6eT3H1Q1H3hyn8=@lists.infradead.org
X-Gm-Message-State: AOJu0YzseFxx7366c3qW1Dut0g/lh9BNpglG42Bz6tccSD+22i9O5v3o
	qxtkIHYbuKN50n+YfxpKDWwWCjqnYOHG6ohLcHP3VLUJw3DMixSdTI3x
X-Gm-Gg: AZuq6aKgtlofmsi3AoApeI6X2eGnGoBBmG6OZFfJXQZOvzojpNL3fmIe/refrlOjWqR
	NwbV/J7EyoZys+OsHeV3q8Q3bry5MLadZtd1HKORxdEs7FFV7mDufG5QSIt/I3BRHdUSy9Xe3Sj
	CJwbe5VPNfpc0DGvgJp4FvZIQVeUzYT1Hlea7k65eSr8ACVro2grPjUceP0qK9+dCe8eL+bYjul
	YoC7QOpnXlg4DOVSt/RXhPGgxA5xOFM2lV6FoM3d/XGwQAsdMVgeD2r2o0XNwMD3xHEmYcjXKUC
	ugIx4htF3Cmgf9OI48kUTMXu7LblLFHPX+W37YZaODUDoHu/hwy3OLr9yD56O3hB6I5tFzGHv+F
	Wq4kt61rxPVLpmvqVEFTJ0iRPwM4eYFttyWUOElatqIl/wC7tzUHQvqZTI6jYcySVYIOzNxxGqp
	Za+0ssTiAWgopCPEkfRBVnTZ0dK0BanHtg3a1TYLcmB98y7hdQV7o0ztkwsnbU3Q8y
X-Received: by 2002:a05:7022:6b8e:b0:119:e56c:18be with SMTP id a92af1059eb24-1273982a33bmr8088730c88.38.1771546301197;
        Thu, 19 Feb 2026 16:11:41 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:9c24:8181:603e:7ad7])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-12742cad9desm22301323c88.11.2026.02.19.16.11.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 16:11:40 -0800 (PST)
Date: Thu, 19 Feb 2026 16:11:37 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Johan Hovold <johan+linaro@kernel.org>, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, 
	"Dr. David Alan Gilbert" <linux@treblig.org>, Peter Griffin <peter.griffin@linaro.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
	Zijun Hu <zijun.hu@oss.qualcomm.com>, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: core: fix potential UAF in of_phy_simple_xlate()
Message-ID: <aZemjhBNFyOfKeNL@google.com>
References: <aZejMSJ9qqRWb2pX@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aZejMSJ9qqRWb2pX@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260219_161142_148011_C5A2CF10 
X-CRM114-Status: GOOD (  19.71  )
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

On Thu, Feb 19, 2026 at 03:57:11PM -0800, Dmitry Torokhov wrote:
> The implementation put_device()s located device and then uses
> container_of() on the pointer. The device may disappear by that time,
> resulting in UAF.
> 
> Fix the problem by keeping the reference to the framer device,
> avoiding getting an extra reference to it in framer_get(), and making
> sure to drop the reference in error path when we fail to get the module.

Hmm, I was too rash. There are bunch of other xlate functions that need
to be updated to take the reference.

> 
> Fixes: e6625db66212 ("phy: core: Simplify API of_phy_simple_xlate() implementation")
> Signed-off-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>
> ---
>  drivers/phy/phy-core.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
> index 4ad396214d0c..cf62eb9ddca9 100644
> --- a/drivers/phy/phy-core.c
> +++ b/drivers/phy/phy-core.c
> @@ -682,10 +682,10 @@ struct phy *of_phy_get(struct device_node *np, const char *con_id)
>  	if (IS_ERR(phy))
>  		return phy;
>  
> -	if (!try_module_get(phy->ops->owner))
> +	if (!try_module_get(phy->ops->owner)) {
> +		put_device(&phy->dev);
>  		return ERR_PTR(-EPROBE_DEFER);
> -
> -	get_device(&phy->dev);
> +	}
>  
>  	return phy;
>  }
> @@ -765,7 +765,6 @@ struct phy *of_phy_simple_xlate(struct device *dev,
>  	if (!target_dev)
>  		return ERR_PTR(-ENODEV);
>  
> -	put_device(target_dev);
>  	return to_phy(target_dev);
>  }
>  EXPORT_SYMBOL_GPL(of_phy_simple_xlate);
> -- 
> 2.53.0.345.g96ddfc5eaa-goog
> 
> 

-- 
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
