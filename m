Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41991CD98CC
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jun 2026 00:23:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ozcfCKgTu7nnb3LolMruQXbNv+FRjaxKFyqChqBqX0=; b=0XKbONJ+Kmv3y+
	72rE3XeemdASEFepFJgMncfZ8Ss3ynIdoqyfscnTW7zFahWMzRxEQePZgbLy8SJByVIGS/fTRJJTr
	WQcRMn1OpPFuqtaUIhBtRWThtrOeomKX3FVIgx/eEmKnM00SzRxrZlzGAqFQ4/ut79LoNo4B8e6N5
	Q0qqCAsd7kKA5GtNHYnXIS8qBHmfXVXkwo+pA2ORuqD3dOjNSQ17XsUeWCZn6W42PKVV0CLI8zLLY
	Oy2L+ZiCErPB9Q4tjnKlHuXMRKtyaygqST5m2fLXprIVC9Dy33kNKG0cCz9X/7dEH7xO/YtGOEYGn
	Hm6Mc2WAMi3QnLE9wMng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXpgP-0000000ADj2-2f2a;
	Fri, 12 Jun 2026 00:23:37 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXpgN-0000000ADig-1tZA
	for linux-phy@lists.infradead.org;
	Fri, 12 Jun 2026 00:23:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1781223813;
	bh=eCcFF2QPBF5RNy+nVOWMOGFMgPN0kvjN5EYT784Tu2E=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=b2h+XObsvrJSNqgVOWJcf55VqaQFtUL3CZRhAY3YRhYPXl39f6O5JTC4SHVGZMD9q
	 aXJeQ8qU78ZdDJSFlai12a7qE8FeglOjPIh3mCRcQACBjlgQB7m+BMDmblAKBe2WAn
	 Xo/BGMASPZkk92GBSmsJWq9Gq2wsSowBI0LjsQpO8m3SDa2s/5hlKABuhYbbyM4fZd
	 Lye2lzGWB0b+fO53QxsxmTm2DThNaP5AmO0z/krGN0eblHjLc//dE+3MXEA1k2xw4o
	 B3hOxktq+bVznlyP+2CavJKbvllIAPZqRT0Jc65BM37CZOcV1IRwC7reCyAQq6yN20
	 WUm6Lj/fhrUHg==
Received: from [100.64.0.241] (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 743E917E02F1;
	Fri, 12 Jun 2026 02:23:33 +0200 (CEST)
Message-ID: <2566d475-38ef-4f2e-9211-35498a8b1fc6@collabora.com>
Date: Fri, 12 Jun 2026 03:23:33 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/8] phy: rockchip: samsung-hdptx: Handle uncommitted
 PHY config changes
To: sashiko-reviews@lists.linux.dev
Cc: linux-phy@lists.infradead.org, olteanv@gmail.com,
 neil.armstrong@linaro.org, vkoul@kernel.org
References: <20260612-hdptx-clk-fixes-v4-4-ce5e1d456cda@collabora.com>
 <20260611235951.9D16B1F000E9@smtp.kernel.org>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <20260611235951.9D16B1F000E9@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_172335_650849_9FD55E7E 
X-CRM114-Status: GOOD (  23.14  )
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


On 6/12/26 2:59 AM, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 3 potential issue(s) to consider:
> - [High] rk_hdptx_phy_clk_determine_rate() incorrectly forces a 0 Hz clock rate when pll_config_dirty is true, breaking CCF semantics.
> - [High] rk_hdptx_phy_consumer_get() silently suppresses PLL hardware lock failures, breaking the clk_prepare() error propagation contract.
> - [High] Data race and missing synchronization between CCF and PHY APIs leading to concurrent hardware initialization.
> --

Nothing new here, already discussed before - we can move on..

