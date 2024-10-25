Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01F5CD10399
	for <linux-phy@archiver.kernel.org>; Fri, 25 Oct 2024 00:22:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JcqmtRkSgQGGN+PJLeocVlCuOz+mcOf+yFNpXJQ2lqQ=; b=X5YQeCOcV9cgNM
	b0vTiPaklDI1J8E3UL/q5DGwS06PpjSizH50iLGFXjfk5sDdIvLrcLj3GoyRoUyaOsmzIcQrDCKiT
	DTp44yDetZywRSGAIvaNtAvcaWiO2R7F/dRe92Ta/qmTi2MbiK8r82Slf/wJA5nYBGE6hV/qzSWdF
	sAIMw3zp5IcOExNUN2h5oxN8elhHUvJxR+UXPVBtfXWfRM3KiSaqyaGejPaB1FsN5PXwpEJoiWvWY
	lja9Orlw+78uyx0yH66MjO34h7pN1vkz+YK/i/65sVOq1qqvZlG/KiJxwllfXV693XgNDT5frTTT/
	9JJg9Dy4pU7lKJ+xf1WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t485t-000000025EY-0EZX;
	Fri, 25 Oct 2024 00:22:21 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t485q-000000025Bz-0gWn
	for linux-phy@lists.infradead.org;
	Fri, 25 Oct 2024 00:22:20 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-53a007743e7so1819773e87.1
        for <linux-phy@lists.infradead.org>; Thu, 24 Oct 2024 17:22:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729815736; x=1730420536; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=R5EDM7WCg2HOqPHWF0Z+QG+aYFeqPcDdQtBhvkydGgw=;
        b=k1e0g1ajcGE9RboUGt5RCLhLl7eTbdisFByI94CMYtnwDosCS2oj3cIytrIOkpHD0z
         ecC6ZHizshpHQqgw46yLi2hjEKTaf3YCabYvznMj95/lCdYr0eplO3zsDMsw08gqErPF
         jQMCI3sWzKQ2nAhDpL0bXi0cVwAUMw8bTR9VD5nzoqFTUgCe8UBT8HoFxetc86ZLW6Cr
         SkFrZDzoN4aW59lEopyl783wb3oB/9ZPuMs/fZp+0oKPylwDEiWLxGPXeiRdDmymlzDk
         9InqPmYUaQ/p8JVq5UJWAiNFPoJSMQf/2f+mCxhnztzEoego7tjiKo9kdqJhDTH4FAJz
         YZSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729815736; x=1730420536;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R5EDM7WCg2HOqPHWF0Z+QG+aYFeqPcDdQtBhvkydGgw=;
        b=Q1jMasHXNQcq3a1dR0pBWx+wxnyKMoFCylPCUyetfyrUdFOiIPUqD35jpvMx/5eVd9
         qPwfoFB3hqtMdbjf4d1BmZaXx5BbXuSz3JnKND8wkr5VSSeZ2M6DZd2/N9alKlsp5psB
         7o2koGAgWWdr7wFj81alCsoZJAr9LT5nsQs4oIObiDCUbwgTtgO9SaBa8l8NIgf520C1
         XgHyAmjItHdiAJhImnD+EQvdJzbA3FTg7KmBj15lTrlJIV5fOSNZD3SE9jn6uH1JPXii
         BjRSW0FmlQPEzheyoCxLgzSt05PGptBqdRaRBhXg8MAG6keP5xtgSakJPk0EjrWF6dc2
         NEmQ==
X-Forwarded-Encrypted: i=1; AJvYcCWh7yIKsA4nlm2rLAUS+50Lg4/RbbqgvyS+ojDuuhcdM91NVDXLyanLfEXzycDKkpUAg0b3rxFjDsM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy0bxsXylxTWGyT7bQ6sCqcfJp75ukGMeCjZsnoA+jhLfGA6YE/
	7wMebjKfvwj2JpV7x1/cSAajtmTsZPh2ErHZYRWhtMDZmjztndngxcU2rMNC5Ts=
X-Google-Smtp-Source: AGHT+IEwuZSNpMSc/jRW5N16zJFZH30TVd1uv/g/woovx2Ntbz3yvr/09wQ54BLmhll7f9heX5zoUg==
X-Received: by 2002:a05:6512:10c5:b0:535:699b:b076 with SMTP id 2adb3069b0e04-53b1a31f1d6mr4467181e87.16.1729815736306;
        Thu, 24 Oct 2024 17:22:16 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53b2e1afe39sm6621e87.140.2024.10.24.17.22.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2024 17:22:15 -0700 (PDT)
Date: Fri, 25 Oct 2024 03:22:13 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Saravana Kannan <saravanak@google.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, JC Kuo <jckuo@nvidia.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	=?utf-8?B?TsOtY29sYXMgRi4gUi4gQS4=?= Prado <nfraprado@collabora.com>, kernel-team@android.com, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Subject: Re: [PATCH 1/3] drm: display: Set fwnode for aux bus devices
Message-ID: <dz2tfpufzgmvxls2stxagz73x3krbammkc2zdycqsiy62tnlog@ztg4yujvyeob>
References: <20241024061347.1771063-1-saravanak@google.com>
 <20241024061347.1771063-2-saravanak@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241024061347.1771063-2-saravanak@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241024_172218_232894_2DFB5E2A 
X-CRM114-Status: GOOD (  13.41  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Wed, Oct 23, 2024 at 11:13:42PM -0700, Saravana Kannan wrote:
> fwnode needs to be set for a device for fw_devlink to be able to
> track/enforce its dependencies correctly. Without this, you'll see error
> messages like this when the supplier has probed and tries to make sure
> all its fwnode consumers are linked to it using device links:
> =

> mediatek-drm-dp 1c500000.edp-tx: Failed to create device link (0x180) wit=
h backlight-lcd0
> =

> Reported-by: "N=EDcolas F. R. A. Prado" <nfraprado@collabora.com>
> Closes: https://lore.kernel.org/all/7b995947-4540-4b17-872e-e107adca4598@=
notapiano/
> Tested-by: "N=EDcolas F. R. A. Prado" <nfraprado@collabora.com>
> Signed-off-by: Saravana Kannan <saravanak@google.com>
> ---
>  drivers/gpu/drm/display/drm_dp_aux_bus.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- =

With best wishes
Dmitry

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
