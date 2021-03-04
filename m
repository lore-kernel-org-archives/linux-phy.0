Return-Path: <SRS0=tCwO=IC=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFA4AC433E0
	for <linux-phy@archiver.kernel.org>; Thu,  4 Mar 2021 04:46:41 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 287F764EF8
	for <linux-phy@archiver.kernel.org>; Thu,  4 Mar 2021 04:46:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 287F764EF8
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:CC:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Vl52fn69Afl5OcumhAybjqLdJyXHZyjYr3aaljwoo0I=; b=NmnbfDBpHbnROTBeXn3FOhu0C
	oTXrkOr/2D3xf6mHxsQ3VQNoO0PX5rLUW/aqS1GdWusHYW2mSu7Brr8U4GAoP44/7GQ3O2ZlM9Uoc
	WBCN5K/tY6lQD3nF7cAgU6DcbBb58hQ1/5WBqo5Fb3oiu94pBUm43TbuuwlwUCRHfiSFPrZ359mEU
	VEGf5Dz+YJyIMHSTCpiu65NNE3G7ocqVkAc4JBJ1a+6Dh0EL2EydLOvhogwsuuDlKrqE3BE41GL+c
	tsPxGhd33OfYTkb/9quZk/0V+IAffe7tRFmLduR9pcRFT4uGJmKyhDKPYJp8lSm+czFHpANgOfoUc
	2KgkCuyFw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHfsg-007kor-W1; Thu, 04 Mar 2021 04:46:35 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHfsY-007kkl-Ce
 for linux-phy@lists.infradead.org; Thu, 04 Mar 2021 04:46:30 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1244jp9U053936;
 Wed, 3 Mar 2021 22:45:51 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1614833151;
 bh=u9Fq9fIcV8m7q8E+GxjFecB7Rn7qfqMQABRRfIQPQ20=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=U7AUjuUC2GePB6TOCvKlXOErPWvIBabL0u2hKgcX4tjWItsT1YShQ5PJG6BwvLFC2
 1a0PODXcFRL9A1MxGhkd4fuLPd0aA3/bt7fBsNqfdIQqOvTjlxlOGLmnjqGFZ4APga
 0LXrjlI+JQScEtebPVQZALC1mT58YCwqY5OfnAP4=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1244jpKF074566
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 3 Mar 2021 22:45:51 -0600
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 3 Mar
 2021 22:45:51 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 3 Mar 2021 22:45:51 -0600
Received: from [10.250.233.159] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1244jmBx090114;
 Wed, 3 Mar 2021 22:45:49 -0600
Subject: Re: [PATCH v2 1/9] dt-bindings: phy: ti,phy-j721e-wiz: Add bindings
 for AM64 SERDES Wrapper
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>, Peter
 Rosin <peda@axentia.se>, Swapnil Jakhade <sjakhade@cadence.com>
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-phy@lists.infradead.org>
References: <20210222112314.10772-1-kishon@ti.com>
 <20210222112314.10772-2-kishon@ti.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <8fc3e9a0-573e-01b1-1054-55d3c19e42f6@ti.com>
Date: Thu, 4 Mar 2021 10:15:47 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210222112314.10772-2-kishon@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
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

Hi Rob,

On 22/02/21 4:53 pm, Kishon Vijay Abraham I wrote:
> Add bindings for AM64 SERDES Wrapper.

I've fixed all your comments provided in the previous version. Can you
review this and give your ACKs please?

Best Regards,
Kishon

> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  .../bindings/phy/ti,phy-j721e-wiz.yaml        | 10 ++++++---
>  include/dt-bindings/phy/phy-ti.h              | 21 +++++++++++++++++++
>  2 files changed, 28 insertions(+), 3 deletions(-)
>  create mode 100644 include/dt-bindings/phy/phy-ti.h
> 
> diff --git a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
> index c33e9bc79521..bf431f98e6ea 100644
> --- a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
> +++ b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
> @@ -12,9 +12,10 @@ maintainers:
>  
>  properties:
>    compatible:
> -    enum:
> -      - ti,j721e-wiz-16g
> -      - ti,j721e-wiz-10g
> +    oneOf:
> +      - const: ti,j721e-wiz-16g
> +      - const: ti,j721e-wiz-10g
> +      - const: ti,am64-wiz-10g
>  
>    power-domains:
>      maxItems: 1
> @@ -42,6 +43,9 @@ properties:
>    "#reset-cells":
>      const: 1
>  
> +  "#clock-cells":
> +    const: 1
> +
>    ranges: true
>  
>    assigned-clocks:
> diff --git a/include/dt-bindings/phy/phy-ti.h b/include/dt-bindings/phy/phy-ti.h
> new file mode 100644
> index 000000000000..ad955d3a56b4
> --- /dev/null
> +++ b/include/dt-bindings/phy/phy-ti.h
> @@ -0,0 +1,21 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * This header provides constants for TI SERDES.
> + */
> +
> +#ifndef _DT_BINDINGS_TI_SERDES
> +#define _DT_BINDINGS_TI_SERDES
> +
> +/* Clock index for output clocks from WIZ */
> +
> +/* MUX Clocks */
> +#define TI_WIZ_PLL0_REFCLK	0
> +#define TI_WIZ_PLL1_REFCLK	1
> +#define TI_WIZ_REFCLK_DIG	2
> +
> +/* Reserve index here for future additions */
> +
> +/* MISC Clocks */
> +#define TI_WIZ_PHY_EN_REFCLK	16
> +
> +#endif /* _DT_BINDINGS_TI_SERDES */
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
