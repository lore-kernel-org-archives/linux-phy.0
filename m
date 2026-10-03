Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63BC9CA5FE3
	for <linux-phy@archiver.kernel.org>; Sat,  3 Oct 2026 10:46:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rUBhiocZ6yRAsRJWBxK+8Ihg/tydPzdYqCzL1X0zoYk=; b=g7aagCAcSfu2jh
	3P69n1w6aD+wO6FyRgDGDh7EHN0h1+Gz/fkg4JoxSia6oC4sSTfWMi2IyjlzWkyqzXffl+AiUVCmW
	vl/R32rPFGaAmCk4N2F1VebPaBW43JmQ4cmu1h4C4wUk6uGBYKqP5qRquhu+nIreWfsXYX6YWQqgC
	SomxgAGGja7ep+DZlIAJYB32s2o0qdRJl4OSc46Fq4iXUQ25ak4UzEkKsBBUhfyeqNlgnq3zuvv9p
	YpwrvPOM3v/KGfEL/9FTSB3iHsVGX+i8oavFFU+Xx3oNeWeVctns31Y/e0nC275+Xn42VxCY9GqrV
	nYLTWRPr8x5aFc4xPGMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCxFh-0000000DNrJ-3RM6;
	Sat, 03 Oct 2026 10:46:01 +0000
