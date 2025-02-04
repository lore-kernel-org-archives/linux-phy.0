Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07693C02194
	for <linux-phy@archiver.kernel.org>; Tue,  4 Feb 2025 15:50:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zTM4Kk3+fbqw3jACBRsJLmiOMk1gasDjlQYCAYpv+Eg=; b=uvGu/ZOExfC9hC
	/xqPiLbhISMnZBrQUVLNxeRu/g7/gybSUNmmGg2AjQc/fWTJm8bIJlJfThLJUE8hFXOrPRDX/Bu5b
	ZCNTS4N0qjmJfJWig0IqFRUqviuBXs4Zn8Df4ts91lmv2XGoRBcB7J07fBcFBGcIJtb9824qs3KS2
	joSttUcfWwklV7xMUxQVXwNGkRZnE/YHQ7rCHVyEzlhBcj2n7VC0IpWDPErmIJkwBj3kVxIpRcdZK
	U7KQ9ejsyJS/nx0h+h3RkvUH30hs3zK+fMlXRyTvq2zhjBt/gKP2SOuzCEDaOlFFHBztEGIFUGD9M
	E56AGnwMlL7IYJZgnwmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfLCE-00000000sVX-2oxw;
	Tue, 04 Feb 2025 15:50:42 +0000
Received: from mail-yb1-xb2a.google.com ([2607:f8b0:4864:20::b2a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfKzy-00000000qcS-2DwQ
	for linux-phy@lists.infradead.org;
	Tue, 04 Feb 2025 15:38:03 +0000
Received: by mail-yb1-xb2a.google.com with SMTP id 3f1490d57ef6-e549b0f8d57so5420404276.3
        for <linux-phy@lists.infradead.org>; Tue, 04 Feb 2025 07:38:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738683481; x=1739288281; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jVMfm8ZhSAvtr5Dot2F5GueOESbiJOB9RRL5JCbpZyU=;
        b=egiIW5ZoT9HthSeJQid/L+34JMEgnxyAu4rptidIsFcrSDFocYDsDhv2q6FebRSlaL
         hR3kgfaTvMEj9qJAoGAeI7+lJbEnzhwJUGVDICj1fRLLJvEZkIp83mpepKSzAVccDE+2
         m3ahHUMDye1z4ES77LZ3gJomvQBmVr3xOJP8XdMr7L4Rs8o1ANZGy3qUtpkNLytDdVBy
         sqlkLrSePz0m0Szk36BT02h/lbJGKceZPC/5uPlfh43ocbxSnfhEKzhjM5RoA9KSjLFY
         7VWhraiVWJ+B0xtkUWwq5bwqTMZjLIBT+mI0nRNbrFMYioK9/iOcEIv780MZvaBFFTJq
         p0cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738683481; x=1739288281;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jVMfm8ZhSAvtr5Dot2F5GueOESbiJOB9RRL5JCbpZyU=;
        b=aYhVtSi3mxJpKm8+X/E0ezV4iDrae4gUwupKo85t3o1zhhzHdFB/ORZSP7Bk3dvjsJ
         o2NtcWv7p9ltP5POENpYzXcMcpFNfDt1PE6xB1+fVXRahO2C2okwFvCJxkaq2ENuygQa
         vAQst+TQcZHrGu4DVQHoYpfkzHsQHXLzq2o0sz64mpmhUjqkgjFHBFf56gTUSw36XGew
         CmLBHcLGwfXOsj0eyctSF6OT6PLFRYVV6isCcDm6flamGZzSz7VdD/2iYIK9NiOjPpat
         JxUJVB2/6AJuOQgrSsjTsO3KwhG9LUhkAMOZi3Mc+VPIsr68SN9XtEYU7iMJc2WzHOmz
         HajA==
X-Forwarded-Encrypted: i=1; AJvYcCXegC97NfRNR5YWQeE8AXcFOJNy5nP868jFWgxSGeWsJG6vYYGS3QmVCvyjxGZIA2lVApRW5ZxEugc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwhY7ST4kdppmB8wVvn1JdVSvhvz97LX05M4ZqQxuChgjUTVGrP
	S9PoUAxeaeZ/SPSNVd2+DahnGmgQ5mhkUsxPGpMVxl+YS4eSdiyGTmeYDSWevf2b/dyi0qyJAVk
	3KFpsRDdSCJoQp061NUVo7Dh4MFCvzCwAcsic4w==
X-Gm-Gg: ASbGnctHFAu9X/oHa0PAAxcUPsSHTbHNFbjbjuK13Dbfd6m7DzzPTUobF344Yjrf5SI
	Bt3FT1S+t3xXdyO4zDiSaqmdHtoOKZRXOt0MIX2Xv08n7uIAnHul5sKuaneo0xh42gjosmqPALw
	==
X-Google-Smtp-Source: AGHT+IHvgaaPpDS+6zz+NW+qWTxfxKZ5xGI5mBb28CNf8euDfNNskCLrVmo+9LeT8cifH6u3mLCbOQvZ3PdCNlYInak=
X-Received: by 2002:a05:6902:2409:b0:e5b:22a9:fd44 with SMTP id
 3f1490d57ef6-e5b22a9fedamr351835276.27.1738683481129; Tue, 04 Feb 2025
 07:38:01 -0800 (PST)
MIME-Version: 1.0
References: <20250131-gpio-set-array-helper-v1-0-991c8ccb4d6e@baylibre.com> <20250131-gpio-set-array-helper-v1-9-991c8ccb4d6e@baylibre.com>
In-Reply-To: <20250131-gpio-set-array-helper-v1-9-991c8ccb4d6e@baylibre.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 4 Feb 2025 16:37:25 +0100
X-Gm-Features: AWEUYZk_FOEufbv4XIOWWo19tqsP-vJZAmqSGiOD8X2-D-NUV7n8lB7W5hF96hc
Message-ID: <CAPDyKFqnEtnCRcu963t1cBqjHvz2nV+Ymahtpef+ZoCD9-C2Ew@mail.gmail.com>
Subject: Re: [PATCH 09/13] mmc: pwrseq_simple: use gpiods_set_array_value_cansleep
To: David Lechner <dlechner@baylibre.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Andy Shevchenko <andy@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Peter Rosin <peda@axentia.se>, Andrew Lunn <andrew@lunn.ch>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
	linux-mmc@vger.kernel.org, netdev@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-sound@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250204_073802_565675_9E53F72C 
X-CRM114-Status: GOOD (  13.56  )
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

On Fri, 31 Jan 2025 at 21:25, David Lechner <dlechner@baylibre.com> wrote:
>
> Reduce verbosity by using gpiods_set_array_value_cansleep() instead of
> gpiods_set_array_value_cansleep().
>
> Signed-off-by: David Lechner <dlechner@baylibre.com>

Acked-by: Ulf Hansson <ulf.hansson@linaro.org>

Kind regards
Uffe

> ---
>  drivers/mmc/core/pwrseq_simple.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/mmc/core/pwrseq_simple.c b/drivers/mmc/core/pwrseq_simple.c
> index 37cd858df0f4d7123683e1fe23a4c3fcd7817d13..b3a6d053c826741005f1484ad81df30b6bf75bbc 100644
> --- a/drivers/mmc/core/pwrseq_simple.c
> +++ b/drivers/mmc/core/pwrseq_simple.c
> @@ -54,8 +54,7 @@ static void mmc_pwrseq_simple_set_gpios_value(struct mmc_pwrseq_simple *pwrseq,
>                 else
>                         bitmap_zero(values, nvalues);
>
> -               gpiod_set_array_value_cansleep(nvalues, reset_gpios->desc,
> -                                              reset_gpios->info, values);
> +               gpiods_set_array_value_cansleep(reset_gpios, values);
>
>                 bitmap_free(values);
>         }
>
> --
> 2.43.0
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
