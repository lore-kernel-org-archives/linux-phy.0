Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99FAFCA5FED
	for <linux-phy@archiver.kernel.org>; Tue,  6 Oct 2026 11:16:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=of/UcYH3gPTNvwr+J13q810y7AVWEaLgvnE/TXiytXo=; b=1ipORysj5zfeH2
	Palkh+g0aD4A3g+wbz61DVHMM9rZJaha+/hLXOHVnMfFG1CmWfDxgXzoOY9seizrolRwHF2FyeLHl
	N2jz+7T9yWmP0OFL1C5mPQlqIWX4O9f9lT2EkWCIPy4WOM50H+bb6q497qPt7MRpMqQMDAm9EiJjL
	I2r/QYjnZQUgHNU4USDHHtg6Gav7xeLXAioP6fAK79oZxxn+2KaeHF66JOBOZDf3q8NgzxrouDe+j
	opT7GzyQem2+pSGavF1BTyoHwqynXvYtCmMICY52PkwVw8UU2csF3nvnZj4yEKR7+BT791AlgIlU9
	pKzQ3+wNVMTiaRcsRW8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE3A6-00000000cIO-0iXu;
	Tue, 06 Oct 2026 11:16:46 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE3A2-00000000cHr-152h;
	Tue, 06 Oct 2026 11:16:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 40D7F602D3;
	Tue,  6 Oct 2026 11:16:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D1641F000FF;
	Tue,  6 Oct 2026 11:16:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791285400;
	bh=N2FvnYR+xsvUNEFnLnPobSS00B0dyfnWLUInnyZ3L88=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=A9ApEob7/arGjVELZ06xeAMMpjPnsyFrkm7Lm1b+Z6iAAuacgIcHUB+1qe8ZVOHtd
	 7IJkk4vSXFEC7ulbByh5fhayoqyPQMG9bfGJX4pjWepdcM7PFstubbEiqGaTbXCRqp
	 lOpKERB7ftamek8Z/eTIvmRRNjs/xLgS73SEyk5j9yT/7Ho/wVOcGMPnSm5OEr4Xtg
	 A343AljlDBc0a+lGSc01ZOVuFguRYDfP+kccAWWNoLTnsuEAvkn5BL5bpZR5Nkk6nE
	 rrW0CX1aS/ByApdOLG0oErQgot11yQc/AMP9QLoxDT/9jdfRxO7GHwnHxCIaH2vr/g
	 Nn9buLu02qBhA==
Date: Tue, 6 Oct 2026 13:16:37 +0200
From: Vinod Koul <vkoul@kernel.org>
To: "Christian Marangi (Ansuel)" <ansuelsmth@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v14 0/3] airoha: an7581: USB support
Message-ID: <asTYlWdkrlci37FB@parshuram>
References: <20261006102937.10972-1-ansuelsmth@gmail.com>
 <asTRQ6d0-NYOeHqX@parshuram>
 <CA+_ehUw8fQHGef_L7YPQEf-wwuzP9km=G64Ty3+AkvM=fkNJ4Q@mail.gmail.com>
 <asTVqsqOLb29LY08@parshuram>
 <CA+_ehUxra53C2N8a0t73nLpS4DkaNSzE3STfhU7j3ZoQ9becyg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+_ehUxra53C2N8a0t73nLpS4DkaNSzE3STfhU7j3ZoQ9becyg@mail.gmail.com>
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

On 06-10-26, 13:07, Christian Marangi (Ansuel) wrote:
> Il giorno mar 6 ott 2026 alle ore 13:04 Vinod Koul <vkoul@kernel.org>

> > Okay so we have a cross tree dependency. I would like my tree to be
> > buildable and not depend on next.
> >
> > I can
> > a) get a signed tag for this from clk tree with the required patch,
> > merge and then apply this series
> > b) postpone to rc1
> >
> > Either works for me
> >
> 
> Maybe "a" is better for other phy driver? The pcie move patch is blocking
> other airoha drivers currently.
> 
> What is the procedure? In theory just the dt patch is needed, nothing else.

Please send me Pull Request with a signed tag from clk tree. This is
typical workflow. Is it soc clock on common clk tree? Stephan or someone
can generate this and I can pull into phy/next and then apply this
series

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
