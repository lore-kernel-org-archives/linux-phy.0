Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAF8DF01825
	for <linux-phy@archiver.kernel.org>; Fri,  6 Mar 2026 10:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=77S9GJ4lA0CoADCYkWmWL6KBQOoimLhrrXE9D0H8bLU=; b=aI1OGJR7sMywT2UiS5hfGIMWxf
	sMbrBoviDyUJcHLSXo6DkLROLl+CJiT/pIcP/CTiOwu93/QdShfyOKDXexrC9wntRRJauOO8h81hl
	f1MSl3H2+QP8ruAX8p+lIore6JI14tkwhQ0W0Qp8uB9LfaRtUyEJqKo2j4LCDvTaBWtrfoj7Ac9YU
	mAzct7X2Rnak2Lh/Fbgs1eDkqHYA/BaHT/jVZ2xiAFPubEzEpAbQw3vDnMM3tuLtWm4U8jH79elyD
	7OTChcQUKlKRJj+BPW0Nei8mhqmvNcMlPLKyFYS/MIF/g7aaJn9/ytP4EUr9jgR9no8bbeeUFoIBb
	wyiFwshw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vySXv-00000003U6B-1RTU;
	Fri, 06 Mar 2026 10:36:39 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vySXs-00000003U5Z-2eWi
	for linux-phy@lists.infradead.org;
	Fri, 06 Mar 2026 10:36:38 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-439aeed8a5bso6180112f8f.3
        for <linux-phy@lists.infradead.org>; Fri, 06 Mar 2026 02:36:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772793395; x=1773398195; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3EGe3SmyrzPtlbWZhEG6oNZxtdM4EE/DcJpAMXyPYQ4=;
        b=l7iV0g/egKiSo3FejGtRJpMhJKQMslssi9TmtErWI3soXCuSnOaiTwdxcYvI01XNKZ
         UiLFTyTzwzKNKL9tWNnPoOSli6fx6Unnpa7IohLrzQReANb8sN2UNV0Ym31sW3uJyNJf
         Qd5NcarRTaodWZmOdySO5W/lZWfyYCdlEFtWqwXQalLnjYLsgYJzbP85Tikk77cDcB++
         AhiujsgfVCNq6120SBvTRDOUIRoND4PTl4SjmmtxCSlbMAa2sXYLCU4M+h3dYW1lI6yl
         assT6RluUvfKIVtPij5eAfV9DER2ps0A+BHelJL+H+283cXgNQPAhQ7NA+BWHhxoA32r
         JhyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772793395; x=1773398195;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3EGe3SmyrzPtlbWZhEG6oNZxtdM4EE/DcJpAMXyPYQ4=;
        b=ZMr06CBcbzsHHnUbX6sUUItkxjr4GhLG1Xg8gPKzqyoLVTMmmEwSNpEE03Yo+bqEff
         3A+XRyLR6tSrPEr9f20TsbSwxXsoS0VA2uj/1QCI27EKlftocmNRrjZbjnXazCL1jQso
         UhvRYOqJNI6eszEAeom2x8zL5+Q+jP3AA39dEPO7vRV1H9Z6GzV+ShFxbD4C4Le+zK45
         7zDyYCW3/9Xjn75KIlcAGtqwqseN8l2e+8s9y3FLACFVZSeOag51817kP5Jt2sgWsFNp
         +4SP+Bx85LeUSvnepKx+6mDnhQByxlH3vsh+Z5BgWYhnMfiIkaYCwGyT8zd8kODvYgdj
         qX9A==
X-Forwarded-Encrypted: i=1; AJvYcCVafybYbIVnzxkSnuCFc5YqustwuTYjqNpqqd9GVuo1P5jTapS09pEgd7/b0iMWlv+n1rn0XlOCwdA=@lists.infradead.org
X-Gm-Message-State: AOJu0YxWWcxg1nFk7l3Tp9IDlm069HL6Sd1HXBt9s7vh2P/vusiWmbkc
	rsDM5Aw0BEq75BSqctZtX3drIG810ebHsEsCqLo7WgC2dtUWsf1zPBFGQHm39CjVjHA=
X-Gm-Gg: ATEYQzzrSuHAoOWwJw8POQhKGyZRDXviO9mPjHhlohvysJ5A8RnRp0nV5Wz7L+55X9d
	I1s6YFH80DCy1OfziqDxlxZVG8ZPEungiKXI4hU8w/pX/2yCYJHsPwBAV+1acfWJWvhSfZCPMYE
	cKBeqBah58ciC8pHrqKG2Hmx7qquguNwlBabeXyJWvRtWlBv5xn6n7yNe7TdHmcfnMN74jr2oHa
	VomxfCDcqlDZTJOwPclCmM535t4vsztdJflfYH3idWM3QFWozoTbKWQd0ujq0N0pzBrkY3Tp+rj
	DrkoDf7yc0pFM7lvlqPfrYtq9jUc67xUxM3yBJGdRJD6ZjNNoHEzpkvGPXmLH8PUYzRIEUrQR0f
	rBH6v/EnF2whNqB661hp8t0XkFQucTXJ1S7SNXTmyfi7j6VihjheXVmGGpXHaK753DICwWn3gsF
	UDUIyDRKy0OX2VJTQFEiCqdjvSlHDC20vGMqvvSACvQWrf+V9HAZQgGq3gLCQYVNQcv4fZgLh8K
	lvLAawIK3RWo3Q=
