Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 708B3E9B342
	for <linux-phy@archiver.kernel.org>; Mon,  2 Mar 2026 09:42:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+IKMuaJVe/gOMteoDt1r2hCINLph2a8VdwEtklyaKYY=; b=yUJ/xbGpWlFQ+h4qNhxgtGX7+i
	68962AVPWSGo6QCbPoSd/6jga5frsfX2iIlH8E+RbJe39CcOmplQlvnMBD+7CcH15QhxBq4rwH4MG
	D4MGicRddzUyKJzEnBJTY+lDVLOHbcyMtBVO4b9BumrXBdj8uEFN++Tuj+KZrwW/sQEEu7kBwFafr
	zwleDPu1/af5GrRekY79ufXHbclSTAZ13RqXraQI6lfdvlA6TbHrAf/PDwi2hLo+oXnT33hkStKg6
	ffxT9QWeFllJx/5/A/MReB2pbSjWkd2Q1JwefT7KSkeVGt3wS4Fg5JBZZtRczLoOuq6OuJTB9xx55
	XHQ7amOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwznY-0000000Cc0b-3X00;
	Mon, 02 Mar 2026 09:42:44 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwznW-0000000Cbzg-1MUi
	for linux-phy@lists.infradead.org;
	Mon, 02 Mar 2026 09:42:43 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-439b5d78592so773769f8f.0
        for <linux-phy@lists.infradead.org>; Mon, 02 Mar 2026 01:42:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772444560; x=1773049360; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FUMi2IrbtLUuCYJGmkwxz9kL36i5bFYXjmXqzSFVtBU=;
        b=dq76kDGpsp6pVyrHuNC6wwn8RirdVIr1CU5Yb5mGrszuiVQPzx01kqM4/4TrpLCAxM
         dYedcCYz6Pm+5erHpO9coJH9ARLotae2hahsuMfpCO9V4Ba8qSFvd7CsbOvYqds5n4t1
         yg9Q8KsE4MZxK/P7hw1+aIpnO5xqWqYNp+0g6y7fIpXDuYpx3gpXZKYoiwH2nyGm+UtH
         XpI1pVXA30cXlA5v9+DHGvq0yWKfb2iwn1U4LaMyk2CAi3PQVZPgJEJjtV9PP6BmOTZr
         PYJV82Jq1JkSJSJk/eTw0YxH+FJeSxJxudEP9TrTjTTJYaezMq+3bVkUWqrrmFJcLMvp
         qIIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772444560; x=1773049360;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FUMi2IrbtLUuCYJGmkwxz9kL36i5bFYXjmXqzSFVtBU=;
        b=qzand+PL8vl4Q2930coJdhv8aTLxoCbhCIJkKBZCv0E5ccpYgFSzkl91PKwr7UBMF/
         qj55C/Zp+I90ZsQ5XYs9qLxU1B3wRxxcSFk2phEXpgur43ToC927C07IUn+J4uWi/jew
         WuE4tpbjzRFJZ22mDUS9YqIJ5fHGKiFGO7IK70fAsrw60KHHmO70eIVuwiXq0397Uwb7
         yTvuMGdeVguoUQ3TghULKKjer/cOzWEVu8LKtSPx/VWk3E9E/oSjdttDnnvhD2QOd5tq
         e42QVbpBgDfHCgbfBXoJfP0IHxT4eVGrl/ttN6eJnH8cxShx2EZImfNXWQoAQ0DFlyYG
         zyVw==
X-Forwarded-Encrypted: i=1; AJvYcCWUgdumbsFKBLEbq95np1GC7cqhcsMhCp9MvYUDczpp8Wqto76B4CkA6wZhEe98gPxvKNNNk3r5lws=@lists.infradead.org
X-Gm-Message-State: AOJu0YxDEwiZO9EhjP9kSxmJ7G/NBZFTO40cnN8CBRYU3hUy41uU7iJW
	Wi4thuKwE4h7qvKJya+eM2lGcv9o/Pnz2AMUOt/NbIFWVMuH8uAspzGxDMUOu0MLAqZnhSI2GP9
	GRdJgj7zRQg==
