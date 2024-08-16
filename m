Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CDE8C3DA4A
	for <linux-phy@archiver.kernel.org>; Fri, 16 Aug 2024 22:37:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cwDt7LgD2BlOcdIeZ7aIotxoXAxCu8KK8aX516oPzQI=; b=JnVqSKDM1fIWZi
	ghWK+IbUaVxw48h+Df4ixfmi1P4ir+RuyQ4AzUiEY8lgsySB89ApRYxTUN8sfLCNtmKsCmyiAf6Yz
	taBlTmDkvDnZVsQ0fL6jDyQVQSJ0DGWXNHghZxdr/kwuc+bJbK/5+wroweE12jM5aAKxaZ9BJe/E9
	cnzF4PCvuQVmO0BcwQ77J/1kubgcsyGMLGkuWCu6TSHD7KEi5POBiFvIqmsSlDb3J0cyocvLwui4v
	+3zQRlSXI6/lrxU06+In8u7kcwtrZGepMGQeCYY0T6ZTTGpJacoYFoyD5CUnDnzhJJA1477Iqcl3D
	r6TK3A/SUrsCbCJAAUKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sf5Zz-0000000EDMt-1B15;
	Fri, 16 Aug 2024 22:37:55 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sf5ZI-0000000EDI5-2tvb;
	Fri, 16 Aug 2024 22:37:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0D911622D8;
	Fri, 16 Aug 2024 22:37:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94AD2C32782;
	Fri, 16 Aug 2024 22:37:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723847831;
	bh=RyCJlWYK9S6rt9Lmx7407UIS/Kt3nkIojR6T7QOcSVI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kUCKfCOPIoWnxxtaNhk3XFGhAPyv43yiKbbDVhG7Zr0kkKGjzYCAr9mcWiY+aP4m+
	 ESeW/leStl9x6YpaczZi/gZGDTjISCRl6pEUuZ64fLoD6w6fc8jAjEcVUTE753NY88
	 5/y8QS889uZcKOAnh8p2llfxUrNGYdo4eg00NBbhL5GxfcgkWtrVOb0Qe/rQuq9Pz1
	 y/0WWsXo6MA2VkQ6Hfzhi08zHyyS4jk+fAXAQQ0vtpEjBqcPt1GYT7bItwArEtlYb2
	 s0rd0/z7RnPSVBMnoaf51tTn68B6WYxinvj5WAP+jUXvfFcRPT+ROGpCPoaXAPdKnT
	 GCxd9VQUbpDNA==
Date: Fri, 16 Aug 2024 16:37:10 -0600
From: Rob Herring <robh@kernel.org>
To: Liu Ying <victor.liu@nxp.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	p.zabel@pengutronix.de, airlied@gmail.com, daniel@ffwll.ch,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	tzimmermann@suse.de, krzk+dt@kernel.org, conor+dt@kernel.org,
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
	festevam@gmail.com, tglx@linutronix.de, vkoul@kernel.org,
	kishon@kernel.org, aisheng.dong@nxp.com, agx@sigxcpu.org,
	francesco@dolcini.it, frank.li@nxp.com
Subject: Re: [PATCH v3 06/19] dt-bindings: display: imx: Add i.MX8qxp Display
 Controller command sequencer
Message-ID: <20240816223710.GA2394350-robh@kernel.org>
References: <20240724092950.752536-1-victor.liu@nxp.com>
 <20240724092950.752536-7-victor.liu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240724092950.752536-7-victor.liu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240816_153712_843451_62906AEF 
X-CRM114-Status: GOOD (  18.92  )
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

On Wed, Jul 24, 2024 at 05:29:37PM +0800, Liu Ying wrote:
> i.MX8qxp Display Controller contains a command sequencer is designed to
> autonomously process command lists.
> 
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v3:
> * New patch. (Rob)
> 
>  .../imx/fsl,imx8qxp-dc-command-sequencer.yaml | 67 +++++++++++++++++++
>  1 file changed, 67 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-command-sequencer.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-command-sequencer.yaml b/Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-command-sequencer.yaml
> new file mode 100644
> index 000000000000..2e0e8e40a185
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-command-sequencer.yaml
> @@ -0,0 +1,67 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/imx/fsl,imx8qxp-dc-command-sequencer.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale i.MX8qxp Display Controller Command Sequencer
> +
> +description: |
> +  The Command Sequencer is designed to autonomously process command lists.
> +  By that it can load setups into the DC configuration and synchronize to
> +  hardware events.  This releases a system's CPU from workload, because it
> +  does not need to wait for certain events.  Also it simplifies SW architecture,
> +  because no interrupt handlers are required.  Setups are read via AXI bus,
> +  while write access to configuration registers occurs directly via an internal
> +  bus.  This saves bandwidth for the AXI interconnect and improves the system
> +  architecture in terms of safety aspects.
> +
> +maintainers:
> +  - Liu Ying <victor.liu@nxp.com>
> +
> +properties:
> +  compatible:
> +    const: fsl,imx8qxp-dc-command-sequencer
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 5
> +
> +  interrupt-names:
> +    items:
> +      - const: error
> +      - const: sw0
> +      - const: sw1
> +      - const: sw2
> +      - const: sw3
> +
> +  fsl,iram:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: phandle pointing to the mmio-sram device node

'sram' is the standard property for this.

> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - interrupts
> +  - interrupt-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx8-lpcg.h>
> +
> +    command-sequencer@56180400 {
> +        compatible = "fsl,imx8qxp-dc-command-sequencer";
> +        reg = <0x56180400 0x1a4>;
> +        clocks = <&dc0_lpcg IMX_LPCG_CLK_5>;
> +        interrupt-parent = <&dc0_intc>;
> +        interrupts = <36>, <37>, <38>, <39>, <40>;
> +        interrupt-names = "error", "sw0", "sw1", "sw2", "sw3";
> +    };
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
