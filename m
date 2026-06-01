Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DC1CCD6E4C
	for <linux-phy@archiver.kernel.org>; Mon,  1 Jun 2026 06:34:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fSuIVepJBJi/l1nB3SY6j0aD5GoVsEKy8LIYFhukCwQ=; b=qVJ/NaInLDE1Dq
	IKoS5GoAv/4+ljvLFVGe0yqVQf5ljnvMb/bwEDs6YfI5U0NGpmRhpiqUteS4DNQM1eXZKkWVuv6RB
	04nruqxCfNEBHX9TUgBqR9uh8+vnsSwFzBSOkdj6K0LokZs/G00iERHcKDOXB/BG1UV0TZwmMRwl/
	F+EH05yuM6UqFMMjp0dB1OMM0WsJ9pQRDw0vV2q1HtcKFEU8HyXaZ8ckVmZG+5LJwXqvJMOQwcYUu
	E5DFtnBePZHDsIDwAJpCeJVxt13ksreDGFfLKN4eWQqc+5vBoO/H9Y+d+/9fC1ymn2mcPjFhf9z++
	2IGx1O/3LhuYnr0joVGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTwEZ-0000000ADQi-0ED7;
	Mon, 01 Jun 2026 06:34:47 +0000
Received: from www537.your-server.de ([188.40.3.216])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTwEW-0000000ADPt-1RWi
	for linux-phy@lists.infradead.org;
	Mon, 01 Jun 2026 06:34:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=iTV5J9c1q6vU4HfXaFRAppoi5WMSCM3q+VMiSk/mHIo=; b=AVod6Zd/wLpW1zV3QJyTjcYH+k
	qKq2Ly5mppBJmHYvWHjO1a2PpnPcysbt8HekijajAh60PTW3cD9F7fH9SEz6sGqHyLI1HAm3lPxnK
	Ul8TQeyanb189L3nQiVI0hmjLEttTu8RSpz6IGjVTUkj9f2I8bs+pqnJ0x4vL/dU3j01TjM+1K6us
	VMWov7ANnX6p2ubsMCQI3z33e4jzgP4na4uq6W7xWz+YJ/7rZWuBSeirN08A+OcCOPrSWVocO91dq
	4pf+6XduOvybNiCCnisZD0mnRw1TLAUy4yG/igytrAEJWn4q18hTHmv30inxPMkoWy1cYw+BPUWwf
	tQAW8cFQ==;
Received: from sslproxy04.your-server.de ([78.46.152.42])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1wTwEE-000DJL-1d;
	Mon, 01 Jun 2026 08:34:26 +0200
