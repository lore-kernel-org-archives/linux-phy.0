Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCC0A606A31A
	for <linux-phy@archiver.kernel.org>; Sun, 15 Nov 2026 12:03:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Ar76MnxW;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=Bt8g3bTZ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=/0GZkmCL6EhOiHtw1n31FgnHj5OMWgDRR8Z660w1/XU=; b=Ar76MnxWWIL8wxCyLyYfRgzWMo
	uWImQXGu/cfBw1PWifbNQEzo/bUaufUo4IokUCiNz6QGy0RYKn5OGyGja6hlbTRUa4jJbr0lSBdA+
	B/S7bkSz+P6PiGt73EnxCq0f0eIVs+t8I5eyKQSB4gvvBemMr0GxyXT63TZbbS7zn7FNuYyu78yaZ
	W0KDbiup3BsfuVkCT571HGKF88sSW0GwaxxwUrw/ePCavK8YAoFc/CTGq1i4Df1Um/DsZQeMSYUwb
	aY6725PfllYa4JACaUlogyz+GxuiUG8edDsufgPiGdH3XVvYFvj/ErPlWZXehVF2CSGW60vjGWOM2
	HpQcKyBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSYxZ-0000000HUPk-14Y6;
	Sun, 15 Nov 2026 12:03:49 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSYxV-0000000HUPN-1N5I
	for linux-phy@lists.infradead.org;
	Sun, 15 Nov 2026 12:03:46 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-4bb6adaf0f1so2255105e9.0
        for <linux-phy@lists.infradead.org>; Sun, 15 Nov 2026 04:03:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1794744223; x=1795349023; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=G2xfTStPsDXrBa4bi2OyO6+uMbuqPCiOosCTtZjhiB0=;
        b=Bt8g3bTZrOzJHkBk6xk1GdknSmEkrfjLCnawxTKa7LAh9afVyk8XNC2x0hEsB2cYz7
         dVPLcxTjBsp7xiUw8weDnT6pI2XDUaGul9y8+3DqqdOWFgzc5ckev/MKwqEOj3J/9h8I
         cV1ZnNMpkmXdVJ4oFDl86KuKnMIlm1ZGKSFNNAv4Xbm63DQcFcBiWp25c5K7pQAFF0zm
         LgvYmommDKafwd+LJfZR1x+FnZ5aObyMzX7kiAq/ysU8cy9lpsaEcmNukNJrlXMa61bZ
         O0LAVgGC8w6Pvx3i8paQg7YZOVl4KzxJSiHaYM8dDHi6IeEIxw3Ke9AjDhuk/d2s40Gl
         ThWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794744223; x=1795349023;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=G2xfTStPsDXrBa4bi2OyO6+uMbuqPCiOosCTtZjhiB0=;
        b=Np+PuMpuQ3VeK9nLoK6vaX6CfgE7smA+V64sC54EzzNEozEHcFaO9ATBr5t43tWG/8
         TStwUvzaSblloVei/gPufGzL0SvDpziitwcsPPGj40LPdF9fhGGhDaCJAKfYEz89T88y
         pjceJQEZD8/H5qdeUWbWpgJjzkSAVEaf3OGbUctzQ83Eiz07XEBNRRDd48pFF6KwaFnA
         XAhHU53BnypgqT3ccDeDtAp85S6qZVMA6dd5iN82Q2enqkDeSaytWC2XkB5tDwYE2nz+
         siMwXpCRKzIsC4owC1jOOT94w6tihwJOaVLtT9jyjBMPagSJCTj2mS6ioAwroM62iT0J
         kJ3Q==
X-Gm-Message-State: APuU4Z8+rH+2hDCe9Dq/pNrIEEG+Rq7E0yWCLlhv+bbaLda6hhWWC1nN
	6hj24RgNSH/LgslICgNDVntmmiRrKmSbVj+ej/akoLNn2psWC19MFkwua+q5gV7mHqM=
