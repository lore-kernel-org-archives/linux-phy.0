Return-Path: <SRS0=Nzjq=OL=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 462BCC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 21 Sep 2021 20:55:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0EF1B61168
	for <linux-phy@archiver.kernel.org>; Tue, 21 Sep 2021 20:55:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0EF1B61168
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KB9KrqbZwHsr+RT0R7SYI6lJkabdXJKAgpcWxwq2/E4=; b=PHcNqO6Tp2M1DW
	fh6jgepS6iL1Wt+jdOBma7fVP+eLXfKc0PxrsOM0Hyt++d9mqZarOMD4U/PjEUJXvQ/euJZIAizij
	DAJWwIbXIRbUuBLfvffOxAQLs1D5vRHXavEL7u8i5h8l26WJpwq2e0EbpBfzJvkONhGtUyjiVwUvg
	h2UVzrqtaXkoDr+rxkFdVnST/T3rKcMMZGsiyYFAVsQhb0khrSAv3Z8XWsOXBisy8w/R4shiF3mKN
	wjPpToUE+VFx4NlyLlIO1UlafezwKVXWyNNJpu/vlXRiadgZIS3WXYgkm4qVmICP2QRK9HBNEPfaU
	72BTBdYrQ2XLlGx4beNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSmnO-005lzT-IC; Tue, 21 Sep 2021 20:55:18 +0000
Received: from mail-ot1-f43.google.com ([209.85.210.43])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSmnK-005lya-Oz; Tue, 21 Sep 2021 20:55:16 +0000
Received: by mail-ot1-f43.google.com with SMTP id
 h9-20020a9d2f09000000b005453f95356cso285267otb.11; 
 Tue, 21 Sep 2021 13:55:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=69dm8BDLapl9P/t0rby4XK6gfWV2C5uadFSV7i1cYzM=;
 b=jzNvSvDiHJboCoV/AB1Z0L6/9pm3miGiTe1b6YSxjrYIDr+qcBwnF2I94dwKM5DjKd
 2A39S/+MyXUHZO0k+yH6YIjBhiFb1ONYaJ1Py4941Vl2Uc/9Agja0LxrF5ITh3Wjl0MC
 Xuj+NiBVQGVMhsjGfq7slfSNPXJJbd7FOr06HqtNeLgw6gl4Mw8XnTt0cFT1S2OQuY8J
 M67O5+rh8bQheFCEnvF14VXUduFF3A2OrZ39+wnijsoWFjZw+uWsVDDi1gXsG5MYivIH
 qQyKzscwtHgG7KteIRKAyVdnbCwo/Uc9xc9fkieVDzto2llPK77Bx+xhtUmpBDwlAE5m
 l6LQ==
X-Gm-Message-State: AOAM530gNT4fP/l3ww/9x6oP1SezZYuoddwq0g5RwjM8ywSZc1K+ie5M
 o3n0ENSKZt2lzX1BXKpU8A==
X-Google-Smtp-Source: ABdhPJxDUL85FLbj7VkHCOCNR5mH4uhn9qUzkzT5Q/P35S6nWC2k5rO41Iy5pfGPKgpPhInUfiDDpQ==
X-Received: by 2002:a05:6830:90e:: with SMTP id
 v14mr27984641ott.222.1632257713368; 
 Tue, 21 Sep 2021 13:55:13 -0700 (PDT)
Received: from robh.at.kernel.org (rrcs-192-154-179-36.sw.biz.rr.com.
 [192.154.179.36])
 by smtp.gmail.com with ESMTPSA id r3sm33191oia.4.2021.09.21.13.55.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Sep 2021 13:55:12 -0700 (PDT)
Received: (nullmailer pid 3310346 invoked by uid 1000);
 Tue, 21 Sep 2021 20:55:11 -0000
Date: Tue, 21 Sep 2021 15:55:11 -0500
From: Rob Herring <robh@kernel.org>
To: Amelie Delaunay <amelie.delaunay@foss.st.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH 2/3] dt-bindings: phy: phy-stm32-usbphyc: add
 st,phy-tuning optional property
Message-ID: <YUpGr5riT3+YpWDv@robh.at.kernel.org>
References: <20210914145256.243869-1-amelie.delaunay@foss.st.com>
 <20210914145256.243869-3-amelie.delaunay@foss.st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210914145256.243869-3-amelie.delaunay@foss.st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210921_135514_866062_50E5DA22 
X-CRM114-Status: GOOD (  23.91  )
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

On Tue, Sep 14, 2021 at 04:52:55PM +0200, Amelie Delaunay wrote:
> This patch adds the description of a new optional property for usbphyc phy

Looks like a lot more than a property.

> sub nodes. st,phy-tuning contains all phy tuning parameters to apply on the
> phy.
> 
> Signed-off-by: Amelie Delaunay <amelie.delaunay@foss.st.com>
> ---
>  .../bindings/phy/phy-stm32-usbphyc.yaml       | 68 +++++++++++++++++++
>  1 file changed, 68 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml b/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml
> index 3329f1d33a4f..0fa184ea54db 100644
> --- a/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml
> +++ b/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml
> @@ -81,6 +81,60 @@ patternProperties:
>          properties:
>            vbus-supply: true
>  
> +      st,phy-tuning:
> +        $ref: /schemas/types.yaml#/definitions/phandle

