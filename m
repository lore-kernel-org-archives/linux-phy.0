Return-Path: <SRS0=7glD=MS=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99554C4338F
	for <linux-phy@archiver.kernel.org>; Mon, 26 Jul 2021 22:28:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5244A60F90
	for <linux-phy@archiver.kernel.org>; Mon, 26 Jul 2021 22:28:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5244A60F90
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qstjz8oCiCYpXcVksOEAj3Qw5oqQC/wP35x1Lou84xY=; b=Sf0ErYnlj8uaVk
	BadQMyD7A7Iu3+uJMI8j40tg+qlhPAgNHqgwCyLOGyRHz8VZQPCjDr5FwxDje3FDF7n6U7YBaRv29
	Vv1PuJKAJyb3XAOKzfKJ4V8X9Z+7arMvzClz1I2zGIeGVYoXiQ+WSwMroMcD1dV64XTqeFTRqt8xV
	R9XD+jzt73LU/EDSjltJhr+mkvjRgvYIz7JZ4I+Mur4yIrUrHQDmn0wkB8y3lLNB3LB3oWbG/fymU
	wMBCPUdCp86nnouQb9bnS7siZF3cBYqVDG394bEO0mAC6mX+TilD93XFKyL8Joe7TdF1QlLK4v3T5
	XJyNXOXfkHwbmY1xrX6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m895U-00CZuP-SE; Mon, 26 Jul 2021 22:28:40 +0000
Received: from mail-il1-f174.google.com ([209.85.166.174])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m895Q-00CZta-NY
 for linux-phy@lists.infradead.org; Mon, 26 Jul 2021 22:28:39 +0000
Received: by mail-il1-f174.google.com with SMTP id l11so10458057iln.4
 for <linux-phy@lists.infradead.org>; Mon, 26 Jul 2021 15:28:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=WvABWR+id8JI6mFKNCOCSmYsuyn1aqKwrjc3vQZKHkA=;
 b=Th4ERqi8I0LPivT9Ec9HT4MQL8VPQl9apMhs+uaJmnTRYVOyQlcdphg/BvpcG2oNOI
 qExBgraTTMx+goOP9604aqVEPn+ZZQSSwD1jOsZ1flhiMHIdMqyTjbdB0X0fIX+3pZwC
 QGfze/yH/R5+nBXt9ZX3i591SnRAPzEG9ygUgXEUj9+weFqS5ULie/46a1CS2dcYw774
 A3qc2bTmzFjpgcKwpcn5NHP8ysm91jsnKH4PXKi6j+u4fuX4chgRzXXGN2PdEGwNqhrj
 uqPvPfn1ZhXuxtYCJ+vJ4L/5OPeaMsnYl1H8g0glDt8tcUxs1IujcfAHKtv25w827pGg
 X4ig==
X-Gm-Message-State: AOAM53163jZLXfnf44DHkGcLBU1nEOMLZT0Z0CWykQhIcPCVsSJINqOg
 rOp1Z1JRiObAt/NxPD/5xQ==
X-Google-Smtp-Source: ABdhPJyBSojUTUlep1WXALG4h+Hu7/OjYnYxDIS2b2U2Khb4FzzLNwu9aKul65VF01z530WGYaFU0w==
X-Received: by 2002:a92:d302:: with SMTP id x2mr14526829ila.161.1627338514755; 
 Mon, 26 Jul 2021 15:28:34 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id u10sm726453iop.15.2021.07.26.15.28.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Jul 2021 15:28:33 -0700 (PDT)
Received: (nullmailer pid 987983 invoked by uid 1000);
 Mon, 26 Jul 2021 22:28:30 -0000
Date: Mon, 26 Jul 2021 16:28:30 -0600
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
Subject: Re: [PATCH v4 06/10] dt-bindings: phy: renesas,usb2-phy: Document
 RZ/G2L phy bindings
Message-ID: <20210726222830.GB981051@robh.at.kernel.org>
References: <20210719121938.6532-1-biju.das.jz@bp.renesas.com>
 <20210719121938.6532-7-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210719121938.6532-7-biju.das.jz@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210726_152836_811758_42C1D245 
X-CRM114-Status: GOOD (  15.26  )
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

On Mon, Jul 19, 2021 at 01:19:34PM +0100, Biju Das wrote:
> Document USB phy bindings for RZ/G2L SoC.
> 
> RZ/G2L USB2.0 phy uses line ctrl register for OTG_ID pin changes. It uses
> a different OTG-BC interrupt bit for device recognition. Apart from this,
> the PHY reset is controlled by USBPHY control IP and Document reset is a
> required property.
> 
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
> v3->v4:
>  * Removed second reset
>  * Added family specific compatible string.
> v2->v3
>  * Created a new compatible for RZ/G2L as per Geert's suggestion.
>  * Added resets required properties for RZ/G2L SoC.
> ---
>  .../bindings/phy/renesas,usb2-phy.yaml        | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
> index d5dc5a3cdceb..151158d7a224 100644
> --- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
> @@ -30,6 +30,11 @@ properties:
>                - renesas,usb2-phy-r8a77995 # R-Car D3
>            - const: renesas,rcar-gen3-usb2-phy
>  
> +      - items:
> +          - enum:
> +              - renesas,usb2-phy-r9a07g044 # RZ/G2{L,LC}
> +          - const: renesas,rzg2l-usb2-phy  # RZ/G2L family
> +
>    reg:
>      maxItems: 1
>  
> @@ -91,6 +96,20 @@ required:
>    - clocks
>    - '#phy-cells'
>  
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: renesas,rzg2l-usb2-phy
> +    then:
> +      properties:
> +        resets:
> +          description: |
> +            USB/PHY reset associated with the port.

You don't need 'properties' part here. Just 'required'.

> +      required:
> +        - resets
> +
>  additionalProperties: false
>  
>  examples:
> -- 
> 2.17.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
