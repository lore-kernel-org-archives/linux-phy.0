Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0FDDCA0EFA
	for <linux-phy@archiver.kernel.org>; Sat, 23 Aug 2025 09:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WFQq8fi3uOH+s6SPet8TSywFWXT7HhUPX3vegotiMag=; b=LC9q6woYMwyC4L
	sHZMFHJo1p9YbZWI98tmT/kfmHY9TGQG/n1xD6JlN1Z9OGs5bLJcPoETkKaqtbus/Gk6VFZPPLJCm
	XurLcQMvIkgy0xlsOeuChPMAtl1Ezo8Qjfan6ySMOUIIuhdG7oMfyHyR/dW/xnRuPIazGa602nKIB
	R/2oSnNTBO672gbgZYdwQFNLUj/1jRVowAOYVTcivSSO6oMiIQ6BX+wox0vtyovKGx+h3l8FGS23M
	2wPRSJH6ttbxUyF4P4E7j06RASHNOOIA0fImt1ZelIsrHUf5vlk1a9kJelLpNMr19f+itz8jHA6a4
	rziGiVyVc6PhfiBLLPmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upkfB-00000004UOw-2aw0;
	Sat, 23 Aug 2025 09:35:53 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upUTG-000000039lU-2uFl
	for linux-phy@lists.infradead.org;
	Fri, 22 Aug 2025 16:18:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id C2849601E7;
	Fri, 22 Aug 2025 16:18:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55908C4CEED;
	Fri, 22 Aug 2025 16:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755879509;
	bh=YHS/oTRhurrO0NtuvfArtyVRbEqEjh/ZB1xiPazD29Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EDU2rvAmbrdsQmwDOOf46wZpKyL79qRomVIeWW1n6gS+yGd2aa3KJt0xVHllb94fb
	 2/RJfy54Qd2giI2kVNErQ5hLopgJdVaiOBJPLcpVlhWZDKCN2qHxjj1F3p/6FzIuqD
	 cCL0MFjAhJUrdB8XJWpraXU7FAvF3KAotwPbxoGwx+qAoWM+iepoHi5GQ1qdPm5ary
	 4NQEekp8Ifz4NSKy7pPjz2ojCvad7wU0KHnFqMnEVC9Z8bnrkNmp5weCUQAnARUWEe
	 7qqkU+kHH/Giaa0T7uEwdskfo/gTaGOeb0VtMfHIRGX26IBnMTzkhlBER0NTF6l/oi
	 gUQm++Qs+Oi4Q==
Date: Fri, 22 Aug 2025 11:18:28 -0500
From: Rob Herring <robh@kernel.org>
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Conor Dooley <conor@kernel.org>, "biju.das.au" <biju.das.au@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	"magnus.damm" <magnus.damm@gmail.com>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH 03/11] dt-bindings: phy: renesas: Document Renesas RZ/G3E
 USB3.0 PHY
Message-ID: <20250822161828.GA3905962-robh@kernel.org>
References: <20250820171812.402519-1-biju.das.jz@bp.renesas.com>
 <20250820171812.402519-4-biju.das.jz@bp.renesas.com>
 <20250820-primer-shaded-66da9fa4bcae@spud>
 <20250820-commodity-curator-1f580789885b@spud>
 <TY3PR01MB113467039A598C0EDC284AE198632A@TY3PR01MB11346.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <TY3PR01MB113467039A598C0EDC284AE198632A@TY3PR01MB11346.jpnprd01.prod.outlook.com>
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

On Thu, Aug 21, 2025 at 07:18:59AM +0000, Biju Das wrote:
> Hi Conor,
> 
> Thanks for the feedback.
> 
> > -----Original Message-----
> > From: Conor Dooley <conor@kernel.org>
> > Sent: 20 August 2025 21:13
> > Subject: Re: [PATCH 03/11] dt-bindings: phy: renesas: Document Renesas RZ/G3E USB3.0 PHY
> > 
> > On Wed, Aug 20, 2025 at 09:10:07PM +0100, Conor Dooley wrote:
> > > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > 
> > Now that I look again, same applies here with the different filename and compatible. Copypaste mistake?
> > Or why does the compatible not match the filename?
> > 
> 
> r9a09g047 is SoC part number which also known as RZ/G3E SoC.
> 
> I just followed the convention used in [1] and [2].
> Please let me know, should I change rzg3e-usb3-phy.yaml.yaml-> r9a09g047-usb3-phy.yaml ?

I think it is fine as-is.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
