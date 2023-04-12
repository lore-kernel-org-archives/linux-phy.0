Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A71C3C77B6E
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 08:28:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nkgmDU6psbqYwzDnJey2UkMBi7t/qmGojeKMCB3mWsw=; b=hKJ3gCdj/S3fri
	pQPMvg/4pvK8Abbp0VbOPlePa9mHmgG0IhbWY176aULn9NPR9UT9j0IiWEA2TZ8dTXB/i0LhRgkXJ
	k8P36aYzXx2aApKujJ03wfVp8BGiKYuFPAoTimKmB+lSkQWs4VXv8qHf+A16KSfnVT2SDE0J9Uc8L
	ZUMLfZhrvlqSDNR21VceZY1Oxb+jkGa2N+XoJ1eC6yPiTOWURUkoRtB6ARZbqCErbKweQqZfcuMcq
	lRenS7ua+hQWR+a/IoB9fsDsgOTj/qluOsHXFNV1DPYyblxrtiGvJwU96zy83vLPTeV/NGVt/7UWz
	pGCXzU5oU7QUPcJqzw6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmVqG-002FwV-14;
	Wed, 12 Apr 2023 08:28:36 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmVqD-002Fvh-1w
	for linux-phy@lists.infradead.org;
	Wed, 12 Apr 2023 08:28:35 +0000
Received: by mail-ej1-x62b.google.com with SMTP id ga37so27133109ejc.0
        for <linux-phy@lists.infradead.org>; Wed, 12 Apr 2023 01:28:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681288112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jd92r82riwJsOveYZKHTDW/KsSsFPyivg2ELpgoEsB8=;
        b=PUSbPGzizsrr+vFCMuzzRcGEUYcTlSjWUG024UhbJUVEC9efv7g2Znddtmhck85VUH
         TzDnIdpCWArQsdfyoqA/Gh9Jj/aD3sWUro5uHXlzVOPgUXVCEQoO/I2k2S49uBZIjELG
         Z90g07/D+8XZY6CNGW8T8gXOrGbGPZss0z+y8a0W7BUnMXbS0ROHvFLH+gX8swuE38GO
         dfdMY8eYn8ddEpQ+5kkH237k5Oeu8Sb+hNOMbHpeZkMCSdrf+CG+bhXv0V2oAK11CsTr
         pjFK+TfyZxDTDw7vZp81KQdD/581KEBQMeLy+lqignQkEo4ApuXJGIqaEyDJBGm7qhFQ
         0W6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681288112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jd92r82riwJsOveYZKHTDW/KsSsFPyivg2ELpgoEsB8=;
        b=To1SFwBr4LL84RSmxXq9AI2pvCZpSKrDwuWKNKbxaJWd2J2SS8JFBejCtcPdwCAbCd
         fobMdgqKFILTtpNUrAKM1Xfkskv5P2+ak2dsHurXcOPn5afKvL7mBLlBHLnseoEjchXw
         iFun29RhCt510VtX+DC+9Dtm5sp07+1lCMLiROIr2KnTvjMxzzImLKZz2hx9n7Ubf9gF
         x1gWIImUpW5sGX9jMEx36s/2GlAEQ8aURZPGi1eK+qfzgUbi5aOBPg35AO9INa7LnzFg
         WZFXqzZ1VTODOSbMIt6q5UYmZG87us1vUdRjFjGXlQGBGzYWdF9l2hm/tSJ54v/qtALf
         FKUA==
X-Gm-Message-State: AAQBX9ejY6WLYaV40zhBs0jxM74vHNb6dvk7ylArKm58ASOfETh8AeSw
	3XRZ3M/TB45qZCCT0rv3+bw94A==
X-Google-Smtp-Source: AKy350Z9boqUdZ08KOV1oZ83itELQafURismAgL/2KJC7VKIlkPW5aN1TQUaIaa6fsETnYFLrkN0og==
X-Received: by 2002:a17:907:703:b0:948:b9ea:3302 with SMTP id xb3-20020a170907070300b00948b9ea3302mr14702454ejb.1.1681288111982;
        Wed, 12 Apr 2023 01:28:31 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:8fa0:9989:3f72:b14f? ([2a02:810d:15c0:828:8fa0:9989:3f72:b14f])
        by smtp.gmail.com with ESMTPSA id f17-20020a170906739100b0094e5679dd2csm532308ejl.165.2023.04.12.01.28.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Apr 2023 01:28:31 -0700 (PDT)
Message-ID: <38575aee-139c-688c-21a0-69844e5ae1c2@linaro.org>
Date: Wed, 12 Apr 2023 10:28:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v4 2/7] dt-bindings: phy: Add StarFive JH7110 PCIe
 document
Content-Language: en-US
To: Minda Chen <minda.chen@starfivetech.com>,
 Emil Renner Berthing <emil.renner.berthing@canonical.com>,
 Conor Dooley <conor@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Pawel Laszczak <pawell@cadence.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Peter Chen <peter.chen@kernel.org>, Roger Quadros <rogerq@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 linux-riscv@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Mason Huo <mason.huo@starfivetech.com>
References: <20230406015216.27034-1-minda.chen@starfivetech.com>
 <20230406015216.27034-3-minda.chen@starfivetech.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230406015216.27034-3-minda.chen@starfivetech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_012833_649502_40DF427C 
X-CRM114-Status: GOOD (  16.68  )
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

On 06/04/2023 03:52, Minda Chen wrote:
> Add StarFive JH7110 SoC PCIe 2.0 PHY dt-binding.
> PCIe PHY0 (phy@10210000) can be used as USB 3.0 PHY.

Subject: drop second/last, redundant "document". The "dt-bindings"
prefix is already stating that this is documentation.

> 
> Signed-off-by: Minda Chen <minda.chen@starfivetech.com>
> ---
>  .../phy/starfive,jh7110-pcie-phy.yaml         | 58 +++++++++++++++++++
>  1 file changed, 58 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/starfive,jh7110-pcie-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/starfive,jh7110-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/starfive,jh7110-pcie-phy.yaml
> new file mode 100644
> index 000000000000..1b868f75ddae
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/starfive,jh7110-pcie-phy.yaml
> @@ -0,0 +1,58 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/starfive,jh7110-pcie-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: StarFive PCIe 2.0 PHY

JH7110

Unless you plan to add here more compatibles, but then use enum for
compatible, not const.


> +
> +maintainers:
> +  - Minda Chen <minda.chen@starfivetech.com>
> +
> +properties:
> +  compatible:
> +    const: starfive,jh7110-pcie-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  starfive,sys-syscon:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    items:
> +      items:
> +        - description: phandle to System Register Controller sys_syscon node.
> +        - description: PHY connect offset of SYS_SYSCONSAIF__SYSCFG register for USB PHY.

No improvements here.

> +    description:
> +      The phandle to System Register Controller syscon node and the PHY connect offset
> +      of SYS_SYSCONSAIF__SYSCFG register. Connect PHY to USB3 controller.
> +
> +  starfive,stg-syscon:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    items:
> +      items:
> +        - description: phandle to System Register Controller stg_syscon node.
> +        - description: PHY mode offset of STG_SYSCONSAIF__SYSCFG register.
> +        - description: PHY enable for USB offset of STG_SYSCONSAIF__SYSCFG register.

No improvements.


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
