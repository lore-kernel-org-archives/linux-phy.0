Return-Path: <SRS0=ayEg=PC=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE01CC433F5
	for <linux-phy@archiver.kernel.org>; Thu, 14 Oct 2021 17:26:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9BE1A61152
	for <linux-phy@archiver.kernel.org>; Thu, 14 Oct 2021 17:26:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9BE1A61152
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s2P1caMf2nFOa8ch+u15EbJazqXatDKgLYReykjSex0=; b=vFs+3xb4MvFsVo
	Ntkp8STOY1b6r9I3n+fdvh1Rsvsx0/iD1gka59yZUoglgO25h8UJyTSWNyPMnVg8hxDXVES9QHTKq
	nY5BnQfq8zs7MxfDZ6BG8bZc0T90QUF8PaCQh0K9ALhhojTe1PclR5STLGQGnIyfv9vbG1qNND8if
	ab1BY4YI1QqPX7yIJ72dwoJ1opQY5HBxxMEgMA3/7WWhFBpDHQE/5qbbdNmxx6NV0fOG7U7dBN/Kw
	MqHyVuZIWTdB6Ty/l2QIiYzNlEntKaNayv2X5xmKzvL7RCOlxeyDgrjqXba0izlmHGWSDq0U5i+eQ
	iNuBnnhxrIw+qqffBbQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mb4VG-003xi5-R7; Thu, 14 Oct 2021 17:26:50 +0000
Received: from mail-oi1-f169.google.com ([209.85.167.169])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mb4VE-003xhG-2J; Thu, 14 Oct 2021 17:26:49 +0000
Received: by mail-oi1-f169.google.com with SMTP id n64so9424718oih.2;
 Thu, 14 Oct 2021 10:26:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=aZhMJFR7qEIO7M61CFkCjB5kHmujnbdK6yv9W6S7EmM=;
 b=I9LvgLhY5tO7MSsbgoG9gxGPKcn1VPbqrR4/QJ/euTlYSbBKYsKw2jABupOcp/PKnV
 hduzWDHdVw7UTTlD8v0fi1BfIldp5h6r16y2wdh92YDuGr1kJsZlPmCcjMY100nYoxtr
 V+qwQBOiocYmIAsInptF0NFOnEXr++OJOz8qIRZswopPmsbCzO4rL4yeicd5yo/4wHI6
 15Cv2VTDW4AhJvkSDbWiUOqDK40OglfIbzeI48ht+w239w27/6utq5chavkkKL2JJuuv
 vxd3MvlMSPlE9qKeQTSJFBZ4OjMGmB6iw/UssGyO/8IYBUapPwdcItUYqMiOpRCagJWU
 pmKg==
X-Gm-Message-State: AOAM530zgoVJjLQXMYBbcK8upaci87XA2xYhJyL0SrM+6BePqKJa3XKb
 6ms5Z4Ct8vhuoobXp5JXaw==
X-Google-Smtp-Source: ABdhPJzpW374h0wPKAjFh+UaJiw4S6Qg9dmeEbajDJXoaNMqM0XlLBMT14ZlD69a1wFChgOc8hrx3A==
X-Received: by 2002:aca:3656:: with SMTP id d83mr13912263oia.176.1634232407099; 
 Thu, 14 Oct 2021 10:26:47 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id bp21sm420799oib.31.2021.10.14.10.26.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Oct 2021 10:26:46 -0700 (PDT)
Received: (nullmailer pid 3584071 invoked by uid 1000);
 Thu, 14 Oct 2021 17:26:45 -0000
Date: Thu, 14 Oct 2021 12:26:45 -0500
From: Rob Herring <robh@kernel.org>
To: Amelie Delaunay <amelie.delaunay@foss.st.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH v2 2/3] dt-bindings: phy: phy-stm32-usbphyc: add optional
 phy tuning properties
Message-ID: <YWhoVd/XR2SdAbXV@robh.at.kernel.org>
References: <20211005152453.89330-1-amelie.delaunay@foss.st.com>
 <20211005152453.89330-3-amelie.delaunay@foss.st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211005152453.89330-3-amelie.delaunay@foss.st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211014_102648_161905_9CAF1B6A 
X-CRM114-Status: GOOD (  22.28  )
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

On Tue, Oct 05, 2021 at 05:24:52PM +0200, Amelie Delaunay wrote:
> This patch adds the description of new optional phy tuning properties
> for usbphyc phy sub nodes.
> 
> Signed-off-by: Amelie Delaunay <amelie.delaunay@foss.st.com>
> ---
> Changes in v2:
> - st,phy-tuning property removed
> - tuning properties are now put directly in each child node
> - tuning properties are no more free form text and their name reworked
> ---
>  .../bindings/phy/phy-stm32-usbphyc.yaml       | 126 ++++++++++++++++++
>  1 file changed, 126 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml b/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml
> index 3329f1d33a4f..c0f4dff2b8cb 100644
> --- a/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml
> +++ b/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml
> @@ -81,6 +81,116 @@ patternProperties:
>          properties:
>            vbus-supply: true
>  
> +      # It can be necessary to adjust the PHY settings to compensate parasitics, which can be due
> +      # to USB connector/receptacle, routing, ESD protection component,... Here is the list of
> +      # all optional parameters to tune the interface of the PHY (HS for High-Speed, FS for Full-
> +      # Speed, LS for Low-Speed)
> +
> +      st,current-boost-milliamp:

