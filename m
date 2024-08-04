Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6338C3DA7F
	for <linux-phy@archiver.kernel.org>; Sun,  4 Aug 2024 16:39:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NMkMxMnid/YDP/5ejrNSZdvDaF0xuflupULrC+mVyqs=; b=G9BQ30oXcDUhm4
	oxNQgOe6cWv1CrlDUjMcTwJey/I1C22WpF4Lx8Qp89JCJHJ80n9HvXPhNXu1hAkbLBOO1Yq+19lqn
	oy2FHc9bvbeWtwZK84UKDTMhXOUnXDvJ0F+HYCJNeZIOJTvDuprgsg31sK0b7P+yTiebO1ehK5xEH
	vFH9yg7SVDHFXS5kDqmt/0zWS87jKfn0Q16LsUllx2GPBxTnAp/23m5VqaoQO5P1onVqWVarMQy63
	CozbNWO8hSoeYdbG+tlSVHR+aA9fe+PMId4x9yEuNgl2UJHh4hyC1K7wR1GUnYvU8KlAig1D+PKGH
	qBnVWhWZJD+tFOfFz/QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saeGN-0000000Db6L-12p3;
	Sun, 04 Aug 2024 16:39:19 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saeGJ-0000000Db4z-3vYq
	for linux-phy@lists.infradead.org;
	Sun, 04 Aug 2024 16:39:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 28211CE028A;
	Sun,  4 Aug 2024 16:39:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F0EBC32786;
	Sun,  4 Aug 2024 16:39:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722789553;
	bh=Hciw+IuSyLRYcNUz6qzbx45v8AyWImZRJsAyy0O3TqA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RFaw/sNwksusBrHEIeqkxpEnPTdge5Y8zuNsjNcwK7ipNuHMva9X8Xe3Oo+CZbokC
	 r6x8KVjeLwzQyvAdObmIOSpGndDiHgoyYiDYOMhgIa9vaoye81JBVRvVTmXaCRsbHN
	 Qzzn0Izp4cMm1LXxacWHG5JVbUaQacPAmtHxglV6QeU6GUMDdKMzlYmjzB5AXU1NNP
	 Va5Y3rJv1VV60/0qZBOUWOnEC5gVGbsKFLUJqxhq1KWZjP04eVnhbycxrtIfpzNenD
	 zj+OiuFmg9+4VrdGeqXfFhFArj76/CtXRj0779ctSaWf4pfs1jzjOqFLc0ySoS9rAr
	 dA/O+IERNT/NA==
Date: Sun, 4 Aug 2024 22:09:09 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: kishon@kernel.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	dmitry.baryshkov@linaro.org
Subject: Re: [PATCH v3] phy: qcom: qmp: Add debug prints for register writes
Message-ID: <Zq-ura3oYbhb8C9a@matsya>
References: <20240731152548.102987-1-manivannan.sadhasivam@linaro.org>
 <172249532035.256913.2685367794999812971.b4-ty@kernel.org>
 <20240801070026.GB3705@thinkpad>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240801070026.GB3705@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240804_093916_234554_E6D5F57A 
X-CRM114-Status: UNSURE (   9.55  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 01-08-24, 12:30, Manivannan Sadhasivam wrote:
> On Thu, Aug 01, 2024 at 12:25:20PM +0530, Vinod Koul wrote:
> > 
> > On Wed, 31 Jul 2024 20:55:48 +0530, Manivannan Sadhasivam wrote:
> > > These register prints are useful to validate the init sequence against the
> > > Qcom internal documentation and also to share with the Qcom hw engineers to
> > > debug issues related to PHY.
> > > 
> > > Sample debug prints:
> > > 
> > > qcom-qmp-pcie-phy 1c0e000.phy: Writing Reg: QSERDES_V5_COM_SYSCLK_EN_SEL Offset: 0x0094 Val: 0xd9
> > > qcom-qmp-pcie-phy 1c0e000.phy: Writing Reg: QSERDES_V5_COM_HSCLK_SEL Offset: 0x0158 Val: 0x11
> > > 
> > > [...]
> > 
> > Applied, thanks!
> > 
> > [1/1] phy: qcom: qmp: Add debug prints for register writes
> >       commit: 4e92d504475ea5841716ad775f412342520a3d26
> > 
> 
> Thanks! Bjorn spotted that it is worth making 'char *name' a const. Can you
> please ammend the commit?

Send a patch please, I dont like to rebase

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
