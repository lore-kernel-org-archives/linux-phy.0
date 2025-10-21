Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18740CCD1AA
	for <linux-phy@archiver.kernel.org>; Tue, 21 Oct 2025 08:32:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NNy//k0hdLRYQkK8Br28/Pe777Gj8hTFKGwtaMyiGRc=; b=basxcb1661C8Q4
	CVlM6lyHiuJavJhACn6eL07QOc+tcqHmL4U9vcPGJBjo2aJW03wUV2WRIF5bRghURfuvdL95UL33N
	x4itvQ5Vd1BM2ViFbR03VCH1hwajilGFi215MyH/oeKo7RvSYhaveqlr+akdoBQjkurGnGaYuJI9O
	twfDekLHUJ7nc0+HhJ5XcyjGYpZulzDg8yoTHczZFpDWQPPlo6H5HzPdlKRTJy4wuPr6Hli1yfT2I
	2inTN3atpg3mfq4dVRzKKeSd6CYOymQJwnyQvaao41EDEaP4AJmofPR52lS82tnauXgsZu5CetNlY
	hQ6S9ZHps+5f7x6vfRAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB7nB-0000000GHf7-3ZAT;
	Tue, 21 Oct 2025 08:32:29 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB7n8-0000000GHcb-2lyO
	for linux-phy@lists.infradead.org;
	Tue, 21 Oct 2025 08:32:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1761035544;
	bh=SWpTT1AsvwN9BcDXeqkBEErSLe50vRw5nVI48pkTpyA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kucIaksKWvlcEaeRMHFzCVMjelqrrKFtEkaYL3kta4pjYcpDyiiGlu2I8mQwZSEYR
	 38gDg9d21afNLOK4TD2y0k0xMFkxin9H+LzBdyJOpkYncydkMdqhMf9mCKrTEgZXZx
	 nTel9aLqIJ2Ixex4eJpb6axAvg+UBfdytpxWtX/82IBtouWCV4uwXH5s9J2aeyWPew
	 l+OX2HxuuVU/wQl4PfQ13OXyodtAMslyYLv/7+Tf/YOA2PaOavru210YSTMKMr7eFD
	 C6N1JZCcyGG3W5wQEwnxh4M+PqzMd/Z3qyean9Edxr/8deR1Mix2WVTs1nEO6p1RE+
	 Ojuakuy57o/hA==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id BEF9D17E1305;
	Tue, 21 Oct 2025 10:32:23 +0200 (CEST)
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
Subject: [PATCH v7 02/10] spmi: Remove redundant dev_name() print in spmi_device_add()
Date: Tue, 21 Oct 2025 10:32:11 +0200
Message-ID: <20251021083219.17382-3-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20251021083219.17382-1-angelogioacchino.delregno@collabora.com>
References: <20251021083219.17382-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_013226_877065_A5359AAE 
X-CRM114-Status: UNSURE (   9.40  )
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
2.51.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
