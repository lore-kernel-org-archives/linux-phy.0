Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C89C8C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 30 Jun 2022 17:27:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AMHgOB9vFy1RYoqa6NKm/3ZiS9zPzCHs9R+U2MLsqrw=; b=4/YfPamJx1Ldhe
	dgu569wolgs9ouDlwGOs2j1A6CDGVZibbtaQ+BZWmGVqDASz7meRMut6WC+J6ST7B45MSL/9yPh5C
	CdbE6J2hCwUjT6W7UxxyEEJ4HzkJ6yeSiuBkEbH1lx0XpUfZhEC2+7nh+inPBlbBN3nTKExZngaY3
	iG+CQ2DoXRl7TDfSL6LZEk/yJl12iIZBsomMzFqlzzZco3xXHv/XP1XeiPUvfwjmAeOStxBKXykPk
	53/utPls08ahZmQaJZXluyN3gPN+s+m8J0Cyq0SX0k/dkQZIXi/8rj3k6MMf5JMMdYiRKAHDvdiGj
	UNkmpZr2YGaY3Xc3oLEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6xwx-000oyE-3t; Thu, 30 Jun 2022 17:27:31 +0000
Received: from mail-io1-f52.google.com ([209.85.166.52])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6xwl-000ouU-Po; Thu, 30 Jun 2022 17:27:21 +0000
Received: by mail-io1-f52.google.com with SMTP id y18so19821320iof.2;
        Thu, 30 Jun 2022 10:27:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=gAIq4Rl9pd6TxPRv3sr3GJgtDudvjHKIBCMW/VUrpdE=;
        b=w/egnnVftZtO07fYlU3TMTPCPtJw7U74WSLY0WE4LpM6es2IE+bYENde5QdSaAmgE6
         R3oYU4IXgFs4QWpDpSHElC3jF7alZlIS0RZqxTlfbYpuJyUYJ7C6ixe91D6Tt9AJ9PZ7
         dlwa1Whnaf394K0+ulnZ6gekNRSwQaUffIqg+2envEYoMiBEbc3d5tsjESSlkSnpK1rx
         TNd43nh/bHieKqd2xQIWG3A9F7mea0GScfQPBnbpDm2lFve1RsKvFfkJRxcf9kJzGOBj
         wwrrc8Xy6G3z5qfvsin9uBuEUjpMy4zN6PrmGOHIshJxy02xCwt7EtINb7y19CMPG5PJ
         cE+A==
X-Gm-Message-State: AJIora++RobSOpGIcPkQzQjhwcgTeSenoxlZeK9tPAm6nGH5knM9Z2IH
	gCMmWeoSnwQN9ANvtEGL5g==
X-Google-Smtp-Source: AGRyM1uTqecJG4oLM0Hqt1nbSkcVzYR2SuSmzltnPom8Dgg7oWRL1d/WE3gL0+M9bu23yw3WQc4lpg==
X-Received: by 2002:a05:6638:1686:b0:33e:9977:2e1f with SMTP id f6-20020a056638168600b0033e99772e1fmr160037jat.7.1656610035981;
        Thu, 30 Jun 2022 10:27:15 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id p192-20020a0229c9000000b0033cd5a2b231sm1818537jap.47.2022.06.30.10.27.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jun 2022 10:27:15 -0700 (PDT)
Received: (nullmailer pid 2943107 invoked by uid 1000);
	Thu, 30 Jun 2022 17:27:13 -0000
Date: Thu, 30 Jun 2022 11:27:13 -0600
From: Rob Herring <robh@kernel.org>
To: Sean Anderson <sean.anderson@seco.com>
Cc: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Madalin Bucur <madalin.bucur@nxp.com>, netdev@vger.kernel.org, Russell King <linux@armlinux.org.uk>, Paolo Abeni <pabeni@redhat.com>, linux-arm-kernel@lists.infradead.org, Eric Dumazet <edumazet@google.com>, linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH net-next v2 01/35] dt-bindings: phy: Add QorIQ SerDes
 binding
Message-ID: <20220630172713.GA2921749-robh@kernel.org>
References: <20220628221404.1444200-1-sean.anderson@seco.com>
 <20220628221404.1444200-2-sean.anderson@seco.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220628221404.1444200-2-sean.anderson@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_102719_880467_A58E15A9 
X-CRM114-Status: GOOD (  43.20  )
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

