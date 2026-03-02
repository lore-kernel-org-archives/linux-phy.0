Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1514BE9B340
	for <linux-phy@archiver.kernel.org>; Mon,  2 Mar 2026 09:45:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L18QpHGLXRLbSyhiuynRXnlSeAKszsAk2Kj9Aifl75k=; b=CE9+OEuOObeqPCJ5CBmshBit/u
	7Q9Sv7AebWOPwxfVNs39Y6ltiRJNWZDq9Zokx2GffppjPT4OXBDD6Mmmzl8EqhRLJ8aj35j1TJSwS
	WFgQR5pUBDsEjzDBIt0eP2G8BSbmxFkSvAKTuj+m7SQHX4/69F/D32Ym8sq2OTRP6uylmg78uKr0b
	OzPgZwuzhFELt2Ah8+N7o0pAM1BGd+l7hLBM3iEnyu8BCQZXbR5OrHI3joulGXC4cxb2eiaJdXuvN
	ytVBZNsWmvKwH8s2imP12EIBenHvdinz8LKfJNQjfzqmG9LyC2mmsmUQ1Gs09ES080Mt4+HW8TPoB
	Kr4upPtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwzq7-0000000CcIP-3KI8;
	Mon, 02 Mar 2026 09:45:23 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwzq3-0000000CcH8-1zGi
	for linux-phy@lists.infradead.org;
	Mon, 02 Mar 2026 09:45:22 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4806cc07ce7so47557065e9.1
        for <linux-phy@lists.infradead.org>; Mon, 02 Mar 2026 01:45:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772444717; x=1773049517; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c8XV6vWrdSfBIVmKpoz6leHiVZcyEwRuzmhHYYW85Zk=;
        b=ZhziZgEJfaT6hyKfS01oQ/ZaCEgCIA/TZW4fEPXMqvuXG/RvSEGMsQ9qJrr7LVrNjl
         UfNYxjvkgmp+lK8HquB2keC6gY+rGRJXWuYiFfnug+abIUIR2AN9GcolcIko8XL2EGnG
         KaXxwHxCNn5XgHRRAJfoZEFkXQveK3P1WjdJF21oM4KW4BQGKWPSdn4voSxodE/qwxu5
         MbjETrhZlVVp7R1Kzice1VCmRzR79QI+PSI+NTqu2SiiBaSEW8rKhYpC9zWqN+lkN1Ju
         PjzWGb7nYsONGGgH2Jjrdt72fDb5cnEoxQjZKQcRepCDAiAHsZYkI/pQvslFIrT6JpTm
         ++3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772444717; x=1773049517;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c8XV6vWrdSfBIVmKpoz6leHiVZcyEwRuzmhHYYW85Zk=;
        b=oSxfKaPgc460g0E7UUF+DR+Vdp+OsxpoI8W7zh/SxX8/BAecv6QQ0gnGc51YCNPOHF
         QbHWQTB8oiGFIe8i31gbznrymscUJY+yFpnJfw1V6zkY1NRg3BVGb6C6HuMQQSC60sKd
         7shFO3BHormwtvC6eIXl/IxOIZWwXO0xGnsmnTpJfYQ68Z7OM/JjXIdXG9bZaz8smQ75
         inmzmqoe5rLTF+kZ69HXfMlRl8RhAZLmPEm6vVWgsjSi+/mOybReA5FoZ32sDv16/s5e
         V2W6rl7iHmtqrL3BIBnMRqphYrHLKjXYiFfifZM5PbYmyKPHeZlr7qp6ONn9cx3+YnsP
         B9XQ==
X-Forwarded-Encrypted: i=1; AJvYcCX+jXYA7F2s7pqLeX/pm8IKWREWm3/UyA4KfrOk06iCgf67RIoo6JRzdbHWRx2q65DPGvB+qNY7EoI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx6SPxXhsEPXndGnc//5XlVV7PLxIYmmQzfI8R1l8R1XDj1Ctn9
	ULg8Q7hKKHmyy5tVWmOw7XCMJqXKhQO68TZswbU6cEhB8PLzONu7zHbEm4VKW4N2UrA=
X-Gm-Gg: ATEYQzxLDq3iPTPLJwVoEjT53oixHqQHiezqtjEs9nURQy4xyis1Lk/gxHlDkbfqlsY
	AqZ0KQ9OOf5WdYO2YRdzBhG9wztd/68rsveUQmNsh0it6nzp81Uiibc7v2pdEF/4SlRkOolrlP2
	SUktQE4elYiuuKmmcWRrFtzM7BwO97QNoiZUkzeLEB4gj+68pd+UhYB+R0wfgrM2+7p4LTIqMJ5
	TVpFm4Ud1I2bC7+pyIEiTHJ/RAAIKpIV7mVKSGTeJHbJyfm4YTccmu+AjkDc6xctBN7zmlknVeN
	wIJaEsjF18fIu28Syu+MQW4arbvkQa4Uqm1uQrWNTuUttFyRWbt/RD7WG8hvm8JJvpl1+oRq0U7
	WX4sioZbNpUg5PCcRALhog0b2yHOq7Xn08tgVKwBHJnXHWIkqmnA3n5hfRI+X4THF0YsJ5LrsKK
	AAHsjpLkvDKWe278QNWdYM/lcsqH3J/DE0x0e0gVXz5GiWOAJA0fndGRl6kEuUDmkNlhwEBtI2G
	vqyYqrN7rgR6oQ=
