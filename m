Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0ECEEC5B572
	for <linux-phy@archiver.kernel.org>; Mon, 17 Aug 2026 14:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uSb3OEC8Xjae56a/XlLGWBMlh2ZCeLPI7eByMT3kQQU=; b=l9EZ01VdnnAvH2
	PsLEHLGW3xRatmWUm7av1wtILbUyhrz4te25MMQvotCjNDfsUKh7BNbvhgK3NxCoImZndAcgYAFNp
	oeJalsBaHyRlR7bPLWPaJ/Oz9diVrrAmNlx5S+r5PTT+9WQKf86ra39W4d+9T0pBwg0oDiME6LvdH
	rPZcqudu2ftsw650kIEzZQKfbmLL2hTVaKYGamCdqJbED/Zq74lDsONfDOhWzH4oDDefLOxXKo8Mt
	KFS2x6wZWTY8xH0rdofrfmFGMmlwS8AF33NhLI8h+j+uvw1zIYBFpyWl/QAN21FcuI1f8PHTkbn4C
	ROV7wzhbv2gbOVK/L7XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvxxq-00000006GkV-2Ctl;
	Mon, 17 Aug 2026 14:05:22 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvxxp-00000006GkP-0o0l
	for linux-phy@lists.infradead.org;
	Mon, 17 Aug 2026 14:05:21 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 34586600AE;
	Mon, 17 Aug 2026 14:05:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 969491F000E9;
	Mon, 17 Aug 2026 14:05:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786975519;
	bh=sjsVfIgEBH24hh2SKxarhNBMmjJq46YIV0Vy4g8mMdU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=JKl/jC9SRLwz7Isn5PaYBSTub1cupE1SktR9aMZiMuzH708HmS1/9GWcpNECH0uNH
	 v2jyZphdSVp1g1C2sFqUtE4DrOlXAqINURi7dVtdBy1T84dV3JFKblOSnsgfLpmi+G
	 aWpYMjJzig+aeTSF1Z68BzeKLKHnlxuuTWRSrk75dX6kIa4/ZoAcnt1G++46YCBQe/
	 eQAyl1M2A8lxOrzNhlFEdN7n17czmFtOKDYBC4dQdidJn4ATxfiDRCa0B9P20qSryn
	 0qTE5CRq1nDnwgN2biZJVYrj3859svkvgIi/SGmcF8xCGek/oomEIFaddHpUeQ3l4v
	 SZXebSXD3dB5Q==
Date: Mon, 17 Aug 2026 09:05:17 -0500
From: Rob Herring <robh@kernel.org>
To: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, vkoul@kernel.org,
	neil.armstrong@linaro.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	johan@kernel.org, rogerq@ti.com, Julian.FRIEDRICH@frequentis.com,
	upstream+omap@sigma-star.at
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: ti,phy-usb3: Add aspcie
 reference clock setting
Message-ID: <20260817140517.GB18207-robh@kernel.org>
References: <20260806091112.164695-1-david.oberhollenzer@sigma-star.at>
 <20260806091112.164695-2-david.oberhollenzer@sigma-star.at>
 <20260812022031.GA554483-robh@kernel.org>
 <3c11637c-8e81-44b2-8692-a5c7940ab7c2@sigma-star.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3c11637c-8e81-44b2-8692-a5c7940ab7c2@sigma-star.at>
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

On Mon, Aug 17, 2026 at 07:19:51AM +0200, David Oberhollenzer wrote:
> Hi,
> 
> On 8/12/26 4:20 AM, Rob Herring wrote:
> > > +  - if:
> > > +      properties:
> > > +        compatible:
> > > +          contains:
> > > +            const: ti,phy-pipe3-pcie
> > > +    then:
> > > +      properties:
> > > +        ti,syscon-acspcie-tx-rx: true
> > 
> > This has no effect. Invert the if and move the else here.
> > 
> 
> Before I send another version of this patch set, are you really
> sure about this?

Yes. The only purpose it serves is you have to have a 'then' to have an 
'else' clause. (BTW, json-schema actually allows omitting 'then' and 
having just if/else, but the dtschema meta-schema does not.)

> 
> Not only did I copy that entire block from the one directly above,

It's wrong too.

> (the one that is supposed to only allow syscon-pllreset compatible
> is set to ti,phy-pipe3-sata), I actually tested this by running
> make dt_binding_check.
> 
> If I intentionally break the example by setting a wrong compatible
> string, I get a "False schema does not allow" type message, same
> as when I use the syscon-pllreset property with the wrong compat
> string.
> 
> Is the existing check broken too? Is there something different
> supposed to happen?

I did not say it was broken. It is functional. It is just not minimized.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
