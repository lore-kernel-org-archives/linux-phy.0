Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8068CF9C69
	for <linux-phy@archiver.kernel.org>; Tue, 24 Sep 2024 16:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=raYjfDboYckJkJ850+rR2kMH7pUNtzeMkYW6txWMLz8=; b=UP90dyoa47Ac/x
	BwUrNuUrGWvN7ZDKk7nBcUk3X2iah9xndximvFR/RRttq/I/p60NNUcrSlu5r3vEf6GEJza5Bk0ZQ
	RN/iBeZ6HcscwpsAqi5/mUWNe7MnJ1Otc5Rh4nAHiSVgwZxEK8/2NUS0SHJsActHopqk2+rSZduSH
	KxOT8K1TZ4wj+BBc9spLFEaZ1siAA2oak1zWE93jx8AjC3ML6P4Qkh2QmfcNbGyolam4AECrhUjzr
	QnG43dQOwgw/lApbtwdJUUzZgHTdB2Oxp4chfXGOPVNsqpuxXGdoFL24t4CJYOw0HNUg2KjSNa6Ep
	iom/EqH/+qEDqRJ7GE0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1st8c4-00000002s6l-2YLe;
	Tue, 24 Sep 2024 16:42:08 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1st8bh-00000002s2Z-32Kb
	for linux-phy@lists.infradead.org;
	Tue, 24 Sep 2024 16:41:47 +0000
Received: by mail-vs1-xe43.google.com with SMTP id ada2fe7eead31-49bcbf7bdb9so1930650137.2
        for <linux-phy@lists.infradead.org>; Tue, 24 Sep 2024 09:41:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727196104; x=1727800904; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wKFcq68krKcoUA32HXrqc6ME7X0w/Gnspu3t4IYxZ54=;
        b=S+w3hD5UkWD6tVWSqW9iIq55gpr+yy+ypM1gjrseXXEFmXLdWLfjgJjL+PXgZKKVIZ
         J5D5cfdteMfpkeXsA08gtxz1U3VguFctXnPuekbFEgN+jhdDZ4LUCVKzCwp+u1gthe8w
         1+QlVCL0fYivN8i/zNVpeAwlUkHgBKC9snny6bt28BMq0+RYOWUyNA4/e9JrhpU8jmkD
         /PUUHJfDYFojBbt9yiRyBhugIUF5ytur5CfnMUrTfqd9PBBfQDhVxAO8Uue/+vkwcSlS
         QcYdknAGL9DRFoEbImHNSNBukCCQVZJEmf+DxX7XUvKfSMfA19B20viY6AowWeHIBvcn
         3A1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727196104; x=1727800904;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wKFcq68krKcoUA32HXrqc6ME7X0w/Gnspu3t4IYxZ54=;
        b=wHz55OWfqdOGmwB9OkJVhtOCAlxFneZLrHQYXIm/ISVeuCexR//YQkDInx8ssQsbhi
         MAIXzQ9iOjLZBEEBLZzJ9tz9GJ73J4FpMgQ16Z6Jej1ljwqMdDIvNmG5GzQXkzhm4L+6
         vvVXHM1Gh9hyH333Rq5vYoz0+XKZoHW2Vo5GehcOn0to/OUnzSv92Y6iq/yhbkMRpULS
         a/ZDqzLWqfe50rUnF5XTXpO01Xat39g6T4Hm+MxQP1okL2DxpQrNnvOaGWQSJCLSKYTh
         qdDTcEDWIOGmClFxT4VCNJI+U81Ayi58QloVwwTdjXk7kMfY5Z9dXFcV8JahDq1pSDHl
         x0/w==
X-Forwarded-Encrypted: i=1; AJvYcCVoa+GuDvQ5c9piEWOu4xBHX+MPR93eQipeG9Fb/XhJiZRfhKwy7H3ZvRHs5ao/rGv1St46eNHdd7A=@lists.infradead.org
X-Gm-Message-State: AOJu0Yybmw0qbsQrQho2/9yrVDZ87PDMq5fQ7hODjtIPelKjnNibqrUy
	Sv85PYHVExd00YwsafEClV/F5gbKZUlU9p6g1DjtGCua77CLzV6PDTM+/4eZNeE=
X-Google-Smtp-Source: AGHT+IEbKvtyjKhabAyEh03JO+iNT62nJhG9gP0ReHnRFsz8uhKocJKHDYfMutFSgoagOKKUmV2zYw==
X-Received: by 2002:a05:6102:e0a:b0:492:876e:6d15 with SMTP id ada2fe7eead31-4a15dc99b01mr152354137.8.1727196103814;
        Tue, 24 Sep 2024 09:41:43 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff21:ef80:4518:32:3b61:babd])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-4a1517c0cacsm1003262137.19.2024.09.24.09.41.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Sep 2024 09:41:42 -0700 (PDT)
Date: Tue, 24 Sep 2024 18:41:35 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: add NXP PTN3222 eUSB2 to USB2
 redriver
Message-ID: <ZvLrv4rW6vbOws8E@linaro.org>
References: <20240830-nxp-ptn3222-v2-0-4c6d8535cf6c@linaro.org>
 <20240830-nxp-ptn3222-v2-1-4c6d8535cf6c@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240830-nxp-ptn3222-v2-1-4c6d8535cf6c@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_094145_807791_5FCF8DED 
X-CRM114-Status: GOOD (  16.82  )
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

On Fri, Aug 30, 2024 at 11:20:45AM +0300, Dmitry Baryshkov wrote:
> The NXP PTN3222 is the single-port eUSB2 to USB2 redriver that performs
> translation between eUSB2 and USB2 signalling schemes. It supports all
> three data rates: Low Speed, Full Speed and High Speed.
> 
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

FWIW:

Reviewed-by: Stephan Gerhold <stephan.gerhold@linaro.org>

> ---
>  .../devicetree/bindings/phy/nxp,ptn3222.yaml       | 55 ++++++++++++++++++++++
>  1 file changed, 55 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/nxp,ptn3222.yaml b/Documentation/devicetree/bindings/phy/nxp,ptn3222.yaml
> new file mode 100644
> index 000000000000..acec5bb2391d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/nxp,ptn3222.yaml
> @@ -0,0 +1,55 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/nxp,ptn3222.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP PTN3222 1-port eUSB2 to USB2 redriver
> +
> +maintainers:
> +  - Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - nxp,ptn3222
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  vdd1v8-supply:
> +    description: power supply (1.8V)
> +
> +  vdd3v3-supply:
> +    description: power supply (3.3V)
> +
> +  reset-gpios: true
> +
> +required:
> +  - compatible
> +  - reg
> +  - '#phy-cells'
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        redriver@4f {
> +            compatible = "nxp,ptn3222";
> +            reg = <0x4f>;
> +            #phy-cells = <0>;
> +            vdd3v3-supply = <&vreg_3p3>;
> +            vdd1v8-supply = <&vreg_1p8>;
> +            reset-gpios = <&gpio_reset GPIO_ACTIVE_LOW>;
> +        };
> +    };
> +...
> 
> -- 
> 2.39.2
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
