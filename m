Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14F2DE7718B
	for <linux-phy@archiver.kernel.org>; Sun, 29 Dec 2024 04:42:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jDkdg4Mpea6d5zGzhbIO4FfLXTZeOPkQJBx+XeA7Lt4=; b=kbM5WQlEaMdH9x
	m8hjOPDC6hlyd0i+KT+aGrdmjT9n1qvrXcGY5ZlyMcC9tEoIQ8BkxMlvGVjhPmUUh159FDDdAFtwd
	LfI+VfIPn+HtXFDBxjZx0UWXQN8AWaabpLMKWfyTw9oZ7WKKNFRgyGMBbehxUEHJZVTkte/ykFKvr
	ISX8r3/ndsNCcKEgBD5KoTS4//IGfyfVqYkhUo3gcc7wOP+9B7PccqQfrEYqHDVGQwdUdJAYhArSv
	vByFpA8fgB1zkfln+AQ7NKlFIonwGoWE+lyX08e2OMwY0EE8shswx7taqCCLHm3SIn7iUZVIopHNb
	BfSoUTb5d/s/HXTWtYKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRl8b-00000002q2T-3m2q;
	Sun, 29 Dec 2024 04:42:49 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tRl8Y-00000002q1z-3qR4
	for linux-phy@lists.infradead.org;
	Sun, 29 Dec 2024 04:42:48 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-540254357c8so8431020e87.1
        for <linux-phy@lists.infradead.org>; Sat, 28 Dec 2024 20:42:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735447364; x=1736052164; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=49KnvXyqtzHNP5zpXwkwN+VDBQ2sz7fI/cBjo8ecRUM=;
        b=kLUI3/F0rBRjTCv3L38AMS5mP6U30AlgOufYf8qutpMa97GxlGOeEOEWGK3zh6p4mX
         be3hbe1av6o85m+EmnWYYSZMNU7Cbi89vlWHBXALafEy1jmhne9H9z24xS41WPRQyH2V
         8iqDr5/bYhlslE/GDEBHxOKy2414ARhjwLHol3N8dYnPAM8powuxmMSRaBcYmgUzLACu
         qAILrluEbpqxQPjt9XHBcuBzkbDKDjjPEdvqP1ajNiG30WU/i5lX6DQcS1Af9ieaUb93
         aHobN1Ms801m53SWoJ2FAI0FCFX7Z8kh/vpA/3GAo2gRFQ1IEXLAiSWl37ud3hXs4Jlu
         zVIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735447364; x=1736052164;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=49KnvXyqtzHNP5zpXwkwN+VDBQ2sz7fI/cBjo8ecRUM=;
        b=RFsYJJwkvsECxHW+gRqwqHFSmmH8AqtkPr35vkijiy2b/NGzJHumpvacMAqqMvomi1
         4xXkqalFSbet13vGdeFiOUTy0tPhK6jIk9vfOFmPfvd9Q2qJKUHGG9CtOKjyfqF7JEjn
         s7WNzyTw1Cawe6oDbXzstmzMMygy3zHmUvqyJ4EbpB4OFQSvoq5uvyQRDiBkiaqNmXOK
         X+i3+3Jf4h3LAr5woQxJUlEHgLrCZdYDkCZIbZrW0w7bVFIhwCPFH1/5udRQZrNMY1Q2
         rkEJevqBWgMdhnfr4xXjaG/DJcgGo0lp/i21QGJPXeo/ALIL7nT3jCWaasL/VTANJZ7Y
         Iivg==
X-Forwarded-Encrypted: i=1; AJvYcCXNF+9raRYIRvU6ycmd/i9OxGnVk9j+MSPVQVeg0SCQfHCH9tA4hjhcirVK7vHGZ8Z0FGusvLopfXA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx9Mvx7XWrTePFhQkszRccUm1J2vi5c77Z4Rpn65DqmpXt5Yyt/
	LvTFAzhiI9/2/sNaJbtdSEqnV555VsMyr87Chyf48ch6Mvw3HGsv/Ql7D98q3y0=
