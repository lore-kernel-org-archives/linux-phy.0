Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 235ECC4332F
	for <linux-phy@archiver.kernel.org>; Mon,  7 Nov 2022 11:10:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vnprE0qgjOdR6Ampg5x9XECO5UiyJU6VNbiCqtUEHcQ=; b=Bv5m0Ml9W4ElDJ
	Y9sgSJTW8NoZ8mtr8BXdpDVOP6/nOcC7684SFVxvkNDCYayf+hbYxOX3ELXqobVUIZ2HZtZe51d5j
	9hEpduN6Sg9CYx8Cn+47+y8bdM5drZ4ye0HMnax96Bj9zCNQcQi1qOMTnhNTwlSM96mRcRHja6AD9
	f9jJkSDSq6JewZ9d+b50hsVX5PHSSWQW/ulsD6oOIBOv923NhstFUABkMc6aXKk5SG2nQOl7WOZ8y
	xnfJw0Yl3QSbK3hSCtNHuo+UWHKZ0Lk0SIFsPDCKTQxT3YHGTSg2Q0n/hKOGVCLfIY9w0+mWqUkq6
	XwUy8vrY2hz4G7IErXdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os014-00E2i9-H7; Mon, 07 Nov 2022 11:10:10 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os00W-00E2VV-KP; Mon, 07 Nov 2022 11:09:38 +0000
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 6A813660239F;
	Mon,  7 Nov 2022 11:09:33 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1667819375;
	bh=iUEjc9op+r+flRXGNk8tjNm3ukh2dbXz8V5WUA+PaYg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=JpDWgh3pu8wCEG9/L3nMuHxrxopf2J5cOs42iavUQyHFNXQG5kwrItGxVMdbX5gTm
	 rVsuSNzjfpAWV1teDzDgdb29Lf57AqaTaROaUmUxiTuV37F1M9A4wF8mq/4NcPqRRM
	 dHm+IjDLKbZ3JUQZQDRgpaOfcEpJXWSbiXjPF547XW0WbPSOzfxUOthCPIXdjG1Llq
	 12+nDipef2AVJv2lI9bC2pRxzim8TaocJYnDJuK/pszItnVnaWD7XwbTbOvx40NSD9
	 XxRgvfa5XHu12k1REWIqxG6Rp9bo/CdyZ7pJ+zc76IeS9S7r+XjtAj8rjKfzD5uFM1
	 PMI+QzOrRKU4Q==
Message-ID: <a3472c42-ccac-7c98-a0b6-57556a348ac1@collabora.com>
Date: Mon, 7 Nov 2022 12:09:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH v3 06/12] drm/mediatek: hdmi: add frame_colorimetry flag
Content-Language: en-US
To: Guillaume Ranquet <granquet@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Jitao shi
 <jitao.shi@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Vinod Koul <vkoul@kernel.org>, CK Hu <ck.hu@mediatek.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Kishon Vijay Abraham I <kishon@ti.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-arm-kernel@lists.infradead.org, stuart.lee@mediatek.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
 mac.shen@mediatek.com, linux-phy@lists.infradead.org
References: <20220919-v3-0-a803f2660127@baylibre.com>
 <20220919-v3-6-a803f2660127@baylibre.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20220919-v3-6-a803f2660127@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_030936_832062_FD3706F8 
X-CRM114-Status: GOOD (  14.44  )
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

Il 04/11/22 15:09, Guillaume Ranquet ha scritto:
> Add a flag to indicate support for frame colorimetry.
> 
> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
> ---
>   drivers/gpu/drm/mediatek/mtk_hdmi_common.c | 11 +++++++++++
>   drivers/gpu/drm/mediatek/mtk_hdmi_common.h |  1 +
>   2 files changed, 12 insertions(+)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi_common.c b/drivers/gpu/drm/mediatek/mtk_hdmi_common.c
> index 3635ca66817b..933c51b5f6d7 100644
> --- a/drivers/gpu/drm/mediatek/mtk_hdmi_common.c
> +++ b/drivers/gpu/drm/mediatek/mtk_hdmi_common.c
> @@ -120,6 +120,17 @@ int mtk_hdmi_setup_avi_infoframe(struct mtk_hdmi *hdmi, u8 *buffer, size_t bufsz
>   		return err;
>   	}
>   
> +	if (hdmi->conf->has_frame_colorimetry) {
> +		frame.colorimetry = hdmi->colorimtery;

Typo: s/colorimtery/colorimetry/g

...also, I don't see this being really used? In hdmi-v2 you're setting this param
to HDMI_COLORIMETRY_NONE and quantization ranges to always the same default value.

I wonder if this is really needed at this point.

Regards,
Angelo

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
