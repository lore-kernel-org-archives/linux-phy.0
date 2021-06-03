Return-Path: <SRS0=cVk+=K5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B969C47096
	for <linux-phy@archiver.kernel.org>; Thu,  3 Jun 2021 12:24:13 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C5B53613E6
	for <linux-phy@archiver.kernel.org>; Thu,  3 Jun 2021 12:24:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C5B53613E6
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/PUh8FPrnsm+d0B/r7CTBiBtgtR8Dv1IXnxPxJ2RziQ=; b=TT7C8mmTjnrOmo
	9NoqASFWYZjkv+OuH6e3qv0tdxY6l0lAc7VYhOlhDDUWZPKKn1bEEA/k45VXZZeSV94qIx5hdnL3M
	8u1a5qIB3QFzXlLTvnAx2FEJy/yOPW0l7Z50JOLTzbeafnBmmhtvhPTrE6qsKgN4l6nLTOv72KR7z
	v1xzylTnyKqi9D3AHir/6tolvwuj0SG/cgseLQU+elqZDuxSzAnPnSqmtE0ZdshPL8tVDURhJqS1M
	ehRIRpmxKDO57WnErqN92InmodBdIx2Y1ha46EhSF8+zXGaaXBnuS3aTFLx+UzjlydqdXKLFvhnli
	WCLRLzmcdED6+CsZAp9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lomOS-008b7n-Cw; Thu, 03 Jun 2021 12:24:12 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lomOM-008b6v-08
 for linux-phy@lists.infradead.org; Thu, 03 Jun 2021 12:24:10 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 153CO0qS093714;
 Thu, 3 Jun 2021 07:24:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1622723040;
 bh=ai1clPbxvAZw8thc0Ws/5DLpv7Z63ynOCpq+k0vWHJ0=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=qiW1o0OinAOjZCA+tAlPiuxEAqh6/Gb0NxwWGp9stR39YdbRVheFCit7ODLKxWa51
 1dpsxqC0X5jKwgrSTD0ouiSZ0EqiZ+yrNGc9DN9BNvhF//Lp+BX215uRC5u7wnPk0d
 I1i/Qwtla96Kop2tx8AAfcl5DBjkEFbh0ByNZz/E=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 153CO0rS093633
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 3 Jun 2021 07:24:00 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Thu, 3 Jun
 2021 07:24:00 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Thu, 3 Jun 2021 07:24:00 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 153CNxRY026458;
 Thu, 3 Jun 2021 07:23:59 -0500
Date: Thu, 3 Jun 2021 17:53:58 +0530
From: Pratyush Yadav <p.yadav@ti.com>
To: Rob Herring <robh@kernel.org>
CC: Maxime Ripard <mripard@kernel.org>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul
 <vkoul@kernel.org>, Peter Ujfalusi <peter.ujfalusi@gmail.com>, Steve
 Longerbeam <slongerbeam@gmail.com>,
 Benoit Parrot <bparrot@ti.com>, <linux-media@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <dmaengine@vger.kernel.org>,
 Vignesh Raghavendra <vigneshr@ti.com>, Tomi
 Valkeinen <tomi.valkeinen@ideasonboard.com>, Chunfeng Yun
 <chunfeng.yun@mediatek.com>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v2 15/18] media: dt-bindings: Convert Cadence CSI2RX
 binding to YAML
Message-ID: <20210603122356.7tsjb3rfmpr4p7k6@ti.com>
References: <20210526152308.16525-1-p.yadav@ti.com>
 <20210526152308.16525-16-p.yadav@ti.com>
 <20210601174519.GA666193@robh.at.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210601174519.GA666193@robh.at.kernel.org>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210603_052406_140966_4254534E 
X-CRM114-Status: GOOD (  33.52  )
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

