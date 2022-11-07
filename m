Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B3A0C433FE
	for <linux-phy@archiver.kernel.org>; Mon,  7 Nov 2022 15:06:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	MIME-Version:In-Reply-To:References:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=S66fnFRjSeq8eItMtmrBzl7HuRJ/iZIckSzaLwAJVEU=; b=DVo1vzVZ8s5x9m6aN8Ds4n41Yf
	OqJ4mrc28VhxJylVuWwag6RC1i5xXwy/xmG7++hfL88N+vdsDalTr8603hdcS7P2Y3aBt01x6pNEb
	kBiLqUpbMJt93M+zu7VQ1cP2gLn9Xjy7+y1xA5TLr8XAFU64EbsFEYd+7+yRqPCMwhmw53IyGfyxo
	lQUKR4HWBW3rWq5omMSizRQZnk6AzH/yoMp6MVPpqHIsmT760amEa9Dondz9mtCj8HMMNyuM9GvBE
	7ipe2KvXvr8TBwInJwJmfQTt7CJPM6x25AZIH0zRYmvJDS7qIn1mDR0sYOaZ9n6o95S7xdgY+ObK2
	jxp21+Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os3hZ-00FXLs-CP; Mon, 07 Nov 2022 15:06:17 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os3hV-00FXJS-4I
	for linux-phy@lists.infradead.org; Mon, 07 Nov 2022 15:06:15 +0000
Received: by mail-lf1-x130.google.com with SMTP id g12so17147448lfh.3
        for <linux-phy@lists.infradead.org>; Mon, 07 Nov 2022 07:06:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:mime-version:in-reply-to:references
         :user-agent:from:from:to:cc:subject:date:message-id:reply-to;
        bh=msJlygCwztcKRCpl1OXcVZ463IWdf/JAulr8vPXr8uc=;
        b=kw/1CVr1CvRVBN7ppDzHuBwXNvTpjmdU+210GrNG3Nc4b7E6jprzvZIHSr8pmgM/I3
         Ooumonhq2AA5Z/bDkgOMmb2uuM0HYdIO4QfNzuv00lDToNyHDOw36qPCZqLGXo4Ny3Rv
         8GkkhYRZVPrpYZIyCy0c/BpWEycFDPgrnqVXz0/oGqCFsBGaXEqVwjB2ectF8uoWJPDw
         cqsZOPBXQ8MKkKJ4OYLi5exG/8EufN0ybQVFN2TtQD6A6dL7rQVdsIKxIZG1aTs5d6oI
         3O2K+mIJ1o8KaZwC8/MgU6kRcp+hsoW+as5mFzAkuL6pYASSSpWkf57h2MlRn8yzVn5+
         jiqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:mime-version:in-reply-to:references
         :user-agent:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=msJlygCwztcKRCpl1OXcVZ463IWdf/JAulr8vPXr8uc=;
        b=k+Wfvq9zhTO8iouYV55bnMS6h/xnfhy2SovNJHoz+8c8odvNcZi/YTF3St3H1fS/KP
         +EdJzUH0httb8tGHNG0fDgNypUZtrGnSvrjNZwP0Ttzqu6TV+KQUpNt8eoOrX1oEv+ib
         FmqrPefAArMFmkKhrP8OBVSIKr13bCk1X00AbcJwWb05svF4wuDYR/aNCyuAGWxJ50UA
         f20yAy0TXF+xP6YCqQfaQx2tY4RJjORct8qa5hpjKHBqp3pF2ioLFwWrNyuoBQTKV6uv
         DEyM3V5c6hjalF105J89soV5pwJhdGJ0rCPAyXbCXmJnTPpVMBp0hn3vmAmJVoIn/T97
         SCSg==
X-Gm-Message-State: ACrzQf35YSbI6I6htBhscqOYRV2oOogyEPuOEPfFn8Ec8Uu167LlY8ok
	jN6limyM/veaRrrub0/SMYY/imsuWJr5Ai5g8QAnsQ==
X-Google-Smtp-Source: AMsMyM4/hRdV6PUceQjYTAr5VlJwQq0PJWF/plhX/TikjJfOvo1/P9XLmwGDedaShVJ1ltmLlfA5kP20+nvh1Rr9HWY=
X-Received: by 2002:a05:6512:a93:b0:4a2:a5b3:fbb4 with SMTP id
 m19-20020a0565120a9300b004a2a5b3fbb4mr17334447lfu.346.1667833571328; Mon, 07
 Nov 2022 07:06:11 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 7 Nov 2022 15:06:10 +0000
