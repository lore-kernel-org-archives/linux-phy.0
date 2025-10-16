Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1506BCCD19A
	for <linux-phy@archiver.kernel.org>; Thu, 16 Oct 2025 10:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FLSpnDOm7h8hNjWpbq+PgxeJ41phuet066Ry19H4jv8=; b=XkdSJaaOEaUGVS
	D3RE70zPl+WMmHNwtYycyKn9W2zo04jQAKDHFPDoxnK09KnckUjpOY8DflFGzK4GOJtmZIEPdOhEs
	kNHEHn8GjpTRzqegiHGtR6awTBdfru/lDlBBYUL3LmJOZYOzXYXKHbXysxP56WJSAZtFvZygRw6T/
	7RPik25PWlTn8IJloIp/DYGh/zU9Y7VBTA0C8mQCzNapxhd+ngG/FKfUpZRarA/XUpqq3tUbq/b1l
	ViSDd7nIITtn5DB6G9+HeyHWCL8fy0VMoaHGDdVVT4/IVOS5XcSnZPIDWH1W1bZSy0qA05Y+HonH0
	9oF1DnP/N6ddffze8TOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9LT2-00000004TNE-3HeF;
	Thu, 16 Oct 2025 10:44:20 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9LT0-00000004TLY-2bJx
	for linux-phy@lists.infradead.org;
	Thu, 16 Oct 2025 10:44:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1760611456;
	bh=GNGbXkx5g66KghcuTCF7WYhpXkKwkYjL1KKYUygGq/s=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OETseGVqfOq04SqEZJiNQ1iMjUJmDDzxjybto6AD4cQe+Dao3b2D8JKJrWO0TyH5Q
	 WB5pN81ydtDZi1daFt6F9QvHBTvcDu/wfYndHK3tDpETZCFBzzYElOme/7ibnhAgpn
	 Hp0G/aHDQG9HsAFU5XenCtNtPOdOkTeyIGfwMoe4zEVpega5fDATtsvFKcEFhP17wd
	 4NAQLLgWmZiHFrLu1nLZVYTSPfVKEBSRSdn4cdfntZ/dOzJMbBqljN+BSFb9iHzJ+8
	 zzwP5gXM7DQN6kxHFiuwWx+yp8B2s0vOJv43MMoi3omfZiz+rC0IC3lBYYieLvTa9Q
	 k73DMwLFxev1w==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9D3AB17E0CF8;
	Thu, 16 Oct 2025 12:44:15 +0200 (CEST)
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
	casey.connolly@linaro.org,
	AngeloGioacchino Del Regno <angleogioacchino.delregno@collabora.com>
Subject: [PATCH v6 1/8] spmi: Print error status with %pe format
Date: Thu, 16 Oct 2025 12:43:55 +0200
Message-ID: <20251016104402.338246-2-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251016104402.338246-1-angelogioacchino.delregno@collabora.com>
References: <20251016104402.338246-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251016_034418_832259_FBCCE507 
X-CRM114-Status: UNSURE (   9.57  )
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

Instead of printing just a number, use the %pe format for error
status, increasing readability of error prints.

Signed-off-by: AngeloGioacchino Del Regno <angleogioacchino.delregno@collabora.com>
---
 drivers/spmi/spmi.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/spmi/spmi.c b/drivers/spmi/spmi.c
index 3cf8d9bd4566..bcb71f25194f 100644
--- a/drivers/spmi/spmi.c
+++ b/drivers/spmi/spmi.c
@@ -68,8 +68,8 @@ int spmi_device_add(struct spmi_device *sdev)
 
 	err = device_add(&sdev->dev);
 	if (err < 0) {
-		dev_err(&sdev->dev, "Can't add %s, status %d\n",
-			dev_name(&sdev->dev), err);
+		dev_err(&sdev->dev, "Can't add %s, status %pe\n",
+			dev_name(&sdev->dev), ERR_PTR(err));
 		goto err_device_add;
 	}
 
@@ -494,8 +494,8 @@ static void of_spmi_register_devices(struct spmi_controller *ctrl)
 		err = of_property_read_u32_array(node, "reg", reg, 2);
 		if (err) {
 			dev_err(&ctrl->dev,
-				"node %pOF err (%d) does not have 'reg' property\n",
-				node, err);
+				"node %pOF err (%pe) does not have 'reg' property\n",
+				node, ERR_PTR(err));
 			continue;
 		}
 
@@ -523,7 +523,7 @@ static void of_spmi_register_devices(struct spmi_controller *ctrl)
 		err = spmi_device_add(sdev);
 		if (err) {
 			dev_err(&sdev->dev,
-				"failure adding device. status %d\n", err);
+				"failure adding device. status %pe\n", ERR_PTR(err));
 			spmi_device_put(sdev);
 		}
 	}
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
