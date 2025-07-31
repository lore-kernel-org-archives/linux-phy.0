Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9CB2C87FCA
	for <linux-phy@archiver.kernel.org>; Thu, 31 Jul 2025 04:48:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jb1fDu/NxYsiW8MCZhcq1rI/f0vty/R9aMti12FcqbA=; b=Zf7YnL4s582YdM
	UKXVTWjX7svKDlXhj8vbUHkawNH0S2yu0dkNIGcH5s9ruJ5GJ6YvrsijESkLkgd6oWsP/rKn25lyI
	62yAgBMr5ZpiKyOrt2DtbDB4y0018jwftCcaPMpMlomQZdgItt8t7l4/U7W8gb2w3FO7de0xowZo8
	esZ+DEcR3WwWtw083bvAroyJOTg5FsVtuRhLoDUZtA0n1ljkUiqqAbtHk34fwV7LfPYM003IoSHJE
	jGTuPI7fEhgVXotCVuxh0PUrx0Yqv+6HKxTZMn0gdh2hyquOZ5hvrN+WMgdiYn/tqmvG8x92l9ysJ
	UmwEop1kRGPWnljkMpbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhLDT-00000002tsZ-2aoV;
	Thu, 31 Jul 2025 04:48:31 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhLDR-00000002ts7-0osQ
	for linux-phy@lists.infradead.org;
	Thu, 31 Jul 2025 04:48:30 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-45634205adaso1859555e9.2
        for <linux-phy@lists.infradead.org>; Wed, 30 Jul 2025 21:48:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753937307; x=1754542107; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=b+OrFG1RW/4OrT91GMBpoWi+WkQwdsqdJLp/SCREI/0=;
        b=P7CzbnRzCL20aGsRAFKhJ3Gzj8ZlukyuGSixL/AkjtLp+39k91iVMDnkYTyJTpG30O
         nFiDhrV9grY0ZMi5tUeMyk7LeGP4MFF22NEwNBcYpM8nsoaahoZYe/iOQWZqhcRIFPwi
         6+G7g9k+0RP+Av0Vhd/xeFnxJYHEeyAlkT81OSjCqD/TETu38/K63gsBMtIQJLgMgbKL
         zdBmSEHoRxVzRjVYeSPJB4up0Udw6/OlrOHZjVvgpML1OU8LD6Aam8/W2NipjS2TmAN9
         Biivmopepu8RfnMvqXKQEhKjtnyJDOJ4ihLA5WAUqepiGoHGuEn6D7OXcNVkk72bRiBG
         WzjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753937307; x=1754542107;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b+OrFG1RW/4OrT91GMBpoWi+WkQwdsqdJLp/SCREI/0=;
        b=GV+q8y7FofAhFs8+Q2gD8+c5Y4rZBz4pPYocyEc5raUAzCIRR4TlxGH1u7QtZ9oB7o
         q7qGVi4VwgyBlm62SBrRsFbMFFYy8gy/LbX5/uQaiDvM8L326YGRCdJRvbbxSRUi8lAU
         q31lk++wpI0nuwphCFqUUKYsW6H3oLIdzAksAmx65htQnThaW1MVu8+MoJDqL/XjsO7V
         23fW4EMPkTxi83LXU4Jvh0ZFksu67sJ+SiN05itYx2uvzPUsEiLAx4vPNEiYB7/6YJFz
         TXSp/cE/lH5cKlEcSazNELJVeEFJ7KvBNkLyLoDsPfrvycHLfFmIaIpTTNqgd1A+eEJ6
         RLfQ==
X-Forwarded-Encrypted: i=1; AJvYcCWUjloNq/zINyeU5l6Owj2Wi5GG0YuA03FGLtYSsuBCUYfuKqadz0b1uzMjbj77YN3MnrS72TZ9kh8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx2obN/LNVPfzl5x8B87ZtiYak8KqzGy9FAI9VMPgA9oNCPMX/3
	Hny2blJQbVCKgU59YE7yxCuqXS8X16lDH+qX1WgUkCwE8xfBIUSwF7Gb
X-Gm-Gg: ASbGncufoi2183oiazdc5OUz61bCJPW5wycxHm11sXH141u5s4ruDAE77XwogYEQjGS
	SfGzErN7A+9y4qgY+UyP1wLM1LzxCsWBwOrxRbGCovTHtJT1T058VsQZhAZg4G2V4P0/kWl7LAN
	0XhebmmlYd6CFAGsjp4d4lBdnMR88uy5Nn7FJ98BnfDxwnH4B2gMAx34UlC+NzspcoC6yIlVtbh
	zo0T7JKVIk7jPgd3jJvv7SWzqjParr1qjd6qwaaRDsL1RwhWJ1vdFDixfKNx/pDbjNYwAzTDJP9
	B3lfDa95f0//BFY4ZfukVAEPOjWKhCJu80TudoIskvdca9NWBAPLrPHrbAZV40CbYVl0JPHNqFF
	aj2+pdLuJo859kRlwf4+kSlVRByUBpZg=
