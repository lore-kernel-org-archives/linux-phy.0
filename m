Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78479C71136
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jun 2025 08:34:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BkQvManG7V3W34tclVax7p/Xahp4a1qCLY89OAq7Bms=; b=u44AUgBIP0Lw4aJONppZ8QjH4w
	SCr2FmD/ABj5P58n5LxWTdkdYwLv/3Iq7KToA+dJxDB++HkHjUBv1ynCslt6U2HdUP+aBYZb1ktHT
	5cXfGm2kzQhxNMO/YX/7bso8OFNoCIK2uyVifvsBeunpQ2T4v+3VcNBPcELtj9Q/VFWu5tokYGZ8n
	LtZ9jHqNzcWpfY0trW6Y0UZEcHIR0v0VczU2CDVmKQbTdeJGH4hWhq7Z/YFgokzIuQfQqrv9MMstW
	rz8ZmcHiB/UVGmBUD1tqDhQPqRvKvco3zTug9ts51cLnsrYEaap5DiepP01XqkFfpyp9aY8fQ0ODL
	H6QG/J8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRRlr-00000006c5B-0fuY;
	Tue, 17 Jun 2025 08:34:19 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRRYW-00000006a1b-3FRE
	for linux-phy@bombadil.infradead.org;
	Tue, 17 Jun 2025 08:20:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:References:Cc:To:Subject:Reply-To:From:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description;
	bh=GkVwaOohG3MfzfFBPLux7z0WS8bc7+WHf5B4x4aLoAA=; b=QSkUl1hFdZhZWvk0lJzd49nC/W
	5YPm43wmYW4vyBRwq2e2fssf2V/L8KQdJUMa+dY1LfMhn+vf4xhjRx6/VG2H5jotJbPJv/uv2835B
	fqvme4meF02eGl8wMK6WFnPG+c0+Uf8YVON1mWFAOMgyvLe8fOIdwpnzobxvm9iHnTeJ7Q6YWZY8o
	ens6lNUaAzAlFKHeEO1b99XV4eB0PMC2eG2W3Q6FTEw/zOnqadAl2wCBEenJ4oHFcGiPBBdU6dHZl
	5oUPdT2YkaQwhOgvkMXoYU2kIVokU2c+9+EvNX79OBWDcsdaDZafrGK9e1AtICR0tEBsoURRE3ym5
	mmGbcrkg==;
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRRYN-00000003k5i-2wNI
	for linux-phy@lists.infradead.org;
	Tue, 17 Jun 2025 08:20:32 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-3a575a988f9so1913910f8f.0
        for <linux-phy@lists.infradead.org>; Tue, 17 Jun 2025 01:20:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750148411; x=1750753211; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GkVwaOohG3MfzfFBPLux7z0WS8bc7+WHf5B4x4aLoAA=;
        b=V1v79Z9Eyy9WhpOY+lsaVlEuFM8L8wsAhPsl2E1+YSZ6WhqFhDs5w24gPa6tXnaR63
         lrXn1fkqgQvYgaKvDfYzgzLRKidXjQtYv2unHeO+fqsQlLBnjYipwsxfoK0fP0nxdJIL
         YEotNWwXVhb6+CdbYSf4VEtAe2xVkzScDHBvcWY2JAYGNllD/C6eyJr8a6O/uNLWNlt6
         R88GbrRa4ycdnTuB/bfxqJ9LXM7ros+tJob54poGixZiUo5GKdU8Y8KioBNaBLcW7nVp
         ZfyuF+2fuQIIHYPWvrfhPYFutRGXN5v7+MZDiW9z8htUdoxJTuDGRg+0+LBox+6fxpd7
         cHvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750148411; x=1750753211;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GkVwaOohG3MfzfFBPLux7z0WS8bc7+WHf5B4x4aLoAA=;
        b=Pr3yqUkwBmzp4gEizige8RlUfnD2XKVZA79nMQre8B77EP9AytlMDJLA0QEIxZp6/8
         9wlfSmewh4VhFOYfzTuHmk5Ipee+jNIYH2Fsiwl1pxvqahOKWgCs+wk55Q2PVvh8fJW5
         OKXya5ASsgKHcXGae1JTtg/+Ec1fyOonc6Y2IbQLeARoXnyFhXhASmj1wSg/pHR5TgWP
         qc1CY1axm+TnTU+aYpwPmZyFh3hqkxFMGdpNYX7BSfdlfe0D2BluHgVMrykAFLZS+U5F
         CyIxXgwetlZAIceu6GwufT4auhZ9SPuSG0fLk3Jr4V+TntcWZ001R9VsL6bPkrZK6+7D
         C0Fg==
