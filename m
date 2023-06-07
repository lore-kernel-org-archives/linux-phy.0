Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08E8BC7EE43
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jun 2023 18:32:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XPLbbIOJQfPhYfRckwB/o+TZvYdkc9EJpZduopq03l0=; b=Ep9i4+ZCUuIXo7
	TbOV8/ASP6FHs7EXazw9N//kw16TyWei77F+z2y8XYeZVbf9PTmdVWpZGJOdEaBHd5HDsplk44ZwH
	kFhxBE23tCzYraRQXN5Z8t5+z6L73OnEi+/tJ/gstObCdJlBjJ31DDV5lB3lt0d+aYCq9UegQjxJB
	lHVSclBFZNcX3sZCZDeD+MW4HFFPNb4YYZnA9G5dJR7hLTOjVlGhZ+qTT26bHUY42d9AGKcxkBPJ6
	+YH8tNPi+BlHtkAvo0zw89HhR25HddT86BkZTgXeXFSxTz5ygvdTj1IOuK9vnmnPvA5Xx11TTjvlk
	4S25+kR+a+S+Dm6CLQnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6xwv-006qjc-26;
	Wed, 07 Jun 2023 18:32:01 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6xws-006qhX-2f
	for linux-phy@lists.infradead.org;
	Wed, 07 Jun 2023 18:32:00 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-5149e65c244so1805132a12.3
        for <linux-phy@lists.infradead.org>; Wed, 07 Jun 2023 11:31:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686162715; x=1688754715;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6Z+U5ETKwaoIHltE2aiAd209awkqtpo2q3BiVL0nXYU=;
        b=iUiL+koEOtPAccW4DAkC8uKKkLCRaCKzOoFR2FJlbkVPhX0BJH52rbIBFel/wEJi5n
         OGSI2zocWFqKumJ7ZxFDcQwZbEvb1SZ5g5z7rej5gEpRa1zdfFnUHeUJyNJgrOjFuEYb
         dY4HK37AOWyeJe1foqFmjD3e7nVJDONBSqPSAa4DGTL4aMjptAT5H7lhpZRmqiFyS6hL
         PO5d1SbABORUMCK91wD4kEhJM6TDXlRJzE2w6M1mLl0l1tn9eySxCH9ao+/XJOdtIXNh
         wZJSJaIIUPnfz2l4VXkPlJcaLHQhUAtiYPYvxNcpV5DhaMklDUUV015kRbZ7AeKnJoj1
         gokw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686162715; x=1688754715;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6Z+U5ETKwaoIHltE2aiAd209awkqtpo2q3BiVL0nXYU=;
        b=gWw/2ObdP26mmf2wSdmWsq1WCouJpBsokzLxc0bf5ZS7jLtNeYufjjAUR7xMGOhD6V
         j0qch7q0C1ZKIGODTc6Fghxt2mvTfhOSw3NxvKj36LekteDDBlHh4nbiV8tAZLp/Snzs
         N419q0qlBusuZy6hzkeFb/S5053w50JnlQpHiHg5s0AakymJjo6+DKZQDw3bxtC+ljAj
         I1KBqsXcjfkinu744SJzUdbI/xId4GPBexMvN6f1VMAIdE/j1emRh4jinIR3pvxZzDhG
         p7DkR/tmsfylwZMFU+QA1wYmnuDUQNudVK0XRVoKQqudgfEIOW9aAEHzKodhVS5hDRol
         d+Hg==
X-Gm-Message-State: AC+VfDwg1gvUPPD/+zBKmBccpGaVGudUxMAPEAcR9pTA4pzXihSGSimq
	iZqbcRvkvJNqxUI3H4YgOnStvQ==
X-Google-Smtp-Source: ACHHUZ4zm6GVGkQczlCX9ubgue5IBbrzh8OwnXMHvbBaxgCxK5FXWNJMU50WbLRcua8aEYAUxOJlKQ==
X-Received: by 2002:aa7:c7d5:0:b0:514:9df0:e3ec with SMTP id o21-20020aa7c7d5000000b005149df0e3ecmr5148935eds.0.1686162714757;
        Wed, 07 Jun 2023 11:31:54 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id h26-20020aa7de1a000000b005148f0e8568sm6450019edv.39.2023.06.07.11.31.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jun 2023 11:31:54 -0700 (PDT)
