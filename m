Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD610C4332F
	for <linux-phy@archiver.kernel.org>; Tue, 15 Nov 2022 13:23:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o2naALLHZHGMouBjamt8/SmxBiH2+2Zcky8yxvfe318=; b=NwpI7WW7r3Cvn4
	1e6hLa7MQOBW/m9c9Hhqv+KnHmnHSvFCvWBTEoFjfCH8PA4zNkmhbKKCXgp2m+JUXkHS825VshT8/
	rR2sMGrTNi2EwyOv4Xg/VoRaUkY1S1/caNkVnode3xXPmO4qf1NgdeWjEPw/GyvP5zOJ5rI+T7FX3
	EH7U6xa8i+Cnxods1kS08tBmdruE5jE+yGdZAKCOT3zgGLi3ip/IkvxtBX7wd1Ln2QCS8z3BhJWJz
	cUAPFXYlw1H/nESAEtp9xZ+Hm/dCsGFOzmFKLIONbL6ejk9gT63v2J90JCMjkS4ZBkGiQfWuo+JFD
	EeccukKWqhC8MJ0b/Tdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouvuF-00BQPs-VV; Tue, 15 Nov 2022 13:23:15 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouvu4-00BQN0-MW
	for linux-phy@lists.infradead.org; Tue, 15 Nov 2022 13:23:06 +0000
Received: by mail-lj1-x234.google.com with SMTP id k19so17486512lji.2
        for <linux-phy@lists.infradead.org>; Tue, 15 Nov 2022 05:23:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/o/3zwA1NwkP3vmamqHJzmINORKwtRnCyTK8X6rmfAY=;
        b=Fp/yh30hTCyxhHXOGgmHXKUy+b/GnFmVdNFACkGhNIF4QJas8UQyMBe0ZXMkaGc9hv
         RPBIgtKdUwfecY2HmklmKGh6a5yvsqJjZYcSwkPVTjJAjNpEh+nGKAu7SlqXd0GEQoj1
         S7aQZxTwySUt18174hxlfphLdUzzrazFROeVor69sXxnd8gyl/l1IeDVai4jV7IcTVKC
         E7+0k7S3W4gKClg5ZFqn7dD2I2PNoNTU/l06oUwBtXZwibpL2YPpVgYw20ixrSlRoXj0
         kOdMOj0/aVJs9BzWrrZx81ASunCXeipCjuH4qxgtDSdGMppq37i1ynC/yLNMKo31DYlc
         1rdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/o/3zwA1NwkP3vmamqHJzmINORKwtRnCyTK8X6rmfAY=;
        b=IUbioRaWXhnpplpMn9obibN8w8U6cySsba1dG8sbaMDLb1BG881hOUyazPhwos3Rvg
         sBZc1tqmypXnDqboBPt8SD69q9bOdg+q7IRv0gNVexRQZnMnJMhc96E5p0zH5+E4OqiM
         /foO9mpC5hQpdMYWog2RK68Esvk8NRhTgwZliyVDsULlBtTPVZKflD42UikefKDQBTdX
         a76Ui9DblKmeg0Dr1qPLnUXrdryPMw6wKf91IlCFkY12HfEPTu0N3ihiYcCbdTyGzSqp
         zmf5DNQ6VK1XQ2+KFYPfZ28aKrbew9MqNyLXVa6nL57prpr+l8yxBYc1+aN5OmWWNoTJ
         llCg==
X-Gm-Message-State: ANoB5plDHVCBbrn7SVR31yCSZgxXSTmJEE++kWGcl+L6aZ0PNBQ44CAD
	gpgBEvaRqh2xhQa+lneMQ/T7YA==
X-Google-Smtp-Source: AA0mqf4aI+PJ9CJYgPMHCCNlHjXG0ZEMQwuDfBpPge/N1r2HjXKeLCm1NzbPASZH5ZPVo1BO/jHh1A==
X-Received: by 2002:a2e:8e75:0:b0:277:3e88:4fb6 with SMTP id t21-20020a2e8e75000000b002773e884fb6mr5512224ljk.509.1668518580553;
        Tue, 15 Nov 2022 05:23:00 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id b41-20020a2ebc29000000b0026acc9edecdsm2504460ljf.47.2022.11.15.05.22.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Nov 2022 05:23:00 -0800 (PST)
Message-ID: <073ed7fc-e276-738c-d25e-7ef0baa11745@linaro.org>
Date: Tue, 15 Nov 2022 14:22:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v3 02/10] dt-bindings: display: bridge: Add MHDP HDMI for
 i.MX8MQ
Content-Language: en-US
To: Sandor Yu <Sandor.yu@nxp.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 andrzej.hajda@intel.com, neil.armstrong@linaro.org, robert.foss@linaro.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, vkoul@kernel.org
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 linux-imx@nxp.com, tzimmermann@suse.de, lyude@redhat.com,
 javierm@redhat.com, ville.syrjala@linux.intel.com, sam@ravnborg.org,
 jani.nikula@intel.com, maxime@cerno.tech,
 penguin-kernel@I-love.SAKURA.ne.jp, oliver.brown@nxp.com
References: <cover.1667911321.git.Sandor.yu@nxp.com>
 <9ccf53cad7f735f985f4ca37b3b0159ef78a2103.1667911321.git.Sandor.yu@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <9ccf53cad7f735f985f4ca37b3b0159ef78a2103.1667911321.git.Sandor.yu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221115_052304_782648_7FFDB597 
X-CRM114-Status: GOOD (  16.28  )
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

On 08/11/2022 14:00, Sandor Yu wrote:
> Add bindings for i.MX8MQ MHDP HDMI.
> 
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> ---
>  .../display/bridge/cdns,mhdp-imx8mq-hdmi.yaml | 59 +++++++++++++++++++
>  1 file changed, 59 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-hdmi.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-hdmi.yaml b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-hdmi.yaml
> new file mode 100644
> index 000000000000..8c0afef157aa
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-hdmi.yaml
> @@ -0,0 +1,59 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/cdns,mhdp-imx8mq-hdmi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
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
> +    maxItems: 1
> +
> +  phys:
> +    maxItems: 1
> +
> +  interrupts:
> +    items:
> +      - description: Hotplug detect interrupter for cable plugin event.
> +      - description: Hotplug detect interrupter for cable plugout event.

I don't know what is interrupter, so maybe just "cable plugin/plugout"
or "Hotplug cable plugin/plugout"?

Sorry for not bringing this earlier.

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
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    mhdp_hdmi: hdmi-bridge@32c00000 {
> +        compatible = "cdns,mhdp-imx8mq-hdmi";
> +        reg = <0x32c00000 0x100000>;
> +        interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>,
> +                <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;

Align with opening <



Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