X-Forwarded-Encrypted: i=1; AJvYcCUo2cTXz1Yw3L4Zbqmhh2kvy4I73fw+MBcyII9vOCrbfSF0JYId2JD5ecHWLiSJGO1/rgBvCJ07x/c=@lists.infradead.org
X-Gm-Message-State: AOJu0YwAbPvpJ9L3d8eZS82qGdpj9ejE0ayPDdxhDzEtUkuq/so8WroP
	l09EIBabus1UInM4DWssa/jrJR31WT109/GXFmfFNsPUG75I8g1MKNrMVEjETrEbu28=
X-Gm-Gg: ASbGncvhDhOijqbkcKoRE325NWYbCvRP/CA/jKckZx/CgQ/BbA1dvJOo9zA+JA23JgK
	GkDJje8UdhE3Vwy4WKD6x3sG2Va6CDTYijY2lyyYluFda14PTM3b8B9Ucdlh2xtLhftPk902ATw
	RuQAKTcBGPz/n94vUX/1Gk7FyqBTXWUEW1g90c0z/M/JyoBLj9zO5DYhPYS47S0FMVpYFD5SRc9
	yJg0uoAQ+usMvCpug0RInAupGnIM/ZucOVQ548Q1w93NE+13RILVfrCsYC9oVGxBbugFfSxSkaW
	gDUy5k7f5FuDL7YBJ1c3IZ07SKYSvnWOY4caJOmj4djR3SD3LwHNYjQV7eH0NGatkaa91p1b2rK
	yRArnRakA5Is5cZQlOAobgta1cVvkemxRH4eVeyg=
X-Google-Smtp-Source: AGHT+IEyBF145eH2dJ1PxI0G9a7I/RUJi+8WJK1aUMpDYBQovwrNcHxPiIYgLUElIHbiSAdNqIPEuw==
X-Received: by 2002:a05:6000:40cb:b0:3a5:2fe2:c9e1 with SMTP id ffacd0b85a97d-3a572e8243dmr8394556f8f.30.1750148410854;
        Tue, 17 Jun 2025 01:20:10 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:3819:3250:4f73:db31? ([2a01:e0a:3d9:2080:3819:3250:4f73:db31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a568b74313sm13346954f8f.96.2025.06.17.01.20.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jun 2025 01:20:10 -0700 (PDT)
Message-ID: <5aa6d6ee-0af5-4625-a616-868919ac36c7@linaro.org>
Date: Tue, 17 Jun 2025 10:20:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH] phy: qcom: m31-eusb2: drop registration printk
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
 Wesley Cheng <quic_wcheng@quicinc.com>,
 Melody Olvera <melody.olvera@oss.qualcomm.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250617080401.11147-1-johan+linaro@kernel.org>
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
In-Reply-To: <20250617080401.11147-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_092023_953217_81CD7ECF 
X-CRM114-Status: GOOD (  11.90  )
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

On 17/06/2025 10:04, Johan Hovold wrote:
> Drivers should generally be quiet on successful probe so drop the
> registration printk from the recently added M31 EUSB2 driver.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 2 --
>   1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> index 9f02b8a78f6e..9b987911fcdb 100644
> --- a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> @@ -288,8 +288,6 @@ static int m31eusb2_phy_probe(struct platform_device *pdev)
>   				     "failed to get repeater\n");
>   
>   	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
> -	if (!IS_ERR(phy_provider))
> -		dev_info(dev, "Registered M31 USB phy\n");
>   
>   	return PTR_ERR_OR_ZERO(phy_provider);
>   }

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