Received: from mail-ej2-x0d.google.com ([2a00:1450:4864:34::d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCxFe-0000000DNq2-3TIr
	for linux-phy@lists.infradead.org;
	Sat, 03 Oct 2026 10:46:01 +0000
Received: by mail-ej2-x0d.google.com with SMTP id a640c23a62f3a-c2e320322edso75771766b.3
        for <linux-phy@lists.infradead.org>; Sat, 03 Oct 2026 03:45:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1791024357; x=1791629157; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=ezx4xzy/gAlLbYrRv684J3BP0hR2VYyaFcE+9qMDACQ=;
        b=HNtFM2hjkKVvwekJppAOaEfCPRzfQ1E/MABiWIbgMmHQ3w4//897LBhDnAiLLmV3Ix
         MCMOIfMII7vfZ0V/8APovr9DyXXyyPSO8MGGdJ7Oo8dwaG3Q+fVzFoGNdgIVWau1+ejt
         S3T7hXdt8onFjp8uqVWKb1qFUkwKHMBbLgMjmAoveyvKE6J2Vp78rGht07bnAKT4FHP9
         dQbOJ4qWMxXQrOm4Lth6AcwWo6RDmBeOIGGzPWPC0db6uRoluSKiXzJ9VdlmHbjR1B2e
         Nq6N/rB209twwmQQTjt41BQc8uRf+AJ5LfNpfzM2ejDX1HMv0Wf/iagBZcIeQcSxIRo1
         zDCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791024357; x=1791629157;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ezx4xzy/gAlLbYrRv684J3BP0hR2VYyaFcE+9qMDACQ=;
        b=iyZdlkzzRCfRMt0JHYw535kC7XEW944okUZGrf1vwfPvfYv6Wgqn0G+j7HxtpHoxxd
         cbO9J00dq21183Nizx/wngG49tmFpi0Rk6GMgZednIfDXC1sXCFvGVFFG63aS4W9OS/I
         7fZNsyjZXwod49ucJ3+AxwbOfoHF4ZXsjwUvVbnp57ekD8jvteYGtTetGVgnfLqt7MP5
         sOKvehKCEt/PknFbJ/hymOMjJH7zmMsmihvR+P2NHwHjDc7B3fA3j1u5ZjiTwhFrGw/1
         FpcZ7YLG+p0I+sKIPM6RXvOrjvYBcKv7v9vM0W0LjKslG7E+FYfzk+ZMAN4VFtBag/u3
         0CbQ==
X-Forwarded-Encrypted: i=1; AKwUvBx8NcnDGOWG2PJ4JwPXeIBQ1qD4DYLaxp6Maq/gAfWl03bEN2B8Kvetq8JrTgL9GB04/jPh5g+IpAw=@lists.infradead.org
X-Gm-Message-State: AFq9FYItIKyDIyDAEoCxbGwjK9LGx7BNf1lp6VUsssAspUjMUYLTE0h2
	i7QjlPIeQhqOKYdL0EuDd8eAr/yKOq5ccINcKSWtNpvZ1Gze1ZjJhxpOBeNVNbv64us=
X-Gm-Gg: AYBFou3SFVjEyet/ozg6mXIXAtDzHK2KghwQS49QsKWwwcLhttIFXmroOKZpSprr4pv
	F5GQ78vNzdtJ9BTNVGB5lIp1wNU8DboDbDzfXE2xabFZ2Avv2XOihuEVKWh/ZorWJ29SjZfcwLE
	BM02XE7L/JEMpu4qYC+MoirN57EZrGHamn3TFpOWS+pdLBqHL0SmB9tLJSIqSTpcM7vVq1uKa6E
	ureoHCUEWIpl3qkowTta7pW9wqimXZBVzfuKb+o4R6W5U8Qrse9A8qqcmVQ23qdjOhMlvWBW4m5
	x1tHpDFHQR+EH2vEYZM1Z7AvVnKwLNWErM1T4odbT+JlJgXobPpBpFv67iYAWeONwPwF71GwPzx
	pCAORcxQ9LhEw7djDsc/cgo1HYjipTTGQXIkWpiddFF9h1OGDUrml4vO0i9UYeRk2GjSzVlggV+
	ox7kgRii26AXl6QEiPkqkIyzwf1JPY/2GMvqIy8YPnQMffLwfSOJ1HzbuyY0I52YWAn918TDfsP
	z/OLVbH460=
X-Received: by 2002:a17:907:6d24:b0:c2d:ca8d:435a with SMTP id a640c23a62f3a-c2e4af80457mr432580266b.38.1791024356730;
        Sat, 03 Oct 2026 03:45:56 -0700 (PDT)
Received: from [192.168.0.167] ([109.77.86.130])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2e4cd26bedsm186675466b.34.2026.10.03.03.45.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Oct 2026 03:45:56 -0700 (PDT)
Message-ID: <80d0d390-a0ca-452f-b8fd-a7da85bdde92@linaro.org>
Date: Sat, 3 Oct 2026 11:45:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] dt-bindings: soc: rockchip: add rk3576 csidphy grf
 syscon
To: Amin Gattout <amin.gattout@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: Michael Riesch <michael.riesch@collabora.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Conor Dooley <conor.dooley@microchip.com>
References: <20260915-rk3576-dphy-v2-0-b56e68b54b8c@gmail.com>
 <rtlQmJQ4ykTc4dV6nFJIqsjY7h9hUEOCFQETkvIiKG5GSaRI0L45Rmi2FuzpULqJC8hFjPE_3D4kyuRqgJNOdA==@protonmail.internalid>
 <20260915-rk3576-dphy-v2-1-b56e68b54b8c@gmail.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20260915-rk3576-dphy-v2-1-b56e68b54b8c@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261003_034559_775964_BE98F3B5 
X-CRM114-Status: GOOD (  12.57  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 15/09/2026 11:42, Amin Gattout wrote:
> Document the syscon compatible for the General Register Files of the
> RK3576 MIPI CSI-2 DPHYs.
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Amin Gattout <amin.gattout@gmail.com>
> ---
>   Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> index 7bcb4e2f47ec..e94c83d7c138 100644
> --- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> +++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> @@ -32,6 +32,7 @@ properties:
>                 - rockchip,rk3568-usb2phy-grf
>                 - rockchip,rk3576-bigcore-grf
>                 - rockchip,rk3576-cci-grf
> +              - rockchip,rk3576-csidphy-grf
>                 - rockchip,rk3576-dcphy-grf
>                 - rockchip,rk3576-gpu-grf
>                 - rockchip,rk3576-hdptxphy-grf
> 
> --
> 2.43.0
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