X-Gm-Gg: ASbGncu1Myf+UrggGM6+aEUeI4tO0QzVPZQSd8pd8SGPGf0r3AXeCeSe+k7dJi7GSQo
	8ypkN47vAi9Zb/ElRRBRabOmtn1oVl7ObJxeksiZwQiGpTk39iUEZOUw/1LY4Igo/+GROQyMHQt
	iG8ncA/v9p/ODB/C7KLElGa0eeZ50psIhUO2/Y6mGkRPn8BQkEVYT60aEFI+8uc3tbNO+1MSspg
	UGkZ5vvTBhZ0Wusz9yKENT1PreVJeLtloUGb0SgNTRPNCbx8HGZUrTtqsyM181VwwOGvhFwS20J
	EXQ9Ht3lvQKQ31nrjb3Js4zjFWnCOJA3CBI0
X-Google-Smtp-Source: AGHT+IHofLwFYxWucuHyLIawAriYNYKQ/SrKehOlm3Ec2J5KACyiss5kzgeMpgISL832D3TRqtyLHg==
X-Received: by 2002:a05:6512:3e23:b0:53e:12dc:e805 with SMTP id 2adb3069b0e04-54229582252mr9675190e87.45.1735447364447;
        Sat, 28 Dec 2024 20:42:44 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-542238301e0sm2834926e87.248.2024.12.28.20.42.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Dec 2024 20:42:43 -0800 (PST)
Date: Sun, 29 Dec 2024 06:42:40 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Yongxing Mou <quic_yongmou@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 4/5] dt-bindings: phy: Add eDP PHY compatible for
 QCS8300
Message-ID: <kz5qakmiy7n72p5yrrkgcjrmtvwl7knnkbzmh44g6cfunpjxad@3titlwwt32ux>
References: <20241226-mdssdt_qcs8300-v2-0-acba0db533ce@quicinc.com>
 <20241226-mdssdt_qcs8300-v2-4-acba0db533ce@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241226-mdssdt_qcs8300-v2-4-acba0db533ce@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241228_204246_991934_748EF7F8 
X-CRM114-Status: GOOD (  14.22  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Thu, Dec 26, 2024 at 05:40:48PM +0800, Yongxing Mou wrote:
> Add compatible string for the supported eDP PHY on QCS8300 platform.
> QCS8300 have the same eDP PHY with SA8775P.
> 
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> ---
>  .../devicetree/bindings/phy/qcom,edp-phy.yaml         | 19 ++++++++++++-------
>  1 file changed, 12 insertions(+), 7 deletions(-)

Everything else is display, this one is PHY. Consider separating this
one to a separate series.

> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> index 293fb6a9b1c330438bceba15226c91e392c840fb..eb97181cbb9579893b4ee26a39c3559ad87b2fba 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> @@ -16,13 +16,18 @@ description:
>  
>  properties:
>    compatible:
> -    enum:
> -      - qcom,sa8775p-edp-phy
> -      - qcom,sc7280-edp-phy
> -      - qcom,sc8180x-edp-phy
> -      - qcom,sc8280xp-dp-phy
> -      - qcom,sc8280xp-edp-phy
> -      - qcom,x1e80100-dp-phy
> +    oneOf:
> +      - enum:
> +          - qcom,sa8775p-edp-phy
> +          - qcom,sc7280-edp-phy
> +          - qcom,sc8180x-edp-phy
> +          - qcom,sc8280xp-dp-phy
> +          - qcom,sc8280xp-edp-phy
> +          - qcom,x1e80100-dp-phy
> +      - items:
> +          - enum:
> +              - qcom,qcs8300-edp-phy
> +          - const: qcom,sa8775p-edp-phy
>  
>    reg:
>      items:
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
