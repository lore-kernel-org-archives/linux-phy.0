Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60B76C44501
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 11:18:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pMeEibmrVrqEwJShhwSmakr/jYIOSnb+BsJvGnxvfDw=; b=g0fgusf16E8kV2
	Jg3RCr7Uq7VFm9t9nPAw+AfXV0BmK+k2JJYINkGUJZnrPdaw+I/Adk0FUypo1BfRF6YNR1INX6geK
	Je0GDi6FICZO2QXh9sSWCBXE/RIgqs/qwIppbKemRp8FWrvvZe8JhfSr3e2wc4mewpNcG4aKayEtt
	Ff3Pbe0iHEmr+b27585WLwnh9XlJYiJrvOcQy9Ib976TU+7AFGfeVBJgtI/Az4ZPYxEeRbcPfgIWv
	RpA4eJDeRDRt7SO2seXcoK0xjn1b89RADtmD7+p8bWPBfTOh1A+RLCCiYiRuFz/iA5o2uAS8pvEpk
	hx508WioeWlFZEOjFpvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh3p1-0000000EpyG-2sNn;
	Tue, 07 Jul 2026 11:18:39 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh3oz-0000000Epuq-1SIG
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 11:18:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783423114;
	bh=TQknSFD/ctzrVBQdTQTZl0Trj8btkpkwP4pqiNucVzA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QL19opoxz0wTbWmi0VWbqXPnx54f8b1lAra7I94SfvyMblhP6YwvbMCVx6ekTnRGq
	 hzFdqwQIxZ7tB0emCW88la4EkluEBLoIo5YOXwNf5AuBkHFhIUeng8/1KLcgH6MqK/
	 5Q9cZmTLjhtHJ+KKpBJHj46pgedhDyOniqf34Jb9/04FNdk1S3+Hzx2GzugSvIJz3l
	 NFATxCt7Qxfvg/G7CV3CKQtLVQI4t9xPRsyuc7JIYoSr0ocqmgdbNtiGQ1+GCb3yI0
	 qtV+9ek319SmuA0j7rmiAI7VQw06qBevXbADjCK+MG/q5kZ+ZD+kiX+FBojPt3mo2x
	 g7K41IaStulww==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id BC33617E0D56;
	Tue, 07 Jul 2026 13:18:33 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: jic23@kernel.org,
	sboyd@kernel.org
Cc: dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	arnd@arndb.de,
	gregkh@linuxfoundation.org,
	srini@kernel.org,
	vkoul@kernel.org,
	neil.armstrong@linaro.org,
	sre@kernel.org,
	angelogioacchino.delregno@collabora.com,
	krzk@kernel.org,
	dmitry.baryshkov@oss.qualcomm.com,
	quic_wcheng@quicinc.com,
	melody.olvera@oss.qualcomm.com,
	quic_nsekar@quicinc.com,
	ivo.ivanov.ivanov1@gmail.com,
	abelvesa@kernel.org,
	luca.weiss@fairphone.com,
	konrad.dybcio@oss.qualcomm.com,
	mitltlatltl@gmail.com,
	krishna.kurapati@oss.qualcomm.com,
	linux-arm-msm@vger.kernel.org,
	linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-pm@vger.kernel.org,
	kernel@collabora.com,
	Andy Shevchenko <andriy.shevchenko@intel.com>
Subject: [PATCH v12 02/12] spmi: Remove redundant dev_name() print in spmi_device_add()
Date: Tue,  7 Jul 2026 13:18:19 +0200
Message-ID: <20260707111829.180158-3-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260707111829.180158-1-angelogioacchino.delregno@collabora.com>
References: <20260707111829.180158-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260707_041837_571697_C3157037 
X-CRM114-Status: UNSURE (   9.46  )
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

Function spmi_device_add() uses dev_{dbg,err}() for respectively
debug and error prints, and passes the same device pointer as both
the dev_{dbg,err}() parameters and to a dev_name() that is part of
the actual message.
This means that the device name gets printed twice!

Remove the redundant dev_name() from the messages.

Acked-by: Stephen Boyd <sboyd@kernel.org>
Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/spmi/spmi.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/spmi/spmi.c b/drivers/spmi/spmi.c
index 2e4ed06fab42..de019f3f1e27 100644
--- a/drivers/spmi/spmi.c
+++ b/drivers/spmi/spmi.c
@@ -71,12 +71,11 @@ int spmi_device_add(struct spmi_device *sdev)
 
 	err = device_add(&sdev->dev);
 	if (err < 0) {
-		dev_err(&sdev->dev, "Can't add %s, status %d\n",
-			dev_name(&sdev->dev), err);
+		dev_err(&sdev->dev, "Can't add device, status %d\n", err);
 		goto err_device_add;
 	}
 
-	dev_dbg(&sdev->dev, "device %s registered\n", dev_name(&sdev->dev));
+	dev_dbg(&sdev->dev, "device registered\n");
 
 err_device_add:
 	return err;
-- 
2.54.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
