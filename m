Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EE19C001B0
	for <linux-phy@archiver.kernel.org>; Wed, 19 Jul 2023 05:55:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oPVbxuAN3vVgrRlzq2XkvvASye4UPUDYJ03NBaFAS04=; b=H9OrGephg3d4j/
	aSbfXi9oz96FAOTVU/ertM9JGS9dExQjLcEe4Mir9vaGI3RazUccjXC76enT4vLXztCkwF8BGzXVF
	7E0fNLYsE7pe+QI3OsEN9zVu7IrYNvrpE5wUXZcsGvLuJozWKJG3ekKoeQh8cOvojNX8xQpZOT3U1
	FvSRu32n+waI+iOWREX2gA4tTfCNSVOhnm51gJfqjmXmBfxMhBZBYV6uMMFlcpp7WA5eAvwXMaBQ2
	kbRK4AIwS+WZeNh6zXf1//A8Fh0igKkNNhzlux4haLIRQbULkIFRWlkRwGAI54js7i3x3Ikr8+pD5
	dmDElt59DhC/NMWlg1PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qM09b-005STD-2i;
	Wed, 19 Jul 2023 05:55:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qM09Z-005SS8-12;
	Wed, 19 Jul 2023 05:55:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=t8WhX+5UedLAO4uAJotr+3VMftpHPCtRQ6MvYHdbIAU=; b=OnlgCvUQW/mcZgaxUOsFKCZqi5
	+D1GuekwuLxS/LkGgxrv8GAIBUOzvEPJspUCt5mJ1Vxxkf1PXyz48y3Xzc4d3JGf/2Sxr9kJRi6t3
	6mBALxnkZxV37QtxJSfVBXGJV4WnCQ0OT/mJEjD3TsG/wZN5jmJF4Mk7QtYJ4q1vmeLp8We8BCuxI
	eIx9Epqc5XNDqQHn2O+KCsO97MXXerbqWm4wlZUB/DTZ6OmfviesR9UhCZGPiBAC7KYcbxsj/OZc4
	8tdGC0Pw2CU+jLqYC6kEqQlnwn9nniLHaJeT4S5JlF+ID3A13hQQ7A+uir0r4ysdjTEFcbPO/6S2b
	itXL71Gg==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLtEx-00C9Yv-1Z;
	Tue, 18 Jul 2023 22:32:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D649B61295;
	Tue, 18 Jul 2023 22:32:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9BF9EC433C8;
	Tue, 18 Jul 2023 22:32:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689719531;
	bh=O6WDxFarxzHsWtcIh7tAFZFJohqmPwl+2uLrWAbTkBM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uZ9IhU2P1QscJgFfyrWZ2Pemc/kHO9AbjmtoTqkwYlnB/Hck6dQJ3jxnLJVb38mRl
	 E8Ori/IBM/qzm9WmyQHqgdReymv7APVImm7ChCane99DXjje1nJhSrYKHFbv4Lyxco
	 VwCgfG6f0saZnuK+lMAW8KTvPdtCQfLEbEGL0nNhC/K/qKqV7zkmiAMyG6dUoJMx3s
	 Ywjml24/MfulgTeMbg8eVighkKRzYJF7XA1GTH7jau1uLAwJqmp+EYhm570SLbOkDT
	 38QEGVgLyKCCDi32Fl4Jpdhy1lnBxbwVJusytJv/6jEK2Y83GczKAgMumcQvt7aUj0
	 3JYU2D01TtNug==
Received: (nullmailer pid 2130228 invoked by uid 1000);
	Tue, 18 Jul 2023 22:32:08 -0000
Date: Tue, 18 Jul 2023 16:32:08 -0600
From: Rob Herring <robh@kernel.org>
To: Sandor Yu <sandor.yu@nxp.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>, "andrzej.hajda@intel.com" <andrzej.hajda@intel.com>, "neil.armstrong@linaro.org" <neil.armstrong@linaro.org>, "Laurent.pinchart@ideasonboard.com" <Laurent.pinchart@ideasonboard.com>, "jonas@kwiboo.se" <jonas@kwiboo.se>, "jernej.skrabec@gmail.com" <jernej.skrabec@gmail.com>, "airlied@gmail.com" <airlied@gmail.com>, "daniel@ffwll.ch" <daniel@ffwll.ch>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>, "vkoul@kernel.org" <vkoul@kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, "ker
 nel@pengutronix.de" <kernel@pengutronix.de>, dl-linux-imx <linux-imx@nxp.com>, Oliver Brown <oliver.brown@nxp.com>, "sam@ravnborg.org" <sam@ravnborg.org>
Subject: Re: [EXT] Re: [PATCH v7 3/7] dt-bindings: display: bridge: Add
 Cadence MHDP850
Message-ID: <20230718223208.GA2112396-robh@kernel.org>
References: <cover.1689580812.git.Sandor.yu@nxp.com>
 <3646ea4d279838c78e00af1d746e3de34351b083.1689580812.git.Sandor.yu@nxp.com>
 <5693162.DvuYhMxLoT@steina-w>
 <PAXPR04MB94483425E2BC17597B7E555AF438A@PAXPR04MB9448.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <PAXPR04MB94483425E2BC17597B7E555AF438A@PAXPR04MB9448.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230718_233220_315419_4A621EB2 
X-CRM114-Status: GOOD (  25.32  )
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

On Tue, Jul 18, 2023 at 01:58:09AM +0000, Sandor Yu wrote:
> Hi Alexander,
> =

