Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AAAEC87FC5
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 18:34:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PeRq/hM62T+YeVAD8OJ+1D4DaGBI08t31Txm39M63ec=; b=1dGv52uQXaIX0v
	boGKj425exo+bzuiy0emQZUHAvZ5UuKFjVJth+2xfVv3iDcLY9uaU6X7sG+mjMHcqxuUMtOyc+uLl
	I4BaNH4CmdbFDMvZNVh3RglhirCRj03yGcGWbCTXuegkMXL2aaz494jN9266GhIkCyQlhb+j2V6HO
	s2xQc92h5RGHe35Bi5Kd1w5QU2L0/3++qFdLtSwwyad8kTtPSkfvYLnWa7ACTxI8bBI77H7t/k/qo
	O27Qcl6WDbJvI2VdApVgHdJH6pBrOhJvWm6kIkNOagmdxr+wV8inGPq6r+fuW0hND3dNh0iwxzk6E
	v0SRk+M4j0GAGsLOhlEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uf0lf-00000008CrX-3brI;
	Thu, 24 Jul 2025 18:34:11 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueyBZ-00000007vCV-2r1G
	for linux-phy@lists.infradead.org;
	Thu, 24 Jul 2025 15:48:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 374075C6873;
	Thu, 24 Jul 2025 15:48:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ABC13C4CEF7;
	Thu, 24 Jul 2025 15:48:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753372124;
	bh=Bq2r2hveffpY5PXSTNXKCnxw/gMsdsoG6aIVMHQlAIg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=atcrX1Ger+zMzUxQK50yM1K74N5XcrTpJG2sCS5I6msMeyQfCKeL3T9bKFZ9NlhPp
	 kaSbUts6BbI4Bsfvlcpu4UVcD1E/Qs6FCxWfgd83TkaTSr9S0BFQylVaoAlqvQZCAE
	 pmdNM+zQChjGYOnyblFt+G5LsQcgWeg84aHlD+XnUQnmTFOaj00ijusqvEO8QQ4RJS
	 b/fAoiqOlapRLaUjwRGnuG/ysbIYK8YLnQdgVeX1wRHkLwtOE6JqUMy8i++/xssy0j
	 qk+lLjEFcyaI2EvFaoXDu3yRjp5dFycy+BHY+zAFDzgoaDMVaqyXGk1OnsVviTMkZM
	 FAX2p4qXbT4yQ==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1ueyBU-000000004Ay-1gdX;
	Thu, 24 Jul 2025 17:48:40 +0200
From: Johan Hovold <johan@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Justin Chen <justin.chen@broadcom.com>,
	Al Cooper <alcooperx@gmail.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan@kernel.org>
Subject: [PATCH 02/11] phy: broadcom: brcm-usb: drop unused module alias
Date: Thu, 24 Jul 2025 17:48:14 +0200
Message-ID: <20250724154823.15998-3-johan@kernel.org>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250724154823.15998-1-johan@kernel.org>
References: <20250724154823.15998-1-johan@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_084845_762699_BAE5975F 
X-CRM114-Status: UNSURE (   9.45  )
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

Since commit 9d5f51dcdb64 ("phy: usb: Add support for new Synopsys USB
controller on the 7211b0") the driver only supports OF probe so drop the
unused platform module alias.

Signed-off-by: Johan Hovold <johan@kernel.org>
---
 drivers/phy/broadcom/phy-brcm-usb.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/broadcom/phy-brcm-usb.c b/drivers/phy/broadcom/phy-brcm-usb.c
index 0666864c2f77..59d756a10d6c 100644
--- a/drivers/phy/broadcom/phy-brcm-usb.c
+++ b/drivers/phy/broadcom/phy-brcm-usb.c
@@ -691,7 +691,6 @@ static struct platform_driver brcm_usb_driver = {
 
 module_platform_driver(brcm_usb_driver);
 
-MODULE_ALIAS("platform:brcmstb-usb-phy");
 MODULE_AUTHOR("Al Cooper <acooper@broadcom.com>");
 MODULE_DESCRIPTION("BRCM USB PHY driver");
 MODULE_LICENSE("GPL v2");
-- 
2.49.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