X-Gm-Gg: AYBFou0qJZtWmh7w9m+sOsmVZHpXyjffAmx+mQ4Twa5O+NM1bkjseLZyZu0Nc/Mb0zT
	soXPB7oD+DPvVusGvqkLBZuEHi8zmetww6m8mhnLl8v5/3etlxnXgi7eAkd6nXUf+E8WyCfQaEX
	dbb6044KDY5EP8ZWfJhkUQ9sMsC/CM8c6t8RP7nP0cfJGiSZLnAx/XLd0X6CcscSR8AOaDLQL5b
	5VTIM/+EeR2XUUguV5KGlzQ38Rgf8Ov/cegU6qwZpLRBOz6j0yIOCgmqPqGiCKLOIXoS0Yly/9z
	Lhu0Be6iNmqq0SG7Lvfqt0BV6nIj+zdpE3RnMIsVh/t+KOnRiYA8wm5T5dGmgSFfIX/jRHkoWBC
	0Dgc6ZHyWFmIRGK3k+QKJzjykNTEkvjSllmMhpLP9iEBcHob/VfsaKy9FxDKwzXfi8W2+McXOAy
	g3vmgFDMuPX2rZrNlTERevo/IGBHxEo8eR8msa7ZnBWRnsZ1qveG5hI0DJZbDijNDjHmG/6ttG4
	YziudEeiYXPjmavtdN7lYc2qXvsMuiRYQ9OQ8yPggPTfD737I5ZRk3zOYk+uLN7EL3NYwW89uYp
	U6ErcgIApJ6vdlWnegb84vaSpKV+Lh2k6XGLpnVJW6I=
X-Received: by 2002:a05:600c:34d6:b0:4a8:f2ad:a9e5 with SMTP id 5b1f17b1804b1-4bb559f609cmr148644995e9.3.1794744222495;
        Sun, 15 Nov 2026 04:03:42 -0800 (PST)
Received: from [192.168.0.167] ([78.152.238.245])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-49c60021375sm15371401f8f.29.2026.11.15.04.03.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Nov 2026 04:03:42 -0800 (PST)
Message-ID: <31101889-9d4f-4863-afb7-0f884b50088f@linaro.org>
Date: Sun, 15 Nov 2026 12:03:40 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 02/23] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add
 Eliza CSI2 PHY
To: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>,
 Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
 Frank Li <Frank.Li@nxp.com>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org
References: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
 <20261114-add-support-for-camss-on-sm8750-v7-2-8ff2a11835f6@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20261114-add-support-for-camss-on-sm8750-v7-2-8ff2a11835f6@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261115_040345_427829_374EBC61 
X-CRM114-Status: GOOD (  11.76  )
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

On 14/11/2026 11:29, Wenmeng Liu wrote:
> Add "qcom,eliza-csi2-phy" falling back to "qcom,x1e80100-csi2-phy", as
> Eliza integrates the same CSI2 PHY IP.
> 
> Eliza has no MMCX and MXC rails: CX feeds the existing "mmcx" input and
> MX the "mx" input, so only the power-domain descriptions need updating.
> 
> Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
> ---
>   Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml | 8 +++++---
>   1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> index 8ff3df1d0d2787b2af0499c1e4106b86f56ff82c..884984f6f6b9e595df9bb3b0027c0bcf285b8058 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> @@ -22,7 +22,9 @@ properties:
>             - qcom,sm8750-csi2-phy
>             - qcom,x1e80100-csi2-phy
>         - items:
> -          - const: qcom,glymur-csi2-phy
> +          - enum:
> +              - qcom,eliza-csi2-phy
> +              - qcom,glymur-csi2-phy
>             - const: qcom,x1e80100-csi2-phy
>   
>     reg:
> @@ -48,8 +50,8 @@ properties:
>     power-domains:
>       items:
>         - description: Titan Top GDSC - Titan ISP Block, Global Distributed Switch Controller.
> -      - description: MMCX voltage rail
> -      - description: MXC or MXA voltage rail
> +      - description: MMCX or CX voltage rail
> +      - description: MXC, MXA or MX voltage rail
>   
>     power-domain-names:
>       items:
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
