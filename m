Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65F2BCFA76C
	for <linux-phy@archiver.kernel.org>; Fri, 21 Nov 2025 10:24:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HKIewEJVp59MQaWZGeVdPMNU1svQpXCMG+MdHTHG2LI=; b=yGTaN9l70jGttB
	6uxFEqyz/1t3bLzztu6/0K1hjkAMGAVq0xWCI47sSCXMUL5g8bRgGAs/FH7fNjUlvbx+qb0DzVsAx
	QKrXOzhp/cs9eguXzqXH23VbOY4QvDzD+QiuhmoxBq0YMvqKvatUuRheFli7wISNNuGBB/XpsieeO
	kHD8FPTKOZYoWxCEN7Mh9ckzAdzUCJyBji6TaQ5OsMycbh0449P4oHEwrq84iQNaIw0U2vTbbMbYl
	uoyz7sWYhacQ8cfOR0f3QFh4w5Zl289EIvQQEVZ/TjIeXmCIer/xzISAUo748l+uli7t5f5n9rTJe
	Bgp/KKcQnIXrkzEbHRZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMOJl-00000008EOe-0jy8;
	Fri, 21 Nov 2025 10:24:41 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMOJj-00000008EOQ-1neI;
	Fri, 21 Nov 2025 10:24:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 8AFA060235;
	Fri, 21 Nov 2025 10:24:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83A35C4CEF1;
	Fri, 21 Nov 2025 10:24:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763720678;
	bh=HizJuIeoODBpLxDfWhYPkJL8kWROViz2yXrYNsMsOZQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ENU7nhgQJ0Xamb6jBuOiemY0Bw1AJxP1R15NYtKp5A36cygl4NMApg9nBioHh8leE
	 NReMNTh22emL56uJrYwaQkSsB7IYXQb2NF3XqbXXdTzu8339j3daFqLuuDY9zyyAyy
	 u51V3HzZDCr9Dd+RHM9Rfo3F7US/BeTOoqeLuHO7TL/gkqZDN4MEFAj0TEQTI4VMqQ
	 Q5ZGhvIj2qOoD81XZa4Q2CnqjMk/S+FpgQgunoKNvHLv3oRoxa/rotQbkuwUCDtuMf
	 qySx6QD2GGLwD0annoDrtNAfEIndIk1Y9Y/wPGsW0NNsGYM7cRwVWbQQsvvDbMddoN
	 O/1cO9Bn7T2TA==
Date: Fri, 21 Nov 2025 15:54:34 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Pritam Manohar Sutar <pritam.sutar@samsung.com>
Cc: kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, alim.akhtar@samsung.com,
	andre.draszik@linaro.org, peter.griffin@linaro.org,
	kauschluss@disroot.org, johan@kernel.org,
	ivo.ivanov.ivanov1@gmail.com, m.szyprowski@samsung.com,
	s.nawrocki@samsung.com, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, rosa.pila@samsung.com,
	dev.tailor@samsung.com, faraz.ata@samsung.com,
	muhammed.ali@samsung.com, selvarasu.g@samsung.com
Subject: Re: [PATCH v9 4/6] phy: exynos5-usbdrd: support HS combo phy for
 ExynosAutov920
Message-ID: <aSA94s_g0yVno3sS@vaman>
References: <20251010070912.3758334-1-pritam.sutar@samsung.com>
 <CGME20251010070057epcas5p31b6ee42004594b2b2fb414494180753c@epcas5p3.samsung.com>
 <20251010070912.3758334-5-pritam.sutar@samsung.com>
 <aR9DtJuwpzoq6spx@vaman>
 <00ef01dc5abd$b8aac3b0$2a004b10$@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <00ef01dc5abd$b8aac3b0$2a004b10$@samsung.com>
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

On 21-11-25, 13:36, Pritam Manohar Sutar wrote:
> Hi Vinod,
> 
> > -----Original Message-----
> > From: Vinod Koul <vkoul@kernel.org>
> > Sent: 20 November 2025 10:07 PM
> > To: Pritam Manohar Sutar <pritam.sutar@samsung.com>
> > Cc: kishon@kernel.org; robh@kernel.org; krzk+dt@kernel.org;
> > conor+dt@kernel.org; alim.akhtar@samsung.com; andre.draszik@linaro.org;
> > peter.griffin@linaro.org; kauschluss@disroot.org; johan@kernel.org;
> > ivo.ivanov.ivanov1@gmail.com; m.szyprowski@samsung.com;
> > s.nawrocki@samsung.com; linux-phy@lists.infradead.org;
> > devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-arm-
> > kernel@lists.infradead.org; linux-samsung-soc@vger.kernel.org;
> > rosa.pila@samsung.com; dev.tailor@samsung.com;
> > faraz.ata@samsung.com; muhammed.ali@samsung.com;
> > selvarasu.g@samsung.com
> > Subject: Re: [PATCH v9 4/6] phy: exynos5-usbdrd: support HS combo phy for
> > ExynosAutov920
> > 
> > On 10-10-25, 12:39, Pritam Manohar Sutar wrote:
> > > Support UTMI+ combo phy for this SoC which is somewhat simmilar to
> >                                                         ^^^^^^^^ typo
> > 
> > > what the existing Exynos850 support does. The difference is that some
> > > register offsets and bit fields are defferent from Exynos850.
> >                                            ^^^^^^^^ again
> 
> Thank for the review and sorry for the typo and can you please
> confirm if updated commit message is fine, mentioned as below?
> 
> "
>     phy: exynos5-usbdrd: support HS combo phy for ExynosAutov920
> 
>     Support UTMI+ combo phy for this SoC, which is somewhat similar to
>     what the existing Exynos850 supports. The difference is that some
>     register offsets and bit fields are different from Exynos850.
> 
>     Add required change in phy driver to support combo HS phy for this SoC.
> "

better :-)
-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
