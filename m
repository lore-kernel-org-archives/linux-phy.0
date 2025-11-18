Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B94B6CED63B
	for <linux-phy@archiver.kernel.org>; Tue, 18 Nov 2025 13:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eo+WyzfEJWpwIRiN9vuVz7yD+ERYtlDjNRDn+2xveBE=; b=TnKIBXouDdU0vG2vUhIvjX2RMq
	5VuXsbw3U1H9y3AcimbKujVD5+VQPM0O/i0qEe7ZD8Vh+joxGKVdBRx3QzBQX81qo3rpGe5N+41DZ
	BgzNkKy5QBhfGFf2Nvfl8WXUDERcsSAqEAyCVYfsYZbSESu7hTlh6Bu/ndx2IQW/rnFAcA3Y3Q+CE
	1Tcl7fc+V85S/MMUntxi7A3Dg64E68RSVQEYZvwvlsV3m+VkTAqxJtnbfekmahW636tpkmnzoK/WV
	8xXUEsy46wsCwCJUe0fvcOoT0+nqZW77ZlGWcdffuM6REg5CHNKyJZikkI/J0ar6jHrS5VfTjMw2Y
	ncR7YZGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLM3r-00000000Tzr-1k9g;
	Tue, 18 Nov 2025 13:47:59 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLM3o-00000000Typ-2KAi
	for linux-phy@lists.infradead.org;
	Tue, 18 Nov 2025 13:47:57 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-475ca9237c2so30863115e9.3
        for <linux-phy@lists.infradead.org>; Tue, 18 Nov 2025 05:47:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763473675; x=1764078475; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9zWMsWqR7g9/bro/jqzvtjPju/05qtW6o1cFZvse410=;
        b=S/KcUuVdU98LWG2wxSZIWEag8wqcXkv2RcRD/tZsyK4Fp/OajPJ6PJ8SPSZ4N5qNp9
         Q8eJfmXVut4IgAUkdZXfwEDpnFua+8OUMvpIhHYREzQVRF9n2P1QqSWEvGs5hAC1ljEe
         qowMpuKqNdBGcu9N9IC6dS+rCIkOvtpeIo8ZEF6S/t5uUDkk7z8kBYgzdcdY6Howv3rH
         vm3KTB+jC5M5XZBkHOoDEG+23ccaDQ3JQsY5r4a2vPPP8/v+G81RkrDyIkTpaS2myioe
         moY2JA5PPMP9TXzRg2iCUbg8AI7kBoBi19c5laaY9/Whos7NiDPjez8Ig8rlMX26sDWP
         HioA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763473675; x=1764078475;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9zWMsWqR7g9/bro/jqzvtjPju/05qtW6o1cFZvse410=;
        b=VW4LSTuIhU2EXSnm2NGXGnHU7+M+qoKSMdCiyvh1iletARsJtxsct/W6NdxVP2Qvar
         ubx+8fmSrq8bqGiH3DWDy+aUWBM2fUUzBv3XzTtrQVUGZZwsebt3zbBoM/NRTy9e1Sve
         SOyKpidrsLRrM6o0JnVxDyHksJQy79FDGtgU+imZW2ivoqmbHIgyt4OzEmcS8JIOfd94
         vAMcZ3tz2DIJ/D14Jhra21GEjBTMszUJfqwlq/D+BkyBBbreFZaA87Q4yhLXuGE1ES3N
         onfal5wxIg28JguH5Fb6GCmpKJPEzfN0M+lTO9vyYTFte7hujeDT5iLTmOrjh5Ynh3eu
         ZdZg==
X-Forwarded-Encrypted: i=1; AJvYcCX+IHsG5N3y3WEtrSuKYSNvaoBnHF1c4cfU1c4sUjDZvSZQAn/s7n1ooqKehZNrWCQWCiW4Ij9IgOk=@lists.infradead.org
X-Gm-Message-State: AOJu0YzvDfQL6dvew/2B5buSlkRM826aowRWRbw1H9P2/RJTZU9DsRvW
	SBzOynZbvs2++leSV+7ZW5UM2dFJs2RwfJkeapG5nY3Gvz/TG9dszLbdHcoWOz3osF0qfRLXxje
	9y5P+
