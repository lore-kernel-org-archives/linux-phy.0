Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E80DACF2597
	for <linux-phy@archiver.kernel.org>; Wed, 19 Nov 2025 08:41:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:Subject:From:
	MIME-Version:Date:Message-ID:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y6uRDfy4+z1eGZSeRsx+Ud9Gv9kcyTeZr3fqgXyUoUw=; b=J9BvWgzATpXam5NQVBl3JK9+j7
	8RiNAjeZ//xGBte631oiSuwAQfmVXbJBiLyB/KMqtWJw/QAtfTgpYR9VUVT37yn991W68xDO7iSPA
	SoQIYFClbUMOhbxhIv5Zi3Pg2NRWCp3pdzdXpcebSKd+utigfYDlQQz43VhauKhfJnz31stT4xRDg
	HnJnZpHwxAwXqswixmPlu0MvpLGIT9I20VsCy6Aonr8IrKAxyMEXVGsDMzL6A130yjWVRE6zrwttJ
	ZQyGvxznzHK2zpwToMrNRWLPg53bIKV3WZXRkHzLR3yNTpixgAYEnOa+VtarAGYkaTBIXfsdCvr8V
	X94ZqWTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLdl7-00000002oNC-2zhx;
	Wed, 19 Nov 2025 08:41:49 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLdl5-00000002oLP-0Ne3
	for linux-phy@lists.infradead.org;
	Wed, 19 Nov 2025 08:41:48 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-477a219db05so22075375e9.2
        for <linux-phy@lists.infradead.org>; Wed, 19 Nov 2025 00:41:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763541705; x=1764146505; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B38cCNHEIiFRoBT5tfPUwxAQfE53n8AjY5vTLhKGZRg=;
        b=get6bBFXOlYJ7NLJcvwZMgAh8pue7S6b8vhoDwsZhecIoAO6InKobMlm6+3nZ4x8az
         CIs9Fq0NmzOcDz7IfAr2UhDNIykulROALJ8xEfX0VUZuNk9n0Km3PS2Cr+dXeXcav7ZK
         O7CSrkgP0uHUhZB79Qzhmi5WW6c+qUkLKrRvSzQyP4Rf946uL2vcsEx/7T2MNpqu0zIv
         PsoDESL49ZrSxPD0fd+QtJjM2mFBsF+1wC5Az7unBTKqWl+VNHZ+SsUnPz3DoS2v+5v8
         LG1dNyJZYf9iD21919wvdk1SzUchLSidPlN8dpjJ7SnsrXblqjS8xxO3/DETjmISxvMv
         lfBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763541705; x=1764146505;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B38cCNHEIiFRoBT5tfPUwxAQfE53n8AjY5vTLhKGZRg=;
        b=kO5E5UjtFh1X4DsaaSAg8BUBICTzW2hvMn/YdSviw8MxcAvA9h4UdbIquZ0eIPjlTw
         WItwxkMrX+KrD7p8kkBgEb0YUTgEgEfMTGgbBD250bo/eGQ6DR0/HmCPJ0OW1z7eWUbp
         Wt1KWpVn0QnNUGQRFu8YGv3XMtcDjbzs6JXplr72tOMEB46pdyvrbeldJ8d9eOVMlA88
         eyHjjyu54OA38GVV7YYbStMWm7suNHeAHjF26/PWkqVHCv26g6DD/VjlqbfAfvvNuDCx
         xjQcTRCJgqpXsJUmrQRaIhyAWx32ub4xHW92ynvYvDqvqEalIAPM8+v7Nc8rOdxXs3Q8
         nGyA==
X-Forwarded-Encrypted: i=1; AJvYcCWFsxfORg6NzrR1BOOWxR4n1I3flBNPbZoqjVtm6jZboEnwGDBlodbqdP2GjFv/pGidvJ3w/H+DqQg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwquU1evNDulrc7tOACUjdxCXPPJ1OGwQxm0K6LCMJdcEAz8VUq
	0RO3mU/l8HJVf0ZGz0ayIF1ruaefbsjQ1As2fpK4WmKczu5bP7QrZYHZNXCf09cIV/i4cubHdke
	Zomqf
X-Gm-Gg: ASbGncvZVIdfku/gDukojl/gekxmi7JuK5aveaES4RCkKBilMr0HwbLoepSUOAr9uqP
	vwqfxS1LFtUBb1TJZCZ73+vJkcC4M4OdKhVmvFjh2w0L0WBYSqjuV9ejvujoc5RjVdp+W9qYqua
	Mq8hQT+52h+8T1K+mAHV6AqopVzn59+TNpA/hsSm5UsDeItnC7xDF71Qxz0HhPqep4DLwOiEbEi
	u/VMoIj1sdz68ZfgYNtzoub34kYDTNpRyRoU7+sHP57hRbkQAtFtEXjkjpggd4qmgMqjq2PHdpw
	TYFq59Ew/Q8zmqtnjRFRjDb9hljqpGru0wR/kvIPn/7l11RXHSt7u4VeUuRJuVBTW0Vtb6ZSn2M
	HOJtv0s5lwCR2ZYsTCd4ncKLCxjjejLcJRWJrGyL1W77XKlurlHkzRZGFhsvlkJ1XStoQ65am92
	+ZuqJftfyvmhFV70qrDy+fNmp7L573TPGNXhRYsDPaoRWCMt0di2cAc1pnn4zn0g5pVOLknY765
	w==
