Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5148EC87FDA
	for <linux-phy@archiver.kernel.org>; Wed,  6 Aug 2025 14:12:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FpWR0oXMxHIluWTzH37qaE41Ld4gYj6oI6RmYK9WxCE=; b=o7VNj/zHBsNfHj
	8jUiE52+qJwKfVOcBtuTvNgN4usEcmU58sf59SaWdaiCMLq+fUax5XP3G2qw3fTBPtGOfYzAC4p65
	VusSuOvHI59uHiFW+HTqavrXtONs1kH7NPtPd2oHrMXMmYh/FUsrCnaG6m4zNvqQp1rejwh5a362u
	AgUXEuRU+A45veCq0ZjSS1RcCKopuRQ4Le2dsazJNbMUWCVTy1zJexjnbOTLBkUnd0XZF6e2bS1qK
	OE8FyqqWQU+pQy9PiCcaBnrxIqETZMj10DOBFL2+7yqZUJBw50+zrzky0lSYIU/8SA45IfAgLnpzi
	j+bpWPFu3x6dcZ1BvTAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujesK-0000000FPQN-0Mng;
	Wed, 06 Aug 2025 14:12:16 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujeo8-0000000FOk2-2x3Z
	for linux-phy@lists.infradead.org;
	Wed, 06 Aug 2025 14:07:57 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4589b3e3820so66011995e9.3
        for <linux-phy@lists.infradead.org>; Wed, 06 Aug 2025 07:07:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754489275; x=1755094075; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q8Pm5cYrQInMJGl5+hX9jruWqynnloC64HQ1dkE8Byo=;
        b=P/L44n+zizef4w8J7jiMzs+sTDxS7k8iAUWh7gOjPdIMECftRQmUrVIaW+fKGBimJa
         muG22QRWN3Vz43cL6H9U5YCHjTwKhVT7sWHcs8AyPx2wjMD8UR1KGA1QsR5GfAVw10ax
         EvcOcWc4R/JNyqedcjArxuOLAzwGpXb8/LUhleFkeS6P8D4qUDgiTmJJmjH9TXQgFJ5S
         EpGwjwrV67sCEG/d3Y76yU+dGG9FkfS3qyzzBF4whjwdk6iFu6eZqOu+q84LkxQlHvIp
         J0Vto9Byf0KQBgMxr0L7SntMyD0oAVVJ4cfMr7HRtoD4E7OvT7QAlw7B3Sb4ABgb6X+9
         z2BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754489275; x=1755094075;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=q8Pm5cYrQInMJGl5+hX9jruWqynnloC64HQ1dkE8Byo=;
        b=usV91RmUqQ6stsQ9A14G20lHQPaZ/oX1j+YC9uqhoGBxL35lohVp7pYWI+EKE5OoN6
         4hrqjagkp3AcfwfpruVEfXR1mvcJCKp8gup6z4dJmgk3EHqNmgARe/A/0P4+U+G3vsmh
         TTyPJ+ADlA/Unvfv0SEhCeUL+HMjOoz5ftbMgz5yq35kotVblAlXgjuVaIrxgK9jQ4eK
         az9gBEzt4HJfMYDo0P44AMNK70Fmh4seNn/1LK+dciwJAnQoGmDW1WMMW2/dPkKSRK6S
         lDDHGZF2+FruvBTVuHEyKOV7X/aOuY5B0r05Iw+TJozQpFhlElpWnUqd6RGUsN3f9Whg
         qW0Q==
X-Gm-Message-State: AOJu0YyXP4T/C52kve3zi3jGaOMrkoDpVRQ2xd5jqQ2FEKzvxejV2ywl
	nz83A5vHC4amCJ6KUQGpc5Q1/f9/jo5oifRNiBBjOfkioNRKUzddtPVqt88+IMRoJ94=
X-Gm-Gg: ASbGncv2HEADZemXvH1ffrp5d4eNF+lz5va1XJFihrIJKIcZXKK8WFPTNPTJ/NIiI4F
	bIgeBNTRVfrQrGarEOtWKDUC77nlDNYev1H7x+gwno4+i3/LzaGZgcLjN4ys0w7qz+eKMiZU4ew
	rX2q0kq4ZVcD98kxIZRj23KwHSO0yjZOs2E/Q+lE+yI5hAAPHUtlBZYAnBAYr2TLdCa9ZgMU0Ti
	BGo2ZTUbxCPoDX9X3TweEVjWNAbXwzIrIvlzqu8CMLKusyYT4sIyELNdGOq871o2IcWIZwLcAfy
	I5vcseIfA32sfCgXmKUsRH2I0qL4VqaEYnYbmXVOn+4b2FEApbxk1/awxfQcJEwDYpz6XQzMuba
	+SCv+97+7TaNm2MdW8NHChMD+NeZ33mc4dCs64iXU7iCJ/uBnAxlqGCkLn1hZztiCABoYrL4rMu
	dvQNyIeJgPEA==
X-Google-Smtp-Source: AGHT+IHyy3f0kKEfQMWCY8d3Nqb03JJf0GPhRnQICd+XwnofzSDkX6gRuK7WSpYOcTRPtt5zNiAXUg==
X-Received: by 2002:a05:600c:a03:b0:458:b068:777a with SMTP id 5b1f17b1804b1-459e9ee8b3bmr23272885e9.30.1754489275136;
        Wed, 06 Aug 2025 07:07:55 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:96df:e381:55b8:1990? ([2a01:e0a:3d9:2080:96df:e381:55b8:1990])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-459e5862fd9sm54780515e9.16.2025.08.06.07.07.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Aug 2025 07:07:54 -0700 (PDT)
Message-ID: <6ecd2cac-87cb-4921-8c8c-0f04112dff2d@linaro.org>
Date: Wed, 6 Aug 2025 16:07:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] phy: renesas: rcar-gen3-usb2: Add support for RZ/T2H
 SoC
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
 <20250805122529.2566580-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
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
In-Reply-To: <20250805122529.2566580-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_070756_748612_44C2453F 
X-CRM114-Status: GOOD (  10.57  )
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
> Add initial support for the Renesas RZ/T2H SoC to the R-Car Gen3 USB2 PHY
> driver. The RZ/T2H SoC requires configuration of additional
> hardware-specific bits for proper VBUS level control and OTG operation.
> 
> Introduce the `vblvl_ctrl` flag in the SoC-specific driver data to enable
> handling of VBUS level selection logic using `VBCTRL.VBLVL` bits. This is
> required for managing the VBUS status detection and drive logic based on
> SoC-specific needs.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>   drivers/phy/renesas/phy-rcar-gen3-usb2.c | 85 ++++++++++++++++++++++--
>   1 file changed, 78 insertions(+), 7 deletions(-)
> 
<snip>

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
