Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BFDCC4332F
	for <linux-phy@archiver.kernel.org>; Mon,  7 Nov 2022 14:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	MIME-Version:In-Reply-To:References:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QuzIAwEk2o0wsqUTrKYOoWvTJN6oMm6/T72IIIhvrts=; b=dY8XZIbyNDpUxYBpdyXar5PXbT
	1lG7Yzgj7dr9gusDybIrQawLZIVe5kvTPQrqMlgMcppRUNCD4yec8PxihL+c5sgxcQeEDkcxCKsiq
	s7pxzWlSDIVwXt/NzSLzP6Ot16QjX3qT7zJNgFAW8oLnTybz7HTuTfH0NviKAPGeqte+xrLpPoPef
	KSUPvQLJtaoQU7x3aC40jufVsso+AX6yFKzpHQvN71RNKrTMeIsUcDGctOzASV3sUaNEuBLSo47WD
	cbxZ5avxxtxHVGLnz9u/FK68vPHyxk8Dns3k+LgRwfHg/YWriTj51DqFg+eXa0SmSalHH85KJZ4js
	d63/AKqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os3aV-00FSbs-CT; Mon, 07 Nov 2022 14:58:59 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os3M0-00FKHQ-Fk
	for linux-phy@lists.infradead.org; Mon, 07 Nov 2022 14:44:05 +0000
Received: by mail-lj1-x22a.google.com with SMTP id k19so16612966lji.2
        for <linux-phy@lists.infradead.org>; Mon, 07 Nov 2022 06:44:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:mime-version:in-reply-to:references
         :user-agent:from:from:to:cc:subject:date:message-id:reply-to;
        bh=i0O2rk5E0cL+fm306yvacQlome9MWqlkSl0PtbnJ/Fk=;
        b=KGd9O5AMOGZXp+tE3f0j+hwAkW+8r8XE9RmQsXGMLtLEL+k0tlrOTlc9x3z6DY60pT
         hoRXvYOeD/Og/ka1ZIfwjHVVwiYkMECBdxL+qr6sOmlcw2M4myVgfy3mUcsg34OUY9JJ
         q2lBidE2ZbHrX8DY8H34jBlgMAfqbaTK5gWDjPBKRDyH0O/aQ5nkMbT7YyKZ1J3wKPKE
         g2HXUzVU7qAK/Wi5p4uk8UO+C3/OrXQtIeJ+BKMBSvKfMctlvCZ9EjPETJgknfSh0Eme
         qzAIsFJwkk2g1boA0NctS759r6L3DUzwJ6BMZO1g8SlxiYVglENC/U8KI+IphbjhOzQm
         oWPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:mime-version:in-reply-to:references
         :user-agent:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i0O2rk5E0cL+fm306yvacQlome9MWqlkSl0PtbnJ/Fk=;
        b=gkfEFAKkPBGg23swJHvO+KXjvMjBjxfa+R/AuqLXNsf5zXrHE/hdkIg9Cx9ayD4R60
         iNF4zLTYoe5RX7zx5LKj2Eb7UBr65BMtVxq/DmYLl4J0ZG4WJ/rDu0NurE829oQyQDDS
         3wQ7t3Ab8n1gL39t2/xVtECv2icfH7V7+CzY782jKP5fF1ewmKQ/EXr/PSAmqGhj244+
         3LpkQktEoQNG46LgWBVxg2HNyzDr6dnRpwozo7bs4BUdMKFqevSZ6WPKLWNkW0vr98pH
         XGdKj6norLlm44gDR7KGYKYNzdO0anubo79gHY8t5AFTPXIWwwjc3gw4p4pHi2/zfQkk
         ouyA==
X-Gm-Message-State: ACrzQf2HYVbtmKhRJyZvxGmNgmzNMWAzo0UgaPlHtHX6b1P4WlpUxGjE
	6osYSDDG3gqtgTG641pOmCHwUzjJKbXFxNOqR/XqZQ==
