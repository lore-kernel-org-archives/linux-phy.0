Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEBCDC5AC7C
	for <linux-phy@archiver.kernel.org>; Fri,  7 Aug 2026 12:33:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iMPyWPt6SkMcSV52/xbWJ5ekPeWQBDGJOP+28vocFpk=; b=bqG79Oa5UnHu9m
	xIDywS1H+uUUC2S62ilWQMkWWdp2C4dHWe0lG9RAByKqzan+K6n2xCPRoeSFw1JihJQtV0AJs/hfz
	htw0fKCxzXtA+pnuaiAh49+MGmNA+emjEdJlZ1XSk4M0HEV8BWohCfTmUODutRNrdQXetU6F4lhSs
	EwvhGm8eXDQvYzMr/KNjoEBmWKdUgI9Bskf3eLzI60/VnIhkuVxBxQKj/aBiGQxesrv5tHnJdX2UO
	R8Q4HAMlDez2uYVoHM7JYjUO3ho8xe6podVyzvpogzTr/Zlb6p4fKwSV2ITtu6zKvnjaxyE+S5+Rg
	JLE8qGeKSdmGhEpxQKew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsJlk-000000081Jf-1bp7;
	Fri, 07 Aug 2026 12:33:48 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsJli-000000081JW-3gZ9
	for linux-phy@lists.infradead.org;
	Fri, 07 Aug 2026 12:33:46 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 0BCCC600D8;
	Fri,  7 Aug 2026 12:33:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C7B31F00A3A;
	Fri,  7 Aug 2026 12:33:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786106025;
	bh=yu30CmLHdcupAYPZDp6KDE7U2islzsgE+mIUIZBMQXU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=VCr7wOETuVsQjU5IIIDrdNF+V0HkZaBtZEkvgewU6Dq9/CPBLZi8w305tudtEjCXk
	 ruIam/2eATu5cP+eYAiFBEQIuQvPRkdDdjc93JXsf/zQX8X5vSNKBzHvoNT/R+rxof
	 XC0IixLW1eZrasf46bZssYXU37kD3qbyjQzuxsf2YKtYi6uIqPu59BniDE31fNCLh6
	 r0IJvGdJXDarjtNyP4FBhJUNC2Ixv/5qba1LyCsnIeaE7Cn7I/4Hr4wf7BxQ57jLwN
	 EHgIsYvxtU7LJY1HvA61PqDDE6HK2Llrg/2GnOutLnud3tCv384uAzM/hPHxpoSvlD
	 Rxm2/cODdVSDQ==
From: Vinod Koul <vkoul@kernel.org>
To: neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, mani@kernel.org, alim.akhtar@samsung.com, 
 bvanassche@acm.org, andersson@kernel.org, dmitry.baryshkov@oss.qualcomm.com, 
 abel.vesa@oss.qualcomm.com, luca.weiss@fairphone.com, 
 palash.kambar@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
In-Reply-To: <20260803130852.1432714-1-palash.kambar@oss.qualcomm.com>
References: <20260803130852.1432714-1-palash.kambar@oss.qualcomm.com>
Subject: Re: [PATCH v5 0/2] Add Hawi UFS PHY and Controller support
Message-Id: <178610601868.740291.16011800286609976771.b4-ty@kernel.org>
Date: Fri, 07 Aug 2026 18:03:38 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Mon, 03 Aug 2026 18:38:50 +0530, palash.kambar@oss.qualcomm.com wrote:
> This series introduces devicetree binding documentation and PHY
> initialization support required to enable UFS on this platform.
> 
> 1. Devicetree binding documentation for the QMP UFS PHY
>      used on Qualcomm Hawi.
>   2. Initialization sequence tables and configuration required
>      for the QMP UFS PHY on Hawi SoC.
> 
> [...]

Applied, thanks!

[1/2] phy: qcom-qmp-ufs: Add UFS PHY support on Hawi
      commit: 2f7b4bc47b1e22c3e510ff6e25985edbe9cd9f97
[2/2] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add Hawi UFS PHY compatible
      commit: 24d886d9344c7973e202a7f275ff8280b742446c

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
