Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39B93CF258C
	for <linux-phy@archiver.kernel.org>; Wed, 19 Nov 2025 08:42:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=10j1jYt5egwI/TVyTV15ZQJT6eovbos/cm0Se/mMKT0=; b=P5ZEZJru+VV223
	W+7KudzdQM+o1CtsOwvhgJBNfJ/+RvbxbhXdjGNTpLQT/o863Bao1vyV5Hertu21fZafN9zqVGWIN
	rVp7zoxrikwG5ZqDTiK1cudOMUXVQlApx+oWxJnPkUOACpAfnq5IPS5rQFSmlfpBSehlbFDZQwTAo
	whBjVtMztp1QwVEjspHW2qSPB17ay1Xg49zd9O0f6D5IASrEDGwGpmfoRAVPraOlkRQRdRx1a/4OO
	iYD2f6G6b3+Ga24nlxkSz4UwzdHWT+9zHgzERPHPShoTridr5Bl8xtLXCXy08lgqasyfhoPWkXk1z
	ooCHjnFZ5MdDT3I4yOCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLdlm-00000002oTC-4B6k;
	Wed, 19 Nov 2025 08:42:30 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLdlk-00000002oSl-3wry
	for linux-phy@lists.infradead.org;
	Wed, 19 Nov 2025 08:42:30 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-4779aa4f928so44376995e9.1
        for <linux-phy@lists.infradead.org>; Wed, 19 Nov 2025 00:42:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763541747; x=1764146547; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yi5k6FhTRnszTU4ub2HtHQHWRa8+xtRinFDw1eNRn5c=;
        b=Iku/bLFqJuRpiGatR5XE7NGlFkSl6AT4/G/epYputzzAzRA4CXvsB8QyeDnoYHVOMO
         T2RjzRzNhevBXjRMO1ckSUBTTmVVpMdbfFiHyhbgFYM/f11Xq/ZiNVTewPT42uy1Saoo
         QSG7hXvIt7WHCu0i5PruW9pmYfJzKkkBAuMzeOOebA/Y16u08ty93hPqe6HmyAxNPAqh
         S/F+MQAEaJhHRWkJKfv61d0UbYZSHm3r9hUtXBx4TmxRrdGBdPvVxwbwlZlrbA2hnnZD
         qcfFMfzW4rDNAJ8m0U2EdS6owa6bKEDVSWliIQ2VtDpIXYk4DU9oby96ejVT6iNGNpML
         RsZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763541747; x=1764146547;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yi5k6FhTRnszTU4ub2HtHQHWRa8+xtRinFDw1eNRn5c=;
        b=PoZAGo6UtLv/3PGhbUgOzWY/mkNLA4jbjM+jSOc9Jm+PN6fDzHdOUILBNUn5DZVXg/
         pUq2dMmjXj0lLBTqKdLXbnXSDnX1SMS6xhjPmUfZxfh4lSpUXHuOA0TKW3fV9On25ewG
         2c08PzQQHuEIXwIwjB4EkmKLLy87H0QwV5UESl2TwoymnXBkaABC5l4D+7JhlrXwxZw9
         Fzq+xW5KJm6N9IjtK6FSXR6Cw62g/v2BwltNYYOibdrd+DqoiOJff7WZr0EiYtG8AOgd
         ZuePt8N9oGd0a7lk/nWleoSv8g/yxRRoy5WyYfQsJtpaMvPlrv3c17qxwsN3Ta8aLcA2
         rZgw==
X-Forwarded-Encrypted: i=1; AJvYcCV3iV7GxjOfxGpbIb1TUhjXM7V6rHAayZTFjDldMVibbK3BqIhueppS93Qo8YwdwhjnUcnMKx8+Et0=@lists.infradead.org
X-Gm-Message-State: AOJu0YyxhLqRXcFf/r8PBtKqub1taNN3bAaNSZ4N7ASEf5j0UjAgdqP/
	IAdvJgCFzYzdEvblZ74soR1mnIYYItOFBoLNsqpSYCjFcESBKwqQ7Ae92rBKSLR7GyU=
