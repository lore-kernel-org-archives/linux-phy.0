Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4C0EE95396
	for <linux-phy@archiver.kernel.org>; Wed,  4 Feb 2026 12:41:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/FM4OrYQkIbt5NPO5/UOBrhFy/2i0Mn6kHUNsyOBDWs=; b=aaURVxppuw6kbyA/bAs1cum369
	odwfy6Zh+2xkyTF9dvTbcxNb99xlt0ktAMAymaV8v1PThnDCpk4+ssrlKpQMUeldZvSfjBK2r8vFL
	HkNBI6hm7whVieV+QR4jsWECjorOFx3pgnCDNVZnIVNCSSliS+kUf7ZcjelNZYBjdsKJBjABx0O3P
	nLgikRSWhMGrC69G1Wv0jdQRY8BxyPkFp2BC+4xfDKL0qpwYeLlFlXo3do7J+GM4wZ5swEVGKpADd
	BHedrIh/kDxPF4JoKhvG04LLYMd9wKh1AHdWtKelMJK65cxhDvIorVu3TKScv0iX0zeVcBei2oR2P
	3kdzboow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vncCY-00000008SO7-1dU4;
	Wed, 04 Feb 2026 12:41:46 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vncCW-00000008SNj-30pz
	for linux-phy@lists.infradead.org;
	Wed, 04 Feb 2026 12:41:45 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-43596062728so603525f8f.1
        for <linux-phy@lists.infradead.org>; Wed, 04 Feb 2026 04:41:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770208902; x=1770813702; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lePlCwxuHwVi9M8Mz4/B20sELwbECOxy1lAulwxmpHM=;
        b=DzAh1eEWsSb8uHlXpBJ+SE0RnfyazFlkexTmwlBsCcBR9Fx5FPGMCb2o9vX1x5jqsG
         2NdsZ/AjpINV+EM84/2PYl6+4Ov7NJFQUU0mOIHUOele1qklpcFO0lF664WJGzDCsFQX
         TOKjNB+u+gS7/DoaVlBX6x8UMODgGNO54yRPlO/XHqDr7+hhRaIEabsjymKUMfRCqar2
         Q/ms2V3LtRvx2+y128hk++rW9kBlI+b0DwncnS43zEF1heFRHYgpMnmyyH1SDsMsXbTu
         l0wDkTaZiizV+1a1MLZM5TZkpwE5Vh+SaFAzsoZRYfMtwqHL7FOVQa1AyP6DT+qgI2tQ
         yS0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770208902; x=1770813702;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lePlCwxuHwVi9M8Mz4/B20sELwbECOxy1lAulwxmpHM=;
        b=PHp95EqILcMajSEIQyGcDViGyySY2GMsUGW4RgWIFBhmxhQRaCIAquhywsdWS1WloW
         X8aKJkHHs68yPb+pRWu1keQLVuasJibInouyqrp4vSsRF/t20i3HsgOf10W3TqIZkDgw
         5xtyM+r/n6bLEEWWo+fEQkyEEaQturvjbBrizA6EnMMaf+TyOd2mQCJB2VWe3MNCtoVI
         kBSQ+IDC5WJGejEab8OJEeSEugYs7raI5REFDutjCsSPT8uKKJkh/KpagDHcBWCLjkLA
         0kC1SyK9MsffzH1OyIOJ5YZB80TjckAGBSALMOoT4a6WrMxdlHi4ziWXJ8XX9KfvchtM
         0AUw==
X-Forwarded-Encrypted: i=1; AJvYcCW7OPbT05w4AdsMkIyxX27ortL9zKBfRW8vyyGjPxydCtlVzkBRC2p8v+7Qn1A/UVNvwOV0YP3qPLA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyfcT9Ohyan2TnSIY31wPyQMPRemQIB+tiH8HA3iQ8Ft5WPe0GS
	vbDWJKQUqmfo4Jik6kAKybGCY2Njvewavszq01a1fYEJ5sEUXboczWbCT3TTc/LqplE=
