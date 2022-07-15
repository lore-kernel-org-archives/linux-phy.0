Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67578CCA47F
	for <linux-phy@archiver.kernel.org>; Fri, 15 Jul 2022 11:35:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m/LXCp0aCY7jNziRU4kZGrnMbFKquh6O9/ku8bfxwXU=; b=T/dwCeTHozRifu
	oYU4chtyX7h9PYyWVIUc/tzxtIosMs5FeZJUdiEJA/e2gyayuF3lbp4Foao/w312d8V1pSQFY1cH4
	MHYoIIKAr/qmdnDOI/1/dcQTh1rlifc4akJ44feo/OO0Y8LVy64i1NtEhCKLq6eqx+ZVVPtBbg5Sr
	WCfXp+whe0WCNbYlj3lwscgJiondSvxPxgNAANoDmea0jGc4ugh+FbVyUgKG+cMV4X5uNunf59cx5
	z0g4VB00u5JZM8ZK4UYafQs4UTUZAt8otaj6miHhqalyouW0Y3aNnlx6Rkz6abCx+dRjeciy44QVg
	s/GX+/GoYvXfE0PNGjSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCJbf-006drD-E2; Fri, 15 Jul 2022 11:35:39 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCJbb-006dpO-KQ
	for linux-phy@lists.infradead.org; Fri, 15 Jul 2022 11:35:36 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2AD1C622E9;
	Fri, 15 Jul 2022 11:35:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF2FEC34115;
	Fri, 15 Jul 2022 11:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657884934;
	bh=AVfJz6hAs+kgFPameBwL8dCVrV6mu62fj//RcFwFdVI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gUKMR4hnkbs/CLLUl33Nkedzr4Yfirduk8yTGfhmnXXbni528zYlpNoFdDPQ3uLDt
	 IGQRs2REVZvf3GznJmTZBf6hh85lFMuujmTya790svjziG1PiHKu/6T5/Fwfv6sSDx
	 kYersxM4H7vOJOa/FbyjHB8OqdgEFVmzkxcL5c9G3+HhZZ1zvB4OEM/1kVZ2zO20PH
	 GaK9qwjWyGtc69H5pe+WfDtZ2MXMGmV9yM7E6u0vpkfSN2L52H5lWDDxuRXOd+dgwg
	 s5qowh61WNJF7tIltDvOXmH4MmEZjMD9bfAAeeSKLHVF2HfjAfx8cKQ+i8hUqdX6lq
	 mRypnBH65poTA==
Date: Fri, 15 Jul 2022 17:05:30 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>, linux-pci@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org, linux-phy@lists.infradead.org,
	Jingoo Han <jingoohan1@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH 1/2] phy: samsung: phy-exynos-pcie: sanitize
 init/power_on callbacks
Message-ID: <YtFRAkt4onP4CZIj@matsya>
References: <YsPZU83Jl/kcqR8h@matsya>
 <20220712201227.GA791612@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220712201227.GA791612@bhelgaas>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220715_043535_745128_38752AEF 
X-CRM114-Status: GOOD (  19.87  )
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

On 12-07-22, 15:12, Bjorn Helgaas wrote:
> On Tue, Jul 05, 2022 at 11:55:23AM +0530, Vinod Koul wrote:
> > On 29-06-22, 00:04, Marek Szyprowski wrote:
> > > The exynos-pcie driver called phy_power_on() and then phy_init() for some
> > > historical reasons. However the generic PHY framework assumes that the
> > > proper sequence is to call phy_init() first, then phy_power_on(). The
> > > operations done by both functions should be considered as one action and
> > > as such they are called by the exynos-pcie driver (without doing anything
> > > between them). The initialization is just a sequence of register writes,
> > > which cannot be altered, without breaking the hardware operation.
> > > 
> > > To match the generic PHY framework requirement, simply move all register
> > > writes to the phy_init()/phy_exit() and drop power_on()/power_off()
> > > callbacks. This way the driver will also work with the old (incorrect)
> > > PHY initialization call sequence.
> > 
> > Is the plan to merge thru pcie tree?
> 
> I guess these patches should go together.  I don't see any major
> exynos series pending, but I do have two minor pci-exynos.c patches in
> the queue.
> 
> If you ack it (after resolution of your question below) I'd be happy
> to take both if it doesn't cause trouble for you.

Done now.

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
