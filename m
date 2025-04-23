Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCFE2C369D7
	for <linux-phy@archiver.kernel.org>; Wed, 23 Apr 2025 14:24:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K0EbgpTcY920qo1Cb14dTUf+xU9Gso0mPgC2W/aZFvE=; b=PubijAtiKaAufm10Nis24X164b
	zaERrcp7ifxIt//GHoxDSfxl22l+RpQT9S+zOHZ/diL6N2VZocvGwGFd5eLgbAZZPnLS6l7F9afYf
	op05WOkN81HokMLqyCuI+N/f0hI1sQvs/gs6BdQDKGV84JUztkooXGhJsQ61qZrMX96Ythk9Lq8kq
	UN8CLZuoc8uG8zkVr9vnrFCiFvYr65p935dB+s2esmcJ9PUz0VIup1TsEkXqCGZp2crhkQCJX38Vm
	pBYZhe69ZsH9eWjeXOcacrXg57NSbyGHxXpkKH+IaPsfF/SuDbXlLbSADi3RyuilG2HGEDqyM/CUB
	kKbtK+pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7b1a-0000000Aoet-1hJy;
	Wed, 23 Apr 2025 14:24:30 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7aNd-0000000AeJN-40uV
	for linux-phy@lists.infradead.org;
	Wed, 23 Apr 2025 13:43:15 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4394a0c65fcso69140385e9.1
        for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 06:43:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745415792; x=1746020592; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FfrnhMcNKf5rCGWHGoNIZp7mNgbnWoHESdB7RpEhfqo=;
        b=ceV6XmHn7i2qxX47TvpkDzKMSmFH64EamJSPo4P5NqArx4JtAhGgCw7gV5IsixElKB
         mgQuM6xUp8XWJKXzs7whXHd6Udq0+CewlDx/Rkyz4i59YR/xNxnsvyVXrkjliWTO9Qas
         /SiPmAPc9oEUyHWn1ys7M0vTmJK8cydBDXY2dX8OYsqijGSH2HVs78UUiPCUG1CeisO0
         Q757llMRJqAxFdPzsKiEYTKx++11AI8/9D0md8eBVbOlP8Sb8xfSRHJlrt5ns4H8KbKa
         LPd2p8szF8+PfkadG2de1Wr9SxDzYVEEchXrecqNhpGds09dssccn1WtwFsT4pAAlabw
         gQOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745415792; x=1746020592;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=FfrnhMcNKf5rCGWHGoNIZp7mNgbnWoHESdB7RpEhfqo=;
        b=tcLhTWeiwFmXTo0X9EgEV0r08i2y9dnhKKTJHPPP3+EHJ7w0nRt1Xh2kMNbjHj0/we
         rt7rlY37Kurc8kyKzOZLHc70EI4bPqKLtcl9In/wAbt/AYixAVbHGbf4uvzSk3MUZvC3
         mkgj5LtzrHD+z05IdFUSDgTLKy3yHCLzi457Dj/xLRdz9nwi2N0y3mW0siIU0xrfrogV
         iVcJmvUats3akElhGAq2wFA7s4X9K0YtOA/hdmW2PVnaFOW5EvWWkmBtCm6FpEUg8Hvi
         OmHPN3upe36SiO0jIiy+le43wDlXmqJVbxGj1jOlFZDBURIlYk2vV1J9pT2ThlAyPPcl
         WsTw==
X-Forwarded-Encrypted: i=1; AJvYcCXaeqNxskHOFEr2cveBfPz5LmPiOGLtVi/ZMcYauzaLSdEdnJSN5FnoZMa564K1eMPEoGe0paS2B0E=@lists.infradead.org
X-Gm-Message-State: AOJu0YyAOq8NtQBBIA99MRO9drZScZt/V0S5RYwCVUZ7OLn1SzVl/+ob
	yFxsUm+bHVnaAfZ8/zraWGMnnlae8aCHNLGn4v/S3V4NCcq0h7SSipSSz8MM1q8=
