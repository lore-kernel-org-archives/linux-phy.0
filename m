Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1BADC6FA82
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 07:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BsNmyM2oNZeSicGm1y/kd697wtNlHfdPCpC6NR1MrTM=; b=v7bRHju21mpDRh
	N1bM258evxwZ50JgI3PhugbUv61nVn7trBydLb//gFNF5Cj8mzQqbwTcgIglGaRrE6CmFGM9VsjpM
	4IGtZSIVoTWGK9nqtAy4UMYO5M7nJ+2vHR6NJME6MMKKnSsK8cMrQLkRVJ91iRI4WYNTOz0diQpWA
	kSOcKsrDmAvO59ZJ3dMY6aSevRUn7QH9r6OXA4kIk0MnDCmybmWhFJiIEvCRyhAvrkPSzi/daslTC
	sk0+ZGzH5YCJ8heQBQEZxZnMThzD5m75H0tn/Y0sFaf23rvdVs4cKRoK37y3jqCaJ9pgeozNc85Ff
	dL/PCvDIVQ5UDrTzo8mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obGYM-00Do2X-2P; Thu, 22 Sep 2022 07:23:22 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obGXv-00DnsF-If
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 07:22:59 +0000
Received: by mail-lf1-x135.google.com with SMTP id a3so13170324lfk.9
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 00:22:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=JDY3wyLD4djHNv21bBZZzvFe5rrOQU/pLSj/gQsk7Ps=;
        b=XwHK0QxbkukB+0pfeLp3iJq83T4xdeHh69DQgP8mfmueJLRE765/q+ase9/sNnJs21
         gef4QcYwhvGMJ5I1rOMv4c8iBQEkec5oCScXqe7tEEAh1hYgL/KDHOgUqd+Y2D7/j3qh
         ZQ4uIoPTMlwg/4tS9A7ZZFfoIDVQ2RJjSyPcTigutEkwRe1QNvQ7h9X83DJcBahprX+J
         dZNgSRwzevigqAap02exRBv78XIlWrdN6evViK4G4y3mTDz+ei4bVP1lYTyUF1vdPNZA
         0xD8F3pll7zdcIu5IlxU0TFQmobM5M56Pr+dXMaCNQmKgBXoiyoGaTwzgD0iXpKJUQQ8
         OP0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=JDY3wyLD4djHNv21bBZZzvFe5rrOQU/pLSj/gQsk7Ps=;
        b=h65SVj+i4a7aOOeNgjVYc+heJXxQGHFMDgwN9dO03ztYNpWyetu4SCPjpkFXv05OuO
         zEdPstyJpW47MUjsL6nnB+vDtmSzu3i/SeJgT1jl6L5POyR0yNEFD7g8IqwEJJz/zlcH
         gZkuQGUcfeqhUQKNgijuZLZKL0nyd2QZnrLgrnq+PBp2P0in1BGOuCX453qC8B2RTUCZ
         S6ZHR60EcFN2PQ/CKb5e5c7PqjDbcScKU9zihk/fp9RBBw/QRA3jZ/XQV4TLuCGJj1Hv
         WFXA7hBPn8McrhF+M1OrOL4sDbYszfmd4MEZMBqdFbpcV6clhJ1+IUiZxsZ85AMNlQZS
         lx5Q==
X-Gm-Message-State: ACrzQf0s4go2oprEzVluZ4TekIlMr6SnCwyxlF9NcbPJ5Jij03wo+GBP
	9YS+ZCYRLKGLEo6Iw5OJ0sdSDg==
X-Google-Smtp-Source: AMsMyM5+A2X0Idpf2Cy8iDaQZo+BvsjA2Xr5j4lwWyGuafVss0uDTPYm+TtzlvtHMoansllc4Ccy/w==
X-Received: by 2002:a05:6512:b9a:b0:499:b537:fe60 with SMTP id b26-20020a0565120b9a00b00499b537fe60mr785618lfv.319.1663831373857;
        Thu, 22 Sep 2022 00:22:53 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id i20-20020a198c54000000b004946c3cf53fsm804450lfj.59.2022.09.22.00.22.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 00:22:53 -0700 (PDT)
Message-ID: <11592bcd-eec7-7cc0-86c6-8f440b6af447@linaro.org>
Date: Thu, 22 Sep 2022 09:22:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v1 16/17] drm/mediatek: dpi: Add mt8195 hdmi to DPI driver
Content-Language: en-US
To: Guillaume Ranquet <granquet@baylibre.com>, Vinod Koul <vkoul@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, David Airlie <airlied@linux.ie>,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Daniel Vetter <daniel@ffwll.ch>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 CK Hu <ck.hu@mediatek.com>, Jitao shi <jitao.shi@mediatek.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Matthias Brugger <matthias.bgg@gmail.com>
Cc: linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Pablo Sun <pablo.sun@mediatek.com>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, Mattijs Korpershoek
 <mkorpershoek@baylibre.com>, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20220919-v1-0-4844816c9808@baylibre.com>
 <20220919-v1-16-4844816c9808@baylibre.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220919-v1-16-4844816c9808@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_002255_684438_A9A9FDE0 
X-CRM114-Status: GOOD (  10.84  )
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

On 19/09/2022 18:56, Guillaume Ranquet wrote:
> Add the DPI1 hdmi path support in mtk dpi driver
> 
> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
> index 630a4e301ef6..91212b7610e8 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dpi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
> @@ -15,7 +15,10 @@
>  #include <linux/of_graph.h>
>  #include <linux/pinctrl/consumer.h>
>  #include <linux/platform_device.h>
> +#include <linux/reset.h>
>  #include <linux/types.h>
> +#include <linux/regmap.h>
> +#include <linux/mfd/syscon.h>

Why do you need these headers in this patch?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
