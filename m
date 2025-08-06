Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35B18C87FD3
	for <linux-phy@archiver.kernel.org>; Wed,  6 Aug 2025 14:12:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y57Dwk1QaqhnWwe2ILCp1e0jXnWvhLiYoIY6urPT54I=; b=wlSsEfTDdsSWbL
	+Rq4tWHsc0lO6KnO6KW4yJzW49TPw8WR7ejUFl+GCg/mJYS6EYmOy08IXPIE+BIJLhU/GlRRl2pl0
	Vpi9bZPmGWrmFJcIDacGFppMj4euo7cOhw74NUzI8X287kZjFA22k/919uHZhGfXBmrkDRCcacl9A
	Cl5EzFwsPAcRilcYm/XFAx2/GXKL34OKqBgrZ+husdsrfMU6J5mdfjKMYsKOcTNYi9CeL8JP0P2HY
	q8btGb4fzD6XWEI4RoiYPzpRc78r2NfjpXQfjK4ZVtnSJDZF37vOaASHidz5ZUMTNnSlm4siLfTnO
	LGTNk6aBsCh3fHs9zyTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujesJ-0000000FPQA-3T48;
	Wed, 06 Aug 2025 14:12:15 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujenV-0000000FOc3-1F7n
	for linux-phy@lists.infradead.org;
	Wed, 06 Aug 2025 14:07:18 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-458ba079338so7696785e9.1
        for <linux-phy@lists.infradead.org>; Wed, 06 Aug 2025 07:07:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754489236; x=1755094036; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZhOuthvlT0MlIMDwPnmOSf/FcPP9fX8kIIgrDxRdY5c=;
        b=Jv9Tm6iJVUxcxryL1QTWRyKF6Ql3sEeH+vryLN6hlw8FDov0v+qHBGqX/YpCVi0xu9
         Qu6W9RK7b44SEMawlyUrWZgrPdvRsDyJp3b8l1qx7OPf2UYRGrb6Wip67mcPHRGFaj5p
         LuPNwWn9+HYY4FWwnlZzj1Im5nB9764r3ZuQw08tyXKzurmkcjIuXF+CjBDzRhJCCdpQ
         /fxXG13NvQEh+lLJLAQWtBe22vMlvC98qhsiu+aUBJ4Sf8Y4wI2InYNgdSiuzsaMTqzl
         GdszjzkcQNbRaZwAHR+aRhg6s0HKRZIiHQ05zbZss/z7tkpFXLpzKQASV+1sxW0W4Rbg
         0wIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754489236; x=1755094036;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ZhOuthvlT0MlIMDwPnmOSf/FcPP9fX8kIIgrDxRdY5c=;
        b=fDqQzJNgTF+Dyq/2lKOjSaH5bK/Xf8Y23oEVZEe0xr0ASP63QZv9Xzb64A7367xYJZ
         d/+3upTU2vEISMI0GmuJvKkyVjZZHqb0m2WQhuti4J2KDM9It8cK8kLRMOAOss3Qj0nI
         SRK/aqtImdCGwmwSChHCTstvmDQzTaX7YYH7TsVETNUtM8p7Z/f+HFwl6HoBoVYKgaPy
         0+zM9MMOLBNfWNrLpCD0TEq6glJpHME3feVETzTWLsG7jsNYB9+end68SjE4QArGZoRE
         012HRJRHyZb6jSXbkry7nHzIyWejRk/9BOaVEpL9Ehmat15lOe5fiLkeiG+mrezgBi2o
         lcKA==
X-Gm-Message-State: AOJu0YxYFLCApsgtXc8McWM3zzceZBAM5f4bpWN9gWA8pXr6bjFXlemd
	o7LkGiJsC8TWOKW/t9QXdya+oa70Db4Fv84uaaTmpLRqSfx96WG84Cldsk4p6Lhmelo=
X-Gm-Gg: ASbGnctQMiKWs2RzOAN8tgnx821FdzdKaV4hLsWi+ezlJ/Yo+svryw9oSsf/K15Mpn1
	BDJdzZBI3a2uD0yBn54d/KxZj3NwozLZelk8+jWJcbYVpiQjnpDQZM+TdF7Tfe3BxaxfFdOgvbb
	CHTwMcwAoW3RYI/t7PNL84cd+oQGXsF7U3f+qiaabpakwZp3Sqhc1KDBwnL0m/5SuRTtQNaeuEf
	VAXU8PDQsWVR4vhdjw33gHXU6r1sipYUHW0tPq4eh1Xrp8rQcBVksGWKYImflypJwKrU2skRG9b
	HMNvIDy3ZMPUBelXYq3xqnf63oCGF1gwC483Z3OcJqAO4sMngEAuHOdhY7LV02TiUnWS2FCLWp2
	li69sNHSUqNrmnHKe9pu8xVuQjFGDwyvyNSQL4A/Yh3jfQAghR9tMXE8b/jZQfqt2Lyj62waC4e
	A=
X-Google-Smtp-Source: AGHT+IElAVJ4olKnFDIvp4sfDLerMVOE9QoG+knt1/9TjLViLhJO38zvYugIqzTyvf938YTDn2OM1g==
X-Received: by 2002:a05:600c:1382:b0:456:2139:456a with SMTP id 5b1f17b1804b1-459e70e8ad8mr30258465e9.15.1754489235576;
        Wed, 06 Aug 2025 07:07:15 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:96df:e381:55b8:1990? ([2a01:e0a:3d9:2080:96df:e381:55b8:1990])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-459e583ff76sm50087565e9.5.2025.08.06.07.07.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Aug 2025 07:07:14 -0700 (PDT)
Message-ID: <313c8333-3a02-439f-825f-35ebe0592a4d@linaro.org>
Date: Wed, 6 Aug 2025 16:07:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] phy: renesas: rcar-gen3-usb2: Allow SoC-specific
 OBINT bits via phy_data
To: Prabhakar <prabhakar.csengg@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Biju Das <biju.das.jz@bp.renesas.com>,
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20250805122529.2566580-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20250805122529.2566580-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
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
In-Reply-To: <20250805122529.2566580-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_070717_345282_68D30D98 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
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

On 05/08/2025 14:25, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> Update the PHY driver to support SoC-specific OBINT enable bits by
> introducing the `obint_enable_bits` field in the `rcar_gen3_phy_drv_data`
> structure. This allows each SoC to specify bits required.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>   drivers/phy/renesas/phy-rcar-gen3-usb2.c | 27 ++++++++++++------------
>   1 file changed, 14 insertions(+), 13 deletions(-)
> 

<snip>

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