X-Gm-Gg: ASbGncvQZ+eH0SvXss8FM+DJD9rd3KbFu2LFhH9AGLUBr8fYWZhJUu2x9xzC4KK2k4w
	6vakP2z3tUDq0wFlRdycAVINKx1Ut5hjHICu0sgJ8vyfNLJI9qWUB90ejQehnGJeP4jpWa+W+pC
	uzRY1xHCUTXVjfRUgwVPpJC/5gCwwKSOulDC7Bv8ZTSPRh/cibWvgPJWJavO4hGV5oTHt5dt73t
	SQNjjFkUB9glipxy5DbbQxiJK56Y7ChjWcV+6sjJ+tSdPca+V7V2NXO67U4qOQYuK8KLOJYgE6Q
	yMa58l/4Dc3/1SXYNbBwzrJfbHAvnBW16ry0A9DoVrmLF1vQsZbfmGq9d0wGlGi05r+pIbsUZ/e
	sBx2xRjRUNEsnT0C5UA==
X-Google-Smtp-Source: AGHT+IHnS/+w8vgB7Qer4VFmmeqW2fg9vqIPQjMtQu2PKuXwZePY3kDPFYEnC2G7XWePQ888jen21Q==
X-Received: by 2002:a05:600c:5027:b0:43c:fa52:7d2d with SMTP id 5b1f17b1804b1-4406abfa6bcmr157183955e9.20.1745415792377;
        Wed, 23 Apr 2025 06:43:12 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:2835:c2f4:c226:77dd? ([2a01:e0a:3d9:2080:2835:c2f4:c226:77dd])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-44092db2ba6sm26108245e9.31.2025.04.23.06.43.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Apr 2025 06:43:11 -0700 (PDT)
Message-ID: <1acbe9dc-02ca-4233-a79a-901e714f5c9c@linaro.org>
Date: Wed, 23 Apr 2025 15:43:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 32/33] dt-bindings: display: panel: samsung,ams581vf01:
 Add google,sunfish
To: Danila Tikhonov <danila@jiaxyga.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-mmc@vger.kernel.org,
 netdev@vger.kernel.org, linux-scsi@vger.kernel.org,
 dmaengine@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
 linux-remoteproc@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-hardening@vger.kernel.org, linux@mainlining.org,
 ~postmarketos/upstreaming@lists.sr.ht
References: <20250422213137.80366-1-danila@jiaxyga.com>
 <20250422213137.80366-16-danila@jiaxyga.com>
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
In-Reply-To: <20250422213137.80366-16-danila@jiaxyga.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250423_064314_044608_E1A37D86 
X-CRM114-Status: GOOD (  10.76  )
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

On 22/04/2025 23:31, Danila Tikhonov wrote:
> This panel is used in Google Pixel 4a (google,sunfish). Document the
> corresponding string.
> 
> Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
> ---
>   .../bindings/display/panel/samsung,ams581vf01.yaml        | 8 +++++++-
>   1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/samsung,ams581vf01.yaml b/Documentation/devicetree/bindings/display/panel/samsung,ams581vf01.yaml
> index 70dff9c0ef2b..a3a1de32d8be 100644
> --- a/Documentation/devicetree/bindings/display/panel/samsung,ams581vf01.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/samsung,ams581vf01.yaml
> @@ -17,7 +17,13 @@ allOf:
>   
>   properties:
>     compatible:
> -    const: samsung,ams581vf01
> +    oneOf:
> +      - enum:
> +          - samsung,ams581vf01
> +      - items:
> +          - enum:
> +              - google,ams581vf01-sunfish
> +          - const: samsung,ams581vf01


Why do you introduce a new compatible ? using samsung,ams581vf01 is prefectly fine
if it's same panel.

Neil

>   
>     reg:
>       maxItems: 1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
