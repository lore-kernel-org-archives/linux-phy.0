Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94C57EFCE43
	for <linux-phy@archiver.kernel.org>; Thu,  5 Mar 2026 03:15:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QnBRS7DLtoiqUug4TEwbdNFxTYS3Kq3jV42B0NqHFm4=; b=B5IWD9xkcgYVM7
	6PLljL0q8TuQAh4IFQqRW8IibtlFWXgv2dxh10Gic66FgvHAwOXMJs9EKGNA06cVRKVNDLhBCZS2Z
	mznVJhR0aksWz8s3U+c9a++7mjMcgDlibeMAWZI/HFig1r60m2VBD6n4Y4bEIChYtSPfPAyXAYijW
	a3kpq1kQpeSJrfAa8Wu4/s4Jmkx0+pjWkqB4Ul2aC4JzxxyBjMrY8j5r/DGpYInTUFEJ9uR/8IJoN
	YU8ewZ+ei9IO4vMbXmXmNFjWVe7ht8/ry9bGWN0n+BSwqauhJE4SStFSFZJv1ID7D36Bto3TkgTOO
	Qk2KI02uYdPlJSdr6Nhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxzAy-00000000p4q-3aTp;
	Thu, 05 Mar 2026 03:15:00 +0000
Received: from azure-sdnproxy.icoremail.net ([52.229.168.213])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxzAu-00000000p42-0uS2
	for linux-phy@lists.infradead.org;
	Thu, 05 Mar 2026 03:14:59 +0000
Received: from linmin$eswincomputing.com ( [10.10.96.205] ) by
 ajax-webmail-app2 (Coremail) ; Thu, 5 Mar 2026 11:14:46 +0800 (GMT+08:00)
X-Originating-IP: [10.10.96.205]
Date: Thu, 5 Mar 2026 11:14:46 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: "Min Lin" <linmin@eswincomputing.com>
To: "Bo Gan" <ganboing@gmail.com>
Cc: "Yulin Lu" <luyulin@eswincomputing.com>, vkoul@kernel.org,
	neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, p.zabel@pengutronix.de,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, ningyu@eswincomputing.com,
	fenglin@eswincomputing.com
Subject: Re: Re: [PATCH v9 1/2] dt-bindings: phy: eswin: Document the
 EIC7700 SoC SATA PHY
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2024.2-cmXT6 build
 20241203(6b039d88) Copyright (c) 2002-2026 www.mailtech.cn
 mispb-72143050-eaf5-4703-89e0-86624513b4ce-eswincomputing.com
In-Reply-To: <5116340c-4702-47d0-87f0-9399937f0e64@gmail.com>
References: <20260205082009.1780-1-luyulin@eswincomputing.com>
 <20260205082129.1482-1-luyulin@eswincomputing.com>
 <5116340c-4702-47d0-87f0-9399937f0e64@gmail.com>
MIME-Version: 1.0
Message-ID: <3183d6e5.3d91.19cbbfda018.Coremail.linmin@eswincomputing.com>
X-Coremail-Locale: en_US
X-CM-TRANSID: TQJkCgDH3aAm9ahpqscFAA--.1438W
X-CM-SenderInfo: 5olqzx3q6h245lqf0zpsxwx03jof0z/1tbiAgERCWmoXwcNewAAs0
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJ3iIAIbVAYjsxI4VWxJw
	CS07vEb4IE77IF4wCS07vE1I0E4x80FVAKz4kxMIAIbVAFxVCaYxvI4VCIwcAKzIAtYxBI
	daVFxhVjvjDU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_191456_418124_E1E6BC61 
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

Hi Bo Gan,

To make SATA, USB work, the HSP clock&reset driver is needed. We're doing the upstreaming for this driver.
Here is a draft for your reference, it has been verified with latest v15 clock patchset on our site:
[1]HSP clock and reset generator: https://github.com/eswincomputing/linux-next/pull/23
[2]SATA dts node example: https://github.com/eswincomputing/linux-next/pull/24

Regards,
Lin Min

