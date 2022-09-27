Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E571C07E9D
	for <linux-phy@archiver.kernel.org>; Tue, 27 Sep 2022 13:06:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	MIME-Version:In-Reply-To:References:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=j0y0993JlwVcsXpzImAbbH2R35Tkv1XoW+gVg5/2jM0=; b=MgZDY3lQyrklQ8H9dBEMXBg/+n
	SD5LyYQXtqsJ/PpWE0HOZnujDZvpURkQrRNyNDhOvTHtc3UOl9r1A30cwhb2z+PkV5wHO3V8Kajfs
	DqM+phTTEPR20Nro4bvyVxI8E2Iko4efUW//TaS0OPDs6FU12nlOToLzyKy4h9fBclX5UwRD6djp/
	ZLybXJ2NyvnaeiiB0SgLT+cBt8/oF1/B3xw9GJ+q8Wzt3JRznflcjUIAbkxCffFFUVJ6l8e9kPL1k
	d9bJP3uGO51oOdOAmRvhig4FzopClhifnTFaysbwK/+uA0mX2QHWIVKzDbwvgIWfj8tYYW2Xer1Kx
	wRkwX0jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odAI2-00AgTS-Px; Tue, 27 Sep 2022 13:06:22 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odAHp-00AgM4-TP
	for linux-phy@lists.infradead.org; Tue, 27 Sep 2022 13:06:11 +0000
Received: by mail-pl1-x635.google.com with SMTP id x1so9024477plv.5
        for <linux-phy@lists.infradead.org>; Tue, 27 Sep 2022 06:06:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:mime-version:in-reply-to:references
         :user-agent:from:from:to:cc:subject:date;
        bh=tVImipPJ55LLlj3hxov+6J9Uas9BlzTbH/QBaoiYcnE=;
        b=AeFiLZSELiOLu0C/WY7j3qNn2XbPtZX/1DfSK5wxjFb2rqwPO7CvvZtAFF5v6/7J26
         ahCqqp2F9wNI5OYX7qy/ObhCyFoh9fcBwqqwDTOmQ3Szz628RGrS+W9AFjoVJocXlWki
         VC0GYuee8hoFp6tnnZjb+BQvkFkX4acVrRZQaXEcy3Crna/0t54Jbazxa/CYEy/0/zFu
         2lndzQwEpvpkb26lSSoBm5VVsMti9KIfqB8rnh9R4Sn70IUDgJCGjP5FzkG0xZM/8Ujz
         ktOS6zIlcVHVVfda96Denge0ZrYEMhecJgtt3RQnWSFrUZInrw19D5HLdT/lXGWs6zAx
         AlBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:mime-version:in-reply-to:references
         :user-agent:from:x-gm-message-state:from:to:cc:subject:date;
        bh=tVImipPJ55LLlj3hxov+6J9Uas9BlzTbH/QBaoiYcnE=;
        b=Pndeado6x8YGTXlaxrfKg7WyQnhRpw921tvIQ7xPXy18MCoPOhs60RSUfmBTXEA9Jb
         /J3/XJcdl9ugOG96NHGLxszL5nB2Aq5YEd/G+dBPR7G0GwajInfSWG6kHyM017lwv2mV
         2ghV7DdB988bqPqiwtgFTxiUH19UrWCCkBYlZSRoOuDQJUQ6x/EN8sIpZOYLg7RnjtFR
         JAXgdG0TRmEs3JDR8c4CeXZj9ncS69wX1sRjSPFj8HUNGSZ3s+ZmAlquy4b15CQQRVRL
         yiK9W9GaEQwSG1usfMjd/BnGJ1M1rD/xcwYQkhn/ERcseLpqQET7z/oATNM4QnAn0XIT
         CJEQ==
X-Gm-Message-State: ACrzQf2Z3HInP54ZQNLjVRVBX8LBBhfVKus1H6ytAzS+uTfl5rMnJ+S4
	PlGmIhqLSgiSOcvjUI3E45TPDvYyvr2TZBEKx7lL3w==
X-Google-Smtp-Source: AMsMyM6iYfFfRkY7ZCfN7iH6SfIok108DtV5xTUiUrfRhR4EUYS3wDXnryle8l6ZhFGMR+ScZmNr7PCxr1+tKvPRj2I=
X-Received: by 2002:a17:90b:2643:b0:205:bd0d:bdff with SMTP id
 pa3-20020a17090b264300b00205bd0dbdffmr4399905pjb.99.1664283966835; Tue, 27
 Sep 2022 06:06:06 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 27 Sep 2022 06:06:06 -0700
From: Guillaume Ranquet <granquet@baylibre.com>
User-Agent: meli 0.7.2
References: <20220919-v1-0-4844816c9808@baylibre.com> <20220919-v1-5-4844816c9808@baylibre.com>
 <32c4822a-a094-5fa3-c2af-e515bf897937@collabora.com>
In-Reply-To: <32c4822a-a094-5fa3-c2af-e515bf897937@collabora.com>
MIME-Version: 1.0
Date: Tue, 27 Sep 2022 06:06:06 -0700
Message-ID: <CABnWg9vsd7Lk4kR4j-XrgJXAX+sEd3J+oz3hFc4sEuCGRRy8qw@mail.gmail.com>
Subject: Re: [PATCH v1 05/17] drm/mediatek: hdmi: use a syscon/regmap instead
 of iomem
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
X-CRM114-CacheID: sfid-20220927_060609_990906_4B3787C5 
X-CRM114-Status: GOOD (  10.10  )
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

On Tue, 20 Sep 2022 12:18, AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>Il 19/09/22 18:56, Guillaume Ranquet ha scritto:
>> To prepare support for newer chips that need to share their address
>> range with a dedicated ddc driver, move to a syscon.
>>
>> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
>>
>> diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
>> index 3196189429bc..5cd05d4fe1a9 100644
>> --- a/drivers/gpu/drm/mediatek/mtk_hdmi.c
>> +++ b/drivers/gpu/drm/mediatek/mtk_hdmi.c
>
>..snip..
>
>> @@ -1428,7 +1413,6 @@ static int mtk_hdmi_dt_parse_pdata(struct mtk_hdmi *hdmi,
>>   	struct device_node *cec_np, *remote, *i2c_np;
>>   	struct platform_device *cec_pdev;
>>   	struct regmap *regmap;
>> -	struct resource *mem;
>>   	int ret;
>>
>>   	ret = mtk_hdmi_get_all_clk(hdmi, np);
>> @@ -1474,8 +1458,7 @@ static int mtk_hdmi_dt_parse_pdata(struct mtk_hdmi *hdmi,
>>   	}
>>   	hdmi->sys_regmap = regmap;
>>
>> -	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>> -	hdmi->regs = devm_ioremap_resource(dev, mem);
>> +	hdmi->regs = syscon_node_to_regmap(dev->of_node);
>
>Nack. You're breaking ABI, this will force everyone to add syscon to devicetree,
>hence this breaks retrocompatibility with old devicetrees.
>
>Hint: not here, device_node_to_regmap()

Hi Angelo,

I'm sorry, I didn't think device tree retro compatibility was a thing.

I'll drop the requirement for the module to be a syscon.
Thx for the hint.

Thx,
Guillaume.

>
>Regards,
>Angelo
>
>>   	if (IS_ERR(hdmi->regs)) {
>>   		ret = PTR_ERR(hdmi->regs);
>>   		goto put_device;
>
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