From: Guillaume Ranquet <granquet@baylibre.com>
User-Agent: meli 0.7.2
References: <20220919-v3-0-a803f2660127@baylibre.com> <20220919-v3-12-a803f2660127@baylibre.com>
 <988b0a7a-69bb-34e4-e777-1d9516221077@collabora.com>
In-Reply-To: <988b0a7a-69bb-34e4-e777-1d9516221077@collabora.com>
MIME-Version: 1.0
Date: Mon, 7 Nov 2022 15:06:10 +0000
Message-ID: <CABnWg9t0KznQG1Mix=jSchk99Xj-h3Bf28WTaP9gc8AC6yLr7Q@mail.gmail.com>
Subject: Re: [PATCH v3 12/12] drm/mediatek: dpi: Add mt8195 hdmi to DPI driver
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>, 
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, Chunfeng Yun <chunfeng.yun@mediatek.com>, 
	Jitao shi <jitao.shi@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
	Vinod Koul <vkoul@kernel.org>, CK Hu <ck.hu@mediatek.com>, Daniel Vetter <daniel@ffwll.ch>, 
	David Airlie <airlied@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, linux-arm-kernel@lists.infradead.org, 
	stuart.lee@mediatek.com, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
	devicetree@vger.kernel.org, mac.shen@mediatek.com, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_070613_230184_5445E0B2 
X-CRM114-Status: GOOD (  15.56  )
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

On Mon, 07 Nov 2022 12:20, AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>Il 04/11/22 15:09, Guillaume Ranquet ha scritto:
>> Add the DPI1 hdmi path support in mtk dpi driver
>>
>> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
>> ---
>>   drivers/gpu/drm/mediatek/mtk_dpi.c      | 143 ++++++++++++++++++++++++++++++--
>>   drivers/gpu/drm/mediatek/mtk_dpi_regs.h |   5 ++
>>   2 files changed, 141 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
>> index 508a6d994e83..8052b47042b8 100644
>> --- a/drivers/gpu/drm/mediatek/mtk_dpi.c
>> +++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
>> @@ -14,7 +14,10 @@
>>   #include <linux/of_graph.h>
>>   #include <linux/pinctrl/consumer.h>
>>   #include <linux/platform_device.h>
>> +#include <linux/reset.h>
>>   #include <linux/types.h>
>> +#include <linux/regmap.h>
>> +#include <linux/mfd/syscon.h>
>>
>>   #include <video/videomode.h>
>>
>> @@ -65,10 +68,14 @@ struct mtk_dpi {
>>   	struct drm_bridge *next_bridge;
>>   	struct drm_connector *connector;
>>   	void __iomem *regs;
>> +	struct reset_control *reset_ctl;
>>   	struct device *dev;
>>   	struct clk *engine_clk;
>> +	struct clk *dpi_ck_cg;
>>   	struct clk *pixel_clk;
>> +	struct clk *dpi_sel_clk;
>>   	struct clk *tvd_clk;
>> +	struct clk *hdmi_cg;
>
>I admit that I didn't really check these clocks, but judging by the names,
>it is highly possible that one (or more) of them are supposed to be parents
>of some others.
>
>The first suspicious ones are dpi_ck_cg and dpi_sel_clk: please check.
>
>I'm also not sure about the hdmi_cg, shouldn't the DPI have a HDMI port in
>the graph that you'd declare in devicetree?
>
>Besides... you're doing a lot of work to check if (is_internal_hdmi) for
>power up/down paths, but seeing that you're introducing this change after
>adding the HDMI driver makes me mostly sure that the internal hdmi that we're
>talking about here is the one that is managed by the HDMIV2 driver... and
>this means that you should really, really, really rely on connecting inputs
>and outputs the right way in the devicetree, as that will most probably make
>you able to write practically 0 code to manage power for the DPI... and may
>also remove the need of adding the hdmi_cg clock here...
>
>Regards,
>Angelo
>
>

I don't have access to a clock tree documentation or anything that permits
me to answer those questions with confidence. I'll ask mediatek for some input
and I'll also check how those clocks are declared in the clock framework.

You are right in assuming that the "is_internal_hdmi" is in fact the V2 IP.
I like the idea of removing code, I'll try to make sense of your suggestion
and see if there's anything I can do better for v4.

Thx,
Guillaume.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
