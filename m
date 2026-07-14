Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77581C43458
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jul 2026 08:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NN2JcEGTQT776PAnLi1VrIP8ahiGkH6qGSmf1FN8Pek=; b=WEK0oxWV0sSAMe
	B7JdPdMu3TxFGa3ACr0GtPB2O6Z+cRa4mOs5J+p9/FeTZUZPHvLc3Rkjjy99KK1sjOvj6TTwiu66t
	UCYqmibJq5hoIg6YgZxuNrfOOW2IbI6FXymzk+yVjNa73tmyNjzIEo3VUfDKPp6jc1RGco6S1mtoT
	wsNA80N334fGyo4uTDtxcAyVpquXXjVaRjq5o426UpuvlgMmu0obroSHF48Uu/WQScQTXl8Yo7ZKy
	SK7z3F4iTo+T/7cyC0mx4K2KaWXC4krIcN2l8hhF2ChnL6oPQRVvqIm55EQ3P7SPJfOUEsZgu+AP7
	0Lm4VVUHRVXjzyBzgxZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjYWd-0000000BJAZ-0GtK;
	Tue, 14 Jul 2026 08:29:59 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjYWa-0000000BJ9N-2n9n
	for linux-phy@lists.infradead.org;
	Tue, 14 Jul 2026 08:29:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784017793;
	bh=0z1IK69pS9jc49SbkL5azQzEAF3MoW806mjpXyXyOvI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=aT/ee9yEREkPyq59qQsKaO0Vne6ZLmp13nINGbI8/uV2dAIPHDktBHnWzc/CMpXLU
	 xhhmirWSLZyi+08ZXfv2yvLLfIGDhR2aDKvTS39oNRbZUgHR8rwxFsOpsxGmfSFLmP
	 NKDXADPU9/dn8CQ7Aup2SnrqrL3g8TL7sY8r4WG6dJr20lXzz1NDLWuaB/KGrcAkZY
	 /i88igMVpH/U0E8Ml4FRFjsgZ03xte5LaUJb3R/Pa4h9ojkd1DEga2JbnwLoSlwmsC
	 oiIicGGV4+Q5K52yTNSITTjT0PdVtahyv94m9C6qzD0HuPZZehyEhuN3svvXVOjOgd
	 m45Gyll8PpqQA==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 23AB017E07AA;
	Tue, 14 Jul 2026 10:29:53 +0200 (CEST)
Message-ID: <cd633f0b-7f6b-42cf-b1e5-79ca56d62716@collabora.com>
Date: Tue, 14 Jul 2026 10:29:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] phy: mediatek: Add support for MT8196 MIPI DSI PHY
To: sashiko-reviews@lists.linux.dev
Cc: conor+dt@kernel.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, neil.armstrong@linaro.org,
 linux-phy@lists.infradead.org, vkoul@kernel.org, robh@kernel.org,
 olteanv@gmail.com
References: <20260713103805.23030-1-angelogioacchino.delregno@collabora.com>
 <20260713103805.23030-3-angelogioacchino.delregno@collabora.com>
 <20260713104835.B14401F000E9@smtp.kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260713104835.B14401F000E9@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_012956_864725_2BB3B605 
X-CRM114-Status: GOOD (  21.42  )
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

On 7/13/26 12:48, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Medium] Signaling voltage boost is exclusively tied to the absolute maximum clamped frequency, preventing high data rates from receiving the boost.
> --
> 
> --- Patch [2]: [PATCH v3 2/2] phy: mediatek: Add support for MT8196 MIPI DSI PHY ---
> commit a6b40caad1ac266a0481ef7b26baffceb672008c
> Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> 
> phy: mediatek: Add support for MT8196 MIPI DSI PHY
> 
> This commit adds support for the MIPI DSI PHY found in the MediaTek MT8196
> SoC and its variants. It introduces a new register layout and basic D-PHY
> functionality needed to drive MIPI DSI displays.
> 
>> diff --git a/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8196.c b/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8196.c
>> new file mode 100644
>> index 0000000000000..eac3db9922dba
>> --- /dev/null
>> +++ b/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8196.c
> 
> [ ... ]
> 
>> +static int mtk_mipi_tx_pll_enable(struct clk_hw *hw)
>> +{
>> +	struct mtk_mipi_tx *mipi_tx = mtk_mipi_tx_from_clk_hw(hw);
>> +	void __iomem *base = mipi_tx->regs;
>> +	u32 voltage = RG_DSI_PRD_REF_MINI;
>> +	u32 pres = MIPITX_PRESERVED_MINI;
>> +	unsigned long long pcw_calc;
>> +	unsigned int txdiv, txdiv0;
>> +	u32 pcw;
>> +
>> +	dev_dbg(mipi_tx->dev, "enable: %u bps\n", mipi_tx->data_rate);
>> +
>> +	if (mipi_tx->data_rate >= DSI_PHY_PLL_MAX_RATE_HZ) {
>> +		/* Select higher signaling voltage for fast data rates */
>> +		voltage = RG_DSI_PRD_REF_DEF;
>> +		pres = MIPITX_PRESERVED_DEF;
>> +		txdiv = 1;
>> +		txdiv0 = 0;
>> +	} else if (mipi_tx->data_rate >= 1000000000) {
> 
> [Severity: Medium]
> Does this logic unintentionally restrict the higher signaling voltage to only
> exact matches of the maximum PLL rate?
> 

Yes, it does. It's fine. This is on purpose.

There's a way to scale voltages a bit differently (for 4 different freq ranges)
but it's a bit messy to implement, needs me to have different displays to test
all different frequencies (which I don't have), and a bit more code.

The only frequencies that really need the higher signaling voltage are the ones
from 2GHz (which is currently the max frequency, but can be expanded later, as
there will be new HW supporting higher freqs, with the same signaling voltage
increase and the same code for it) onwards.


> Since mtk_mipi_tx_pll_determine_rate() clamps the clock rate to
> DSI_PHY_PLL_MAX_RATE_HZ (2.0 GHz), mipi_tx->data_rate can never exceed this
> value. Consequently, panels requesting data rates slightly below 2.0 GHz
> (for example, 1.99 GHz) will fall through to the 1.0 GHz branch instead of
> receiving the voltage boost and correct PLL dividers intended for fast data
> rates.
> 
> Could this conflation between the PLL octave band threshold and the maximum
> frequency clamp macro also break the PLL divider logic if the maximum
> supported rate limit is increased in the future?
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
