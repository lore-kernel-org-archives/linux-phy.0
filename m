Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3680D21699
	for <linux-phy@archiver.kernel.org>; Tue, 15 Oct 2024 12:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BUrbSmpAPLqL9rOU+aZAwBcrKN1vwNiif/iDrhFWyTE=; b=Fw39Rm5v58cx0oGs1oWeIGqaVw
	COzF4imC+NKbT9QOAwa8YqLhLXuc8LdP2x0SSKrRVALL3sYonGHXI4RO4PWEIjs2J3DpaS7gmj0M4
	bky/0PW0SNEB6wmKYiIquywdonOdOopVG7+AuuMD91aENacokksSMwCK/5ZUDaFqhPYevZV7D35yl
	JnJRcEVOXKLHUFyBlxEalfckmnwwrJY0ZcDuJUOSR5HzkVkp6BV8aFoqLlD5smqxMYZ1WMNMTPlXY
	unFw8N3bJ7qU7CUTS4UHuhkyL5XxSAAbiXBKIr68FPwqcULel3HyrBZdCDstT7pQ9XequGPr4VAj6
	KvHCjWDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0gvE-00000008Dvk-2w0Y;
	Tue, 15 Oct 2024 12:45:08 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0geJ-00000008AMH-2hX7
	for linux-phy@lists.infradead.org;
	Tue, 15 Oct 2024 12:27:40 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-43116f8a3c9so60560655e9.1
        for <linux-phy@lists.infradead.org>; Tue, 15 Oct 2024 05:27:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728995258; x=1729600058; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/jp7MnEnWaCupoBR7Ejaobihsf5bkTsK/bDvsZp/OLs=;
        b=CVTQVR2yljJK2VnGOnbTyEXo5VgX85iteiE+7NelHTvQpap2yqPQOg9HNhJ0JxD9N7
         pBfEkPZe/0pxVPJiTZ4l8JQGQSvVOmPFmCp4BmTzgEHeDhKI5a4EM3Vmy4t5qF0yf1Xs
         EKwtNkUhGEYYUfmnl/8OGtP1y1XO2DMd348WnOL8oqzHIOs+UFy/Cea2dLw2bMWDyhjO
         d1osBiV6lcjEHYjjBm8N2+cNhyckZuu3SfeEqwS/034pwjHbNFjlbEwGN+rk6xQD5Buh
         NM0MbvtfDc4yp1oK9LrZngbS3lewu3qgrKIbyn2oTZTW38k9tbJwOQqGtt6pAXorVsYj
         hOAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728995258; x=1729600058;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/jp7MnEnWaCupoBR7Ejaobihsf5bkTsK/bDvsZp/OLs=;
        b=ZL7q2ogqMzWpqapNmEB4aufZ+W1CIkBWjsHfu29GHRQaK1W3UbGoCL70uxc+Y4sBqN
         bx9EUY2pbKNMTchbHN5jbOGn24EaOGscD4KNXiC8b8Hbf8gY0GmnCL1md8UWeu+YgLFI
         kXhm/tAjDcpujS/eea8jxY1EeePO9xEDN/Tgi7W5KaFjkomkWQ99WSpnovmYLV2xAgcQ
         fTxmv0qaK1/fDBdmgtKTehu16HefU688xU7+j7AszydB3HJj2SW0ml8CMGULj8LxK+et
         pTsM+yGKxmR2Hp2gU5QRH5OmfjF9TIsoWxY1FTlPjIjhF+5E5AnvStXuJi0jc3Sc5WZU
         uA/A==
X-Forwarded-Encrypted: i=1; AJvYcCXC0+LK4sam78NWMiOhqQFg20wxY8eyVfHqs/pslY4MqPx/L5m7W2wh5ne7GT5VBGH3GGTFREAN7H4=@lists.infradead.org
X-Gm-Message-State: AOJu0YyRUfbd9p7/qYd12ii77n/uiZroGD5+cmkspU6qtYfOVqn0GYKU
	Rq0Pn7t+/1ZQKnV/kfb3aliUMhocfXqQGp1RlMHuM9quSxA451MZY/ajPqfcdh0=
X-Google-Smtp-Source: AGHT+IF5nBLO8Fh0jojEAcLQEJwPyUp6jyRdDuWX0jMQK/+gUYhmGD66OBVnQzWcvbP+N3t1yUIrjw==
X-Received: by 2002:a05:600c:1c13:b0:426:6e9a:7a1e with SMTP id 5b1f17b1804b1-43125617834mr113128555e9.35.1728995257803;
        Tue, 15 Oct 2024 05:27:37 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:e686:73e1:36a8:3467? ([2a01:e0a:982:cbb0:e686:73e1:36a8:3467])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4313f6b323asm16450925e9.36.2024.10.15.05.27.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Oct 2024 05:27:36 -0700 (PDT)
Message-ID: <0f3d1827-c3b0-4e58-95bf-7ccfb1366928@linaro.org>
Date: Tue, 15 Oct 2024 14:27:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH] phy: qcom: qmp-pcie: drop bogus x1e80100 qref supplies
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20241015121406.15033-1-johan+linaro@kernel.org>
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
In-Reply-To: <20241015121406.15033-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_052739_722913_3BE0C195 
X-CRM114-Status: GOOD (  12.50  )
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

On 15/10/2024 14:14, Johan Hovold wrote:
> The PCIe PHYs on x1e80100 do not a have a qref supply so stop requesting
> one. This also avoids the follow warning at boot:
> 
> 	qcom-qmp-pcie-phy 1bfc000.phy: supply vdda-qref not found, using dummy regulator
> 
> Fixes: 9dab00ee9544 ("phy: qcom: qmp-pcie: Add Gen4 4-lanes mode for X1E80100")
> Fixes: 606060ce8fd0 ("phy: qcom-qmp-pcie: Add support for X1E80100 g3x2 and g4x2 PCIE")
> Cc: Abel Vesa <abel.vesa@linaro.org>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index f71787fb4d7e..36aaac34e6c6 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -3661,8 +3661,8 @@ static const struct qmp_phy_cfg x1e80100_qmp_gen4x2_pciephy_cfg = {
>   
>   	.reset_list		= sdm845_pciephy_reset_l,
>   	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
> -	.vreg_list		= sm8550_qmp_phy_vreg_l,
> -	.num_vregs		= ARRAY_SIZE(sm8550_qmp_phy_vreg_l),
> +	.vreg_list		= qmp_phy_vreg_l,
> +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
>   	.regs			= pciephy_v6_regs_layout,
>   
>   	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
> @@ -3695,8 +3695,8 @@ static const struct qmp_phy_cfg x1e80100_qmp_gen4x4_pciephy_cfg = {
>   
>   	.reset_list		= sdm845_pciephy_reset_l,
>   	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
> -	.vreg_list		= sm8550_qmp_phy_vreg_l,
> -	.num_vregs		= ARRAY_SIZE(sm8550_qmp_phy_vreg_l),
> +	.vreg_list		= qmp_phy_vreg_l,
> +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
>   	.regs			= pciephy_v6_regs_layout,
>   
>   	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
