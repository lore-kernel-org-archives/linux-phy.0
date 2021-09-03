Return-Path: <SRS0=2bAM=NZ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D430FC433EF
	for <linux-phy@archiver.kernel.org>; Fri,  3 Sep 2021 16:13:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 95479610E6
	for <linux-phy@archiver.kernel.org>; Fri,  3 Sep 2021 16:13:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 95479610E6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h142QKsfVH6KiTN+0i5rv4I+hBIWnCY8MONi/Gqfezs=; b=aXEu8QwItBfV/f
	5Wh7bJnpP9AGcmoEPa34SmNZF0BZfhGKjxT2LbUZCyIhCfgcCg3POp9xGJRyqBQMZWj4saeDE8sYu
	UvH8r+olFOy6QsReW+Gv9wu9NR8Tds0bIN4Lrk3a6RHeLbH/kQZkc8HsMXlbfh0lCLkuycDqEQqFF
	reKsm2F1oKQ6DTxJtlv+eBNawSpwvBpmH+HFP0xDaRv+afvgFwmTcOjl2bKFMu3KIgJ8760QY3Ey+
	5PHQjBzdqPvdeDGV1YykoiI+bVrSJ9P9LvTVKACVUw8Pkvw2JcFgoUTYrbDlVu7qvQB/XBJHfaULT
	0LcXLktTWAr+Knt8yNvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mMBoL-00CNzJ-4K; Fri, 03 Sep 2021 16:13:01 +0000
Received: from mail-oi1-f175.google.com ([209.85.167.175])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mMBoJ-00CNwV-6p
 for linux-phy@lists.infradead.org; Fri, 03 Sep 2021 16:13:00 +0000
Received: by mail-oi1-f175.google.com with SMTP id r26so7490664oij.2
 for <linux-phy@lists.infradead.org>; Fri, 03 Sep 2021 09:12:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=yvgYFsx7JkvAvbs4I+EYjfllF89MEhjbKB8Qj4RbTIk=;
 b=Tu54C1eEwpthWagrsxAmhPYZSc4s4FEhRjpBbPqM+oynmwmkpll9Q7DwI7KD9Vbk9S
 m/BHr8qeFPWdWu/DhASKhZY2/soSxxXRlWU78uDUhakw66JkgmqWsCXyq38G1u8hSBAo
 4wUooRlJ8yFg2oMVfxdoQ4SDkvK0Veo+MKlz58FAzHI7CRg7BrwC29WmMs5CeBwSKn/K
 30PvmOQWdK512GDgcDNA7P8YPDvwZ0l7wDJI+P+JwRRtz3ZDzrG2wu/Tu2EpwumLhcDB
 f4TtavtdoQMotDumeNnGgMFLngPJgwuL++weKDZnaqKvBJi5yJO6yIZZTQnWcXrDtvsi
 32zQ==
X-Gm-Message-State: AOAM5321Alb0KukR+hplkYNxywIW+RywCEzu229Qp4U9Ck8G8w2qhHz6
 b1ml7ew4Z5UG9n3BDdaOaA==
X-Google-Smtp-Source: ABdhPJxRYNJlQgvYYbFWW07WdoSyaiCENii55qZiH/55LM5bKtIGHB1L/hmPsjClxd+sbONrGhMPWQ==
X-Received: by 2002:aca:c2c6:: with SMTP id s189mr6917016oif.123.1630685565736; 
 Fri, 03 Sep 2021 09:12:45 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id g62sm1090059oif.14.2021.09.03.09.12.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Sep 2021 09:12:45 -0700 (PDT)
Received: (nullmailer pid 3032881 invoked by uid 1000);
 Fri, 03 Sep 2021 16:12:44 -0000
Date: Fri, 3 Sep 2021 11:12:44 -0500
From: Rob Herring <robh@kernel.org>
To: Swapnil Jakhade <sjakhade@cadence.com>
Cc: vkoul@kernel.org, kishon@ti.com, p.zabel@pengutronix.de,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, mparab@cadence.com, lokeshvutla@ti.com
Subject: Re: [PATCH 03/14] dt-bindings: phy: cadence-sierra: Add binding to
 specify SSC mode
Message-ID: <YTJJfJE4kFLt059y@robh.at.kernel.org>
References: <20210903050054.25627-1-sjakhade@cadence.com>
 <20210903050054.25627-4-sjakhade@cadence.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210903050054.25627-4-sjakhade@cadence.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210903_091259_288720_3E110CED 
X-CRM114-Status: GOOD (  15.11  )
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

On Fri, Sep 03, 2021 at 07:00:43AM +0200, Swapnil Jakhade wrote:
> Add binding to specify Spread Spectrum Clocking mode used.
> 
> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
> ---
>  .../devicetree/bindings/phy/phy-cadence-sierra.yaml      | 9 +++++++++
>  include/dt-bindings/phy/phy-cadence.h                    | 4 ++++
>  2 files changed, 13 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/phy-cadence-sierra.yaml b/Documentation/devicetree/bindings/phy/phy-cadence-sierra.yaml
> index e71b32c9c0d1..a9e227d8b076 100644
> --- a/Documentation/devicetree/bindings/phy/phy-cadence-sierra.yaml
> +++ b/Documentation/devicetree/bindings/phy/phy-cadence-sierra.yaml
> @@ -113,6 +113,15 @@ patternProperties:
>          minimum: 1
>          maximum: 16
>  
> +      cdns,ssc-mode:
> +        description:
> +          Specifies the Spread Spectrum Clocking mode used. It can be NO_SSC,
> +          EXTERNAL_SSC or INTERNAL_SSC.
> +          Refer include/dt-bindings/phy/phy-cadence.h for the constants to be used.
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        enum: [0, 1, 2]
> +        default: 1
> +
>      required:
>        - reg
>        - resets
> diff --git a/include/dt-bindings/phy/phy-cadence.h b/include/dt-bindings/phy/phy-cadence.h
> index 4652bcb86265..0122c6067b17 100644
> --- a/include/dt-bindings/phy/phy-cadence.h
> +++ b/include/dt-bindings/phy/phy-cadence.h
> @@ -17,4 +17,8 @@
>  #define CDNS_SIERRA_PLL_CMNLC		0
>  #define CDNS_SIERRA_PLL_CMNLC1		1
>  
> +#define SIERRA_SERDES_NO_SSC		0
> +#define SIERRA_SERDES_EXTERNAL_SSC	1
> +#define SIERRA_SERDES_INTERNAL_SSC	2

Don't we already have defines for this property from the Torrent phy?

> +
>  #endif /* _DT_BINDINGS_CADENCE_SERDES_H */
> -- 
> 2.26.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