X-Google-Smtp-Source: AGHT+IE7QRxp9Ipzy2DFnLBSlO7Q8Aq7iSpY4noVScdDKaIbMEMvRmchKALFaeoev2EnwQ3DjU6Nzg==
X-Received: by 2002:a05:600c:630d:b0:471:1765:839c with SMTP id 5b1f17b1804b1-4778fea2bf7mr165071695e9.20.1763541705081;
        Wed, 19 Nov 2025 00:41:45 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:94e4:fa88:414d:e1ad? ([2a01:e0a:3d9:2080:94e4:fa88:414d:e1ad])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477a9e051d8sm35832865e9.5.2025.11.19.00.41.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Nov 2025 00:41:44 -0800 (PST)
Message-ID: <615111b0-b2ad-4ace-b9b0-70e92389db83@linaro.org>
Date: Wed, 19 Nov 2025 09:41:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH] phy: qcom-qmp-combo: Use regulator_bulk_data with
 init_load_uA for regulator setup
To: Faisal Hassan <faisal.hassan@oss.qualcomm.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Johan Hovold <johan+linaro@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Wesley Cheng <quic_wcheng@quicinc.com>,
 Konrad Dybcio <quic_kdybcio@quicinc.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250922135901.2067-1-faisal.hassan@oss.qualcomm.com>
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
In-Reply-To: <20250922135901.2067-1-faisal.hassan@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_004147_171528_D9069F4C 
X-CRM114-Status: GOOD (  23.11  )
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

On 9/22/25 15:59, Faisal Hassan wrote:
> Replace the custom qmp_regulator_data structure with the standard
> regulator_bulk_data and use the init_load_uA field to set regulator
> load during initialization.
> 
> This change simplifies the regulator setup by removing manual
> allocation and load configuration logic, and leverages
> devm_regulator_bulk_get_const() to automatically apply load settings
> before enabling regulators.
> 
> Signed-off-by: Faisal Hassan <faisal.hassan@oss.qualcomm.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 49 +++--------------------
>   1 file changed, 6 insertions(+), 43 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index f07d097b129f..97262ed63700 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -1636,14 +1636,9 @@ static const struct qmp_phy_init_tbl x1e80100_usb43dp_pcs_usb_tbl[] = {
>   };
>   
>   /* list of regulators */
> -struct qmp_regulator_data {
> -	const char *name;
> -	unsigned int enable_load;
> -};
> -
> -static struct qmp_regulator_data qmp_phy_vreg_l[] = {
> -	{ .name = "vdda-phy", .enable_load = 21800 },
> -	{ .name = "vdda-pll", .enable_load = 36000 },
> +static struct regulator_bulk_data qmp_phy_vreg_l[] = {
> +	{ .supply = "vdda-phy", .init_load_uA = 21800, },
> +	{ .supply = "vdda-pll", .init_load_uA = 36000, },
>   };
>   
>   static const u8 qmp_dp_v3_pre_emphasis_hbr3_hbr2[4][4] = {
> @@ -1801,7 +1796,7 @@ struct qmp_phy_cfg {
>   	const char * const *reset_list;
>   	int num_resets;
>   	/* regulators to be requested */
> -	const struct qmp_regulator_data *vreg_list;
> +	const struct regulator_bulk_data *vreg_list;
>   	int num_vregs;
>   
>   	/* array of registers with different offsets */
> @@ -3403,39 +3398,6 @@ static const struct dev_pm_ops qmp_combo_pm_ops = {
>   			   qmp_combo_runtime_resume, NULL)
>   };
>   
> -static int qmp_combo_vreg_init(struct qmp_combo *qmp)
> -{
> -	const struct qmp_phy_cfg *cfg = qmp->cfg;
> -	struct device *dev = qmp->dev;
> -	int num = cfg->num_vregs;
> -	int ret, i;
> -
> -	qmp->vregs = devm_kcalloc(dev, num, sizeof(*qmp->vregs), GFP_KERNEL);
> -	if (!qmp->vregs)
> -		return -ENOMEM;
> -
> -	for (i = 0; i < num; i++)
> -		qmp->vregs[i].supply = cfg->vreg_list[i].name;
> -
> -	ret = devm_regulator_bulk_get(dev, num, qmp->vregs);
> -	if (ret) {
> -		dev_err(dev, "failed at devm_regulator_bulk_get\n");
> -		return ret;
> -	}
> -
> -	for (i = 0; i < num; i++) {
> -		ret = regulator_set_load(qmp->vregs[i].consumer,
> -					cfg->vreg_list[i].enable_load);
> -		if (ret) {
> -			dev_err(dev, "failed to set load at %s\n",
> -				qmp->vregs[i].supply);
> -			return ret;
> -		}
> -	}
> -
> -	return 0;
> -}
> -
>   static int qmp_combo_reset_init(struct qmp_combo *qmp)
>   {
>   	const struct qmp_phy_cfg *cfg = qmp->cfg;
> @@ -4003,7 +3965,8 @@ static int qmp_combo_probe(struct platform_device *pdev)
>   	if (ret)
>   		return ret;
>   
> -	ret = qmp_combo_vreg_init(qmp);
> +	ret = devm_regulator_bulk_get_const(dev, qmp->cfg->num_vregs,
> +					qmp->cfg->vreg_list, &qmp->vregs);
>   	if (ret)
>   		return ret;
>   

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