Received: from localhost ([127.0.0.1])
	by sslproxy04.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1wTwEK-000IYB-1G;
	Mon, 01 Jun 2026 08:34:32 +0200
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: linux-phy@lists.infradead.org, Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Tanjeff Moos <tanjeff.moos@westermo.com>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 phy-next 13/15] dt-bindings: phy: lynx-10g: initial document
Date: Mon, 01 Jun 2026 08:34:25 +0200
Message-ID: <2842502.mvXUDI8C0e@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20260529171509.1163787-14-vladimir.oltean@nxp.com>
References: <20260529171509.1163787-1-vladimir.oltean@nxp.com>
 <20260529171509.1163787-14-vladimir.oltean@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: Clear (ClamAV 1.4.3/28017/Sun May 31 08:27:13 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260531_233444_490586_3B69C941 
X-CRM114-Status: GOOD (  19.60  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi,

Am Freitag, 29. Mai 2026, 19:15:07 CEST schrieb Vladimir Oltean:
> Add a schema for the 10G Lynx SerDes. This is very similar to the modern
> form of the 28G Lynx SerDes, which is very much the intention.
> =

> We allow both forms of #phy-cells =3D <1> in the top-level provider
> and #phy-cells =3D <0> in the per-lane provider for more flexibility to
> consumers, and because the kernel code is shared with the 28G Lynx which
> already has that support for compatibility reasons.
> =

> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
> Cc: devicetree@vger.kernel.org
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Rob Herring <robh@kernel.org>
> =

> v1->v2:
> - move patch later in series, right before driver
> - deliberately ignoring this Sashiko feedback:
>   https://lore.kernel.org/linux-phy/20260529125017.ifqunh52gdzhthdg@skbuf/
> ---
>  .../devicetree/bindings/phy/fsl,lynx-10g.yaml | 131 ++++++++++++++++++
>  1 file changed, 131 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,lynx-10g.ya=
ml
> =

> diff --git a/Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml b/Do=
cumentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
> new file mode 100644
> index 000000000000..993f076bba4e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
> @@ -0,0 +1,131 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/fsl,lynx-10g.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale Lynx 10G SerDes PHY
> +
> +maintainers:
> +  - Vladimir Oltean <vladimir.oltean@nxp.com>
> +
> +description:
> +  The 10G Lynx is a multi-protocol SerDes block which handles networking=
, PCIe,
> +  SATA and other high-speed interfaces. It is present on most QorIQ and
> +  Layerscape SoCs. The register map is common, but the integration is
> +  SoC-specific, with the differences consisting in register endianness, =
the
> +  number of lanes, protocol converters available per lane and their loca=
tion in
> +  the PCCR registers. Some SoCs have multiple SerDes blocks and those di=
ffer in
> +  their protocol capabilities per lane.
> +
> +properties:
> +  compatible:
> +    description:
> +      There is intentionally no generic fsl,lynx-10g compatible string d=
ue to
> +      the hardware inability to report its capabilities, despite having a
> +      common register map.
> +    enum:
> +      - fsl,ls1028a-serdes
> +      - fsl,ls1046a-serdes1
> +      - fsl,ls1046a-serdes2
> +      - fsl,ls1088a-serdes1
> +      - fsl,ls1088a-serdes2
> +      - fsl,ls2088a-serdes1
> +      - fsl,ls2088a-serdes2

Silly question: What about LS1043A? AFAIK it has a single serdes block.

Best regards
Alexander

> +
> +  reg:
> +    maxItems: 1
> +
> +  big-endian: true
> +
> +  "#phy-cells":
> +    const: 1
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 0
> +
> +patternProperties:
> +  "^phy@[0-7]$":
> +    type: object
> +    description: SerDes lane (single RX/TX differential pair)
> +
> +    properties:
> +      reg:
> +        minimum: 0
> +        maximum: 7
> +        description: Lane index as seen in register map
> +
> +      "#phy-cells":
> +        const: 0
> +
> +    required:
> +      - reg
> +      - "#phy-cells"
> +
> +    additionalProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#phy-cells"
> +  - "#address-cells"
> +  - "#size-cells"
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - fsl,ls1028a-serdes
> +              - fsl,ls1046a-serdes1
> +              - fsl,ls1046a-serdes2
> +              - fsl,ls1088a-serdes1
> +              - fsl,ls1088a-serdes2
> +    then:
> +      patternProperties:
> +        "^phy@[0-7]$":
> +          properties:
> +            reg:
> +              minimum: 0
> +              maximum: 3
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    soc {
> +      #address-cells =3D <2>;
> +      #size-cells =3D <2>;
> +
> +      serdes@1ea0000 {
> +        compatible =3D "fsl,ls1028a-serdes";
> +        reg =3D <0x0 0x1ea0000 0x0 0xffff>;
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +        #phy-cells =3D <1>;
> +
> +        phy@0 {
> +          reg =3D <0>;
> +          #phy-cells =3D <0>;
> +        };
> +
> +        phy@1 {
> +          reg =3D <1>;
> +          #phy-cells =3D <0>;
> +        };
> +
> +        phy@2 {
> +          reg =3D <2>;
> +          #phy-cells =3D <0>;
> +        };
> +
> +        phy@3 {
> +          reg =3D <3>;
> +          #phy-cells =3D <0>;
> +        };
> +      };
> +    };
> =



-- =

TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
