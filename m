Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D295C001B0
	for <linux-phy@archiver.kernel.org>; Wed, 19 Jul 2023 06:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nmHb3RdsMnbxZq+3PZ3DAnFPgte3z6DRYTApRuevpM0=; b=j1ptjodc5Pcnex
	V7fC4t5GnJgQQYNKBHValf/8eRkKExqaPVBFK/XUjxRHGrXIKQf3Sg8lPaui6x37ZLc5AzcEPv4z5
	38v53cAmHh9DgBxNTDY/G6chefQLnOyYPHJulsZXNO7NQ8Xuc+3AMZHkRFb0XMyX9rPKFz1q7VNbS
	OtwTlQaezv3FLrD52GM2NNWg0HIOJow6UYBRW1Nq+lMPTarwfbxc0YvqLsXSMilyEbBDAAIt20VLe
	EEBmDboSVFMOrXKuBcE7qio+aijuH5tTLvsR3XGvNnQnl8G1RLaPO7u6YOPGCOPl1kmAZV0jdpZ+Z
	/lHwyqnmwt4s4mS9wG4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qM0ty-005rMp-2B;
	Wed, 19 Jul 2023 06:43:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qM0tt-005rJh-1D;
	Wed, 19 Jul 2023 06:43:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=87ImMJ+igewTOLzKE/LMzpS4BGsneFdswwyjZNomVnY=; b=CLwV7V/q59EomzBq6mZfeEu2jo
	cQ8YFJhGl6wa20tKZaNnQLSK5lmAXjst/aNaLVcvVx1JW13iXwZsbYWGL6JwCR4ChWj4x6ayCuGE4
	CZMkgsoVxtIRiFsgvAbJlFVu9N9n0B2R35evUJrWUrTmiNBtbTzsdmw1zdO9Vleg3h95UrxbuYI4/
	/uKTH8xI/rl/mlwTT4QTtPcSnEpdMHl2pXGWfquacykPm7ps2ZfxWazyTeYXRZ7BBfQ7uzCsETVLb
	Ok8puJw3/fQCH+AyevbDwqpdxUXNrr9clEHRKj9nxbhWXqu68lbqCwI9wadRd5chUmN1K5UDCKOXY
	cETYLYMQ==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLtFZ-00C9bD-1O;
	Tue, 18 Jul 2023 22:33:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id EF3E36126C;
	Tue, 18 Jul 2023 22:32:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9412EC433C8;
	Tue, 18 Jul 2023 22:32:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689719572;
	bh=vU/oq3VM2S4sXrTzOgsFaJJQxTiBY5o7GK3nTWeaRrw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iQP+Vk0KqrsGmasU2dyX/z82bSOO4UjQh0FefA8H6g3H2XF0CBtUNAdHztfTD4nX9
	 X4gOgTRcrS7hhq3yKzYEJmed7Dd9Esx69y5V3hvNd/Umh4wLPcusY3kfjeHILrdK75
	 Wya6I6CvuVc/wMjghjnvfROpqNHomCLOJg5OKl5DuHW7OJVLFSatfTdmCbD7qoGnB6
	 3dy+6/xS1Fz70c9Q1/zhkbAQzIGnDY94lQIFEeRp00xTRehMLKt9Ov7BEk51t6imXC
	 psynjH9RJjRuJBMrmPfBpt2uOL/onPFBt8FmcfDy1sSnEB15RqwgLPSZ1DLyFzRUi5
	 9/90WIEXmL+9A==
Received: (nullmailer pid 2131133 invoked by uid 1000);
	Tue, 18 Jul 2023 22:32:49 -0000
Date: Tue, 18 Jul 2023 16:32:49 -0600
From: Rob Herring <robh@kernel.org>
To: Sandor Yu <Sandor.yu@nxp.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com, daniel@ffwll.ch, krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, vkoul@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, kernel@pengutronix.de, linux-imx@nxp.com, oliver.brown@nxp.com, alexander.stein@ew.tq-group.com, sam@ravnborg.org
Subject: Re: [PATCH v7 3/7] dt-bindings: display: bridge: Add Cadence MHDP850
Message-ID: <20230718223249.GB2112396-robh@kernel.org>
References: <cover.1689580812.git.Sandor.yu@nxp.com>
 <3646ea4d279838c78e00af1d746e3de34351b083.1689580812.git.Sandor.yu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3646ea4d279838c78e00af1d746e3de34351b083.1689580812.git.Sandor.yu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230718_233257_994166_1421156C 
X-CRM114-Status: GOOD (  15.97  )
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

On Mon, Jul 17, 2023 at 04:03:49PM +0800, Sandor Yu wrote:
> Add bindings for Cadence MHDP8501 DisplayPort/HDMI bridge..
> 
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> ---
>  .../display/bridge/cdns,mhdp8501.yaml         | 105 ++++++++++++++++++
>  1 file changed, 105 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml
> new file mode 100644
> index 000000000000..b983ee765f54
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml
> @@ -0,0 +1,105 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/cdns,mhdp8501.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Cadence MHDP8501 DP/HDMI bridge
> +
> +maintainers:
> +  - Sandor Yu <Sandor.yu@nxp.com>
> +
> +description:
> +  Cadence MHDP8501 DisplayPort/HDMI interface.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - cdns,mhdp8501

Drop this.

> +      - fsl,imx8mq-mhdp8501
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +    description: MHDP8501 DP/HDMI APB clock.
> +
> +  phys:
> +    maxItems: 1
> +    description:
> +      phandle to the DisplayPort or HDMI PHY
> +
> +  interrupts:
> +    items:
> +      - description: Hotplug cable plugin.
> +      - description: Hotplug cable plugout.
> +
> +  interrupt-names:
> +    items:
> +      - const: plug_in
> +      - const: plug_out
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Input port from display controller output.
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Output port to DisplayPort or HDMI connector.
> +
> +    required:
> +      - port@0
> +      - port@1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - interrupts
> +  - interrupt-names
> +  - phys
> +  - ports
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx8mq-clock.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    mhdp_dp: dp-bridge@32c00000 {
> +        compatible = "fsl,imx8mq-mhdp8501";
> +        reg = <0x32c00000 0x100000>;
> +        interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>,
> +                     <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
> +        interrupt-names = "plug_in", "plug_out";
> +        clocks = <&clk IMX8MQ_CLK_DISP_APB_ROOT>;
> +        phys = <&dp_phy>;
> +
> +        ports {
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            port@0 {
> +                reg = <0>;
> +
> +                mhdp_in: endpoint {
> +                    remote-endpoint = <&dcss_out>;
> +                };
> +            };
> +
> +            port@1 {
> +                reg = <1>;
> +
> +                mhdp_out: endpoint {
> +                    remote-endpoint = <&dp_connector>;
> +                };
> +            };
> +        };
> +    };
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
