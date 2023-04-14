Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF89EC77B6F
	for <linux-phy@archiver.kernel.org>; Fri, 14 Apr 2023 10:31:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t/UaRDN7dW1RsFf7wbZnnlVQAuqqt9xKqy5ueYBiGf4=; b=pBYXKH5pgSSFmF
	I7FwoQGU9KvSNzfFWOcLby+IHn1i3BsNMCSFDQP3VO0y3F9yqssCBlntbA1gJurWAvNbLgarOM+EL
	K2Z48dnlnWMhbn88B8oZPeMFeF1bqE5qcOjnjLR0IY4ObokZTFwvBEmsDujihMlaCsRTO5/r25l8T
	Zqdg5F/5MB03YcnwkGtaRe77vxRV1RUb5kcV75DyGgW7q4E5Ps3TAbkJjBI76OFtDlnFVXW029Ii1
	821oC/M4bPz6Vf+z09uC09Diur41Y3X12umqO5OzgPb87lf2jHEwNbpogUImCIJtDEdukVIClHx3g
	FLfXhco8QpTxhMzBMqeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnGij-0099oe-1d;
	Fri, 14 Apr 2023 10:31:57 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnGie-0099kl-36;
	Fri, 14 Apr 2023 10:31:54 +0000
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id CFFAF6603223;
	Fri, 14 Apr 2023 11:31:50 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681468311;
	bh=9+BjnTU2PKzLgcfmAc7Ppk7BV0SarnBlAnMFkT6+Sro=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=KJwTN+lqObpyJIkpZIex7p/iBPvjgDo7GjlFB6i4ud2CnlgumnXBakFwJbxOOPaKf
	 I7XcfNXo1uqetIeW59Xf9kio1NPBIp+dUa31eV+1NlHzUHV+X8jlbMizLf0ZkCj4cG
	 wLULtn9Hi4FA7ibenylvQxbPNqe63u6l9qInS5bKlCirFJjnUeOc1binABMSV05Gdc
	 PssCdJKYuHONBH44iwItSFCsnLY0fjAmASNUFzNBTEVMVs9LbN+LFyrLQPDCeWv9tp
	 0mTHqHHK4C5xopoi1Sz22iRu7o7r5dg5oQB3+8fmOveKuosMjYHeYUUArk1BgZZsEg
	 izMllf2WwSBCw==
Message-ID: <ada769e0-0141-634f-3753-eb3a50f0eee3@collabora.com>
Date: Fri, 14 Apr 2023 12:31:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 1/2] phy: mediatek: hdmi: mt8195: fix uninitialized
 variable usage in pll_calc
Content-Language: en-US
To: Guillaume Ranquet <granquet@baylibre.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel test robot <lkp@intel.com>
References: <20230413-fixes-for-mt8195-hdmi-phy-v1-0-b8482458df0d@baylibre.com>
 <20230413-fixes-for-mt8195-hdmi-phy-v1-1-b8482458df0d@baylibre.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230413-fixes-for-mt8195-hdmi-phy-v1-1-b8482458df0d@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_033153_130494_45272413 
X-CRM114-Status: GOOD (  17.22  )
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

Il 13/04/23 14:46, Guillaume Ranquet ha scritto:
> The ret variable in mtk_hdmi_pll_calc() was used unitialized as reported
> by the kernel test robot.
> 
> Fix the issue by removing the variable altogether and testing out the
> return value of mtk_hdmi_pll_set_hw()
> 
> Fixes: 45810d486bb44 ("phy: mediatek: add support for phy-mtk-hdmi-mt8195")
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
> ---
>   drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c | 7 +++----
>   1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c b/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
> index abfc077fb0a8..e10da6c4147e 100644
> --- a/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
> +++ b/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
> @@ -213,7 +213,7 @@ static int mtk_hdmi_pll_calc(struct mtk_hdmi_phy *hdmi_phy, struct clk_hw *hw,
>   	u64 tmds_clk, pixel_clk, da_hdmitx21_ref_ck, ns_hdmipll_ck, pcw;
>   	u8 txpredivs[4] = { 2, 4, 6, 12 };
>   	u32 fbkdiv_low;
> -	int i, ret;
> +	int i;
>   
>   	pixel_clk = rate;
>   	tmds_clk = pixel_clk;
> @@ -292,10 +292,9 @@ static int mtk_hdmi_pll_calc(struct mtk_hdmi_phy *hdmi_phy, struct clk_hw *hw,
>   	if (!(digital_div <= 32 && digital_div >= 1))
>   		return -EINVAL;
>   
> -	mtk_hdmi_pll_set_hw(hw, PLL_PREDIV, fbkdiv_high, fbkdiv_low,
> +	if (mtk_hdmi_pll_set_hw(hw, PLL_PREDIV, fbkdiv_high, fbkdiv_low,
>   			    PLL_FBKDIV_HS3, posdiv1, posdiv2, txprediv,
> -			    txposdiv, digital_div);
> -	if (ret)
> +			    txposdiv, digital_div))
>   		return -EINVAL;
>   

I don't get why we're returning -EINVAL unconditionally in the first place, here.

Function mtk_hdmi_pll_set_hw() should return zero or a negative error number: in
that case, the previous *intention* was fine, so this should be

	ret = mtk_hdmi_pll_set_hw(....)
	if (ret)
		return ret;

	return 0;


Regards,
Angelo

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
