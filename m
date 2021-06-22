Return-Path: <SRS0=dFK9=LQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A7DAC49EA2
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jun 2021 16:59:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 146AD61369
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jun 2021 16:59:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 146AD61369
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gBHkM/obMlR1EF1fi1fEdtxaXQBtEuC3IUYBjxQ2ImY=; b=iwwWSnYyfzaHWA
	DamZISJBS+wSfF2XlPS29mxcAJ3oU45QTaP+pBW+07rYFOKQBvraxR3vJn5oUlq4S1Ig63DCuPKeZ
	YgmpHTUR9808XViWItULIscpOhBfaSHxPWQSmvrd5CTSnsWtRnG1uxLeA1cyaFlPMiy+5gL4VuXey
	m8yc3c4rqI0W63vtZQp5lSqbNCE/fQ4cm9x8vgAXVbeO5ujMNA4L4T7cn+JHzcrt8InN7zg2tmohr
	0bbuPoTfi+CF5KQWoyvrYDKNLMEWAJa9PUi1pMDEym0rU2EF6r4kgXHPM6h+vjoSlM8p4Pg/XLn7C
	h5NTd8sYdQPVYWcoZYHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvjjo-007yzt-Ii; Tue, 22 Jun 2021 16:59:00 +0000
Received: from mail-il1-f174.google.com ([209.85.166.174])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvjjm-007yzC-6o
 for linux-phy@lists.infradead.org; Tue, 22 Jun 2021 16:58:59 +0000
Received: by mail-il1-f174.google.com with SMTP id q9so5388972ilj.3
 for <linux-phy@lists.infradead.org>; Tue, 22 Jun 2021 09:58:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=LsZRslTqg7fuj2glyUnRDUtW0t7V3r4Eh+jP25psiYA=;
 b=FS5Me/Y6GSwhQlZSpJzFiuGGJx4PDDpFbpPzrs6/0XM9FW2J+IpA0G8bmH9Wf68SvL
 eZBoqMdF1q+ObkEoM8A5654TixMTg/npmfnCudkXafzsedlu6nOpxPuhRWPpsyGUz/8g
 kam2ynZbytfjKaCtbermol87SO0hPlXQ2bu+9NoZB0S7Sx4vXhAa/iDUYvrNAJwzpImz
 k5RGvDaMx6hEjUmeeQxR6hRmWGLwmavJ4BjvlkcW69mR4XIUV6oVlqrgRM6ELiB769u7
 iRNeB4Z5t13sXtx+90D6jV3p6dTYBPqIJOJf1ZMI7WKSjFfLO1ao6TSxLzSvXStHMBdf
 0Vow==
X-Gm-Message-State: AOAM532SyWL5n6L/vQUpLy4mrtD3+hY/8hyLlVYbTXV40yXx12syE+cR
 Ng9KWP72e/H5GI3tL+BM7w==
X-Google-Smtp-Source: ABdhPJzgjRJsYlROHHbtiBHKPUccSnwLseG1lY6GPKVUd6HQM/6j52GqK8QKMC64yih29uRWItX9wQ==
X-Received: by 2002:a92:3f01:: with SMTP id m1mr3416158ila.122.1624381137433; 
 Tue, 22 Jun 2021 09:58:57 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id k21sm360710ios.0.2021.06.22.09.58.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Jun 2021 09:58:56 -0700 (PDT)
Received: (nullmailer pid 3843418 invoked by uid 1000);
 Tue, 22 Jun 2021 16:58:51 -0000
Date: Tue, 22 Jun 2021 10:58:51 -0600
From: Rob Herring <robh@kernel.org>
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Chris Paterson <Chris.Paterson2@renesas.com>,
 Biju Das <biju.das@bp.renesas.com>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v2 01/11] dt-bindings: phy: renesas: Document RZ/G2L USB
 PHY Control bindings
Message-ID: <20210622165851.GA3840386@robh.at.kernel.org>
References: <20210621093943.12143-1-biju.das.jz@bp.renesas.com>
 <20210621093943.12143-2-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210621093943.12143-2-biju.das.jz@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_095858_300489_1E614AB6 
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

On Mon, Jun 21, 2021 at 10:39:33AM +0100, Biju Das wrote:
> Add device tree binding document for RZ/G2L USB PHY control driver.
> 
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
> V1->V2:
>  * Add clock properties
> ---
>  .../phy/renesas,rzg2l-usbphyctrl.yaml         | 65 +++++++++++++++++++
>  1 file changed, 65 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/renesas,rzg2l-usbphyctrl.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/renesas,rzg2l-usbphyctrl.yaml b/Documentation/devicetree/bindings/phy/renesas,rzg2l-usbphyctrl.yaml
> new file mode 100644
> index 000000000000..8e8ba43f595d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/renesas,rzg2l-usbphyctrl.yaml
> @@ -0,0 +1,65 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/renesas,rzg2l-usbphyctrl.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Renesas RZ/G2L USB2.0 PHY Control
> +
> +maintainers:
> +  - Biju Das <biju.das.jz@bp.renesas.com>
> +
> +description:
> +  The RZ/G2L USB2.0 PHY Control mainly controls reset and power down of the
> +  USB/PHY.
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - renesas,r9a07g044-usbphyctrl # RZ/G2{L,LC}
> +      - const: renesas,rzg2l-usbphyctrl
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 1
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  '#phy-cells':
> +    # see phy-bindings.txt in the same directory
> +    const: 1
> +    description: |
> +      The phandle's argument in the PHY specifier is the phy reset control bit
> +      of usb phy control.
> +      0 = Port 1 Phy reset
> +      1 = Port 2 Phy reset
> +    enum: [ 0, 1 ]

You already have the const, so this doesn't do anything.

> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - '#phy-cells'
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/r9a07g044-cpg.h>
> +
> +    usbphyctrl@11c40000 {

usb-phy@...

> +        compatible = "renesas,r9a07g044-usbphyctrl",
> +                     "renesas,rzg2l-usbphyctrl";
> +        reg = <0x11c40000 0x10000>;
> +        clocks = <&cpg CPG_MOD R9A07G044_USB_PCLK>;
> +        resets = <&cpg R9A07G044_USB_PCLK>;
> +        power-domains = <&cpg>;
> +        #phy-cells = <1>;
> +    };
> -- 
> 2.17.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