Not a documented unit. Use '-microamp'.

> +        description: Current boosting in mA
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        minimum: 1
> +        maximum: 2
> +
> +      st,no-lsfs-fb-cap:
> +        description: Disables the LS/FS feedback capacitor
> +        type: boolean
> +
> +      st,decrease-hs-slew-rate:
> +        description: Decreases the HS driver slew rate by 10%
> +        type: boolean
> +
> +      st,tune-hs-dc-level:
> +        description: Tunes the HS driver DC level

You need '|' after 'description:' to retain the formatting you have 
here.

> +          - <0> normal level
> +          - <1> increases the level by 5 to 7 mV
> +          - <2> increases the level by 10 to 14 mV
> +          - <3> decreases the level by 5 to 7 mV
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        minimum: 0
> +        maximum: 3
> +        default: 0
> +
> +      st,enable-fs-rftime-tuning:
> +        description: Enables the FS rise/fall tuning option
> +        type: boolean
> +
> +      st,enable-hs-rftime-reduction:
> +        description: Enables the HS rise/fall reduction feature
> +        type: boolean
> +
> +      st,trim-hs-current:
> +        description: Controls HS driver current trimming for choke compensation
> +          - <0> = 18.87 mA target current / nominal + 0%
> +          - <1> = 19.165 mA target current / nominal + 1.56%
> +          - <2> = 19.46 mA target current / nominal + 3.12%
> +          - <3> = 19.755 mA target current / nominal + 4.68%
> +          - <4> = 20.05 mA target current / nominal + 6.24%
> +          - <5> = 20.345 mA target current / nominal + 7.8%
> +          - <6> = 20.64 mA target current / nominal + 9.36%
> +          - <7> = 20.935 mA target current / nominal + 10.92%
> +          - <8> = 21.23 mA target current / nominal + 12.48%
> +          - <9> = 21.525 mA target current / nominal + 14.04%
> +          - <10> = 21.82 mA target current / nominal + 15.6%
> +          - <11> = 22.115 mA target current / nominal + 17.16%
> +          - <12> = 22.458 mA target current / nominal + 19.01%
> +          - <13> = 22.755 mA target current / nominal + 20.58%
> +          - <14> = 23.052 mA target current / nominal + 22.16%
> +          - <15> = 23.348 mA target current / nominal + 23.73%
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        minimum: 0
> +        maximum: 15
> +        default: 0
> +
> +      st,trim-hs-impedance:
> +        description: Controls HS driver impedance tuning for choke compensation
> +          - <0> = no impedance offset
> +          - <1> = reduce the impedance by 2 ohms
> +          - <2> = reduce the impedance by 4 ohms
> +          - <3> = reduce the impedance by 6 ohms
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        minimum: 0
> +        maximum: 3
> +        default: 0
> +
> +      st,tune-squelch-level:
> +        description: Tunes the squelch DC threshold value
> +          - <0> = no shift in threshold
> +          - <1> = threshold shift by +7 mV
> +          - <2> = threshold shift by -5 mV
> +          - <3> = threshold shift by +14 mV
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        minimum: 0
> +        maximum: 3
> +        default: 0
> +
> +      st,enable-hs-rx-gain-eq:
> +        description: Enables the HS Rx gain equalizer
> +        type: boolean
> +
> +      st,tune-hs-rx-offset:
> +        description: Adjusts the HS Rx offset
> +          - <0> = no offset
> +          - <1> = offset of +5 mV
> +          - <2> = offset of +10 mV
> +          - <3> = offset of -5 mV
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        minimum: 0
> +        maximum: 3
> +        default: 0
> +
> +      st,no-hs-ftime-ctrl:
> +        description: Disables the HS fall time control of single ended signals during pre-emphasis
> +        type: boolean
> +
> +      st,no-lsfs-sc:
> +        description: Disables the short circuit protection in LS/FS driver
> +        type: boolean
> +
> +      st,enable-hs-tx-staggering:
> +        description: Enables the basic staggering in HS Tx mode
> +        type: boolean
> +
>      allOf:
>        - if:
>            properties:
> @@ -137,6 +247,14 @@ examples:
>              reg = <0>;
>              phy-supply = <&vdd_usb>;
>              #phy-cells = <0>;
> +            st,tune-hs-dc-level = <2>;
> +            st,enable-fs-rftime-tuning;
> +            st,enable-hs-rftime-reduction;
> +            st,trim-hs-current = <15>;
> +            st,trim-hs-impedance = <1>;
> +            st,tune-squelch-level = <3>;
> +            st,tune-hs-rx-offset = <2>;
> +            st,no-lsfs-sc;
>              connector {
>                  compatible = "usb-a-connector";
>                  vbus-supply = <&vbus_sw>;
> @@ -147,6 +265,14 @@ examples:
>              reg = <1>;
>              phy-supply = <&vdd_usb>;
>              #phy-cells = <1>;
> +            st,tune-hs-dc-level = <2>;
> +            st,enable-fs-rftime-tuning;
> +            st,enable-hs-rftime-reduction;
> +            st,trim-hs-current = <15>;
> +            st,trim-hs-impedance = <1>;
> +            st,tune-squelch-level = <3>;
> +            st,tune-hs-rx-offset = <2>;
> +            st,no-lsfs-sc;
>          };
>      };
>  ...
> -- 
> 2.25.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
