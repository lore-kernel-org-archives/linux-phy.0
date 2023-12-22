Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5099C41535
	for <linux-phy@archiver.kernel.org>; Fri, 22 Dec 2023 15:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9kiqjf6W/hc8T+/LrT4hwv4iB1r7JQpbwyMV/7EJ3nY=; b=T4987N5sK8o0NZ
	pOEaAlunCoiYJ5Cmr1zPk3/ZpstjVDqgLb+0l5M2LRSa96Y6xwiCmbzkAOURR2j8/P0uqYcjgVlZD
	WY9UqvEvX4HwIzDFWiXYv8SD8it8/Xzz7Osg7m76qKx1705oie6FT4bqd7frxzHPBQXiWyCBmKf/H
	yQZ41TBOx/CnlZSkt3wAJ9zIxsaJPgqEwXph2u/LnmCUen01H7c9sf9crSzrfd85MqTH7fmuwJAPV
	8j1pDKtVUWA3+KkrFxr/jlClckHyaC5r9dainf1eynVm6Ci/lqfyx2E9gO7fb30az4IZiCb7Dj6Rz
	fM+KKP9a5pkXmr52VpQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGhnU-006IAG-2B;
	Fri, 22 Dec 2023 15:50:48 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGhnR-006I9c-1n
	for linux-phy@lists.infradead.org;
	Fri, 22 Dec 2023 15:50:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 2906ACE226F;
	Fri, 22 Dec 2023 15:50:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7749FC433C8;
	Fri, 22 Dec 2023 15:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703260242;
	bh=OwinfvSTjp4R9xDLdY3eLiCv4IR2pBcu0X/zy+8LZVU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Ti9yMeehezTmlpiOg5p4ri+s599iKaEUuyXxfFwIANqbjrqUJplF7VPXBl5ho73sp
	 eZ6lYzum7RRiRu5WbvR9gPYKsM1lPjvP+D3LuKC5HarNY2XYgUXLYFMk9w6o01AqPA
	 Q5CHPkMFZyBVTpPI/oxmRQbEJRj5LJef+Dzu5orHFQmR3THWayFnuE+22NixrmguiF
	 TACs2uTxPEHEvd7ix6a/v97L+qmGTp5xZzYBjFEGhngN+A7Bo1+zL2+QaqyGxxMynX
	 k48z+5nOX4cpwJp/uBJZhl929xLQFZ10Nu6Oqob5JTUZFc9G5aSH6JMro3yokXJcXX
	 bMUrkF2xKNHjw==
From: Vinod Koul <vkoul@kernel.org>
To: Maxime Ripard <mripard@kernel.org>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
 Sinthu Raja <sinthu.raja@ti.com>, Andrew Davis <afd@ti.com>, 
 Siddharth Vadapalli <s-vadapalli@ti.com>, Roger Quadros <rogerq@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Chintan Vankar <c-vankar@ti.com>
Cc: linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20231221102956.754617-1-c-vankar@ti.com>
References: <20231221102956.754617-1-c-vankar@ti.com>
Subject: Re: [RFC PATCH 1/2] phy: ti: gmii-sel: Enable SGMII mode for
 J784S4
Message-Id: <170326023900.743229.14820975046975055823.b4-ty@kernel.org>
Date: Fri, 22 Dec 2023 21:20:39 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_075045_830665_DF481C48 
X-CRM114-Status: UNSURE (   6.12  )
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


On Thu, 21 Dec 2023 15:59:55 +0530, Chintan Vankar wrote:
> TI's J784S4 SoC supports SGMII mode with the CPSW9G instance of the CPSW
> Ethernet Switch. Thus, enable it by adding SGMII mode to the list of the
> corresponding extra_modes member.
> 
> 

Applied, thanks!

[1/2] phy: ti: gmii-sel: Enable SGMII mode for J784S4
      commit: d719915ad9706a16adde231789a1d46fc12fb9c7
[2/2] phy: ti: j721e-wiz: Add SGMII support in WIZ driver for J784S4
      commit: 2029e71482fcd94dcc7df2c66c7fa635479748bf

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
