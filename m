Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 155E2C54ED0
	for <linux-phy@archiver.kernel.org>; Fri, 23 May 2025 08:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VjSGeP1rLTUURDUtSnqOPp7nfl1Vs9x6q/yvO1MRR9k=; b=fa2zeQ4ShqMX9L
	lwB4io6ieyfgrA7dx7TiYUcObSOMjvzDjMjtSKT1o4yMjVzaiQ4JtRLG9WQHwURL6P4gYfepO7TO0
	L81AeI5I0AfUlPT8/1ESFfAm0A2LwhAJBtQ38QO8c1mzvTDMARqbuBfWXk1Zhx2GKgvv/QhO2iwAf
	PCgbp9orKA5kwVJtXDoMSbMnsMCZ6WSDu84rwujDYXwpkJWgYvcDt+ByYCutCdQpYM1iQyX4p1rtt
	emDmArKdFzkAb/X9TNyrMV/QdDdYAfjxD4PX7IcNJ5IPFHGtSxiHKL6foWu47J6J3aUOj/UblCKVP
	nQnJqGAlhZvyp9+ZNXEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIO5U-00000003Lzc-3XQC;
	Fri, 23 May 2025 08:49:08 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIO5S-00000003Lxj-32H9
	for linux-phy@lists.infradead.org;
	Fri, 23 May 2025 08:49:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id EB39C44CEF;
	Fri, 23 May 2025 08:49:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4C07C4CEEF;
	Fri, 23 May 2025 08:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747990145;
	bh=QvdPw+EY6HW87BbEEl2SyehUHlzXAPAlSJ5ycP2aCMs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=r2vgwT36EbUBNRnDHtzIXgUX8MrFsJy0XJ3L7jfR1iBDqMpn8DURb5jNH/n1suH1o
	 cUEa+ltYMCMc5kOkaOXG4Is8DN4xjzoVNmHumub3VYYzRUl79mqbiIA5b/4q9bgscU
	 i2ZzjecICwzivashVH+rmd8856uo7pc//f1ymQGDhkVI9jrUb1AYq+iMXCZiWXEgd+
	 DwWEX5Mz//A0zlfmphTm9P8WqafRmzAC10TLoLv8WrIJRPqRAXJ9Czvfci0NNUFwVO
	 BALK6UPk6ZSWFguFpG/SdxLPJoLeX+eb73p1pBc5u+uHpvFndgza/cqZ3uzLcau/u3
	 d2flNuFPYV3sA==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan+linaro@kernel.org>)
	id 1uIO5P-000000002sc-2jmD;
	Fri, 23 May 2025 10:49:03 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
	Abel Vesa <abel.vesa@linaro.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 1/7] phy: phy-snps-eusb2: fix clock imbalance on phy_exit()
Date: Fri, 23 May 2025 10:48:33 +0200
Message-ID: <20250523084839.11015-2-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250523084839.11015-1-johan+linaro@kernel.org>
References: <20250523084839.11015-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250523_014906_780921_32AD54DD 
X-CRM114-Status: GOOD (  10.21  )
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

Make sure to disable all clocks enabled at phy_init() also on
phy_exit().

Fixes: c4098f3e6134 ("phy: phy-snps-eusb2: add support for exynos2200")
Cc: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/phy-snps-eusb2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
index b73a1d7e57b3..19af3f99692c 100644
--- a/drivers/phy/phy-snps-eusb2.c
+++ b/drivers/phy/phy-snps-eusb2.c
@@ -504,7 +504,7 @@ static int snps_eusb2_hsphy_exit(struct phy *p)
 {
 	struct snps_eusb2_hsphy *phy = phy_get_drvdata(p);
 
-	clk_disable_unprepare(phy->ref_clk);
+	clk_bulk_disable_unprepare(phy->data->num_clks, phy->clks);
 
 	regulator_bulk_disable(ARRAY_SIZE(phy->vregs), phy->vregs);
 
-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
