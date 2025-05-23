Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97641C54ED0
	for <linux-phy@archiver.kernel.org>; Fri, 23 May 2025 08:49:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R5aH1WRzqk1M/r9JKGoJ7c/PNFip+2nues1TxT8BsJs=; b=2EJ+GDIgXHsTt0
	prGYBWLacDfD2AB7BL1yfXIequE88NqyD56IW3RfarZDow41nLHm2vj/Oa/7ft9w+VkiRWnEywwdh
	lZ6D3ZTsQBlHEfWs7WNQG1aLkmVorxC9UUjUZ8kG46Ns++gfYyyHxxkI05icdhT+Y7CjNBbSe0N3d
	T74ht6Fh33pb//9f2ZuqjJ8/XK0plJx7UTuO8eO0HRH1gtRclY5ZR0ItfsyhbfwXE6aPoNuVA8pB6
	7KK/Wp7L86jiDHKO39ldRq2Q3472AJS9GCtO5aGI89qOyZsfqDgcuTKqEBqBuodo1IwzSkUXEsNNK
	072WQYy1+ptHZqmYkzXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIO5X-00000003M0Q-1Y6z;
	Fri, 23 May 2025 08:49:11 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIO5U-00000003Lyb-2kB4
	for linux-phy@lists.infradead.org;
	Fri, 23 May 2025 08:49:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A803862A71;
	Fri, 23 May 2025 08:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C333C4CEE9;
	Fri, 23 May 2025 08:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747990146;
	bh=44O0pIXLXYb6xgrbxG5UOz2GoRN5lhv+sgEH3kFJxIU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=tF/iu7aihQIOj5z3vuguuymFqzR9jw7zoNinvNSQixZg+WSg7A3cy62chYad8XJ34
	 VHD+eMAV2KPUtjvF5dAbQBuJPveXm+4jO8FdxAje2Edxko9Va/czBqoY+SBwax4leT
	 ea57NXNyRTQXOKIZh8gyKpzbNBMIZ7Ly7aUgPBWKma4L9OVFa8VPsIRUKGBlSNF/2W
	 Yp7H9AfeYxFWiphZSbhSQqEV3UdBmNitm0ZBG4UcSZ0yHuJnP74F6JRozWBtJ2taE+
	 5FvNobb2HGxanb+VJynsf8/1EcOO9WzlX/4FikCalaAQOPX8zAywEhWsXCNtjdiRWZ
	 r7Aj59Xp4j2TQ==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan+linaro@kernel.org>)
	id 1uIO5Q-000000002st-0oTB;
	Fri, 23 May 2025 10:49:04 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
	Abel Vesa <abel.vesa@linaro.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 7/7] phy: phy-snps-eusb2: clean up id table sentinel
Date: Fri, 23 May 2025 10:48:39 +0200
Message-ID: <20250523084839.11015-8-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250523084839.11015-1-johan+linaro@kernel.org>
References: <20250523084839.11015-1-johan+linaro@kernel.org>
MIME-Version: 1.0
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

Use a more common format for the id table sentinel for consistency and
symmetry.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/phy-snps-eusb2.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
index c67712bd8bba..cf62f2221366 100644
--- a/drivers/phy/phy-snps-eusb2.c
+++ b/drivers/phy/phy-snps-eusb2.c
@@ -611,7 +611,9 @@ static const struct of_device_id snps_eusb2_hsphy_of_match_table[] = {
 	}, {
 		.compatible = "samsung,exynos2200-eusb2-phy",
 		.data = &exynos2200_snps_eusb2_phy,
-	}, { },
+	}, {
+		/* sentinel */
+	}
 };
 MODULE_DEVICE_TABLE(of, snps_eusb2_hsphy_of_match_table);
 
-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
