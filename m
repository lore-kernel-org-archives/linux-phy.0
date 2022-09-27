Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2483AC6FA83
	for <linux-phy@archiver.kernel.org>; Tue, 27 Sep 2022 14:29:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g7p+4lcwXzQ9yMsNLL0wtDw7D/GNAYxWAOeXY/diFz8=; b=lsghIAjKQ/qn2k
	6Ny5R8YYxsin1Me7OE4mp3dqzEGoJVCtILJH+/8cxwQc6CA7zE/uvREryuS5I301R5nXqPZNVMDzN
	5hPeomKcskupedT0FVFwGYuT6jRaEzj/KZeqiel8vctlT+9T2G94tddcWju+xMogS6b8c++hnh27/
	UCBCzDwS+35T9wHVOwPTOmzcEmp3xGXAkd/0Urj84kVMhpjmvQNkMRHyRPU96xByilgS9h5TJRen4
	U1U8FzXtVlbjXezipCjwImvh4zrcNjaXlmltayG8JGA/wDNfCLNO8B74a1pBku0qqKdOkrGNKB+GA
	mYkM4w1k5IzturNcCC7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odBa5-00BEvV-Fw; Tue, 27 Sep 2022 14:29:05 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odBa0-00BEsG-66
	for linux-phy@lists.infradead.org; Tue, 27 Sep 2022 14:29:02 +0000
Received: by mail-lf1-x12a.google.com with SMTP id a3so15962220lfk.9
        for <linux-phy@lists.infradead.org>; Tue, 27 Sep 2022 07:28:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=92yZ7qnRQqA49V70vN00C9HGqUmmV5lex66grIlTbSc=;
        b=t/zPAMSAQWX7Jp2Kkrznx3pd8BaYj/V4IovrZOP0p7CA9dHLcTpMosv+TEf82eIdQN
         ZzPiXw9rKlWK7dgrb/2R9JIb8zq9h17dOUBhdV7CLo6ItGSkQYBffOF2Ou5wtqP2NA3T
         N9rEoP+h50jfo80xq4j1r3mCJzXfyYlWLZNzw2x5BGe+XyxiWRwC+2x4+yiqv6IzriEM
         fuXrcHsauWPdkNwTqAUt31tFVgYpbwvnD8NThfc3Z4YxzLdIRb1JExpoeuZAlbZVjurb
         kbFPPAxHbGw01+RTl5nssKqglXejrUk6qW39J2Eas+i02imuJL8VJjhw11y61M81MWAG
         3WYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=92yZ7qnRQqA49V70vN00C9HGqUmmV5lex66grIlTbSc=;
        b=nh4KDGVBWGo7A0FVjBKppZy0ekMRPfRj6Z6roxLEGS9KccdHNAHnpbXOqNbFNMvmP8
         gjEnC1VZsuvF1096c0LWuu/6BzKjWZRNXAsTxXiymrI/TyrkU5fyJqDU+DYcn7B6XLJk
         8DM42N7EpIazdm5iU+h1uk6DOBj28QLF1beXfpiecGw20vSvqC5BwnPK+IiZjPpr6IDv
         2cjHd9sa4FMa7ApUQBQGlJuLnktM3li79iq4TMgzcpZyqcuWwteClioPlaVWWip1r00J
         y6REMYbr4kRHEN/pkFEwc7wBIfxfwkJZX4/cpw9xhCPTAMtkpCjqPeVi5/T7ph/wUgdO
         1OBQ==
X-Gm-Message-State: ACrzQf1ZVGE6cO9q1M5yHSgPhG/fElefdLeQ20KV4DZW3VWgWQH/Vq/9
	/VP3MxEuFHLT9WFQBIrnyh3Whw==
X-Google-Smtp-Source: AMsMyM53dC3y7erBKfzBQ+Nze0zZtnLF71JT4J25PfiX1YCvYNVOBA7+2R4vFWpiZCxVk3PBax4BpA==
X-Received: by 2002:a05:6512:308f:b0:49a:5a59:aa25 with SMTP id z15-20020a056512308f00b0049a5a59aa25mr10629204lfd.44.1664288937219;
        Tue, 27 Sep 2022 07:28:57 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id q12-20020ac25a0c000000b00494a1b242dasm182416lfn.14.2022.09.27.07.28.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Sep 2022 07:28:55 -0700 (PDT)
Message-ID: <bc64b69d-3d65-f5ca-a688-2ad1a055ba4b@linaro.org>
Date: Tue, 27 Sep 2022 16:28:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v1 17/17] drm/mediatek: Add mt8195-dpi support to drm_drv
Content-Language: en-US
To: Guillaume Ranquet <granquet@baylibre.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, David Airlie <airlied@linux.ie>,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Daniel Vetter <daniel@ffwll.ch>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 CK Hu <ck.hu@mediatek.com>, Jitao shi <jitao.shi@mediatek.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Kishon Vijay Abraham I <kishon@ti.com>
Cc: linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Pablo Sun <pablo.sun@mediatek.com>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, Mattijs Korpershoek
 <mkorpershoek@baylibre.com>, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20220919-v1-0-4844816c9808@baylibre.com>
 <20220919-v1-17-4844816c9808@baylibre.com>
 <a0a3c427-c851-ae5d-4010-e94740bf9f6e@linaro.org>
 <CABnWg9s3N_Ua9g0S3x0uj8PN4FtOX6DO+zQcBzGFqoLTL1J24A@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CABnWg9s3N_Ua9g0S3x0uj8PN4FtOX6DO+zQcBzGFqoLTL1J24A@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_072900_293006_028D55ED 
X-CRM114-Status: GOOD (  15.81  )
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

On 27/09/2022 15:04, Guillaume Ranquet wrote:
> On Thu, 22 Sep 2022 09:20, Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>> On 19/09/2022 18:56, Guillaume Ranquet wrote:
>>> Add dpi support to enable the HDMI path.
>>>
>>> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
>>>
>>> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
>>> index 72049a530ae1..27f029ca760b 100644
>>> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
>>> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
>>> @@ -820,6 +820,8 @@ static const struct of_device_id mtk_ddp_comp_dt_ids[] = {
>>>  	  .data = (void *)MTK_DPI },
>>>  	{ .compatible = "mediatek,mt8192-dpi",
>>>  	  .data = (void *)MTK_DPI },
>>> +	{ .compatible = "mediatek,mt8195-dpi",
>>> +	  .data = (void *)MTK_DPI },
>>
>> It's compatible with the others. You don't need more compatibles.
> 
> Hi Krzysztof,
> 
> It's a bit confusing, because this compatible is used in both
> mtk_drm_drv.c and in mtk_dpi.c
> 
> Albeit it's entirely the same thing regarding the mtk_drm_drv module,
> it's pretty different
> regarding the mtk_dpi module.

Sure, but this does not explain why do you need these entries here in
mtk_drm_drv.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
