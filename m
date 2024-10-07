Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE15BCFB448
	for <linux-phy@archiver.kernel.org>; Mon,  7 Oct 2024 15:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HOP2pRrz8SsNdHwIeearhIMcPfbizXbiUUarRJgW5vg=; b=IiwidMqA1IJ732
	Q3ECfNoIlQkPfaVDIa20bP5EWNBu7HpwZDOW3iFG5YAgDSBIYFMjZlNSE7gqtpK+qRBrOGe+xjOAH
	scU5RGzylEtwpve38jrP/DUZDRqZCvbX9gLDB7JdpF+atuI3gMl4/3utDBHA3fe1jLXl6eXw21XfJ
	0UMNibaKXqrt2ls0xL+kRyGJyrO7F5M0CDmR2Jc0cls0kPqQyg9QcsUZLo+a9p7BQCIwvc0MYV8eY
	v/92I9OdD7WzjbAvNvZcZdJwShMHgIU8YnD/oJLHz7FpEXg/2d90eyCSe925wVqxvjhWMnLcG5RSR
	jT7hcIwSnxLBjkLP7oVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxq1M-000000032G6-1ftR;
	Mon, 07 Oct 2024 15:51:40 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxpyr-000000031hD-0tv1;
	Mon, 07 Oct 2024 15:49:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7E2D85C5A64;
	Mon,  7 Oct 2024 15:49:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7203C4CED0;
	Mon,  7 Oct 2024 15:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728316144;
	bh=fdQgCvkUVNcWgqqhdAJ2FjLhihD1asnc+B1Iuh/DpfY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=eLCBPb2Bfjd7B77CLVW4dY4aML/1Dwpq2AAxtMwfOaXWvlhfURh/YmDhXXP7C308J
	 SOpjm2zRTcJiWo3ffieH1BQK6H2j1t6Ze8qJodEhZ03tgtRHnwVkbaIBZELYOzPkF6
	 HP9fVq5LBsDneoPT0gQ5s0f0YNbdE4ou1wfZnyoWiTAVJ9j9aVVN8jnjp0R+Dk6r0H
	 OJmxhB+zvA6u6mOv+fgGWMZUZbsrsXWAzfU3rlWK+q8sYHvk7uUWEteho1wOoYTrZ8
	 E5u2p1XKXHLLnlgccfoFw66LLUDJT6vf291tjTyEaEaK6xXV7tPyLfrFSrlk8QJQpi
	 Jv7NVoFbIu3hw==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, mcoquelin.stm32@gmail.com, 
 alexandre.torgue@foss.st.com, p.zabel@pengutronix.de, 
 Christian Bruel <christian.bruel@foss.st.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 fabrice.gasnier@foss.st.com
In-Reply-To: <20240930170847.948779-1-christian.bruel@foss.st.com>
References: <20240930170847.948779-1-christian.bruel@foss.st.com>
Subject: Re: (subset) [PATCH v9 0/5] Add STM32MP25 USB3/PCIE COMBOPHY
 driver
Message-Id: <172831614044.134526.10151258840417457919.b4-ty@kernel.org>
Date: Mon, 07 Oct 2024 21:19:00 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_084905_328452_FA7768C5 
X-CRM114-Status: UNSURE (   5.42  )
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


On Mon, 30 Sep 2024 19:08:42 +0200, Christian Bruel wrote:
> Changes in v9:
>    - Fix bot clang warnings: uninitialized variables and
>      include bitfield.h for FIELD_GET
> 
> Changes in v7/v8:
>    - MAINTAINERS: Reorder STM32MP25 DRIVER entry
> 
> [...]

Applied, thanks!

[1/5] dt-bindings: phy: Add STM32MP25 COMBOPHY bindings
      commit: 8c7e955fac07ee11c76ddf2330587fe083fab1a2
[2/5] phy: stm32: Add support for STM32MP25 COMBOPHY.
      commit: 47e1bb6b4ba0987139ab790efa03c542ebc1b10d
[3/5] MAINTAINERS: add entry for ST STM32MP25 COMBOPHY driver
      commit: b6a713b92ebb9e7ee1495f009fd02a71e485184f

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
