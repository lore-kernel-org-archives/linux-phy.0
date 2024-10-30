Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3BC3D7495E
	for <linux-phy@archiver.kernel.org>; Wed, 30 Oct 2024 07:42:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZIab0AlAVwyGjafCh9jS4xIx+zU77NfgXdriiQQa07U=; b=xCuj/s3wGQN4EI
	c9tCktcpGAZX5NWJ66pAZxEm4QQzHd9TgHBYPtKzVRus67C30sS+qv0Fu7gXUCkaSpH58gnZ2P21X
	GqigUkHsDidNDZnCyAVTc48DaU/whUQ7wf81XMe7SgfmCq5fApiEFI8I601/2K1+4Sga0tRnySbUK
	zxrAQZdR22I/8v6tv9k/uVLauSL1I/oWvTvNqs8jLf4aV9gz9vuUyPQuhP39ptyCrIzwRQBshdcmR
	C+2Pm+8NSmSpET1GtnROBdljUwiExoy3rytKIGfg3sSHLIOFhFuombH62qFD5x+18AnaAHsnif9l4
	riObOQmQ1tu46kOcPqtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t63LG-0000000HAwG-0utJ;
	Wed, 30 Oct 2024 07:42:10 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t63Kn-0000000HAqB-3bCO
	for linux-phy@lists.infradead.org;
	Wed, 30 Oct 2024 07:41:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3DD345C54BC;
	Wed, 30 Oct 2024 07:40:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6DB0C4CEE4;
	Wed, 30 Oct 2024 07:41:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730274100;
	bh=FsOVZqSRJU7cZMV54PKXbTGF5CocTT15s1Oyg7KJL6s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BFQHKEWnVjk42ISHNCC4SuQvjKoQJ52XE4I39Xi6QUgp2APgmzTAwQbZ895OHemqq
	 OalGvu4zbNRq54ND0010sOsTloLBSXpH6cMqm5LqjylXXGZuInbgYhWLNjaCzoIW2F
	 XL7Aa4Bym7PDTYzu3MiOd0/Y/hgze35cIKyWDp+Wv7Eu2RCUcRqX5aYVGTt9cZ2oLB
	 Qkipq4Bm/I/QCSOdbwCo72bIlhOGjl52YoJqGCam3+jf3olBtrKMWSHPvGFpwMkl7d
	 S1f35A2qAuFf+NeCno1I0ZhH3eET9rJ8NuHXn90Usqo+Me7OjPO0ZyINoouvtRsPe7
	 NQMr0nAMZGW4w==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1t63L6-000000007fm-1iFO;
	Wed, 30 Oct 2024 08:42:00 +0100
Date: Wed, 30 Oct 2024 08:42:00 +0100
From: Johan Hovold <johan@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Qiang Yu <quic_qianyu@quicinc.com>, vkoul@kernel.org, kishon@kernel.org,
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
	sboyd@kernel.org, abel.vesa@linaro.org, quic_msarkar@quicinc.com,
	quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org,
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
	johan+linaro@kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH v7 6/7] PCI: qcom: Disable ASPM L0s and remove BDF2SID
 mapping config for X1E80100 SoC
Message-ID: <ZyHjSCWGYLDu27ys@hovoldconsulting.com>
References: <20241017030412.265000-1-quic_qianyu@quicinc.com>
 <20241017030412.265000-7-quic_qianyu@quicinc.com>
 <ZxJrUQDGMDw3wI3Q@hovoldconsulting.com>
 <91395c5e-22a0-4117-a4b5-4985284289ab@quicinc.com>
 <250bce05-a095-4eb3-a445-70bbf4366526@quicinc.com>
 <ZyHc-TkRtKxLU5-p@hovoldconsulting.com>
 <20241030071851.sdm3fu6ecaddoiit@thinkpad>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241030071851.sdm3fu6ecaddoiit@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241030_004141_968127_40E8A59E 
X-CRM114-Status: GOOD (  10.69  )
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

On Wed, Oct 30, 2024 at 12:48:51PM +0530, Manivannan Sadhasivam wrote:
> On Wed, Oct 30, 2024 at 08:15:05AM +0100, Johan Hovold wrote:

> > Also, are there any Qualcomm platforms that actually support L0s?
> > Perhaps we should just disable it everywhere?
> 
> Most of the mobile chipsets from Qcom support L0s. It is not supported only on
> the compute ones. So we cannot disable it everywhere.
> 
> Again, it is not the hw issue but the PHY init sequence not tuned support L0s.

Right, this should be mentioned in the commit message.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
