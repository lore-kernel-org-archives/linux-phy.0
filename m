Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED979C43334
	for <linux-phy@archiver.kernel.org>; Mon,  6 Jun 2022 10:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zNu8cQ0oT/IY9LvcVT+FzqQMtVKJtT7LkL00d+Gpvq0=; b=4SHlJu1vWQjngB
	i08MCXZ0z+ESxv/BSQv/qd/UtAzrgl2l/PWz1VEnjQ+BCkSYBG+rX8+dF0ca3EkvBY84Q9AHunV0I
	r64uXXzGMBRYfLB2t7LCHKrPj9rNNLBg/w3m6ZMcJzQGZN7aZ9dsxITwOtE4+RSfW9KkyRLWImWrE
	bBQt02msoPZLcLj2K+UHxDiQHuGixf3bRnmnYTmhL6an6ieOOmnBBbgPEOF8SxLf9ALfA9DHvpGWM
	aIWbkZQGr7A73jJCdbSfku053qB4ynchKpfiom3ZiSy2QxXLyqlMvWJt5kZpWMqEwzgQbuz3ppaYB
	nilE2LqE+c/BG/Tk2gww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ny9nS-000grV-3C; Mon, 06 Jun 2022 10:17:18 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ny9kd-000fYs-6H
	for linux-phy@lists.infradead.org; Mon, 06 Jun 2022 10:14:25 +0000
Received: by mail-ed1-x532.google.com with SMTP id w27so18090457edl.7
        for <linux-phy@lists.infradead.org>; Mon, 06 Jun 2022 03:14:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=BkH5Y5j/4diyxC4BxZO4A1oyviqTC8HdJoLfxxc2uC0=;
        b=JDHsJs2As/HiUSVG6Jc2zao2gEZhqwTSDMAMoS2looKDYr21f49v97yHQ3pV4sMDqy
         vRYp+WFd9g346m2ZlrUsuhtg4/R1e/PlRZnlZWXR6/G6WMCeUFALGba/oXPHraJaQWVW
         i61aJMJyXm6nyUEgf93zRqoM8eW39gQdUcSeytyM5aWqQfBMogZF032e6xDIOcfTee4q
         m3NDN+uypgctVRFXqBuY0gcbzUmlMFnF8ctPfFO4+6QuW+hNutDv1ZJjwxSfqhgvWTNw
         njEeEbwWKlFC2HG4JStkfHlMv5zdhf1jq+I6+SQte0KNn37clYLikv64rk2NZK/Bgsw9
         OXcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=BkH5Y5j/4diyxC4BxZO4A1oyviqTC8HdJoLfxxc2uC0=;
        b=cHF38Av7HqGmyw/OwIEi9ZRlH8WeJJxuojNIJIpmDpIM/AYRiQAo78aEeWsz5/dx74
         mmGuUSEj3qhiTaSMfyhlSOF8U/zcJE+awgfA/g/AHoyRjMOqjSglFee8coUEGR/IuoJP
         9pxx0Q+tVkG6ctza6HzQsdZ7E4HU4qldczWk5+obvZp52LcjqwCtAoQNZGIo4lKucB7u
         wyWtY4Mqo6oFj8q34lbJErDOdm0v5OlWsOhbiwZB8/mxIoKCieTDRJkJiUh258yX0N5l
         kvPgHpoHPE5KGT1O/IV2rAUo5jjfhdsmkROZcYQsnR3/j9aCVIGidoh54KViXQJT37Rx
         Q0Nw==
X-Gm-Message-State: AOAM531HDvriS6wkcsKdD0dYOYiijq6hh9aduTIldgITiZb7WITXHhWg
	MRalyJ3NjO9rY3Rm5avzcGfrKg==
X-Google-Smtp-Source: ABdhPJyihbUPMb1yzM0sumOLqAsH/9XFxEOokF/wNE+hvrWNaIwgvk2Az0zFUc4w0QtiT60n6ZBIug==
X-Received: by 2002:a05:6402:3899:b0:42d:d79e:acef with SMTP id fd25-20020a056402389900b0042dd79eacefmr25822942edb.12.1654510461646;
        Mon, 06 Jun 2022 03:14:21 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id a26-20020a1709062b1a00b006f3ef214db4sm5268472ejg.26.2022.06.06.03.14.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jun 2022 03:14:21 -0700 (PDT)