X-Google-Smtp-Source: AGHT+IFCKD8iIuL/MkTHk1LNw7dIB6eXL268mG1FZ3NC7vk5GOS2xCLYOJP6CKbFGwLGoLV6x8T+EQ==
X-Received: by 2002:a05:600c:45cc:b0:456:2dc1:a603 with SMTP id 5b1f17b1804b1-4589eeb25cbmr7156195e9.5.1753937306889;
        Wed, 30 Jul 2025 21:48:26 -0700 (PDT)
Received: from legfed1 ([2a00:79c0:60f:e800:22ea:3d6a:5919:85f8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-458953cff16sm49305285e9.19.2025.07.30.21.48.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jul 2025 21:48:26 -0700 (PDT)
Date: Thu, 31 Jul 2025 06:48:24 +0200
From: Dimitri Fedrau <dima.fedrau@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Dimitri Fedrau <dimitri.fedrau@liebherr.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: add support for NXPs TJA1145 CAN
 transceiver
Message-ID: <20250731044824.GA3815@legfed1>
References: <20250728-tja1145-support-v1-0-ebd8494d545c@liebherr.com>
 <20250728-tja1145-support-v1-1-ebd8494d545c@liebherr.com>
 <20250730-aromatic-optimistic-hyena-f1db1a@kuoka>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250730-aromatic-optimistic-hyena-f1db1a@kuoka>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250730_214829_238060_4F891421 
X-CRM114-Status: GOOD (  24.79  )
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

Hi Krzysztof,

Am Wed, Jul 30, 2025 at 09:35:12AM +0200 schrieb Krzysztof Kozlowski:
> On Mon, Jul 28, 2025 at 05:39:29PM +0200, Dimitri Fedrau wrote:
> > Adding documentation for NXPs TJA1145 CAN transceiver.
> > 
> > Signed-off-by: Dimitri Fedrau <dimitri.fedrau@liebherr.com>
> > ---
> >  .../devicetree/bindings/phy/nxp,tja1145-can.yaml   | 79 ++++++++++++++++++++++
> 
> Why isn't this in can directory with rest of CAN bindings?
> 
The directory contains CAN controller bindings. This is a CAN transceiver
binding. And the only CAN transceiver binding I could find so far is this:
https://elixir.bootlin.com/linux/v6.16/source/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
The driver uses the generic PHY framework as the driver for the tja1145
does.

> >  1 file changed, 79 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/nxp,tja1145-can.yaml b/Documentation/devicetree/bindings/phy/nxp,tja1145-can.yaml
> > new file mode 100644
> > index 0000000000000000000000000000000000000000..10bf2bce1b35788b3284c42e544a56eda6d79947
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/nxp,tja1145-can.yaml
> 
> Filename should match compatible.
> 
Ok, will fix this.

> > @@ -0,0 +1,79 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/phy/nxp,tja1145-can.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: TJA1145 CAN transceiver
> > +
> > +maintainers:
> > +  - Dimitri Fedrau <dimitri.fedrau@liebherr.com>
> > +
> > +allOf:
> > +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> 
> Missing ref to transceiver properties. Look at other CAN bindings.
>
There is only one transceiver property(max-bitrate) which I don't need
because the max-bitrate is known for the device. So why should I add it
to the DT ?
I'm only aware of CAN controller bindings making use of the transceiver
property which I think is because the PHYs they are supporting with this
are very simple which need no or little configuration to operate and the
max-bitrate property is needed to limit the bitrate.

> > +
> > +properties:
> > +  compatible:
> > +    const: nxp,tja1145
> > +
> > +  "#phy-cells":
> > +    const: 0
> > +
> > +  reg:
> > +    maxItems: 1
> 
> reg is the second property, also in "required:" block.
> 
Will fix this.

> > +
> > +  spi-max-frequency:
> > +    maximum: 4000000
> > +
> > +  spi-cpha: true
> > +
> > +  spi-cs-setup-delay-ns:
> > +    minimum: 50
> > +    default: 50
> > +
> > +  spi-cs-hold-delay-ns:
> > +    minimum: 50
> > +    default: 50
> > +
> > +  spi-cs-inactive-delay-ns:
> > +    minimum: 250
> > +    default: 250
> > +
> > +  vcc-supply:
> > +    description:
> > +      CAN transceiver supply voltage
> > +
> > +  vio-supply:
> > +    description:
> > +      Supply voltage for I/O level adaptor
> > +
> > +  vbat-supply:
> > +    description:
> > +      Battery supply voltage
> > +
> > +required:
> > +  - compatible
> > +  - "#phy-cells"
> > +  - reg
> > +
> > +unevaluatedProperties: false
> > +
> > +examples:
> > +  - |
> > +    spi {
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +        canphy@0 {
> 
> can-phy if something like this exist. If not, then probably can-transceiver
>
Will fix this.

> > +            compatible = "nxp,tja1145";
> > +            #phy-cells = <0>;
> > +            reg = <0>;
> 
> Please follow DTS coding style.
>
Ok.

Best regards,
Dimitri Fedrau

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
