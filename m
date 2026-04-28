Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F382CFF885D
	for <linux-phy@archiver.kernel.org>; Tue, 28 Apr 2026 12:21:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Subject:From:To:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kICAJAK4j3ceIJYbA0IuKPU1QRu0rfOdPWxS5z7LC0w=; b=nn0WHsQKliyNw1
	N7CM4xRwQDiGe3iL2eXpB0VjKA6KVM4FXZdVumt8gTiryatp8N0WLS/GjhJDlmVdowtnv9wiHuTLa
	9kNv6QzL44yYHW9rLjz79Gq+cEwSa1ugStiZa9nFx977fU40JIDGryDINrzaDwMqGSbHNfE2aowIx
	vJcyPYBPX8BHObEmde1JXviBdjby4YBfWW3ex5tysOjZEjyv7ZbYdhdGUjSPl65W6ErTgDBL0fqOw
	5RXD4OUxblB0Mhf+eKfUlpYdhQpTcmLgWqv45Dp1fQlGxGXhIYJhoDvcIIo8B2ANWy2IUX1x3j531
	BibvNQ+5vZav9NZSliag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHhRj-00000001QNr-3AWn;
	Tue, 28 Apr 2026 12:21:47 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHhRg-00000001QMO-2C6p
	for linux-phy@lists.infradead.org;
	Tue, 28 Apr 2026 12:21:46 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 005BBC5EF07;
	Tue, 28 Apr 2026 12:22:25 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 3E459601D0;
	Tue, 28 Apr 2026 12:21:42 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id EF52010728AA4;
	Tue, 28 Apr 2026 14:21:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1777378900; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=FkhJI2u81cWQQKkbpyLd60L537rqdrvEOTTOduSP8fc=;
	b=lDEouwh70SunD0CIWASRbWeFowTrGybIpcklgMde26dHzbTlVQO4tNpqeNvxp/DTQsoqLf
	MVjtKrPOCWqpHgHajsl9TS3Z3HbhRIpfUc1ER+yeSnCjIO3sw4GAhoSvOm0qOqbvwlTHrB
	x+gO9MKBp4xsCHTPNEnL2nYoU4H0Uz7b3WQc5J0o29raPzA+01q4oo01SleqCbz0BDqus+
	+SOujwJmPYbFV9TLnY1ejbitcPWUig77tZIqCoYyaNv88N+8BWkg4GxKRwHhpKohvAc+Wg
	QN2E2KsPjss+wNTEiCqCvUKMlcm3LPj/suEerpCepkldM2ueNI7yNcP+xUABCg==
Mime-Version: 1.0
Date: Tue, 28 Apr 2026 14:21:35 +0200
Message-Id: <DI4S8GN9WTCI.75C07G767ZOV@bootlin.com>
Cc: "Vinod Koul" <vkoul@kernel.org>, "Neil Armstrong"
 <neil.armstrong@linaro.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Frank Li" <Frank.Li@nxp.com>, "Sascha Hauer" <s.hauer@pengutronix.de>,
 "Pengutronix Kernel Team" <kernel@pengutronix.de>, "Fabio Estevam"
 <festevam@gmail.com>, <dri-devel@lists.freedesktop.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <imx@lists.linux.dev>,
 <linux-arm-kernel@lists.infradead.org>, <linux@ew.tq-group.com>, "Alexander
 Stein" <alexander.stein@ew.tq-group.com>, "Ying Liu" <victor.liu@nxp.com>
To: "Laurentiu Palcu" <laurentiu.palcu@oss.nxp.com>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v22 5/8] dt-bindings: phy: Add Freescale iMX8MQ DP and
 HDMI PHY
X-Mailer: aerc 0.20.1
References: <20260424-dcss-hdmi-upstreaming-v22-0-30a28f89298d@oss.nxp.com>
 <20260424-dcss-hdmi-upstreaming-v22-5-30a28f89298d@oss.nxp.com>
 <DI3YF5Y2B3GZ.25AP4NKQAXH36@bootlin.com>
 <f6rf5d6nhglkwendf5yvaklfn2ovlwkqstsz7vvl5zefibtiun@wic7bchohmwv>
In-Reply-To: <f6rf5d6nhglkwendf5yvaklfn2ovlwkqstsz7vvl5zefibtiun@wic7bchohmwv>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_052144_703412_8BED96F3 
X-CRM114-Status: GOOD (  23.97  )
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

Hello Laurentiu,

