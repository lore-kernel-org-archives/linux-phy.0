Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E701DCCF9F8
	for <linux-phy@archiver.kernel.org>; Wed,  5 Nov 2025 17:16:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jwyq3q1zfQx1TbsPzPA1GroylBsnnV4ef6rY1gxycZI=; b=gAuVYp1euKvwi2O6ouwMtrqXtn
	LPvMi+jG4V6SsUX4Oi7vH1e51NDJbkmIsf5hzm3d0YvPL6XIDat4OHhnsGR6GfDSjRJTdpwgf3OY+
	VKVgsyS/peMl5FMTlCAiWQ1zDWHLJ1NZCR7hOf6UV+O0jS9AdLRQcNLo0EZBmj4NDqEgKMX/PAMAt
	eprLnB+0VWLQc2FIGkEfEcEvSQObBpUjdvu8PhkAimRh+gSiAFZGerQRuqtH0u6aeiKjNJKhSoTKX
	xIUfVf3SrVv6nZ3Qvi7rS/BG9kRiuVCuiYZNndTNYlGy5k/ezb0goEcM60D/XusV8Bd8m0S8ntQci
	B5lxBALw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGh7W-0000000E91R-2pTF;
	Wed, 05 Nov 2025 17:16:30 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGh7S-0000000E90b-3js7
	for linux-phy@lists.infradead.org;
	Wed, 05 Nov 2025 17:16:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4382643A5E;
	Wed,  5 Nov 2025 17:16:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1DE1C4CEF5;
	Wed,  5 Nov 2025 17:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762362986;
	bh=NAyV3n19uUAIKa88Vx2aHvLyZFltbfxA4QxL9BN8W2s=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=iqdYGnTpTVGg0vE6ejDxgix956okjleqN0iJKEDqAdr75YzaZYCHz7DU7oboks/6C
	 0iVt2RCzaip90eHV551PJg+mX5LgjYLO/JCDnRwDUfXyiUVYlSjY9qJVz023Fy5Z1s
	 XQZHFoYhMmsKWYvhxLEQgrqLuaEv34XkF0hUCUZ2jMXKqVxNaFe2Uljn2dUs6moeP3
	 dWNr9hTvxh6LmXD6/XKe14Nj7MJigcyBf5Gx+T6nGdJSA5eAqQXk3VZxU5Nu+QlwQX
	 +Ki3iVmGM3Gtw8y1Nuu1kQ3z05NZpAUW//YZd0xCjnoK1V2L1SlxIeoMM5cFIcdOUj
	 LZqKb208saeHQ==
Date: Wed, 05 Nov 2025 11:16:24 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, 
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, biju.das.jz@bp.renesas.com, 
 linux-phy@lists.infradead.org, Geert Uytterhoeven <geert+renesas@glider.be>, 
 linux-renesas-soc@vger.kernel.org, 
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>, tomm.merciai@gmail.com, 
 linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
 devicetree@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
 Peter Rosin <peda@axentia.se>
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <961741af7d4ec945945164759fe0d78bb3cf4d9d.1762354366.git.tommaso.merciai.xr@bp.renesas.com>
References: <cover.1762354366.git.tommaso.merciai.xr@bp.renesas.com>
 <961741af7d4ec945945164759fe0d78bb3cf4d9d.1762354366.git.tommaso.merciai.xr@bp.renesas.com>
Message-Id: <176236298431.1342996.14167666722083112438.robh@kernel.org>
Subject: Re: [PATCH v2 04/21] dt-bindings: reset: renesas,rzv2h-usb2phy:
 Add '#mux-state-cells' property
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_091626_971391_5575F2B1 
X-CRM114-Status: GOOD (  12.70  )
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


On Wed, 05 Nov 2025 16:39:00 +0100, Tommaso Merciai wrote:
> Add the '#mux-state-cells' property to the Renesas RZ/V2H(P) USB2PHY
> reset binding to support describing the USB VBUS_SEL multiplexer as a
> mux-controller.
> 
> This is required to properly configure the USB PHY power selection on
> RZ/V2H(P), RZ/G3E SoCs.
> 
> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
> ---
> v1->v2:
>  - New patch
> 
>  .../bindings/reset/renesas,rzv2h-usb2phy-reset.yaml          | 5 +++++
>  1 file changed, 5 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/reset/renesas,rzv2h-usb2phy-reset.example.dtb: reset-controller@15830000 (renesas,r9a09g057-usb2phy-reset): $nodename:0: 'reset-controller@15830000' does not match '^mux-controller(@.*|-([0-9]|[1-9][0-9]+))?$'
	from schema $id: http://devicetree.org/schemas/mux/mux-controller.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/961741af7d4ec945945164759fe0d78bb3cf4d9d.1762354366.git.tommaso.merciai.xr@bp.renesas.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