X-Gm-Gg: ATEYQzwsf8ivrHlId4af/tXrAVCBdP8wH6JNg8upCLkGX9j0tMNCyTxLS054mYMbRdE
	fU4KN8E+gkw/0hDZg8lr6i6XxwzdnbMbazqgzaiBL71VlNSU8S6oALLfj7lIy5FZzVbpN4+2BTT
	CEc5Z4fZgcWKrWA/pr8qc5OFJPaiEYKKEP7ENWtFCofP1XxeNkk+8mzI5L3Ts+2Sk98tDMaVUVT
	Q/5GhM3PaT7jZSUePw6EohSNxcMSTxXHDgOIFkiyPfT1HusUfyX1Z3paJ3wlOyaVTstKx6UOBth
	MVe63BuTx+IIysNam3sYgW57czzVypYXmuUP37gJ7E6X+LdYN/K0YplYlmkw/H+s4L16FiltcZW
	tPiskkmSrwXtprbt72//p89D+9TLNk2F+8YOeVEIsr5s+UrDQAujasCY2Puu2WRYlFsLAlodP8H
	lBhI48+MSrBqCcvZ4IrBBQx22mXARkBhszyYYmsop7VauMNfdYZqTwOBxDkltduo6uzX0Oi+RD5
	MGJ
X-Received: by 2002:a05:600c:458b:b0:483:6d4a:7e6d with SMTP id 5b1f17b1804b1-483c9bdb6a8mr181505995e9.30.1772444559823;
        Mon, 02 Mar 2026 01:42:39 -0800 (PST)
Received: from ?IPV6:2a01:e0a:106d:1080:c342:61e:309c:3478? ([2a01:e0a:106d:1080:c342:61e:309c:3478])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd70e692sm417033065e9.7.2026.03.02.01.42.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 01:42:39 -0800 (PST)
Message-ID: <17f652e8-1c7a-4578-bd81-5305234cbe52@linaro.org>
Date: Mon, 2 Mar 2026 10:42:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2] phy: qcom: m31-eusb2: Make USB repeater optional
To: Abel Vesa <abel.vesa@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>
References: <20260302-phy-qcom-m31-eusb2-make-repeater-optional-v2-1-dbf714c72056@oss.qualcomm.com>
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
In-Reply-To: <20260302-phy-qcom-m31-eusb2-make-repeater-optional-v2-1-dbf714c72056@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_014242_396564_41DBEE90 
X-CRM114-Status: GOOD (  19.69  )
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

On 3/2/26 09:34, Abel Vesa wrote:
> From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> 
> A repeater is not required for the PHY to function. On systems with
> multiple PHY instances connected to a multi-port controller, some PHYs
> may be unconnected. All PHYs must still probe successfully even without
> attached repeaters, otherwise the controller probe fails.
> 
> So make it optional.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> [abel.vesa@oss.qualcomm.com: commit re-worded to reflect actual reason]
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Reviewed-by: Bjorn Andersson <andersson@kernel.org>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
> This has been sent initially by Wesley here:
> https://lore.kernel.org/all/20250920032108.242643-10-wesley.cheng@oss.qualcomm.com/
> 
> This is still needed, but for a different reason, so re-worded the
> commit message to reflect why.
> ---
> Changes in v2:
> - Picked up Bjorn's and Dmitry's R-b tags.
> - Fixed the subject line, as Bjorn suggested.
> - Link to v1: https://patch.msgid.link/20260227-phy-qcom-m31-eusb2-make-repeater-optional-v1-1-07a086bbaba4@oss.qualcomm.com
> ---
>   drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> index 95cd3175926d..70a81ab2482f 100644
> --- a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> @@ -285,7 +285,7 @@ static int m31eusb2_phy_probe(struct platform_device *pdev)
>   
>   	phy_set_drvdata(phy->phy, phy);
>   
> -	phy->repeater = devm_of_phy_get_by_index(dev, dev->of_node, 0);
> +	phy->repeater = devm_phy_optional_get(dev, NULL);
>   	if (IS_ERR(phy->repeater))
>   		return dev_err_probe(dev, PTR_ERR(phy->repeater),
>   				     "failed to get repeater\n");
> 
> ---
> base-commit: 3fa5e5702a82d259897bd7e209469bc06368bf31
> change-id: 20260227-phy-qcom-m31-eusb2-make-repeater-optional-621c8c1c0354
> 
> Best regards,
> --
> Abel Vesa <abel.vesa@oss.qualcomm.com>
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
