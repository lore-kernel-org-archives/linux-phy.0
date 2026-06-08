Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2F88CD8CA7
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 10:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MBVPs/bBLySi8+ghRO/g1Cc5PkXRzW6FtxM01+pY0as=; b=LPVN+Itx8w/kzY
	BqYp8JZs9KLJDziLwLrVVdNkbPxAQPibmoOv71DIMjrB9pf6oq0NdvaOGDweGdyaBiHYNSPam1siI
	bTTsA+50VH/57k7QGDdOMjusnv9QqDk1f71s0dmA7bP1LEYHmnHrmyTzjKazUSVjMOKVBNHSzVfaD
	nGXC//YluseQaE/d0nM/ZR6vKoJLeZwKWrmatt9+S1WANepwpS06h/MviyeEANkHJFAN29FD0fEZm
	/P/EMqjOcX1dgc0ZzDTTMjhgTyY3soiSqxy9V5H82D43xqRA/Q7Uw7wUh+m/dFDnjx3NwfHQfVLqz
	qJMDywAPN1VsNX8vMy+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWWwY-00000003J4u-2q4T;
	Mon, 08 Jun 2026 10:10:54 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWWwT-00000003J0P-0xap
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 10:10:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1780913446;
	bh=J8HuHi5+HV4gLQmYhw+5lWv8q9ArV5SGGhijuycX6JQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=iGwOlKaV01efV0QgGSolwIdWMTyR/hEzu+q//zDAMD4w0r9cDo6Tgp2Xzl7NBZt8N
	 ehYvMZDhHtFmwKbepK35RUzmT095RXzhVejnDxEe9Ymn/+AsJOWUuL8S/zKZ22TIJD
	 evpxcLjIw/NW1tozXuGcgPkWwXrp8VjSdQkGihZcv0Bt2hyHBByBo8834LxPf8gE6G
	 5FzvrHImRu2w7yrzpaTXFllv1FR5TE6fWrMmc2WCixt5z4bmnI0/onVx3FFZG2gnRF
	 BRWiZD/NpMTTI/hubvIjNtw3HspitghbKoC35IKTdnNspSsxgw+Ju9iU72Kj7dGLtd
	 5qTg4lZ7p4B6Q==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 8C37817E0D87;
	Mon,  8 Jun 2026 12:10:45 +0200 (CEST)
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
Subject: [PATCH v9 03/10] spmi: Remove unneeded goto in spmi_device_add() error path
Date: Mon,  8 Jun 2026 12:09:42 +0200
Message-ID: <20260608100949.36309-4-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260608100949.36309-1-angelogioacchino.delregno@collabora.com>
References: <20260608100949.36309-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_031049_431465_C02FAE8F 
X-CRM114-Status: UNSURE (   9.52  )
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

Acked-by: Stephen Boyd <sboyd@kernel.org>
Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/spmi/spmi.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/spmi/spmi.c b/drivers/spmi/spmi.c
index b0017bd61d95..0f32f099b0ce 100644
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
2.54.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
