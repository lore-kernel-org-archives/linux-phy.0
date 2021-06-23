Return-Path: <SRS0=CyPL=LR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6918C4743C
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jun 2021 14:13:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 98AAB6101D
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jun 2021 14:13:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 98AAB6101D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=66fhYgHKZb4s1bag4eERCpuQdezZvsTji3F0RlhVzIo=; b=pGQnWwa09/gdxI
	GgQIig7HWOxLVRaJ9S/uZy3qL2EwosPgTGvaNuMHyTGAtOdsYdLvGsRKKqb4KzBZXlo7S250zd9yl
	ADRdT2/pnGSe/zOLWh6PxT/XVX6xNKShnxlRB5FAk65H8yWM+LAh7y3n057LgCe+fHpMw8Yw1zOtu
	/g7m941aB9Y5StGL7JJutDz4jOzvkKTB2H4Hmc4GzxMIHtnwrnQFgCZwq1SsaOthFPC/2qSur2TiB
	LdNGuAKEzJFnZYYRew2dBcnIpqQyfK4sn0k4EBKQzG9faf3J4xVUVIbbzic9GpuWadZVL+fxU1pFi
	QbjqqwnYeGyAeK64vWdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lw3d2-00Axga-4E; Wed, 23 Jun 2021 14:13:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lw3cy-00Axfe-Ca
 for linux-phy@lists.infradead.org; Wed, 23 Jun 2021 14:13:18 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 09F94610C7
 for <linux-phy@lists.infradead.org>; Wed, 23 Jun 2021 14:13:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1624457596;
 bh=2D9bXMvM+JmMYhWz55X1lQn63XVa0lNjGb8sbsPeUlI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=e1NaCKVSyFS1N6pMZhNWdW9qczwx1qgT9qQOMG9kGt0vbXJmg7rnMN+Oo/pl+hbpw
 6f5EXxJCRsWEd4TvsXAm3wf+SmmWjh1bjRCqhZfcWc9kHglKc64Hit6Mp8c2XXev8D
 q+Swu+5mPd8Ty6gmBOVQvBH0An/BhT46xYDVkXnip3lztUJGZQYtJ7o42GtB7fwtek
 gS+b1Za7CUGdZHQD5z4WuaCOEI8uYdNppZLc7Fp+09K5Kw7Qh3SgAiho7wLmonlNyD
 n+Qmhw4BGETjGmXCpk2MiDPgM6wKtq0kvnW0n3NsLcpJzMn5Fqv+7CwaKQqv1diMjO
 qzwFnlGSXLTqw==
Received: by mail-ej1-f51.google.com with SMTP id gn32so4304337ejc.2
 for <linux-phy@lists.infradead.org>; Wed, 23 Jun 2021 07:13:15 -0700 (PDT)
X-Gm-Message-State: AOAM530evcMpjHHv/miDM0tiehFI6BTAb3mCKZvjPDYa+JGg7CNey/AK
 IeLy2Qu0TMPIqNX6kety/Vt4o2pW/55XV69kdQ==
X-Google-Smtp-Source: ABdhPJxJXNM8p40jL+1hduziK5Lfzt6kOH+YKNP84M1NQTiMMnmsEQwdG6ThBH+2icXPIffhLBoOqvfAupbq/dOrDHM=
X-Received: by 2002:a17:906:1951:: with SMTP id
 b17mr233230eje.468.1624457594568; 
 Wed, 23 Jun 2021 07:13:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210621093943.12143-1-biju.das.jz@bp.renesas.com>
 <20210621093943.12143-2-biju.das.jz@bp.renesas.com>
 <20210622165851.GA3840386@robh.at.kernel.org>
 <OS0PR01MB5922ECC2B573F1F8E170744F86089@OS0PR01MB5922.jpnprd01.prod.outlook.com>
In-Reply-To: <OS0PR01MB5922ECC2B573F1F8E170744F86089@OS0PR01MB5922.jpnprd01.prod.outlook.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 23 Jun 2021 08:13:02 -0600
X-Gmail-Original-Message-ID: <CAL_JsqK_6_LUD-ffkDCuDEds2RiYftJfynZyPN4io3Lt3MnQ4g@mail.gmail.com>
Message-ID: <CAL_JsqK_6_LUD-ffkDCuDEds2RiYftJfynZyPN4io3Lt3MnQ4g@mail.gmail.com>
Subject: Re: [PATCH v2 01/11] dt-bindings: phy: renesas: Document RZ/G2L USB
 PHY Control bindings
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, 
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Chris Paterson <Chris.Paterson2@renesas.com>,
 Biju Das <biju.das@bp.renesas.com>, 
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210623_071316_502211_58DC37BE 
X-CRM114-Status: GOOD (  28.33  )
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