> -----Original Messages-----
> From: "Bo Gan" <ganboing@gmail.com>
> Send time:Tuesday, 03/03/2026 19:46:25
> To: "Yulin Lu" <luyulin@eswincomputing.com>, vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
> Cc: ningyu@eswincomputing.com, linmin@eswincomputing.com, fenglin@eswincomputing.com
> Subject: Re: [PATCH v9 1/2] dt-bindings: phy: eswin: Document the EIC7700 SoC SATA PHY
> 
> Hi Yulin,
> 
> Can your team share the dt and driver for &hspcrg? I want to do some
> testing with your latest v15 clock patchset on my P550 w/ SATA. W/o
> &hspcrg, the SATA phy can't be enabled, hence SATA drive doesn't work.
> 
> Bo
> 
> On 2/5/26 00:21, Yulin Lu wrote:
> > Document the SATA PHY on the EIC7700 SoC platform,
> > describing its usage.
> > 
> > Signed-off-by: Yulin Lu <luyulin@eswincomputing.com>
> > ---
> >   .../bindings/phy/eswin,eic7700-sata-phy.yaml  | 92 +++++++++++++++++++
> >   1 file changed, 92 insertions(+)
> >   create mode 100644 Documentation/devicetree/bindings/phy/eswin,eic7700-sata-phy.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/eswin,eic7700-sata-phy.yaml b/Documentation/devicetree/bindings/phy/eswin,eic7700-sata-phy.yaml
> > new file mode 100644
> > index 000000000000..fc7dbac77acf
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/eswin,eic7700-sata-phy.yaml
> > @@ -0,0 +1,92 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/phy/eswin,eic7700-sata-phy.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Eswin EIC7700 SoC SATA PHY
> > +
> > +maintainers:
> > +  - Yulin Lu <luyulin@eswincomputing.com>
> > +  - Huan He <hehuan1@eswincomputing.com>
> > +
> > +properties:
> > +  compatible:
> > +    const: eswin,eic7700-sata-phy
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    maxItems: 1
> > +
> > +  clock-names:
> > +    const: phy
> > +
> > +  resets:
> > +    maxItems: 2
> > +
> > +  reset-names:
> > +    items:
> > +      - const: port
> > +      - const: phy
> > +
> > +  eswin,tx-amplitude-tuning:
> > +    description: This adjusts the transmitter amplitude signal, and its value
> > +      is derived from eye diagram tuning. The three values correspond to Gen1,
> > +      Gen2, and Gen3 parameters respectively.
> > +    $ref: /schemas/types.yaml#/definitions/uint32-array
> > +    items:
> > +      - description: Gen1 parameter.
> > +        minimum: 0
> > +        maximum: 0x7f
> > +      - description: Gen2 parameter.
> > +        minimum: 0
> > +        maximum: 0x7f
> > +      - description: Gen3 parameter.
> > +        minimum: 0
> > +        maximum: 0x7f
> > +    default: [0, 0, 0]
> > +
> > +  eswin,tx-preemph-tuning:
> > +    description: This adjusts the transmitter de-emphasis signal, and its value
> > +      is derived from eye diagram tuning. The three values correspond to Gen1,
> > +      Gen2, and Gen3 parameters respectively.
> > +    $ref: /schemas/types.yaml#/definitions/uint32-array
> > +    items:
> > +      - description: Gen1 parameter.
> > +        minimum: 0
> > +        maximum: 0x3f
> > +      - description: Gen2 parameter.
> > +        minimum: 0
> > +        maximum: 0x3f
> > +      - description: Gen3 parameter.
> > +        minimum: 0
> > +        maximum: 0x3f
> > +    default: [0, 0, 0]
> > +
> > +  "#phy-cells":
> > +    const: 0
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - clocks
> > +  - clock-names
> > +  - resets
> > +  - reset-names
> > +  - "#phy-cells"
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    sata-phy@50440300 {
> > +        compatible = "eswin,eic7700-sata-phy";
> > +        reg = <0x50440300 0x40>;
> > +        clocks = <&hspcrg 17>;
> > +        clock-names = "phy";
> > +        resets = <&hspcrg 0>, <&hspcrg 1>;
> > +        reset-names = "port", "phy";
> > +        #phy-cells = <0>;
> > +    };
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
