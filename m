Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 234CFEE499C
	for <linux-phy@archiver.kernel.org>; Wed, 11 Sep 2024 11:53:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p0Od8UdPekYPcIbP3OXKRgQcYOfaMogPOSXJcFXwSpA=; b=N3TPqcLcNnyqo4
	XlTv4J6isMDKSP36TzKOHGz5/W1SA8+l2r0rHIYvrnhxy0CHhYrFaBMYv4PnYx14l0ZERISFwZam+
	ewDPIIlyV2BSGOUCbdnn2BSQDo4NqM9OCNeyiZ4eMMtgUIbwBdBz+mzH9WpXFNnK5fP46GlltILz/
	zQ3G5fHaZNEOqxOquU+6GqZISiWC1Q11qpSkzbZxW7k4CO5Y/m2AoKO5rN1NedMIN9kOFggj+tPTZ
	pO2mQj3GQGZuxSW7lGOL9/m8g+w43xGVm/mF/YGH/Xck/WpHz0JRuhTAMmRHNSxoYBWyyimBnVPj3
	q1iZ1bETJ1Ee/jwL6AlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soLuj-00000009MYa-3dqx;
	Wed, 11 Sep 2024 11:53:37 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soLue-00000009MVj-0xnh
	for linux-phy@lists.infradead.org;
	Wed, 11 Sep 2024 11:53:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 955F0A44CD4;
	Wed, 11 Sep 2024 11:53:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7024EC4CEC7;
	Wed, 11 Sep 2024 11:53:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726055610;
	bh=wnlcu3GUOvYuxP341TqK9IEhiSWPkVw9Fa0I9EzEjFw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=CcOulFoUp0JVqELwXzKSFU1c/G2V9DezoCCctHwVTW4jreVPOe3+YS/9fjh9i2Wio
	 NzYzTWesRU/Mbzc3lihTEXVomEVdWHFBuklpMG6Ns2GVtgq2HdMr3UMiviRpZYpQmN
	 ojrODh6zIsz/izFET0GWZ6aYWuYc4R0tCvcjRc/vngTISPwtX4e8nHub3gFgwxDqq7
	 7XaNDwV8fR9ZFZ/+2Ru8lNNqVcBAht1NhH2Dc83iN7n/hjO3eRf97jigeIWtUvh4vN
	 Nzz8WpcfQaigw+C6egA8iYJ6wjR064IerdNtE0zH1du8NcA0CU2KIaqzlqrSCb4qI6
	 G8yDYsJZHVSDg==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan+linaro@kernel.org>)
	id 1soLuv-000000002rQ-2Hvh;
	Wed, 11 Sep 2024 13:53:49 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	stable@vger.kernel.org
Subject: [PATCH 3/4] phy: qcom: qmp-usbc: fix NULL-deref on runtime suspend
Date: Wed, 11 Sep 2024 13:52:52 +0200
Message-ID: <20240911115253.10920-4-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240911115253.10920-1-johan+linaro@kernel.org>
References: <20240911115253.10920-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_045332_485174_ABD2CBB7 
X-CRM114-Status: GOOD (  10.75  )
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

Commit 413db06c05e7 ("phy: qcom-qmp-usb: clean up probe initialisation")
removed most users of the platform device driver data from the
qcom-qmp-usb driver, but mistakenly also removed the initialisation
despite the data still being used in the runtime PM callbacks. This bug
was later reproduced when the driver was copied to create the qmp-usbc
driver.

Restore the driver data initialisation at probe to avoid a NULL-pointer
dereference on runtime suspend.

Apparently no one uses runtime PM, which currently needs to be enabled
manually through sysfs, with these drivers.

Fixes: 19281571a4d5 ("phy: qcom: qmp-usb: split USB-C PHY driver")
Cc: stable@vger.kernel.org	# 6.9
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 5cbc5fd529eb..dea3456f88b1 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -1049,6 +1049,7 @@ static int qmp_usbc_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	qmp->dev = dev;
+	dev_set_drvdata(dev, qmp);
 
 	qmp->orientation = TYPEC_ORIENTATION_NORMAL;
 
-- 
2.44.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
