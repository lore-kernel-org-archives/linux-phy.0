Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FF32CF2599
	for <linux-phy@archiver.kernel.org>; Wed, 19 Nov 2025 08:20:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qDL2GvhBpWBcVay+q+o8kZB0fq6EgnrJJj4l/+xadPE=; b=HEWs3pAVpMvrxR
	UepvIVY70YWk2D5rKTUvQS5RRt7QLGSg9emTfajymaFsKqRghVji7h7nFPJgj7x3LvBNHRNi3mGUR
	4mJOYBOa1B895pI5Dh2twgZFDPL0P22W1Jwx1udIWbCEO85qqOGoZ82gxCCr1hD4/AWYPD5zbN+A4
	SrDCHuWTkuvg0LG44lTE0KpxGiFMuj/TxcM1Meu3yFCjE46cshGSH+W8ByN69fqekKTgNxb+sWwl4
	NaZTz9GjgiGPoPHAtXMEgr58CYyf6DG6MjW0YChiW58UhoYWKDaPtHMeyjI+y+G2lFk4gH91GJ3sE
	rEvRpIriKVZlxZBso05w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLdQH-00000002mh4-0TuM;
	Wed, 19 Nov 2025 08:20:17 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLdQE-00000002mgh-36zY
	for linux-phy@lists.infradead.org;
	Wed, 19 Nov 2025 08:20:16 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-477770019e4so67104575e9.3
        for <linux-phy@lists.infradead.org>; Wed, 19 Nov 2025 00:20:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763540413; x=1764145213; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eW4U9FNNMk4KUMsEWXF3O9blHe3X64axleniGKFaOWA=;
        b=q8CqTj+xCjB5c6jRRUj/OewVGixluG7yZQkAvvnSq+tlvN80HAXBOh1R2ODDxFt4JA
         MqC+czNruF3z1SvBmrtjePyddBLdP0OUq5cp10lnPyzA1jedh3O7CSD0FA49lobBEolU
         JeGFj2Rqv5ozYGeyQLk/DkG5rrBgMmh4DOKRzqOLGP8ElIzZCyGNj7TXwGIu7JDTfP9F
         +7sL6iQob+P1w4AMwnEFFuZXZwXQ0dTuTRNDeW/Eit7vtMZLai7gsZTRQjosGjJv7Wry
         ImRMKFWzEXAWi8GNQyC4kkhtvjdG6qPhIf4JIQdLuioWIwgLQK2ag95v0hsWiBSox+QH
         ubjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763540413; x=1764145213;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eW4U9FNNMk4KUMsEWXF3O9blHe3X64axleniGKFaOWA=;
        b=cDgrObSRbxa01XvVdR89gyz0QdNwjgnLT07j89+m0GzGvBapWu6sEVDdY/jhxR8BGJ
         c14nI/0fH002qa4lIa4iGYA7f/AoofQFP+SRNjdBM6RyPM4+T262J8/6B+PSXUaL8krg
         6ibFirTfGmmf+eL4tSzeTpTibo8EoVJIjA+im6sR7PUoip6K2wqB/sqRU4SLo1pqaRRz
         oeLj6B+h5ssp43NOTP0LREar0fauOzySALym9AAfY+PN+jVPguDDlp0n9qPwBITGIVoH
         6wX7ylN9wt/7kJh/8nfSuffpPpQuKlAEDp8B+FuCfX3tMrbKtWnJWLPAdKcrOkYPmEjq
         gLOw==
X-Forwarded-Encrypted: i=1; AJvYcCUy4m5Gn6ImzM4YwyOJcWNsQymFiuviB8yYbawk2ay7nhjk6M06n47xNbaZa+vZ25ygT4xDXvxDAz8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzj8bkcd6vOM6go7ok8ugFiM+7Hl1T81abM7aCon1mVD/ZMnG1S
	eEE2oYyVcoAFnd5yDJ4sbBoyxzPy9t8OFxG+w8bPSZMnFzQrTrI8NBskafyQIOj5JwQ=
