Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A423C4332F
	for <linux-phy@archiver.kernel.org>; Fri,  4 Nov 2022 13:42:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B4fuP+7nOHCfrrhPQ3zbSXnJACM2h/sk2f/O2zqBBFU=; b=Ol4sjIC4YyoYuq
	YpjNIUsqvP2uzInJZB6RHAy6TeE5xlw16iirjTYjiND1PrEYkol0z0ZTaSM+4l/m7d/Bz1qupjs3l
	dYCHxl9enu8mpWW78YaZ5HDP5iyofX/ydyP4eP1oFE4Dwnn5fBbGwtRntTA6jrAJnN2f3dGWCso73
	OOSBrH6f+en5qJbUyTlRUsbspJlfG5GQt4PwNU6GOLjau9T591a8xIiBVU1hyJ+EppxMJFhe/yUA8
	xWlEdDmwMSIUYx9M67Oglkj1YF74Dr5OJRf7KJGJb8lj1DTQryIPh2TN1bORSc5vD1XarlfXCAOAF
	DEBE9WzekmNOku7/apiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqwxg-003ldp-S6; Fri, 04 Nov 2022 13:42:20 +0000
Received: from mail-qv1-xf36.google.com ([2607:f8b0:4864:20::f36])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqwxV-003laB-I3
	for linux-phy@lists.infradead.org; Fri, 04 Nov 2022 13:42:13 +0000
Received: by mail-qv1-xf36.google.com with SMTP id w10so3200510qvr.3
        for <linux-phy@lists.infradead.org>; Fri, 04 Nov 2022 06:42:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MMyaU86qb4lTKUtNgTOCQdes/+rIt6nWq/bdQaeuknw=;
        b=y5AvJPLRIMXwWZKc9jQP4A0V2azYRNxYIGFEBK6zxdr0llR3PO3cPe/5eJ242K4uwN
         Zij0h6pVcg8wDkxm/WOE2YmaUdosKO8QFIViEDlUSgL/ajC76Gis3Uucn6gh2HB2EsnE
         N6TxBBJeG3bE1h0x6XvIa9lGfNzPPyEJVPHE84Tz/c10mQsqVWwhoV79GhsKCLruBeR9
         P3tPgh0HNehK2u2SiUZss624PlZ+p6XN9Hq1EjOE5vzb0sTfFqiegqYbj4pANSlbAjEh
         lhIlE2elDDn3CWXjewkAid0fDSPzj3Q7Gwjs4vt3UqR1MoXw/l8enGaDxV+i8XeBe9ym
         zhYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MMyaU86qb4lTKUtNgTOCQdes/+rIt6nWq/bdQaeuknw=;
        b=EQ0oewTH7xWQRJTvfGBjDOZ2j141qCXpkfoyxUqhNA7Ocl29USWbProKHvuTDh20lO
         D7L82hFjdwMftZrRSCoLPFZciFFzItks8hyZbqHgbBPlv+JWm5BCUiosf41CARN/hm6u
         xP/m50O3bqwpiBLqFMUV9dCFtgPlOB2HlmOld3x2Z9jCKMGTWNHLGosb3fJqRUcqiOg0
         RfyAdppLjek6OL5fScpwhax/AYWeCtZKPSh/rapAL7KJpz3gL5JOXh2JDYnkDTJFrnm9
         OuOxWMlGttvRXXMvxWlXfbeXDrWQ7MDcTVNB/zcIj9GWnmGhoCynxHm3hg09no/ftm3W
         ePFw==
X-Gm-Message-State: ACrzQf0DYLajIDWQ3Ldz3xhWuDvVcdWPiOc9fTcNMFxe8TCDcImq8qAz
	auUf8bcH//Ixsy+w4hBj+u4ZIA==
X-Google-Smtp-Source: AMsMyM6KTCIg67folrXpvHf9QQEoGa69VsGoeBFBv55wj82oFzf8ryegyUV4HWZc24EW2s7OFcWAuA==
X-Received: by 2002:a05:6214:d0e:b0:4bb:f5db:76ec with SMTP id 14-20020a0562140d0e00b004bbf5db76ecmr24823843qvh.9.1667569326779;
        Fri, 04 Nov 2022 06:42:06 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:aad6:acd8:4ed9:299b? ([2601:586:5000:570:aad6:acd8:4ed9:299b])
        by smtp.gmail.com with ESMTPSA id q3-20020a05620a2a4300b006eed47a1a1esm2909548qkp.134.2022.11.04.06.42.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Nov 2022 06:42:05 -0700 (PDT)
Message-ID: <d5fb79bc-c05c-8de1-e8a4-9e19cc5c8e1a@linaro.org>
Date: Fri, 4 Nov 2022 09:42:03 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [v2 02/10] dts-bingings: display: bridge: Add MHDP HDMI bindings
 for i.MX8MQ
Content-Language: en-US
To: Sandor Yu <Sandor.yu@nxp.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 andrzej.hajda@intel.com, neil.armstrong@linaro.org, robert.foss@linaro.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, kishon@ti.com, vkoul@kernel.org
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 linux-imx@nxp.com, tzimmermann@suse.de, lyude@redhat.com,
 javierm@redhat.com, ville.syrjala@linux.intel.com, sam@ravnborg.org,
 jani.nikula@intel.com, maxime@cerno.tech,
 penguin-kernel@I-love.SAKURA.ne.jp, p.yadav@ti.com, oliver.brown@nxp.com
References: <cover.1667463263.git.Sandor.yu@nxp.com>
 <0e1f631c22207c6af41ea512be85213b3953b44f.1667463263.git.Sandor.yu@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <0e1f631c22207c6af41ea512be85213b3953b44f.1667463263.git.Sandor.yu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221104_064209_625334_F2D83C96 
X-CRM114-Status: GOOD (  15.33  )
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

On 04/11/2022 02:44, Sandor Yu wrote:
> Add bindings for i.MX8MQ MHDP HDMI.

Typo in subject - bindings.

Also in the subject - drop redundant second word "bindings".

> 
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> ---
>  .../display/bridge/cdns,mhdp-imx8mq-hdmi.yaml | 67 +++++++++++++++++++
>  1 file changed, 67 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-hdmi.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-hdmi.yaml b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-hdmi.yaml
> new file mode 100644
> index 000000000000..b2a769d4cb82
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-hdmi.yaml
> @@ -0,0 +1,67 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/display/bridge/cdns,mhdp-imx8mq-hdmi.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Cadence MHDP HDMI bridge
> +
> +maintainers:
> +  - Sandor Yu <Sandor.yu@nxp.com>
> +
> +description:
> +  The Cadence MHDP TX HDMI interface.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - cdns,mhdp-imx8mq-hdmi
> +
> +  reg:
> +    items:
> +      - description:
> +          Memory mapped base address and length of mhdptx apb registers.

Drop items and descripion and just "maxItems: 1"

> +
> +  phys:
> +    description:
> +      phandle to the HDMI PHY.

Drop description, but instead "maxItems: 1"

> +
> +  phy-names:
> +    items:
> +      - const: hdmiphy

Drop entire phy-names, not useful with one entry matching the name of
theh block.

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
> +      A port node pointing to the output port of a display controller..

Just one '.' at the end.

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    mhdp: mhdp@32c00000 {

Node names should be generic, so hdmi-bridge, display-controller or just
"hdmi"
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation


> +        compatible = "cdns,mhdp-imx8mq-hdmi";
> +        reg = <0x32c00000 0x100000>;


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
