Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B9A1C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 28 Mar 2022 08:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:CC:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LRo/1q97B4LjlR+5vSp4haJ/qQ6Jw/99C4wdNgX5I/M=; b=u/jX26eZfpc7RX
	9fB3khoTUsbSaVXoYNoApmdyjbVdM2IlxK3Z/FIkobNpob9uA7ReYNiuHtVRMe/8BDOkYMXpxEJlc
	26Rr75ZHLlHTc5G4mHTZDHrEk9WLBtpSltpGAxi8122nanxK4DHgM7DD7qFSydd4NYtyP+YKi8eo0
	Nq0nuyrGTC68dVWxYoEC7BNKql2I9sb0QXm3v0rZPqwvolFe1WMvbj/5wahN3oLnvXlAgskEqK7ic
	nuTPIrOMV5XCi/DBXL5kR6jaMtzPjKcHD0oEzk3m2dZzRluKxT32NisH9JNb2QdHE06I50rCBM+b1
	EeL+7xLTaJq3Z6b/U5rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYl4X-007unT-IR; Mon, 28 Mar 2022 08:49:57 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYl4U-007umD-Fj; Mon, 28 Mar 2022 08:49:55 +0000
X-UUID: f62c93854cc041d3902c7b257958245d-20220328
X-UUID: f62c93854cc041d3902c7b257958245d-20220328
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <rex-bc.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
 with ESMTP id 1830480989; Mon, 28 Mar 2022 01:49:47 -0700
Received: from mtkexhb02.mediatek.inc (172.21.101.103) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 28 Mar 2022 01:49:45 -0700
Received: from mtkcas11.mediatek.inc (172.21.101.40) by mtkexhb02.mediatek.inc
 (172.21.101.103) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Mon, 28 Mar 2022 16:49:36 +0800
Received: from mtksdccf07 (172.21.84.99) by mtkcas11.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 28 Mar 2022 16:49:36 +0800
Message-ID: <736a7f6710f1ea31eff4abcc3d9c3ff79a1f0ddb.camel@mediatek.com>
Subject: Re: [PATCH v9 16/22] drm/meditek: dpi: Add matrix_sel helper
From: Rex-BC Chen <rex-bc.chen@mediatek.com>
To: Guillaume Ranquet <granquet@baylibre.com>, <airlied@linux.ie>,
 <angelogioacchino.delregno@collabora.com>, <chunfeng.yun@mediatek.com>,
 <chunkuang.hu@kernel.org>, <ck.hu@mediatek.com>, <daniel@ffwll.ch>,
 <deller@gmx.de>, <jitao.shi@mediatek.com>, <kishon@ti.com>,
 <krzk+dt@kernel.org>, <maarten.lankhorst@linux.intel.com>,
 <matthias.bgg@gmail.com>, <mripard@kernel.org>, <p.zabel@pengutronix.de>,
 <robh+dt@kernel.org>, <tzimmermann@suse.de>, <vkoul@kernel.org>
CC: <devicetree@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-fbdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-mediatek@lists.infradead.org>,
 <linux-phy@lists.infradead.org>, <markyacoub@google.com>
Date: Mon, 28 Mar 2022 16:49:36 +0800
In-Reply-To: <20220327223927.20848-17-granquet@baylibre.com>
References: <20220327223927.20848-1-granquet@baylibre.com>
 <20220327223927.20848-17-granquet@baylibre.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_014954_557129_884AE9D9 
X-CRM114-Status: GOOD (  16.54  )
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

On Mon, 2022-03-28 at 00:39 +0200, Guillaume Ranquet wrote:
> Add a mtk_dpi_matrix_sel() helper to update the DPI_MATRIX_SET
> register depending on the color format.
> 
> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_dpi.c | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c
> b/drivers/gpu/drm/mediatek/mtk_dpi.c
> index 8198d3cf23ac..82f97c687652 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dpi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
> @@ -385,6 +385,25 @@ static void mtk_dpi_config_disable_edge(struct
> mtk_dpi *dpi)
>  		mtk_dpi_mask(dpi, dpi->conf->reg_h_fre_con, 0,
> EDGE_SEL_EN);
>  }
>  
> +static void mtk_dpi_matrix_sel(struct mtk_dpi *dpi, enum
> mtk_dpi_out_color_format format)
> +{
> +	u32 matrix_sel = 0;
> +
> +	switch (format) {
> +	case MTK_DPI_COLOR_FORMAT_YCBCR_422:
> +	case MTK_DPI_COLOR_FORMAT_YCBCR_422_FULL:
> +	case MTK_DPI_COLOR_FORMAT_YCBCR_444:
> +	case MTK_DPI_COLOR_FORMAT_YCBCR_444_FULL:
> +	case MTK_DPI_COLOR_FORMAT_XV_YCC:
> +		if (dpi->mode.hdisplay <= 720)
> +			matrix_sel = 0x2;
> +		break;
> +	default:
> +		break;
> +	}
> +	mtk_dpi_mask(dpi, DPI_MATRIX_SET, matrix_sel,
> INT_MATRIX_SEL_MASK);
> +}
> +
>  static void mtk_dpi_config_color_format(struct mtk_dpi *dpi,
>  					enum mtk_dpi_out_color_format
> format)
>  {
> @@ -392,6 +411,7 @@ static void mtk_dpi_config_color_format(struct
> mtk_dpi *dpi,
>  	    (format == MTK_DPI_COLOR_FORMAT_YCBCR_444_FULL)) {
>  		mtk_dpi_config_yuv422_enable(dpi, false);
>  		mtk_dpi_config_csc_enable(dpi, true);
> +		mtk_dpi_matrix_sel(dpi, format);
>  		if (dpi->conf->swap_input_support)
>  			mtk_dpi_config_swap_input(dpi, false);
>  		mtk_dpi_config_channel_swap(dpi,
> MTK_DPI_OUT_CHANNEL_SWAP_BGR);
> @@ -399,6 +419,7 @@ static void mtk_dpi_config_color_format(struct
> mtk_dpi *dpi,
>  		   (format == MTK_DPI_COLOR_FORMAT_YCBCR_422_FULL)) {
>  		mtk_dpi_config_yuv422_enable(dpi, true);
>  		mtk_dpi_config_csc_enable(dpi, true);
> +		mtk_dpi_matrix_sel(dpi, format);
>  		if (dpi->conf->swap_input_support)
>  			mtk_dpi_config_swap_input(dpi, true);
>  		mtk_dpi_config_channel_swap(dpi,
> MTK_DPI_OUT_CHANNEL_SWAP_RGB);

Hello Guillaume,

Thanks for your patch.
I have one question:
Do this setting affect the dpi for previous SoCs?
(8183, 8192, or 8186)
If we can confirm the original register setting for this offset in
8183/8192/8186, I think we can clarify this question.

BRs,
Rex


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
