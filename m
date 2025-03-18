Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A751FC282EC
	for <linux-phy@archiver.kernel.org>; Tue, 18 Mar 2025 15:13:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mSie3drFvIy5RGSGK6rwulpq9+SjAiSjIjsO4Qg9zcM=; b=xh9SC3ufM0WI1GcK7Uwe4z9cGH
	eWEmYynyenwY5L/K1I4/D+8pdxPB7OZEwYc5UOeEs1gn/6X443TyM/dhn174sdnDDu2qlQ7wL31Ym
	eZfemwl6YT8pA7fmTZuOXh1gLQ0BjZw/ri8qoDIUpbTV+11lhA5htdTvvHcclwF/X8FQTRkly8XUD
	4kQhr+HJTfmj23+aGDSM7qahhp8U3499VsNPr28Egc4cG69CoyMWclQJg0uDtOsPzvaz5B8WwTzZF
	6MSC9nLs2iYod5PHTsdOQP6GkXGvXocqmBmpSCI8X/T7wjARjApCnc26n2P25TreZsfpNvmsuTSVm
	6gBuWXNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuYdS-00000006Jhj-0mCv;
	Tue, 18 Mar 2025 15:13:42 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuYdP-00000006JgU-2pdB
	for linux-phy@lists.infradead.org;
	Tue, 18 Mar 2025 15:13:40 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-3965c995151so3835667f8f.1
        for <linux-phy@lists.infradead.org>; Tue, 18 Mar 2025 08:13:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742310818; x=1742915618; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5yUDZJP2SM0YgcV/93zcQ6kDj56FosP1rr3RyiKi/9I=;
        b=zFgJYFTBWoEK+Q9dn1M0dGI4U5fi5CILTHQ08UXhKLlWJTR37AkE2VZOqouRLZ6V+V
         CheNjYe7A5XSXqN3nc3bKDNzlTJ7FPLpzlU4JGvXDtpZ7iQvaKFzDJEzHW9yWzBJ5L25
         N435ZAkiqkbvd9p5IfQCV6z8VYKPBfm+ipmppkhHJgbLZr584qekLfZzXI7seVZRiIiV
         1KabVh8BusoM/vcIV83iAdvEY1R6tfdaDjfnG/czdf9Y1L9t3NtOu3C+v3sS7pKRpi1A
         TbvrHxucR9eQ3E78Ett5K2Jhlp3YUthC4zE3NWec7AmEOxwTbZbn1eBm+kDDmXmkhjH8
         kjZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742310818; x=1742915618;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=5yUDZJP2SM0YgcV/93zcQ6kDj56FosP1rr3RyiKi/9I=;
        b=HhDH0pNLjnQI0xDespHz5wWu5aSo/pxpCrAUuhmlbie+bX8z3JYAqzF+6dTF42Wdkl
         zNa5GZS5U5nWnA/86fUup7yb5tUv9OXppvIhcr5k6S+yZAZRfCrL/YE7GFCiZ45CCxih
         J9SW01mNQD+R80ZsdG4fnFNAmjYvY6UqTvBZ37roOnX1L3lfbTmnoYHI5OrYUpxwqRFP
         aPSGyixk5eqWhlED9g9A5iaxrP3DINvOMyWQJomxcmVV2ktOL3i8fOwW3rb5xA7PcOqM
         nDHYroz+ujtGBedTjJzSqdi1+MFg2qgd+/jvpwjMkr4AT7LEM1yzLvsx3k1QHSnKTyBu
         2T9A==
X-Forwarded-Encrypted: i=1; AJvYcCVXfnfCUlFOOPqpq4UsU1ZQpy4909DjZEx4WXiJ5aiYkc6+m8aiCSptCVLi5yinMRobVYp3JMYapFs=@lists.infradead.org
X-Gm-Message-State: AOJu0YyH1bJPIlr1c4kCfdFM8mJ0SI2Q5qGXI6PAI0gMrd19tbO8a+/0
	dfHxkRieF6VdM9jRDNZQww/N3WTG52RHHnbieojcGIwq22t3wmfy+CznmZTYYdM=
