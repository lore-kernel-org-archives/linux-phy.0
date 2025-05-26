Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91414C54FB3
	for <linux-phy@archiver.kernel.org>; Mon, 26 May 2025 07:49:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rFWwaOkrEAURsnAwxMAMq1hGtK3/iE7PXRpNbYHBX20=; b=vGcU0JhHt537MC3w84cy5RR38f
	io/3sVvn5KFRllXvlyUoCEbbNNx6FtL384vRRFvbLIfy2UwmEfbe8tYLemC6VdLRB+LJMkZLfCi9H
	8JTCmMzLB1BpSOxvo2Y1omvICoYbrx6XXUem00IpHC6R4IFhSqVdIE7SiX3c211vgncXCvpbVFxMN
	eze3tVMnfQZi64zA4N2tBxvMdk6xwzfFTye3KzltY1ApH63Fmno6dfeouFrmEcbVP+W6hooNDhUlU
	CRqwwIhjnNRqwqeXe2Fwv9+i8wzFdTMT3D6qSlLxpJbmy00IvB/PEixtsCMWmk163IIpOEzxwYji+
	HmvEnRMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJSaX-00000008JhB-1Rp8;
	Mon, 26 May 2025 07:49:37 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJSaU-00000008JfZ-3fFT
	for linux-phy@lists.infradead.org;
	Mon, 26 May 2025 07:49:36 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-3a374f727dbso1779964f8f.0
        for <linux-phy@lists.infradead.org>; Mon, 26 May 2025 00:49:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748245773; x=1748850573; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uRUTU1NetmsFrFoWWpkcXRiBW9YN8yoQeAXDLuhOFNA=;
        b=d4VFWN+TFVRpTFGF6bsMcgcrU5PgUAJ9/wv1wS4nHCpUmcwB+nlgR+XfntOVLlwRLA
         XOt6j9EpqHmWoujO6pY1ZxtDrS0RiuLSDWIIXYI/cLcXjDMvpmY88O8BUHTGXaaVFea7
         EHRfh6hvUU5ZOaLFZ0Te5zn4dIQpqCCpx5oC2VwsSy98wtUa1zmAFsqMlq9I32OT90h6
         mbreH2Ifv5W/b72GcExuIHytYF/RxYQhqK8yDXfej6O+4TV8v9IVO/mArwLVsWp+JU3K
         sOAoXJExsNNKnhmmHcDf+pP4j0ZCqmdiAce6MCqsn9aGJ9nHv8pxZNgZzZmnU8hKMpeO
         1qxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748245773; x=1748850573;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=uRUTU1NetmsFrFoWWpkcXRiBW9YN8yoQeAXDLuhOFNA=;
        b=i8BYpAnBPzicaReEU+tFZuUAdC06dfo3rCPjASMMxwZYFyPHwayEpIEQg9K4YgJU+j
         J0ISNLN+WUuAzIMO7GVAovTa47fJXN+GREZz3q1WwdsvXfN0LaGEcejHGV5THqOCG3OA
         9QUj7d7K6tujIafG5hgbECrx2NbZ6dWo/PgsZAM8x/ZY38L2B3+OWRlGh/PpCvcbl5A2
         si8xM550DHIyKOdeBEWpGzegBEFp8xhJnFGV4h3a95s5etzPzTGhXMjQbD9qsRmpiFf/
         kE9r3rFrwyMoUli2y//sz9XRVm6nQQxnmSjkS5TUERI++QqiaBkKIDTjx9jPnlL8FIe7
         c1RQ==
X-Forwarded-Encrypted: i=1; AJvYcCWD6M0Y4diyqT24Hhr/uHrvsZd3Ge9nKB0plrGq9k8pfRsccMwzZVQSTdHdyZSvFnrR3zRCpluJG2g=@lists.infradead.org
X-Gm-Message-State: AOJu0YxbAwWVIq5Ot1i2Us1t5EL5OADm0FIpG2IWmVRFPB/PYG+N7FSi
	FckhJewZ3GBsEc3l3mM9qu1sMcVsVPWGQVIDjXUGGGPmx8MSPqVy58ELFgAoQwWx+TY=
