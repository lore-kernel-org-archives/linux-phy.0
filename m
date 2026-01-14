Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83760D31A35
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 09:27:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=flYa8zOtlriJHK/LK21MwBDeGoVPvXyqR92Kj5pAApw=; b=H5JdIoOga/FFs0
	npnpyC1R7/Fkqf746X6o1vjiWBbTxRLb9a/nGT54pXSZl6sqKVVMzzPGywPaRlJ1l2kj3PF6YoK1Y
	dqc93o0a2SI6JbrIPNMpv2W0ikUoWet7T8B3IWiYONC36r02guKQQtZtmx9bMTAra0xhOvN9wYTXN
	LyEYeEfs+aEj9aQhonYv8z4JiuCiVK+bYjTX/oY4XsSYhSmlXt7hs6sJYrO2U/9vuYAIwmUAYfppm
	/ruc7FDrl+PVOXR5N/iA0eH7uj0x1BaHzwvpF1qeyLh36GP20AxtJmW2EPBKqdBEzEHiP0WiFHMFh
	BDUUMSrc0aDD0jmxSuQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfxAT-00000008Y6f-08ut;
	Wed, 14 Jan 2026 09:27:57 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfxAP-00000008Y2e-0r4H
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 09:27:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1768382871;
	bh=DF4IVE+H3i5y6MYd4G1/bcW9AIbcqBrlEypFUFFzNxY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=a9HtEzo6KnmMsTPCcYyqHsJvzIif7/Cb5oZ9K3UU706bRFvTXUOPUvzqqKAWqNUeg
	 NOUvZm2zBXoLQja1z3x5xVyEFm2oi7UzB6TedPwzdHV2J7c1Kgd1to6huqr2JTVAlt
	 JUQlsIA/54CwNcRobzsVGUlqBI3r1VWuGplieWgnGZXSZSbliOZ6ShLxl0IxShys63
	 cIss5U1HOLEYbbYgw4i22QZKgnei6uiC1GmQhP1Dmkf2filn0Zb0G6a+vILu6nCsf8
	 +/z30h7IeBqwYYBvYbjD0Yjw6Y1t/aYK49bpEv3zyaWChxeStRdUnK/gWxq/st04Hg
	 /pLIKINMd3+og==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 7783917E1523;
	Wed, 14 Jan 2026 10:27:50 +0100 (CET)
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
Subject: [PATCH v8 03/10] spmi: Remove unneeded goto in spmi_device_add() error path
Date: Wed, 14 Jan 2026 10:27:35 +0100
Message-ID: <20260114092742.13231-4-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260114092742.13231-1-angelogioacchino.delregno@collabora.com>
References: <20260114092742.13231-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_012753_388565_867A63A6 
X-CRM114-Status: UNSURE (   9.54  )
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
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