On 01/06/21 12:45PM, Rob Herring wrote:
> On Wed, May 26, 2021 at 08:53:05PM +0530, Pratyush Yadav wrote:
> > Convert the Cadence CSI2RX binding to use YAML schema.
> > 
> > Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> > 
> > ---
> > 
> > Changes in v2:
> > - New in v2.
> > 
> >  .../devicetree/bindings/media/cdns,csi2rx.txt | 100 -----------
> >  .../bindings/media/cdns,csi2rx.yaml           | 164 ++++++++++++++++++
> >  2 files changed, 164 insertions(+), 100 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/media/cdns,csi2rx.txt
> >  create mode 100644 Documentation/devicetree/bindings/media/cdns,csi2rx.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/media/cdns,csi2rx.txt b/Documentation/devicetree/bindings/media/cdns,csi2rx.txt
> > deleted file mode 100644
> > index 6b02a0657ad9..000000000000
> > --- a/Documentation/devicetree/bindings/media/cdns,csi2rx.txt
> > +++ /dev/null
> > @@ -1,100 +0,0 @@
> > -Cadence MIPI-CSI2 RX controller
> > -===============================
> > -
> > -The Cadence MIPI-CSI2 RX controller is a CSI-2 bridge supporting up to 4 CSI
> > -lanes in input, and 4 different pixel streams in output.
> > -
> > -Required properties:
> > -  - compatible: must be set to "cdns,csi2rx" and an SoC-specific compatible
> > -  - reg: base address and size of the memory mapped region
> > -  - clocks: phandles to the clocks driving the controller
> > -  - clock-names: must contain:
> > -    * sys_clk: main clock
> > -    * p_clk: register bank clock
> > -    * pixel_if[0-3]_clk: pixel stream output clock, one for each stream
> > -                         implemented in hardware, between 0 and 3
> > -
> > -Optional properties:
> > -  - phys: phandle to the external D-PHY, phy-names must be provided
> > -  - phy-names: must contain "dphy", if the implementation uses an
> > -               external D-PHY
> > -
> > -Required subnodes:
> > -  - ports: A ports node with one port child node per device input and output
> > -           port, in accordance with the video interface bindings defined in
> > -           Documentation/devicetree/bindings/media/video-interfaces.txt. The
> > -           port nodes are numbered as follows:
> > -
> > -           Port Description
> > -           -----------------------------
> > -           0    CSI-2 input
> > -           1    Stream 0 output
> > -           2    Stream 1 output
> > -           3    Stream 2 output
> > -           4    Stream 3 output
> > -
> > -           The stream output port nodes are optional if they are not
> > -           connected to anything at the hardware level or implemented
> > -           in the design.Since there is only one endpoint per port,
> > -           the endpoints are not numbered.
> > -
> > -
> > -Example:
> > -
> > -csi2rx: csi-bridge@0d060000 {
> > -	compatible = "cdns,csi2rx";
> > -	reg = <0x0d060000 0x1000>;
> > -	clocks = <&byteclock>, <&byteclock>
> > -		 <&coreclock>, <&coreclock>,
> > -		 <&coreclock>, <&coreclock>;
> > -	clock-names = "sys_clk", "p_clk",
> > -		      "pixel_if0_clk", "pixel_if1_clk",
> > -		      "pixel_if2_clk", "pixel_if3_clk";
> > -
> > -	ports {
> > -		#address-cells = <1>;
> > -		#size-cells = <0>;
> > -
> > -		port@0 {
> > -			reg = <0>;
> > -
> > -			csi2rx_in_sensor: endpoint {
> > -				remote-endpoint = <&sensor_out_csi2rx>;
> > -				clock-lanes = <0>;
> > -				data-lanes = <1 2>;
> > -			};
> > -		};
> > -
> > -		port@1 {
> > -			reg = <1>;
> > -
> > -			csi2rx_out_grabber0: endpoint {
> > -				remote-endpoint = <&grabber0_in_csi2rx>;
> > -			};
> > -		};
> > -
> > -		port@2 {
> > -			reg = <2>;
> > -
> > -			csi2rx_out_grabber1: endpoint {
> > -				remote-endpoint = <&grabber1_in_csi2rx>;
> > -			};
> > -		};
> > -
> > -		port@3 {
> > -			reg = <3>;
> > -
> > -			csi2rx_out_grabber2: endpoint {
> > -				remote-endpoint = <&grabber2_in_csi2rx>;
> > -			};
> > -		};
> > -
> > -		port@4 {
> > -			reg = <4>;
> > -
> > -			csi2rx_out_grabber3: endpoint {
> > -				remote-endpoint = <&grabber3_in_csi2rx>;
> > -			};
> > -		};
> > -	};
> > -};
> > diff --git a/Documentation/devicetree/bindings/media/cdns,csi2rx.yaml b/Documentation/devicetree/bindings/media/cdns,csi2rx.yaml
> > new file mode 100644
> > index 000000000000..ff5dd4211ac9
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/cdns,csi2rx.yaml
> > @@ -0,0 +1,164 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/media/cdns,csi2rx.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Cadence MIPI-CSI2 RX controller
> > +
> > +description: |
> > +  The Cadence MIPI-CSI2 RX controller is a CSI-2 bridge supporting up to 4 CSI
> > +  lanes in input, and 4 different pixel streams in output.
> > +
> > +maintainers:
> > +  - Pratyush Yadav <p.yadav@ti.com>
> > +
> > +properties:
> > +  compatible:
> > +    items:
> > +      - const: cdns,csi2rx
> 
> Since there has to be an SoC specific compatible, this should be:
> 
> compatible:
>   contains:
>     const: cdns,csi2rx

Ok.

