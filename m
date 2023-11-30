Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3D54C07CA9
	for <linux-phy@archiver.kernel.org>; Thu, 30 Nov 2023 12:47:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+1ay8XCBVJJjlr5nY0YB4R3gF11i3rn6Gh6NBIDaDEA=; b=3Uy3SiPYWMLdnvTbERIm+EHLVo
	4F82FU/S7iNKycl1bmA/lymZjARhIZ25gTZIPA3muUVCXDMrdL7VBpfLGvWt6huHX9tti1C5xRvjy
	G65ULmRSFrEsnMelIgE4RzBGkAqm5TLagFlqXBqKzOP3cnvYzqQ86yOdyaNzx2eMLgriJpZgpN8Xw
	JXL0nF3raYPWS5ysp1oy+QxMDwwSC1uQ2r1nmMEizZgERqsGWptlPtFLnwLejFOJKD7I7x3qnG8Pc
	f/0HNVbG22ESbgEYzSDKhP61oc1yfUMgz4q3IkQb2WnD0P1puVLzI3YkM+W83y3VhDBSSsgeY0/n4
	4GuXP/Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8gS1-00AuDW-1Z;
	Thu, 30 Nov 2023 12:47:29 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8gRy-00AuCX-1O;
	Thu, 30 Nov 2023 12:47:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 481A6B84482;
	Thu, 30 Nov 2023 12:47:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 523C8C433C8;
	Thu, 30 Nov 2023 12:47:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701348443;
	bh=ltZg2E6aTzAR6MTRF7EIVGqc75LpYNO0JU7AzaW5iyE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=dabbuH3m0BMxxTaY01Bvmd8CjoKVWDsdJ3trvLLtZHMvWxtO98UkSGBXSaRG41gJr
	 m/BQjiCuLYcL1m2FkM6QXjAOwrGUoYKN9NC36nO4WRBNrGUkZlSs12In95Lkx+xvoR
	 dAjsNh2zPrxJeoQM/do0EwSMrtTvQLyUKT41KeUkFA3PPaVLnPQY7q7fbW3uCSQVln
	 HgubtUFlcaheOCk9cI1Rm1VgNdi4pYYc4A9OWevdZw0N1HNpsL5QTtpNE6Baa9WrgN
	 dS+TwakXM2RGDuD4HQ4exJ3lEKkfygHH/9o5/TotjzYfn0E8ynR9jTjx8V+FuXh0n7
	 cH9vn1bphEkIw==
MIME-Version: 1.0
Date: Thu, 30 Nov 2023 13:47:17 +0100
From: Michael Walle <mwalle@kernel.org>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel
 <p.zabel@pengutronix.de>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Matthias
 Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>, Jitao Shi
 <jitao.shi@mediatek.com>, Xinlei Lee <xinlei.lee@mediatek.com>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 4/4] drm/mediatek: support the DSI0 output on the MT8195
 VDOSYS0
In-Reply-To: <20231123133749.2030661-5-mwalle@kernel.org>
References: <20231123133749.2030661-1-mwalle@kernel.org>
 <20231123133749.2030661-5-mwalle@kernel.org>
Message-ID: <2d1bae2239626cb51977bf0803cec602@kernel.org>
X-Sender: mwalle@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_044726_618483_C58933F6 
X-CRM114-Status: GOOD (  16.32  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

> With the latest dynamic selection of the output component, we can now
> support different outputs. Move current output component into the
> dynamic routes array and add the new DSI0 output.
> 
> Signed-off-by: Michael Walle <mwalle@kernel.org>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c 
> b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> index 2b0c35cacbc6..6fa88976376e 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> @@ -222,7 +222,11 @@ static const unsigned int mt8195_mtk_ddp_main[] = 
> {
>  	DDP_COMPONENT_DITHER0,
>  	DDP_COMPONENT_DSC0,
>  	DDP_COMPONENT_MERGE0,
> -	DDP_COMPONENT_DP_INTF0,

Please disregard this patch (the others are ok). There must gone 
something
wrong during my testing. DDP_COMPONENT_MERGE0 won't work with
DDP_COMPONENT_DSI0. If anyone has more insights, I'm all ears.

-michael

> +};
> +
> +static const struct mtk_drm_route mt8195_mtk_ddp_main_routes[] = {
> +	{ 0, DDP_COMPONENT_DP_INTF0 },
> +	{ 0, DDP_COMPONENT_DSI0 },
>  };
> 
>  static const unsigned int mt8195_mtk_ddp_ext[] = {
> @@ -308,6 +312,8 @@ static const struct mtk_mmsys_driver_data 
> mt8192_mmsys_driver_data = {
>  static const struct mtk_mmsys_driver_data mt8195_vdosys0_driver_data = 
> {
>  	.main_path = mt8195_mtk_ddp_main,
>  	.main_len = ARRAY_SIZE(mt8195_mtk_ddp_main),
> +	.conn_routes = mt8195_mtk_ddp_main_routes,
> +	.num_conn_routes = ARRAY_SIZE(mt8195_mtk_ddp_main_routes),
>  	.mmsys_dev_num = 2,
>  };

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
