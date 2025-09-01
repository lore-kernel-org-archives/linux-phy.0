Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 107C0CA1002
	for <linux-phy@archiver.kernel.org>; Mon,  1 Sep 2025 23:13:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/dW1SA06QBRT+BMD+33WC6jUhXEFE3oG3GdA064tdn0=; b=MKYM6R4yjyCrRR
	mB8rIW8xcLR4WKzWwWSdZAU6DL0bEqolCTHJ3IncKGq5Z6N/D6UuPUlLFauT6JL2tJ0Pzt/52jNiE
	2JCvBQEPgpOClRP6D5KuT740Df/GHcvrNGIk0+7c1bWhXshB6iKVxiOr5a0OiFAhEa2dzyIeHVPOi
	QdVXs8jINHQtJMrDgsyvkcxoV6KTk+XLD3/AIcbyO4W7dIvVz3Cef6pUWio40hr0MbRO1ck+JKGb/
	Q5kAc7LYiga4JV2TsefwbQK9v6fXMSnvhnvPCQjX1QjbbyQl8JqcASScLyshoVqKngGaJmaGbZyrs
	ws7cX4BGrSUdQe7L1OEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utDiU-0000000EGJM-1m7T;
	Mon, 01 Sep 2025 23:13:38 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut814-0000000DPUQ-15ok;
	Mon, 01 Sep 2025 17:08:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id AE058601E2;
	Mon,  1 Sep 2025 17:08:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72FEEC4CEFC;
	Mon,  1 Sep 2025 17:08:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756746505;
	bh=PDPOiTEuTdicTffGYLtYpS4v2Fg8U7SX/u9tZo9cYOw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=FuUQboUPwa7jfW0jY8/itorT30MmAKHf7aVOgoxVfFiOHAnKMV7l+4iTrNXNtzDWI
	 0LANj8JpANoNPSwDABsViyTRwQIHO2PqkFHdrZqEWTJe58xFct3qksB4U7AD7bHtrU
	 F3Iv4DNS7Fse11nOjZfq51PXnXSvzR9vhjMgU9/bDipD/LKDIiddAjqvYGMACvkXLf
	 V1IlzSpx4kUxB/wgxEM6O9E2eWtbcAEAiHFfC7HfL+uKc8w+Wgiveji3aFXtaSWGPC
	 ooxNUo3Eep18sYX2rhoOONXgDjJYLy6q++AeAioMiH3adtnEjx/yKuZbF+FTwh7J3E
	 LOm3Wxy+YdCZw==
From: Vinod Koul <vkoul@kernel.org>
To: Marc Kleine-Budde <mkl@pengutronix.de>, 
 Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Aswath Govindraju <a-govindraju@ti.com>, 
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, 
 Maud Spierings <maudspierings@gocontroll.com>
Cc: linux-can@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
In-Reply-To: <20250822-can_phy3-v1-0-73b3ba1690ee@gocontroll.com>
References: <20250822-can_phy3-v1-0-73b3ba1690ee@gocontroll.com>
Subject: Re: (subset) [PATCH 0/2] dt-bindings: phy: ti,tcan104x-can:
 Document TI TCAN1051
Message-Id: <175674649899.186496.9689107932921189012.b4-ty@kernel.org>
Date: Mon, 01 Sep 2025 22:38:18 +0530
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


On Fri, 22 Aug 2025 11:20:04 +0200, Maud Spierings wrote:
> The Moduline Display mainboard contains 2 TI TCAN1051 CAN transceivers,
> properly document these and add them to the devicetree.
> 
> Thank Peng Fan for inspiring this patch series.
> 
> 

Applied, thanks!

[1/2] dt-bindings: phy: ti,tcan104x-can: Document TI TCAN1051
      commit: 3d13e378d465e8ae0be1697005342055b07eaf11

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
