Return-Path: <SRS0=xaqD=ON=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 170E5C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 23 Sep 2021 12:49:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C1D8B61029
	for <linux-phy@archiver.kernel.org>; Thu, 23 Sep 2021 12:49:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C1D8B61029
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HHbmVMspbz32hVNQn/nNvUkR0PNBuCU2ekuRgv7BwS0=; b=GGhxpeHtObgvaw
	F1a/C4KoFSJWrm3ftuW3J7ttfg7eHRx6CiTWXWMn+bgT/rkHW97w7NHQE7UNk6Gpl/xk5D1eV+csz
	/BYAj/KTx0A79xVd8YbysWBh5cHbt5rTcKYWayhwRbVRU3x3y6zicqRwPcWHsmK8n8zFt+JA7C38Z
	dETJCvt2tqAQTHcI2slKPW0rW+PU74US9ytj9LATrA0uWpwbwyH+wrnYSPjrphmiwISNp3PnadgD5
	h+Y9uz0/PeCmWNRBJbWDMP992jgqE3GSZBwcMxZMYEOKGw/dL5fiaBjHfEHpQ0Kk2gYm/Ydd4czA9
	HkgnyuiI0P3jnHwmvPtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mTO9z-00BTpD-A1; Thu, 23 Sep 2021 12:49:07 +0000
Received: from mail-oo1-f41.google.com ([209.85.161.41])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mTO9x-00BToq-91
 for linux-phy@lists.infradead.org; Thu, 23 Sep 2021 12:49:06 +0000
Received: by mail-oo1-f41.google.com with SMTP id
 u15-20020a4a970f000000b0029aed4b0e4eso2079651ooi.9
 for <linux-phy@lists.infradead.org>; Thu, 23 Sep 2021 05:49:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=32AqBVXNroHHsS62jPgtjGmkNYUjzZq0gtkFGRv5Kts=;
 b=JMWgiEUyobPPdc5yVZ6KBw9Jo9jEU/kfIO6BPWeSBolYaN6ATCC6VpgdysL5oEryUp
 uQ8osyRj3MhWxBE6yHZ1gOuNK1R0Vm8Y71U+4JX6K5m/aYCaEPHtO/axX4EuGRyJTYzF
 uDg6MHH6c3YeW7VQ3wwSwk0UswBaoVj5pprBiOOyUw0wgO4NLkzRlYkD2avBve4CgMfI
 kqe6pnzgq2rGUBfxcT/M5mmp0cfPfkM7i9Jk7bR4acWdg8FPmPrT0gzGgcCBPcz5Ky+l
 gWzMrzl96ZL2aciO+utBe+ynmWveYLa6EYFxbv72O5UKox8odO1RNCDB4GickSf6u7SP
 8XAA==
X-Gm-Message-State: AOAM532rzXWf/+lX2PlhatuPhFZx3VJeJD26Kktu8tgOzQ4V492juMyA
 3qI1Kxlx/O1Au76SsJmU9A==
X-Google-Smtp-Source: ABdhPJy/+1msRjPfYSZItQTF2FX/XSozQKcIBXilhnC8CsG6TfKUKNsiC4VyOE3zFEDTwvBP8VIx/w==
X-Received: by 2002:a4a:ba90:: with SMTP id d16mr1257550oop.31.1632401343915; 
 Thu, 23 Sep 2021 05:49:03 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id i27sm1277529ots.12.2021.09.23.05.49.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Sep 2021 05:49:03 -0700 (PDT)
Received: (nullmailer pid 2828726 invoked by uid 1000);
 Thu, 23 Sep 2021 12:49:02 -0000
Date: Thu, 23 Sep 2021 07:49:02 -0500
From: Rob Herring <robh@kernel.org>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: davem@davemloft.net, kuba@kernel.org, andrew@lunn.ch, linux@armlinux.org.uk,
 f.fainelli@gmail.com, alexandre.belloni@bootlin.com, vladimir.oltean@nxp.com,
 UNGLinuxDriver@microchip.com, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-pm@vger.kernel.org
Subject: Re: [RFC PATCH net-next 04/12] dt-bindings: reset: Add lan966x
 switch reset bindings
Message-ID: <YUx3vuQQbHVbpcTh@robh.at.kernel.org>
References: <20210920095218.1108151-1-horatiu.vultur@microchip.com>
 <20210920095218.1108151-5-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210920095218.1108151-5-horatiu.vultur@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210923_054905_366170_41F2E761 
X-CRM114-Status: GOOD (  15.61  )
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

On Mon, Sep 20, 2021 at 11:52:10AM +0200, Horatiu Vultur wrote:
> Document the lan966x switch reset device driver bindings
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  .../bindings/reset/lan966x,rst.yaml           | 58 +++++++++++++++++++
>  1 file changed, 58 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/reset/lan966x,rst.yaml
> 
> diff --git a/Documentation/devicetree/bindings/reset/lan966x,rst.yaml b/Documentation/devicetree/bindings/reset/lan966x,rst.yaml
> new file mode 100644
> index 000000000000..97d6334e4e0a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/reset/lan966x,rst.yaml
> @@ -0,0 +1,58 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/reset/lan966x,rst.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Microchip lan966x Switch Reset Controller
> +
> +maintainers:
> +  - Horatiu Vultur <horatiu.vultur@microchip.com>
> +  - UNGLinuxDriver@microchip.com
> +
> +description: |
> +  The Microchip lan966x Switch provides reset control and implements the
> +  following
> +  functions
> +    - One Time Switch Core Reset (Soft Reset)

This looks like just some grouping of separate reset controllers. If 
there are 3 h/w blocks providing resets, then the DT should have 3 reset 
providers.

> +
> +properties:
> +  $nodename:
> +    pattern: "^reset-controller$"

Don't use 'pattern' for fixed strings.

> +
> +  compatible:
> +    const: microchip,lan966x-switch-reset
> +
> +  "#reset-cells":
> +    const: 1
> +
> +  cpu-syscon:
> +    $ref: "/schemas/types.yaml#/definitions/phandle"
> +    description: syscon used to access CPU reset
> +
> +  switch-syscon:
> +    $ref: "/schemas/types.yaml#/definitions/phandle"
> +    description: syscon used to access SWITCH reset
> +
> +  chip-syscon:
> +    $ref: "/schemas/types.yaml#/definitions/phandle"
> +    description: syscon used to access CHIP reset
> +
> +required:
> +  - compatible
> +  - "#reset-cells"
> +  - cpu-syscon
> +  - switch-syscon
> +  - chip-syscon
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    reset: reset-controller {
> +        compatible = "microchip,lan966x-switch-reset";
> +        #reset-cells = <1>;
> +        cpu-syscon = <&cpu_ctrl>;
> +        switch-syscon = <&switch_ctrl>;
> +        chip-syscon = <&chip_ctrl>;
> +    };
> -- 
> 2.31.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