On Wed, Jun 23, 2021 at 7:38 AM Biju Das <biju.das.jz@bp.renesas.com> wrote:
>
> Hi Rob,
>
> Thanks for the feedback.
>
> > Subject: Re: [PATCH v2 01/11] dt-bindings: phy: renesas: Document RZ/G2L
> > USB PHY Control bindings
> >
> > On Mon, Jun 21, 2021 at 10:39:33AM +0100, Biju Das wrote:
> > > Add device tree binding document for RZ/G2L USB PHY control driver.
> > >
> > > Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> > > Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > > ---
> > > V1->V2:
> > >  * Add clock properties
> > > ---
> > >  .../phy/renesas,rzg2l-usbphyctrl.yaml         | 65 +++++++++++++++++++
> > >  1 file changed, 65 insertions(+)
> > >  create mode 100644
> > > Documentation/devicetree/bindings/phy/renesas,rzg2l-usbphyctrl.yaml
> > >
> > > diff --git
> > > a/Documentation/devicetree/bindings/phy/renesas,rzg2l-usbphyctrl.yaml
> > > b/Documentation/devicetree/bindings/phy/renesas,rzg2l-usbphyctrl.yaml
> > > new file mode 100644
> > > index 000000000000..8e8ba43f595d
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/phy/renesas,rzg2l-usbphyctrl.y
> > > +++ aml
> > > @@ -0,0 +1,65 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) %YAML 1.2
> > > +---
> > > +$id:
> > > +https://jpn01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
> > > +cetree.org%2Fschemas%2Fphy%2Frenesas%2Crzg2l-usbphyctrl.yaml%23&amp;d
> > > +ata=04%7C01%7Cbiju.das.jz%40bp.renesas.com%7Cc6bbf5f6ce334eaa722a08d9
> > > +359f07ad%7C53d82571da1947e49cb4625a166a4a2a%7C0%7C0%7C637599779421910
> > > +039%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBT
> > > +iI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=Jcf6Om4DehifCe1KO1rmt5LxTB
> > > +6jtGoQLD1MoqWGM%2F0%3D&amp;reserved=0
> > > +$schema:
> > > +https://jpn01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
> > > +cetree.org%2Fmeta-schemas%2Fcore.yaml%23&amp;data=04%7C01%7Cbiju.das.
> > > +jz%40bp.renesas.com%7Cc6bbf5f6ce334eaa722a08d9359f07ad%7C53d82571da19
> > > +47e49cb4625a166a4a2a%7C0%7C0%7C637599779421910039%7CUnknown%7CTWFpbGZ
> > > +sb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%
> > > +3D%7C1000&amp;sdata=LlqPRLf9%2BGrEdSapxCFhwxVKcXTVh9ECr%2FXPN0SIzi4%3
> > > +D&amp;reserved=0
> > > +
> > > +title: Renesas RZ/G2L USB2.0 PHY Control
> > > +
> > > +maintainers:
> > > +  - Biju Das <biju.das.jz@bp.renesas.com>
> > > +
> > > +description:
> > > +  The RZ/G2L USB2.0 PHY Control mainly controls reset and power down
> > > +of the
> > > +  USB/PHY.
> > > +
> > > +properties:
> > > +  compatible:
> > > +    items:
> > > +      - enum:
> > > +          - renesas,r9a07g044-usbphyctrl # RZ/G2{L,LC}
> > > +      - const: renesas,rzg2l-usbphyctrl
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  clocks:
> > > +    maxItems: 1
> > > +
> > > +  resets:
> > > +    maxItems: 1
> > > +
> > > +  power-domains:
> > > +    maxItems: 1
> > > +
> > > +  '#phy-cells':
> > > +    # see phy-bindings.txt in the same directory
> > > +    const: 1
> > > +    description: |
> > > +      The phandle's argument in the PHY specifier is the phy reset
> > control bit
> > > +      of usb phy control.
> > > +      0 = Port 1 Phy reset
> > > +      1 = Port 2 Phy reset
> > > +    enum: [ 0, 1 ]
> >
> > You already have the const, so this doesn't do anything.
>
> OK, will take out const.

No, 'const' is correct. This is the value of '#phy-cells', not the
contents (we don't have a way to express schema for that).

> > > +required:
> > > +  - compatible
> > > +  - reg
> > > +  - clocks
> > > +  - '#phy-cells'
> > > +
> > > +additionalProperties: false
> > > +
> > > +examples:
> > > +  - |
> > > +    #include <dt-bindings/clock/r9a07g044-cpg.h>
> > > +
> > > +    usbphyctrl@11c40000 {
> >
> > usb-phy@...
>
> The IP is called USBPHY control. It mainly controls reset and power down of the USB2.0/PHY.

Sounds like it should be using the reset binding...

>
> So not sure usb-phy is right one here ? I prefer usb-phy-ctrl instead. Is it ok? Please let me know.

A node with #phy-cells should use the standard phy node names unless
it has other controls. As I said, this doesn't seem to be a phy, so
using #phy-cells here is what seems wrong.

> > > +        compatible = "renesas,r9a07g044-usbphyctrl",
> > > +                     "renesas,rzg2l-usbphyctrl";
> > > +        reg = <0x11c40000 0x10000>;
> > > +        clocks = <&cpg CPG_MOD R9A07G044_USB_PCLK>;
> > > +        resets = <&cpg R9A07G044_USB_PCLK>;
> > > +        power-domains = <&cpg>;

Also, are these all resources of the usbphyctrl block and not just
resources you happen to want in the driver? For example, the
power-domain should be the power island that this block resides in.

> > > +        #phy-cells = <1>;
> > > +    };
> > > --
> > > 2.17.1
> > >
> > >

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
