Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CB25CD98C7
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 15:35:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8/uboARQKk/ZcCsT5eNXvtPR4Bt2Aqo+1J2Il3CEZ8I=; b=L0KBqjIBN59+9p
	zTFMBxhoggkanUD7JiZPfwyZKXkWR4CZeFoWiBjlJpoeEutMrg6z0FC/34ciX5MTt2dOcKajPV9cS
	H+Z8lFVQdURr0R7aWh2WdGmFunzYsajyeNsrC7wk5zYkDboJQZlWQV7PhaLgAUIZW/m6IreYPRrst
	8Sl5OZDEMrNDODNNhOQRXZ6zWCkNJ4TRSIzR522claIq2uXh7WUEjuKxfLmzpWrYPSUjuVzzifPwD
	AyNkbt2QBY3t17KlhrAM12Nhw0knSkqDqIT+CE3W2m1/zyTG68grRxDCdpLEfsxKVwlm54mYccwbo
	qyfOILlS+Vhhes2yIwEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXhRK-00000009gmJ-1bPw;
	Thu, 11 Jun 2026 15:35:31 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXhRJ-00000009gm8-1osI
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 15:35:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id EB9DD43B10;
	Thu, 11 Jun 2026 15:35:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9402A1F00893;
	Thu, 11 Jun 2026 15:35:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781192128;
	bh=xnJQlXZOWC+jOjrcQkFBjbeYmjtNcm9aHaBpBxcxKqg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=Pq35oQ/NiG5weBjn9iQBl6YVhoixe+hd107D/ItX3lNTEu5ROi3tDqzjFw99ftlaO
	 RxiLbQE1R99E/K0EfmPCHw0ZUgRRPGInQJzsKOLasSqEHH5wQtHZoUPyXR8twWBJlZ
	 Jn5JyKxMvFLJ6JCLvh4ebjf+mgmlfMFMM/VHbCpNi8/ap/O0bgWBTgjn/ySCfvKd9M
	 d4PDTBszdpfLTOgj+nerbmhBLg6ZejRizNrKCgdxAO/4Nz1t7x+CIMdnFRTikqBjIX
	 ChRCWYICowIRcUKqeVO+2msjyVJ88dkcxxmb8cQp84A1EtI9lEaBEvN+9B2uD1wGIO
	 kFiyxF9AnymqA==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 YijieYang <yijie.yang@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260610-topic-purwa_phy_shutup_warning-v2-1-951c1fbfe9b2@oss.qualcomm.com>
References: <20260610-topic-purwa_phy_shutup_warning-v2-1-951c1fbfe9b2@oss.qualcomm.com>
Subject: Re: [PATCH v2] dt-bindings: phy: sc8280xp-qmp-pcie: Disallow
 bifurcation register on Purwa
Message-Id: <178119212522.568088.5851258082110691034.b4-ty@kernel.org>
Date: Thu, 11 Jun 2026 21:05:25 +0530
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


On Wed, 10 Jun 2026 11:45:12 +0200, Konrad Dybcio wrote:
> Neither of the two Gen4x4 PHYs found on Purwa supports bifurcation.
> The PHY is however physically laid out as if it were to, since there
> are two separate ports (A/B).
> 
> Split out a new if-then block to un-require the bifurcation register
> handle to squash this warning:
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: phy: sc8280xp-qmp-pcie: Disallow bifurcation register on Purwa
      commit: b3ee497970c63cea37976aeaa84bac39611fe0eb

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
