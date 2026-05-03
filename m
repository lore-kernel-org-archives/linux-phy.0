Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A9D3FF886F
	for <linux-phy@archiver.kernel.org>; Sun,  3 May 2026 16:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rp09bYgq2Jhtk+mv8Ft7yGgueFkEm/uE4AdlewmgQr4=; b=VhwBgJZVM5I/aq
	c/X8LbjtVLTogoOm31rGHQvnlxRoLM3fiPlMijlskkZzilNi58i2FM9SWhXIbtHv/KcgVT6196NPD
	3Xg20bRaKySeA+MB6xpbkFom51PJgq1FQx59Btwm8MjIkOAEIEyTaOblhG08gEaseAkTjJYYGFchw
	VqWt2HDJqhXpleEGTLcc0bRk1OnEO8MwQvm8dj/5NLDZNv3Fb/YUUPMeXkgGky9bDTl06zaM/vP1O
	nTzzzcsGWZWKH+1pHlOiOcrDnCB47liGGJFNVblPsaQYwmjHC0xUDkVth6HRTIhR4pbwmEb5xSSbE
	LUzodKSUXP0hmHQ+/QXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJZsP-0000000BJUb-2HQK;
	Sun, 03 May 2026 16:41:05 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJZsN-0000000BJTw-0AR7
	for linux-phy@lists.infradead.org;
	Sun, 03 May 2026 16:41:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id CFD99439B7;
	Sun,  3 May 2026 16:41:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35F29C2BCB4;
	Sun,  3 May 2026 16:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777826461;
	bh=on/dqkrXphunAC9HRLbMdST/NNHkqSYFCpshrtAM3i0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UvJ34aRwtkDhmd0YTNedezO9BrBfDRTsxjAJref8m/dTwWQzZyCvoa2qm4+6jcOQi
	 OsM9bnWUf1cil9A5GqI/8NPrHCcXrq0NSTOcqPSer/6tl3bilwksf/EOBzq9GChy7e
	 UMR7I4CSV3xANoVc8T154anBTOhQCZVpXrp58bGJw3sPpEq5lCjD3c/xpWq6mDmhV+
	 emNy7w8FlGw4+Yjpc4tpbTObFqxwjSY7QJNeSKe/LZX5Mo/6YD6Xz/Vbp3Lon6AF+2
	 L1/RADhBeXo4kPexOS2qAjqqye05wl7cBXdulwSHZO9C91ZmZgboioRd5jojGpYEdn
	 MUUkwdSn9Dpug==
Date: Sun, 3 May 2026 22:10:57 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Jon Hunter <jonathanh@nvidia.com>
Cc: Wei-Cheng Chen <weichengc@nvidia.com>, jckuo@nvidia.com,
	neil.armstrong@linaro.org, thierry.reding@gmail.com,
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org, waynec@nvidia.com, wtsai@nvidia.com
Subject: Re: [PATCH] phy: tegra: xusb: Fix per-pad high-speed termination
 calibration
Message-ID: <afd6mX9MJ9Srl0Ie@vaman>
References: <20260304102649.3670783-1-weichengc@nvidia.com>
 <82f3ca77-7b8f-41b8-85fb-c502bc343778@nvidia.com>
 <fde997f6-c0a8-430b-8e45-38a490e683ad@nvidia.com>
 <77285dd6-e240-4944-a034-a4bc3acf4052@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <77285dd6-e240-4944-a034-a4bc3acf4052@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260503_094103_101194_99FF2D97 
X-CRM114-Status: GOOD (  11.71  )
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

On 29-04-26, 10:10, Jon Hunter wrote:

> > > > diff --git a/drivers/phy/tegra/xusb.h b/drivers/phy/tegra/xusb.h
> > > > index d2b5f956513..810b410672f 100644
> > > > --- a/drivers/phy/tegra/xusb.h
> > > > +++ b/drivers/phy/tegra/xusb.h
> > > > @@ -436,6 +436,7 @@ struct tegra_xusb_padctl_soc {
> > > > =A0=A0=A0=A0=A0 bool trk_hw_mode;
> > > > =A0=A0=A0=A0=A0 bool trk_update_on_idle;
> > > > =A0=A0=A0=A0=A0 bool supports_lp_cfg_en;
> > > > +=A0=A0=A0 bool has_per_pad_term;
> > > > =A0 };
> > > > =A0 struct tegra_xusb_padctl {
> > > =

> > > Reviewed-by: Jon Hunter <jonathanh@nvidia.com>
> > > Tested-by: Jon Hunter <jonathanh@nvidia.com>
> > =

> > I guess this was missed for Linux v7.1. If you don't have any concerns
> > can you pick this up for v7.2 once v7.1-rc1 is out?
> =

> OK to pick this up now? It would be great to get this into -next.

Sure I can do that, can Wei-Cheng please rebase this on rc1 and send

-- =

~Vinod

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