On Tue, Jun 28, 2022 at 06:13:30PM -0400, Sean Anderson wrote:
> This adds a binding for the SerDes module found on QorIQ processors. The
> phy reference has two cells, one for the first lane and one for the
> last. This should allow for good support of multi-lane protocols when
> (if) they are added. There is no protocol option, because the driver is
> designed to be able to completely reconfigure lanes at runtime.
> Generally, the phy consumer can select the appropriate protocol using
> set_mode. For the most part there is only one protocol controller
> (consumer) per lane/protocol combination. The exception to this is the
> B4860 processor, which has some lanes which can be connected to
> multiple MACs. For that processor, I anticipate the easiest way to
> resolve this will be to add an additional cell with a "protocol
> controller instance" property.
> 
> Each serdes has a unique set of supported protocols (and lanes). The
> support matrix is stored in the driver and is selected based on the
> compatible string. It is anticipated that a new compatible string will
> need to be added for each serdes on each SoC that drivers support is
> added for. There is no "generic" compatible string for this reason.
> 
> There are two PLLs, each of which can be used as the master clock for
> each lane. Each PLL has its own reference. For the moment they are
> required, because it simplifies the driver implementation. Absent
> reference clocks can be modeled by a fixed-clock with a rate of 0.
> 
> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
> ---
> 
> Changes in v2:
> - Add #clock-cells. This will allow using assigned-clocks* to configure
>   the PLLs.
> - Allow a value of 1 for phy-cells. This allows for compatibility with
>   the similar (but according to Ioana Ciornei different enough) lynx-28g
>   binding.
> - Document phy cells in the description
> - Document the structure of the compatible strings
> - Fix example binding having too many cells in regs
> - Move compatible first
> - Refer to the device in the documentation, rather than the binding
> - Remove minItems
> - Rename to fsl,lynx-10g.yaml
> - Use list for clock-names
> 
>  .../devicetree/bindings/phy/fsl,lynx-10g.yaml | 93 +++++++++++++++++++
>  1 file changed, 93 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml b/Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
> new file mode 100644
> index 000000000000..b5a6f631df9f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
> @@ -0,0 +1,93 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/fsl,lynx-10g.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP Lynx 10G SerDes
> +
> +maintainers:
> +  - Sean Anderson <sean.anderson@seco.com>
> +
> +description: |
> +  These Lynx "SerDes" devices are found in NXP's QorIQ line of processors. The
> +  SerDes provides up to eight lanes. Each lane may be configured individually,
> +  or may be combined with adjacent lanes for a multi-lane protocol. The SerDes
> +  supports a variety of protocols, including up to 10G Ethernet, PCIe, SATA, and
> +  others. The specific protocols supported for each lane depend on the
> +  particular SoC.
> +
> +properties:
> +  compatible:
> +    description: |
> +      Each compatible is of the form "fsl,<soc-name>-serdes-<instance>".
> +      Although many registers are compatible between different SoCs, the
> +      supported protocols and lane assignments tend to be unique to each SerDes.
> +      Additionally, the method of activating protocols may also be unique.

We typically have properties for handling these variables. Numbering 
instances is something we avoid.

> +      Because of this, each SerDes instance will need its own compatible string.

> +      In cases where two SoCs share the same SerDes implementation (such as the
> +      LS1046A and LS1026A), both SoCs should share the same compatible strings.

No, not unless the 2 parts are just fuse or package pinout differences. 
Otherwise, there's always the chance they are not 'the same' and have 
different bugs.

You could have "fsl,ls1046a-serdes", "fsl,ls1026a-serdes" (whichever SoC 
is older last) if you think they are 'the same'.


> +    enum:
> +      - fsl,ls1046a-serdes-1
> +      - fsl,ls1046a-serdes-2
> +
> +  "#clock-cells":
> +    const: 1
> +    description: |
> +      The cell contains the index of the PLL, starting from 0. Note that when
> +      assigning a rate to a PLL, the PLLs' rates are divided by 1000 to avoid
> +      overflow. A rate of 5000000 corresponds to 5GHz.
> +
> +  "#phy-cells":
> +    minimum: 1
> +    maximum: 2
> +    description: |
> +      The cells contain the following arguments:
> +      - The first lane in the group. Lanes are numbered based on the register
> +        offsets, not the I/O ports. This corresponds to the letter-based ("Lane
> +        A") naming scheme, and not the number-based ("Lane 0") naming scheme. On
> +        most SoCs, "Lane A" is "Lane 0", but not always.
> +      - Last lane. For single-lane protocols, this should be the same as the
> +        first lane.
> +      If no lanes in a SerDes can be grouped, then #phy-cells may be 1, and the
> +      first cell will specify the only lane in the group.

Usually when we have per lane phys, the consumer side will have a 'phys' 
entry per lane.

Having a variable number of cells isn't great either. We usually only do 
that when we have to extend an existing binding.

> +
> +  clocks:
> +    maxItems: 2
> +    description: |
> +      Clock for each PLL reference clock input.
> +
> +  clock-names:
> +    items:
> +      - enum: &clocks
> +          - ref0
> +          - ref1
> +      - enum: *clocks

Whoa, there's a first. Don't use YAML anchors and references. We only 
support JSON subset of YAML.

> +
> +  reg:
> +    maxItems: 1
> +
> +required:
> +  - "#clock-cells"
> +  - "#phy-cells"
> +  - compatible
> +  - clocks
> +  - clock-names
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    serdes1: phy@1ea0000 {
> +      #clock-cells = <1>;
> +      #phy-cells = <2>;
> +      compatible = "fsl,ls1046a-serdes-1";
> +      reg = <0x1ea0000 0x2000>;
> +      clocks = <&clk_100mhz>, <&clk_156mhz>;
> +      clock-names = "ref0", "ref1";
> +      assigned-clocks = <&serdes1 0>;
> +      assigned-clock-rates = <5000000>;
> +    };
> +
> +...
> -- 
> 2.35.1.1320.gc452695387.dirty
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
