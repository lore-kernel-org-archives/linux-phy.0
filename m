Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56B95EB64DD
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 09:03:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y7unHELb7RYip2CtcX8Zfa3JReEl4NWF9RdzF7q3qo0=; b=w1uz/R6olqZb3D
	x6wf1ZK5rRcJ5dy0Muz2chiiRTEmlLqoqs4Drqz04sLqaHPLpIzrtSe+gRLlPE1uN5f/mXWHlZt4f
	tDPMbkb0AkPMzQ9WGW50jXZnso0BMyVVA1ESTjcUiDX3tMWlFdqXulO1mbEgne6qFRBnYpolsoXYA
	qNiXZzQ14ehJGdrzMTY0bihvwz5he9WFbG9BmbUZzG16GCcIpX5obFx0DRnT5zReqR7VGUukfcfoX
	Vhi9Dvl/dxefOSBvO+dBlQEZ/szi3VjOuK7/EdfR99YOFdUHGnsesl3/qbbQ90630LVGvErhhy6CK
	sJpmvLyBUQtA2SWI93Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ9Hg-00EDjf-02;
	Tue, 11 Jul 2023 09:03:48 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ9Hc-00EDhM-0n
	for linux-phy@lists.infradead.org;
	Tue, 11 Jul 2023 09:03:47 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-51f7fb9a944so143307a12.3
        for <linux-phy@lists.infradead.org>; Tue, 11 Jul 2023 02:03:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689066222; x=1691658222;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5Lw6Fio6MM8aQyHHH2Gtx5wACdysDo6ZPeKbdUxENhw=;
        b=msiU/+xMcahUqIkdiyY5SaV0lh5WjlO2rQuLmPZ0badsW7i6rQ5pmTNlIcSdSDBaRG
         hIugN9XVpR7Rr4jpls+Zi/5PkCozRv2TdIgnr1TEYWsYwPPxWdd5dzV1XhALVT/B7Q0B
         OJNolJmF2/wfYbO0JDkyGwYOdP2RfQXyM7zbfDyNQsoObj4DT3jTXHsGRGZyquwnTFZl
         TzWz5LFI6AFePlNH5xSuYsqZfHNtRJvJ2xqdDG3lhEe3mf3qBn9+PYWvrfKxSStXM43Z
         eOA7Km+2/cV4INV3wzQPEMEUlwPOxw2AKAQR4LFh/nZF/51cI52tDXM5Zd3udfgw9/oF
         v3eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689066222; x=1691658222;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5Lw6Fio6MM8aQyHHH2Gtx5wACdysDo6ZPeKbdUxENhw=;
        b=eUsCuBHGlDASETCGoSWXMGHS/AC8LhKwIY35r65ON5uBu2imxxZThULXCUFYdilBAA
         LhM9uKlUzp4CbryaGkw3ushO6xLx2T2t7jcyb3T3zYcXkHJaOuhf0+VMvGOv7H7/EsUw
         ylaQOkLjff5DQzB2ZcSZ26AKlizZCw0tOYUAqKsRb3QwS/qhf34OjK02ZhfW2wvchNBx
         PG7PsI68ci9M279KnHVBbr3Vm/9cqHCj4KAAHe0NrUeRRruALJ+a1J1BZIBpORaefWKe
         j4DsbPyAAdiE3zCE+NzLTGO3JURmulMHQSFQug0eHqGzBiNX3PuPvvPm826Wy4qNmdkX
         45/w==
X-Gm-Message-State: ABy/qLZ2SSPKvirbst9AHGqbHE00/1J8ziLWlkWIuvLNj4L6AtTQ3iSn
	Tq6yQdNm5WqaihOk0+xBLQJbYA==
X-Google-Smtp-Source: APBJJlGQrnIKzKa1cvH6yRytquR4/mHpXJkdOXwxN9nXW/rPbh62x2Xb+7Gbq7H7q618igwYKqIGew==
X-Received: by 2002:aa7:ccd1:0:b0:51e:12b:b989 with SMTP id y17-20020aa7ccd1000000b0051e012bb989mr13728889edt.20.1689066221712;
        Tue, 11 Jul 2023 02:03:41 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id y19-20020aa7ccd3000000b0051dd4daf13fsm946680edt.30.2023.07.11.02.03.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Jul 2023 02:03:41 -0700 (PDT)
Message-ID: <8e5a51cb-c726-1027-1f4c-7870b10bc706@linaro.org>
Date: Tue, 11 Jul 2023 11:03:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3 2/6] dt-bindings: phy: qcom,m31: Document qcom,m31 USB
 phy
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, catalin.marinas@arm.com,
 will@kernel.org, p.zabel@pengutronix.de, arnd@arndb.de,
 geert+renesas@glider.be, neil.armstrong@linaro.org, nfraprado@collabora.com,
 broonie@kernel.org, rafal@milecki.pl, quic_srichara@quicinc.com,
 quic_varada@quicinc.org, quic_wcheng@quicinc.com,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <cover.1689065318.git.quic_varada@quicinc.com>
 <77fe66271044a18871e1dfb80bbb481617197d18.1689065318.git.quic_varada@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <77fe66271044a18871e1dfb80bbb481617197d18.1689065318.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_020344_281659_9DBF1641 
X-CRM114-Status: GOOD (  15.74  )
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

On 11/07/2023 10:51, Varadarajan Narayanan wrote:
> Document the M31 USB2 phy present in IPQ5332.
> 
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v3:
> 	Incorporate review comments. Will bring in ipq5018 compatible
> 	string while posting ipq5018 usb patchset.
> 
> v1:
> 	Rename qcom,m31.yaml -> qcom,ipq5332-usb-hsphy.yaml
> 	Drop default binding "m31,usb-hsphy"
> 	Add clock
> 	Remove 'oneOf' from compatible
> 	Remove 'qscratch' region from register space as it is not needed
> 	Remove reset-names
> 	Fix the example definition
> ---
>  .../bindings/phy/qcom,ipq5332-usb-hsphy.yaml       | 49 ++++++++++++++++++++++
>  1 file changed, 49 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,ipq5332-usb-hsphy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq5332-usb-hsphy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq5332-usb-hsphy.yaml
> new file mode 100644
> index 0000000..2cfdd73
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,ipq5332-usb-hsphy.yaml
> @@ -0,0 +1,49 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/qcom,ipq5332-usb-hsphy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: M31 (https://www.m31tech.com) USB PHY

The URL should rather go to description, not the title. Title is like
document title.

> +
> +maintainers:
> +  - Sricharan Ramabadhran <quic_srichara@quicinc.com>
> +  - Varadarajan Narayanan <quic_varada@quicinc.org>
> +
> +description:
> +  USB M31 PHY found in Qualcomm IPQ5018, IPQ5332 SoCs.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - qcom,ipq5332-usb-hsphy
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    maxItems: 1

Drop

> +    contains:

Drop

> +      items:
> +        - const: cfg_ahb
> +
> +  resets:
> +    maxItems: 1
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/qcom,ipq5332-gcc.h>
> +    usbphy0: ipq5332-hsphy@7b000 {

Node names should be generic. See also an explanation and list of
examples (not exhaustive) in DT specification:
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