Message-ID: <45aa26be-625e-47eb-c21f-92497e60b6dd@linaro.org>
Date: Mon, 6 Jun 2022 12:14:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 2/5] dt-bindings: phy: Add ARTPEC-8 PCIe phy
Content-Language: en-US
To: wangseok.lee@samsung.com, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>, "kishon@ti.com" <kishon@ti.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "jesper.nilsson@axis.com" <jesper.nilsson@axis.com>,
 "lars.persson@axis.com" <lars.persson@axis.com>
Cc: "bhelgaas@google.com" <bhelgaas@google.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "kw@linux.com" <kw@linux.com>,
 "linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>,
 "kernel@axis.com" <kernel@axis.com>, Moon-Ki Jun <moonki.jun@samsung.com>,
 Sang Min Kim <hypmean.kim@samsung.com>, Dongjin Yang <dj76.yang@samsung.com>
References: <20220603015431epcms2p6203908cebe6a320854136559a32b54cb@epcms2p6>
 <CGME20220603015431epcms2p6203908cebe6a320854136559a32b54cb@epcms2p6>
 <20220603023158epcms2p6949f6cd93926b9e811e1b4d52fbef91b@epcms2p6>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220603023158epcms2p6949f6cd93926b9e811e1b4d52fbef91b@epcms2p6>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220606_031423_309293_6B65EA7B 
X-CRM114-Status: GOOD (  16.44  )
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

On 03/06/2022 04:31, Wangseok Lee wrote:
> Add description to support Axis, ARTPEC-8 SoC.
> ARTPEC-8 is the SoC platform of Axis Communications
> and PCIe phy is designed based on SAMSUNG PHY.

This does not look like wrapped in Linux commit style.
https://elixir.bootlin.com/linux/v5.18-rc4/source/Documentation/process/submitting-patches.rst#L586

> 
> changes since v1 :
> -'make dt_binding_check' result improvement
> -Add the missing property list
> -Align the indentation of continued lines/entries
> 
> Signed-off-by: Wangseok Lee <wangseok.lee@samsung.com>
> ---
>  .../bindings/phy/axis,artpec8-pcie-phy.yaml        | 70 ++++++++++++++++++++++
>  1 file changed, 70 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/axis,artpec8-pcie-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/axis,artpec8-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/axis,artpec8-pcie-phy.yaml
> new file mode 100644
> index 0000000..ab9766f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/axis,artpec8-pcie-phy.yaml
> @@ -0,0 +1,70 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/axis,artpec8-pcie-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ARTPEC-8 SoC PCIe PHY Device Tree Bindings

Same comment as patch #1.

> +
> +maintainers:
> +  - Jesper Nilsson <jesper.nilsson@axis.com>
> +
> +properties:
> +  compatible:
> +    const: axis,artpec8-pcie-phy
> +
> +  reg:
> +    items:
> +      - description: PHY registers.
> +      - description: PHY coding sublayer registers.
> +
> +  reg-names:
> +    items:
> +      - const: phy
> +      - const: pcs
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  clocks:
> +    items:
> +      - description: PCIe PHY reference clock
> +
> +  clock-names:
> +    items:
> +      - const: ref_clk

Same comment as patch #1.

> +
> +  num-lanes:
> +    const: 2
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - "#phy-cells"
> +  - clocks
> +  - clock-names
> +  - num-lanes
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    artpec8 {

Same comment as patch #1.


> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +        pcie_phy: pcie-phy@16c80000 {
> +            compatible = "axis,artpec8-pcie-phy";
> +            reg = <0x0 0x16c80000 0x0 0x2000>,
> +                  <0x0 0x16c90000 0x0 0x1000>;
> +            reg-names = "phy", "pcs";
> +            #phy-cells = <0>;
> +            clocks = <&clock_cmu_fsys 53>;
> +            clock-names = "ref_clk";
> +            num-lanes = <2>;
> +        };
> +    };
> +...


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
