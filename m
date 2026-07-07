Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D215C43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 14:14:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MmN/+l9ZiMf4wTP0hL5WtBCUzUBNNni5mN6AyaG7Yn4=; b=sfe4DE8eX6b2Lo
	pkPLQI32oW4yrTBlWb1giZG/K9CR04TP+8u57a3aY2orrBU/8wxQJlwB5a7l1q9yvYfFKh7lPBwqT
	SFk3KN6kxU7kslL8/M4OgJfapj/u/99S4suvPAMqKpeaARylSrQJoAJz0cd4tdzCErJsNvKzWVkeV
	HVhveZvu/GISRvw7bgAMO1RBWUQrYeYpXNXI8OX7NQpoPd4Nl9+hjHdqEEk0Bg8HWpqOhy2UFBIcX
	pjgyV29kCKg7U233/hxpFKrfJg+Gq3VzaKoV2PHCnATtsSH5gcrR3HgVqAVUR8g22ZTPus+sJIJZr
	aMhyv4Bc+b2n+7ZJTg+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh6ZW-0000000F7t5-0zaX;
	Tue, 07 Jul 2026 14:14:50 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh6ZQ-0000000F7rO-3o40
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 14:14:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783433681;
	bh=Oir2L8r8JENMjsaS6XGSf9ZOzknW7/JZBsW+OujDV0o=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=is6ar83mWEsiCXiD8wZSgKlomceF4f4VAPU6+Cs1rHP6ePF5Y2Iek9P1ZrIKDlRFw
	 CYT3/wwBLl2G/mS+AdGbozZT6J3B/o2COoncwFJVIMj3uS+2HpxDSE2ccp0XncqoWW
	 7r6qcbnkZbKyw50mOU7yJo/0mmVC0kRJq/142//VM7YsThaLJ5tVQAZTj7hrxTc0wX
	 pCCbHLsrL2SeiFQIRXJKgWzEFHOk99pJ8zS7gCeeAG6OWkknMbC7XBQzIGVIELmftr
	 bpvflslf4R4BvfswqSzx84BeH8geoZGPYXrptZn4C3XiMSiUKpsuogIiHWVqfBhC+e
	 5MMU+gKHuxOJg==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 86B0317E05E8;
	Tue, 07 Jul 2026 16:14:41 +0200 (CEST)
Message-ID: <568124de-9ed6-469a-8521-99c11cd6c495@collabora.com>
Date: Tue, 7 Jul 2026 16:14:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] phy: mediatek: phy-mtk-hdmi-mt8195: Fix PLL calc
 divisor overflow
To: sashiko-reviews@lists.linux.dev
Cc: dri-devel@lists.freedesktop.org, olteanv@gmail.com, vkoul@kernel.org,
 linux-phy@lists.infradead.org, neil.armstrong@linaro.org
References: <20260701121936.19407-1-angelogioacchino.delregno@collabora.com>
 <20260701121936.19407-2-angelogioacchino.delregno@collabora.com>
 <20260701123106.1B5801F00A3E@smtp.kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260701123106.1B5801F00A3E@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260707_071448_105045_51A12C86 
X-CRM114-Status: GOOD (  16.60  )
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

On 7/1/26 14:31, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> 
> Pre-existing issues:
> - [High] Calculations using `14835 * MEGA`, `5 * GIGA`, and `12 * GIGA` silently overflow 32-bit `unsigned long` types on 32-bit architectures, completely breaking clock tiering and boundary checks.
> --
> 
> commit 8179a32cf1dac8f1d080e57bbce79246661b50eb
> Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> 
> phy: mediatek: phy-mtk-hdmi-mt8195: Fix PLL calc divisor overflow
> 
> This commit fixes an issue where calculating a PLL rate for high display
> resolutions results in a pixel clock exceeding 32 bits, but the digital
> clock divider calculation uses div_u64(), which expects a 32-bit divisor.
> It resolves this by using div64_u64() instead to prevent overflow.
> 
>> diff --git a/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c b/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
>> index 1426a2db984d5..e6ee8e0800222 100644
>> --- a/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
>> +++ b/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
>> @@ -290,7 +290,7 @@ static int mtk_hdmi_pll_calc(struct mtk_hdmi_phy *hdmi_phy, struct clk_hw *hw,
> 
> [Severity: High]
> This is a pre-existing issue, but do the constants in this function silently
> overflow on 32-bit architectures?
> 

There is no 32-bit architecture compatible with this driver. This will run only
on AArch64, and it's very unlikely to see a 32-bits kernel running on MT8195.

This can be eventually fixed with a later series, but shall not block the proposed
fixes from being picked, both because it's unlikely to happen, and because those
are pre-existing issues.

Besides, the series *is* actually fixing some other overflow issues and was already
tested good.



> Earlier in mtk_hdmi_pll_calc(), there are tier threshold calculations like:
> 
>      else if ((tmds_clk * 100) >= 14835 * MEGA && (tmds_clk * 10) < 2967 * MEGA)
> 
> and later boundary checks:
> 
>      if (ns_hdmipll_ck >= 5 * GIGA &&
>          ns_hdmipll_ck <= 12 * GIGA)
> 
> If MEGA and GIGA evaluate as 32-bit types on 32-bit systems, a multiplication
> like 14835 * MEGA evaluates to 14,835,000,000, which wraps around modulo 2^32
> to 1,950,098,112 before being promoted to u64 for the comparison against
> tmds_clk * 100.
> 
> Similarly, 5 * GIGA and 12 * GIGA would overflow, potentially rendering the
> valid PLL clock range mathematically unreachable and forcing the function to
> always return -EINVAL on 32-bit builds.
> 
> Should these constants be explicitly typed or cast to u64 to ensure the
> comparisons work correctly on 32-bit kernels?
> 
>>   	posdiv2 = 1;
>>   
>>   	/* Digital clk divider, max /32 */
>> -	digital_div = div_u64(ns_hdmipll_ck, posdiv1 * posdiv2 * pixel_clk);
>> +	digital_div = div64_u64(ns_hdmipll_ck, posdiv1 * posdiv2 * pixel_clk);
>>   	if (!(digital_div <= 32 && digital_div >= 1))
>>   		return -EINVAL;
>>
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
