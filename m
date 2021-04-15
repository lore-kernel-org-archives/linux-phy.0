Return-Path: <SRS0=iPRR=JM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-19.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4BD47C433ED
	for <linux-phy@archiver.kernel.org>; Thu, 15 Apr 2021 21:09:00 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B54676109D
	for <linux-phy@archiver.kernel.org>; Thu, 15 Apr 2021 21:08:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B54676109D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2qS0s3sDQ6eOna4Jxco8vGil5wz6+AsR2CMHxaP+BWo=; b=lPuOQ6cIykjlw0IHrgZ03Sx9c
	nywCCKAhuQJLHOy+PsOEns6CxftS+VrsYBkTx2ierOkaFAKiCfDC+3rRLZM96pLrWRwHPnCie7YbF
	ASlXwdLyDrwmJig4pUa3i4Ra9tou61lfL8WeC0xKVDZC5ArO/7ffPnMsqR7PjQ6nilG/HuY0RJYDN
	HOGjwgGiF9wR2cW1PsfapJP6kL4meWvJGvIzQUvA6oGVc+bLl4bkiIfWWd7YRaFV9S98L8rDLT6/L
	5L4G9M/mcNIyX5CqJpLkdFhF0Y0e1/Bzo81blESBFTTl1w05rdbXC1XyFcL7htn5n8wbxkoCbepO7
	T1a2aAZ6Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lX9EQ-00HLiU-1G; Thu, 15 Apr 2021 21:08:58 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lX9EN-00HLiA-S5
 for linux-phy@desiato.infradead.org; Thu, 15 Apr 2021 21:08:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=dBWyxdU6sbfl8J7+Mi7uwU0zvgg5AWmI3XulvlHXtE0=; b=e8ZY2xD0jp+UsxwMw15F0FcU6a
 ze1V6Yt+ff9W0K6VAnSeJNcl6uHfUH9P5WKDdjEM0AlVPjiau8wJyOlJTXvKlDROsxvUAfapd/FCn
 ZEkRFbpjwdSgOF1ylMk9rS+NPIq1lzlVrmKWhYv87xlknYI33ZESKKCRSMYHkDmpyqoDYTr+PGylR
 nO7rOP/DWjpHBxGmvSn9NSYTjq6NIhJr1IIsC4i9mM95LNElFNLmr2/Rm87qiLGOhv+eXOhAROMEs
 K35pB0TCikFna6gKokyjkb1hY9v2IdOojYJx4HchwBD9SHPzfN0W6r+c7EsZMGDtbzBre9XkaBZ8T
 6rMPV11g==;
Received: from mail-oo1-f45.google.com ([209.85.161.45])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lX9EL-008tOt-7e
 for linux-phy@lists.infradead.org; Thu, 15 Apr 2021 21:08:54 +0000
Received: by mail-oo1-f45.google.com with SMTP id
 i20-20020a4a8d940000b02901bc71746525so5702369ook.2
 for <linux-phy@lists.infradead.org>; Thu, 15 Apr 2021 14:08:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=dBWyxdU6sbfl8J7+Mi7uwU0zvgg5AWmI3XulvlHXtE0=;
 b=F8RffOjr1qrBtx2VUf+gYLFOBg8ciz1vosXzUSm5cDcXBwCedGhZpJRC/lNB/tg1vA
 naCCiE2j5yk0lqcx/gRQYQxGnGtTOTLWKQ1b4q5MjogU5RHmiOqhZkO8EI2pu4kZHsvj
 UyJWI16uhsfbbg3PTZWgEqrSf5nQh5Ix8VgPOailticHZ08taPntCJxUMvM4NIMZWcZG
 oC9xlrYbQWzOf2OQg58PCET1KUIqK7GN658u8HqNA1uraxjCF6TrjQdmqgxV+0/3WatH
 /0EoiyzxFkMV849abbSMm16JLwjApMm1JeeRTpLX722REq03vIM/D6YFhsDnfOPkFWgX
 hWLQ==
