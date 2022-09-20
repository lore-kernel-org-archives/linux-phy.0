Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 127A7C54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 11:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0OHwEPd3IhE5Qv5Gty+fNxEmM9Ee2ZY5xsYhAVhx0io=; b=eVOwjzgWmGnrr5
	4aeiJH9aBUJLEZtgByBnIL/6P/IfkGJwvBGKCYVXJIGWrj8O3eTI07YBoRTRVaUFdnADQZoLdXsTi
	LZtdgdPwJhLSmTifKFLZbotRnQ7XDb/+NOvuiZnb5/fivNHjMOdsOxydzkkDAX1R2d10HSwNci+4+
	gizwYB4mp11myub6JxSJQ3TAalRuj6aiN9Mhc82MFba1itEVT9HIdJKPChGlt9bMgiAPY493OWJkv
	WiLayY3USfHMy22nKX10EJU6Q/2hjzJZ8k9+LJxN+IZMitjGQz+iHwXPcysgbJ/wFnIelBDHOgbcZ
	ipJleVqiX40XjOQBF/wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oabAU-003CQk-FS; Tue, 20 Sep 2022 11:11:58 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oabAE-003CI2-1k; Tue, 20 Sep 2022 11:11:43 +0000
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 119786601F41;
	Tue, 20 Sep 2022 12:11:39 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1663672300;
	bh=QSpSDTgYCpqgFq+O5bVL9KBXyxjvk1qUR8EKvHpwW60=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=e/u8yuCL8pOpihKA+yEqSrBZAFKnJt1+3WV3WVVHWqL9sjeK0w/HabOuNuQjM5ZdG
	 a7yx0xVV0Ri3EbQUDUJB79KC+2BgDdTCFZAcP8hle6RbibPIhM2QkLe+1XSuPxbDv+
	 eApEkDjpEhr94a7oaqtQCp7ku5aaeR+33SmmLe5+f3Uqvs4sd4jjVjwLJf7/KxhqvU
	 m8ppQ/8kheumqjbVTxvLrw6/gPYzE2IW9m1aJcIOaaZ3pz5lqRcU+U4+kf5pSDc54s
	 pbIyF+h/9Cp2jLgufGA9GvqonCUrfDWqbvYM/TlXEuRZFJdSCpjzy+VtKTGAWYHBpO
	 Fk/H+Wtug4PTg==
Message-ID: <b05f8687-8f34-c425-ed8e-56c8aeccdaf9@collabora.com>
Date: Tue, 20 Sep 2022 13:11:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH v1 12/17] drm/mediatek: hdmi: mt8195: add audio support
Content-Language: en-US
To: Guillaume Ranquet <granquet@baylibre.com>, Vinod Koul <vkoul@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, David Airlie <airlied@linux.ie>,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Daniel Vetter <daniel@ffwll.ch>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 CK Hu <ck.hu@mediatek.com>, Jitao shi <jitao.shi@mediatek.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Matthias Brugger <matthias.bgg@gmail.com>
Cc: linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Pablo Sun <pablo.sun@mediatek.com>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, Mattijs Korpershoek
 <mkorpershoek@baylibre.com>, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20220919-v1-0-4844816c9808@baylibre.com>
 <20220919-v1-12-4844816c9808@baylibre.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20220919-v1-12-4844816c9808@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_041142_268000_D03B9F02 
X-CRM114-Status: GOOD (  13.32  )
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

Il 19/09/22 18:56, Guillaume Ranquet ha scritto:
> Add HDMI audio support for mt8195
> 
> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_mt8195_hdmi.c b/drivers/gpu/drm/mediatek/mtk_mt8195_hdmi.c
> index 39e07a6dd490..bb7593ea4c86 100644
> --- a/drivers/gpu/drm/mediatek/mtk_mt8195_hdmi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_mt8195_hdmi.c
> @@ -215,6 +215,26 @@ static void mtk_hdmi_hw_vid_black(struct mtk_hdmi *hdmi, bool black)
>   		mtk_hdmi_mask(hdmi, TOP_VMUTE_CFG1, 0, REG_VMUTE_EN);
>   }
>   
> +static void mtk_hdmi_hw_aud_mute(struct mtk_hdmi *hdmi)
> +{
> +	u32 val;
> +
> +	val = mtk_hdmi_read(hdmi, AIP_CTRL, &val);
> +

val_tx = AUD_MUTE_FIFO_EN;
if (val & DSD_EN)
	val_tx |= DSD_MUTE_DATA;

regmap_set_bits(regmap, AIP_TXCTRL, val_tx);

Easier, shorter.

> +	if (val & DSD_EN)
> +		mtk_hdmi_mask(hdmi, AIP_TXCTRL,
> +			      DSD_MUTE_DATA | AUD_MUTE_FIFO_EN,
> +			      DSD_MUTE_DATA | AUD_MUTE_FIFO_EN);
> +	else
> +		mtk_hdmi_mask(hdmi, AIP_TXCTRL, AUD_MUTE_FIFO_EN,
> +			      AUD_MUTE_FIFO_EN);
> +}

Regards,
Angelo


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
