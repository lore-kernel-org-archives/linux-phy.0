Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2815C46CD2
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jan 2024 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eIKJMeAEqSWDioxbAnA2+xksYn8NtJThY0ULtnAwkec=; b=MVkOe6dX9c0jiZ
	TO+19hHpdNW4Amhy14BdOD8ZD/3XF8N4AaxmMjAO/kAEF1ewyHvLrYhu9ZFmdn3h3U+IQG0r0OXvW
	nWkKdCprJTvtBBFMe5u0WGDC8OUdglh/qAqRSUJ2x7hUN9g2V0UejhmLwO2+0nKm5UF2CDvG8VkPj
	jX5aVRdYxu+gy+Zya+MCXNeHfBgYVonTa88+q8477Myli9jBH8z3ToF7DYSx7ze8ABIv903aRQwvD
	IQh23wGOk4YafehHTzqluoTXMTWULpU3tqAhhJ3pxCF2zIZ4G0jaqF/WhFgTSs/lkhEiGkdFn4LMC
	jbnu5Xgoujtr/zA6zw9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSWJh-001fIa-0w;
	Wed, 24 Jan 2024 06:00:53 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSWJd-001fHv-2w
	for linux-phy@lists.infradead.org;
	Wed, 24 Jan 2024 06:00:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 663FE61F80;
	Wed, 24 Jan 2024 06:00:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C67A6C43394;
	Wed, 24 Jan 2024 06:00:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706076049;
	bh=tP4wCTpxD5LTQUGD66ydQtCU3SDRUyqLZriPi9UhsWc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=tn7m/JYgRQk/T56XF8yGVShjwEH1+w/rvc7AUDTrf7pk+pel3uMqlVkzRx9zzwVLC
	 40dS8JU9lZqmmna3K8AWOzldMg0owYW5rEz5kO/7Q+eCJDnKMI9Ff/koxVWYVtzJgo
	 SDSB+iSpPtCurmHsatXRmetTUHXAAcnvv2X0s+vnZiQrn2jyH5yrHhC5X+PBMu92DX
	 WN+zh7T36q1xGL18Q1Szc/wGLYdLpmUCvdy6tTvBSC0mwPBCpywnikP5SJQOUYbawn
	 c7iyUYB5r1QmKhh8AlVbLO2FFsMS8/0j6huWjjjCC8QXtyv/7QIwusU0cvVdOQ1MoP
	 eu81GHKQ2En4g==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Josua Mayer <josua@solid-run.com>
Cc: rmk@armlinux.org.uk, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240106-fix-a38x-comphy-sd0-gbe0-v1-1-c7fd87272050@solid-run.com>
References: <20240106-fix-a38x-comphy-sd0-gbe0-v1-1-c7fd87272050@solid-run.com>
Subject: Re: [PATCH] phy: armada-38x: add mux value for gbe port 0 on
 serdes 0
Message-Id: <170607604745.409477.5557157299914031088.b4-ty@kernel.org>
Date: Wed, 24 Jan 2024 11:30:47 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_220049_997903_58E43782 
X-CRM114-Status: UNSURE (   4.14  )
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


On Sat, 06 Jan 2024 15:56:33 +0100, Josua Mayer wrote:
> Armada 38x supports 3 functions on serdes #0:
> - pcie port 0
> - sata port 0
> - gbe port 0
> 
> Add missing entry for gbe port 0 on serdes 0 to the gbe_mux array.
> 
> [...]

Applied, thanks!

[1/1] phy: armada-38x: add mux value for gbe port 0 on serdes 0
      commit: f7c6249d76f1167f2fc9843311e54e2528666d11

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
