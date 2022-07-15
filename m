Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75677C43334
	for <linux-phy@archiver.kernel.org>; Fri, 15 Jul 2022 11:33:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IAhTzJr4A35h5/05l6fe3xWZs6JUTlM2WB9D3MozP4E=; b=dxjKARaxVTxv6C
	DwvDjT/Hz/SnYd5UTJjmtU0XcrL9znsbXdFGEPQHZKcNAvsH7B98qB3WhiKXLkMkjFK52L/4/CrY1
	yg9DtlCjWfqaH/zQwdd2LIHab62xgH9PvU5CQZh2afV9E7+PA5LIv1kXIpNZaGLiUrwbGlkHO39by
	SFmhl1klnuG4r6WgpoMIOXwBfUG5GqOt1OLm8oecG0d0kM6FbDkigkK1KlQbIP9N1lCEoo04aN3P7
	8DNZ1SKyDftMfi+PMWnfEGb+Q+fFUivMHVNh7SdJWztJBFjcngPPoE3tSmzC0aI+G5vehz8kczGWm
	PdPGRNSz/whOU950XVZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCJZh-006cma-AX; Fri, 15 Jul 2022 11:33:37 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCJZG-006cQs-8f
	for linux-phy@lists.infradead.org; Fri, 15 Jul 2022 11:33:11 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8ACE2622C5;
	Fri, 15 Jul 2022 11:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5DFFEC341C0;
	Fri, 15 Jul 2022 11:33:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657884788;
	bh=c1c93+tjC4WORlEUFvYHxmjrCrBFO9kZtjAHyKyLww0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ARBWsnnFu2iA17XOMPlqDlZ3h+Dvvggd1uhc4cRrK60048Agu4QbEPBSWaN7A7jaM
	 cWlEq6tsE8aQsjD29f4U1ecH+OkdlrvW0VMDEqnW9sbzqHmGCFlSBbiEe7Ms7YwTcR
	 eRo0cAn0eIZq/GHG3UrUq/wEOPTt4PMHPzw2nbRfemo+LdcSbAD9WX2H1ii0F8kKdH
	 Z+zhmvtWQffYI+dM6rQp7PFDDzld+/9zJaZlUAUh6L1Z3zkz8xW6tWx6rLry5cBwgk
	 l+qzCjs4GshZm+Yn9xNaTnzbzPhJxXFhZVherD/tqChlrl/JC85IHem+ntQrBRXACF
	 5fqt+pFCqHBUg==
Date: Fri, 15 Jul 2022 17:03:03 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Wangseok Lee <wangseok.lee@samsung.com>
Cc: "robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"kishon@ti.com" <kishon@ti.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"jesper.nilsson@axis.com" <jesper.nilsson@axis.com>,
	"lars.persson@axis.com" <lars.persson@axis.com>,
	"bhelgaas@google.com" <bhelgaas@google.com>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
	"kw@linux.com" <kw@linux.com>,
	"linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>,
	"kernel@axis.com" <kernel@axis.com>,
	Moon-Ki Jun <moonki.jun@samsung.com>,
	Sang Min Kim <hypmean.kim@samsung.com>,
	Dongjin Yang <dj76.yang@samsung.com>,
	Yeeun Kim <yeeun119.kim@samsung.com>
Subject: Re: [PATCH v3 4/5] phy: Add ARTPEC-8 PCIe PHY driver
Message-ID: <YtFQb+2tpYsg25w/@matsya>
References: <YsW9m6hotDKacXe3@matsya>
 <YsPYc3YPuG56yTYM@matsya>
 <20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7@epcms2p7>
 <20220614013446epcms2p8c88ea65da49447f72fef6536c7f73fb6@epcms2p8>
 <20220706081036epcms2p6baf1d8afac994cd0d45c5e59029c8ce7@epcms2p6>
 <CGME20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7@epcms2p5>
 <20220714095955epcms2p5f5e9a3123a368069b5c661cdeb70485e@epcms2p5>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220714095955epcms2p5f5e9a3123a368069b5c661cdeb70485e@epcms2p5>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220715_043310_374662_8C2175F0 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
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

On 14-07-22, 18:59, Wangseok Lee wrote:
> On=A007-07-22,=A001:52,=A0Vinod Koul=A0wrote:
> > On=A006-07-22,=A017:10,=A0Wangseok=A0Lee=A0wrote:

> Sorry for late reply.
> =

> Above all, the IP blocks of phy-exynos-pcie.c and artpec8's pcie phy are
> different. As a result, the H/W architecture and operation sequence is
> very different. So it is very difficult to merge into a exynos pcie file.
> If possible, we would like to proceed with a new file. Is that possible?

Okay lets try that

-- =

~Vinod

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