X-Received: by 2002:a05:6000:230f:b0:439:b7a2:60ff with SMTP id ffacd0b85a97d-439da8820f6mr2786963f8f.32.1772793394525;
        Fri, 06 Mar 2026 02:36:34 -0800 (PST)
Received: from ?IPV6:2a01:e0a:106d:1080:cbfe:649:7f17:8b95? ([2a01:e0a:106d:1080:cbfe:649:7f17:8b95])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dae56300sm2769384f8f.37.2026.03.06.02.36.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2026 02:36:34 -0800 (PST)
Message-ID: <61cbca48-6e3d-436f-992f-e7548948eb96@linaro.org>
Date: Fri, 6 Mar 2026 11:36:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH] dt-bindings: display/msm: move DSI PHY bindings to phy/
 subdir
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Rob Clark <robin.clark@oss.qualcomm.com>, Dmitry Baryshkov
 <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>,
 Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Krishna Manikandan <quic_mkrishn@quicinc.com>,
 Jonathan Marek <jonathan@marek.ca>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20260305-msm-dsi-phy-v1-1-0a99ac665995@oss.qualcomm.com>
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
In-Reply-To: <20260305-msm-dsi-phy-v1-1-0a99ac665995@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260306_023636_731756_BF4EC75B 
X-CRM114-Status: GOOD (  13.80  )
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