X-Gm-Gg: ASbGncvcp60UM9Zbx0aPgw/a6wFHlZnNM0qTxb0BPsv//YPesug25c2g2i4kdJN1Wsw
	CumHxlQ7OwbebXaIk7aZkvMGZfJdpEdcDnD8N0kWKMZP9HrICIFS34VbC4qHvU0XnD3EqAMcJrZ
	ve97MkZB0VTHMp9mOMPg8rqRraT19Y3ObWDbV1J2apOzjt0xHMqYKMVonh39FWKIOMkb5a7AwLm
	ei/JQOZNOzUJo+43DM7TpeHg0hdd+IGzB3J7uBR3WzOIdPtQMTZZPBJTnKWscT5LVeNvxydhXrN
	2rZPAxC3nvfECUILNsWT6fvHwdXE7TRPw0Qunk6F0vVyekDB8ETNOzBfr76gsCY2I3d622pe+JO
	t1MOF9TUAMySnyjBoLJv2gw==
X-Google-Smtp-Source: AGHT+IGUjoIGYDas8gkpp8G+lgjRxCUGyXnBQnaHKKHqfPTXpCc+7ovIZBRp+DbAz/aaNbbshlGP7w==
X-Received: by 2002:adf:9b97:0:b0:399:6d53:68d9 with SMTP id ffacd0b85a97d-3996d536aabmr3166784f8f.38.1742310817752;
        Tue, 18 Mar 2025 08:13:37 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:eac1:f2d4:84a8:c5ff? ([2a01:e0a:3d9:2080:eac1:f2d4:84a8:c5ff])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-395cb40fab8sm18965595f8f.63.2025.03.18.08.13.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Mar 2025 08:13:37 -0700 (PDT)
Message-ID: <c2d692a4-826e-4186-955a-41286c99de3f@linaro.org>
Date: Tue, 18 Mar 2025 16:13:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH V2 3/6] phy: qcom-qmp-ufs: Refactor UFS PHY reset
To: Nitin Rawat <quic_nitirawa@quicinc.com>, vkoul@kernel.org,
 kishon@kernel.org, manivannan.sadhasivam@linaro.org,
 James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
 konrad.dybcio@oss.qualcomm.com