X-Gm-Gg: ASbGnctdGElCbUFLgEzsAep5hXwKkg0H9ECAFLoi8n8PsvNMm0cwjybbEFLThGhS7OT
	5InMGb4/cpyMs9DBQEJ8XDxHNXAE+kkkJYZ2CgRuslYXJWjcjnMId6ISx/azoQ12vyrQtXKcSGP
	yw3h2tqh5wwJWZMuvuYY6xHe7pNux4oRfgLeMpRLIjcdnLaq6Su6ANxVLXStxbyrRPAjSO6UZOv
	VNbmOdFnMLBQrIeN5YjJdJ5nfpm3SI2WAiWmDjIk6L/x/IrRFY+NyD26LBgDb5cAUraJ4T1vW7A
	gRxo2IYwIhUixcSs6GLP4Xb95ibQbSh5SLQUiL8FYs1N6NKVliY2bGGvPYZkzvMD7r2WerwZrn4
	uHadj6lXN1T0ud4OJTrfWU0PueTiY
X-Google-Smtp-Source: AGHT+IGY0fzSwOzvu/t5G721cP6pa2lSOTELMsSGevJGpoz3wocXRKDBG0SQoxtENkHGJLPrEEcAkg==
X-Received: by 2002:a05:6000:258a:b0:39c:30cd:352c with SMTP id ffacd0b85a97d-3a4cb43dbe5mr6053731f8f.8.1748245773190;
        Mon, 26 May 2025 00:49:33 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:485c:38a6:3d01:f4a4? ([2a01:e0a:3d9:2080:485c:38a6:3d01:f4a4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f78aeb7fsm224254685e9.26.2025.05.26.00.49.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 May 2025 00:49:32 -0700 (PDT)
Message-ID: <848ada30-37d7-4890-834a-4de91b215ff0@linaro.org>
Date: Mon, 26 May 2025 09:49:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 2/7] phy: phy-snps-eusb2: fix repeater imbalance on
 phy_init() failure
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
 Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
 Abel Vesa <abel.vesa@linaro.org>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250523084839.11015-1-johan+linaro@kernel.org>
 <20250523084839.11015-3-johan+linaro@kernel.org>
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
In-Reply-To: <20250523084839.11015-3-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_004934_924141_74F05988 
X-CRM114-Status: GOOD (  12.83  )
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

On 23/05/2025 10:48, Johan Hovold wrote:
> Make sure to disable the repeater PHY also on phy_init() failure.
> 
> Fixes: 3584f6392f09 ("phy: qcom: phy-qcom-snps-eusb2: Add support for eUSB2 repeater")
> Cc: Abel Vesa <abel.vesa@linaro.org>
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/phy-snps-eusb2.c | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
> index 19af3f99692c..a799c3d2bcfb 100644
> --- a/drivers/phy/phy-snps-eusb2.c
> +++ b/drivers/phy/phy-snps-eusb2.c
> @@ -468,7 +468,7 @@ static int snps_eusb2_hsphy_init(struct phy *p)
>   	ret = clk_bulk_prepare_enable(phy->data->num_clks, phy->clks);
>   	if (ret) {
>   		dev_err(&p->dev, "failed to enable ref clock, %d\n", ret);
> -		goto disable_vreg;
> +		goto exit_repeater;
>   	}
>   
>   	ret = reset_control_assert(phy->phy_reset);
> @@ -493,7 +493,8 @@ static int snps_eusb2_hsphy_init(struct phy *p)
>   
>   disable_ref_clk:
>   	clk_bulk_disable_unprepare(phy->data->num_clks, phy->clks);
> -
> +exit_repeater:
> +	phy_exit(phy->repeater);
>   disable_vreg:
>   	regulator_bulk_disable(ARRAY_SIZE(phy->vregs), phy->vregs);
>   

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
