Return-Path: <SRS0=ixR+=I7=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68AFBC433ED
	for <linux-phy@archiver.kernel.org>; Fri,  2 Apr 2021 10:38:43 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 16AE460FD9
	for <linux-phy@archiver.kernel.org>; Fri,  2 Apr 2021 10:38:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 16AE460FD9
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=S5G2sKaqDTTDjNF/konuIzNqykDbDsv4vzSWjOFmJz0=; b=QBhSx3OoUVkco1o9VP9BlmcEW
	DM6oZgWC8b3iztW6sS2gmXb3nGLrZNjWJSe+GMzLWKnhpa1QAuEqAc51b3wXJbTpRYpZpxELdPhZG
	epCHinlZP70XaLgoEK9DKi/FooIhMk/aAAqU7AgQJLXJNkGAm6GI7lA31grSejPojstlPq2P/DLpA
	fPVCwXiRJ8vV9DyzHuwTqkcCtJQaLJPqnuxJEGBzCYFKGcOHbT/0UrmgMmUQQgKHRnnTeiD5GsXA7
	4uModpals3DCaQmouHCkFyXFIe4/7xIGbmoVC/3l/+s483JPQcPD/5ypa8WIOdoNFjibVfaKDOgWa
	QgdIyL81g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lSHCL-00Cmxe-D6; Fri, 02 Apr 2021 10:38:41 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lSHA7-00CmHJ-Jk
 for linux-phy@lists.infradead.org; Fri, 02 Apr 2021 10:36:32 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 292A28A1;
 Fri,  2 Apr 2021 12:36:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1617359780;
 bh=UiwoZzURvu+edfJ8wILaZuM2KkzO4G9btTpBQ1aMANw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ii2vkV/5RNRcexH/+9Y9WXjZwDulyV3PbakBqHXX3OsXtVQKYxPZ/kwzom7gKVRMF
 VvAz/KFF9U0kNn7z+21xbG7nGA/DogMPndxH5CYxzkVS2IB/a4QXDJDxKW49eo/jVK
 ure/Qlf0WivRAymEW2YV6zpd6moDgxNkaceNDW3E=
Date: Fri, 2 Apr 2021 13:35:36 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Pratyush Yadav <p.yadav@ti.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Peter Ujfalusi <peter.ujfalusi@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Benoit Parrot <bparrot@ti.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Alexandre Courbot <acourbot@chromium.org>,
 Stanimir Varbanov <stanimir.varbanov@linaro.org>,
 Helen Koike <helen.koike@collabora.com>,
 Michael Tretter <m.tretter@pengutronix.de>,
 Peter Chen <peter.chen@nxp.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 dmaengine@vger.kernel.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Subject: Re: [PATCH 16/16] dt-bindings: phy: cdns,dphy: add power-domains
 property
Message-ID: <YGbzeFuCKnetHRXN@pendragon.ideasonboard.com>
References: <20210330173348.30135-1-p.yadav@ti.com>
 <20210330173348.30135-17-p.yadav@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210330173348.30135-17-p.yadav@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210402_113626_311848_02D63432 
X-CRM114-Status: GOOD (  14.86  )
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

On Tue, Mar 30, 2021 at 11:03:48PM +0530, Pratyush Yadav wrote:
> This property is needed on TI platforms to enable the PD of the DPHY
> before it can be used.
> 
> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> ---
>  Documentation/devicetree/bindings/phy/cdns,dphy.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/cdns,dphy.yaml b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
> index 0807ba68284d..ddcd4de0aef6 100644
> --- a/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
> @@ -30,6 +30,9 @@ properties:
>    "#phy-cells":
>      const: 0
>  
> +  power-domains:
> +    maxItems: 1
> +

Would it be useful to add power-domains to the example ?

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

>  required:
>    - compatible
>    - reg

-- 
Regards,

Laurent Pinchart

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
