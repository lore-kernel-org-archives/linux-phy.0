Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F133EE9D404
	for <linux-phy@archiver.kernel.org>; Wed,  4 Feb 2026 15:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VXvqDBdiBy46Fw5XtZeoFAhxZN1mCNk8lWRQm9I5RtQ=; b=I/QYn3tG9bolPD
	cZ6+w8ebrSPjLF29/IWVeuqHf0hDRwuqeug0QGnbj+5UWOBFy8maoFa2l3ATcetEIgSKYWd1MpkXu
	k63rqYkn+ibjxTDVpPKLF2T/IUjuzrACq1pXpSCyrP6T6djLhRzJmuv7+iOUzdTR3wuoogRD+m8OI
	4VUi/PlaCRToAEJskVygCVKC/Mkdiv3P05FoZQ8tUMgvhnM26DV1S7MfkPQ+gr/bD5rvfeJGKMr5X
	QZyWbcZwX0rajS9fjw+mBBpd/+HEt4cxw9omJt1dlkM802cNSsEzUpHNLwvyabjNBDIjsOR8ocBrH
	5vhgOjlSSoB86dpEN6Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnf3B-00000008gwi-2zuF;
	Wed, 04 Feb 2026 15:44:17 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnf39-00000008gw2-1qpv
	for linux-phy@lists.infradead.org;
	Wed, 04 Feb 2026 15:44:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 2CD30443E9;
	Wed,  4 Feb 2026 15:44:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98AFFC19423;
	Wed,  4 Feb 2026 15:44:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770219855;
	bh=0aSCwqEYN2k47AGh2z64I1kxBXirOHMxedaAlM3W75I=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=tSjcLxGmHObx9qy2PJS139VGmzPDSgemn0MjyVaj5LpAhCKgxF9tKHWVc9RM2Yysk
	 MMrthmwSGl3teeBQKXxZ60tsRaxFgyMXT0DwHGaG75vIMmB7KSdkHEIswjgeu5REPk
	 pTnyW40a0dap/pc+kZ1uVFaE03y6ctP8snBbY+Ic7lcY1QslIniD/RNPdxvAqgDHsI
	 ffDha8sDjl0bE/aozHahs2w7oxuISAWLooRIqrKYfvIrCiWiRidab2fmyPZN49I9Z0
	 lA9EeLvioq09g+2UgrkzZWIDww7bdOf67ritx9FafGkBbYBRlC2bw0cKTYDMMGNiDi
	 yE/dtkIbr1u7A==
From: Vinod Koul <vkoul@kernel.org>
To: JC Kuo <jckuo@nvidia.com>, Thierry Reding <thierry.reding@gmail.com>, 
 Jon Hunter <jonathanh@nvidia.com>
Cc: linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org
In-Reply-To: <20260202153314.1634145-1-jonathanh@nvidia.com>
References: <20260202153314.1634145-1-jonathanh@nvidia.com>
Subject: Re: [PATCH] phy: tegra: xusb: Remove unused powered_on variable
Message-Id: <177021985325.133434.9334168421882193895.b4-ty@kernel.org>
Date: Wed, 04 Feb 2026 21:14:13 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_074415_501545_C9491ABF 
X-CRM114-Status: UNSURE (   4.53  )
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


On Mon, 02 Feb 2026 15:33:14 +0000, Jon Hunter wrote:
> Commit bbf711682cd5 ("phy: tegra: xusb: Add Tegra186 support") added the
> variable 'powered_on' to the structure 'tegra_xusb_usb2_lane' but it has
> never been used. Therefore, remove this unused variable.
> 
> 

Applied, thanks!

[1/1] phy: tegra: xusb: Remove unused powered_on variable
      commit: eeca25fe13a2f690f659a6b43ebbb270b073a6c4

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