On Mon Apr 27, 2026 at 4:35 PM CEST, Laurentiu Palcu wrote:
> Hi Luca,
>
> On Mon, Apr 27, 2026 at 02:59:47PM +0200, Luca Ceresoli wrote:
>> Hello Laurentiu,
>>
>> On Fri Apr 24, 2026 at 1:07 PM CEST, Laurentiu Palcu wrote:
>> > From: Sandor Yu <Sandor.yu@nxp.com>
>> >
>> > Add bindings for Freescale iMX8MQ DP and HDMI PHY.
>> >
>> > Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
>> > Signed-off-by: Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>
>> > ---
>> >  .../bindings/phy/fsl,imx8mq-hdptx-phy.yaml         | 80 ++++++++++++++++++++++
>> >  1 file changed, 80 insertions(+)
>> >
>> > diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8mq-hdptx-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8mq-hdptx-phy.yaml
>> > new file mode 100644
>> > index 0000000000000..a24435139b8b3
>> > --- /dev/null
>> > +++ b/Documentation/devicetree/bindings/phy/fsl,imx8mq-hdptx-phy.yaml
>> > @@ -0,0 +1,80 @@
>> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> > +%YAML 1.2
>> > +---
>> > +$id: http://devicetree.org/schemas/phy/fsl,imx8mq-hdptx-phy.yaml#
>> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> > +
>> > +title: Cadence HDP-TX DP/HDMI PHY for Freescale i.MX8MQ SoC
>> > +
>> > +maintainers:
>> > +  - Sandor Yu <sandor.yu@nxp.com>
>>
>> Based on what you said in the cover, I guess this line will have to be
>> changed. Are you willing to maintain this binding?
>
> Yes, I'll update it in the next iteration.
>
>>
>> > +description:
>> > +  The Cadence HDP-TX DP/HDMI PHY is a child node of the MHDP8501 bridge,
>> > +  sharing the same MMIO region as the parent bridge node.
>> > +
>> > +properties:
>> > +  compatible:
>> > +    const: fsl,imx8mq-hdptx-phy
>> > +
>> > +  clocks:
>> > +    items:
>> > +      - description: PHY reference clock.
>> > +      - description: APB clock.
>> > +
>> > +  clock-names:
>> > +    items:
>> > +      - const: ref
>> > +      - const: apb
>> > +
>> > +  "#phy-cells":
>> > +    const: 0
>> > +
>> > +required:
>> > +  - compatible
>> > +  - clocks
>> > +  - clock-names
>> > +  - "#phy-cells"
>> > +
>> > +additionalProperties: false
>> > +
>> > +examples:
>> > +  - |
>> > +    #include <dt-bindings/clock/imx8mq-clock.h>
>> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>> > +
>> > +    display-bridge@32c00000 {
>> > +        compatible = "fsl,imx8mq-mhdp8501";
>> > +        reg = <0x32c00000 0x100000>;
>> > +        interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>,
>> > +                     <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
>> > +        interrupt-names = "plug_in", "plug_out";
>> > +        clocks = <&clk IMX8MQ_CLK_DISP_APB_ROOT>;
>> > +        phys = <&dp_phy>;
>> > +
>> > +        ports {
>> > +            #address-cells = <1>;
>> > +            #size-cells = <0>;
>>
>> The ports are not mentioned in the properties. I'm not a DT maintainer, but
>> I think they should, e.g. to mention which port is the input and which is
>> the output.
>>
>> > +
>> > +            port@0 {
>> > +                reg = <0>;
>> > +                endpoint {
>> > +                    remote-endpoint = <&dcss_out>;
>> > +                };
>> > +            };
>> > +
>> > +            port@1 {
>> > +                reg = <1>;
>> > +                endpoint {
>> > +                    data-lanes = <2 1 0 3>;
>>
>> Having a remote-endpoint property would be nice here, to make the example
>> more complete.
>
> The ports and the remote endpoints are documented in the bridge binding...

Ah, my bad, I reviewed too quickly and mixed the phy and bridge bindings in
my mind, sorry.

>
> However, I believe I screwed this example up by adding the entire bridge node,
> instead of just a simple:
>
> mhdp {
>     phy {
>         compatible = "fsl,imx8mq-hdptx-phy";
>         #phy-cells = <0>;
>         clocks = <&hdmi_phy_27m>, <&clk IMX8MQ_CLK_DISP_APB_ROOT>;
>         clock-names = "ref", "apb";
>     };
> };
>
> I'll simplify the example in the next iteration.

Yes, I think it would make sense to do it.

Thanks,
Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
