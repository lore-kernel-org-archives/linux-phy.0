Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3306CF2598
	for <linux-phy@archiver.kernel.org>; Wed, 19 Nov 2025 08:22:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=49av36Gyv3jc/McjLcHKe0axKkf4mlCept4pdQAk2Uw=; b=o24U/yUvobFPnq
	Zw3oASPrb5p/GGSQFH2IF+y4zOrjLUSdDbDyfex3AGlfUKWwy57NnamtLIEXp6CHjtFahrGdssj//
	LJz3HVF19NclScD10AgmyBrKf1QVQky7D1/0wCbZ8wxNVm40tmTNFVWdYtVxWpEv2D1BWjLzU+fSz
	IpLYxY54VEV7/WPZ14jGmohTUqQtIcc95HmI+cDYWr9g4tdQ3z5ZJQE3KuPD5dnXaSdYETSNaCVhg
	dnHKCr0Nxk8OFWjlR2EtUPG5BqhsIvkei5k7JeXnsc1qa7BzcOBa6h0kiu4YWhct59dcQs4XYzBK9
	BUEJgOIwEwIxuo+3bWtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLdS3-00000002mlz-1yxH;
	Wed, 19 Nov 2025 08:22:07 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLdS0-00000002mlZ-1001
	for linux-phy@lists.infradead.org;
	Wed, 19 Nov 2025 08:22:05 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-42b2e9ac45aso4114258f8f.0
        for <linux-phy@lists.infradead.org>; Wed, 19 Nov 2025 00:22:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763540522; x=1764145322; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=prHnOWL3KZTfGMcuYs6Gvqk+F387R0tzV57ZZJJ4m2w=;
        b=DuLcw/6/qNlkyWDQp3IB2vaPsgbBuAQKSm+bOYbJ1rNspoA/XH1Fj0RtS7r3Al/fqw
         IpB/fj4xeIc2O9LXyp39sCO99sL7eCyuPuP1aTYuz8ffYcuEgGHdZ4r32+pOo1AeTI/w
         IZojQV2RkZurLwbL9bUX2qxJZaJ4t1d2FWv6Z40+sERRHY01tclc6xezg9GyioqIGlif
         uPW27dKsE5aM1JLSPVAH6sn1NegQ+EZosjUVgZIfjKKZ3JfaKDWWO6crl4rRSKmyTIFM
         l/soN+dPM0DPGGWMv7PhA0DAMM2Q1buHUnhsIPQtWMAfRXB39MSDvjdY5T5qSPSEZjOd
         PuMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763540522; x=1764145322;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=prHnOWL3KZTfGMcuYs6Gvqk+F387R0tzV57ZZJJ4m2w=;
        b=nhKPaP7X3y6gIb4AAAf5UEgzc9T+wpPmS2D/89EXQ9H8tmo90UZujAztmOUcVrZO6C
         yL538o66mrjICRdCUOAcMmUZ/wRk6+bl4UTr/9LLifDboz46AON9U1J85GcQ3LrPAW8a
         Dt3cBFetk4mAIh2sh6cKE2+BvTYv6y/m3vO+y60wbK3W8w8XA5Vlh+CnD5efeAW2CT7i
         Ax68bzS5w2tvkseaGINfKhmQL/QX9vbKW7dUYvHgZYQDLlGuuR3FiIqrPwUoF90DFM+H
         lkhhNmlU61GqLUhkrDlhlkBU+rMb2xrP7D83/ImrtbM25U7F4++BwTlU1axd/ZDTSaY+
         Ltqw==
X-Forwarded-Encrypted: i=1; AJvYcCUgTqaWZdRb6lIa3OmIxjYOUn12i3ngr3SKhAp6wVOQV0VJqFwaoaCH+vHU4EQWsKWuA3Hh1U3wOjM=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywoe0LpD0i3EjmeLzcIoK0IwL+z+NW/D2XRZx2ag+JpGh9/DxKp
	3+/MozbvfBy5qlKd8aN72KFDCeBlrjM2yampz3NYw+c4ly+f93LD5FeqgGNcvH089Eg=
X-Gm-Gg: ASbGncuGSx17NddPEaqBiLj4r6Ga/Y1QB6pqqUJKZIBMwCTalBPJ00vg6w97i/T39mL
	hTVNsJ3OfhDrCHnE9Rh18yvTXuFnR2nx9KmqnQX26QPqtYCHWmIlnuYOQvEqZ0rNDJ3h6zisKaS
	x8A773Lbp2Nz6Jxjx87hxGQS/VuFAmewyKJqDjeq/O8xg2IGdVSqiRD1/WrINFOTggLBdzfwJPs
	XH7EbJ14etAqiInD7vOFauc2Yr2N/HTuqS0RMHcBXuAF+dyn/bVB2o7hr/fGVvJdqH/MZdDCc+S
	b9dvZpkmGXE0izIJlvCRCFEos8wv3U8OCQc7Ps9u73KUR5Mu5Wj1ymTqJGgsZX+lxg4WUgpkj9N
	KeP8vsry1H/ji2FKSvkqITPllFbdo/+U9LEDCdvocxZ1hvpWNbiE4p8EoJPwMLZ5BFZqAefn51W
	XA0FgcKo2WqJ1udkTftn7xrO1K4Fa04K3hqggeFGV1ahtF9DkP5vTg0uHNkXZaYEo29zV7k2ANZ
	Q==
