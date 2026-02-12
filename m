Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC41FEDF050
	for <linux-phy@archiver.kernel.org>; Thu, 12 Feb 2026 07:18:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LdCGfxi4+VIlaTtuBztEhyc6gV2QI+lnbCU6c5RktFk=; b=D/uZYyTzHIC3b0
	OXszlwxSXym+AcPGjC2y9+zfw3lpa4Y1wKxLgvyeQu0yz5zI/58qBUf3V+z2FFdWigkuMMbkIB1l9
	6wRgbhlyKFuh6O1hZ1YPfMIUr3hZSIa08w7dgt8h+csYg1urLQ8ZXMV8fbv3vPDhJNBvmK+lhvoms
	tFVxJ4Us7CUFgJxIrcfWpU9EpnDrRHJZa1joTzIGsf3nfHDr9ES3UpbtFe6Hd8FkwzW6ncY3aGTVJ
	1Dz4TFLyGeGHiYvCuycBtqAtZBARhfa/+IqAzAMaHYMiTM6u/wh6OfQXLCEGCZLMI3AQln9oF5y27
	FrLbAxiQ5SQRD5mfrOUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqQxd-00000001i9Q-36uC;
	Thu, 12 Feb 2026 07:18:01 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqQxa-00000001i8e-1hd0
	for linux-phy@lists.infradead.org;
	Thu, 12 Feb 2026 07:17:59 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-65a414a6859so2562538a12.1
        for <linux-phy@lists.infradead.org>; Wed, 11 Feb 2026 23:17:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770880676; cv=none;
        d=google.com; s=arc-20240605;
        b=izADYdkG7fr7/dINpj5/xlhudaqmnVpJGxfgmbzSq06wTDYKr/F5qEE/fjghhI9UON
         wHbLsDCckpgx/z2Qm9L0lSf/2zlhsRBXtDXmMwd799zhGZYVFAqzx5pYi8Fc9ND8VPLt
         AaJZAtzx3CTIJuhZjUj/shpoEGqNOlcQy0iCzi8kiI6cUWO9wEbI9WqpP1Cm82s9tdKT
         ubJRo+gRntLwsABcHHwZnkS5uJhV1pvqvC3hu77HtXrs6hxdARtjmwv6Cv676ydbhvmA
         kkpQL33/5+OjrNVJhaQlR5nK97/jMkLi3CPrtH/MdJ64TldK0Ax+tJNVbBZQpZ+qh8kb
         IYuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4VtkmaXYDRoBb0Ii/zZutz9SPx4ofKw8c7aX2qO71JI=;
        fh=+swsEQphC/x0/v5uQQrSaUaBrG5UiyqQ4TgeS476SfM=;
        b=d2E8kDp18PuPrW3HBZssVJGdQAjdDvt+J5FsCGQ+F/9rDu2YKhwG4NOBRFwZytkmA4
         05WvmX72Nj2+hM214jWGx60gDmJvWDGAD7GBN1iZHim1pcO4PARbdpjOH7tm8iBjXIhg
         H5VDYA9oTSthZGiRKWaGxvfURvnTr0svAz9pja2rY5ZzyINW2+eByoVdNLhppdPhv2Fr
         XsMSB00MC8ewoFfzfYuKlTmNLTQ5ZCNOBmMH/hEnXNMKg+RwjbBajVGjQuaDAwhjbouL
         Cu+GimLocPVQTxwYrqW9K72JPOFZrGHK6GrpnLb4Ypr00oz52Ii/nAVvKGGbT9KP1NU/
         YkTQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770880676; x=1771485476; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4VtkmaXYDRoBb0Ii/zZutz9SPx4ofKw8c7aX2qO71JI=;
        b=FenPVZ72k8X26VhncQer2c5yIdo/5FnA51xs7wQqsu7uCPfCkbvTO5L998KdsiqrrX
         nnbpHxnmJa4SqDvf2MlBrbhHZ8tlRTgWKFcP685Rj0AzRE9+5ARn5xAIRZWYnCp3c2l4
         3jEc1jkZBugNw7+S+nTpgmuZHhtXdG7YrMZYfMDEUhuQjM+1JFBJmDbT2Pmfw9RMVBCF
         ZPLS5IW2TB5UqX241E1bxzSop1FIj0cCR0WVEXjZMfxSjQVuX/5EWMQTp8BZR/R3kW1M
         yvSpCU+tRb5ux9JxtvhZWhpBI6clLtsVIb8TYYrx4XmwTUYxTIA0/Q92TkKYI+SLJc2P
         3Utw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770880676; x=1771485476;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4VtkmaXYDRoBb0Ii/zZutz9SPx4ofKw8c7aX2qO71JI=;
        b=X4bhKwYiTbLceOnfNfQSEAqpCNzsVr7izqlWRLDd5DYRjbj1GQJvMUcalXja3XfuLy
         odJQwN5RuqNDGndBGvgfvRrOuAuqqQvp/oAm0qCc9WGFFoJNTFZ8VEm0Y8HLTugA1VBH
         fQC2xSrw3qvCTenrC2P4+4i4Y8DzkLVzDT4NzZWdUh3YJ10Vc6sEFvRPYHI0dGgD/Tec
         bewR0UsxwOuOP5xZXoorGa+nyNBLz5UVw1Grd7hZBEV86ICSWwVZr3pN14XHycAStFJm
         RP1o3/KPAyIWosmeSGz1X64P8DNqD5XEg2EjNF4qpBitolr0g9xAm+lA2xkYalcbRE5k
         FFYg==
