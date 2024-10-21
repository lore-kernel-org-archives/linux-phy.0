Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 706A2D15D88
	for <linux-phy@archiver.kernel.org>; Mon, 21 Oct 2024 12:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/EtQ3m+22Nln927HH076JtpNis91kguOJFfKni0rS08=; b=VtY3UgUwE9NgsY5hDFcBxVjO6o
	R7+dMyZHugUaX/IUfHA4WQ7I60n7b6KfYDJV+jZeTRbf/In/nNuxayu5zdFpsilHsjjq4z+JJudtY
	DuVyYawGVqVrpJYnbdWwKNMeEnA+oLaYg7vZN/Vy6uK+VNsGiOrWixu8jgfi+oE1ZAMX1kmq/Z4Eh
	yT1xZm9HxFce0eH9VXdaFI41kJNT7Kkk99qAsG6g1RcL9b+Q2gTWE5/rf43WaYUHqrZorPRjMdw+P
	CJBHRcAtm6L4fVxvFFJW9Dn3P++WKX5WIkfvQmNM9MHIYz0byk3QNCBJF/cbJoHBTysuwRmdvWQuc
	09BTs8+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2rde-00000007Glw-3xtC;
	Mon, 21 Oct 2024 12:35:59 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2rQ1-00000007DW9-41r3
	for linux-phy@lists.infradead.org;
	Mon, 21 Oct 2024 12:21:55 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-4314f38d274so60649315e9.1
        for <linux-phy@lists.infradead.org>; Mon, 21 Oct 2024 05:21:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729513311; x=1730118111; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=DrrbPqJFiY2iO0dRfipxAk8EUQAVQaEPzn3cJpgTtnU=;
        b=t74U2SeufftQB6nHl6vakhN9Fs8Rm+PvxmC4IJZkaoOw4sb6+boGjVx7Jp0jrm85us
         JPoS4JPcsFsgjedPnHNLKtsQifn316xnDT4yQLDoBJCVxCBVmtoiIiPpnflm5FmJbef3
         wJyAtKzfIAjAgxKYRSbf1xdC/qo8Bkc79hM0KL6d0wPw7SaWOfVugqcp0/Fge8ugif1X
         og+x+8I1GSx4okB/wScFKAQRC0dCCqXsfS3hvTJg9J1k/73zsUFpm/F3FnK4UfJJDczR
         FtZN+CFv8W4N7qO2Rs21kTukKWtWphPvBAQ2z2bQUjG2AS8D9gsmGrLFPm4/ibDTUTd0
         DMng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729513311; x=1730118111;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DrrbPqJFiY2iO0dRfipxAk8EUQAVQaEPzn3cJpgTtnU=;
        b=VYPcO4dBgHkLJHhgEW8e+uECOHm8NRzuNVe5JOUAAwoxvC9y6eR5VgYg/6nK62TZgp
         1Wb+kM5SLSL4X7SQrPpLnUdwCjZxLlC5V8WRjmAtWPTUTOpur1kYBk4S8+7L2o0q4JlB
         VpnzlJDHdP1UEeMz5ocGTUTyVHymS9Grl/GTkrFdx2JfOlEliHaEcfhcIR4awJ20o5oD
         NDA+23Wq8Vx4BWaj5qe2dgKNGe1e2xQKyzP0te6IW4kDFOHF0zlBLuyehG33NND/g4ia
         fnP1cQZBCJmL1wwnwlq9WAM0QvcDEorjIeE1/KGew10Al9Bjt056D9vyOiEcZQ79dSFe
         bhyQ==
X-Forwarded-Encrypted: i=1; AJvYcCV2BKwO91Hk6XLC4HHhhC+4vkZSJd34zvRfOP0C6D+gbYTE7NIZRwG7wmudda0z6KH4WoyHHtPqxq0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx6Gl1fj7DM8SDYRE9linc0m4VX4eyctL8ZZ7qYlqbBr8ob1dan
	0A1l80FiKz9o4PZ7fT1gfSNB96VhrZoGhNJzTSzKGuGx8Sp7UsIqpbOTqVlyDZM=
