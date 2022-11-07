Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03B10C4332F
	for <linux-phy@archiver.kernel.org>; Mon,  7 Nov 2022 15:05:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	MIME-Version:In-Reply-To:References:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JetH11khaycMOL0GqD217Q4CFiNindklW4peUAKMEfs=; b=IbEI6LkmI+yN8uVooYaNtiW2Xl
	eU1oIW0bhO93yCwZKfLIzm5GCrZDWoYSsIj3ZQDMPIHER0aXokMTMfdoWdfxApdB0K/a0Jhj/037a
	KIu2KZQTM8poCfCfPBPT+xDx2RspwiHReXqu2KuLrlkyWeR5OvsuKGmMMVkBZWfKrdy1h6E8RUUPt
	rcIXecQlSyk99/9HDDgHceMjbTylkpIjW1gfpU6qRZEsvbjNVyQOudgSek3JN43YN+n3LF23y+5j8
	xo0z8im9oR/Mi/1Xq93Uu4Q4DGHONa/7vasFW9vJl58WusslxJEY65GqH8iZSGvLTD91ITjFudLQg
	Zz4zmxYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os3gl-00FWjr-9K; Mon, 07 Nov 2022 15:05:27 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os3Yw-00FRco-L9
	for linux-phy@lists.infradead.org; Mon, 07 Nov 2022 14:57:25 +0000
Received: by mail-lf1-x135.google.com with SMTP id c1so15456872lfi.7
        for <linux-phy@lists.infradead.org>; Mon, 07 Nov 2022 06:57:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:mime-version:in-reply-to:references
         :user-agent:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AQlxwrQ9+SAIJlBHFz/WVtqfuSsX8479gf+InmNYkZs=;
        b=1eTJqEXUCN6TpV6RPCjctxazLVjc44ZvzsBItOrs8d80EmK/RTm5KYkB5ehzSFcSap
         0Ia4QJxum/15AedJZzgTedYWblULvJ2HWn6NIOVO0kLVUGzxxNuXTNkUbSKEiihYW5uY
         eI9c/r5MpYt9th3ARFOLRYCWL8+OX7E7r5QjWjQT9gbVW+CjhHoH7P5pnYbE+s3Ht/BS
         ZpQxbAlG3a2Q6BXdz03VLJbB2BAE4WHiC0ArV3yEpnSEla0c1RJ8q72c1z9KjXtBDvuA
         r5eCbX117hzvliriCVcObFn6wp63MG/Om9IFx0pHFFyRetN5uD76XxvKlFE9BmmzVAs3
         XGsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:mime-version:in-reply-to:references
         :user-agent:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AQlxwrQ9+SAIJlBHFz/WVtqfuSsX8479gf+InmNYkZs=;
        b=re7ex9uyi2hK6wkqsP8qAeZ2xzX6d+p+kzSr5PTKNZX5FrSeBz0DDQmlXYzOcsdDQj
         +Y8koAG6VRYS0vGhor/OFaiXSrRgUK1+4BSAGDAx7CS/B5Lsj6HhFzkCnO+Lelo30Gho
         Nta2WDWco2hNqSAz9/jA06cmtpO67A6eTi4gOTLdjo/IERqHs283qgfFOp6nJswJz4qJ
         +enNgMkQPgcgfQepbRQIBcQVwSCddW9/7iQGxp/ilUYTQbbVBgkL5F3gn13cp5ZKxXoR
         EFmsoYz/EJgcfTd7x0ou4Nhn5RPgOSx05KxXm4iyzTBxByt3KIJXFWtNbSKyblNdgPNA
         f7Mw==
X-Gm-Message-State: ACrzQf1DL2cNc73E2bNko91LAjuhUTWNl1y7ymyWZjHJc33NSa4KSXlS
	geJHE+DerLtlWZzoX6IPAru9b4Ob8CpPL4YTX5WnQQ==
X-Google-Smtp-Source: AMsMyM5u67xgoVRbvAl2jo49umhno4Yx8nKrhd8saRcif/bR8rpMZwMhWdL1nVFsqasbfxpjnO2MfcuNIfWTUazhbyA=
X-Received: by 2002:a05:6512:a93:b0:4a2:a5b3:fbb4 with SMTP id
 m19-20020a0565120a9300b004a2a5b3fbb4mr17313440lfu.346.1667833039925; Mon, 07
 Nov 2022 06:57:19 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 7 Nov 2022 14:57:19 +0000
From: Guillaume Ranquet <granquet@baylibre.com>
User-Agent: meli 0.7.2
References: <20220919-v3-0-a803f2660127@baylibre.com> <20220919-v3-6-a803f2660127@baylibre.com>
 <a3472c42-ccac-7c98-a0b6-57556a348ac1@collabora.com>
In-Reply-To: <a3472c42-ccac-7c98-a0b6-57556a348ac1@collabora.com>
MIME-Version: 1.0
Date: Mon, 7 Nov 2022 14:57:19 +0000
Message-ID: <CABnWg9uPL0qCat4Sw2uqj6-KN-OxPqGOjw+SR1bBVvGrmCBTZQ@mail.gmail.com>
Subject: Re: [PATCH v3 06/12] drm/mediatek: hdmi: add frame_colorimetry flag
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
X-CRM114-CacheID: sfid-20221107_065722_771928_F33E3E4F 
X-CRM114-Status: GOOD (  10.05  )
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

On Mon, 07 Nov 2022 12:09, AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>Il 04/11/22 15:09, Guillaume Ranquet ha scritto:
>> Add a flag to indicate support for frame colorimetry.
>>
>> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
>> ---
>>   drivers/gpu/drm/mediatek/mtk_hdmi_common.c | 11 +++++++++++
>>   drivers/gpu/drm/mediatek/mtk_hdmi_common.h |  1 +
>>   2 files changed, 12 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi_common.c b/drivers/gpu/drm/mediatek/mtk_hdmi_common.c
>> index 3635ca66817b..933c51b5f6d7 100644
>> --- a/drivers/gpu/drm/mediatek/mtk_hdmi_common.c
>> +++ b/drivers/gpu/drm/mediatek/mtk_hdmi_common.c
>> @@ -120,6 +120,17 @@ int mtk_hdmi_setup_avi_infoframe(struct mtk_hdmi *hdmi, u8 *buffer, size_t bufsz
>>   		return err;
>>   	}
>>
>> +	if (hdmi->conf->has_frame_colorimetry) {
>> +		frame.colorimetry = hdmi->colorimtery;
>
>Typo: s/colorimtery/colorimetry/g
>
>...also, I don't see this being really used? In hdmi-v2 you're setting this param
>to HDMI_COLORIMETRY_NONE and quantization ranges to always the same default value.
>
>I wonder if this is really needed at this point.
>
>Regards,
>Angelo

I'll see if I can make something work without this boolean.

Thx,
Guillaume.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
