Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EBB0C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 12 Apr 2022 09:37:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	MIME-Version:In-Reply-To:References:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=50S2qr3j1CuRLR5V84t5K4KaQPsPeRPQw2ZAY+QcdM4=; b=OORQfKwp96v6mnz3hcOtzSWK/z
	c1IcRJ8c5+mx5NQMQHbSuofRZF6dMuDQR6PeDGjbTZO9W+FXUUUHJiXMqrs+QaAhKxf1uqSEOLWcb
	MWAlmnxQz5gbPw4FLb2Xaf7gipQIgvARMTDXNztQ3ImFCuHDxsPM1yc5KlTYZbBG5+eRPztqQOBRl
	GeeET2fxNpc4I5la3uZb3KyYQaPPrtkifRefAJVX2TArD1fBcnGvNf+p7BJDb3o1Y3mk46RK31bhT
	kuQhKZ5hU6ecpzaT3gFCFNg8yfCMZMvdBML1wHCC9HdIR5gigg9jhjtpoDFJCWfxcnUm/6lIOM8rF
	nwN6DklQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neCxq-00CyR8-P8; Tue, 12 Apr 2022 09:37:34 +0000
Received: from mail-oi1-x22c.google.com ([2607:f8b0:4864:20::22c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neCxc-00CyJG-VY
 for linux-phy@lists.infradead.org; Tue, 12 Apr 2022 09:37:23 +0000
Received: by mail-oi1-x22c.google.com with SMTP id e189so18426456oia.8
 for <linux-phy@lists.infradead.org>; Tue, 12 Apr 2022 02:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:user-agent:references:in-reply-to:mime-version:date:message-id
 :subject:to:cc;
 bh=evIZsLOQJjFi37tCwIrJkfpZ9gIHXQ0UW8l5PUtfRtM=;
 b=4QAERHFJ8BTZGtY7E+DkrtJGJSnzxgQgHwbOYAwlxzZXnKMY9dp3NVgOGA1Cbx3AW0
 FxY2zgabemqQKkM8yYWIKTkzeKaFcP40xAgE+1dbimqQ4CldI7+o8TQ8dE1kodW+jrQU
 gYXrQIuo73uA51I8IaOWcFPhvw+t8g/pF4/eUcwWtHBUvZuNigXM/QZvceMRt4bz7R/Q
 iRCQbyMV95o4pipHij2S0MaVqvssVGHgSj8Xz769fQj6HFHoNaTjIpDoiR+7ZrOU9ACV
 kY13mSlQ12q7mCyqJQTWIMCVaZV8qk0mntRPEqqEkgTpq9DAW883/q4t7wQjC3Wogopk
 7VLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:user-agent:references:in-reply-to
 :mime-version:date:message-id:subject:to:cc;
 bh=evIZsLOQJjFi37tCwIrJkfpZ9gIHXQ0UW8l5PUtfRtM=;
 b=IMW/kYAXmYkUhzrKEEZbNTw0mHmaGlWQHbx/2J6qL7bBhYbwo6U8tIaRJRMu3FzuHk
 /fLpwqo0kbNT7vjBIKyhZCM0X+IBlPZ9GNoa5VisCwIsX8EsYcNmZxMIhhhfiWpN8TA/
 0r2SMC9DazyfJ6RCSClYgAOK7AH+Id99ABoPhlkC6hZRyDkbF/1jraxb4it3IB17CveT
 1MI9ipsZsV1qGy+W3yiqB3D2foSgj1AKtY8FhM9w5Q/ee5Od9XZJAz6llaOXrr4iwiCD
 FNnL9VF5+jNEWvgG0sfyYTz/HgHJ6yVrJ3Id4bSVMwHJNPBbyLi24l0Z9ZKVLWnvJe7c
 8pYQ==
X-Gm-Message-State: AOAM533ZENOtr4HH3zI1hLmswYdrcs+G0PnzM26aT/IcdiWSKzlL6qbs
 vL1YcsNkYdMryMKVmQvq6teLsk4Sx2xpguRG/lyNmw==
X-Google-Smtp-Source: ABdhPJw50fakNZZtGphBh/3iA9VZT9nYrxLt56LrY9rUXQ7AMr4P93Xi3Vwjdes2KLA+ubvrsqu9MdqkL/hZl7jIqcA=
X-Received: by 2002:a05:6808:1804:b0:2f9:65eb:c40b with SMTP id
 bh4-20020a056808180400b002f965ebc40bmr1343724oib.78.1649756239335; Tue, 12
 Apr 2022 02:37:19 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 12 Apr 2022 02:37:18 -0700
From: Guillaume Ranquet <granquet@baylibre.com>
User-Agent: meli 0.7.2
References: <20220327223927.20848-1-granquet@baylibre.com>
 <20220327223927.20848-17-granquet@baylibre.com>
 <736a7f6710f1ea31eff4abcc3d9c3ff79a1f0ddb.camel@mediatek.com>
In-Reply-To: <736a7f6710f1ea31eff4abcc3d9c3ff79a1f0ddb.camel@mediatek.com>
MIME-Version: 1.0
Date: Tue, 12 Apr 2022 02:37:18 -0700
Message-ID: <CABnWg9vfMJTbOTK-khgaj7RReLVSKJ3DCmJbDvgKMf+tUBwoSA@mail.gmail.com>
Subject: Re: [PATCH v9 16/22] drm/meditek: dpi: Add matrix_sel helper
To: Rex-BC Chen <rex-bc.chen@mediatek.com>, vkoul@kernel.org, airlied@linux.ie,
 angelogioacchino.delregno@collabora.com, chunfeng.yun@mediatek.com, 
 chunkuang.hu@kernel.org, ck.hu@mediatek.com, daniel@ffwll.ch, deller@gmx.de, 
 jitao.shi@mediatek.com, kishon@ti.com, krzk+dt@kernel.org, 
 maarten.lankhorst@linux.intel.com, matthias.bgg@gmail.com, mripard@kernel.org, 
 p.zabel@pengutronix.de, robh+dt@kernel.org, tzimmermann@suse.de
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-fbdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 linux-phy@lists.infradead.org, markyacoub@google.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220412_023721_081741_8812DEEF 
X-CRM114-Status: GOOD (  12.53  )
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

On Mon, 28 Mar 2022 10:49, Rex-BC Chen <rex-bc.chen@mediatek.com> wrote:
>On Mon, 2022-03-28 at 00:39 +0200, Guillaume Ranquet wrote:
>> Add a mtk_dpi_matrix_sel() helper to update the DPI_MATRIX_SET
>> register depending on the color format.
>>
>> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
>> ---
>>  drivers/gpu/drm/mediatek/mtk_dpi.c | 21 +++++++++++++++++++++
>>  1 file changed, 21 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c
>> b/drivers/gpu/drm/mediatek/mtk_dpi.c
>> index 8198d3cf23ac..82f97c687652 100644
>> --- a/drivers/gpu/drm/mediatek/mtk_dpi.c
>> +++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
>> @@ -385,6 +385,25 @@ static void mtk_dpi_config_disable_edge(struct
>> mtk_dpi *dpi)
>>  		mtk_dpi_mask(dpi, dpi->conf->reg_h_fre_con, 0,
>> EDGE_SEL_EN);
>>  }
>>
>> +static void mtk_dpi_matrix_sel(struct mtk_dpi *dpi, enum
>> mtk_dpi_out_color_format format)
>> +{
>> +	u32 matrix_sel = 0;
>> +
>> +	switch (format) {
>> +	case MTK_DPI_COLOR_FORMAT_YCBCR_422:
>> +	case MTK_DPI_COLOR_FORMAT_YCBCR_422_FULL:
>> +	case MTK_DPI_COLOR_FORMAT_YCBCR_444:
>> +	case MTK_DPI_COLOR_FORMAT_YCBCR_444_FULL:
>> +	case MTK_DPI_COLOR_FORMAT_XV_YCC:
>> +		if (dpi->mode.hdisplay <= 720)
>> +			matrix_sel = 0x2;
>> +		break;
>> +	default:
>> +		break;
>> +	}
>> +	mtk_dpi_mask(dpi, DPI_MATRIX_SET, matrix_sel,
>> INT_MATRIX_SEL_MASK);
>> +}
>> +
>>  static void mtk_dpi_config_color_format(struct mtk_dpi *dpi,
>>  					enum mtk_dpi_out_color_format
>> format)
>>  {
>> @@ -392,6 +411,7 @@ static void mtk_dpi_config_color_format(struct
>> mtk_dpi *dpi,
>>  	    (format == MTK_DPI_COLOR_FORMAT_YCBCR_444_FULL)) {
>>  		mtk_dpi_config_yuv422_enable(dpi, false);
>>  		mtk_dpi_config_csc_enable(dpi, true);
>> +		mtk_dpi_matrix_sel(dpi, format);
>>  		if (dpi->conf->swap_input_support)
>>  			mtk_dpi_config_swap_input(dpi, false);
>>  		mtk_dpi_config_channel_swap(dpi,
>> MTK_DPI_OUT_CHANNEL_SWAP_BGR);
>> @@ -399,6 +419,7 @@ static void mtk_dpi_config_color_format(struct
>> mtk_dpi *dpi,
>>  		   (format == MTK_DPI_COLOR_FORMAT_YCBCR_422_FULL)) {
>>  		mtk_dpi_config_yuv422_enable(dpi, true);
>>  		mtk_dpi_config_csc_enable(dpi, true);
>> +		mtk_dpi_matrix_sel(dpi, format);
>>  		if (dpi->conf->swap_input_support)
>>  			mtk_dpi_config_swap_input(dpi, true);
>>  		mtk_dpi_config_channel_swap(dpi,
>> MTK_DPI_OUT_CHANNEL_SWAP_RGB);
>
>Hello Guillaume,
>
>Thanks for your patch.
>I have one question:
>Do this setting affect the dpi for previous SoCs?
>(8183, 8192, or 8186)
>If we can confirm the original register setting for this offset in
>8183/8192/8186, I think we can clarify this question.
>

I've checked in the datasheet I have (8365/8385) that this register
and setting exists.
So yes, it will affect other platforms.

>BRs,
>Rex
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