On 3/5/26 00:47, Dmitry Baryshkov wrote:
> Historically DSI PHY bindings landed to the display/msm subdir, however
> they describe PHYs and as such they should be in the phy/ subdir.
> Follow the example of other Qualcomm display-related PHYs (HDMI, eDP)
> and move bindings for the Qualcomm DSI PHYs to the correct subdir.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
> Merge strategy: I'd ask to merge bindings through the msm tree, reducing
> the conflicts for the current kernel development cycle. Starting from
> the cycle after this patch is merged, DSI PHY bindings should go through
> the PHY tree.
> ---
>   .../{display/msm/dsi-phy-10nm.yaml => phy/qcom,dsi-phy-10nm.yaml}     | 4 ++--
>   .../{display/msm/dsi-phy-14nm.yaml => phy/qcom,dsi-phy-14nm.yaml}     | 4 ++--
>   .../{display/msm/dsi-phy-20nm.yaml => phy/qcom,dsi-phy-20nm.yaml}     | 4 ++--
>   .../{display/msm/dsi-phy-28nm.yaml => phy/qcom,dsi-phy-28nm.yaml}     | 4 ++--
>   .../{display/msm/dsi-phy-7nm.yaml => phy/qcom,dsi-phy-7nm.yaml}       | 4 ++--
>   .../{display/msm/dsi-phy-common.yaml => phy/qcom,dsi-phy-common.yaml} | 2 +-
>   6 files changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-10nm.yaml b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-10nm.yaml
> similarity index 96%
> rename from Documentation/devicetree/bindings/display/msm/dsi-phy-10nm.yaml
> rename to Documentation/devicetree/bindings/phy/qcom,dsi-phy-10nm.yaml
> index fc9abf090f0d..d98217747ad1 100644
> --- a/Documentation/devicetree/bindings/display/msm/dsi-phy-10nm.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-10nm.yaml
> @@ -1,7 +1,7 @@
>   # SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>   %YAML 1.2
>   ---
> -$id: http://devicetree.org/schemas/display/msm/dsi-phy-10nm.yaml#
> +$id: http://devicetree.org/schemas/phy/qcom,dsi-phy-10nm.yaml#
>   $schema: http://devicetree.org/meta-schemas/core.yaml#
>   
>   title: Qualcomm Display DSI 10nm PHY
> @@ -10,7 +10,7 @@ maintainers:
>     - Krishna Manikandan <quic_mkrishn@quicinc.com>
>   
>   allOf:
> -  - $ref: dsi-phy-common.yaml#
> +  - $ref: qcom,dsi-phy-common.yaml#
>   
>   properties:
>     compatible:
> diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-14nm.yaml b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-14nm.yaml
> similarity index 94%
> rename from Documentation/devicetree/bindings/display/msm/dsi-phy-14nm.yaml
> rename to Documentation/devicetree/bindings/phy/qcom,dsi-phy-14nm.yaml
> index 206a9a4b3845..be31b9bac9d5 100644
> --- a/Documentation/devicetree/bindings/display/msm/dsi-phy-14nm.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-14nm.yaml
> @@ -1,7 +1,7 @@
>   # SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>   %YAML 1.2
>   ---
> -$id: http://devicetree.org/schemas/display/msm/dsi-phy-14nm.yaml#
> +$id: http://devicetree.org/schemas/phy/qcom,dsi-phy-14nm.yaml#
>   $schema: http://devicetree.org/meta-schemas/core.yaml#
>   
>   title: Qualcomm Display DSI 14nm PHY
> @@ -10,7 +10,7 @@ maintainers:
>     - Krishna Manikandan <quic_mkrishn@quicinc.com>
>   
>   allOf:
> -  - $ref: dsi-phy-common.yaml#
> +  - $ref: qcom,dsi-phy-common.yaml#
>   
>   properties:
>     compatible:
> diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-20nm.yaml b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-20nm.yaml
> similarity index 93%
> rename from Documentation/devicetree/bindings/display/msm/dsi-phy-20nm.yaml
> rename to Documentation/devicetree/bindings/phy/qcom,dsi-phy-20nm.yaml
> index 93570052992a..1d135419d015 100644
> --- a/Documentation/devicetree/bindings/display/msm/dsi-phy-20nm.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-20nm.yaml
> @@ -1,7 +1,7 @@
>   # SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>   %YAML 1.2
>   ---
> -$id: http://devicetree.org/schemas/display/msm/dsi-phy-20nm.yaml#
> +$id: http://devicetree.org/schemas/phy/qcom,dsi-phy-20nm.yaml#
>   $schema: http://devicetree.org/meta-schemas/core.yaml#
>   
>   title: Qualcomm Display DSI 20nm PHY
> @@ -10,7 +10,7 @@ maintainers:
>     - Krishna Manikandan <quic_mkrishn@quicinc.com>
>   
>   allOf:
> -  - $ref: dsi-phy-common.yaml#
> +  - $ref: qcom,dsi-phy-common.yaml#
>   
>   properties:
>     compatible:
> diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-28nm.yaml b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-28nm.yaml
> similarity index 94%
> rename from Documentation/devicetree/bindings/display/msm/dsi-phy-28nm.yaml
> rename to Documentation/devicetree/bindings/phy/qcom,dsi-phy-28nm.yaml
> index 371befa9f9d2..f8fe75fa29d7 100644
> --- a/Documentation/devicetree/bindings/display/msm/dsi-phy-28nm.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-28nm.yaml
> @@ -1,7 +1,7 @@
>   # SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>   %YAML 1.2
>   ---
> -$id: http://devicetree.org/schemas/display/msm/dsi-phy-28nm.yaml#
> +$id: http://devicetree.org/schemas/phy/qcom,dsi-phy-28nm.yaml#
>   $schema: http://devicetree.org/meta-schemas/core.yaml#
>   
>   title: Qualcomm Display DSI 28nm PHY
> @@ -10,7 +10,7 @@ maintainers:
>     - Krishna Manikandan <quic_mkrishn@quicinc.com>
>   
>   allOf:
> -  - $ref: dsi-phy-common.yaml#
> +  - $ref: qcom,dsi-phy-common.yaml#
>   
>   properties:
>     compatible:
> diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-7nm.yaml
> similarity index 95%
> rename from Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
> rename to Documentation/devicetree/bindings/phy/qcom,dsi-phy-7nm.yaml
> index 9a9a6c4abf43..d45015e24639 100644
> --- a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-7nm.yaml
> @@ -1,7 +1,7 @@
>   # SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>   %YAML 1.2
>   ---
> -$id: http://devicetree.org/schemas/display/msm/dsi-phy-7nm.yaml#
> +$id: http://devicetree.org/schemas/phy/qcom,dsi-phy-7nm.yaml#
>   $schema: http://devicetree.org/meta-schemas/core.yaml#
>   
>   title: Qualcomm Display DSI 7nm PHY
> @@ -10,7 +10,7 @@ maintainers:
>     - Jonathan Marek <jonathan@marek.ca>
>   
>   allOf:
> -  - $ref: dsi-phy-common.yaml#
> +  - $ref: qcom,dsi-phy-common.yaml#
>   
>   properties:
>     compatible:
> diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-common.yaml b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-common.yaml
> similarity index 91%
> rename from Documentation/devicetree/bindings/display/msm/dsi-phy-common.yaml
> rename to Documentation/devicetree/bindings/phy/qcom,dsi-phy-common.yaml
> index d0ce85a08b6d..849321e56b2f 100644
> --- a/Documentation/devicetree/bindings/display/msm/dsi-phy-common.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,dsi-phy-common.yaml
> @@ -1,7 +1,7 @@
>   # SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>   %YAML 1.2
>   ---
> -$id: http://devicetree.org/schemas/display/msm/dsi-phy-common.yaml#
> +$id: http://devicetree.org/schemas/phy/qcom,dsi-phy-common.yaml#
>   $schema: http://devicetree.org/meta-schemas/core.yaml#
>   
>   title: Qualcomm Display DSI PHY Common Properties
> 
> ---
> base-commit: ac47870fd795549f03d57e0879fc730c79119f4b
> change-id: 20260305-msm-dsi-phy-96b063cce7b5
> 
> Best regards,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
