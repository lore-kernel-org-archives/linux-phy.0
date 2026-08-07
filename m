Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEF62C5AC7C
	for <linux-phy@archiver.kernel.org>; Fri,  7 Aug 2026 12:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T8sNiO5SHDepeuiKWk5S8HYq7o5aKYkVk1e0M/gEwUI=; b=3+dN50FOS9FDQ6
	BKrLOlpK7NVjmxhkke9qIxGi0P4fGHIP1HqWzc3GiuEPdZ/PwWZHlsMHa7OVhI/wTc5Zl+Q+NbSMZ
	kNOJeQpF9nx4pei0aZYCwwuxVJxjWx9Yzenvv3j4kF4NzgmXJSUkuBvJn05sVLwlC2t4Z9psrceKI
	ojzEClDY/eSdF8q4t1xY8kN1ZdDoouhmW9EOYUo2gIsJdaN+QmeKAJGMpyi/Ba4K+Zlib1secMFUF
	Ugzo2BrBgZ4kerjvc8KKv7uhZ+GO527/FsqpsdTBtiy1D+WW0ASxIgLXk1cQzUz5aPP/D0l2ecwkk
	OnO3GmOzPFH1T2SkmuMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsJlq-000000081KY-1ujS;
	Fri, 07 Aug 2026 12:33:54 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsJlo-000000081KO-4BtM
	for linux-phy@lists.infradead.org;
	Fri, 07 Aug 2026 12:33:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 733C76013A;
	Fri,  7 Aug 2026 12:33:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 680F51F00A3D;
	Fri,  7 Aug 2026 12:33:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786106032;
	bh=1PB29BHNyw+fYmasKpwWphQJfW+LhnS0f4nBSThCOXw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=SWDU6UJsmBuq++L7G3Le0B/TeTFxHxxDsHX5OxTXn0l1lLUHaopfajiFGP6YGD8Xh
	 l+5zFyr8Umjqjv+eH8tfM7koZ90yYDjXw69RkDOq9aO0TMnM9/6Byq5dLBTXkJafy8
	 +pLRlSsHNHJqFAKX1z6fNak20FfTsqkqWiAqKBAVLqmF61JrldZLec7/z2L3oYmfKx
	 TaVl+tQ/ZOzfMTdqhXc39zNVyS+XdJ0000Ce7Xfr8jFEAblVgYnM5leeIveXFeCYPc
	 QnPRvY+DwmMKcmGL7UG0lEx1sqHCBkLvWTk2Yb6A+vI2wgFd7oeem1+YZqmklHKiEH
	 woQEXjW19xwMQ==
From: Vinod Koul <vkoul@kernel.org>
To: neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, mani@kernel.org, alim.akhtar@samsung.com, 
 bvanassche@acm.org, andersson@kernel.org, dmitry.baryshkov@oss.qualcomm.com, 
 abel.vesa@oss.qualcomm.com, luca.weiss@fairphone.com, 
 palash.kambar@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
In-Reply-To: <20260806161301.1010876-1-palash.kambar@oss.qualcomm.com>
References: <20260806161301.1010876-1-palash.kambar@oss.qualcomm.com>
Subject: Re: [PATCH v6 0/2] Add Hawi UFS PHY and Controller support
Message-Id: <178610602505.740291.14877163143067387433.b4-ty@kernel.org>
Date: Fri, 07 Aug 2026 18:03:45 +0530
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


On Thu, 06 Aug 2026 21:42:59 +0530, palash.kambar@oss.qualcomm.com wrote:
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

[1/2] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add Hawi UFS PHY compatible
      commit: 24d886d9344c7973e202a7f275ff8280b742446c
[2/2] phy: qcom-qmp-ufs: Add UFS PHY support on Hawi
      commit: 2f7b4bc47b1e22c3e510ff6e25985edbe9cd9f97

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