Message-ID: <98960024-7dbc-91a3-75de-90b529637916@linaro.org>
Date: Wed, 7 Jun 2023 20:31:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH 2/9] dt-bindings: phy: qcom,m31: Document qcom,m31 USB phy
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, catalin.marinas@arm.com,
 will@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 p.zabel@pengutronix.de, arnd@arndb.de, geert+renesas@glider.be,
 neil.armstrong@linaro.org, nfraprado@collabora.com, broonie@kernel.org,
 rafal@milecki.pl, quic_srichara@quicinc.com, quic_varada@quicinc.org,
 quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
References: <cover.1686126439.git.quic_varada@quicinc.com>
 <14f60578e2935c0844537eab162af3afa52ffe39.1686126439.git.quic_varada@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <14f60578e2935c0844537eab162af3afa52ffe39.1686126439.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_113158_863738_BE0F8938 
X-CRM114-Status: GOOD (  17.19  )
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

On 07/06/2023 12:56, Varadarajan Narayanan wrote:
> Document the M31 USB2 phy present in IPQ5332

Full stop.

> 
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  .../devicetree/bindings/phy/qcom,m31.yaml          | 69 ++++++++++++++++++++++
>  1 file changed, 69 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,m31.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,m31.yaml b/Documentation/devicetree/bindings/phy/qcom,m31.yaml
> new file mode 100644
> index 0000000..8ad4ba4
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,m31.yaml
> @@ -0,0 +1,69 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +

Drop stray blank lines.

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/qcom,m31.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm M31 USB PHY

What is M31?

> +
> +maintainers:
> +  - Sricharan Ramabadhran <quic_srichara@quicinc.com>
> +  - Varadarajan Narayanan <quic_varada@quicinc.org>
> +
> +description:
> +  This file contains documentation for the USB M31 PHY found in Qualcomm

Drop redundant parts ("This file contains documentation for the").

> +  IPQ5018, IPQ5332 SoCs.
> +
> +properties:
> +  compatible:
> +    oneOf:

That's not oneOf.

> +      - items:

No items.

> +          - enum:
> +              - qcom,m31-usb-hsphy

I am confused what's this. If m31 is coming from some IP block provider,
then you are using wrong vendor prefix.
https://www.m31tech.com/download_file/M31_USB.pdf


> +              - qcom,ipq5332-m31-usb-hsphy

This confuses me even more. IPQ m31?

> +
> +  reg:
> +    description:
> +      Offset and length of the M31 PHY register set

Drop description, obvious.

> +    maxItems: 2
> +
> +  reg-names:
> +    items:
> +      - const: m31usb_phy_base
> +      - const: qscratch_base

Drop "_base" from both.

> +
> +  phy_type:
> +    oneOf:
> +      - items:
> +          - enum:
> +              - utmi
> +              - ulpi

This does not belong to phy, but to USB node.

> +
> +  resets:
> +    maxItems: 1
> +    description:
> +      List of phandles and reset pairs, one for each entry in reset-names.

Drop useless description.

> +
> +  reset-names:
> +    items:
> +      - const:
> +          usb2_phy_reset

Drop entire reset-names.

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/qcom,ipq5332-gcc.h>
> +    hs_m31phy_0: hs_m31phy@5b00 {

Node names should be generic. See also explanation and list of examples
in DT specification:
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

Also, no underscores in node names.

> +        compatible = "qcom,m31-usb-hsphy";
> +        reg = <0x5b000 0x3000>,

This is not what your unit address is saying.

> +            <0x08af8800 0x400>;

Align it.

> +        reg-names = "m31usb_phy_base",
> +                "qscratch_base";

Align it.

> +        phy_type = "utmi";
> +        resets = <&gcc GCC_QUSB2_0_PHY_BCR>;
> +        reset-names = "usb2_phy_reset";
> +
> +        status = "ok";

Drop.

> +    };

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
