Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49B09C44501
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 08:37:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rZqmL6PfgeNHqWY0ycZq83VokduwV5+eBcacY1die/g=; b=YAyRYEtcj3nfdl
	U6pXQkMHDpk1soccmxAcUHcOLTQPq4cB9eZUqF7/Jom7j+39HFCeLfBEWyp85js9vbo2xo/MbTg37
	dshGdu0FKqskQ64f/8lkGT85Da4wOn7VtDN+obI89nTz9P2TRW7lZVCTpZjM8porRy1eO3jo8cAWc
	MHcf/H00x0vAFK7RdmO+8G7IVBeztgTJLBF+osG08b5k0srdunSHVdPu3t5KAR0iAqHcAINOlHZw6
	JFpsqJzWvrWqE2JdFSXg1jt7XKbMaQBsOcglXEOhGCCICGmNoHrau0MyGs/wU6QY5WL/1aVOA33fS
	/eZi+iCpzLK8+22KnewQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh1JL-0000000EUuL-0Egs;
	Tue, 07 Jul 2026 08:37:47 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh1JI-0000000EUsY-04f0
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 08:37:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783413461;
	bh=At3kX04dh5r5RHMMhi000LK1O2FCYXXKg+W9vgPjwWw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cUEHhYac1RJP4a7pEwRzbXyD3BJz5jDHcjqT9mQ1R++lmDO/1T2vky6eHrfNt9Cvg
	 dscr+jUJj1tsWUKSdeIDxB+YmE4q/4R10okFnOCpeqn3MFPsgxpZkizUR7u4bQV3k/
	 6/3oJTRkHH7KX9vXVoWPcO8BiywYltVOzJRuQn2CKLWZHnhJqzg/hHrktQSoPReq+C
	 +/wZHsoImpnVgnoxx9/NxUEwEfAH6nNdOkOFQLmVRlIVumw4HM+RIcyylxTKQ3bijd
	 /MAS8oAUIFLMQtgOoq8oVqb9dzKwdDorzKDBHPcOA9PPgCcUkJzyX7EflY10mCJWij
	 5gYvaxblUbatA==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C9E7D17E0CDE;
	Tue, 07 Jul 2026 10:37:40 +0200 (CEST)
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
Subject: [PATCH v10 02/11] spmi: Remove redundant dev_name() print in spmi_device_add()
Date: Tue,  7 Jul 2026 10:37:21 +0200
Message-ID: <20260707083730.33977-3-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260707083730.33977-1-angelogioacchino.delregno@collabora.com>
References: <20260707083730.33977-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260707_013744_248570_149602C3 
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
index 6e701aff6045..cf33262eaeb2 100644
--- a/drivers/spmi/spmi.c
+++ b/drivers/spmi/spmi.c
@@ -68,12 +68,11 @@ int spmi_device_add(struct spmi_device *sdev)
 
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
