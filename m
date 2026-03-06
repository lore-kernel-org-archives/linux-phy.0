Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21E13F01825
	for <linux-phy@archiver.kernel.org>; Fri,  6 Mar 2026 10:39:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2ShfMEEtxFPwz0OTYRHuBBe8y8EViVz9WWhvqLazyZU=; b=ow+QGhUmFBnLfIF28p0JI0oNGp
	NSpmeqC23Mllrkl78OYvS9qZn3YQwVVxJ1KbloJd+AW4X9j2kASaANXmgqPp61PkpxtiGs+0v/WIu
	gKBtsw5nXMvqsAsQNIdHmmijDcIp2JzAOo4VUGuy27aXXBF0ggvKQOTUE+zwnleGsqKuhvxMsAQit
	PrLnKNXF4BkwVSnoJh7vGr7avbc9wag+7IvxpGTe7Cue8zMlqHjwgJnNo2cBpBF9c1KovD/iA4tRv
	YCmqsnWi4wc7i+OZWVTEyU3WDbkAUZRAB92HZqCfIGYd/hG9Qz71b+w6hMQdOnglYoja3jsgY44t7
	cW68p4jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vySae-00000003UTC-3Jv3;
	Fri, 06 Mar 2026 10:39:28 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vySab-00000003URy-1F5o
	for linux-phy@lists.infradead.org;
	Fri, 06 Mar 2026 10:39:27 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-439a89b6fd0so5737773f8f.2
        for <linux-phy@lists.infradead.org>; Fri, 06 Mar 2026 02:39:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772793563; x=1773398363; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7b/j6Onzsjic24fOqjJouNjRnjy2n5wYSg/eGj1+zfI=;
        b=vvdmvd78K51ZuNK5Vd/xdDv9ajtKn55p8TwDkwOenvFbCfBYNvGcSxW79m3hvEgRP+
         wxVPCqA2fZ7xCQwUjbCY5vYbvEvTlucFJRekOzGVZaz3lwBuZNmnjF8IKVAXMJW3k+Cc
         iM90uiGE8wotbU9kpt502+7z/jFC5D+x2uUQY6hYS3IDLGZquIX5skzpGN1Y6OvmnOuc
         YgUZ5x/5GbmDjH7Gqh8M3uk/JG7F5jI42P0zbJoPAobhN5/FGzOBUXf2d/IdScSSzC5L
         6c3LFgHt/uepPHcDClTcy3N8sEO+VHtAmBz04ggCvwaZGqMHrqCdgZRACmkV0TnnV4SZ
         xk2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772793563; x=1773398363;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7b/j6Onzsjic24fOqjJouNjRnjy2n5wYSg/eGj1+zfI=;
        b=ER7i7ggqMpgV1+KqSFHI5kikpqkSwAMRT6FhyfnP0zuZYO8Tg1DvOsu7irpBwbpOpa
         9W8MTk+ywe/P+J9KG/3i66tDhg7861AxwBQTpbkpXLDXr51Ufp/fdOx8Ad3Uvp5xdPMG
         H1zjeWF4X29kQgc/k538e+YweSzwyfRrVclQ2HYEu6qFEHPf9SeAJIhNGM7ZSw/VIn7E
         grzRX2vhcJw4v7Ft5KPpuxSdySqGygvL7UnmAMH9qOt4CjozLuB+2y7iEKiD9XGGhhZF
         C2Dna3dx1H05q05NZJtovC6kGtRJ07+1/c2RwepqwwgbnGP4l50j6NtNxg0ULWAZ4F15
         S7dQ==
X-Gm-Message-State: AOJu0Yz45ntmFBuMVmR0FH8OMLh0DE73SXOP+4/6fpRGlW8TsHt/JQFP
	mXyakwUbLBtNSQB6XDzd+i4b2Amkl4M2DAf497Pk+Lb9RKA9i0I5PgACJX7pEWjR38w=
X-Gm-Gg: ATEYQzyV966ThaJrBFiGzFvJQH6G3CkGQzL7DK+27CMs8VNlyldbAwrf2skSNai8Z5L
	YqCd2xCCo/ia7wFdRvZodqBzjN8tvSYewnUJb0NQf64KH+A22NDVW+jr5A0LzFiEd/Sp/ov6+kz
	WPpX7z0JJ2XPINIwuWHazf0o+joyaBU+X5NorjlSxQMuZIm1xNeiEvhi9VeARcRxz2KPg+0j4L2
	wjR0RG/geJA4XW90Mfm5mParLNOEI7Ab5Ds5F31FVGrFDPoC+oJPjcWgb0s+Vv3fxD1MdzLyN2O
	qL+v1466rT5uyipiXFsyIvME91O0RaT/QBVLplVvMWpmHw+EC8qkAO006eQ8Xg5wQmXL/eM2qLo
	VpCwaoeIlnTcbsdZZ14Wx8JGAW96fJV+7k3rbJK/K4cbA/7IlgDE0FIrf3U5NDTv0sWYfbQV120
	th+z5q42GBjU/WpPBcFU3T2B5m816CVgzteOIhiiJZLYeLx6P+9mpDXurrDwswcvEQYTOmNr9/s
	keS