X-Google-Smtp-Source: AMsMyM6xHORFjhVs0PnFDG1Q5hbXYVz1Gde1fVXPnnjTrXUg8FmzxrTbBpDXilPPBRiYEYQWH0D3yvUDzcEPlfT2y8I=
X-Received: by 2002:a2e:2e0c:0:b0:277:75bb:429e with SMTP id
 u12-20020a2e2e0c000000b0027775bb429emr9673388lju.314.1667832238908; Mon, 07
 Nov 2022 06:43:58 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 7 Nov 2022 14:43:58 +0000
From: Guillaume Ranquet <granquet@baylibre.com>
User-Agent: meli 0.7.2
References: <20220919-v3-0-a803f2660127@baylibre.com> <20220919-v3-3-a803f2660127@baylibre.com>
 <05183178-32cb-98c0-4fcb-d5e78874e6c4@collabora.com>
In-Reply-To: <05183178-32cb-98c0-4fcb-d5e78874e6c4@collabora.com>
MIME-Version: 1.0
Date: Mon, 7 Nov 2022 14:43:58 +0000
Message-ID: <CABnWg9sZ29jnCbCjtJ-tLWn2s1JYjFVEEGkau72WJyukHWU9=Q@mail.gmail.com>
Subject: Re: [PATCH v3 03/12] drm/mediatek: hdmi: use a regmap instead of iomem
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
X-CRM114-CacheID: sfid-20221107_064400_572564_466929EF 
X-CRM114-Status: GOOD (  11.39  )
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
>> To prepare support for newer chips that need to share their address
>> range with a dedicated ddc driver, use a regmap.
>>
>> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
>> ---
>>   drivers/gpu/drm/mediatek/mtk_hdmi.c | 43 +++++++++++--------------------------
>>   1 file changed, 13 insertions(+), 30 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
>> index 4c80b6896dc3..9b02b30a193a 100644
>> --- a/drivers/gpu/drm/mediatek/mtk_hdmi.c
>> +++ b/drivers/gpu/drm/mediatek/mtk_hdmi.c
>> @@ -171,7 +171,7 @@ struct mtk_hdmi {
>>   	u32 ibias_up;
>>   	struct regmap *sys_regmap;
>>   	unsigned int sys_offset;
>> -	void __iomem *regs;
>> +	struct regmap *regs;
>>   	enum hdmi_colorspace csp;
>>   	struct hdmi_audio_param aud_param;
>>   	bool audio_enable;
>> @@ -187,44 +187,29 @@ static inline struct mtk_hdmi *hdmi_ctx_from_bridge(struct drm_bridge *b)
>>   	return container_of(b, struct mtk_hdmi, bridge);
>>   }
>>
>> -static u32 mtk_hdmi_read(struct mtk_hdmi *hdmi, u32 offset)
>> +static int mtk_hdmi_read(struct mtk_hdmi *hdmi, u32 offset, u32 *val)
>>   {
>> -	return readl(hdmi->regs + offset);
>> +	return regmap_read(hdmi->regs, offset, val);
>>   }
>>
>>   static void mtk_hdmi_write(struct mtk_hdmi *hdmi, u32 offset, u32 val)
>>   {
>> -	writel(val, hdmi->regs + offset);
>> +	regmap_write(hdmi->regs, offset, val);
>>   }
>>
>>   static void mtk_hdmi_clear_bits(struct mtk_hdmi *hdmi, u32 offset, u32 bits)
>
>You don't need these functions anymore, as these are now simply wrapping
>regmap calls, hence these don't contain any "real" logic anymore.
>
>Please remove them and use the regmap API directly.
>
>Thanks,
>Angelo
>

Agree with that, my intent was to minimize the change size so that it
would be easy to review.

My mistake, I'll remove the wrappers.

Thx,
Guillaume.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
