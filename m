Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47696CA5FED
	for <linux-phy@archiver.kernel.org>; Fri,  9 Oct 2026 08:07:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5WuQlQbMsZfCLEliaKiTyMrAUf8TVXHFnDkzpxmlyfI=; b=WGFODT1cCL5Y0a
	Ti0/LXiFJMFpa9o5gttKcMK+j8waxTdZ/M5deBZ/oixhoIULSF+My68R9V9J4SW/Y2GKOCDovXdmY
	Ql8hvmHgNZLdNNcTHUMcdrCbaJXp4XSnowT7P5b/gDxUmuxiD8ZUd8j3cd8hzQ7kuTmtilbsvGacm
	xGzVMHDCRkhZH9DAGsbsUymJH70aoPCElUxlDQIr/pgsCLQCbBDWORRGtJYno+lS9l/Qp3xhcIULg
	r0Fgb6+b9+brfGpt/QGXqfVwNv+kn82mZ5cg4Hj+4nZ/fvogTlStU8RStfs5AlCSkxpSHrQiTc21N
	4F+jrXPKV3O1afteNRXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF5dm-00000005mfT-073h;
	Fri, 09 Oct 2026 08:07:42 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF5dk-00000005mfA-2Znt
	for linux-phy@lists.infradead.org;
	Fri, 09 Oct 2026 08:07:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0A0624333A;
	Fri,  9 Oct 2026 08:07:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E4301F000FF;
	Fri,  9 Oct 2026 08:07:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791533259;
	bh=/kNvVp8JCnz6l3mxn462kmLGkEwADtkdhDAdyThKQWs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=eTwnynhJ2mbNCajjri09cvqUnOACHMgfWrg1HOStcTmcjjcH+9d+WmZAeVwhyRGh4
	 jxG4zMtAfeFNoon4vfW/eCV/6owf7seqRYpqmmNJmZxIbJ1gYKzlWAgx8j4GzLpHlJ
	 JnfRUhMeuv3ZjKecKansZNntPtru1QVRwuktSDeaTtXKDUD9Nv2YA33pePtIW5zwm0
	 zmcWDWmvCNQIT565yG0/pRes5JuejP18Vo8cBGSlEuqPoxwcERNPDorGhSwQVVnrcn
	 +JOIA8jk/1fRO/PmV4rfj4Uv54sPLPYOTFFaGU+rd75zK8ip3UwCxEveTPAKKvvjPq
	 EteXXs6neOmNw==
Date: Fri, 9 Oct 2026 10:07:36 +0200
From: Vinod Koul <vkoul@kernel.org>
To: Jon Hunter <jonathanh@nvidia.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@kernel.org>,
	JC Kuo <jckuo@nvidia.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Wayne Chang <waynec@nvidia.com>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org
Subject: Re: [PATCH v3 3/3] phy: tegra: Add support for Tegra238 XUSB pad
 controller
Message-ID: <asigyGqnlLUGpfo-@parshuram>
References: <20261007-tegra-phy-v3-0-d501de414710@nvidia.com>
 <20261007-tegra-phy-v3-3-d501de414710@nvidia.com>
 <y7p44oeut66usohn3hdfsx2fndlxhup6osok6uo27c5xreyjvv@uyk37kiedv3u>
 <25b96f0f-afc6-493c-9428-ab00a0bd9aff@nvidia.com>
 <576e4762-4ced-4abb-99ef-a895415e30af@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <576e4762-4ced-4abb-99ef-a895415e30af@nvidia.com>
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

On 08-10-26, 13:09, Jon Hunter wrote:
> 
> On 07/10/2026 17:27, Jon Hunter wrote:
> > 
> > On 07/10/2026 16:20, Manivannan Sadhasivam wrote:
> > > On Wed, Oct 07, 2026 at 03:44:43PM +0100, Jon Hunter wrote:

> > > 
> > > This is just a mess. As a followup patch, could you please please switch to
> > > generic ARCH_TEGRA Kconfig option as done in this commit, 6b5e2f70a95c
> > > ("PCI: dwc: tegra194: Broaden architecture dependency")?
> > 
> > Yes that would be a good idea and yes I can do that as a follow-up.
> I did see the latest sashiko warning:
> 
> "Does this cause missing declaration warnings (-Wmissing-declarations or
> -Wmissing-prototypes)".
> 
> I am not seeing any warnings but I can also address that in the
> follow-up.

Thanks, would appreciate if you folks can get this sorted. I have picked
this one though...

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
