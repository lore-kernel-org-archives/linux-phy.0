Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 618E6C7115C
	for <linux-phy@archiver.kernel.org>; Wed, 25 Jun 2025 11:07:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uJivYBIgqrouT/RgjmqvBB1Y359SoHyNC5an5J+cESQ=; b=VqR7GFjURJgi6i4FORy6cJNLzh
	dzf1OeqyMnR4pn5kx17IJOW34W6PEuaHPq6Y35+gSCpxJrbIMGQW8bbI9q/VGpjki59YFUYUxLTgC
	FNWZobBMRihUmPTwvDI/OlarSHp7qrzB4xpUlxJ2fNL2cpHtFW3vuknDSzXEysEWdCoeL2mW/BmIS
	vu2GnHFj+6lmpw4wapNdhG0PenoO4V+PDbW9L3wLJcHWY8YIV9FDGUEzVswFKfPbrdXphRJhV7nrd
	0PkHtGwAtrO9nKsl2QV/AQXu+FlQdECaD7bxUzqQKxe6+6CUfBIjOXFOABBKZEchwEey+kqljJ9KP
	RVCdovgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUNyI-00000008Q7q-001e;
	Wed, 25 Jun 2025 11:07:18 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUN3Y-00000008FyA-0e6j
	for linux-phy@lists.infradead.org;
	Wed, 25 Jun 2025 10:08:41 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-3a5123c1533so3301984f8f.2
        for <linux-phy@lists.infradead.org>; Wed, 25 Jun 2025 03:08:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750846118; x=1751450918; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7JzupWL1XDYIRewec2SQsdiCKOY9Pec5DNEnhFtHIf8=;
        b=Hpo1L/cM6fn7A6XPrRsrjDUIKTvev+KHhq+rYqpatJYfzwiJjI/1pPKJCOBDL5CF8U
         4kHM1KdUGNSpCFjcIgexCrH0WiLN6Lm+rZCiaP/SJRc1+HYsHXE+0i8vlZqWzNTNnIJ/
         KQhquYVNgUKpzaqOU/Es0eSZyMckM48tPqk+rv7przWnT2SqFYtjmADz+oAGwWB5ZMgt
         /m5kjcf+AhViuT9LCBgCYcAteoSuNTWI/IfuAOhe8ThUyblliCUHTMHHouHDHJpOlYY5
         pIWBeOxQHoV9u/+E8SO5okP1gNpiF3ascMkKIEx6bUGk2PRRDa8nchT4bfcWT0vSWec1
         xv9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750846118; x=1751450918;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7JzupWL1XDYIRewec2SQsdiCKOY9Pec5DNEnhFtHIf8=;
        b=ZawfLrmkBmPS3yW2l4ACcul0YhZ81LWa1PGMUzGfADqeuQd/TrjbMiOZj9GpjBuKwt
         4mmcjpCcF6uDW5jp9roY9TNVzQ4itwCl5Wa1nNoie/HPZdZYP7CR/afqIW2hbdks8e7m
         1i8fQhNDrHDhROs4Qcfwskt/lDgQQOr1UNw8sPnu5WaWNeNthuZHbnqsmfWfPHWnwP/H
         vsI/8Z3c0jiVxUgBkG52NniqgAtYGM6hvLo9IBKCmtbMiCIlkS04BgnsjoDYlS9rGJjE
         Dxus/k2VcPacw0p5nR/7JfJBMwH51vgv0mdl3zOUu9kzJtr6iYs0Nz4p5K3lW892FDfe
         GIRA==
X-Forwarded-Encrypted: i=1; AJvYcCVRGiF96TH2W9WY7ntr8I8AP5Dvl+XYIcIcbtZ9+qFre+MpHigLtm7hcO/X4vT/TQrVYHtFsKuMuVc=@lists.infradead.org
X-Gm-Message-State: AOJu0YxBL17YbzT0h+mynoApslvrVR4vKaU7hsPMgoabIQ35UDN3cSBc
	HPU134HwyXqEMpeeFX98Oc5vRIa5ktoUPZ2hfMOJrA0h/tjR7icL+N6WMT1E3cZ9Vho=
