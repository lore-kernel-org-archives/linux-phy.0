Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA539C433F5
	for <linux-phy@archiver.kernel.org>; Fri, 29 Apr 2022 21:02:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CBrWj4si0kwVhqLC0bs+OQmZQJIC0kATQSo9n6AvCFQ=; b=OMzH0XIzjpvkLD
	VOLJIUiLm138Purqmd/Qx793q5QnPKsZ3ROxTnDVTWnEofUYsc3KbJwMNNkYRznQUNbQckD2lqdiD
	9D6Y6cas61ki4plpZUuZdKXXaDbfy4VKUtik9QMbZH7Vhu3AHSwny0exLZDBvXrAxS5hw9EgTQ+T+
	p9/QYw4BEdSwsRT7ZA5Ge6SghtTlcyhX8VT4+6xtbwa1C9VlnZOyzzeoC3U3JHcbSJr401zHd5gyF
	Wcbhkv1tLUVARtd6CvIGqqHqVHco5WoBDFDBOddCalpnss2W8UjRMWzE3YW3ia8YPfKwMrEIf7/h9
	0ahrQK72zwcFaxT/l5TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkXl9-00Cgte-1I; Fri, 29 Apr 2022 21:02:39 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkXif-00CfcI-4K
 for linux-phy@lists.infradead.org; Fri, 29 Apr 2022 21:00:07 +0000
Received: by mail-ej1-x629.google.com with SMTP id i19so17555417eja.11
 for <linux-phy@lists.infradead.org>; Fri, 29 Apr 2022 14:00:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :references:from:in-reply-to:content-transfer-encoding;
 bh=Do/g5QMdAtl98rHVTq2xIqPEJqkCyA4fP1f+ylw/eqk=;
 b=EF6qOKputMgD0IZFycvxJwN+R4VZEbRXVebLIEcsMZoOpexnwLPc6bFOBOsbsFnRgb
 cIMiPnPsgRdOdIMvXZyjMN2wzCfdB/+FXSTglwrd+o/2JjREmt8ccVx1euJ/DuV3wDqI
 Q9OgZtdp8WNM0sQ/N0rdVYxODxuDLFYLND7xXUJWGpzAmOBfBDrvFDs+xEnj5qv2LTfx
 K7+EVPJMaW4odSGIHM2MvLE/UJaxmmmP24eNXGcncLnRqXUloagIiOfC1/hZ1G0lkLHI
 56UfRmsgVpaEouYR5HnXiD9eXjkHxlW9+JpUeVrmZuu0vVlV8bMuefHKfc0yMVoK90k8
 ez2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=Do/g5QMdAtl98rHVTq2xIqPEJqkCyA4fP1f+ylw/eqk=;
 b=bHfBWf8xxj1ipRJvRSxhmclu1mzKrXOanwcsVNKY3JE8r9mBANxq1KzdMry1Sn9VYg
 MuupdEwK9YUIwZrRhRxxQqNXAFdclPT6kNBMhhI2FwTEFc++JvE/XiNMvcva53eQH0Uf
 KIO4GqWBWF91bCapBUQEV+FXJCysnJ+PzmvMoTtpIhfCmg4j8H3tR8urNhMC0LnAImyC
 UvcSb2LgKI0qpo67vgLRC71rpcLSMvCuFAw34zTIvw3f7XeQtXfCm7AJVtKbkqJ/3Y98
 MqsGd0ibMto/y1GkeH2AB4C0fEb+Se561aa7ONUrZxlJR3d0pPxe89IWg4aLfG3fxDyp
 Xhrw==
X-Gm-Message-State: AOAM530lujmP+bwq0jQLNtBQXoDCnMQ4KZVGlB74PQ/3B5E9oXzxMKjR
 J6yYX4Jwxkr5jb81qQXNZ4nWIQ==
X-Google-Smtp-Source: ABdhPJzqlq8UgeGohOe1HyyN6u6LL1soeNHr0EDPcvh5R7//tAd0Dwc+MEBmd5tt/SS296qmwEat7Q==
X-Received: by 2002:a17:907:960a:b0:6f4:91d:3652 with SMTP id
 gb10-20020a170907960a00b006f4091d3652mr1138680ejc.44.1651266001357; 
 Fri, 29 Apr 2022 14:00:01 -0700 (PDT)
Received: from [192.168.0.176] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 jz28-20020a17090775fc00b006f3ef214e40sm973973ejc.166.2022.04.29.14.00.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 29 Apr 2022 14:00:00 -0700 (PDT)
Message-ID: <47202648-bd65-cbba-8674-aed7eb0c46d2@linaro.org>
Date: Fri, 29 Apr 2022 23:00:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 2/2] dt-bindings: phy: Add bindings doc for Sunplus
 USB2 PHY driver
Content-Language: en-US
To: Vincent Shih <vincent.sunplus@gmail.com>, kishon@ti.com,
 vkoul@kernel.org, p.zabel@pengutronix.de, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 devicetree@vger.kernel.org, wells.lu@sunplus.com
References: <1651215656-19024-1-git-send-email-vincent.sunplus@gmail.com>
 <1651215656-19024-3-git-send-email-vincent.sunplus@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1651215656-19024-3-git-send-email-vincent.sunplus@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220429_140005_223499_658306F0 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
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

On 29/04/2022 09:00, Vincent Shih wrote:
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/sunplus,sp7021-usb2-phy.yaml
> @@ -0,0 +1,73 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (C) Sunplus Co., Ltd. 2021
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/phy/sunplus,sp7021-usb2-phy.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Sunplus SP7021 USB 2.0 PHY Controller Device Tree bindings

Drop Device Tree bindings

> +
> +maintainers:
> +  - Vincent Shih <vincent.sunplus@gmail.com>
> +
> +properties:
> +  compatible:
> +    const: sunplus,sp7021-usb2-phy
> +
> +  reg:
> +    items:
> +      - description: UPHY register region
> +      - description: MOON4 register region
> +
> +  reg-names:
> +    items:
> +      - const: phy
> +      - const: moon4
> +
> +  clocks:
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 1
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  nvmem-cell-names:
> +    description: names corresponding to the nvmem cells of disconnect voltage
> +    const: disc_vol
> +
> +  nvmem-cells:
> +    description: nvmem cell address of disconnect voltage
> +    maxItems: 1
> +
> +  sunplus,disc-vol-addr-off:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: the otp address offset of disconnect voltage
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - clocks
> +  - resets
> +  - "#phy-cells"
> +  - nvmem-cell-names
> +  - nvmem-cells
> +  - sunplus,disc-vol-addr-off
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    sp_uphy0: uphy@9c004a80 {

Generic node name, so either phy or usb-phy.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
