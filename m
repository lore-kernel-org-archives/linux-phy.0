Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65C24C27C79
	for <linux-phy@archiver.kernel.org>; Wed, 12 Jun 2024 17:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HtWGDZbrU5v3NAp9bxjFcvWVuCiP7U4rKH0Y9QFLi5I=; b=TUP7uo3053h83M
	jUkcaX8RB1TBGPSCASIrIHpxHI3ARi9qKpTSix4VdHDpTQt7YuEkpTztlmrrUFjyArer3IOT1EC4k
	q9S6ILR0EltOxxbbIjCdLfsKb1sY7aplXKgyquu4tYFpXqlE9TL01QJi6GwB9anBJ/JaRf5Mhz3mv
	e+LRZTakNvfJiehKX072CfkHV4m/36QuQ2ENV1QdHxnrXfOSr+f+m5mX3RG1hvXxiE7tzQLHliVrg
	I787jLV3TtSksexsHVEek1qJdICTOyLT5yguMZNEC5Ydn/Yo3TGi19j7kNSx2ybjavZ/zDxGAcf0D
	qiVcucyayqNl4V2CQLag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHS8j-0000000Dclo-0MLl;
	Wed, 12 Jun 2024 17:52:05 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHS8e-0000000DcjZ-3l8z
	for linux-phy@lists.infradead.org;
	Wed, 12 Jun 2024 17:52:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id F266B6068A;
	Wed, 12 Jun 2024 17:51:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16FCEC4AF1C;
	Wed, 12 Jun 2024 17:51:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718214719;
	bh=UknXbz5pReCHncA13mSEjNiNpJM/nxq0DuJtMoOa5Yc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=glHI03xzOFwP9V+gJYyhvizsbivcbb6US3suqe2BlD0R895PQGW/vUFy4Fngr3DFy
	 1nV+n96QfuVg71IT4xrcsrR1XCwcoxjBOVrt7ifqzAa18Wn+EtnOBgwo0sqx+gyBv8
	 AFavM61VZqI6/atCAx0NlRewiU8QgnYXIQDjNniemvnQSA9mJgYQNUfmG+iqDODiHY
	 5VZVTBRgVcNurTIvcmvK/yDHDBMaWg1fiSBijtrI5IjogO3vSlOPyK8L0xXTSd3tRi
	 iEg5PTHYOOWJcvG37A6fDa1Fcs5uF6YVHmKK3EiCaW7stbmNxIGPxmWT1j7TCDV3XA
	 zdyh3fbHyVt/A==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Jan Kiszka <jan.kiszka@siemens.com>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 Sekhar Nori <nsekhar@ti.com>
In-Reply-To: <60089a71-dad2-4a87-a304-a738e3334d4a@siemens.com>
References: <60089a71-dad2-4a87-a304-a738e3334d4a@siemens.com>
Subject: Re: [PATCH] phy: ti: am654-serdes: Remove duplicate define
Message-Id: <171821471768.586907.8828903354154456302.b4-ty@kernel.org>
Date: Wed, 12 Jun 2024 23:21:57 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_105201_029229_1AB94BD6 
X-CRM114-Status: UNSURE (   3.17  )
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


On Fri, 07 Jun 2024 21:33:00 +0200, Jan Kiszka wrote:
> 


Applied, thanks!

[1/1] phy: ti: am654-serdes: Remove duplicate define
      commit: bbc63e701c73bfab9f437f9661f0cbc3860097d5

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
