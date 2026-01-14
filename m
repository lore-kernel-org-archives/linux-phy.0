Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D9C4D31A2A
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 08:40:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M/mtpEv8YwTH3JarySe9Q/4uEZlzj61q00c9NwPLjRw=; b=xagsZnxHIjU9G+
	jkIXzmnIn/IhVUj1xsUmPY7gEbVT8Gv+QxN2TfYCQ6IWmQSK8V2GOFonoaX9NUN5NtBVxlZKgi4vQ
	1BfvZuAJ0PSG1801iF8bKkqZ/mdeM2QzDQ3ZGq6WIkh3R961f5Q7JiljNwMrvXJtE+PBDNGJpIa2E
	L/AdE1qtdU5H3mO4Un/3ooAWz9J64sjZFrXdEvfiMLzrVDxvyxF5l87fc3R8Cbn3ovqKB7lxEK9/B
	u2n6+oKeNnxbA7ZcC7elOojhRmlLKcm9rBSqDjEOclJe8O6OhXSDJETXfiVGOWzjRMJTTN9w9COLA
	PC6j04abqS2GTl7ox+DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfwQD-00000008NVm-1VVi;
	Wed, 14 Jan 2026 08:40:09 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfwQ9-00000008NSN-2LJO
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 08:40:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1768380003;
	bh=puglyhIXE+LNwfUJWKVRL/k18ozKRTOIa2afD4k7Cn0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ioJIkF0y4OVpLlsGXj2OoLbqdVB7A2T5bSxisYk5Mg3D+HMriQ8fnAb2ougRv4h4M
	 sDNtCMPyJ78ttiUehdNEQGPdnCL3UEgm7d5aFNJ72N9Ecvjs5SLwlafwEOyViIJwaC
	 l5NTK/LKirMagvW/OzRHqgNjhgYyZaCyZuz+u9QKfIoRh3fhUYCEsITQ28bK9lkTXE
	 cSEASCy4NgjwFokSM9oKBskf7IDGoycmgjkNYptBkLYcj7exzE56kBoyXZlb+N0Uv2
	 LMkphDSjVXPrXheQtquzqtAss/UAtmBX6SCP/oX4fqF/CPZGcrCmQnoX1K+3q48hOC
	 k/qtURPKKsHUw==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 746A317E1523;
	Wed, 14 Jan 2026 09:40:02 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: jic23@kernel.org
Cc: dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	arnd@arndb.de,
	gregkh@linuxfoundation.org,
	srini@kernel.org,
	vkoul@kernel.org,
	neil.armstrong@linaro.org,
	sre@kernel.org,
	sboyd@kernel.org,
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
	kernel@collabora.com
Subject: [PATCH v7 02/10] spmi: Remove redundant dev_name() print in spmi_device_add()
Date: Wed, 14 Jan 2026 09:39:49 +0100
Message-ID: <20260114083957.9945-3-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260114083957.9945-1-angelogioacchino.delregno@collabora.com>
References: <20260114083957.9945-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_004005_753466_18DB7CAC 
X-CRM114-Status: UNSURE (   9.07  )
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

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/spmi/spmi.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/spmi/spmi.c b/drivers/spmi/spmi.c
index bcb71f25194f..c21789c6b59f 100644
--- a/drivers/spmi/spmi.c
+++ b/drivers/spmi/spmi.c
@@ -68,12 +68,11 @@ int spmi_device_add(struct spmi_device *sdev)
 
 	err = device_add(&sdev->dev);
 	if (err < 0) {
-		dev_err(&sdev->dev, "Can't add %s, status %pe\n",
-			dev_name(&sdev->dev), ERR_PTR(err));
+		dev_err(&sdev->dev, "Can't add device, status %pe\n", ERR_PTR(err));
 		goto err_device_add;
 	}
 
-	dev_dbg(&sdev->dev, "device %s registered\n", dev_name(&sdev->dev));
+	dev_dbg(&sdev->dev, "device registered\n");
 
 err_device_add:
 	return err;
-- 
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