X-Gm-Message-State: AOAM531/cZf3k6z/F4Jlpt1oSdS0qPqmCy60vhCzJYozvwy///mrHiCS
 juAW9VRzPmSwUnYI7l40gw==
X-Google-Smtp-Source: ABdhPJx11jv44MnT6jEOw+QxwzTP6f31Jok0fQUAizHEBbO1vMUV/JhaP/Ge0LqyHPQWXhQI3Xv5Ig==
X-Received: by 2002:a4a:4304:: with SMTP id k4mr816573ooj.42.1618520927976;
 Thu, 15 Apr 2021 14:08:47 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i11sm778714oot.11.2021.04.15.14.08.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Apr 2021 14:08:47 -0700 (PDT)
Received: (nullmailer pid 1885798 invoked by uid 1000);
 Thu, 15 Apr 2021 21:08:46 -0000
Date: Thu, 15 Apr 2021 16:08:46 -0500
From: Rob Herring <robh@kernel.org>
To: Aswath Govindraju <a-govindraju@ti.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-can@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Marc Kleine-Budde <mkl@pengutronix.de>,
 Wolfgang Grandegger <wg@grandegger.com>, Lokesh Vutla <lokeshvutla@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>
Subject: Re: [PATCH v3 3/4] dt-bindings: phy: Add binding for TI TCAN104x CAN
 transceivers
Message-ID: <20210415210846.GA1871445@robh.at.kernel.org>
References: <20210415144947.4725-1-a-govindraju@ti.com>
 <20210415144947.4725-4-a-govindraju@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210415144947.4725-4-a-govindraju@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210415_140853_297608_5213DFB3 
X-CRM114-Status: GOOD (  15.92  )
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

On Thu, Apr 15, 2021 at 08:19:46PM +0530, Aswath Govindraju wrote:
> Add binding documentation for TI TCAN104x CAN transceivers.
> 
> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
> ---
>  .../bindings/phy/ti,tcan104x-can.yaml         | 56 +++++++++++++++++++
>  MAINTAINERS                                   |  1 +
>  2 files changed, 57 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> new file mode 100644
> index 000000000000..4643b979930a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> @@ -0,0 +1,56 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/phy/ti,tcan104x-can.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: TCAN104x CAN TRANSCEIVER PHY
> +
> +maintainers:
> +  - Aswath Govindraju <a-govindraju@ti.com>
> +
> +properties:
> +  $nodename:
> +    pattern: "^tcan104x-phy"

Node names should be generic. So 'phy' or 'can-phy'.

With that,

Reviewed-by: Rob Herring <robh@kernel.org>

> +
> +  compatible:
> +    enum:
> +      - ti,tcan1042
> +      - ti,tcan1043
> +
> +  '#phy-cells':
> +    const: 0
> +
> +  standby-gpios:
> +    description:
> +      gpio node to toggle standby signal on transceiver
> +    maxItems: 1
> +
> +  enable-gpios:
> +    description:
> +      gpio node to toggle enable signal on transceiver
> +    maxItems: 1
> +
> +  max-bitrate:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      max bit rate supported in bps
> +    minimum: 1
> +
> +required:
> +  - compatible
> +  - '#phy-cells'
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    transceiver1: tcan104x-phy {
> +      compatible = "ti,tcan1043";
> +      #phy-cells = <0>;
> +      max-bitrate = <5000000>;
> +      standby-gpios = <&wakeup_gpio1 16 GPIO_ACTIVE_LOW>;
> +      enable-gpios = <&main_gpio1 67 GPIO_ACTIVE_HIGH>;
> +    };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 84ef96a444c3..e666d33af10d 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -4046,6 +4046,7 @@ W:	https://github.com/linux-can
>  T:	git git://git.kernel.org/pub/scm/linux/kernel/git/mkl/linux-can.git
>  T:	git git://git.kernel.org/pub/scm/linux/kernel/git/mkl/linux-can-next.git
>  F:	Documentation/devicetree/bindings/net/can/
> +F:	Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
>  F:	drivers/net/can/
>  F:	include/linux/can/bittiming.h
>  F:	include/linux/can/dev.h
> -- 
> 2.17.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
