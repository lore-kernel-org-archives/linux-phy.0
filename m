Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E18BC87FD3
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 15:25:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=04OZ0YIN/tgjsUvmv2zQ8NtDmZQLRG3/6HjCHe9soyQ=; b=3qbzz1JnEiGLtQ
	FjdSv+edbrXWnE0eCiR6o4gFwFxEjqYDY8LKXGv4Womcos9+NzOSS9lXSrwfrsZUsfzgsE/aKtrug
	/iTDXlChWWPQOwQgUWC3y9NUKRVyE6YpOVXi7S3EehJeWeqCgift9R6Ev9xV3Etu8aPnjuci+gH3d
	PrhvwyLA8xmRe3luLL7aEwjCgKwdCvWPIbZFGyihpE6eVVdg7PPReHzLjktswcObT5FCXWfebC26p
	D8QkwgZMnyjUzJWynmGl+lrfk9YG8oEiThHR3hVt49qnSMocaBLO3XQoVhEsMRwRJLK/ZLUw72GBr
	IQob0GK06Ff/N3emd8Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uexpB-00000007qKE-46Oq;
	Thu, 24 Jul 2025 15:25:37 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uevkJ-00000007UFr-1QDJ
	for linux-phy@lists.infradead.org;
	Thu, 24 Jul 2025 13:12:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9C00B437D0;
	Thu, 24 Jul 2025 13:12:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7CEA7C4CEF7;
	Thu, 24 Jul 2025 13:12:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753362746;
	bh=OCFXvHWz9Bj8TDQec1Lq7R+FarRLGYrv4c6C8ybgBgg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Kfx+E2QOn2KChvZeQD5hgSNiDz7PoR0oC58JcuKE5RIb6pE+Y21BctrIJm3YyQ1il
	 H0nrcUwKsw+pr58xzK/u7AR+TpR3TjR1wyI0KDx+zfcy4IegnSKZynO38X3foJEHrc
	 q034ZV+qiPIYRM93WxNIrrVOCJNAqXJ2DjMrJG3nS6qYdl2vTNbL9XcYhV8PiC9BF5
	 btPP4ENv+XxDoNTnmMZsLgG6yns4TAIoApuW4Kmb2imtS3DHzjozqRgmJsPXoyOwr/
	 h9uv1jeAsd4P8mRsbPpDE2ZGZ4WuCF/HZxNqnDumqth1TydcPxj6zB0R4Wn5gtXT8+
	 QZHtqyBHwQ1Xg==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1uevkD-000000000aL-3OOa;
	Thu, 24 Jul 2025 15:12:21 +0200
From: Johan Hovold <johan@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: JC Kuo <jckuo@nvidia.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan@kernel.org>,
	stable@vger.kernel.org,
	Roger Quadros <rogerq@kernel.org>
Subject: [PATCH 3/3] phy: ti-pipe3: fix device leak at unbind
Date: Thu, 24 Jul 2025 15:12:06 +0200
Message-ID: <20250724131206.2211-4-johan@kernel.org>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250724131206.2211-1-johan@kernel.org>
References: <20250724131206.2211-1-johan@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_061227_405637_78E320B1 
X-CRM114-Status: GOOD (  10.83  )
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

Make sure to drop the reference to the control device taken by
of_find_device_by_node() during probe when the driver is unbound.

Fixes: 918ee0d21ba4 ("usb: phy: omap-usb3: Don't use omap_get_control_dev()")
Cc: stable@vger.kernel.org	# 3.13
Cc: Roger Quadros <rogerq@kernel.org>
Signed-off-by: Johan Hovold <johan@kernel.org>
---
 drivers/phy/ti/phy-ti-pipe3.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/phy/ti/phy-ti-pipe3.c b/drivers/phy/ti/phy-ti-pipe3.c
index da2cbacb982c..ae764d6524c9 100644
--- a/drivers/phy/ti/phy-ti-pipe3.c
+++ b/drivers/phy/ti/phy-ti-pipe3.c
@@ -667,12 +667,20 @@ static int ti_pipe3_get_clk(struct ti_pipe3 *phy)
 	return 0;
 }
 
+static void ti_pipe3_put_device(void *_dev)
+{
+	struct device *dev = _dev;
+
+	put_device(dev);
+}
+
 static int ti_pipe3_get_sysctrl(struct ti_pipe3 *phy)
 {
 	struct device *dev = phy->dev;
 	struct device_node *node = dev->of_node;
 	struct device_node *control_node;
 	struct platform_device *control_pdev;
+	int ret;
 
 	phy->phy_power_syscon = syscon_regmap_lookup_by_phandle(node,
 							"syscon-phy-power");
@@ -704,6 +712,11 @@ static int ti_pipe3_get_sysctrl(struct ti_pipe3 *phy)
 		}
 
 		phy->control_dev = &control_pdev->dev;
+
+		ret = devm_add_action_or_reset(dev, ti_pipe3_put_device,
+					       phy->control_dev);
+		if (ret)
+			return ret;
 	}
 
 	if (phy->mode == PIPE3_MODE_PCIE) {
-- 
2.49.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