Looks like a node to me (type: object). But why is a node needed here?

> +        description:
> +          It can be necessary to adjust the PHY settings to compensate parasitics, which can be due
> +          to USB connector/receptacle, routing, ESD protection component,... Here is the list of
> +          all optional parameters to tune the interface of the PHY (HS for High-Speed, FS for Full-
> +          Speed, LS for Low-Speed)
> +            * st,current-boost, <1> current boosting of 1mA
> +                                <2> current boosting of 2mA

Use standard unit suffix.

All these need to be a schema, not free form text.

> +            * st,no-lsfs-fb-cap, disables the LS/FS feedback capacitor
> +            * st,hs-slew-ctrl, slows the HS driver slew rate by 10%

Name the property such that it is self describing. 'slew control' 
doesn't say what it does to slew rate.

> +            * st,hs-dc-level, <0> = decreases the HS driver DC level by 5 to 7mV
> +                              <1> = increases the HS driver DC level by 5 to 7mV
> +                              <2> = increases the HS driver DC level by 10 to 14mV
> +            * st,fs-rftime-tuning, enables the FS rise/fall tuning option
> +            * st,hs-rftime-reduction, enables the HS rise/fall reduction feature
> +            * st,hs-current-trim, controls HS driver current trimming for choke
> +                                  <0> = 18.87 mA target current / nominal + 0%
> +                                  <1> = 19.165 mA target current / nominal + 1.56%
> +                                  <2> = 19.46 mA target current / nominal + 3.12%
> +                                  <3> = 19.755 mA target current / nominal + 4.68%
> +                                  <4> = 20.05 mA target current / nominal + 6.24%
> +                                  <5> = 20.345 mA target current / nominal + 7.8%
> +                                  <6> = 20.64 mA target current / nominal + 9.36%
> +                                  <7> = 20.935 mA target current / nominal + 10.92%
> +                                  <8> = 21.23 mA target current / nominal + 12.48%
> +                                  <9> = 21.525 mA target current / nominal + 14.04%
> +                                  <10> = 21.82 mA target current / nominal + 15.6%
> +                                  <11> = 22.115 mA target current / nominal + 17.16%
> +                                  <12> = 22.458 mA target current / nominal + 19.01%
> +                                  <13> = 22.755 mA target current / nominal + 20.58%
> +                                  <14> = 23.052 mA target current / nominal + 22.16%
> +                                  <15> = 23.348 mA target current / nominal + 23.73%
> +            * st,hs-impedance-trim, controls HS driver impedance tuning for choke
> +                                    <0> = no impedance offset
> +                                    <1> = reduces the impedance by 2 ohms
> +                                    <2> = reduces the impedance by 4 ohms
> +                                    <3> = reduces the impedance by 6 ohms
> +            * st,squelch-level, adjusts the squelch DC threshold value
> +                                <0> = no shift in threshold
> +                                <1> = threshold shift by +7 mV
> +                                <2> = threshold shift by -5 mV
> +                                <3> = threshold shift by +14 mV
> +            * st,hs-rx-gain-eq, enables the HS Rx gain equalizer
> +            * st,hs-rx-offset, adjusts the HS Rx offset
> +                               <0> = no offset
> +                               <1> = offset of +5 mV
> +                               <2> = offset of +10 mV
> +                               <3> = offset of -5 mV
> +            * st,no-hs-ftime-ctrl, disables the HS fall time control of single ended signals
> +                                   during pre-emphasis
> +            * st,no-lsfs-sc, disables the short circuit protection in LS/FS driver
> +            * st,hs-tx-staggering, enables the basic staggering in HS Tx mode
> +
>      allOf:
>        - if:
>            properties:
> @@ -122,6 +176,18 @@ examples:
>    - |
>      #include <dt-bindings/clock/stm32mp1-clks.h>
>      #include <dt-bindings/reset/stm32mp1-resets.h>
> +
> +    usb_phy_tuning: usb-phy-tuning {
> +        st,hs-dc-level = <2>;
> +        st,fs-rftime-tuning;
> +        st,hs-rftime-reduction;
> +        st,hs-current-trim = <15>;
> +        st,hs-impedance-trim = <1>;
> +        st,squelch-level = <3>;
> +        st,hs-rx-offset = <2>;
> +        st,no-lsfs-sc;
> +    };
> +
>      usbphyc: usbphyc@5a006000 {
>          compatible = "st,stm32mp1-usbphyc";
>          reg = <0x5a006000 0x1000>;
> @@ -137,6 +203,7 @@ examples:
>              reg = <0>;
>              phy-supply = <&vdd_usb>;
>              #phy-cells = <0>;
> +            st,phy-tuning = <&usb_phy_tuning>;

Just add all the properties here.

>              connector {
>                  compatible = "usb-a-connector";
>                  vbus-supply = <&vbus_sw>;
> @@ -147,6 +214,7 @@ examples:
>              reg = <1>;
>              phy-supply = <&vdd_usb>;
>              #phy-cells = <1>;
> +            st,phy-tuning = <&usb_phy_tuning>;
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
