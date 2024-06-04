Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EED2BC25B7E
	for <linux-phy@archiver.kernel.org>; Tue,  4 Jun 2024 12:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=En6xORtQHkyjwF8Zbv0xjx3UV3zJNslCr6CJysmC5Gg=; b=YxjcCY6t/eMXiA
	96Y1qHgQeJHg7Zrd4F9JEGfdRf04WbpI3+hhbwrZT3+5qxNtvf01DkoUKlNlICRxZeWaOO8JlwjXj
	HKr546YbSq/14+YjNoYAYIjZnR2SYC1iYcflrxs4cudehfPvc7RKYH56wLWVVX/LvjnC9MAuUOKpM
	rFIFWImzdKG+/uYW6H8EPDVAsJ3PRDYA6F31QCL52rzRL1KPKSf7ihR0C4a/l7LCFhseTafnlc04C
	yMryhJ1y9JXxmnu7p9/WPbsH5YvzE7JPJShBdlnfemaPtNZuVD8td6x3zDmQJCnx+KLIkE7qoUFXs
	KWOHeFDJHhK9kyZPO31w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sETFZ-00000002H4x-23dA;
	Tue, 04 Jun 2024 12:26:49 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sETFW-00000002H2g-0Mhr
	for linux-phy@lists.infradead.org;
	Tue, 04 Jun 2024 12:26:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 5434ACE111F;
	Tue,  4 Jun 2024 12:26:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 507AFC2BBFC;
	Tue,  4 Jun 2024 12:26:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717504003;
	bh=RWEfxkpS0onejmp+ePUKBf89QbF+aPLs1HXvxSHQjGk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XnZK0iDhRQdr4Wv2eA9VGuAMvBx3w5Ty4OCxEBvTG5AMActM0Emy/Ckvn6TeEvXB4
	 gdZQ8k4vkul5NuyIeBGjHzaqJqgnoBVQAUjcLrWCxWHxoN5zc9yrSjfkXAmEFlIPH1
	 nRvDn65//ODW142sdqJV/sE0Wk+SzdolEL8yGHUlB7aGlFUYgXzQiJLvXDR5KAx7gj
	 NvT4sdkmXQbFFQGrad2EKCOIWNHvGQ/5x0Tx6sReebsfR3knsVknClPRqmr15QJ0Wd
	 6EcH6ZfoaTE8WI23cJtrfwcX4NVW8cO7m0HmJ5EQVpytSgL3kdoPp1k1f1j4U2kRZa
	 qGC70M/TZC0Zg==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1sETFS-000000004PU-1qC2;
	Tue, 04 Jun 2024 14:26:42 +0200
Date: Tue, 4 Jun 2024 14:26:42 +0200
From: Johan Hovold <johan@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Abel Vesa <abel.vesa@linaro.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the X1E80100 QMP PCIe PHY Gen4 x4
Message-ID: <Zl8IAqTehDrVUJ4k@hovoldconsulting.com>
References: <20240531-x1e80100-phy-add-gen4x4-v1-0-5c841dae7850@linaro.org>
 <20240531-x1e80100-phy-add-gen4x4-v1-1-5c841dae7850@linaro.org>
 <Zl26Y0VklPmiirem@hovoldconsulting.com>
 <8e5610de-8091-4a08-a3b8-a0eecdc89438@kernel.org>
 <Zl73xRo7JpAZ5ViO@hovoldconsulting.com>
 <2626e3b0-a407-4e05-9c86-6d7cd40b9307@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2626e3b0-a407-4e05-9c86-6d7cd40b9307@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240604_052646_426860_5C78AAF0 
X-CRM114-Status: GOOD (  14.25  )
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

On Tue, Jun 04, 2024 at 01:37:46PM +0200, Krzysztof Kozlowski wrote:
> On 04/06/2024 13:17, Johan Hovold wrote:
> > On Tue, Jun 04, 2024 at 01:00:35PM +0200, Krzysztof Kozlowski wrote:
> >> On 03/06/2024 14:43, Johan Hovold wrote:
> >>> On Fri, May 31, 2024 at 07:06:44PM +0300, Abel Vesa wrote:
> >>>> The PCIe 6th instance from X1E80100 can be used in both 4-lane mode or
> >>>
> >>> nit: s/PCIe 6th/sixth PCIe/
> >>> nit: s/from/on/
> >>> nit: s/both/either/
> >>
> >> That's really nit-picking and not helpful in getting things merged.
> > 
> > Writing proper commit messages with correct grammar is in no way to be
> > asking too much (especially from experienced kernel devs).
> 
> Well, many of us are not native English speakers, so when the commit msg
> is 100% understandable, pointing out grammar mistakes or style
> (6th->sixth) issues is nit-picking and is asking for unnecessary work.

Well I did use a "nit:" prefix for a reason. And I hope people are still
interested in improving their English even if it's not their first
language.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