X-Gm-Gg: ASbGncvkgRyu5C9PE9XmR+uOIStukQdiDOKR7RmECQ0x/+dA1cwfMEPxGF+mNZ4NQoU
	pUujdbmQ4jwpJvdaZGOAACn/LKD6tL3K/B214aFxG3612BEp608bo0XklyAylqlMBv6l+QEVJJA
	/d291Nw8OiE2UcWciV/pG8m7XeC0lYd1yHZz3qdOu7VynLT5hmoI4zGKvnq7dRDF/0FXF3APRcR
	cNMRbmrXAOvesvJ4QNiyUA37NegapJ1htUao3xiYfkPn0j9CMEE6z26b0Hbxt7jM131gE/oYJU1
	3fOcHpAxI1/mygihmaQfOIMWRDGZQ/EQkApFrFAxTGrZl4EGcpFvL4nHfvbCU8zwJyM9lOnpzf7
	vr09jk2ZXmCTwa1efxlLVQsO6yRuT3YQbg+yvWq19Jona8HWZct9ecsRMsjIn8WPcG3Xgo+fxCz
	/RSKXGRS/wnoG2VKIt2z23PiL1oMlynIYLE8GXROaAi8EoU1L2YcMQAjbrEimRxcc=
X-Google-Smtp-Source: AGHT+IFApKg1U/eP5JzH7mZkCFrpbynYjZzdOp8s89mlzmKzHMfZxlrZ3gIewT2FA4JlyOqRRgVWog==
X-Received: by 2002:a5d:5f90:0:b0:429:8a71:d57 with SMTP id ffacd0b85a97d-42b59356aadmr17938218f8f.27.1763541746951;
        Wed, 19 Nov 2025 00:42:26 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:94e4:fa88:414d:e1ad? ([2a01:e0a:3d9:2080:94e4:fa88:414d:e1ad])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53e7ae88sm36000475f8f.6.2025.11.19.00.42.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Nov 2025 00:42:26 -0800 (PST)
Message-ID: <bbf1fc3d-228a-42ad-97ee-8a03003b08b5@linaro.org>
Date: Wed, 19 Nov 2025 09:42:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qcom: m31-eusb2: Update init sequence to set
 PHY_ENABLE
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>, kishon@kernel.org,
 vkoul@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, Ronak Raheja <ronak.raheja@oss.qualcomm.com>
References: <20250920032158.242725-1-wesley.cheng@oss.qualcomm.com>
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
In-Reply-To: <20250920032158.242725-1-wesley.cheng@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_004229_002355_6927683A 
X-CRM114-Status: GOOD (  14.30  )
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

On 9/20/25 05:21, Wesley Cheng wrote:
> From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
> 
> Certain platforms may not have the PHY_ENABLE bit set on power on reset.
> Update the current sequence to explicitly write to enable the PHY_ENABLE
> bit.  This ensures that regardless of the platform, the PHY is properly
> enabled.
> 
> Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> index bf32572566c4..fbf5e999ca7a 100644
> --- a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> @@ -25,6 +25,7 @@
>   #define POR				BIT(1)
>   
>   #define USB_PHY_HS_PHY_CTRL_COMMON0	(0x54)
> +#define PHY_ENABLE			BIT(0)
>   #define SIDDQ_SEL			BIT(1)
>   #define SIDDQ				BIT(2)
>   #define FSEL				GENMASK(6, 4)
> @@ -81,6 +82,7 @@ struct m31_eusb2_priv_data {
>   static const struct m31_phy_tbl_entry m31_eusb2_setup_tbl[] = {
>   	M31_EUSB_PHY_INIT_CFG(USB_PHY_CFG0, UTMI_PHY_CMN_CTRL_OVERRIDE_EN, 1),
>   	M31_EUSB_PHY_INIT_CFG(USB_PHY_UTMI_CTRL5, POR, 1),
> +	M31_EUSB_PHY_INIT_CFG(USB_PHY_HS_PHY_CTRL_COMMON0, PHY_ENABLE, 1),
>   	M31_EUSB_PHY_INIT_CFG(USB_PHY_CFG1, PLL_EN, 1),
>   	M31_EUSB_PHY_INIT_CFG(USB_PHY_FSEL_SEL, FSEL_SEL, 1),
>   };

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