X-Forwarded-Encrypted: i=1; AJvYcCXBKI5CJ9+bW2bU4O/bimowgBPSznGvqNge7XbC7alqLgu9H+YCNslgCCE5WdRPwNQupUTQSevksmU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzvonyLl4i0jkt8hiHTISwCU2T8sOAXbQRASJC/UqvmuN6RrWoG
	Lttqde1pXGrkiCcSSO1kaG6TnHTnVIhb6X6j2PEEt30jiUwuU2vBNUyLhizYct1uBfWIyJqusYu
	WkoUN55pbnN/I3YLJHKfM8a29+Ez37ken23bNJeNzSA==
X-Gm-Gg: AZuq6aKKgIgVtg/myRJ/vCO494gMlK/cCQAmSZHyHvc9+7gK/1LPkpAhFPumFZEu8aJ
	Bl7gemApiWyKCEf9gNHhwbI+veVfy1tLhGLl8ZbMSFDUt+xt8OhPJQJYBXBfah3p6W4f4DUzv2S
	qxxtOGSFDLtedUyVmW4ZG1kYuhGYRNriu6dVBtLbPVPysoVeFHCPRhOf6h8O5WDXZSyPH9sGWes
	UYrDJ7Sjc/KYTlOmaC5Xnk4OFvLeqlq0Xj5u/MCBfH4dJAljM+s63ZXfwQYiTPcygZeXUWbin7s
	wjNUQhMqYUhBL3oORqpCuBntgqkKDDfkUhN0
X-Received: by 2002:a05:6402:2690:b0:658:bab5:57f4 with SMTP id
 4fb4d7f45d1cf-65b9db110b9mr587533a12.23.1770880675576; Wed, 11 Feb 2026
 23:17:55 -0800 (PST)
MIME-Version: 1.0
References: <20260203161917.1666696-1-vincent.guittot@linaro.org>
 <20260203161917.1666696-2-vincent.guittot@linaro.org> <20260210004011.GA2188625-robh@kernel.org>
In-Reply-To: <20260210004011.GA2188625-robh@kernel.org>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Thu, 12 Feb 2026 08:17:44 +0100
X-Gm-Features: AZwV_Qj567pfCDwzOGI7nJVgtwTDzptXPKhrNBHBCOrwOw7GShjTLukyePRdLLo
Message-ID: <CAKfTPtA299R7yn3r=tCqhhP_tK3E_UpGSMrDLyRP4Ccwt1m58g@mail.gmail.com>
Subject: Re: [PATCH 1/4 v2] dt-bindings: serdes: s32g: Add NXP serdes subsystem
To: Rob Herring <robh@kernel.org>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, ciprianmarian.costea@oss.nxp.com, s32@nxp.com, 
	p.zabel@pengutronix.de, linux@armlinux.org.uk, ghennadi.procopciuc@nxp.com, 
	Ionut.Vicovan@nxp.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org, 
	horms@kernel.org, Frank.li@nxp.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_231758_550376_496D40F1 
X-CRM114-Status: GOOD (  25.39  )
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

On Tue, 10 Feb 2026 at 01:40, Rob Herring <robh@kernel.org> wrote:
>
> On Tue, Feb 03, 2026 at 05:19:14PM +0100, Vincent Guittot wrote:
> > Describe the serdes subsystem available on the S32G platforms.
> >
> > Signed-off-by: Vincent Guittot <vincent.guittot@linaro.org>
> > ---
> >  .../bindings/phy/nxp,s32g-serdes.yaml         | 154 ++++++++++++++++++
> >  1 file changed, 154 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml b/Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml
> > new file mode 100644
> > index 000000000000..fad34bee2a4f
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml
> > @@ -0,0 +1,154 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/phy/nxp,s32g-serdes.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: NXP S32G2xxx/S32G3xxx SerDes PHY subsystem
> > +
> > +maintainers:
> > +  - Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
> > +
> > +description: |
> > +  The SerDes subsystem on S32G SoC Family includes two types of PHYs:
> > +    - One PCIe PHY: Supports various PCIe operation modes
> > +    - Two Ethernet Physical Coding Sublayer (XPCS) controllers
> > +
> > +  SerDes operation mode selects the enabled PHYs and speeds. Clock frequency
> > +  must be adapted accordingly. Below table describes all possible operation
> > +  modes.
> > +
> > +  Mode  PCIe XPCS0           XPCS1           PHY clock       Description
> > +                SGMII                SGMII             (MHz)
> > +  -------------------------------------------------------------------------
> > +  0  Gen3    N/A             N/A             100             Single PCIe
> > +  1  Gen2    1.25Gbps        N/A             100             PCIe/SGMII
> > +  2  Gen2    N/A             1.25Gbps        100             PCIe/SGMII
> > +  3  N/A     1.25Gbps        1.25Gbps        100,125         SGMII
> > +  4  N/A     3.125/1.25Gbps  3.125/1.25Gbps  125             SGMII
> > +  5  Gen2    N/A             3.125Gbps       100             PCIe/SGMII
>
> Mixed tabs and spaces. Drop the tabs.

