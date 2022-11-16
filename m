Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1507CC433FE
	for <linux-phy@archiver.kernel.org>; Wed, 16 Nov 2022 17:46:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PdEEBdociurTBuqhBLyxFcyQSN3NnJ+YMgdLECJEwXg=; b=A5nZhuJDWMgeWG
	hYBXg//MCWTc7SIGF5406v2GnGMCWpkfcIoSAJVziVXq53klDmXO70kFXmOhkfG1Mjqd1vpp0j7bQ
	T7qRFVRwTsQU81EGgmnngrnzItjjgRM+xk45Rtjb6zir/n8K9kbTjaEMQA0ROHsX+H3XnKWWPVTac
	VX1CwBnIuVm62lw0D2bYA8/7fN33b4LvfqeR0pycf+3Vqulh5THRzECk4omXmZ484DMh6rRR1I8mt
	S9HipHWeLhyAk8+73+qbuVveqigqy0Nl3Ak08SelxT2C/VjnzrGOXTmTDOekpT8xj6XFZBxG2Gzbq
	Z+GlsUpoPRd4ppqJe6lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovMUG-006btm-5e; Wed, 16 Nov 2022 17:46:12 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovLRh-005xgh-Fe; Wed, 16 Nov 2022 16:39:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=T7R0vGsL7LQXAd+8RrIgaa2Mm2aDxGNcrTPJcHCRSSc=; b=ZSUpTmj9SzWcmauwKV8rtJulU8
	qhV8zeL2adghbwrFomzdcrCF3v1tN4iEczrr9wXnYI9F6sugTIQyKH977zGR9YkBgNfA5stINqkRi
	z/bk1h4skMBSCOLW7NhrxdLEj5Nv3+2okpegYyIVUZjOHNzW5YAPqYNXtLEV1DojtMKv8mDz4mlJn
	iKgu52RKqxP6i9QN/Uqf8MIMGBuiQoj28bXpHIg3NM94iadxURdwRrUvez6bRRHjp2Hv/SHlObobO
	7TiSVSjknxjzdhgrVu+6cyAylF7WJC3kjllB0ffnQxVKamkqzyKz4tYaT8QcgwQWYmhf4gG+tnop2
	u0E/XvBw==;
Received: from mail-oi1-f180.google.com ([209.85.167.180])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovLFf-001OY6-5W; Wed, 16 Nov 2022 16:27:05 +0000
Received: by mail-oi1-f180.google.com with SMTP id q186so19034280oia.9;
        Wed, 16 Nov 2022 08:27:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T7R0vGsL7LQXAd+8RrIgaa2Mm2aDxGNcrTPJcHCRSSc=;
        b=ai5JGHRq8JAn/hsa8nNPtpPIX8nefJvft3xCguLTmnVbUluvS+YFZBohlX+kYCTqQx
         vZL3xz6dOgwkpAmo0ypr+3hxmK6ZQbTV5yd8xhoACkqD+olXsHNTRY8X/kXsZkwVszi9
         V6PYSV7xsLQbX6riFeHPv4IMLH44jUTByDSMYip6lVaWFpDCuVvSs+VMe+C9XnJ3awG4
         dQz+oMd3RdGzV7MGgQQi0aQ1e/+1kENy+TxVdP29IMycjwwEGb0Lkvx/ORBCeJEtCMzC
         b80TF15wnMWYi4a5S09/A//at+RAxjqoxH9Sq8dq/8ZdnHokHbJ0UpMqoe0ZytIOk7pM
         faDQ==
X-Gm-Message-State: ANoB5pl0CItnKVqs1ynAwhP265v+jQMrFPGg5W13R6IV9QGUI/WNWhSc
	NrJdAgKLaABqcCSLWVglPA==
X-Google-Smtp-Source: AA0mqf6DuVjSc+cQ/7WdXNB0o3vYI1ZmEO1IYWfqq/XpJfoZgtGhCe/tYutIIhoKvZH3xOlKIRWMGA==
X-Received: by 2002:aca:db06:0:b0:359:e535:84a2 with SMTP id s6-20020acadb06000000b00359e53584a2mr2020406oig.59.1668616019885;
        Wed, 16 Nov 2022 08:26:59 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id m13-20020a9d73cd000000b006621427ecc7sm6667434otk.60.2022.11.16.08.26.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 08:26:59 -0800 (PST)
Received: (nullmailer pid 196659 invoked by uid 1000);
	Wed, 16 Nov 2022 16:27:01 -0000
Date: Wed, 16 Nov 2022 10:27:01 -0600
From: Rob Herring <robh@kernel.org>
To: Sandor Yu <Sandor.yu@nxp.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, andrzej.hajda@intel.com, neil.armstrong@linaro.org, robert.foss@linaro.org, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, linux-imx@nxp.com, tzimmermann@suse.de, lyude@redhat.com, javierm@redhat.com, ville.syrjala@linux.intel.com, sam@ravnborg.org, jani.nikula@intel.com, maxime@cerno.tech, penguin-kernel@i-love.sakura.ne.jp, oliver.brown@nxp.com
Subject: Re: [PATCH v3 05/10] dt-bindings: display: bridge: Add MHDP DP for
 i.MX8MQ
Message-ID: <20221116162701.GA195244-robh@kernel.org>
References: <cover.1667911321.git.Sandor.yu@nxp.com>
 <71c504aeb11f55e9dca533cc1b490b8e069c7b7b.1667911321.git.Sandor.yu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <71c504aeb11f55e9dca533cc1b490b8e069c7b7b.1667911321.git.Sandor.yu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_162703_277797_A33C114C 
X-CRM114-Status: GOOD (  15.83  )
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

On Tue, Nov 08, 2022 at 09:00:08PM +0800, Sandor Yu wrote:
> Add bindings for i.MX8MQ MHDP DisplayPort.
> 
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> ---
>  .../display/bridge/cdns,mhdp-imx8mq-dp.yaml   | 59 +++++++++++++++++++
>  1 file changed, 59 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-dp.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-dp.yaml b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-dp.yaml
> new file mode 100644
> index 000000000000..c4d5362db2b5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-dp.yaml
> @@ -0,0 +1,59 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/cdns,mhdp-imx8mq-dp.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Cadence MHDP Displayport bridge
> +
> +maintainers:
> +  - Sandor Yu <Sandor.yu@nxp.com>
> +
> +description:
> +  The Cadence MHDP Displayport TX interface.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - cdns,mhdp-imx8mq-dp
> +
> +  reg:
> +    maxItems: 1
> +
> +  phys:
> +    maxItems: 1
> +
> +  interrupts:
> +    items:
> +      - description: Hotplug detect interrupter for cable plugin event.
> +      - description: Hotplug detect interrupter for cable plugout event.
> +
> +  interrupt-names:
> +    items:
> +      - const: plug_in
> +      - const: plug_out
> +
> +  port:
> +    $ref: /schemas/graph.yaml#/properties/port
> +    description:
> +      A port node pointing to the output port of a display controller.

Similarly, you need an output port to DP (or USB-C) connector.

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    mhdp_dp: dp-bridge@32c00000 {
> +        compatible = "cdns,mhdp-imx8mq-dp";
> +        reg = <0x32c00000 0x100000>;
> +        interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>,
> +                <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
> +        interrupt-names = "plug_in", "plug_out";
> +        phys = <&dp_phy>;
> +
> +        port {
> +            mhdp_in: endpoint {
> +                remote-endpoint = <&dcss_out>;
> +            };
> +        };
> +    };
> -- 
> 2.34.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
