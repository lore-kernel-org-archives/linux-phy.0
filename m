Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA838CCD1B3
	for <linux-phy@archiver.kernel.org>; Tue, 21 Oct 2025 08:32:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=39fb5HrTUMdCGg6B3MF/PXLH4vu1ZTRP7a7xigA7hnE=; b=xQVx+F56so1dqd
	qFiBtZmPg+84sj4beaG3K1rv3ZH0vm39o8z7TAfYNvzJSXYsNWuyfXuaSGJ6uM+NdPG4jg9injGkS
	y/KdIshnqcmhtoPj0n1X8KwH5wUceLP4e87807SahuoJXterkBq1dA2CyvaC0sRxW7MYJe/QJZ5AF
	7ig6OZi5X3Som4wrtI2k55iLd5VKXRfEX7fbyHMWNhEeWmWpnbdGpE7+B9dbrhROB8eFnfqqnITLF
	TebxlscLqiv3ps+RmPJEP3VE6Ztf7smSu7rJWTTkPtIcrIWPqkrsNE8yBzchWcQ2TmbBA+HgzqUql
	vnsd64CKgcbUkyG/M0qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB7nC-0000000GHfP-0OGB;
	Tue, 21 Oct 2025 08:32:30 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB7n9-0000000GHd0-0be0
	for linux-phy@lists.infradead.org;
	Tue, 21 Oct 2025 08:32:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1761035545;
	bh=CseAS8WuO07kDc2UBlBpGUtI3Jez99XxHBhRTTJsLPs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=B4AADX8rLFyo3TzCUBKsHaGlGLG+RHSHcG/4VOnxhbzvG3F2RFYU3Mcj/mlGcrheD
	 ET5UDhA1eP6yO0gQHt0ysqSYuLVnGjMCz7HLimVRaFL2uLZGroiXyzyWNTBZGMuXxn
	 9DkTp9Jzlxd2BQ0ToVx1RYj2EiPWLMp82SlcYpIUSXcuh0zh4f/206HvU30dBhNPG0
	 W5/vFSRBX3g3zv21DH5AsI3hHmAuvP88zznH6ceHpNrV61FkYctDOHVol1S2lKXwoA
	 /qRpjQrE8t5zO+oL/LfHusv7Wx+OJ71OZHGOOZ4wlrrnHD725AdF7GF8QWqdUQ+E1s
	 QzLMnE/1CJDBg==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id A07C717E1407;
	Tue, 21 Oct 2025 10:32:24 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: sboyd@kernel.org
Cc: jic23@kernel.org,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	arnd@arndb.de,
	gregkh@linuxfoundation.org,
	srini@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	sre@kernel.org,
	krzysztof.kozlowski@linaro.org,
	u.kleine-koenig@baylibre.com,
	angelogioacchino.delregno@collabora.com,
	linux-arm-msm@vger.kernel.org,
	linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-pm@vger.kernel.org,
	kernel@collabora.com,
	wenst@chromium.org,
	casey.connolly@linaro.org
Subject: [PATCH v7 03/10] spmi: Remove unneeded goto in spmi_device_add() error path
Date: Tue, 21 Oct 2025 10:32:12 +0200
Message-ID: <20251021083219.17382-4-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20251021083219.17382-1-angelogioacchino.delregno@collabora.com>
References: <20251021083219.17382-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_013227_333678_7A55E405 
X-CRM114-Status: UNSURE (   9.76  )
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

If any error happens during device_add() just return inside of the
conditional, as the goto path doesn't do anything else if not just
returning.

While at it, to improve readability, also change this function to
explicitly return 0 (for success) at the end.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/spmi/spmi.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/spmi/spmi.c b/drivers/spmi/spmi.c
index c21789c6b59f..29567c0620ae 100644
--- a/drivers/spmi/spmi.c
+++ b/drivers/spmi/spmi.c
@@ -69,13 +69,11 @@ int spmi_device_add(struct spmi_device *sdev)
 	err = device_add(&sdev->dev);
 	if (err < 0) {
 		dev_err(&sdev->dev, "Can't add device, status %pe\n", ERR_PTR(err));
-		goto err_device_add;
+		return err;
 	}
 
 	dev_dbg(&sdev->dev, "device registered\n");
-
-err_device_add:
-	return err;
+	return 0;
 }
 EXPORT_SYMBOL_GPL(spmi_device_add);
 
-- 
2.51.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