X-Google-Smtp-Source: AGHT+IEh4ATUI62CAEjTzBBALaQCV/tzBZGHEJShxC/vcLj1FngclFlVQR/NbhKEuk2BR427i6/pJA==
X-Received: by 2002:a05:600c:45c3:b0:42c:ba83:3f00 with SMTP id 5b1f17b1804b1-4316161ef16mr127505355e9.1.1729513310903;
        Mon, 21 Oct 2024 05:21:50 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:3908:dea6:2ddd:be97? ([2a01:e0a:982:cbb0:3908:dea6:2ddd:be97])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4316f5cc921sm55374295e9.46.2024.10.21.05.21.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Oct 2024 05:21:50 -0700 (PDT)
Message-ID: <90ed498c-5d38-4aa4-8eac-6fee71a4387b@linaro.org>
Date: Mon, 21 Oct 2024 14:21:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 5/6] phy: qualcomm: qmp-pcie: define several new
 registers
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20241021-sar2130p-phys-v2-0-d883acf170f7@linaro.org>
 <20241021-sar2130p-phys-v2-5-d883acf170f7@linaro.org>
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
In-Reply-To: <20241021-sar2130p-phys-v2-5-d883acf170f7@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_052154_038732_4BA16AFC 
X-CRM114-Status: GOOD (  11.38  )
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

On 21/10/2024 12:33, Dmitry Baryshkov wrote:
> Define several registers to be used by PCIe QMP PHYs on v6 platforms.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h     | 3 +++
>   drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h          | 2 ++
>   drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h | 1 +
>   3 files changed, 6 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h
> index 0ca79333d94261610f7274968c96362dcfb1f354..45397cb3c0c6fd2cd989ddc600510589792a3b1a 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h
> @@ -14,4 +14,7 @@
>   #define QPHY_PCIE_V6_PCS_PCIE_ENDPOINT_REFCLK_DRIVE	0x20
>   #define QPHY_PCIE_V6_PCS_PCIE_OSC_DTCT_ACTIONS		0x94
>   
> +#define QPHY_PCIE_V6_PCS_LANE1_INSIG_SW_CTRL2		0x024
> +#define QPHY_PCIE_V6_PCS_LANE1_INSIG_MX_CTRL2		0x028
> +
>   #endif
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
> index 08299d2b78f096fa5f9388a4d54ddfa85667b18c..aa5afb921f12c07e0648f69433a2e6e2fb756c07 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
> @@ -17,6 +17,8 @@
>   #define QPHY_V6_PCS_LOCK_DETECT_CONFIG3		0x0cc
>   #define QPHY_V6_PCS_LOCK_DETECT_CONFIG6		0x0d8
>   #define QPHY_V6_PCS_REFGEN_REQ_CONFIG1		0x0dc
> +#define QPHY_V6_PCS_G12S1_TXDEEMPH_M6DB		0x168
> +#define QPHY_V6_PCS_G3S2_PRE_GAIN		0x170
>   #define QPHY_V6_PCS_RX_SIGDET_LVL		0x188
>   #define QPHY_V6_PCS_RCVR_DTCT_DLY_P1U2_L	0x190
>   #define QPHY_V6_PCS_RCVR_DTCT_DLY_P1U2_H	0x194
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h
> index 23ffcfae9efab4a9e081414f9b3bbd0079d34f18..f47fdc9cecda8c4fe46c83e6449d68c033cd7fe2 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h
> @@ -6,6 +6,7 @@
>   #ifndef QCOM_PHY_QMP_QSERDES_TXRX_USB_V6_H_
>   #define QCOM_PHY_QMP_QSERDES_TXRX_USB_V6_H_
>   
> +#define QSERDES_V6_TX_BIST_MODE_LANENO				0x00
>   #define QSERDES_V6_TX_CLKBUF_ENABLE				0x08
>   #define QSERDES_V6_TX_TX_EMP_POST1_LVL				0x0c
>   #define QSERDES_V6_TX_TX_DRV_LVL				0x14
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
