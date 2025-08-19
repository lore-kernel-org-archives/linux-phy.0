Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11BB4CA0EEB
	for <linux-phy@archiver.kernel.org>; Tue, 19 Aug 2025 18:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fc4R6wUliNiws04L7jeE/ThW/NCoty6tWo08RBtm7hA=; b=vHPXXt/OPDkrXb
	/tlWyIR8S/chQM1tSPANWp4aEYlVMcYFjVLmPnlHuq2alQT8JoEk/6GeoPXONVA8ZxeCYVAnSlrdN
	r7PkK3m4yyRwC/eEXWFKJbIQhmq1gTcNE1I9ncobpE20MLsGxeQISqcDp1OjhcW4RPrPSTUpOWatw
	t4av65qLm3mD9zukz23GCVhU0xVsW78Udj5X+fkLcFJfR2sFH1q8sjaQkFBHguC7C+XVl+mvkONQ4
	+CYZPFh5WfEp1NceIXc/Mo2Exff6aOGoaeazlPgrwHhmRGWX9T+dmy/Gm/1Rd74RnZ986y5/zxckF
	B3BgY8V46uOuazhZ8aMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoQqM-0000000BDJL-3AMs;
	Tue, 19 Aug 2025 18:13:58 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoMX6-0000000AcNS-0ohp
	for linux-phy@lists.infradead.org;
	Tue, 19 Aug 2025 13:37:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7C5115C5B7F;
	Tue, 19 Aug 2025 13:37:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10A07C4CEF1;
	Tue, 19 Aug 2025 13:37:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755610667;
	bh=IjvO8MRPzpUeuM8/2D//N63PWS1LI+f/m9iVVe4v5Oc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Lcrfizb6x3EAFuHF/ZyIxcnEpwCVW2+Rf5wsQtYm8b5qELGl3DTKAPZUQmTHb9eA1
	 IRM1AKifssli+ROh4Rkdypj2HKqBhVR1nFolAk8/StheFcjJFFLEQwgxEM4hhCB7/5
	 bN9q3bzp9jlL+/YQakpWH99L5ze9eSMgKl94hgXpW8ftw2HgwkEK1I7G7wCzqSDRRD
	 MbtBmV9L1chTn7YYTguvKYSs1cIFjcy5V8ZYz9tpyYmUKY5PTHzhISfAosW5NoOX1V
	 nbO14HhZ22a2FioOZg8SUq6Ps+Suq01CQmdCSbVSfxvI11sjZgFunVmJsSmviDXS58
	 0GeSUR2RY8cbw==
Date: Tue, 19 Aug 2025 08:37:44 -0500
From: Rob Herring <robh@kernel.org>
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: devicetree@vger.kernel.org, biju.das.jz@bp.renesas.com,
	krzk+dt@kernel.org, geert+renesas@glider.be, kishon@kernel.org,
	linux-phy@lists.infradead.org, yoshihiro.shimoda.uh@renesas.com,
	conor+dt@kernel.org, magnus.damm@gmail.com,
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	p.zabel@pengutronix.de, vkoul@kernel.org
Subject: Re: [PATCH v5 1/7] dt-bindings: phy: renesas,usb2-phy: Mark resets
 as required for RZ/G3S
Message-ID: <20250819133744.GA87211-robh@kernel.org>
References: <20250819054212.486426-1-claudiu.beznea.uj@bp.renesas.com>
 <20250819054212.486426-2-claudiu.beznea.uj@bp.renesas.com>
 <175558495459.3265640.2032619822487575179.robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <175558495459.3265640.2032619822487575179.robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_063748_271584_5366CA40 
X-CRM114-Status: GOOD (  16.90  )
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

On Tue, Aug 19, 2025 at 01:29:17AM -0500, Rob Herring (Arm) wrote:
> 
> On Tue, 19 Aug 2025 08:42:06 +0300, Claudiu wrote:
> > From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> > 
> > The reset lines are mandatory for the Renesas RZ/G3S platform and must be
> > explicitly defined in device tree.
> > 
> > Fixes: f3c849855114 ("dt-bindings: phy: renesas,usb2-phy: Document RZ/G3S phy bindings")
> > Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> > ---
> > 
> > Changes in v5:
> > - none
> > 
> > Changes in v4:
> > - none
> > 
> > Changes in v3:
> > - collected tags
> > - rebased on top of latest version of renesas,usb2-phy.yaml;
> >   Conor, Geert: I kept your tags; please let me know if you consider it
> >   otherwise
> > 
> > Changes in v2:
> > - none; this patch is new
> > 
> >  Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> 
> 
> doc reference errors (make refcheckdocs):
> 
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250819054212.486426-2-claudiu.beznea.uj@bp.renesas.com

No issue here. The QCom folks have broken "make dt_binding_check" in 
linux-next...

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