> 
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    minItems: 3
> > +    maxItems: 6
> > +
> > +  clock-names:
> > +    minItems: 3
> > +    maxItems: 6
> > +    items:
> > +      - const: sys_clk # main clock
> > +      - const: p_clk # register bank clock
> > +      - const: pixel_if0_clk # pixel stream 0 output clock
> > +      - const: pixel_if1_clk # pixel stream 1 output clock
> > +      - const: pixel_if2_clk # pixel stream 2 output clock
> > +      - const: pixel_if3_clk # pixel stream 3 output clock
> > +
> > +  phys:
> > +    maxItems: 1
> > +    description: phandle to the external D-PHY
> > +
> > +  phy-names:
> > +    items:
> > +      - const: dphy
> > +
> > +  ports:
> > +    $ref: /schemas/graph.yaml#/properties/ports
> > +
> > +    properties:
> > +      port@0:
> > +        $ref: /schemas/graph.yaml#/$defs/port-base
> > +        unevaluatedProperties: false
> > +        description: CSI-2 input
> > +
> > +        properties:
> > +          endpoint:
> > +            $ref: video-interfaces.yaml#
> > +            unevaluatedProperties: false
> > +
> > +            properties:
> > +              clock-lanes:
> > +                maxItems: 1
> > +
> > +              data-lanes:
> > +                maxItems: 1
> 
> If there's only 1 lane, are you assigning between clock and data lanes? 
> If not, then there's no mapping needed.

There can be 4 data lanes, so my first thought after reading your 
message was that this should have minItems: 1 and maxItems: 4. I 
wondered why dt_binding_check never picked this up because the example 
uses 2 data lanes.

I went and looked at it a bit more. It seems like maxItems: 1 is the 
right thing to do. There will only be one element in the data-lanes 
property. The list of data lanes is a tuple with multiple members like: 
data-lanes = <1 2 3>. So we need a way to add constraints on the members 
of a tuple. I am not sure how that can be done. I need to learn more 
about JSON schema I guess (any hints welcome though ;-)

> 
> > +
> > +            required:
> > +              - clock-lanes
> > +              - data-lanes
> > +
> > +      port@1:
> > +        $ref: /schemas/graph.yaml#/properties/port
> > +        description: Stream 0 output
> > +
> > +      port@2:
> > +        $ref: /schemas/graph.yaml#/properties/port
> > +        description: Stream 1 output
> > +
> > +      port@3:
> > +        $ref: /schemas/graph.yaml#/properties/port
> > +        description: Stream 2 output
> > +
> > +      port@4:
> > +        $ref: /schemas/graph.yaml#/properties/port
> > +        description: Stream 3 output
> > +
> > +    required:
> > +      - port@0
> > +
> > +
> > +dependencies:
> > +  phys: [ 'phy-names' ]
> > +  phy-names: [ 'phys' ]
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - clocks
> > +  - clock-names
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    csi2rx: csi-bridge@d060000 {
> > +      compatible = "cdns,csi2rx";
> > +      reg = <0x0d060000 0x1000>;
> > +      clocks = <&byteclock>, <&byteclock>,
> > +        <&coreclock>, <&coreclock>,
> > +        <&coreclock>, <&coreclock>;
> > +      clock-names = "sys_clk", "p_clk",
> > +              "pixel_if0_clk", "pixel_if1_clk",
> > +              "pixel_if2_clk", "pixel_if3_clk";
> > +      phys = <&dphy0>;
> > +      phy-names = "dphy";
> > +
> > +      ports {
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +
> > +        port@0 {
> > +          reg = <0>;
> > +
> > +          csi2rx_in_sensor: endpoint {
> > +            remote-endpoint = <&sensor_out_csi2rx>;
> > +            clock-lanes = <0>;
> > +            data-lanes = <1 2>;
> > +          };
> > +        };
> > +
> > +        port@1 {
> > +          reg = <1>;
> > +
> > +          csi2rx_out_grabber0: endpoint {
> > +            remote-endpoint = <&grabber0_in_csi2rx>;
> > +          };
> > +        };
> > +
> > +        port@2 {
> > +          reg = <2>;
> > +
> > +          csi2rx_out_grabber1: endpoint {
> > +            remote-endpoint = <&grabber1_in_csi2rx>;
> > +          };
> > +        };
> > +
> > +        port@3 {
> > +          reg = <3>;
> > +
> > +          csi2rx_out_grabber2: endpoint {
> > +            remote-endpoint = <&grabber2_in_csi2rx>;
> > +          };
> > +        };
> > +
> > +        port@4 {
> > +          reg = <4>;
> > +
> > +          csi2rx_out_grabber3: endpoint {
> > +            remote-endpoint = <&grabber3_in_csi2rx>;
> > +          };
> > +        };
> > +      };
> > +    };
> > -- 
> > 2.30.0

-- 
Regards,
Pratyush Yadav
Texas Instruments Inc.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
