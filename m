Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD865CD98C7
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jun 2026 00:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BXcErDF373rBuMZ3U2h5Zkrlw5obd4jB6qVOcFM4Uhk=; b=O90WapDogUsl0s
	AEdas9fe0dy1Yv/slYlc8tOwCGVnL9WK5PEYPAhZr0eY7tfTif7LhLBNdHb/4W5vHDfEpMfdmEDgx
	mkHlHm6Yd/Hxbl8HNSfd8iu6Y6tm8+oRRGyCUc3nnPEgY01D/IxnYLZOR7u3FwiWYnr1DyqpVFcKw
	NtLIeUnHmiSo4j4X7UmEPMF7T1DnlwYULuVUMb57YJtSmW54H1v/kKyYcwsIMsJeFSSqzqZZnDmHy
	CdgKN8ZJDxTli/Iqzdi1a931mcCwuJ5fXKcSl+Ki3tivK2XyBsv0MLgavQXFVYVl+g3r62b+cwMI9
	HlySsOlGxkts2lJbmXpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXpbu-0000000ADfA-0nM0;
	Fri, 12 Jun 2026 00:18:58 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXpbr-0000000ADee-0sg3
	for linux-phy@lists.infradead.org;
	Fri, 12 Jun 2026 00:18:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1781223533;
	bh=mSYn42qFwxcVeNAG6Q7Ssv9a2+y5l0z2gCqDv5a0n40=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=pQvnXBDBlYcq54uxYzw0Ta5dSsxMjn7YemUnO/ATA63z0i7zhSyb5UK+IlwE+5mDC
	 hlqlqZRd6mh5LEtRDGyeVUv3UXK5R9vpsABmEuSiHIwDpOoeQznd0yIRRsumM1BcTi
	 pUNCxniOe3uVkwlZBHpzUthvy3xc8cNcYVuK1GBKtkCfv+QHTqzit23tKSkdcLED2Z
	 cB8UUs8UhQQcErWoUfIdWAoNLvXD0rm7oNyRneX3Dbnocx+EuleZ7Ty5tD8kO7eeaV
	 p+6SKkq/bgpeua/67x27UucCvcIDdZ7Z3X1dTLUi2tLULFPH2se4p8wHGJeQAgnWK2
	 0sNUl/R8uo74Q==
Received: from [100.64.0.241] (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E648517E03D7;
	Fri, 12 Jun 2026 02:18:52 +0200 (CEST)
Message-ID: <90ac7bbc-977b-432a-9f17-b7280e19d819@collabora.com>
Date: Fri, 12 Jun 2026 03:18:52 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/8] phy: rockchip: samsung-hdptx: Prevent
 divide-by-zero when computing clk rate
To: sashiko-reviews@lists.linux.dev
Cc: neil.armstrong@linaro.org, olteanv@gmail.com,
 linux-phy@lists.infradead.org, vkoul@kernel.org
References: <20260612-hdptx-clk-fixes-v4-2-ce5e1d456cda@collabora.com>
 <20260611235702.0E9691F000E9@smtp.kernel.org>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <20260611235702.0E9691F000E9@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_171855_418623_A1D19262 
X-CRM114-Status: GOOD (  16.40  )
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

On 6/12/26 2:57 AM, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> 
> Pre-existing issues:
> - [High] Potential integer underflow in `fout` calculation when hardware state is misconfigured, leading to a massive bogus clock rate that could hang downstream components.
> --

If the hardware reached such a damaged state, the kernel is likely already encountering more serious issues.

Regardless, I will address this in the "FRL TxFFE level control" series, which is currently blocked by this one, to avoid any further delays.

Regards,
Cristian

> 
> commit cb21c8c13b880d08d17b5ee69740229527db5442
> Author: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> 
> phy: rockchip: samsung-hdptx: Prevent divide-by-zero when computing clk rate
> 
> This commit adds sanitization to rk_hdptx_phy_clk_calc_rate_from_pll_cfg()
> to prevent a divide-by-zero during clock rate calculation. It checks the
> denominator derived from hardware registers, which could be uninitialized or
> misconfigured.
> 
> Closes: https://sashiko.dev/#/patchset/20260611-hdptx-clk-fixes-v3-0-67b1b0c00e16@collabora.com?part=1
> 
>> diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
>> index 710603afff866..8c044381b83a4 100644
>> --- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
>> +++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
>> @@ -2270,10 +2270,15 @@ static u64 rk_hdptx_phy_clk_calc_rate_from_pll_cfg(struct rk_hdptx_phy *hdptx)
>>  
>>  	fout = PLL_REF_CLK * ropll_hw.pms_mdiv;
>>  	if (ropll_hw.sdm_en) {
>> +		val = 16U * ropll_hw.sdm_deno *
>> +		      (ropll_hw.sdc_deno * ropll_hw.sdc_n - ropll_hw.sdc_num);
>> +		if (!val) {
>> +			dev_dbg(hdptx->dev, "%s invalid ROPLL hw state\n", __func__);
>> +			return 0;
>> +		}
>> +
>>  		sdm = div_u64(PLL_REF_CLK * ropll_hw.sdc_deno *
>> -			      ropll_hw.pms_mdiv * ropll_hw.sdm_num,
>> -			      16 * ropll_hw.sdm_deno *
>> -			      (ropll_hw.sdc_deno * ropll_hw.sdc_n - ropll_hw.sdc_num));
>> +			      ropll_hw.pms_mdiv * ropll_hw.sdm_num, val);
>>  
>>  		if (ropll_hw.sdm_num_sign)
>>  			fout = fout - sdm;
> 
> [Severity: High]
> This is a pre-existing issue, but could this subtraction result in an
> integer underflow?
> 
> If the hardware registers are misconfigured or contain uninitialized values,
> it seems the computed sigma-delta modulator offset sdm could be significantly
> larger than the base frequency fout.
> 
> Since fout is an unsigned 64-bit integer, subtracting a larger sdm in
> rk_hdptx_phy_clk_calc_rate_from_pll_cfg() would wrap around to a massive
> positive value.
> 
> Could this underflow lead to an absurdly high clock rate being returned
> to the Common Clock Framework, potentially causing hangs or div-by-zero
> errors in downstream components?
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
