Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1E64C6FA8B
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 07:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cOfeRzyBhGM1PoVyZNZ0Rb/wBHjpIYXtkenAY6E2bOY=; b=mMf+sBtdtMIzsu
	QcfeuEq4jzHi/F+yuLpY5MOU+p2vSJc49NRxmWvLBK7MllchVuiWurUS06B7gPyMgXxxeDcQ3bkZr
	jK6YORMNJYfH7GDtgGZAD/pPSzS1pImWO8bs6q6xX0sjSNoOGow1Sio0aJ8qVpLqgk36OmnJGkMnY
	sQfk5+jzswPJCjeYm8lxSSQhBlA8xFpIOicQ5FfKqALSmyGQ/IdklR4p3MBHoy04kYOCv7BBQ12Vf
	fQWGxfqtDWnUCHpoCB1Jis1eZEPRFhbrqhgDnTKmljAZpI3JvKGzjYQ2dt+iQoKzVQjpGPG2DdtCd
	AFiYcUXZBA9apks8L3vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obGWP-00Dn6M-2L; Thu, 22 Sep 2022 07:21:21 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obGVw-00Dmp7-HU
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 07:20:53 +0000
Received: by mail-lf1-x131.google.com with SMTP id o2so13161750lfc.10
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 00:20:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=TPd1M8oBjHnNozp05d671P5pFiuRlsalsS4w6miNryU=;
        b=DEJqWRMQjOJQ8++nLzN9KbMQNg31pNbXrNYPjUYeHJxeulmWbiO3uwjEydrBT8enpx
         5sS2fPSXu9nqh8I/U4KFSjfV3G927s/rv1tqmj11Z2hF3kMbAnVU2AD+yP09o57fyrB4
         3cJUgnwaYKiaus3XEQp1bZ/IX9OrFDM730VMEIsL18ne6cBc8bpe+z91516vR0rgCpTP
         AiRjBaf+dMkrbqac4f8myV0JWSpk4Ag1fPfLQclSe47PPYVhP9hqgVE/2t3wrtFREca9
         Dd1w0tMisqyJRSHK931fl/LPYRhJH7/SXY2e8WeY+Ypjx66EOWYGyniBFn6hR7Q3Zlzw
         uVSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=TPd1M8oBjHnNozp05d671P5pFiuRlsalsS4w6miNryU=;
        b=zPjb9Og7+21MssnlQkkuoY8BD/mg4LxUgDajwYeTBHVBY/oDhxDjFm0/aih4strpdx
         N/f3up1EYyvS6snCJsgz0UsL+QQ4+tbZgj0AVUAdrh4N/rX/J3W6pGGkKFj1Lg0mIam8
         oPuiwtphEzurmaEuDF7/jF6HzPRom+NTrbk2P9gWcU49AWGCn5V9LFHFJEm2go4F7Vt9
         EDMaKWVCCpOC+SMON3iDrk4TBSgNluzUHztJHLcgwTyB11n5zqADfCwY/ndg1801y7T9
         zrN3UNy1NPlpV4k/5nLXnRN4qiiLlTWhKuoLwMmizDvwwfEi+pmAuCUGb+2zSWQvXUpU
         Xpxw==
X-Gm-Message-State: ACrzQf3UnFwvWhpTrxy2e2xctYy3gwF/mlKyl2/droGGSNiLGm72iw0q
	t7y4aguap+S4wd9//mkPSZjMCA==
X-Google-Smtp-Source: AMsMyM55t1rNZFbd9M//L345bj9ZqSPstb512C/ND5LsTPVxSfYeiy0p88QI81OjW4xD1dRYCtEUEg==
X-Received: by 2002:a05:6512:3187:b0:49e:6607:3a75 with SMTP id i7-20020a056512318700b0049e66073a75mr681890lfe.28.1663831249033;
        Thu, 22 Sep 2022 00:20:49 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id u9-20020a199209000000b00492e570e036sm801300lfd.54.2022.09.22.00.20.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 00:20:48 -0700 (PDT)
Message-ID: <a0a3c427-c851-ae5d-4010-e94740bf9f6e@linaro.org>
Date: Thu, 22 Sep 2022 09:20:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v1 17/17] drm/mediatek: Add mt8195-dpi support to drm_drv
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
 <20220919-v1-17-4844816c9808@baylibre.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220919-v1-17-4844816c9808@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_002052_632957_CCA03A59 
X-CRM114-Status: GOOD (  12.28  )
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
> Add dpi support to enable the HDMI path.
> 
> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> index 72049a530ae1..27f029ca760b 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> @@ -820,6 +820,8 @@ static const struct of_device_id mtk_ddp_comp_dt_ids[] = {
>  	  .data = (void *)MTK_DPI },
>  	{ .compatible = "mediatek,mt8192-dpi",
>  	  .data = (void *)MTK_DPI },
> +	{ .compatible = "mediatek,mt8195-dpi",
> +	  .data = (void *)MTK_DPI },

It's compatible with the others. You don't need more compatibles.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
