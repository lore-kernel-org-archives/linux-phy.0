Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58D5ACA0EFF
	for <linux-phy@archiver.kernel.org>; Fri, 30 Aug 2024 10:43:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wSRO6GGT+lQfsPQ/xv1zq2dwlsL3Ao/mHMYwQsMxI7U=; b=iGUHGnWNZbNkKT
	6dYVpp9a7KhorQQGQ31qk3lsymgWqvlTScSZfZijdF8EunxspkLkj2PZsFPiHCy6eITdR4YC2WZ3C
	VUFZLBdYzrDclU9aDvscyQ2y18gkjwL85Zi6lHsBTiLALV9fs7A+dVLHmDCvMAlscrC2O0V/c8Izl
	Xu8kUqXOypv1cPPPKOopK8RriZcJNNUiC0U6ryNEftE4V2OEIEYDbB/P6vl9cT9hd9ZnU1ogvPsPb
	lxRtKMQJ1VNniGL9TG43IPcEpQdzpOXWkj7na92/5PT6oqx/m/qAsMswc0PzOcSoggMxV4pjCONij
	RgJPvKwfT2SH9QcqEYBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjz6M-00000005sPj-42Ph;
	Fri, 30 Aug 2024 10:43:34 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjz55-00000005s6Z-1RHC
	for linux-phy@lists.infradead.org;
	Fri, 30 Aug 2024 10:42:16 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-533488ffaebso1983222e87.0
        for <linux-phy@lists.infradead.org>; Fri, 30 Aug 2024 03:42:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725014533; x=1725619333; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nnBATt0aCdgUC6P5YWHuzTeqt0mGO1EjpThrCVktSJU=;
        b=eJBuCdiJxV852Or7vmFc7rX6CZlQlUnQvYxpK6yQhha6OX6jWEGE/Dg4H5JK/PQAok
         X80L8GQQxTQ0bifFudLTiCnKNnlxeepo6FKjtHxkcaBIN2a8dkvJ+EAHZaptpb0k+3pY
         9412M88t6qTd/ZczyFlRo3yOjVxzcOUzmYkvj9RzIM73UkdJm0q8GlZNkw0ICwFeEtHV
         SvzDcXCg1a6gluDYwM0L40fECouOX6m8uYJA5hO0o7crc6j5DYdamGw6IAni3T2yIAXt
         EW40k9GlRlSbSwBHj/U7VfbWdmkz5twzfMKGPzreU9mHUwOU7Co09EWei5OUfVtNAezN
         xO3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725014533; x=1725619333;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nnBATt0aCdgUC6P5YWHuzTeqt0mGO1EjpThrCVktSJU=;
        b=OBDcwVPFtzzgQGYtlNgV8H1ONrpWRYFbmsJlHUYG7LZpar8EWzTKTNwNgZKmLyH9Mm
         UKtvm8l2Vwkl/CQO4cN77wj33OfPGm4ZJ3zOEPF+5ubMbPg+kEsWV/W1YGAbQ0fj+nNx
         ckefVw12MGFAtxSBs+3JILzDGYCteiXiaU+d24QBY2f98llIEbtfpQBvwtlxX8Exmnld
         FKmEImQ+Hq/Y2qFih6axp8DrQ90weekhieaM2dtAptoNJd6e0xctYhnf+hYc2IpUzlyF
         gHTfPpJ/yxAos4oeVcIkpNG+k3Q5GowcqFEU2lXVER0HyLVUgE6zeYc7u3nrc7bYMZH8
         dzEw==
X-Forwarded-Encrypted: i=1; AJvYcCUnTGAvnw/Z2vzRzljpKFoigj0szroNFuQeD+50N/KDSf8EilNpaGY3+JIUqoKFigGTzhke1QemkJ0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw1luomf+jWabMfBY1+ySKj38hF6R3uPkbGNrb2Aqb9WEgbTxCa
	M6qQMFWet4qnI/2bmO+QHKQFoEesaJ24bOdbfgf1Wpp66XDQiUkWg14yalfFVsk=
X-Google-Smtp-Source: AGHT+IHIVMMpPiudJNRkic59qjcS0uvC6Loc8Pvi0x8IGyPMyVB8soyXpzs69J1ZylJShtWwpCcRFA==
X-Received: by 2002:a05:6512:3c99:b0:52e:9f17:841a with SMTP id 2adb3069b0e04-53546af3048mr1391073e87.6.1725014532644;
        Fri, 30 Aug 2024 03:42:12 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5354079bb9dsm540503e87.21.2024.08.30.03.42.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Aug 2024 03:42:11 -0700 (PDT)
Date: Fri, 30 Aug 2024 13:42:10 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzk@kernel.org>, Johan Hovold <johan+linaro@kernel.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the X1E80100 QMP PCIe PHY Gen4 x4
Message-ID: <gvx3sdsdxigel3iwu7vgvvgxohvnaqq6suogsqojeumobhwhdk@5qct23m5ncda>
References: <20240823-x1e80100-phy-add-gen4x4-v3-0-b7765631ca01@linaro.org>
 <20240823-x1e80100-phy-add-gen4x4-v3-1-b7765631ca01@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240823-x1e80100-phy-add-gen4x4-v3-1-b7765631ca01@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_034215_435941_70053A2F 
X-CRM114-Status: GOOD (  15.87  )
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

On Fri, Aug 23, 2024 at 10:04:15AM GMT, Abel Vesa wrote:
> The sixth PCIe instance on X1E80100 can be used in either 4-lane mode or
> 2-lane mode. Document the 4-lane mode as a separate compatible.

As the patches were merged, it's too late for this series, but as a
note: we should think of a way to describe the PHY configuration without
changing the compatibility strings. The hardware stays the same, it's
just the number of lanes being wired that changes.

The obvious way to handle platform-specific differences is by using
num-lanes property of the PCIe host and then passing required
configuration (num lanes, max speed, etc.) to the PCIe PHY via
phy_configure() call.

> 
> Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
> Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> index 03dbd02cf9e7..dcf4fa55fbba 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> @@ -40,6 +40,7 @@ properties:
>        - qcom,sm8650-qmp-gen4x2-pcie-phy
>        - qcom,x1e80100-qmp-gen3x2-pcie-phy
>        - qcom,x1e80100-qmp-gen4x2-pcie-phy
> +      - qcom,x1e80100-qmp-gen4x4-pcie-phy
>  
>    reg:
>      minItems: 1
> @@ -118,6 +119,7 @@ allOf:
>            contains:
>              enum:
>                - qcom,sc8280xp-qmp-gen3x4-pcie-phy
> +              - qcom,x1e80100-qmp-gen4x4-pcie-phy
>      then:
>        properties:
>          reg:
> @@ -169,6 +171,7 @@ allOf:
>                - qcom,sc8280xp-qmp-gen3x1-pcie-phy
>                - qcom,sc8280xp-qmp-gen3x2-pcie-phy
>                - qcom,sc8280xp-qmp-gen3x4-pcie-phy
> +              - qcom,x1e80100-qmp-gen4x4-pcie-phy
>      then:
>        properties:
>          clocks:
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
