Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4560C6FA82
	for <linux-phy@archiver.kernel.org>; Tue, 27 Sep 2022 13:13:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	MIME-Version:In-Reply-To:References:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mNtqy0GwZ/kMrjcNceKSb9wwnroP40eo40NvUgnhzac=; b=Txr0FfNtwH0vu+T8hIB1jKVLau
	de/V+C9dEaIKl1XvfOSmxPscTK6Svd7LeRV/x9Ebi6oS8NTfVX1KiMREEvTNOBK52yRJAjXMMdMax
	HUkaPF5I1GIrzTXqgwCPlQuAiVOINul+32oqKN9VZDrskRg2i17B2Iplwm9nEtkgTDgeBRFfBUpgw
	+urYJTHj0OpVxrT3zDvDQRyU0v8XPbOBI5CDwfFOgL8WKJh2mXT8XLpI8uAZW78J+rjWMJ5JXrHD9
	YWcOYCHhDEiRYvxF4Oi7YA1qyXsMNOAnVVmvdzWlCA0yIxIh0ckHv/VYvwgex2ScrM8hANJ0+FFsD
	CaVUYBSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odAPB-00AjCp-9i; Tue, 27 Sep 2022 13:13:45 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odAP3-00Aj98-Sk
	for linux-phy@lists.infradead.org; Tue, 27 Sep 2022 13:13:39 +0000
Received: by mail-pj1-x1030.google.com with SMTP id u92so151540pjh.3
        for <linux-phy@lists.infradead.org>; Tue, 27 Sep 2022 06:13:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:mime-version:in-reply-to:references
         :user-agent:from:from:to:cc:subject:date;
        bh=uw1gvMh/1zxeYeQnV6wZiimhJI0pYdqIU/T7gR133DU=;
        b=KGZxffdgEWrc+nIKZQdWmZ3shdGF0hcnG/eimwyIfxhrmALI1rYCYrjvI7h/XUgVGA
         AC6SvAtl53+/uRBU3anLk1UvpVRaNBemAR7Oyh2pHvX7bjmJNbSDXufs8hRYtyXsG5vQ
         jd3iWOu4rVRR/EnzQp9aaeBmal/AfKg+NmoFOYFIDeJe+wLcey51NCuMUbD1u2T1V94U
         R0nuad1PG+imVaMqobj/rIzM1PIjkWlf6o0msI+SnoIU3CpMuPKph0lfdyOcWwBg0vLZ
         dTGoMaNPB1H8WboG58vSq5A7eIOFKcqFwcw4AAp8tg8XHTSKsuUNf6zQOBzI1wa4MP6X
         qvxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:mime-version:in-reply-to:references
         :user-agent:from:x-gm-message-state:from:to:cc:subject:date;
        bh=uw1gvMh/1zxeYeQnV6wZiimhJI0pYdqIU/T7gR133DU=;
        b=seDy8gKhSxq0BDbf8PPPCEgK/McZITD18F7nYv2I4k9eWi5/KAl9HAbkg+SbECmAPm
         bkXYtsMv9A5L3vBqoYIIerqFBHCMsXpg6ClaIHPG7OXxbff/sLoQJDd8MP77jhNDNrAA
         JJhQpDiREU1iFIg+wXyQRrbTO3N8U/Caiq6DVFrnoDQX6zja5lQKxP07WDlTS+Gv5Umg
         oQ4j1W6RQoS1cxX3j8e7DbnZsxgNgMA5FG3030u0a0baLfV7JvVU8JeerGof7CRWknva
         z0eLnCFGDyQE2oqmYWIhLuxgyMFu4Ae4S0pn33zcrRWr0PCJ6/gLi8PF2BXEVE1E9BQV
         TYDA==
X-Gm-Message-State: ACrzQf0Ipl5E7mlyQGuX8GwyHUwiTwOJKbGpksMKuloi1iY6b8inuJ34
	BfLHoonwkly01fZ0tafE+VL+ITUE3Fe1kzOkx7WxnQ==
X-Google-Smtp-Source: AMsMyM5foO9hRFfJNeJsExDA4MlTDjL11pmea0BPzSUwTLsGAoVk8kBgQmDpzSWwATR1ZA70FE3cdWBnn6SlAjNkjO4=
X-Received: by 2002:a17:902:f710:b0:178:a692:b1f7 with SMTP id
 h16-20020a170902f71000b00178a692b1f7mr27434461plo.112.1664284411364; Tue, 27
 Sep 2022 06:13:31 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 27 Sep 2022 06:13:30 -0700
From: Guillaume Ranquet <granquet@baylibre.com>
User-Agent: meli 0.7.2
References: <20220919-v1-0-4844816c9808@baylibre.com> <20220919-v1-12-4844816c9808@baylibre.com>
 <b05f8687-8f34-c425-ed8e-56c8aeccdaf9@collabora.com>
In-Reply-To: <b05f8687-8f34-c425-ed8e-56c8aeccdaf9@collabora.com>
MIME-Version: 1.0
Date: Tue, 27 Sep 2022 06:13:30 -0700
Message-ID: <CABnWg9tidG-HHhJ-nbE0UD2=EUCqF4WkdQ__j+2sarmSm=MsAQ@mail.gmail.com>
Subject: Re: [PATCH v1 12/17] drm/mediatek: hdmi: mt8195: add audio support
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
X-CRM114-CacheID: sfid-20220927_061337_946449_ECFE7020 
X-CRM114-Status: UNSURE (   9.21  )
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

On Tue, 20 Sep 2022 13:11, AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>Il 19/09/22 18:56, Guillaume Ranquet ha scritto:
>> Add HDMI audio support for mt8195
>>
>> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
>>
>> diff --git a/drivers/gpu/drm/mediatek/mtk_mt8195_hdmi.c b/drivers/gpu/drm/mediatek/mtk_mt8195_hdmi.c
>> index 39e07a6dd490..bb7593ea4c86 100644
>> --- a/drivers/gpu/drm/mediatek/mtk_mt8195_hdmi.c
>> +++ b/drivers/gpu/drm/mediatek/mtk_mt8195_hdmi.c
>> @@ -215,6 +215,26 @@ static void mtk_hdmi_hw_vid_black(struct mtk_hdmi *hdmi, bool black)
>>   		mtk_hdmi_mask(hdmi, TOP_VMUTE_CFG1, 0, REG_VMUTE_EN);
>>   }
>>
>> +static void mtk_hdmi_hw_aud_mute(struct mtk_hdmi *hdmi)
>> +{
>> +	u32 val;
>> +
>> +	val = mtk_hdmi_read(hdmi, AIP_CTRL, &val);
>> +
>
>val_tx = AUD_MUTE_FIFO_EN;
>if (val & DSD_EN)
>	val_tx |= DSD_MUTE_DATA;
>
>regmap_set_bits(regmap, AIP_TXCTRL, val_tx);
>
>Easier, shorter.

Thx for the tip.

>
>> +	if (val & DSD_EN)
>> +		mtk_hdmi_mask(hdmi, AIP_TXCTRL,
>> +			      DSD_MUTE_DATA | AUD_MUTE_FIFO_EN,
>> +			      DSD_MUTE_DATA | AUD_MUTE_FIFO_EN);
>> +	else
>> +		mtk_hdmi_mask(hdmi, AIP_TXCTRL, AUD_MUTE_FIFO_EN,
>> +			      AUD_MUTE_FIFO_EN);
>> +}
>
>Regards,
>Angelo
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
