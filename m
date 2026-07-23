Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF6F8C531CC
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jul 2026 21:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2jcGd7EXk6q3wGbQWrYoq28WgVnhpr5aQwmF5DrOEMg=; b=HMhnDybXxXYfxv
	uYJR17VuRhIltQ6PNXjeLPP/IpwjvZTrCj9T1tQfKejF/1q+kffOn1h6dFDRSPjPMB7Bam0Ircm1v
	jegY6HcspFQ/4OyJfMXpp9uPyRIn9TguOYZmnA/6PMKSALHzBczn1h5ru2zVql2d67ad+/zN7riiB
	4tnIYB7+uxHwrrTbIJYN7OUFHCHxDEMxIpdso20iNeN/mOM/4G82DiwAZI1llpbpVIU3Q/cPJemp/
	RQb+SO+6GBRjqnltHSohJN/bm4peVNvDYeVB/IM4ez5VKI0frb6C29PaNcD0lh9oBrBXUr7gH97WG
	Wmk/oKhtgxP984Wvw8LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wn0sS-0000000F6zz-1YOt;
	Thu, 23 Jul 2026 21:22:48 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wn0sM-0000000F6yL-0qvb
	for linux-phy@lists.infradead.org;
	Thu, 23 Jul 2026 21:22:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784841758;
	bh=Be+gSqsCXF3W1EY3lPrtTKJcU1VhyJPNRTZ/2IeFKC0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=OIYLS2vVtrNOBr22n96r+e/ff8aj9PUiMyyJsLL50u/F7l53MHmhgw/r+8tWT1sJ/
	 QptF7LmQ2NMWR2i47SiIVBCsth83lbky5BlbzZJ7lSucn5DFwRwZzfLsdSg10IzYW0
	 22Nw8bJ4XDj1y8DHUmU5BQjc2xWFETta5hYrwBJTkE64jC2AS+3Ro9MMIGRILez8pm
	 nJ7W12G6x2gFJo4WWFzCgHF/Mj4W/sS1XeJg+25B+LYxE5oIoiXkQDyKpnuMRztDMf
	 ymlpWSk951m7jfjP/SjGd9jv7q9tHFj/WAZUee/uuNHOosVBIuRlQB7HDawr3dSp1j
	 GQZi1LHAIeeag==
Received: from [100.64.0.241] (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5330D17E0A45;
	Thu, 23 Jul 2026 23:22:38 +0200 (CEST)
Message-ID: <0afce8ee-0277-4fad-adbe-ceb064f66437@collabora.com>
Date: Fri, 24 Jul 2026 00:22:37 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 03/10] phy: rockchip: samsung-hdptx: Guard against clk
 rate integer underflow
To: sashiko-reviews@lists.linux.dev
Cc: olteanv@gmail.com, neil.armstrong@linaro.org, vkoul@kernel.org,
 linux-phy@lists.infradead.org
References: <20260723-hdptx-clk-fixes-v5-0-8e786067865f@collabora.com>
 <20260723-hdptx-clk-fixes-v5-3-8e786067865f@collabora.com>
 <20260723195717.8E1AC1F00A3D@smtp.kernel.org>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <20260723195717.8E1AC1F00A3D@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260723_142242_418535_E68DD4E3 
X-CRM114-Status: GOOD (  20.71  )
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

On 7/23/26 10:57 PM, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> 
> Pre-existing issues:
> - [High] rk_hdptx_phy_clk_determine_rate() incorrectly returns a clock rate directly instead of 0 on success, violating the CCF API.
> --
> 
> --- Patch [3]: [PATCH v5 03/10] phy: rockchip: samsung-hdptx: Guard against clk rate integer underflow ---
> commit cf68603e6625cb39a98418e9f792a4e2e373dfcd
> Author: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> 
> phy: rockchip: samsung-hdptx: Guard against clk rate integer underflow
> 
> This commit adds a check to avoid an integer underflow in the ROPLL
> hardware state calculation. By validating that the computed sigma-delta
> modulator offset does not exceed the base frequency, it prevents
> returning excessively high clock rates to the Common Clock Framework.
> 
> Closes: https://lore.kernel.org/all/20260611235702.0E9691F000E9@smtp.kernel.org/
> 
>> diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
>> index 44e99343f2499..fcf04e9814cc6 100644
>> --- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
>> +++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
>> @@ -2280,10 +2280,16 @@ static u64 rk_hdptx_phy_clk_calc_rate_from_pll_cfg(struct rk_hdptx_phy *hdptx)
>>  		sdm = div_u64(PLL_REF_CLK * ropll_hw.sdc_deno *
>>  			      ropll_hw.pms_mdiv * ropll_hw.sdm_num, val);
>>  
>> -		if (ropll_hw.sdm_num_sign)
>> +		if (ropll_hw.sdm_num_sign) {
>> +			if (sdm > fout) {
>> +				dev_dbg(hdptx->dev, "Invalid ROPLL hw state: sdm > fout\n");
>> +				return 0;
>> +			}
>> +
>>  			fout = fout - sdm;
>> -		else
>> +		} else {
>>  			fout = fout + sdm;
>> +		}
>>  	}
>>  
>>  	return DIV_ROUND_CLOSEST_ULL(fout * 2 * 8, ropll_hw.pms_sdiv * 10 * bpc);
>>  }
> 
> [Severity: High]
> This is a pre-existing issue, but I noticed a potential problem in
> rk_hdptx_phy_clk_determine_rate() located nearby in the same file:
> 
> drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c:rk_hdptx_phy_clk_determine_rate() {
> 	struct rk_hdptx_phy *hdptx = to_rk_hdptx_phy(hw);
> 
> 	if (hdptx->hdmi_cfg.mode == PHY_HDMI_MODE_FRL)
> 		return hdptx->hdmi_cfg.rate;
> 	...
> }
> 
> Does this violate the Common Clock Framework API contract for
> .determine_rate callbacks?
> 
> The .determine_rate callback is expected to update req->rate and return 0
> on success. By returning the rate directly, it appears this fails to update
> the request and instead returns a massive integer.
> 
> For FRL_8G4L_RATE (3,200,000,000), casting it to a 32-bit signed int would
> wrap around to a negative value (-1,094,967,296).
> 
> When the clock rate is negotiated or set for 8Gbps FRL mode, CCF could
> receive this wrapped negative value, interpret it as an error code, and
> cause clk_set_rate() to fail entirely.
> 
> Even for smaller rates that do not wrap, leaving req->rate unmodified might
> bypass rounding and cause downstream failures in HDMI configuration.
> 
> Should this instead update req->rate and return 0?

This is implicitly fixed by [PATCH v5 05/10] phy: rockchip: samsung-hdptx:
Handle uncommitted PHY config changes. If a new revision is required, I can
provide a dedicated patch.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
