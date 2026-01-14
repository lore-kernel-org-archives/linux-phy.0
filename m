Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58300D31A29
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 08:40:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EQOoiqm7/4ZVaPI9jy0SQx2EPjmgQVia6rLBTJhMmtE=; b=WwJs86RXjXt6Pv
	AH7g4xN65OaaAc6sr/3Eq4qOPZgg4aSP0ry8RUZoRn1TfbfgslqBLaENRwQQ0Y6n/FT5eotkDObt9
	HOGLiOB95Z3aZS7YvwP639nqmjA4aDnENGot6Ys+Yl4yGrCp79CFwg/FTUpO5aTRQuah2oyIdPlGo
	b9u377TCCb3421UR/5Cz6U/PLdRJEB1AHwZrlG+TuefwjEUOObK4YSJkSPV8/Rv/zlxYOaT5td56v
	454C7OEWfLi7crMLvfk+g/RcxLRVATi81+MabSKcrJ62yCCt5Iwi7WGQP6lWzFZU4FOW8rT1LNzLg
	BTrdH+R2Ki0FPViO/2Pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfwQB-00000008NU2-0UoE;
	Wed, 14 Jan 2026 08:40:07 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfwQ8-00000008NRx-3M9Y
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 08:40:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1768380002;
	bh=K+wSIudE7FrnCNCchHazZTX/K3GzPYFfOEQM3j0PJIY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=VfRpwfAdHkTReW6ex5ezG31hfkFuA6EKIc1mpi1eOkP3HEDrNWTzABOU59V32n4gQ
	 0Z915rbwFrp1BXtw9LBi/Pc4/sSqcjjuP391kqBu15C6uRXSbib4mBjjFjor0wWNyk
	 e7J4AZFDOQlvsVoFryLPkkTIZq2hQPJFf7avwKyLsKAfC6UTQ6yX0KupeWDjX5lDKi
	 DGDb0wQxHvRsJvwIuDBG2TCzBVGl9/H3ZQTGES46ur3J/fTt545OyYs1SRIIsOTSlt
	 GpJY5rnyqWHIM+W2mMHSvKiZ7g0LbPolfSXv00AiuL8nF/PPC70iEG3iy8htsxzfNe
	 lZBQaZkKWdVBA==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 544F117E1513;
	Wed, 14 Jan 2026 09:40:01 +0100 (CET)
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
Subject: [PATCH v7 01/10] spmi: Print error status with %pe format
Date: Wed, 14 Jan 2026 09:39:48 +0100
Message-ID: <20260114083957.9945-2-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260114083957.9945-1-angelogioacchino.delregno@collabora.com>
References: <20260114083957.9945-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_004004_988267_ADCC37F6 
X-CRM114-Status: UNSURE (   9.39  )
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

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
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
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