okay

>
> What's not clear to me is do you have 2 or 4 lanes?

2 lanes per serdes
as an example mode 0 is one PCIe x2 lane
and mode 1 is one PCIe x1 and one xpcs0/SGMII on lane 1
or mode 3 is one  xpcs0/SGMII on lane 0 and one xpcs1/SGMII on lane 1

>
> > +
> > +properties:
> > +  compatible:
> > +    oneOf:
> > +      - enum:
> > +          - nxp,s32g2-serdes
> > +      - items:
> > +          - const: nxp,s32g3-serdes
> > +          - const: nxp,s32g2-serdes
> > +
> > +  reg:
> > +    maxItems: 4
> > +
> > +  reg-names:
> > +    items:
> > +      - const: ss_pcie
> > +      - const: pcie_phy
> > +      - const: xpcs0
> > +      - const: xpcs1
> > +
> > +  clocks:
> > +    minItems: 4
> > +    maxItems: 5
> > +
> > +  clock-names:
> > +    items:
> > +      - const: axi
> > +      - const: aux
> > +      - const: apb
> > +      - const: ref
> > +      - const: ext
> > +    minItems: 4
> > +
> > +  resets:
> > +    maxItems: 2
> > +
> > +  reset-names:
> > +    items:
> > +      - const: serdes
> > +      - const: pcie
> > +
> > +  nxp,sys-mode:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
>
>        maximum: 5
>
> Though isn't this redundant with the child nodes? You could use the
> standard 'phy-mode' property in each child.

not really because we can have mode 1 but only a node to describe
lane0 for PCIe x1 if the lane 1 is not used

>
> > +    description: |
> > +      SerDes operational mode. See above table for possible values.
> > +
> > +  '#address-cells':
> > +    const: 1
> > +
> > +  '#size-cells':
> > +    const: 0
> > +
> > +patternProperties:
> > +  '^serdes[0,1]_lane@[0,1]$':
>
> Do you need to support serdes0_lane@0 and serdes1_lane@0 (or similar
> with "@1")? That's illegal as you have 2 nodes with the same address.

okay, we can find other naming

>
> > +    description:
> > +      Describe a serdes lane.
> > +    type: object
> > +
> > +    properties:
> > +      compatible:
> > +        enum:
> > +          - nxp,s32g2-serdes-pcie-phy
> > +          - nxp,s32g2-serdes-xpcs
>
> Seems like phy-mode would be sufficient. Are these separate blocks from
> the parent?

Isn't phy-mode only for ethernet phy ?

here we have either a PCIe phy or a xpcs instance which are referenced
with phandle

>
> > +
> > +      reg:
> > +        maxItems: 1
>
> Just 'maximum: 1' instead.

okay


>
> > +
> > +      '#phy-cells':
> > +        const: 0
> > +
> > +    required:
> > +      - reg
> > +      - compatible
> > +
> > +    unevaluatedProperties: false
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - reg-names
> > +  - clocks
> > +  - clock-names
> > +  - resets
> > +  - reset-names
> > +  - nxp,sys-mode
> > +  - '#address-cells'
> > +  - '#size-cells'
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    bus {
> > +        #address-cells = <2>;
> > +        #size-cells = <2>;
> > +        serdes0: serdes@40480000 {
> > +          compatible = "nxp,s32g3-serdes", "nxp,s32g2-serdes";
> > +            reg = <0x0 0x40480000 0x0 0x108>,
> > +                  <0x0 0x40483008 0x0 0x10>,
> > +                  <0x0 0x40482000 0x0 0x800>,
> > +                  <0x0 0x40482800 0x0 0x800>;
> > +            reg-names = "ss_pcie", "pcie_phy", "xpcs0", "xpcs1";
> > +            clocks = <&clks 1>,
> > +                     <&clks 2>,
> > +                     <&clks 3>,
> > +                     <&clks 4>,
> > +                     <&serdes_100_ext>;
> > +            clock-names = "axi", "aux", "apb", "ref", "ext";
> > +            resets = <&reset 9>,
> > +                     <&reset 8>;
> > +            reset-names = "serdes", "pcie";
> > +            nxp,sys-mode = <1>;
> > +            #address-cells = <1>;
> > +            #size-cells = <0>;
> > +            phy_pcie0: serdes0_lane@0 {
> > +              compatible = "nxp,s32g2-serdes-pcie-phy";
> > +              #phy-cells = <0>;
> > +              reg = <0>;
> > +            };
> > +            phy_xpcs0_0: serdes0_lane@1 {
> > +              compatible = "nxp,s32g2-serdes-xpcs";
> > +              reg = <0>;
> > +            };
> > +        };
> > +    };
> > --
> > 2.43.0
> >

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
