Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35C5DF01822
	for <linux-phy@archiver.kernel.org>; Fri,  6 Mar 2026 10:29:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wsja5qa1EUicis3s05EA/UzrakUbu5rBK2idDmequII=; b=BNM/pQ3wS0LTv6QBKdYK3O4un+
	w7tPAKZdPfJvNnlTLlsH+/Aubk365+fbPwjyDmXQV9k4L5o3+fKbUaza/Zs1/9m96VtS+rxbuzQuU
	wizt4WMGtb8OFYsg1a2NQbgRXy3wwh0RR9wedYaH2T3AHo5ksr7Y2OB7VpySKOyuX8IUhrMbZf/n0
	/aB21xMqWKuVXbCgQT8tmpPeHJoj7Al/9MVkFLiIDg/ZFEh8Dw06IsagbGr0fZnepVV/kUve9+UI4
	+xad8heGeUUxZ7P8Ev548AydxYymeczELhsbnJxV7CTg9n+oS6I0iVVkpfkPp8mqFxKQihJ2D5OrT
	Qtw47nMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vySQn-00000003SRc-3MFT;
	Fri, 06 Mar 2026 10:29:17 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vySQk-00000003SPg-0ZuW
	for linux-phy@lists.infradead.org;
	Fri, 06 Mar 2026 10:29:16 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-48379a42f76so79162185e9.0
        for <linux-phy@lists.infradead.org>; Fri, 06 Mar 2026 02:29:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772792952; x=1773397752; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3xGUS0AK0m4csV0s16m7dkz17YbnAtG49idhDDUR/A4=;
        b=ZE6Szuv92KgNFdh1j7pZsmBVP9Rbvx3dWM1SXaumu8vlIGzXkSYODm3D7axwfLwNqT
         ihuR2pTf/TniJrpghpNdKho4TpKSLnvP9lD+WAgCbGi50pkO0Ur6Le9Bh1u+ceLFlS1Z
         aMIBfNBgF7k0PE/vLFgK9xq1F1rxorW2nd1VIkgvlPAOBIIDz19ixTFlyY9C56L4kRvY
         g5/iZ2GT+nX1T3pslbaH9up6bJ8nDbF8CAr6g0Syh2D+3npK9Fq1PfJ27rAIkvRne4JO
         sbSNMPpdOlzhu9BLEIegonT/hd7RbcRq6fHMYQu5uHh3pVYQbrdV4+yl/zkCZNo1omr3
         muDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772792952; x=1773397752;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3xGUS0AK0m4csV0s16m7dkz17YbnAtG49idhDDUR/A4=;
        b=NL3uLJA5Ne6SIUtM84kJCy1Ve2/a3r2buGsrchWMha0qAmsFr7YU6WsEgHvO/B3Dgh
         uObAalrxHrdXDZgp/N3eJ30C7D6X1I1NeQJbdS/o4I/Pb0q4aek+UVXErZgws3BddMVv
         WaGKY9YpIWGmPBqmN788tVBMh3lElLAI9F1BVtu+VadVtcV+AM3ANgP6N72kxy6PIFcT
         ij6Vck76KhmPO0vT6y+gjG5X4V4bOl1JkYhti8b6r9iCcloHapuKK5mud7531FwAQebd
         Ra6Um3MlvPdmTKd7+JT5qHL1MRSN/v0dKwJEXmfahz12/MDGKE2on2FEMhHwWcDfJB4F
         6ZsA==
X-Forwarded-Encrypted: i=1; AJvYcCULhUJWigdni05HOFjc8Gdsd86qP8vTdkAZVCPCkcIfA0KhNTcEzWCe1CDlD52PXKCRYhkIqPbeUvQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzc5fQBp5qV5n60KqJ8IbO+Slrb6Ug/AQHRmKYdPClsmDaPQuy/
	QRxvgp44nuXETA5nX6u/y1I/EbxZJusVo1E7PNbJaSL6NAvfgAMVICjsNMoEG7lWlO8=
X-Gm-Gg: ATEYQzwS/bFifZ3iJkdFHtUK5DTqkiPEZRjukARDqbbqzXxG6nyhFrxqHLsNhX6xJ5v
	EHcOpvrpHcNyw1VO5RDRPkYmNMmz4ZxWz1CXqkd1LxbdhvyBKaUejNemrW+8gZkt3MVOfz0gDgg
	YEJCqNSaACgDmGWyOeTZfGoxdbZpyuU8E4MCB04QPU6onfqwLzQYYFu21wMR8KwZZDaTESG4BQx
	SXXhh6Jr5gq0BD8ONZd8tF3Tj01zuDGVhmq9TFE7/bEPtJ+Y6yYRzN5oDcwDJy29k9MVh3mdKAw
	Ff5IQJ24lovOD9heYhTArvDbzBC/r3c0S317xfBEmc4nnMMQaz3ajG5bCLKYTGl8zaVB2fAl7M3
	b68zyn3UUQJGay44D3PcZaBbISbL/qyyTpCa8D2Flj4yulJFlQhSzKcaS3ooLvdNHMG34MqDfD4
	t0xHPU2jQUyLzHNY0uFayOKIckRTgu4k3zvzowekGuAC2F0HV0QB5XMXQgAq2Qu3UxTcnmfbQY2
	Hy8dcHZdYD8zXI=