X-Received: by 2002:a05:6000:40dc:b0:439:ba4d:bf40 with SMTP id ffacd0b85a97d-439da891a22mr2826807f8f.43.1772793563121;
        Fri, 06 Mar 2026 02:39:23 -0800 (PST)
Received: from ?IPV6:2a01:e0a:106d:1080:cbfe:649:7f17:8b95? ([2a01:e0a:106d:1080:cbfe:649:7f17:8b95])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dae3a20fsm3184894f8f.28.2026.03.06.02.39.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2026 02:39:22 -0800 (PST)
Message-ID: <7710959a-5941-4094-a7a9-6c745ca73787@linaro.org>
Date: Fri, 6 Mar 2026 11:39:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [RESEND 1/1] phy: freescale: imx8qm-hsio: provide regmap names
To: Alexander Stein <alexander.stein@ew.tq-group.com>,
 Vinod Koul <vkoul@kernel.org>, Frank Li <Frank.Li@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Cc: linux-phy@lists.infradead.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260211144949.1128122-1-alexander.stein@ew.tq-group.com>
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
In-Reply-To: <20260211144949.1128122-1-alexander.stein@ew.tq-group.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260306_023925_357935_B8F61694 
X-CRM114-Status: GOOD (  13.01  )
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

On 2/11/26 15:49, Alexander Stein wrote:
> This driver uses multiple regmaps, which will causes name conflicts
> in debugfs like:
>    debugfs: '5f1a0000.phy' already exists in 'regmap'
> Fix this by using a dedicated regmap config for each resource, each
> having a dedicated regmap name.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
> Same as the one sent in December but with an updated CC list.
> 
>   drivers/phy/freescale/phy-fsl-imx8qm-hsio.c | 23 +++++++++++++++++----
>   1 file changed, 19 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/phy/freescale/phy-fsl-imx8qm-hsio.c b/drivers/phy/freescale/phy-fsl-imx8qm-hsio.c
> index 279b8ac7822df..4ab45c9f53dff 100644
> --- a/drivers/phy/freescale/phy-fsl-imx8qm-hsio.c
> +++ b/drivers/phy/freescale/phy-fsl-imx8qm-hsio.c
> @@ -107,7 +107,22 @@ static const char * const lan2_pcieb_clks[] = {"apb_pclk2", "pclk2", "ctl1_crr",
>   static const char * const lan2_sata_clks[] = {"pclk2", "epcs_tx", "epcs_rx",
>   					      "phy1_crr", "misc_crr"};
>   
> -static const struct regmap_config regmap_config = {
> +static const struct regmap_config regmap_phy_config = {
> +	.name = "phy",
> +	.reg_bits = 32,
> +	.val_bits = 32,
> +	.reg_stride = 4,
> +};
> +
> +static const struct regmap_config regmap_ctrl_config = {
> +	.name = "ctrl",
> +	.reg_bits = 32,
> +	.val_bits = 32,
> +	.reg_stride = 4,
> +};
> +
> +static const struct regmap_config regmap_misc_config = {
> +	.name = "misc",
>   	.reg_bits = 32,
>   	.val_bits = 32,
>   	.reg_stride = 4,
> @@ -562,19 +577,19 @@ static int imx_hsio_probe(struct platform_device *pdev)
>   		return PTR_ERR(priv->base);
>   
>   	off = devm_platform_ioremap_resource_byname(pdev, "phy");
> -	priv->phy = devm_regmap_init_mmio(dev, off, &regmap_config);
> +	priv->phy = devm_regmap_init_mmio(dev, off, &regmap_phy_config);
>   	if (IS_ERR(priv->phy))
>   		return dev_err_probe(dev, PTR_ERR(priv->phy),
>   				     "unable to find phy csr registers\n");
>   
>   	off = devm_platform_ioremap_resource_byname(pdev, "ctrl");
> -	priv->ctrl = devm_regmap_init_mmio(dev, off, &regmap_config);
> +	priv->ctrl = devm_regmap_init_mmio(dev, off, &regmap_ctrl_config);
>   	if (IS_ERR(priv->ctrl))
>   		return dev_err_probe(dev, PTR_ERR(priv->ctrl),
>   				     "unable to find ctrl csr registers\n");
>   
>   	off = devm_platform_ioremap_resource_byname(pdev, "misc");
> -	priv->misc = devm_regmap_init_mmio(dev, off, &regmap_config);
> +	priv->misc = devm_regmap_init_mmio(dev, off, &regmap_misc_config);
>   	if (IS_ERR(priv->misc))
>   		return dev_err_probe(dev, PTR_ERR(priv->misc),
>   				     "unable to find misc csr registers\n");

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