X-Google-Smtp-Source: AGHT+IESR3q8PRMdgehT41zzmTrRE4kFNljWLOSoMsF6eJXC2oWLRwLzbqk1zj89EkKHUL3P6S7vaw==
X-Received: by 2002:a05:6000:4210:b0:42b:40b5:e64c with SMTP id ffacd0b85a97d-42b5938ab12mr17657397f8f.30.1763540522201;
        Wed, 19 Nov 2025 00:22:02 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:94e4:fa88:414d:e1ad? ([2a01:e0a:3d9:2080:94e4:fa88:414d:e1ad])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f203afsm37294740f8f.39.2025.11.19.00.22.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Nov 2025 00:22:01 -0800 (PST)
Message-ID: <84e53d61-ef32-4f15-aa51-132acb83c52d@linaro.org>
Date: Wed, 19 Nov 2025 09:22:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] phy: qcom: edp: Make the number of clocks flexible
To: Abel Vesa <abel.vesa@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Sibi Sankar <quic_sibis@quicinc.com>,
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
References: <20250909-phy-qcom-edp-add-missing-refclk-v3-0-4ec55a0512ab@linaro.org>
 <20250909-phy-qcom-edp-add-missing-refclk-v3-2-4ec55a0512ab@linaro.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
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
In-Reply-To: <20250909-phy-qcom-edp-add-missing-refclk-v3-2-4ec55a0512ab@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_002204_323886_E1E83386 
X-CRM114-Status: GOOD (  21.71  )
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

On 9/9/25 09:33, Abel Vesa wrote:
> On X Elite, the DP PHY needs another clock called ref, while all other
> platforms do not.
> 
> The current X Elite devices supported upstream work fine without this
> clock, because the boot firmware leaves this clock enabled. But we should
> not rely on that. Also, even though this change breaks the ABI, it is
> needed in order to make the driver disables this clock along with the
> other ones, for a proper bring-down of the entire PHY.
> 
> So in order to handle these clocks on different platforms, make the driver
> get all the clocks regardless of how many there are provided.
> 
> Cc: stable@vger.kernel.org # v6.10
> Fixes: db83c107dc29 ("phy: qcom: edp: Add v6 specific ops and X1E80100 platform support")
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-edp.c | 16 ++++++++--------
>   1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> index f1b51018683d51df064f60440864c6031638670c..ca9bb9d70e29e1a132bd499fb9f74b5837acf45b 100644
> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> @@ -103,7 +103,9 @@ struct qcom_edp {
>   
>   	struct phy_configure_opts_dp dp_opts;
>   
> -	struct clk_bulk_data clks[2];
> +	struct clk_bulk_data *clks;
> +	int num_clks;
> +
>   	struct regulator_bulk_data supplies[2];
>   
>   	bool is_edp;
> @@ -218,7 +220,7 @@ static int qcom_edp_phy_init(struct phy *phy)
>   	if (ret)
>   		return ret;
>   
> -	ret = clk_bulk_prepare_enable(ARRAY_SIZE(edp->clks), edp->clks);
> +	ret = clk_bulk_prepare_enable(edp->num_clks, edp->clks);
>   	if (ret)
>   		goto out_disable_supplies;
>   
> @@ -885,7 +887,7 @@ static int qcom_edp_phy_exit(struct phy *phy)
>   {
>   	struct qcom_edp *edp = phy_get_drvdata(phy);
>   
> -	clk_bulk_disable_unprepare(ARRAY_SIZE(edp->clks), edp->clks);
> +	clk_bulk_disable_unprepare(edp->num_clks, edp->clks);
>   	regulator_bulk_disable(ARRAY_SIZE(edp->supplies), edp->supplies);
>   
>   	return 0;
> @@ -1092,11 +1094,9 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
>   	if (IS_ERR(edp->pll))
>   		return PTR_ERR(edp->pll);
>   
> -	edp->clks[0].id = "aux";
> -	edp->clks[1].id = "cfg_ahb";
> -	ret = devm_clk_bulk_get(dev, ARRAY_SIZE(edp->clks), edp->clks);
> -	if (ret)
> -		return ret;
> +	edp->num_clks = devm_clk_bulk_get_all(dev, &edp->clks);
> +	if (edp->num_clks < 0)
> +		return dev_err_probe(dev, edp->num_clks, "failed to parse clocks\n");
>   
>   	edp->supplies[0].supply = "vdda-phy";
>   	edp->supplies[1].supply = "vdda-pll";
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