Cc: quic_rdwivedi@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org
References: <20250318144944.19749-1-quic_nitirawa@quicinc.com>
 <20250318144944.19749-4-quic_nitirawa@quicinc.com>
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
In-Reply-To: <20250318144944.19749-4-quic_nitirawa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_081339_727550_2052F0E5 
X-CRM114-Status: GOOD (  22.15  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 18/03/2025 15:49, Nitin Rawat wrote:
> Refactor the UFS PHY reset handling to parse the reset logic only once
> during probe, instead of every resume.
> 
> Move the UFS PHY reset parsing logic from qmp_phy_power_on to
> qmp_ufs_probe to avoid unnecessary parsing during resume.
> 
> Co-developed-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
> Signed-off-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 104 ++++++++++++------------
>   1 file changed, 50 insertions(+), 54 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index 0089ee80f852..3a80c2c110d2 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -1757,32 +1757,6 @@ static void qmp_ufs_init_registers(struct qmp_ufs *qmp, const struct qmp_phy_cfg
>   	qmp_ufs_init_all(qmp, &cfg->tbls_hs_b);
>   }
> 
> -static int qmp_ufs_com_init(struct qmp_ufs *qmp)
> -{
> -	const struct qmp_phy_cfg *cfg = qmp->cfg;
> -	void __iomem *pcs = qmp->pcs;
> -	int ret;
> -
> -	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
> -	if (ret) {
> -		dev_err(qmp->dev, "failed to enable regulators, err=%d\n", ret);
> -		return ret;
> -	}
> -
> -	ret = clk_bulk_prepare_enable(qmp->num_clks, qmp->clks);
> -	if (ret)
> -		goto err_disable_regulators;
> -
> -	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRDN);
> -
> -	return 0;
> -
> -err_disable_regulators:
> -	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
> -
> -	return ret;
> -}
> -
>   static int qmp_ufs_com_exit(struct qmp_ufs *qmp)
>   {
>   	const struct qmp_phy_cfg *cfg = qmp->cfg;
> @@ -1800,41 +1774,27 @@ static int qmp_ufs_power_on(struct phy *phy)
>   {
>   	struct qmp_ufs *qmp = phy_get_drvdata(phy);
>   	const struct qmp_phy_cfg *cfg = qmp->cfg;
> +	void __iomem *pcs = qmp->pcs;
>   	int ret;
> -	dev_vdbg(qmp->dev, "Initializing QMP phy\n");
> -
> -	if (cfg->no_pcs_sw_reset) {
> -		/*
> -		 * Get UFS reset, which is delayed until now to avoid a
> -		 * circular dependency where UFS needs its PHY, but the PHY
> -		 * needs this UFS reset.
> -		 */
> -		if (!qmp->ufs_reset) {
> -			qmp->ufs_reset =
> -				devm_reset_control_get_exclusive(qmp->dev,
> -								 "ufsphy");
> -
> -			if (IS_ERR(qmp->ufs_reset)) {
> -				ret = PTR_ERR(qmp->ufs_reset);
> -				dev_err(qmp->dev,
> -					"failed to get UFS reset: %d\n",
> -					ret);
> -
> -				qmp->ufs_reset = NULL;
> -				return ret;
> -			}
> -		}
> 
> -		ret = reset_control_assert(qmp->ufs_reset);
> -		if (ret)
> -			return ret;
> +	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
> +	if (ret) {
> +		dev_err(qmp->dev, "failed to enable regulators, err=%d\n", ret);
> +		return ret;
>   	}
> 
> -	ret = qmp_ufs_com_init(qmp);
> +	ret = clk_bulk_prepare_enable(qmp->num_clks, qmp->clks);
>   	if (ret)
> -		return ret;
> +		goto err_disable_regulators;
> +
> +	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRDN);
> 
>   	return 0;
> +
> +err_disable_regulators:
> +	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
> +
> +	return ret;
>   }

This change is too fuzzy, please introduce qmp_ufs_get_phy_reset()
in a patch, move qmp_ufs_com_init() inline in qmp_ufs_power_on()
in a second time, and finally move reset_control_assert() to
calibrate in a third patch (and explain why).

Thanks,
Neil

> 
>   static int qmp_ufs_phy_calibrate(struct phy *phy)
> @@ -1846,6 +1806,10 @@ static int qmp_ufs_phy_calibrate(struct phy *phy)
>   	unsigned int val;
>   	int ret;
> 
> +	ret = reset_control_assert(qmp->ufs_reset);
> +	if (ret)
> +		return ret;
> +
>   	qmp_ufs_init_registers(qmp, cfg);
> 
>   	ret = reset_control_deassert(qmp->ufs_reset);
> @@ -2088,6 +2052,34 @@ static int qmp_ufs_parse_dt(struct qmp_ufs *qmp)
>   	return 0;
>   }
> 
> +static int qmp_ufs_get_phy_reset(struct qmp_ufs *qmp)
> +{
> +	const struct qmp_phy_cfg *cfg = qmp->cfg;
> +	int ret;
> +
> +	if (!cfg->no_pcs_sw_reset)
> +		return 0;
> +
> +	/*
> +	 * Get UFS reset, which is delayed until now to avoid a
> +	 * circular dependency where UFS needs its PHY, but the PHY
> +	 * needs this UFS reset.
> +	 */
> +	if (!qmp->ufs_reset) {
> +		qmp->ufs_reset =
> +		devm_reset_control_get_exclusive(qmp->dev, "ufsphy");
> +
> +		if (IS_ERR(qmp->ufs_reset)) {
> +			ret = PTR_ERR(qmp->ufs_reset);
> +			dev_err(qmp->dev, "failed to get PHY reset: %d\n", ret);
> +			qmp->ufs_reset = NULL;
> +			return ret;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
>   static int qmp_ufs_probe(struct platform_device *pdev)
>   {
>   	struct device *dev = &pdev->dev;
> @@ -2114,6 +2106,10 @@ static int qmp_ufs_probe(struct platform_device *pdev)
>   	if (ret)
>   		return ret;
> 
> +	ret = qmp_ufs_get_phy_reset(qmp);
> +	if (ret)
> +		return ret;
> +
>   	/* Check for legacy binding with child node. */
>   	np = of_get_next_available_child(dev->of_node, NULL);
>   	if (np) {
> --
> 2.48.1
> 
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