X-Received: by 2002:a05:600c:138d:b0:483:361b:deff with SMTP id 5b1f17b1804b1-483c9bb2c10mr203431275e9.14.1772444717283;
        Mon, 02 Mar 2026 01:45:17 -0800 (PST)
Received: from ?IPV6:2a01:e0a:106d:1080:c342:61e:309c:3478? ([2a01:e0a:106d:1080:c342:61e:309c:3478])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd75df90sm408400105e9.14.2026.03.02.01.45.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 01:45:16 -0800 (PST)
Message-ID: <7da9c4d5-019d-407e-9bf4-22994c801706@linaro.org>
Date: Mon, 2 Mar 2026 10:45:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2] phy: qcom: qmp-combo: Move pipe_clk on/off to common
To: Val Packett <val@packett.cool>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
 Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260228220634.22778-2-val@packett.cool>
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
In-Reply-To: <20260228220634.22778-2-val@packett.cool>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_014520_896444_3946F5AE 
X-CRM114-Status: GOOD (  18.42  )
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

On 2/28/26 23:05, Val Packett wrote:
> Keep the USB pipe clock working when the phy is in DP-only mode, because
> the dwc controller still needs it for USB 2.0 over the same Type-C port.
> 
> Tested with the BenQ RD280UA monitor which has a downstream-facing port
> for data passthrough that's manually switchable between USB 2 and 3,
> corresponding to 4-lane and 2-lane DP respectively.
> 
> Note: the suspend/resume callbacks were already gating the enable/disable
> of this clock only on init_count and not usb_init_count!
> 
> Signed-off-by: Val Packett <val@packett.cool>
> ---
> See https://lore.kernel.org/all/389ca5d3-a698-4dac-911c-39ba057e3d17@oss.qualcomm.com/ for more info.
> BTW https://lore.kernel.org/all/20260205160240.748371-2-loic.poulain@oss.qualcomm.com/ helped with coldplug.
> 
> v2: Reorder disables as suggested
> v1: https://lore.kernel.org/all/20250927093915.45124-2-val@packett.cool/
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 16 ++++++++--------
>   1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 93f1aa10d400..28428a8d1192 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -3691,6 +3691,13 @@ static int qmp_combo_com_init(struct qmp_combo *qmp, bool force)
>   	if (ret)
>   		goto err_assert_reset;
>   
> +	/* In DP-only mode, the pipe clk is still required for USB2 */
> +	ret = clk_prepare_enable(qmp->pipe_clk);
> +	if (ret) {
> +		dev_err(qmp->dev, "pipe_clk enable failed err=%d\n", ret);
> +		return ret;
> +	}
> +
>   	qphy_setbits(com, QPHY_V3_DP_COM_POWER_DOWN_CTRL, SW_PWRDN);
>   
>   	/* override hardware control for reset of qmp phy */
> @@ -3768,6 +3775,7 @@ static int qmp_combo_com_exit(struct qmp_combo *qmp, bool force)
>   
>   	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
>   
> +	clk_disable_unprepare(qmp->pipe_clk);
>   	clk_bulk_disable_unprepare(qmp->num_clks, qmp->clks);
>   
>   	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
> @@ -3871,12 +3879,6 @@ static int qmp_combo_usb_power_on(struct phy *phy)
>   
>   	qmp_configure(qmp->dev, serdes, cfg->serdes_tbl, cfg->serdes_tbl_num);
>   
> -	ret = clk_prepare_enable(qmp->pipe_clk);
> -	if (ret) {
> -		dev_err(qmp->dev, "pipe_clk enable failed err=%d\n", ret);
> -		return ret;
> -	}
> -
>   	/* Tx, Rx, and PCS configurations */
>   	qmp_configure_lane(qmp->dev, tx, cfg->tx_tbl, cfg->tx_tbl_num, 1);
>   	qmp_configure_lane(qmp->dev, tx2, cfg->tx_tbl, cfg->tx_tbl_num, 2);
> @@ -3922,8 +3924,6 @@ static int qmp_combo_usb_power_off(struct phy *phy)
>   	struct qmp_combo *qmp = phy_get_drvdata(phy);
>   	const struct qmp_phy_cfg *cfg = qmp->cfg;
>   
> -	clk_disable_unprepare(qmp->pipe_clk);
> -
>   	/* PHY reset */
>   	qphy_setbits(qmp->pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
>   

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