> Thanks for your comments,
> =

> >
> > Am Montag, 17. Juli 2023, 10:03:49 CEST schrieb Sandor Yu:
> > > ********************
> > > Achtung externe E-Mail: =D6ffnen Sie Anh=E4nge und Links nur, wenn Sie
> > > wissen, dass diese aus einer sicheren Quelle stammen und sicher sind.
> > > Leiten Sie die E-Mail im Zweifelsfall zur Pr=FCfung an den IT-Helpdes=
k weiter.
> > > Attention external email: Open attachments and links only if you know
> > > that they are from a secure source and are safe. In doubt forward the
> > > email to the IT-Helpdesk to check it. ********************
> > >
> > > Add bindings for Cadence MHDP8501 DisplayPort/HDMI bridge..
> > >
> > > Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> > > ---
> > >  .../display/bridge/cdns,mhdp8501.yaml         | 105
> > ++++++++++++++++++
> > >  1 file changed, 105 insertions(+)
> > >  create mode 100644
> > > Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml
> > >
> > > diff --git
> > > a/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml
> > > b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml
> > > new file mode 100644 index 000000000000..b983ee765f54
> > > --- /dev/null
> > > +++
> > b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.y
> > > +++ aml
> > > @@ -0,0 +1,105 @@
> > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause) %YAML 1.2
> > > +---
> > > +$id:
> > > +http://devi/
> > >
> > +cetree.org%2Fschemas%2Fdisplay%2Fbridge%2Fcdns%2Cmhdp8501.yaml%
> > 23&dat
> > >
> > +a=3D05%7C01%7CSandor.yu%40nxp.com%7C603a90f3f3c34d32a1e708db86a
> > 8f868%7C
> > >
> > +686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C63825183250590544
> > 2%7CUnkno
> > >
> > +wn%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1
> > haWwi
> > >
> > +LCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=3DJnbufeZplo%2B6JGW4HaK
> > %2BLyC0MESK
> > > +GsV%2FtjfeXCXqK4U%3D&reserved=3D0
> > > +$schema:
> > > +http://devi/
> > >
> > +cetree.org%2Fmeta-schemas%2Fcore.yaml%23&data=3D05%7C01%7CSandor.
> > yu%40n
> > >
> > +xp.com%7C603a90f3f3c34d32a1e708db86a8f868%7C686ea1d3bc2b4c6fa9
> > 2cd99c5
> > >
> > +c301635%7C0%7C0%7C638251832505905442%7CUnknown%7CTWFpbGZs
> > b3d8eyJWIjoi
> > >
> > +MC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3
> > 000%7C%
> > >
> > +7C%7C&sdata=3DrdOyjVz4gGnToVC40Rcfp%2Fk925yC%2F6xNwGbBAnOtcDQ
> > %3D&reserv
> > > +ed=3D0
> > > +
> > > +title: Cadence MHDP8501 DP/HDMI bridge
> > > +
> > > +maintainers:
> > > +  - Sandor Yu <Sandor.yu@nxp.com>
> > > +
> > > +description:
> > > +  Cadence MHDP8501 DisplayPort/HDMI interface.
> > > +
> > > +properties:
> > > +  compatible:
> > > +    enum:
> > > +      - cdns,mhdp8501
> > > +      - fsl,imx8mq-mhdp8501
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  clocks:
> > > +    maxItems: 1
> > > +    description: MHDP8501 DP/HDMI APB clock.
> > > +
> > > +  phys:
> > > +    maxItems: 1
> > > +    description:
> > > +      phandle to the DisplayPort or HDMI PHY
> > > +
> > > +  interrupts:
> > > +    items:
> > > +      - description: Hotplug cable plugin.
> > > +      - description: Hotplug cable plugout.
> > > +
> > > +  interrupt-names:
> > > +    items:
> > > +      - const: plug_in
> > > +      - const: plug_out
> > > +
> > > +  ports:
> > > +    $ref: /schemas/graph.yaml#/properties/ports
> > > +
> > > +    properties:
> > > +      port@0:
> > > +        $ref: /schemas/graph.yaml#/properties/port
> > > +        description:
> > > +          Input port from display controller output.
> > > +      port@1:
> > > +        $ref: /schemas/graph.yaml#/properties/port
> > > +        description:
> > > +          Output port to DisplayPort or HDMI connector.
> > > +
> > > +    required:
> > > +      - port@0
> > > +      - port@1
> > > +
> > > +required:
> > > +  - compatible
> > > +  - reg
> > > +  - clocks
> > > +  - interrupts
> > > +  - interrupt-names
> > > +  - phys
> > > +  - ports
> > > +
> > > +additionalProperties: false
> > > +
> > > +examples:
> > > +  - |
> > > +    #include <dt-bindings/clock/imx8mq-clock.h>
> > > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > > +
> > > +    mhdp_dp: dp-bridge@32c00000 {
> >
> > I'm not sure, but I would name this node just 'bridge', because it can =
be either
> > DP or HDMI depending on the connector. But DT folks will know better th=
an
> > me.
> This name should update too after DP and HDMI driver combined.

Has nothing to do with a driver.

> I will change to "mhdp: mhdp-bridge@32c00000" in the next version.

What is 'mhdp'? Doesn't sound generic. Use just 'bridge' or =

'display-bridge'. We don't have a standard name defined in the DT spec =

(there's 'hdmi', but nothing that's protocol independent).

Rob

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
