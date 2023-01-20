Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B75CC05027
	for <linux-phy@archiver.kernel.org>; Fri, 20 Jan 2023 08:46:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N7Qzg5Eu7lmboyeP7flM+X1Ur47LwRDtIgms4KTPVns=; b=M6Akb+bKvuQ1BQ
	UXRnvL5M34u4JS0+7jazzt291QLE1delehOYmd3UTKqHtyZQMEG1leU9nAnPrraggRRnB9f9scvDp
	6zBwFaFOK2+UY6jNKMBhof5O+PZL8pVyH4P+V12BiCo0A5DLD5OgFHlf3HcDo+dUm506EfBctNgbn
	M95EXUT5yCOpnmolO2I1ObAtMv9mLCPWmvR/x0woyixqEy0dYlay4noLyiNAB2Y1HSZxwH/JDX5UH
	ILikAbUSYxosZyMPl3KgxW3UQwK5RfZ7gELyd7v5DBXNkqa1W5Y/fNELtTtHhfnWmRl8NKGQlLEI7
	l1bv3NZec24rsbSHnmlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIn2Y-0096mQ-Tx; Fri, 20 Jan 2023 08:46:26 +0000
Received: from msg-1.mailo.com ([213.182.54.11])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIn2N-0096gu-T8
	for linux-phy@lists.infradead.org; Fri, 20 Jan 2023 08:46:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1674204355; bh=7AGM/VKSfqplW97tuNvqH0EXLn8mZUwWtDxRa34Qcns=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:MIME-Version:
	 Content-Type;
	b=KoFDrV+rztzQO41lGqScRZ6OOfndsDmFmN2qTCHs2q4P/8Btth0Khvy0B6GXp+Zny
	 v0lav+iWH4SUM62IHh6tQ/K4b0yB/q8GTQ/C5jZUcH2NtDWwb/2n6P8Tz6nm7pV3jA
	 whxbTlWhmQCY4jmNy0m5Xdah+wP4uoC8ZPWhmXTc=
Received: by b-6.in.mailobj.net [192.168.90.16] with ESMTP
	via ip-206.mailobj.net [213.182.55.206]
	Fri, 20 Jan 2023 09:45:55 +0100 (CET)
X-EA-Auth: AJPgsdx2PiQAxTAi4hOwr9wTl/T18ftrcAb47lbj28zIJ76a3afMdxDqUAIzv5hpOuuyonfCG2kPxLx8+oe/sl1EHuq1bH64
Date: Fri, 20 Jan 2023 14:15:51 +0530
From: Deepak R Varma <drv@mailo.com>
To: JC Kuo <jckuo@nvidia.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Saurabh Singh Sengar <ssengar@microsoft.com>,
	Praveen Kumar <kumarpraveen@linux.microsoft.com>
Subject: [PATCH] phy: tegra: xusb: Release device node reference
Message-ID: <Y8pUv0IfEfqosPEF@ubun2204.myguest.virtualbox.org>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230120_004616_379232_069A192A 
X-CRM114-Status: UNSURE (   7.02  )
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

Platform device reference is retrieved using the device node using a call
to of_find_device_by_node(). Since we do not need to maintain the device
node reference further, we can release it back to the core.

Signed-off-by: Deepak R Varma <drv@mailo.com>
---

Please note: The patch proposal is compile tested using tegra defconfig.

 drivers/phy/tegra/xusb-tegra210.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/tegra/xusb-tegra210.c b/drivers/phy/tegra/xusb-tegra210.c
index ebc8a7e21a31..d30de77515a3 100644
--- a/drivers/phy/tegra/xusb-tegra210.c
+++ b/drivers/phy/tegra/xusb-tegra210.c
@@ -3169,6 +3169,8 @@ tegra210_xusb_padctl_probe(struct device *dev,
 		goto out;
 	}
 
+	of_node_put(np);
+
 	if (!platform_get_drvdata(pdev))
 		return ERR_PTR(-EPROBE_DEFER);
 
-- 
2.34.1




-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
