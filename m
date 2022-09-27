Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F33D6C54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 27 Sep 2022 13:04:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	MIME-Version:In-Reply-To:References:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dtqcHPubvWldInFF33xtkmcWI/xj3L79AjNkGMZcmhM=; b=UIyau6tAyE+Rh/Vj+RuLcRacDW
	NQ3/J4egPjiSySO/5PxNVpCnPMGInTPuTIz6Zatb5I7b1Hy4BfZFWjEzFzedW1kNXnvl8aJ03mkhb
	f2dmEBVsPRN6HlnKsy3r32fP8jv6krX0gTvPO6M9/Z19+117P+zRHi3lJgRShRBzZmw1wlVSZ5HPp
	ADutqfTnj3cliXBPHHV013rYPoWoq7O2YUBs5zLvw80aThcS+s6LnqI9YJytrtrIZdREFX4p9nv9S
	tcCfVjGdMJxqcZq+L/O8oS4NmYsaTUy8EesLO4NKp5xqwVtcTF65DT2DVkNmtCdxOqXr3gSjba3nH
	zSVV9Xbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odAG5-00Afhb-Dx; Tue, 27 Sep 2022 13:04:21 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odAG2-00Aff7-98
	for linux-phy@lists.infradead.org; Tue, 27 Sep 2022 13:04:19 +0000
Received: by mail-pj1-x1036.google.com with SMTP id q35-20020a17090a752600b002038d8a68fbso15546630pjk.0
        for <linux-phy@lists.infradead.org>; Tue, 27 Sep 2022 06:04:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:mime-version:in-reply-to:references
         :user-agent:from:from:to:cc:subject:date;
        bh=5A9tE5XjShKgk0dp4mGM6QaE+oB3gw3GtO9g42ZRvK8=;
        b=K6t+GiDMxCE5PqXx9M7wnOxrmVe8RhMGvnDnBYG8NOKa2YssCusIkZAF4W4yvOQESA
         grgJhoRBvxxax0+eCuPKh8p2W5rWUX6HXDrfWlnt3QOGcvz2Z0pKWEx5bc2keTzCKDPA
         EFNonbeyTfJxCD6F40ovXsaSvZaA6ciUzimvjumUgzudbGcVF+jQjdL0HxEI5YO8kDxR
         uaL+FNOyGJVlqjEpMvpc2MXt9w63j7o81b3Y3ky55r6MbLY0d+jh1dOdyFrtP5/68Jsh
         ZON8Od6QdsueW9v6KQ7nfWtM/RdVCng56yDGIVeLLVpq3zbI72tvF/vuGVGpBIBmWRps
         bqHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:mime-version:in-reply-to:references
         :user-agent:from:x-gm-message-state:from:to:cc:subject:date;
        bh=5A9tE5XjShKgk0dp4mGM6QaE+oB3gw3GtO9g42ZRvK8=;
        b=2OKlj8jIi8obellvJY4g/Y3jzHd/nqMQUPIaDAH2AUP59rRBZw3nrlwvHQtCyOTftP
         U8wip5tD4hHfpvIdb5XU079ztrJcwuq7hgTpnEZEGbFos6FWtA+Ph/xswrlobGkwfbjQ
         VrhOoBaHYsYX4qJiIVeQ0rwPtO0mAIdlmC1s4aYRoACc6OPpjfB+CR2gkThGauxKnHQa
         igeoNMbe7FwFsWo0kYfYyEGjB1hMrbkC4eGxadnZOKFYPRmbghf8PJ2Em5wyjtfeHmAk
         m8ambj+aPgQ4H1ZNTy35T3v+DLZBR/2JMc1WZw6aG6hogf0zTazs9aLA2ACAue1/0pCQ
         EQPA==
X-Gm-Message-State: ACrzQf2Q3Ylo82aQRZNahAnDnsh80OhudC+G2x5x/mNyiI221gCmzIG7
	HFGqGPkp7X+rnrCjFYkjSTdEUEqxLEnzNdAVh64LhQ==
X-Google-Smtp-Source: AMsMyM5gawCoKKBTAHhXh48htU73+kqaFhoDJNb7qglhir+j3HxUZ0tCej0iXrKwzR9+MRTcHiP7gPgmwpcjXrYibm8=
X-Received: by 2002:a17:90b:33c9:b0:200:a0ca:e6c8 with SMTP id
 lk9-20020a17090b33c900b00200a0cae6c8mr4481943pjb.147.1664283852916; Tue, 27
 Sep 2022 06:04:12 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 27 Sep 2022 06:04:12 -0700
From: Guillaume Ranquet <granquet@baylibre.com>
User-Agent: meli 0.7.2
References: <20220919-v1-0-4844816c9808@baylibre.com> <20220919-v1-17-4844816c9808@baylibre.com>
 <a0a3c427-c851-ae5d-4010-e94740bf9f6e@linaro.org>
In-Reply-To: <a0a3c427-c851-ae5d-4010-e94740bf9f6e@linaro.org>
MIME-Version: 1.0
Date: Tue, 27 Sep 2022 06:04:11 -0700
Message-ID: <CABnWg9s3N_Ua9g0S3x0uj8PN4FtOX6DO+zQcBzGFqoLTL1J24A@mail.gmail.com>
Subject: Re: [PATCH v1 17/17] drm/mediatek: Add mt8195-dpi support to drm_drv
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Vinod Koul <vkoul@kernel.org>, 
	Stephen Boyd <sboyd@kernel.org>, David Airlie <airlied@linux.ie>, Rob Herring <robh+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Daniel Vetter <daniel@ffwll.ch>, 
	Chunfeng Yun <chunfeng.yun@mediatek.com>, CK Hu <ck.hu@mediatek.com>, 
	Jitao shi <jitao.shi@mediatek.com>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Kishon Vijay Abraham I <kishon@ti.com>
Cc: linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, 
	Pablo Sun <pablo.sun@mediatek.com>, linux-clk@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Mattijs Korpershoek <mkorpershoek@baylibre.com>, 
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_060418_326913_F5B2DA9E 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
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

On Thu, 22 Sep 2022 09:20, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>On 19/09/2022 18:56, Guillaume Ranquet wrote:
>> Add dpi support to enable the HDMI path.
>>
>> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
>>
>> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
>> index 72049a530ae1..27f029ca760b 100644
>> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
>> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
>> @@ -820,6 +820,8 @@ static const struct of_device_id mtk_ddp_comp_dt_ids[] = {
>>  	  .data = (void *)MTK_DPI },
>>  	{ .compatible = "mediatek,mt8192-dpi",
>>  	  .data = (void *)MTK_DPI },
>> +	{ .compatible = "mediatek,mt8195-dpi",
>> +	  .data = (void *)MTK_DPI },
>
>It's compatible with the others. You don't need more compatibles.

Hi Krzysztof,

It's a bit confusing, because this compatible is used in both
mtk_drm_drv.c and in mtk_dpi.c

Albeit it's entirely the same thing regarding the mtk_drm_drv module,
it's pretty different
regarding the mtk_dpi module.

Thx,
Guillaume.
>
>Best regards,
>Krzysztof
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
