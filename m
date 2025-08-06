Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FB1DCA0EC1
	for <linux-phy@archiver.kernel.org>; Wed,  6 Aug 2025 14:12:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bzQ4wHeoWQedg6RWtRZ4iq+ib9eFZvWh8L44j2R0/xY=; b=Tt3/e3QocJFORp
	CMRlfWewsenf8pDIcWMDEntwmksZwQ2gVVdZIvdvF7M/qwOwspmXbkWn/MW7nX1gx5+upOiyAUh1T
	2wWU2k9SCjAhcN6t+7KazgO4zHWMhZM5R8Fb6h/8ZJW5P69hj5YFb41UfWBVA4xzqDLri2P7sI1/b
	T9oCgLfod4QTe5EkrqFLfGGMcgZeSaoqFRgttpKGz4jyEYEApoM71smqhgIHZbmB4HEU6ZNnNbYmg
	I1uF5ZLUdWWGWNUc6P9l6lJk34IOHJXZceRLhHrx8HkHCixoReiyufCDPPZx+iaz4jN4pXpFXEasi
	jxXlc/xr0x1t+cY3VgkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujesK-0000000FPR6-3SHM;
	Wed, 06 Aug 2025 14:12:16 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujeoW-0000000FOpw-1j7S
	for linux-phy@lists.infradead.org;
	Wed, 06 Aug 2025 14:08:21 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-459ddada9b1so29374995e9.0
        for <linux-phy@lists.infradead.org>; Wed, 06 Aug 2025 07:08:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754489299; x=1755094099; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fCGd7O4GoIlOmdTKiKq8YgxWKegKI2Il/UfNC/LUBwo=;
        b=Usn5+MqyzxiHVwHf73JRF2rIQJ/TnzpEpd56HXdJjqrQiuZZjNo7yo01RWK/opVbf7
         czjCYPny4pkt4baJ1wHAq7SwHKqDWmo25fVHvh3ZfhQm02ptvgdnhTq3B0o1SkYrnO9g
         vTVs1MjBeba5VConk5jkfGa8co3nYuIi7r7f4gxAjf/aAuq1lzH1QIsOgRUXQQJigJZU
         rnTqCHw+SXGdbYT2KR02pVDlmgjUcEDiNFUXsj2Wq+3kJmtXOR6QC4opqj9+4ea3Ovk8
         0F/I89imQkYt+na7iURZ8uEu5V5CNuiqFvFEKBUdY86yIMD5m3lR4V8k8kOx3f9khF9u
         nvHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754489299; x=1755094099;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=fCGd7O4GoIlOmdTKiKq8YgxWKegKI2Il/UfNC/LUBwo=;
        b=aa26aZzhDV4mqJ2GOTj2y1UcYEMw2guWEMo3AD8dxQ11SqhIonxAKraM20SeD2gA4D
         WGfWxIvCtxNaCOz0C1/NNccUO13K8cns745DsZVb9zjjeV8lqrnj4/CdfxZ2cE/fpCzt
         IowcMYynK6hyzLAxJ9p5PrTJgPM7LFMIfP6horSj7TFn4Dp9MT2Dvr9K0cPYU+1fLDIC
         37kKNdF8n9m3MalbJF731sAQmebD4GXSmYRdNS1DIu2dMFXXOCBCnAoziyAWD22pE4fa
         UI+LTvn9tL18Vgmg0ZPTQSyRearENKcxinszKt2q5yHF45MDQgGuBikRyTPvqbK38SSO
         ZF/w==
X-Gm-Message-State: AOJu0YzDHIFiAxjhmWX/gzXvxqN168UMObTEHmxj/nAG5ctejtnBOaxX
	wr3/pWkwuiW1CuGFtbbZ6OZ2easeboYgwag2kuVpmRfmNK7trSMJzgnOJJypAlABcHA=
X-Gm-Gg: ASbGncuICbaOYuoMR0ZFxbead8/Yj3o7IS/8n/ixhwEC4xhAdWmackpfBXIYFXGrUmN
	zZnTrHfM5L5vR7XVjvDZMkCljGJdNoJ0ZL+V7H9Iw1maZpEajBfrQzXHJO50pXCHu5xCRf7NV4B
	w9MHRd0aTlIivPOsebmzInRBt2St/pg2RGMjjuMxdrS3+NXItZz27fpDtRO6QMrVT7eluE4ijZB
	ro7HiDHRSzmvCw84lc6d1uRlwF9rEALrh2K5lM4S6NUgXpn+lWCm7UVV//WFtFCuCbsmFsSOr+h
	4ULiP9FCQZ/5rOH63EjTLg2Xd5eB1pqWQa4QNeCKSLeQmyzzZJi72mDNczeXKz1iZUBS+eaP3eM
	GgJzO3oxt70xOmTe6CvSmHkLFDUTACE8UCxTkLOxrAvyoC1cqDTK4HIzNgl+cOnga0g/GcRHFSn
	c=
X-Google-Smtp-Source: AGHT+IFOELUtC52z9Q26FCR174suBx8TNGvfiZiHi0AzwFaFFL6FW1oxmFvuk08xuGo3H6BQgIw75g==
X-Received: by 2002:a05:600c:34c2:b0:456:1dd2:4e3a with SMTP id 5b1f17b1804b1-459e7bfdeb1mr32593785e9.3.1754489298722;
        Wed, 06 Aug 2025 07:08:18 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:96df:e381:55b8:1990? ([2a01:e0a:3d9:2080:96df:e381:55b8:1990])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-458953eaeeesm319154575e9.25.2025.08.06.07.08.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Aug 2025 07:08:18 -0700 (PDT)
Message-ID: <8f1ded5f-430d-4e9d-a328-aecaef1e6d60@linaro.org>
Date: Wed, 6 Aug 2025 16:08:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] phy: renesas: rcar-gen3-usb2: Move debug print after
 register value is updated
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
 <20250805122529.2566580-6-prabhakar.mahadev-lad.rj@bp.renesas.com>
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
In-Reply-To: <20250805122529.2566580-6-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_070820_462109_81537029 
X-CRM114-Status: UNSURE (   9.07  )
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
> Relocate the debug print in rcar_gen3_enable_vbus_ctrl() to appear after
> the `val` variable is assigned and updated based on the VBUS state. This
> ensures that the debug log reflects the actual register value being
> written, improving debugging accuracy.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>   drivers/phy/renesas/phy-rcar-gen3-usb2.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
<snip>

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
