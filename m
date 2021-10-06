Return-Path: <SRS0=SQnc=O2=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 372B7C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  6 Oct 2021 23:57:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 79F5C6113A
	for <linux-phy@archiver.kernel.org>; Wed,  6 Oct 2021 23:57:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 79F5C6113A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PgdjgY+6fPq6lZJmuXr+QILjrSPHbDL0jFBykNgmytU=; b=kCsanNXjMmbjRc
	T0YieT4yrCZ1d4PWNAs6VoyResgUnt5MmG1CVcU5xUOz+eM/EnbTU2g6nT1BaFaI66vVbG6OkEXU4
	UB13kgdtmCo5BVPphJavYBO+ZrcQXXDG2gmUaMIqxnRET0Rrzvq4G+f9OwKj+ewvufLH0F0JllCRJ
	1eORXUJNosGIHCYt0vSb2iPysxPhY/FSdh4YW1gEyb2EtCXUM1JEDO0KaxrhSXAxpcZfKtVG2kzVo
	vaGZhXOWhyyZic9qgEBQMjMyjDZV2AcMdpUXg0qqdB/69tgexiLZFh+Ly8NwZhlNMn5zxiM2OI+Zq
	uvQN7sND4KpGZ3DYEswg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mYGnC-00Fs2J-RJ; Wed, 06 Oct 2021 23:57:46 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mYGn9-00Fs1Z-NR
 for linux-phy@lists.infradead.org; Wed, 06 Oct 2021 23:57:45 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 9AF2A9DC;
 Thu,  7 Oct 2021 01:57:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1633564657;
 bh=JW1ZJmQaw12URJOf2jTrvvNj1ozcaCCwcpFlp8P5Qes=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=veQCSLUacOalC5NvdCl05zLj6hzWsF4TTUOy3ceevPrOtLfDLP7XBVi3UayoDq2ON
 IdZSRQrFK7YHqQwf5kUpsAL687eW2OHtksp1L9Q5+gI3GvJEX+7S8Wz1tqWepJQGD7
 YDGoPeowEqryObzBxfMHzZ2avP7zxsqvMM9yWdgw=
Date: Thu, 7 Oct 2021 02:57:29 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Pratyush Yadav <p.yadav@ti.com>
Cc: Vinod Koul <vkoul@kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Nikhil Devshatwar <nikhil.nd@ti.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 4/6] phy: dt-bindings: cdns, dphy: make clocks optional
 for Rx mode
Message-ID: <YV436f5G7U/ZSCx8@pendragon.ideasonboard.com>
References: <20210902185543.18875-1-p.yadav@ti.com>
 <20210902185543.18875-5-p.yadav@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210902185543.18875-5-p.yadav@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211006_165743_963935_76DAEE54 
X-CRM114-Status: GOOD (  14.49  )
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

Hi Pratyush,

Thank you for the patch.

On Fri, Sep 03, 2021 at 12:25:41AM +0530, Pratyush Yadav wrote:
> The clocks are not used by the DPHY when used in Rx mode so make them
> optional for it by using a conditional based on compatible.
> 
> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
> 
> Changes in v5:
> - Make clocks a required property based on the compatible.
> 
> Changes in v3:
> - Add Rob's Ack.
> 
> Changes in v2:
> - Re-order subject prefixes.
> 
>  .../devicetree/bindings/phy/cdns,dphy.yaml          | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/cdns,dphy.yaml b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
> index b90a58773bf2..558f110fda9e 100644
> --- a/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
> @@ -33,10 +33,19 @@ properties:
>  required:
>    - compatible
>    - reg
> -  - clocks
> -  - clock-names
>    - "#phy-cells"
>  
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: cdns,dphy
> +    then:
> +      required:
> +        - clocks
> +        - clock-names
> +
>  additionalProperties: false
>  
>  examples:

-- 
Regards,

Laurent Pinchart

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
