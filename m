Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F541C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 29 Dec 2021 15:33:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oz9CBJl/vQzT6JgZfYiUhutmKNfm1aCYV1lXJkdMHXE=; b=4r/BuKWMMVAJLL
	SbdN0rbNmGe7AFjT2UZfeTMXh8U8OgRXGyFtJmEAuyhMp1MaC+FY33kcOfPgP6hMThCfiZXC5dkLH
	plyhiwY8DkmylC50vVL9ZbPVj+VrwtARyTgAUhMfPuMVhA8n+dMIFJem4yNk+ZmuJKsgCE6e5rx4b
	EfZ5gGnH8sLGe4TpVJ9yoJq4StckN1HVrta8y0e70AdB2oeK3bpSGXzAZhAsjGW+/K4ijidn4n+Y1
	aMypSZeuYh6B+GFQ/A5U/F+hFILpSz3c7e9dhIXfBaz46VaM30/sBHaZC+y2aI5wW6fUjQnJpuPUw
	nwZmi4ljwD4JTM7FtVkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n2aws-0031fc-SJ; Wed, 29 Dec 2021 15:33:06 +0000
Received: from mail-ot1-x32a.google.com ([2607:f8b0:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n2awq-0031ex-BX
 for linux-phy@lists.infradead.org; Wed, 29 Dec 2021 15:33:06 +0000
Received: by mail-ot1-x32a.google.com with SMTP id
 r10-20020a056830080a00b0055c8fd2cebdso28798251ots.6
 for <linux-phy@lists.infradead.org>; Wed, 29 Dec 2021 07:33:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=bEVREXqmH89MbzmWrN4QA+dq6opc4nWIdeFIogoG25s=;
 b=RTFfsdB2uHBYB6NExwweLLpzosyKhW44qS26y7DFowJZzwMDzXBlFLOYojA2LkuTIN
 EceuNyl22Trg1sHmMGE3IHbMM6/MVvXgD3oVBSPCcN6nzf/uAg17aEOyGQTYCRALPt/u
 aM0ClQSaFnUhFy8Dn/Tml4jDWiQnxOXACQxWt2JsjdfoPN96zGlG60/CPdWcLP2xLOz0
 gQUDQd600NHbXxaihims1Dfmwec9qVhYCtq1SlkYoV1gGq7alR4H4BBMRhUlUVBOssML
 x/3ZqEDPP/zCL8eL0/NKyOxLva4I1gWkrAO5flxh3zg1zQ0fCEzmu4Vc+E0XXhs24Saw
 CzXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=bEVREXqmH89MbzmWrN4QA+dq6opc4nWIdeFIogoG25s=;
 b=KRgLVejBaaEdB8h4PnQuXqjTy1vSdgmI2FmYU7krJMS72P7aYT0zMem0MDDxNDAieO
 vi3SrQ95/vw/BmO5tqMaA8Fvq8+WY6neG+ueiPEpW7A1F4I5WEaa5e+bsS81XChHpwa1
 PBGC3NwJ2yBpj2MU4O2xmpE76nrFqz8ziVI1dkWXohfRvIWS6+q2hWNwqeuVGFlt+wG3
 SESfedZqxnv0cuNdboGbS5SSzd8suc88rJl6bts7Z56AJxppOHQP58pytbked9enMjZh
 fTWKjM8W0berVBYeVj275msfUI9WCzbsJ1KRM3CMFq3ke6AdBCnVfLSd5U9HolqHpA7L
 zX7g==
X-Gm-Message-State: AOAM5339xHB6zAVvkQjCOnQo7L232L7wjJUez0RjsUofOutVekIjJI7J
 mNBD9ABvRtyQv0XxuvYeb8f0bw==
X-Google-Smtp-Source: ABdhPJz7bIQYwCUhTRuh/qTGG0rfJw4FKVSoZoVnl9SZrPB35j1RqA4/G6fChoJwqmI09cwCo+YPbg==
X-Received: by 2002:a9d:6a56:: with SMTP id h22mr19063881otn.135.1640791982466; 
 Wed, 29 Dec 2021 07:33:02 -0800 (PST)
Received: from ripper (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id r5sm3408543ote.53.2021.12.29.07.33.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Dec 2021 07:33:02 -0800 (PST)
Date: Wed, 29 Dec 2021 07:34:02 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: David Heidelberg <david@ixit.cz>
Cc: Andy Gross <agross@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 ~okias/devicetree@lists.sr.ht, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: convert Qualcomm USB HS phy to yaml
Message-ID: <Ycx/6gXhd6hnYJqP@ripper>
References: <20211224170242.57816-1-david@ixit.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211224170242.57816-1-david@ixit.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211229_073304_436558_530CD5DF 
X-CRM114-Status: GOOD (  18.61  )
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

On Fri 24 Dec 09:02 PST 2021, David Heidelberg wrote:

> Conversion of Qualcomm USB HS phy documentation to yaml.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>

Very nice to see your efforts in this area David!

Just some minor nits below.

[..]
> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> new file mode 100644
> index 000000000000..202c42754188
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> @@ -0,0 +1,86 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/qcom,usb-hs-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm's USB HS PHY binding description
> +
> +maintainers:
> +  - Bjorn Andersson <bjorn.andersson@linaro.org>
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - qcom,usb-hs-phy-apq8064
> +          - qcom,usb-hs-phy-msm8916
> +          - qcom,usb-hs-phy-msm8974
> +      - const: qcom,usb-hs-phy
> +
> +  clocks: true
> +
> +  clock-names:
> +    oneOf:
> +      - items:
> +          - const: ref
> +          - const: sleep
> +      - items:
> +          - const: sleep
> +          - const: ref

Can't we just pick one of them?

> +
> +  resets: true
> +
> +  reset-names:
> +    oneOf:
> +      - items:
> +          - const: por
> +      - items:
> +          - const: phy
> +          - const: por

How about doing the:

items:
  - const: por
  - const: phy
minItems: 1

> +
> +  v1p8-supply: true
> +
> +  v3p3-supply: true
> +
> +  extcon: true
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  qcom,init-seq:
> +    $ref: /schemas/types.yaml#/definitions/uint8-array

It's better to use the uint8-matrix, as that allows you to describe the
value pairs as well. See e.g. st,adc-diff-channels in
iio/adc/st,stm32-adc.yaml as an example.

> +    description: |

I think you can omit the '|'.

Regards,
Bjorn

> +      Should contain a sequence of ULPI address and value pairs to
> +      program into the ULPI_EXT_VENDOR_SPECIFIC area. This is related
> +      to Device Mode Eye Diagram test. The addresses are offsets
> +      from the ULPI_EXT_VENDOR_SPECIFIC address, for example,
> +      <0x1 0x53> would mean "write the value 0x53 to address 0x81".
> +
> +required:
> +  - clocks
> +  - clock-names
> +  - resets
> +  - reset-names
> +  - "#phy-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    otg: usb-controller {
> +      ulpi {
> +        phy {
> +          compatible = "qcom,usb-hs-phy-msm8974", "qcom,usb-hs-phy";
> +          #phy-cells = <0>;
> +          clocks = <&clk 0>, <&clk 258>;
> +          clock-names = "ref", "sleep";
> +          resets = <&gcc 10>, <&otg 0>;
> +          reset-names = "phy", "por";
> +          v3p3-supply = <&pm8941_l24>;
> +          v1p8-supply = <&pm8941_l6>;
> +          extcon = <&smbb>;
> +          qcom,init-seq = /bits/ 8 <0x1 0x63>;
> +        };
> +      };
> +    };
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