X-Gm-Gg: ASbGnctfF4lbGMo9TSS1GYXOHCpOwsNjHqsnj8YGJiGDmpunUErgghgdCFrq1v0GD9Q
	ghBnruLFNWgpZ209I6yuuT55DnRCzZMLzXI1lnN2tN7v7v/+hw9Tb1h8ZPA1hW5S+7bBI7XD6y0
	0FxyFH3yFNImFmxRtgFQFLCVoMmJSPSoY5YP5B1oZLbs66XiHjFJKR6CF0MfiI/RrGp4N6bfNri
	h/TeWOAO/20JdIlxh3THp3g2PHqPhX9pwnsqvEwq5so7m3OZjfyVTZ5yTv9jiMrn9xPfdzwC+u+
	+KfvP/t1190s7Ff/CLZLU1CN9nKlYNOk9oE/8BNDnTs9sMmfwhZXGFMUJaYE4w1JQdtDi6n2Ege
	xaGdn4BSbMoGybGtFivk4+7g0uwiM8MRApZKio/XeREijsCsor3MPzptIyZQkIEg5q2pRmOiwqr
	eH0xdX4XyRRXPsjVFvoupyRy6JiO48GFRhgZQePuyDfq9YoPO+8KF1a20UEO4akng=
X-Google-Smtp-Source: AGHT+IFxeMJPmWv1BitRWFJUjyl4b4CIXpigpNQd2QnF6Q4w4/hyzdRchu1vFapRTRhkFN0yGbhtdw==
X-Received: by 2002:a05:600c:5487:b0:477:9e8f:dae8 with SMTP id 5b1f17b1804b1-4779e8fdb3dmr130139555e9.0.1763540412636;
        Wed, 19 Nov 2025 00:20:12 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:94e4:fa88:414d:e1ad? ([2a01:e0a:3d9:2080:94e4:fa88:414d:e1ad])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477b1025707sm33690095e9.6.2025.11.19.00.20.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Nov 2025 00:20:08 -0800 (PST)
Message-ID: <d9c94cfb-1752-4d97-8c2b-627553e912bc@linaro.org>
Date: Wed, 19 Nov 2025 09:20:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/5] Add PCIe support for Kaanapali
To: Qiang Yu <qiang.yu@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20251103-kaanapali-pcie-phy-v3-0-18b0f27c7e96@oss.qualcomm.com>
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
In-Reply-To: <20251103-kaanapali-pcie-phy-v3-0-18b0f27c7e96@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_002014_840547_E35A9081 
X-CRM114-Status: GOOD (  11.53  )
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

On 11/4/25 04:08, Qiang Yu wrote:
> Describe PCIe PHY. Also add required system resources like
> regulators, clocks, interrupts and registers configuration for PCIe.
> 
> Changes in v3:
> - Rebase on 20251017045919.34599-2-krzysztof.kozlowski@linaro.org
> - Add reviewed-by tag
> - Remove [PATCH v2 1/6] since it was applied
> - Link to v2: https://lore.kernel.org/all/20251015-kaanapali-pcie-upstream-v2-0-84fa7ea638a1@oss.qualcomm.com/
> 
> Changes in v2:
> - Rewrite commit msg for PATCH[3/6]
> - Keep keep pcs-pcie reigster definitions sorted.
> - Add Reviewed-by tag.
> - Keep qmp_pcie_of_match_table sorted.
> - Link to v1: https://lore.kernel.org/all/20250924-knp-pcie-v1-0-5fb59e398b83@oss.qualcomm.com/
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---
> Qiang Yu (5):
>        dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add Kaanapali compatible
>        phy: qcom-qmp: qserdes-txrx: Add complete QMP PCIe PHY v8 register offsets
>        phy: qcom-qmp: pcs-pcie: Add v8 register offsets
>        phy: qcom-qmp: qserdes-com: Add some more v8 register offsets
>        phy: qcom: qmp-pcie: add QMP PCIe PHY tables for Kaanapali
> 
>   .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |   3 +
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 194 +++++++++++++++++++++
>   drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h    |  34 ++++
>   drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h |  11 ++
>   .../qualcomm/phy-qcom-qmp-qserdes-txrx-pcie-v8.h   |  71 ++++++++
>   5 files changed, 313 insertions(+)
> ---
> base-commit: 0688945f3e5f85f64c7fc9157223f92e0fc5cfad
> change-id: 20251103-kaanapali-pcie-phy-67a850bfe384
> 
> Best regards,

For the serie:
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
