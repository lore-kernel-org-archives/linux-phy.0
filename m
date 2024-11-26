Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B024FD6554C
	for <linux-phy@archiver.kernel.org>; Tue, 26 Nov 2024 18:38:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WK1ieN+5bhVGZISoJEd1MYDCV9vi1rYkIrBIOeTuz6A=; b=A3JVnTpyQHilYO
	dLu3Q//gBua0x+wywgepqJ87wOX2udF5PLGNWQyKkaXzLvbUGmR9syzZg25urTfNsVwd2pNPOPmPU
	AYYq3Z2gbji/umtCC6U6Fzaq/O1AUC6lK9PzbKouDSHMpBgJKgMx47Us5zPDGTWoutOfV75gMNhu2
	w/y3U326n7xXwgZfVgDbm0KJvtrHppk3asyi2t23K0/6+U9Mjvyxr+9RPTq02Y9TQAgQCr31sHgRr
	EyFHLbiEzFxWxRO1+COS1+QUsMfGKKHIemyHGwI8UN4btR6Q1I7jZfi5nPWOLg7S0WrSS7w2g/Nxb
	jyRV8Q+WR24wUjXftXkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tG0ST-0000000BRqR-3VgS;
	Tue, 26 Nov 2024 18:38:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tG0SR-0000000BRpd-2Q73;
	Tue, 26 Nov 2024 18:38:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=VgLIPHtecoQLiuBn73bXhufyb7gzXXwP1OGjk0QrpHs=; b=nNKsGBwJu/r9fx0Q1fY7RHGlJQ
	ZyI9VvC/R5Gkb8aMPEx13u13Fs8ckw6GAgDxy/S8x4t9639CVWQXtitJcWcDHQH1LGrj7KVsb3pdR
	1Hscx1ec575QUNz+CwYGpw1qqe5pzip9UELNmSQSCTg3JvXSuG5EQXh7jvgB4UaFoM18buaOrSXEV
	B8FzjeUx+JQ6ifAQbDqMezIY3fv3t0pMWHYKGDhee02CXqjE/o86nKVxLLZlpRF2FFTbitNFpLapQ
	/k5h7o96sWC7f9stU9VGk96E0Cn/oMJsQ5InA/anUd1NrFPn+FuXkhzVS4hZanQroJxynfjsi1/Et
	7ClTyF6g==;
Received: from i5e86190f.versanet.de ([94.134.25.15] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tG0SK-0002U1-1g; Tue, 26 Nov 2024 19:38:36 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Conor Dooley <conor@kernel.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, quentin.schulz@cherry.de,
 sebastian.reichel@collabora.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 dse@thaumatec.com, Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: Add Rockchip MIPI C-/D-PHY schema
Date: Tue, 26 Nov 2024 19:38:35 +0100
Message-ID: <2213231.Mh6RI2rZIc@diego>
In-Reply-To: <20241126-pastrami-gusty-8b9df32ae00c@spud>
References: <20241126131736.465111-1-heiko@sntech.de>
 <20241126131736.465111-2-heiko@sntech.de>
 <20241126-pastrami-gusty-8b9df32ae00c@spud>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_103843_636634_E135BDE7 
X-CRM114-Status: GOOD (  19.06  )
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

Hey Conor,

Am Dienstag, 26. November 2024, 18:44:14 CET schrieb Conor Dooley:
> On Tue, Nov 26, 2024 at 02:17:34PM +0100, Heiko Stuebner wrote:
> > From: Heiko Stuebner <heiko.stuebner@cherry.de>
> > 
> > Add dt-binding schema for the MIPI C-/D-PHY found on
> > Rockchip RK3588 SoCs.
> > 
> > Tested-by: Daniel Semkowicz <dse@thaumatec.com>
> > Tested-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
> > ---
> >  .../phy/rockchip,rk3588-mipi-dcphy.yaml       | 87 +++++++++++++++++++
> >  1 file changed, 87 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-dcphy.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-dcphy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-dcphy.yaml
> > new file mode 100644
> > index 000000000000..c8ff5ba22a86
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-dcphy.yaml
> > @@ -0,0 +1,87 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/phy/rockchip,rk3588-mipi-dcphy.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Rockchip MIPI D-/C-PHY with Samsung IP block
> > +
> > +maintainers:
> > +  - Guochun Huang <hero.huang@rock-chips.com>
> > +  - Heiko Stuebner <heiko@sntech.de>
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - rockchip,rk3576-mipi-dcphy
> > +      - rockchip,rk3588-mipi-dcphy
> 
> How many phys do each of these SoCs have?

- rk3588 has two - each with a separate GRF for additional settings [0]
- rk3576 has one


Heiko

[0] https://lore.kernel.org/lkml/D5F5C1RWVHG5.TSHPO29TXYEF@cknow.org/T/
The register layout in each GRF area is identical, but each DC-PHY gets
its own separate GRF io-mem block.



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