> 
> commit 2dc0dee2b507137b074178dc88bd9b69dbe45d38
> Author: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> 
> phy: rockchip: samsung-hdptx: Handle uncommitted PHY config changes
> 
> This commit defers programming HDMI PHY configuration changes to the hardware
> until the PHY usage count increments. It introduces a pll_config_dirty flag
> to track uncommitted state and invalidates the clock rate in the CCF callback
> to force hardware updates.
> 
>> diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
>> --- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
>> +++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
>> @@ -1347,25 +1354,22 @@ static int rk_hdptx_phy_consumer_get(struct rk_hdptx_phy *hdptx)
>>  		return 0;
>>  
>>  	ret = regmap_read(hdptx->grf, GRF_HDPTX_STATUS, &status);
>> -	if (ret)
>> -		goto dec_usage;
>> -
>> -	if (status & HDPTX_O_PLL_LOCK_DONE)
>> -		dev_warn(hdptx->dev, "PLL locked by unknown consumer!\n");
>> +	if (ret) {
>> +		atomic_dec(&hdptx->usage_count);
>> +		return ret;
>> +	}
>>  
>>  	if (mode == PHY_MODE_DP) {
>>  		rk_hdptx_dp_reset(hdptx);
>>  	} else {
>> -		ret = rk_hdptx_pll_cmn_config(hdptx);
>> -		if (ret)
>> -			goto dec_usage;
>> +		/*
>> +		 * Ignore PLL config errors at this point as pll_config_dirty
>> +		 * was not reset and, therefore, operation will be retried.
>> +		 */
>> +		rk_hdptx_pll_cmn_config(hdptx);
>>  	}
>>  
>>  	return 0;
> 
> [Severity: High]
> Does silently discarding this error break the clk_prepare error propagation
> contract?
> 
> When this function is invoked via the clock provider's prepare phase, a
> hardware failure such as an I/O timeout during the HDPTX_O_PHY_CLK_RDY wait
> gets completely swallowed. The clk_prepare call would return success, allowing
> CCF consumers to proceed while the PHY hardware remains uninitialized.
> 
> Although the comment assumes operations will be retried, if clk_set_rate is
> not subsequently called, no further attempts will be made.
> 
> [ ... ]
> 
>> @@ -1700,13 +1704,18 @@ static int rk_hdptx_phy_power_on(struct phy *phy)
>>  		if (ret)
>>  			rk_hdptx_phy_consumer_put(hdptx, true);
>>  	} else {
>> -		regmap_write(hdptx->grf, GRF_HDPTX_CON0,
>> -			     HDPTX_MODE_SEL << 16 | FIELD_PREP(HDPTX_MODE_SEL, 0x0));
>> +		if (hdptx->pll_config_dirty)
>> +			ret = rk_hdptx_pll_cmn_config(hdptx);
> 
> [Severity: High]
> Can this missing synchronization lead to concurrent hardware initialization?
> 
> If thread A calls clk_prepare and thread B concurrently calls phy_power_on:
> 
> Thread A increments usage_count to 1 in rk_hdptx_phy_consumer_get and
> enters rk_hdptx_pll_cmn_config.
> 
> Thread B increments usage_count to 2, returns immediately from
> rk_hdptx_phy_consumer_get, and proceeds here to check pll_config_dirty.
> Because thread A hasn't cleared the flag yet, thread B will also invoke
> rk_hdptx_pll_cmn_config.
> 
> Could this data race allow both threads to concurrently execute non-atomic
> regmap multi-write sequences and corrupt the PHY state? Are driver-level
> locks needed to protect the shared pll_config_dirty and hdmi_cfg structures?
> 
> [ ... ]
> 
>> @@ -2323,8 +2335,19 @@ static int rk_hdptx_phy_clk_determine_rate(struct clk_hw *hw,
>>  {
>>  	struct rk_hdptx_phy *hdptx = to_rk_hdptx_phy(hw);
>>  
>> -	if (hdptx->hdmi_cfg.mode == PHY_HDMI_MODE_FRL)
>> -		return hdptx->hdmi_cfg.rate;
>> +	/*
>> +	 * Invalidate current clock rate to ensure rk_hdptx_phy_clk_set_rate()
>> +	 * will be invoked to commit PLL configuration.
>> +	 */
>> +	if (hdptx->pll_config_dirty) {
>> +		req->rate = 0;
>> +		return 0;
>> +	}
> 
> [Severity: High]
> Will returning 0 here break CCF semantics and cause a divide-by-zero crash
> in downstream consumers?
> 
> When req->rate is explicitly forced to 0 Hz, the Common Clock Framework
> uses this returned value to fulfill clk_round_rate and update its cached
> clock rate. Consumers like the VOP2 display controller or DRM core that
> rely on clk_get_rate will receive 0 Hz, which is known to lead to
> crashes when calculating timestamping constants or display timings.
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
