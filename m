Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC3F0606A33D
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 14:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=plxoC6aA;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=a0hzp30W
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=szOA2SCKOEMNc0Tza28fe4irSbJF8cNKd9b/QTYvdAs=; b=plxoC6aAdnKgLhQ2HGDU34LLLk
	b6Ec0aeGhlRQXCOK2ArG1SWn3uat6LHugL+NeOpqPf8d8IGfS77t0URnP05gkZ1S2O5nCFgLqMztM
	Fit/hlSPwjqyVjiY67UEUVAWGwJfIjan2hVxoUGnWk+Ut5fs7omR0RNg6VaA2QbyXjcdvFkbjy1US
	GAcPw9lwjvAZmCyeSRRuOjcv5UD5tsScXhf8+e9d13yU61XxnoXjy5UwdL3Q5ZgX38oxM5jTpSWoD
	yUPo7n3TCKnmVTk42QpYapfAGrIXV9EXMmk3f1Zaco90uu+YEtJcy2mor91aRak7/qN1L/wM4Kfqq
	NJyY1bLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWDsB-0000000A8Qe-2LuU;
	Wed, 25 Nov 2026 14:21:23 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWDs9-0000000A8Pr-2uVf
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 14:21:22 +0000
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-3ae3b5b1027so4542611fa.2
        for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 06:21:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1795616479; x=1796221279; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=aIFur0b6JQXrtfZ5k2pqTwRixw1NNXm+TnSCUVUWtkg=;
        b=a0hzp30WLvas3gE9d4YGMrzrltjxKmBgJVldZ8HQRsLTdH4wqY6FwoLk310hfeVE9q
         QfhcayRMQGdqMMnzhUR/meJpVLxDgHcp6SxoBekG+SCIZLEDpEaHb7ZcpEaQp9YV8XcZ
         /ZZnoa6UHIpq0p+fZLLMXd6NLRkLoUsmuk8iECzAbKnmLQE/imO/hWSfaqm1z0mFbAKn
         vek/MiMYQjT4txzIFtDTJ4efgdppte+TwDiUbLJZGZD2/tjN1uLRW46rlzMX7CL4DsiU
         e2fw379a1ROKM+oxWYJbcD4/rAqG9xWVodP0j0oblI4ahonVJr4V7uJBgRj8Dzd7kmFI
         tr+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795616479; x=1796221279;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=aIFur0b6JQXrtfZ5k2pqTwRixw1NNXm+TnSCUVUWtkg=;
        b=w1C2YiOUSXBBnF0Q9FtVcm71p+cx0VQxhuNW3uYGLSAC4912lgvwZTWsFoUNayk+4/
         wuEQ6hqW/H6/Cz1GQcSZNxFx8V8XT2iOlus+Y8cK2B0ha+Zbw7wv/QE08aIZRDNQTrTt
         lZ64+S7udqxtweMdltcMJX9/xtOGeRK3nxT29CilbJpBIwXJfEZoZ16ErIguGyyDqKeZ
         bc4rHzcdcW/1HSRPYZ0Q7TP/yurDKwYbeFYLMzsfU+KCA4YHzq7zD+58NPaX9cJpSqzx
         oR8HBzW/TfeWvPc5hIu6Pznu/3T4gsfEZsszMA/pV4AgPiEJAIVvwR3s6Xlelu+nnj3b
         7jwA==
X-Forwarded-Encrypted: i=1; AL+hErFPr22zqbcrlANoKP+4veIxX4+yVfe25JObaCrymRruEjDvYgtALzg8UIUm17HAxBvlwM9TOj26iIE=@lists.infradead.org
X-Gm-Message-State: APuU4Z8YdABHPK7r2zgnXpT5+gYrxQPpa/j51S88W9++h43776i+ZIXj
	6iLy8jjvedfRZBH/HOik0DoUJK0upRFqtl6uQyZNWy5khji153VaH3V0qBNIq7VY72s=
X-Gm-Gg: AZFdTZd3oMjcuR7mglBMmjvCqvzmIozLE8s+9LUEF4hIv0TdsgHZWzsniEjcIJ33kYT
	NC14LPuTWhQTw/qJZnXYjUcVZ9jO8OTMaVb3N7O9CA85Yqe8S8i3vLlcBk9qMth+fJb8/n5mlHS
	sI/80CmYVa8KCYh76+3heHzDXMuAaI1bOYZVw5voWPe7r7tlLQTdspqs+2dWQGseZh9doMErOgp
	7nlWibMPnIe9XANb6SSLQKEhtGkxbxAaYxnf89EGePNZuItJ4p/RJEV32vGhocWN9j81RtgnPHR
	CU3AxA5CsvgL436pOSfAcgyyRF5pKZsUnP5c8oKHKbksD+mlDtSvw3YdAE5KCT7y4QVCf/3PeLU
	2JrXzldwLEPsPN7Fx3PnyA0LwGS6IUp3OoSNDFZtCnV0hHxxpAO9xjTN4itNAakvHieCOR/SPtf
	T7Fggyl12p45jeK2xDhDIsYNc3QXrW8etbZUBy8xBfk53KpaM6K0LY4mOVJhy36dh8eaqSBfwR4
	l+9babQBiG//mZA/jd+5bFtuSH71emjRoMqXM+XOcyV6LsZbq+d3BXT3IbjwFwLbGuTURKYPw3o
	LeO1WhAiAOcUyweWYbDO5G/z0Zdc9gPrkyYznPHfJL3k3THImFi/8JKSWrpq3H8RIkjBeUw/Xvg
	P/bEG8e6F3M9d4lcwPW/StpD/njR9
X-Received: by 2002:a05:6512:31d5:b0:5bf:f87e:3d25 with SMTP id 2adb3069b0e04-5c1bc6b22b3mr6618657e87.2.1795616479393;
        Wed, 25 Nov 2026 06:21:19 -0800 (PST)
Received: from [192.168.1.101] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5c1bd0171c7sm4541303e87.31.2026.11.25.06.21.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Nov 2026 06:21:18 -0800 (PST)
Message-ID: <aa0a99e8-1c49-4417-9a1a-8653cfb3585f@linaro.org>
Date: Wed, 25 Nov 2026 16:21:18 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/3] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add
 Glymur compatible
To: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
 Bryan O'Donoghue <bod@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Suresh Vankadara <svankada@qti.qualcomm.com>,
 Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20260925-glymur_camss-v4-0-d7c2983d6d7b@oss.qualcomm.com>
 <20260925-glymur_camss-v4-1-d7c2983d6d7b@oss.qualcomm.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20260925-glymur_camss-v4-1-d7c2983d6d7b@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_062121_756179_05470D55 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 9/25/26 08:48, Nihal Kumar Gupta wrote:
> Glymur integrates the same CSI2 PHY IP as X1E80100. Add
> qcom,glymur-csi2-phy falling back to qcom,x1e80100-csi2-phy.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
> ---
>   Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml | 6 +++++-
>   1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> index dc64af97da6c659628729a758316353798aa98db..1f1e2a4993b2aff9a1519640bc4e04ca98fa4baa 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> @@ -16,7 +16,11 @@ description:
>   
>   properties:
>     compatible:
> -    const: qcom,x1e80100-csi2-phy
> +    oneOf:
> +      - const: qcom,x1e80100-csi2-phy
> +      - items:
> +          - const: qcom,glymur-csi2-phy
> +          - const: qcom,x1e80100-csi2-phy
>   
>     reg:
>       maxItems: 1
> 

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
