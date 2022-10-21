Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CDC0C433FE
	for <linux-phy@archiver.kernel.org>; Fri, 21 Oct 2022 00:50:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NWBYu1S08YP6zfWgGHNeMkjpfCG6TFDfaCNc0ZTIQwY=; b=W4vJb4kL/Vhw28
	Caz8UR2w5EvyYxAS3YoIzzzWkrZR+xIx605pZh9Smh9joDoTtHKjm1sPvy9OHGEnu4tLXNXTditq7
	5phbDL19zr+3G3jee38mxYfHDMsvLkKgAMOzODhcagWR1ToDUj5OYsN7LyBRiohFjlixenlVS7+p3
	Z0zyEV+lKTyQH+lIsYI4CP0VuSV4MEGLoqQV6qg/HnRgSJ+RbBG4fTtc8HvP39qg8PhK3+CKdWqCu
	4owvQnt1qaeAUNG0q3x96xoZjzfVarWTJOPOcEXaVKkE9mpu6BjHzJTgQDL4Wsf0vy+7lz68FEiLs
	/kUNmwRjzMMEcQ47/CWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olgEj-003Dhh-NM; Fri, 21 Oct 2022 00:50:09 +0000
Received: from mail-qv1-xf35.google.com ([2607:f8b0:4864:20::f35])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olgEg-003Dg3-Lw
	for linux-phy@lists.infradead.org; Fri, 21 Oct 2022 00:50:08 +0000
Received: by mail-qv1-xf35.google.com with SMTP id x15so876227qvp.1
        for <linux-phy@lists.infradead.org>; Thu, 20 Oct 2022 17:50:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DNhuHakSL+A+C95nv/zMK27Kss6ODk0L9tiW1PQtBR0=;
        b=wLqcY/sjAMnkPEwBatGvm+Q2YSCvv6BJKkwbiMpB43S31G+TFf7qj8wChiLYEseF50
         iXsQyJOmqmwUAK7oSzuN1yuD0UHLdfTyRetLW+gAX9i4v245SE1H7K3COCQm6m7IbHv/
         0tfMrHEbUOqPyFJ5nyWtneshzJbebIaCz/QOvpzrun68S9Sh71LCc6N/EIEaSrlKMcyF
         3WQfTnNLsZYbUDsCymrGX06q3Gppz1JpS1dVqhAcn67bT/BrMjzex6qtcf2F7cNcF8Fx
         tyWTAPz5wsKbQX7AMsoBlod8BrLGHsdcr66nXBM1Nfj5odUPcAihLOqrVK3FuVMn6K2e
         VPAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DNhuHakSL+A+C95nv/zMK27Kss6ODk0L9tiW1PQtBR0=;
        b=v6Rb0PSqcPmlIa36hWQWOW4to5aVpjNXbBBCF4Fh05VL6B5zwgbyRaoW9jviKuBlOZ
         /T4HBama3ma5b9MROFrzoiPGkKggtMLOLrX4eakPL2dY1HArBfqfDfNbSE5ijCNrVDaC
         mZL1kKNC3J+l8EmSN7lWT0vYa5/NqhP5deqclAuAaGi/Vi9JZArPz9bbT6Z05WlPwexn
         AqJ5BpoxOc+fyC02BOJ7r43SH/eXU0o1Hl3ZmMSIcN+yB7L5Xu+ImDayozyKgafLqKIV
         0uVangZ/I9/062K0Nkl+1HHI09xPFfGP9dozO3/JLmw6mcJlYXZMNYwqJWoetGGk7swJ
         9EPQ==
X-Gm-Message-State: ACrzQf3iam8Hgta6S+idxf95np2bDh6mETLMnfmSZy5VdGhQBXD/wOj5
	qrsWTTKIoZ/MNdujDzjyCz18sw==
X-Google-Smtp-Source: AMsMyM7swZnwLYLIkpvx9eQc6XXcJZPEDmpHNzly9yTXyyG2dSm5SDSgtDd75mPbfxF32tgdOipsBA==
X-Received: by 2002:ad4:5f4f:0:b0:4b1:db1e:6c01 with SMTP id p15-20020ad45f4f000000b004b1db1e6c01mr14267727qvg.100.1666313404703;
        Thu, 20 Oct 2022 17:50:04 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id p6-20020a05620a132600b006ee7923c187sm8265946qkj.42.2022.10.20.17.50.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Oct 2022 17:50:04 -0700 (PDT)
Message-ID: <2694afda-fe53-8f6c-85dd-390b42a39d93@linaro.org>
Date: Thu, 20 Oct 2022 20:50:02 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: renesas: Document Renesas
 Ethernet SERDES
Content-Language: en-US
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, kishon@ti.com,
 vkoul@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org
References: <20221019083449.933005-1-yoshihiro.shimoda.uh@renesas.com>
 <20221019083449.933005-2-yoshihiro.shimoda.uh@renesas.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221019083449.933005-2-yoshihiro.shimoda.uh@renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221020_175006_755449_BD49E1EF 
X-CRM114-Status: GOOD (  15.30  )
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

On 19/10/2022 04:34, Yoshihiro Shimoda wrote:
> Document Renesas Etherent SERDES for R-Car S4-8 (r8a779f0).
> 
> Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> ---
>  .../phy/renesas,r8a779f0-ether-serdes.yaml    | 54 +++++++++++++++++++
>  1 file changed, 54 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/renesas,r8a779f0-ether-serdes.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/renesas,r8a779f0-ether-serdes.yaml b/Documentation/devicetree/bindings/phy/renesas,r8a779f0-ether-serdes.yaml
> new file mode 100644
> index 000000000000..ea392cd6e947
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/renesas,r8a779f0-ether-serdes.yaml
> @@ -0,0 +1,54 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/renesas,r8a779f0-ether-serdes.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Renesas Ethernet SERDES
> +
> +maintainers:
> +  - Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> +
> +properties:
> +  compatible:
> +    const: renesas,r8a779f0-ether-serdes
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 1
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  '#phy-cells':
> +    description: Port number of SERDES.
> +    const: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - resets
> +  - power-domains
> +  - '#phy-cells'
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/r8a779f0-cpg-mssr.h>
> +    #include <dt-bindings/power/r8a779f0-sysc.h>
> +
> +    serdes@e6444000 {

Phy devices are usually named "phy" and you use it as a phy device. As
serdes I guess you refer to actual hardware implementation, but still
the role is phy, isn't it?

> +            compatible = "renesas,r8a779f0-ether-serdes";

Use 4 spaces for example indentation.

> +            reg = <0xe6444000 0xc00>;
> +            clocks = <&cpg CPG_MOD 1506>;
> +            power-domains = <&sysc R8A779F0_PD_ALWAYS_ON>;
> +            resets = <&cpg 1506>;
> +            #phy-cells = <1>;
> +    };

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
