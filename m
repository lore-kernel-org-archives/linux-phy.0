Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90836C87FD4
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 18:34:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=97SkjQ6MEZ599yuVFVgJujPAarynVxxzNgu5VlAAEgA=; b=QdHIWTI7wYSF+R
	zMCKcQH3S+IR6kEZL8n+3nAgAem6Aqf492saoPsBNZ9VyIeXH2aa4TNhyWVM8DpLQWXOY3MS0vOAB
	N7dNQWE6U3acFp39JANdbUh44OjeGK6NAci9Y2NrsO0yHlVyThlxIHAxwyEjeNy4pl7FTs88PIiYZ
	UIHbKtgO+ILS3lm2hHxvl5ptgkyZczH+L9hkWhSPyJ4pQ3t10gMauHZJnucUuuMIvGUQ4HL+KnIUd
	M/WBzlbCQQYQ90/uBldqWnFQR/FByg12WEynocWaWvT/0Oj7iTZjPp9WEjaHhWQm2A+++ol7NpJQE
	5T4FyRWXwPMXdiWL6m9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uf0lh-00000008Ctn-1T4W;
	Thu, 24 Jul 2025 18:34:13 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueyBZ-00000007vCW-3HtZ
	for linux-phy@lists.infradead.org;
	Thu, 24 Jul 2025 15:48:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4B2BA46766;
	Thu, 24 Jul 2025 15:48:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 145AAC4CEFA;
	Thu, 24 Jul 2025 15:48:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753372125;
	bh=NiMKzSoVYLJjavdo8qXJq1+RdQstjWGNZ4ttCvs08NU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=hb/1MRBiTLFVqTJXS4nqgzkxQHXUaPhvZv8H/RzfHV0OcbodCIXXsfmx+t4lXRWBK
	 +cx5EdCdPCIyZo9dXLLHQ3zZ4YQaPJS0ruAJTwbRFYC2PFuIdiGoEcpaz3JI0C36dd
	 1Ar1CWOqJh2X6lHtVbS2aqOxONZiwrIvi1vuYAXYaGwLzKYdvYNkwWhOnt48zyCXQO
	 OVFwOP/79pBMmRTrZOAg6dqOgsT85zu7hmys3e63u6faPpgm5fhkNV9Pp5yVf29z6s
	 kKlmiE5hlWyRdC9/ozst5NhbZo/D7/MKaG61gapfgAzfO3gnEC8f+y1ORFyFKUr2y4
	 8aIf5c1Fd9kBg==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1ueyBU-000000004BF-3qeJ;
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
Subject: [PATCH 08/11] phy: ti: omap-usb2: drop unused module alias
Date: Thu, 24 Jul 2025 17:48:20 +0200
Message-ID: <20250724154823.15998-9-johan@kernel.org>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250724154823.15998-1-johan@kernel.org>
References: <20250724154823.15998-1-johan@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_084845_898487_F94BF068 
X-CRM114-Status: UNSURE (   8.84  )
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

Since commit 478b6c7436c2 ("usb: phy: omap-usb2: Don't use
omap_get_control_dev()") the driver only supports OF probe so drop the
unused platform module alias.

Signed-off-by: Johan Hovold <johan@kernel.org>
---
 drivers/phy/ti/phy-omap-usb2.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/ti/phy-omap-usb2.c b/drivers/phy/ti/phy-omap-usb2.c
index c444bb2530ca..1eb252604441 100644
--- a/drivers/phy/ti/phy-omap-usb2.c
+++ b/drivers/phy/ti/phy-omap-usb2.c
@@ -533,7 +533,6 @@ static struct platform_driver omap_usb2_driver = {
 
 module_platform_driver(omap_usb2_driver);
 
-MODULE_ALIAS("platform:omap_usb2");
 MODULE_AUTHOR("Texas Instruments Inc.");
 MODULE_DESCRIPTION("OMAP USB2 phy driver");
 MODULE_LICENSE("GPL v2");
-- 
2.49.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
