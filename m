Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0BA9CD4F21
	for <linux-phy@archiver.kernel.org>; Wed, 13 May 2026 16:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ZiM3hHP8Rj/P7nJaiHUoSIdWnTL3X7+NA+Srl2UWUA=; b=DvjyaHeL0bSWwm
	MTiCZXRo0x8Qkrw8Xiq0oPNXGUvzlfnpxdqOEmSlP0xhtKgRMAyX70e1BXdfhrWxKqPAJZW+ldwDj
	WV3MiwVByRiG5KO/vP8AntMeH0KRhB6GfCzygvWBOkFnwri+u6f6bKYx7EWETNQO3v+yK0aR5VwB4
	b/xxPsM4NSUPym+pU5ebIMxDNGMkI6teSgJaJlXbX4TwQIe4b9z7IXOsYLLSYIGftvrM2z6ajIcmX
	YR/CeTEMB86I0XTsnbDH0Bf8BdDhV+9/8cTH5xng4b0ry7XfNFE3ZbfBS/vzRtAep2RQ1vza7v6Qo
	k6V3++v8NC3KDLnbS5zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNCCF-00000003AsU-0xg9;
	Wed, 13 May 2026 16:12:31 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNCCC-00000003Ark-2c0y
	for linux-phy@lists.infradead.org;
	Wed, 13 May 2026 16:12:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1778688744;
	bh=Wl6t+8nJqW3f/rIpNjV94uwi59P/Kjsnwpu2+AzJEd0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ABPFSg04CkWJtSgV6fO5t9yiwKD/Azj1w/rvEkBfXcFr3/wbUH5wMccVj5vcfMTaC
	 3BkvoF5V7DRSCcGGYtU86PDDRKb2QcBQ2obwiWWc4JPpvmcQbIfXCjpv9DMR7Ag2Zn
	 SdO+C3ZIL+wRM3SBnB0fuMkXhDJkC9AdoS868S8AYxgWYusZaMxSqcxUyk3Nx6vi+/
	 COhj8WLWKdRkHPoDuCRIsFl6dEEynarNaE7WlyPQsouSN7wkgo7buR1thpkiz+Y2ao
	 mf7tvbULaUtPTZcXCUWiRe5d/lV/GISmISFwuHSewYit0rxlYfcr9pu0GE5SY4g2Rc
	 d0QlhFcl4facA==
Received: from [100.64.0.241] (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 6643C17E04F2;
	Wed, 13 May 2026 18:12:24 +0200 (CEST)
Message-ID: <340a4781-356c-406c-89e0-68b72df9e95f@collabora.com>
Date: Wed, 13 May 2026 19:12:23 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/6] phy: rockchip: samsung-hdptx: Fix rate
 recalculation for high bpc
To: sashiko@lists.linux.dev
Cc: neil.armstrong@linaro.org, olteanv@gmail.com, vkoul@kernel.org,
 linux-phy@lists.infradead.org
References: <20260511-hdptx-clk-fixes-v2-1-664e41379cab@collabora.com>
 <20260512225155.EEA3AC2BCB0@smtp.kernel.org>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <20260512225155.EEA3AC2BCB0@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_091228_825678_3E5BD6B5 
X-CRM114-Status: GOOD (  14.72  )
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

On 5/13/26 1:51 AM, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Medium] Clock rate calculation drops a rounding step, replacing DIV_ROUND_CLOSEST_ULL() with truncation via div_u64(), which can cause a 1 Hz clock rate mismatch.
> --
> 
> commit f013b4b7bc1d4ae235d28b10cad3143d009d131c
> Author: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> 
> phy: rockchip: samsung-hdptx: Fix rate recalculation for high bpc
> 
> This commit fixes the clock rate recalculation in the HDMI PHY probe path
> by directly reading the bpc value from hardware registers instead of
> relying on uninitialized configuration struct members.
> 
>> diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
>> index 2d973bc37f076..7fb1c22318bbf 100644
>> --- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
>> +++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
>> @@ -2280,7 +2281,7 @@ static u64 rk_hdptx_phy_clk_calc_rate_from_pll_cfg(struct rk_hdptx_phy *hdptx)
>>  			fout = fout + sdm;
>>  	}
>>  
>> -	return div_u64(fout * 2, ropll_hw.pms_sdiv * 10);
>> +	return div_u64(fout * 2 * 8, ropll_hw.pms_sdiv * 10 * bpc);
>>  }
>>  
>>  static unsigned long rk_hdptx_phy_clk_recalc_rate(struct clk_hw *hw,
>> @@ -2288,19 +2289,13 @@ static unsigned long rk_hdptx_phy_clk_recalc_rate(struct clk_hw *hw,
>>  {
>>  	struct rk_hdptx_phy *hdptx = to_rk_hdptx_phy(hw);
>>  	u32 status;
>> -	u64 rate;
>>  	int ret;
>>  
>>  	ret = regmap_read(hdptx->grf, GRF_HDPTX_CON0, &status);
>>  	if (ret || !(status & HDPTX_I_PLL_EN))
>>  		return 0;
>>  
>> -	rate = rk_hdptx_phy_clk_calc_rate_from_pll_cfg(hdptx);
>> -
>> -	if (hdptx->hdmi_cfg.mode == PHY_HDMI_MODE_FRL)
>> -		return rate;
>> -
>> -	return DIV_ROUND_CLOSEST_ULL(rate * 8, hdptx->hdmi_cfg.bpc);
>> +	return rk_hdptx_phy_clk_calc_rate_from_pll_cfg(hdptx);
> 
> Does this inadvertently change the rounding behavior?
> 
> By moving the * 8 and / bpc math into rk_hdptx_phy_clk_calc_rate_from_pll_cfg()
> and using div_u64(), the result is now truncated instead of rounded.
> 
> For example, if the exact calculated value ends in .6 or .8, the truncation
> will yield a value 1 Hz lower than the rounded value.
> 
> Since rk_hdptx_phy_clk_determine_rate() still calculates the expected rate
> using DIV_ROUND_CLOSEST_ULL(), could this truncation lead to a 1 Hz mismatch
> in the Common Clock Framework?

I couldn't notice any change in the functional behavior, but for consistency we
can stick with DIV_ROUND_CLOSEST_ULL().  I'll make this change in the next
revision, if any required, otherwise it will be submitted as part of the FRL
TxFFE level control series:

https://lore.kernel.org/all/20260328-hdptx-ffe-v1-0-53ebd5dea20a@collabora.com/


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
