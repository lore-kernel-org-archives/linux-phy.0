Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CE33C71153
	for <linux-phy@archiver.kernel.org>; Tue, 29 Aug 2023 14:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ESlJtwT7Sqo9hbmpj+4NBiU6ik8QSWhvkhiWhQHdqd4=; b=L7jgFxRfCE0MPt
	rNs+NDJoWGAgHCrZgZU47O+k8Lz6INQBlrkHNt1QKcVA8STyCJwAl7apM4ySi8TycUOiJdEid8Zek
	arDxWCE2kmgVgiympJcTxCJkCviL0AtuPd3vhOcBqfe20uBVIPqbENJO+BH/M1efrf8iWRfsnOMCH
	XrdSaluR1mSOci/0RG6gsUOqR0H2Nna3ELTT1lKhDg1VeY3Z/roPgLkEX9HJcYdDaN57Orh5CvT3P
	ZKwJU5AM+xYZ/Ojn0xFTx71/WgcBxThXPActyE9hyVdWS/Rv3jRgD9z0wpnfRZWMSLtBlaGL0liib
	PfRJY9XK/27zBMTCmQyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qazVz-00BgUG-0S;
	Tue, 29 Aug 2023 14:16:19 +0000
Received: from mail-oo1-xc2e.google.com ([2607:f8b0:4864:20::c2e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qazVw-00BgSt-0h
	for linux-phy@lists.infradead.org;
	Tue, 29 Aug 2023 14:16:17 +0000
Received: by mail-oo1-xc2e.google.com with SMTP id 006d021491bc7-56d8bc0d909so2719136eaf.3
        for <linux-phy@lists.infradead.org>; Tue, 29 Aug 2023 07:16:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693318571; x=1693923371;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mArj2+8FjJfEgCanmjSqswPaGOqecoYV1Hn4xtmoCnA=;
        b=Nmgg0SVmBN2xHQrqRwx7JGo19+4NsJtPMzixLZgKCEpW1C0jL9lFHJKUX29flOB0ny
         ZQvrXy8Jk51bmXNLbtkVtHHvqXr5LmV5R60xcN36ccoAJfUZcUN85wJ8KY9D4eAqTexX
         1qWBZ/6qwD0IZQ5aKvENJYFfk8gq53oUIKJX1hQ8BE2KqWjYwTat2OW5cvzooXyrsuu0
         MYZIhv+iXlM1QOwz61pF5na9AsBMz6BxqND+TcJS4ik+/k9bb5B+fCUpm+Q9gCsQVRqX
         CZTNiztP7QVc88bFyFz01wM7NK/oc7poh2q5A8R6HvY9Zfie5xNnaJKNbnV07r04GfR9
         XkKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693318571; x=1693923371;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mArj2+8FjJfEgCanmjSqswPaGOqecoYV1Hn4xtmoCnA=;
        b=iNxWkRQI5Yr5lkZjC4RZ5CoyoGjsEo6E/9MvFZ0epFhJuU7YpQo17xTiOvh7R+xNWh
         SuRfGo3frANTQzy3h0bZrovGgFjYZAhiQacT7Zj02NAmLegIthpUtmkajm1Ih+Hf85qW
         DsRLyQBssjKDqgVU68nAOwXNLjfmehAGEJx2e0Uzsqrl5R0ucOcbnRDvLPaPNNoW5cKD
         qpy0q+Mx7NwzuUz2r/AKl7oZh20kwaHFf9cp+bT7Rg0ZgqeOpr0gJGuN302QrImSocyi
         3oauSDCuwi76sC96PLo/HlQOlsmRAbfZ3zV2sZ/d+wJ1vW/ABmB/IGbzpXJYjd8sL/H1
         wGZQ==
X-Gm-Message-State: AOJu0YzYXQrfY2HI++rrLsS9KnWiUdnvd9Dn9KHEPE1LU/zzQ3qOybp0
	Qtc9D/rFgQEbiFZjNj5wsEkXklsqxZA33dol+zR66Q==
X-Google-Smtp-Source: AGHT+IGZrZJdCSRA+NiWCNL6jPpDYBKBJKBCAqXlyhrHLfXWMaKmhLvAUd5rEutjxSSRI/8n8DXOHk+lcKujxDLvQgg=
X-Received: by 2002:a05:6358:27a8:b0:135:62de:ff7d with SMTP id
 l40-20020a05635827a800b0013562deff7dmr28354516rwb.8.1693318571322; Tue, 29
 Aug 2023 07:16:11 -0700 (PDT)
MIME-Version: 1.0
References: <20230829135818.2219438-1-quic_ipkumar@quicinc.com> <20230829135818.2219438-5-quic_ipkumar@quicinc.com>
In-Reply-To: <20230829135818.2219438-5-quic_ipkumar@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 29 Aug 2023 17:16:00 +0300
Message-ID: <CAA8EJpq6JJ8XxK+QxCOZrQdXAeU5XVjp3PF-U8OG-2yk6eHtvw@mail.gmail.com>
Subject: Re: [PATCH 4/9] dt-bindings: phy: qcom,uniphy: Add ipq5332 USB3 SS UNIPHY
To: Praveenkumar I <quic_ipkumar@quicinc.com>
Cc: robert.marko@sartura.hr, luka.perkov@sartura.hr, agross@kernel.org, 
	andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org, 
	kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, gregkh@linuxfoundation.org, catalin.marinas@arm.com, 
	will@kernel.org, p.zabel@pengutronix.de, arnd@arndb.de, 
	geert+renesas@glider.be, nfraprado@collabora.com, rafal@milecki.pl, 
	peng.fan@nxp.com, quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, quic_varada@quicinc.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_071616_258445_716A9E2F 
X-CRM114-Status: GOOD (  17.67  )
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

On Tue, 29 Aug 2023 at 17:00, Praveenkumar I <quic_ipkumar@quicinc.com> wrote:
>
> Add ipq5332 USB3 SS UNIPHY support.
>
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> ---
>  .../devicetree/bindings/phy/qcom,uniphy.yaml  | 117 +++++++++++++++++-
>  1 file changed, 114 insertions(+), 3 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/phy/qcom,uniphy.yaml b/Documentation/devicetree/bindings/phy/qcom,uniphy.yaml
> index cbe2cc820009..17ba661b3d9b 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,uniphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,uniphy.yaml
> @@ -19,21 +19,53 @@ properties:
>      enum:
>        - qcom,usb-ss-ipq4019-phy
>        - qcom,usb-hs-ipq4019-phy
> +      - qcom,ipq5332-usb-ssphy
>
>    reg:
>      maxItems: 1
>
> +  reg-names:
> +    items:
> +      - const: phy_base
> +
> +  clocks:
> +    maxItems: 3
> +
> +  clock-names:
> +    maxItems: 3
> +
> +  "#clock-cells":
> +    const: 0
> +
>    resets:
> +    minItems: 1
>      maxItems: 2
>
>    reset-names:
> -    items:
> -      - const: por_rst
> -      - const: srif_rst
> +    minItems: 1
> +    maxItems: 2
> +
> +  clock-output-names:
> +    maxItems: 1
>
>    "#phy-cells":
>      const: 0
>
> +  qcom,phy-mux-sel:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    description:
> +      PHY Mux Selection for used to select which interface is going to use the
> +      combo PHY.
> +    items:
> +      - items:
> +          - description: phandle to TCSR syscon region
> +          - description: offset to the PHY Mux selection register
> +          - description: value to write on the PHY Mux selection register

Generally these values should be a part of the driver, since they are
specific to the particular SoC, rather than being different from
device to device.

> +
> +  vdd-supply:
> +    description:
> +      Phandle to 5V regulator supply to PHY digital circuit.
> +
>  required:
>    - compatible
>    - reg
> @@ -41,6 +73,68 @@ required:
>    - reset-names
>    - "#phy-cells"
>
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,ipq5332-usb-ssphy
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 3
> +        clock-names:
> +          items:
> +            - const: pipe
> +            - const: phy_cfg_ahb
> +            - const: phy_ahb
> +
> +        "#clock-cells":
> +          const: 0
> +
> +        clock-output-names:
> +          maxItems: 1
> +
> +        resets:
> +          maxItems: 1
> +        reset-names:
> +          items:
> +            - const: por_rst
> +
> +        vdda-supply:
> +          description:
> +            Phandle to 5V regulator supply to PHY digital circuit.
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,usb-ss-ipq4019-phy
> +    then:
> +      properties:
> +        resets:
> +          maxItems: 1
> +        reset-names:
> +          items:
> +            - const: por_rst
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,usb-hs-ipq4019-phy
> +    then:
> +      properties:
> +        resets:
> +          maxItems: 2
> +        reset-names:
> +          items:
> +            - const: por_rst
> +            - const: srif_rst
> +
>  additionalProperties: false
>
>  examples:
> @@ -55,3 +149,20 @@ examples:
>                 <&gcc USB2_HSPHY_S_ARES>;
>        reset-names = "por_rst", "srif_rst";
>      };
> +
> +  - |
> +    #include <dt-bindings/clock/qcom,ipq5332-gcc.h>
> +
> +    ssuniphy@4b0000 {
> +      #phy-cells = <0>;
> +      #clock-cells = <0>;
> +      compatible = "qcom,ipq5332-usb-ssphy";
> +      reg = <0x4b0000 0x800>;
> +      clocks = <&gcc GCC_USB0_PIPE_CLK>,
> +               <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
> +               <&gcc GCC_PCIE3X1_PHY_AHB_CLK>;
> +      clock-names = "pipe", "phy_cfg_ahb", "phy_ahb";
> +
> +      resets = <&gcc GCC_USB0_PHY_BCR>;
> +      reset-names = "por_rst";
> +    };
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
