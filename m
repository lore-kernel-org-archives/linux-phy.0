Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E11FC54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 27 Sep 2022 13:34:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	MIME-Version:In-Reply-To:References:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7Jejer9UC5O7oZJKSvC0egGtsurxqCn0hYx2vcQOUnA=; b=kxasfjPa/3o7oyhrk6t1Norh9p
	aCXb+YEd8w8a1CecTuahKITN1PuiRfcGA9QGjuk/GIJNk9zbYjOQ+NveQMk6eYexgAq6JFNczRuYV
	oVtLVnYLOBrjxO9jY/T/JPQRAiS1W1DZaj85Gm3Xv5VZisTmcTUJe4nY1ZS3a9XxB0+6hd/RlMEie
	5VGIB7yDFcBpNjeWoN6vuGXhinhdcJ5YQ8/P7j3HYava5jruov9fYwgoVEcBeWp0o16YlmVLkczU3
	gTr7utwM04wM6ieei4o0DyAs8hpsfokq32i/DYkN1ODf3tpTSV0wJclCniO2x4ZB+c/sj5j1a/n8F
	kCM08Czw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odAja-00Atpf-Ir; Tue, 27 Sep 2022 13:34:50 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odAjO-00Atjq-BY
	for linux-phy@lists.infradead.org; Tue, 27 Sep 2022 13:34:41 +0000
Received: by mail-pf1-x42a.google.com with SMTP id d82so9669727pfd.10
        for <linux-phy@lists.infradead.org>; Tue, 27 Sep 2022 06:34:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:mime-version:in-reply-to:references
         :user-agent:from:from:to:cc:subject:date;
        bh=5KO5UAD2T7DgoYPQgFD91UfqIRE232yyISaSFCJ9s3Q=;
        b=SoU+eGuksQQhlnS7N57Z73aJoRcn1Yf2NhRhsCodkYOiV7LO9opJ5E2VCYREe5jIix
         Oek/U1yUHENSgLff5LPnC8g96rDkpkyHkyN8K4ng0t6VFbZFhaiBdfyEbni+0RGn8Bvq
         Xr0f0Eoqt6tUwJZdRxqQtkBIbO01YSyEzs/YfPOplLElabdw79du1/QP496W/K521tAO
         KKfJLi1VzArX+CrDYSiZD5o0f3yZ/lI0HMD3tk0S9NVt07KumdMGtpOn2kdj3DfJ9Blo
         P1h+q5XNmMceyQpXed0kBCLxxC8hoyH9lz/GILiJzcJK3VEBQWlBG8Gm4O571ponUsdt
         IIhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:mime-version:in-reply-to:references
         :user-agent:from:x-gm-message-state:from:to:cc:subject:date;
        bh=5KO5UAD2T7DgoYPQgFD91UfqIRE232yyISaSFCJ9s3Q=;
        b=jMtoieBbLHmRtDfMz54SS6AaTR2yqyYKvEEb6+V5J3B90JWqYXf8fvoBI50HBuPiIy
         lfgxS0Jsk4cOBZW8HSo/7waybRQr/rzvzyXY0MTqigtS0suwIIEs8xQLlxBdqzYVXZmm
         OHbc6+uP0USrfC/80TIQndoT8/8g5+I25rzZxlHWyC/MQl5DUlSuVGFbdLB1gyXO9YiH
         He49K2H2VeahwS4/d6DrtQ77iW43y0BsSfFre+rHZ1+jeGNOulkMTf+jpExcu7MMuJbB
         B+DryIytgSHAV7EN0ZCOJduwGuV/IAQxAtLkEoB1alUWdujHtLds3wOAPKOjdXv9W0sn
         rBNQ==
X-Gm-Message-State: ACrzQf0HyBfStBtt4uKfRxNr3buqbkx16u6QgCLNGnhodp6ji0+1nSso
	24c641IDmHJhZ9DEIjUY9Oq9CkQfA0KP1rC0Kj+N6w==
X-Google-Smtp-Source: AMsMyM4YIhFYJqfTMqQFxzcbSAJDenFpMeYijY6ikC/aRvNNUlM8pp9LqLPwxTZew8CdZonFZQtK3Mf4GpGS1w183Kg=
X-Received: by 2002:a63:b55d:0:b0:439:7a97:b89 with SMTP id
 u29-20020a63b55d000000b004397a970b89mr24899166pgo.70.1664285675305; Tue, 27
 Sep 2022 06:34:35 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 27 Sep 2022 06:34:34 -0700
From: Guillaume Ranquet <granquet@baylibre.com>
User-Agent: meli 0.7.2
References: <20220919-v1-0-4844816c9808@baylibre.com> <20220919-v1-16-4844816c9808@baylibre.com>
 <812a5de2-dbe3-2f0d-492c-16ea004c996a@collabora.com>
In-Reply-To: <812a5de2-dbe3-2f0d-492c-16ea004c996a@collabora.com>
MIME-Version: 1.0
Date: Tue, 27 Sep 2022 06:34:34 -0700
Message-ID: <CABnWg9sSbtXYLpcCoEts73CAsciKMEeMMRwfcfGng8H-rGYvkA@mail.gmail.com>
Subject: Re: [PATCH v1 16/17] drm/mediatek: dpi: Add mt8195 hdmi to DPI driver
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
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
X-CRM114-CacheID: sfid-20220927_063438_412779_1F427746 
X-CRM114-Status: GOOD (  11.58  )
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

On Tue, 20 Sep 2022 14:22, AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>Il 19/09/22 18:56, Guillaume Ranquet ha scritto:
>> Add the DPI1 hdmi path support in mtk dpi driver
>>
>> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
>>
>> diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
>> index 630a4e301ef6..91212b7610e8 100644
>> --- a/drivers/gpu/drm/mediatek/mtk_dpi.c
>> +++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
>> @@ -15,7 +15,10 @@
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
>> @@ -66,10 +69,14 @@ struct mtk_dpi {
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
>
>You're adding new clocks and then you're making *all clocks*, including the
>already existing ones... optional.
>
>That looks seriously odd.... can you please give a devicetree example for
>MT8195 in the next version, perhaps in the cover letter?
>
>Would also make it easier to test this entire big series.
>
>Regards,
>Angelo
>

The clock names are different for MT8195 HDMI than for the legacy DP.
Making everything optional might not have been a smart move.
I'll try to think of something else to make it look less odd.

The device tree I'm using to test things is rather "hackish" and has a bunch of
changes from what is found on linux-next.
I think Jason and Nancy are due to upstream those patches.

I'll try to include something minimal for you to test.
Otherwise would a public branch containing everything work for you?

Thx,
Guillaume.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
