Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B03AC982FA
	for <linux-phy@archiver.kernel.org>; Wed, 23 Sep 2026 12:35:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DpJNQ8hTx44ohIC5NvbHfq6mDlHZm5fBAR39+jEt6Wk=; b=S0oRnEBe29xmWa
	cm/oR44GDQkABAY/O+1h8G/C/SOuK/8D1H3zwrWp4w21zZPfFEVxCRz5H8CD/m+5DIC1ezmp2xphC
	XWLWUhoJfzDgXi7/RwOVT9IbVho/4RJX5hqsAg7CgeJzxxNQBLZHO9AyzK9IaTd8hBlxAodTx8+0/
	ZoQVOOphtvb7TJ1tDCqbesxZKaW5GsPdhjmMZ3YwOSuNyd9Pedeq+AKoKICAaVOl7ZixX0p0Tbbuz
	0wuS1foxfQqr2TsdVxmYrdUMLMYfTtUV4Zq0E8dYiY5daTtCJn1Jp7EnAckYdDVvpmb8tbHLex3/Y
	6eibSP/kQCMBck9DVk8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9MCU-00000008GOF-0oE6;
	Wed, 23 Sep 2026 12:35:50 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9MCT-00000008GO5-2dpr
	for linux-phy@lists.infradead.org;
	Wed, 23 Sep 2026 12:35:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0930D401D3;
	Wed, 23 Sep 2026 12:35:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C84E1F0089B;
	Wed, 23 Sep 2026 12:35:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790166948;
	bh=9KsKOIPLtU1rbiWY3Id1SMc79Dvze0biHYy+SZuaDWU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=kDrwDmt42N6ryKTzfYCE+RIzlMSJVWawUWxnAbIYMw8p08ZaKIKYzRlfOXCB5pTeP
	 JCmGq2IXTK31tht/yVrNoZiPNrQfMMb0E/ZZh05Q8ITxRwgRAaadbOcWEYMHyVgroz
	 BGSoUzB9s8irG4c2A9zUh+ts9C+kzS6A7J03/8gvWFpntlMprJWh4WtmXbfPlQJIKi
	 SZ5qVd8qvZ8W3MstLQVlc35fvLh6H67ianvdz5/IfwyA48t4zeW+jxB4xXcjAmcUjk
	 /jD84uGRa/rdEOdl8uyjk0V4cT+gbB2lmzVJv+PSSihrA9iD7PKGtLMfQ2wN4xPha5
	 wY9qLwhEtRx+A==
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>, 
 Todor Tomov <todor.too@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Bryan O'Donoghue <bod@kernel.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, stable@vger.kernel.org, 
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, 
 Oleg Keri <okerixx@gmail.com>
In-Reply-To: <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-0-dc244e124e71@linaro.org>
References: <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-0-dc244e124e71@linaro.org>
Subject: Re: (subset) [PATCH v20 0/6] Add phy_get_by_of_node and devm
 helper
Message-Id: <179016693988.140073.11333980752731618724.b4-ty@kernel.org>
Date: Wed, 23 Sep 2026 18:05:39 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.3
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


On Fri, 18 Sep 2026 14:56:35 +0100, Bryan O'Donoghue wrote:
> This series has evolved from a CAMSS standalone series to a series that is
> mostly on the PHY side now, so I've split the series up to reflect that
> fact.
> 
> Starting off by fixing a long-standing use-after-free race-condition in the
> phy core flagged by Sashiko in v13. While my series doesn't introduce the
> bug it seems appropriate to address it anyway once flagged.
> 
> [...]

Applied, thanks!

[1/6] phy: core: Fix race-condition between _of_phy_get() and try_module_get()
      commit: 090055ee629523092688da42428558ba56d4272f
[2/6] phy: core: Add phy_get_by_of_node()
      commit: 89c5ae2b19619e41f9098011667fc1f59c9f322c
[3/6] phy: core: Add devm_phy_get_by_of_node()
      commit: 2ee4e00dc1a38bf7bbe128825a63c6b523480c33
[4/6] phy: core: Add missing kerneldoc colon in two locations
      commit: fcce260fa4ba624dced020789d0a9a0cc1670062

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