X-Gm-Gg: ASbGncu3THMvM24I5MdE5ao0hlUqoEWuhaEIG55sopkIv0s471nHx+fxSvxntsMinws
	r6mjduwCyJwSWnUMx1X34VI7gwAwczG+6ycNodLYIdJ8FlEi9KBWJtGZRETfl0jmpcREIW4I5+F
	Nw6iULJX3af3p8Rf3D5/UxncH9AgINuV1dKYKaAdNfR63bhBokwe2UALx0nOP/Q24Y9LiFW+ZEp
	yddTc7AlqUVIDpVY/ksGPqhqvsxiPcU/m2om01G5ZC6xzE3V4wL9K5Vod9j4ToFiej9nAwFxY0Y
	rjmKsdtdHSeDm/cj43bZ9mUcqf7/aKuQObrY6Jgo7WWX1gjkxzTa4L2dr1rWI6mcfZhii4GdkwG
	XVjzLHwUQQS/WrJ80CaGcbOLw47IpbSpqsFdN7Ewbzc1hmX2NfZEcCDV4FvQc6l94CZMFlVrSAI
	EEHJ3suXQHujCmv17bA+0c4LovvSvG2O69JkqF5ufI3USSGZyyotJhCcb7V4s9DdHPWSDL5dEZS
	A==
X-Google-Smtp-Source: AGHT+IGqfgOR82Uy2i1IiBEEfDoHNM7EiN7YLlgbDZ+Lf/4M0/HFhAKStzngiUha2MqfbrbaLWBF/A==
X-Received: by 2002:a05:600c:a49:b0:477:55c9:c3ea with SMTP id 5b1f17b1804b1-4778feaa94amr139177665e9.35.1763473674740;
        Tue, 18 Nov 2025 05:47:54 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:366e:5264:fffe:1c49? ([2a01:e0a:3d9:2080:366e:5264:fffe:1c49])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4779b509a5esm189194275e9.2.2025.11.18.05.47.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 05:47:54 -0800 (PST)
Message-ID: <6e166ac1-6c36-482d-9d0d-1cb841f2286d@linaro.org>
Date: Tue, 18 Nov 2025 14:47:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 2/2] phy: rockchip: naneng-combphy: Fix PCIe L1ss
 support RK3562
To: Shawn Lin <shawn.lin@rock-chips.com>, Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <1763459526-35004-1-git-send-email-shawn.lin@rock-chips.com>
 <1763459526-35004-2-git-send-email-shawn.lin@rock-chips.com>
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
In-Reply-To: <1763459526-35004-2-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_054756_627920_A9F2818C 
X-CRM114-Status: GOOD (  15.00  )
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

On 11/18/25 10:52, Shawn Lin wrote:
> When PCIe link enters L1 PM substates, the PHY will turn off its
> PLL for power-saving. However, it turns off the PLL too fast which
> leads the PHY to be broken. According to the PHY document, we need
> to delay PLL turnoff time.
> 
> Fixes: f13bff25161b ("phy: rockchip-naneng-combo: Support rk3562")
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
> 
> Changes in v2:
> - add more commit message
> 
>   drivers/phy/rockchip/phy-rockchip-naneng-combphy.c | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> index e303bec..7f8fc8e 100644
> --- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> +++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> @@ -106,6 +106,10 @@
>   #define RK3568_PHYREG18				0x44
>   #define RK3568_PHYREG18_PLL_LOOP		0x32
>   
> +#define RK3568_PHYREG30				0x74
> +#define RK3568_PHYREG30_GATE_TX_PCK_SEL         BIT(7)
> +#define RK3568_PHYREG30_GATE_TX_PCK_DLY_PLL_OFF BIT(7)
> +
>   #define RK3568_PHYREG32				0x7C
>   #define RK3568_PHYREG32_SSC_MASK		GENMASK(7, 4)
>   #define RK3568_PHYREG32_SSC_DIR_MASK		GENMASK(5, 4)
> @@ -664,6 +668,10 @@ static int rk3562_combphy_cfg(struct rockchip_combphy_priv *priv)
>   	case REF_CLOCK_100MHz:
>   		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_100m, true);
>   		if (priv->type == PHY_TYPE_PCIE) {
> +			/* Gate_tx_pck_sel length select for L1ss support */
> +			rockchip_combphy_updatel(priv, RK3568_PHYREG30_GATE_TX_PCK_SEL,
> +						 RK3568_PHYREG30_GATE_TX_PCK_DLY_PLL_OFF,
> +						 RK3568_PHYREG30);
>   			/* PLL KVCO tuning fine */
>   			val = FIELD_PREP(RK3568_PHYREG33_PLL_KVCO_MASK,
>   					 RK3568_PHYREG33_PLL_KVCO_VALUE);

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
