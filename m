Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C0FECD13DD
	for <linux-phy@archiver.kernel.org>; Wed, 12 Nov 2025 16:37:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AW+4SVmCBAwIvgk9Lb4kMAjKtYfV+ImIluHW5SWZmQY=; b=3eV0ycp29k3C0v
	MpoyyxRQQDIBwkU34peYplpIlBNC0+7266rQr4k6eeol0xWXSazY4xvfnQqbPbrni+Q2jfcF+R8hN
	MzqPJH82oihPUJgnBj//t4Kb9Ysaj3OU1VuwcLnOK/pS1K7ChrkjJqJrJ9CrMJb71vhNIwtFt1BXJ
	RGnBHquuPTU6i3IItKEubQlF4wuJMAnCkGtcbTX+CRcEDyszyiM0Xv1zFv3J5Smnw82Fv/nOfoUH7
	DOSfarG6KSHOYhn0lW210LMtRrQNf1xAvcaK8HDBDu5XETtB3RB5DGECiePzpekxEpJpa7oIoaQqt
	YoXY4YYj7nO4qUmiiX9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJDqP-00000009BuH-0xjo;
	Wed, 12 Nov 2025 16:37:17 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJDqN-00000009Bu7-2txC
	for linux-phy@lists.infradead.org;
	Wed, 12 Nov 2025 16:37:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id CAFB2601B9;
	Wed, 12 Nov 2025 16:37:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 496C3C4CEF5;
	Wed, 12 Nov 2025 16:37:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762965434;
	bh=oowPZ540cX44zaHpABNfot6LitLXzhEHziYTiD86060=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=C49xMFRcBVwukuEBj8w7WVJkJdl2b6q7XKOX7iyjoj46RwGJVJdZjGt4jvbUyfvH+
	 pEho5CCRnuL3R712dZdjFptpRjKnPadSWo3NL2LuQ947HDE2J6L5IycFMYZm6N1N4I
	 yHDN7Olr6pMhU5D0IoH/EUNJLbgzmKfHQoJeN2dMYVWgQyztFgvsXFgUv9V5Q5dXcO
	 PSyJWnbufZdpOEJSo86sJgSCEr3dj8p2KaJ8i9ba6oDjKwphY8Hz7JH3EvmuLq7ISM
	 N4Ms1vr+nJYY8nJyP/j9+lPVNygBhaE+l4NAwkv0DAjAsD2kXiit3ZenoD0WhtKqXV
	 jCrsEHE2su+bA==
Date: Wed, 12 Nov 2025 10:37:12 -0600
From: Rob Herring <robh@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>,
	tomm.merciai@gmail.com, linux-renesas-soc@vger.kernel.org,
	biju.das.jz@bp.renesas.com, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Peter Rosin <peda@axentia.se>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 04/21] dt-bindings: reset: renesas,rzv2h-usb2phy:
 Document VBUS_SEL mux
Message-ID: <20251112163712.GA1850277-robh@kernel.org>
References: <cover.1762773720.git.tommaso.merciai.xr@bp.renesas.com>
 <8fba0b7235bd398d41329fd087d68f7e98bbbaca.1762773720.git.tommaso.merciai.xr@bp.renesas.com>
 <20251110-resonate-strict-c3d6c42f3e0d@spud>
 <aRJqfh7p9M3NHfCS@tom-desktop>
 <20251111-character-catnip-0832956a3fb1@spud>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251111-character-catnip-0832956a3fb1@spud>
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

On Tue, Nov 11, 2025 at 05:49:24PM +0000, Conor Dooley wrote:
> Tommaso, Rob,
> 
> On Mon, Nov 10, 2025 at 11:43:37PM +0100, Tommaso Merciai wrote:
> > Hi Conor,
> > Thanks for your comment!
> > 
> > On Mon, Nov 10, 2025 at 06:56:31PM +0000, Conor Dooley wrote:
> > > On Mon, Nov 10, 2025 at 01:08:04PM +0100, Tommaso Merciai wrote:
> > > > Document the 'mux-controller' child node in the Renesas RZ/V2H(P)
> > > > USB2PHY reset binding to support describing the USB VBUS_SEL
> > > > multiplexer as a mux-controller.
> > > > 
> > > > This is required to properly configure the USB PHY VBUS source on
> > > > RZ/V2H(P), RZ/G3E SoCs.
> > > > 
> > > > Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
> > > > ---
> > > > v2->v3:
> > > >  - Manipulate mux-controller as an internal node.
> > > 
> > > Why is it a child node, rather than just putting the cell in the parent
> > > reset node?
> > 
> > Getting "make dt_binding_check errors" [1] in v2
> > Adding #mux-state-cells = <1> into:
> > 
> > 	usb20phyrst: reset-controller@15830000
> > 	usb21phyrst: reset-controller@15840000
> > 
> > Nodes.
> > 
> > Please correct me if I'm wrong.
> 
> I think that that binding is not working as intended. Why require a
> node-name pattern, when it matches on other things too:
> select:
>   anyOf:
>     - properties:
>         $nodename:
>           pattern: '^mux-controller'
>     - required:
>         - '#mux-control-cells'
>     - required:
>         - '#mux-state-cells'
> if the node name always contained mux-controller, the second two here
> would not be needed. Looks to me like the intention was for it to allow
> putting these control/state-cells properties into mfd type nodes.
> 
> I'd delete the node name property tbh. Rob, you converted this to
> schema, what do you think?

Yeah, I'd probably just comment it out and drop the select.

I'm not sure what to do here in general. Matching on node names was 
useful early on, but that becomes less useful as we have schemas for 
everything. I'd still like to document standard node names in schemas 
somehow, but obviously we can't require a certain name when a node is 
multiple providers. Ideally, every node name in the list in the DT spec 
would be in schemas and we could generate that list.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