X-Gm-Gg: ASbGnctU85PhV/Hzq6rOqWhdFaLCLh6iYl6oWhMN9T5hP0OA/jmVSSd8AQebGUHrAl1
	ZNZgKiDw+EF1AL5tLk0bbc59//aT0KypsCeA9r9zjSSpmPgPkqEqtEowgem+zgMl3Ua1ynt6DkZ
	1HjgS9yju0Q8XZSd5vWLTti7+JP0xCcoBhGQk4Uy0RPi9gTtoHDQjlW4jq6voFa4yl0nWvyWE01
	SmUt+n/0UVYcpSBGN8UyNGR91GtHymqdPOZUf0vG2kM98ZQKQ2b6iWMq0hSingca4E5fB36adLd
	OHchSSwCqwhXuMMHb9UxxSRtWy61O7nzpMiv/FRXFAFy5jQGKFvIppGP2d4r1rsr9+WuI/RnKx7
	ydiu4xT//YOUjxLXxpXa+/e5STTGQ8DIMx6PT
X-Google-Smtp-Source: AGHT+IG5LF4AWsLjPx/1089V2zva7Qrc3IalhvEwkT4jUmwXeJtLeU7OltxRai8wGL+rEMr7x8tcQQ==
X-Received: by 2002:a5d:5c09:0:b0:3a5:8abe:a267 with SMTP id ffacd0b85a97d-3a6ed64b709mr1271789f8f.29.1750846118498;
        Wed, 25 Jun 2025 03:08:38 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:b3df:bee7:215:e1a4? ([2a01:e0a:3d9:2080:b3df:bee7:215:e1a4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4538233a8bbsm15636395e9.6.2025.06.25.03.08.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Jun 2025 03:08:38 -0700 (PDT)
Message-ID: <ce935264-37fc-4073-aed1-0be2bc7aac99@linaro.org>
Date: Wed, 25 Jun 2025 12:08:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 4/4] phy: qcom: phy-qcom-snps-eusb2: Add extra register
 write for SM7635
To: Luca Weiss <luca.weiss@fairphone.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20250625-sm7635-eusb-phy-v1-0-94d76e0667c1@fairphone.com>
 <20250625-sm7635-eusb-phy-v1-4-94d76e0667c1@fairphone.com>
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
In-Reply-To: <20250625-sm7635-eusb-phy-v1-4-94d76e0667c1@fairphone.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_030840_197946_6D18AF7B 
X-CRM114-Status: GOOD (  14.82  )
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

On 25/06/2025 11:14, Luca Weiss wrote:
> As per the downstream devicetree for SM7635, add a register write for
> QCOM_USB_PHY_CFG_CTRL_1 as per the "eUSB2 HPG version 1.0.2 update".
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
> The downstream driver supports an arbitrary extra init sequence via
> qcom,param-override-seq.
> 
> volcano-usb.dtsi has the following which is implemented in this patch:
> 
>      /* eUSB2 HPG version 1.0.2 update */
>      qcom,param-override-seq =
>              <0x00 0x58>;
> ---
>   drivers/phy/phy-snps-eusb2.c | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
> index e232b8b4d29100b8fee9e913e2124788af09f2aa..6122fc797c7fd3011936edc3ff4dafe6a58e6583 100644
> --- a/drivers/phy/phy-snps-eusb2.c
> +++ b/drivers/phy/phy-snps-eusb2.c
> @@ -420,6 +420,12 @@ static int qcom_snps_eusb2_hsphy_init(struct phy *p)
>   	/* set default parameters */
>   	qcom_eusb2_default_parameters(phy);
>   
> +	if (of_device_is_compatible(p->dev.of_node, "qcom,sm7635-snps-eusb2-phy")) {
> +		/* eUSB2 HPG version 1.0.2 update */
> +		writel_relaxed(0x0, phy->base + QCOM_USB_PHY_CFG_CTRL_1);
> +		readl_relaxed(phy->base + QCOM_USB_PHY_CFG_CTRL_1);
> +	}
> +
>   	snps_eusb2_hsphy_write_mask(phy->base, QCOM_USB_PHY_HS_PHY_CTRL2,
>   				    USB2_SUSPEND_N_SEL | USB2_SUSPEND_N,
>   				    USB2_SUSPEND_N_SEL | USB2_SUSPEND_N);
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
