Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C958CD37B5
	for <linux-phy@archiver.kernel.org>; Mon, 11 May 2026 10:08:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=66koc6zcU4bFHliYUhZJCtDiTS1+ZvK9S3//cNwyvcI=; b=fnVCr1SGuxyzp+
	hLuW6Mpv+tPD++/Q4BvSMaa4W+1+xsf5/UOU2O5mayJvC5HV+ILBCO8gIfJDSqGBAB89tWuMNzPM4
	f184oF9ZieBjet+d7dBkc7TwWhE5grjW4chfqxIlzFXkCWEkzNN0z7dUCQ7ma8ltRR6ut9QyCYxDU
	Fg0XAEDXiOLV+RbYUK2/OU3xBYmB4xZXDW0IfURlqJn1cSg/bBcXdAhfYFYV5m8bGQgupcCF9kVWK
	Or9DugFrkspqlAwUojKWvd7extzU8+Fj5eSpanJgKz4bS6WM0UC3SlUESK3WbDHrJILeGvgHHpXJP
	6Ptt9ZwTPmATxxj85qig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMNYi-0000000D3Yd-0kt4;
	Mon, 11 May 2026 10:08:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMNYg-0000000D3X0-1gK9
	for linux-phy@bombadil.infradead.org;
	Mon, 11 May 2026 10:08:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=wTvquPHvREeG/v5Iv1wu/eBc4Azy1NqWQgewYQTVb4k=; b=RVEjLD5US1MhaO6Bb2h1PQh8Aw
	Xhbmx7pI+0h3vB/TwFY3KGsNTASy7fJuOLPqsD5OjTlXcpJwneRdpFhKzPN61HNdb5PSNf1TpHKim
	o8m0OQKgGcbruDbP67N6ub7tbb1UKg/6prvEvgycTRltFN52ZOHlHBTAKvlyJf5BOWL0r8cTv79V/
	E7gcGaR+iJfDwSf7u9+6t8FMqBbbRiFBa30CMJ+jOcqO/KxnqGfJZ4xR5Gf/oc5q5En3HJXWFgnfg
	oajYmU8bmwJnswiB02MtFhq4kH0t3AqyXPwFFvT+uPBW6KVT41AYduIgLsxQX37n8/M+qGop61xid
	n2wL+nOw==;
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMNYb-0000000BIAs-2dQf
	for linux-phy@lists.infradead.org;
	Mon, 11 May 2026 10:08:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1778494091;
	bh=Y3FmQvDzRhI45MIuq5+8yY1Jusccho4IFs8vVIeFUUU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RpgyDgMTRw0V0nJo38HviipPL0M/n+P5jYOSh9P8KXOIutaUv4QFQs7ezWuRzYcao
	 t/s+Dz1HoOX127eSKaO9kpooJZCMepD2lwLhrM81hpRf1c4K3+ak9vQvQooumx8fa7
	 C/yc/9z79piH8BiseDIEKRva767KMle6QUNDb1Vio6fu0/4YSM8IUblIdoSesOBjZ+
	 plvOrzZlvwu9vxeZa3PnxggG2XtbtxpuO2Wry8vloz2VhzakX+sJ2DmforIkL23X0u
	 F0Un+gnythRIg8ve1FPC1aHWSc6D+/fvMW7MphG5gpKu/TKJxWtkGg8EDWN4e2n4Tz
	 5gEZqhnjQcYRQ==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 4C9E017E138B;
	Mon, 11 May 2026 12:08:10 +0200 (CEST)
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
	kernel@collabora.com,
	Andy Shevchenko <andriy.shevchenko@intel.com>
Subject: [PATCH RESEND v8 02/10] spmi: Print error status with %pe format
Date: Mon, 11 May 2026 12:07:57 +0200
Message-ID: <20260511100805.121432-3-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260511100805.121432-1-angelogioacchino.delregno@collabora.com>
References: <20260511100805.121432-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_110814_751600_E5B76AB1 
X-CRM114-Status: UNSURE (   8.60  )
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

Acked-by: Stephen Boyd <sboyd@kernel.org>
Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/spmi/spmi.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/spmi/spmi.c b/drivers/spmi/spmi.c
index e93fc2c95759..95db19a0a44e 100644
--- a/drivers/spmi/spmi.c
+++ b/drivers/spmi/spmi.c
@@ -68,7 +68,7 @@ int spmi_device_add(struct spmi_device *sdev)
 
 	err = device_add(&sdev->dev);
 	if (err < 0) {
-		dev_err(&sdev->dev, "Can't add device, status %d\n", err);
+		dev_err(&sdev->dev, "Can't add device, status %pe\n", ERR_PTR(err));
 		goto err_device_add;
 	}
 
@@ -493,8 +493,8 @@ static void of_spmi_register_devices(struct spmi_controller *ctrl)
 		err = of_property_read_u32_array(node, "reg", reg, 2);
 		if (err) {
 			dev_err(&ctrl->dev,
-				"node %pOF err (%d) does not have 'reg' property\n",
-				node, err);
+				"node %pOF err (%pe) does not have 'reg' property\n",
+				node, ERR_PTR(err));
 			continue;
 		}
 
@@ -522,7 +522,7 @@ static void of_spmi_register_devices(struct spmi_controller *ctrl)
 		err = spmi_device_add(sdev);
 		if (err) {
 			dev_err(&sdev->dev,
-				"failure adding device. status %d\n", err);
+				"failure adding device. status %pe\n", ERR_PTR(err));
 			spmi_device_put(sdev);
 		}
 	}
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