X-Received: by 2002:a05:600c:1c08:b0:477:55ce:f3c2 with SMTP id 5b1f17b1804b1-48526944ca7mr25339545e9.14.1772792952009;
        Fri, 06 Mar 2026 02:29:12 -0800 (PST)
Received: from ?IPV6:2a01:e0a:106d:1080:cbfe:649:7f17:8b95? ([2a01:e0a:106d:1080:cbfe:649:7f17:8b95])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4851fb3668csm185167915e9.13.2026.03.06.02.29.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2026 02:29:11 -0800 (PST)
Message-ID: <a25ea62b-8d1f-4229-9ee2-ad8b161ce03e@linaro.org>
Date: Fri, 6 Mar 2026 11:29:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2] phy: cadence: Sierra: Do not modify register when
 getting parent clock
To: Gregory CLEMENT <gregory.clement@bootlin.com>,
 Vinod Koul <vkoul@kernel.org>, Aswath Govindraju <a-govindraju@ti.com>,
 Swapnil Jakhade <sjakhade@cadence.com>
Cc: =?UTF-8?Q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260306-fix_sierra_get_parent-v2-1-cafe89ee5382@bootlin.com>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <20260306-fix_sierra_get_parent-v2-1-cafe89ee5382@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260306_022914_211211_A27BB23A 
X-CRM114-Status: GOOD (  16.24  )
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
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 3/6/26 11:23, Gregory CLEMENT wrote:
> The get_parent() callback for the PLL_CMNLC1 clock was incorrectly
> writing to the register while determining the parent clock index. This
> unintended register access forces the PHY back into training mode. If
> the PHY is already configured, this unexpected change prevents it from
> exiting training mode.
> 
> Remove the register write operation to ensure the PHY remains stable
> during the get_parent() callback.
> 
> Fixes: da08aab940092 ("phy: cadence: Sierra: Fix to get correct parent for mux clocks")
> Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
> ---
> Changes in v2:
> 
> - Removed unused variable spotted by the 0-DAY CI Kernel Test Service:
>    https://lore.kernel.org/oe-kbuild-all/202603061235.hrl27Jvj-lkp@intel.com/
> - Link to v1: https://lore.kernel.org/r/20260305-fix_sierra_get_parent-v1-1-a7c18e9e6c58@bootlin.com
> ---
>   drivers/phy/cadence/phy-cadence-sierra.c | 11 ++---------
>   1 file changed, 2 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/phy/cadence/phy-cadence-sierra.c b/drivers/phy/cadence/phy-cadence-sierra.c
> index 92ab1a31646ae..dbeda7f01cbb2 100644
> --- a/drivers/phy/cadence/phy-cadence-sierra.c
> +++ b/drivers/phy/cadence/phy-cadence-sierra.c
> @@ -698,23 +698,16 @@ static const struct phy_ops noop_ops = {
>   static u8 cdns_sierra_pll_mux_get_parent(struct clk_hw *hw)
>   {
>   	struct cdns_sierra_pll_mux *mux = to_cdns_sierra_pll_mux(hw);
> -	struct regmap_field *plllc1en_field = mux->plllc1en_field;
> -	struct regmap_field *termen_field = mux->termen_field;
>   	struct regmap_field *field = mux->pfdclk_sel_preg;
>   	unsigned int val;
>   	int index;
>   
>   	regmap_field_read(field, &val);
>   
> -	if (strstr(clk_hw_get_name(hw), clk_names[CDNS_SIERRA_PLL_CMNLC1])) {
> +	if (strstr(clk_hw_get_name(hw), clk_names[CDNS_SIERRA_PLL_CMNLC1]))
>   		index = clk_mux_val_to_index(hw, cdns_sierra_pll_mux_table[CMN_PLLLC1], 0, val);
> -		if (index == 1) {
> -			regmap_field_write(plllc1en_field, 1);
> -			regmap_field_write(termen_field, 1);
> -		}
> -	} else {
> +	else
>   		index = clk_mux_val_to_index(hw, cdns_sierra_pll_mux_table[CMN_PLLLC], 0, val);
> -	}
>   
>   	return index;
>   }
> 
> ---
> base-commit: 11439c4635edd669ae435eec308f4ab8a0804808
> change-id: 20260305-fix_sierra_get_parent-9c8435cc65e7
> 
> Best regards,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