X-Gm-Gg: AZuq6aK/mjCG1VBg3X8T9qrorll+h6SUkvP1Nm/cvq3vNZ6o5CqUTx8nBTQeb7/CKcK
	T8D2sF/J36ovRLml4PkWEzBH5PPMbWNUxxOGjnKvrL193nxAzT8tcMGPbaRqJvs6Abbj71wR3AP
	QuaUGbUQkr3ZuZlq6QKA/b40RKfQ+119BXdMGlrjJSaybfXgEOf8U7wCy8d826AFiUwJp0LSM2A
	+m2kd+3MO/oM/uxEPfRZPFMs84xFKX5tTOibt+/vD1z/7UreYVpumi9yicb1atjN5ilN9b+7pGV
	AoADK4UzT8Eh8y2VlHTAJj/ieoJt+s8QqVOET3CyqACyC+8IjJolVciFD6OQ2TY7KmmYPmtiKra
	3Ee3pCxEzLisWpJd1AXivy7je7hYQcg/+twGA8PwBJPmUIKlyyZNesdeY8PtmrSai/x2Ge2e5ZT
	Pk8BwR/o/pJIgrkqvgdNgDlAzZAwUCsF562LWfkbRnRA+fleBPv1Awr8xQj4vyfg4=
X-Received: by 2002:adf:f44a:0:b0:436:14fa:a3fd with SMTP id ffacd0b85a97d-43614faa4c4mr5764227f8f.24.1770208902078;
        Wed, 04 Feb 2026 04:41:42 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:b55c:58f7:42fa:3dbf? ([2a01:e0a:3d9:2080:b55c:58f7:42fa:3dbf])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43617e25e8csm5577566f8f.1.2026.02.04.04.41.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Feb 2026 04:41:41 -0800 (PST)
Message-ID: <07347b11-cd13-4f0f-9839-8ffe893002dc@linaro.org>
Date: Wed, 4 Feb 2026 13:41:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH] phy: GOOGLE_USB: add TYPEC dependency
To: Arnd Bergmann <arnd@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Joy Chakraborty <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>,
 Roy Luo <royluo@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Alex Elder <elder@riscstar.com>,
 Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Inochi Amaoto <inochiama@gmail.com>, Sven Peter <sven@kernel.org>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260202095655.1289973-1-arnd@kernel.org>
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
In-Reply-To: <20260202095655.1289973-1-arnd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_044144_805949_F2ADF1D6 
X-CRM114-Status: GOOD (  15.50  )
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

On 2/2/26 10:56, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> With CONFIG_TYPEC=m, this driver cannot be built-in:
> 
> arm-linux-gnueabi/bin/arm-linux-gnueabi-ld: drivers/phy/phy-google-usb.o: in function `google_usb_phy_remove':
> phy-google-usb.c:(.text+0x24): undefined reference to `typec_switch_unregister'
> 
> Add CONFIG_TYPEC as a hard dependency here to force a clean build.
> In theory, compile-testing with CONFIG_TYPEC=n would also work, but
> that seems pointless.
> 
> Fixes: cbce66669c82 ("phy: Add Google Tensor SoC USB PHY driver")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>   drivers/phy/Kconfig | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
> index 142e7b0ef2ef..02467dfd4fb0 100644
> --- a/drivers/phy/Kconfig
> +++ b/drivers/phy/Kconfig
> @@ -50,6 +50,7 @@ config GENERIC_PHY_MIPI_DPHY
>   config PHY_GOOGLE_USB
>   	tristate "Google Tensor SoC USB PHY driver"
>   	select GENERIC_PHY
> +	depends on TYPEC
>   	help
>   	  Enable support for the USB PHY on Google Tensor SoCs, starting with
>   	  the G5 generation (Laguna). This driver provides the PHY interfaces

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
