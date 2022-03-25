Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA8A6C433F5
	for <linux-phy@archiver.kernel.org>; Fri, 25 Mar 2022 19:01:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FBvh8kreX/pXi35y4E+7QADanyJ9rpAtzY9s4u+7tIA=; b=QAVH7uGD+R38bL
	721VLOLiH927WeAu2YB6EM3WsSdowgsYXgpSo8Y+trj5BN6MTsKreS+JZ5zi5fOEfd75iFp7Z6pTT
	S5hZbJkBDwSXf65X+xrXW8GpxBkA8yuj9T9PKvtQD8Guc5wRrdm2ey6udnZy3AP62dHimo4l7CvwS
	wDYkZ7Iq51N6qrFYBzCxPLjMpFnggc6dveJKYrNwUNzsD+i3yctc7ZXu86+88eNwXoIZmldB572Iv
	R6eyL6NmZ7g5nF2cEGlpa3Wtov6vdr1pXmCktxxspJjDsaO5u4uAHBrOqTsa0fSzMKrQlxO+B7D8k
	hgq5Iey+7TnrXXBVnAoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nXpBS-0032tN-Ba; Fri, 25 Mar 2022 19:01:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nXo7s-002wkf-9D
 for linux-phy@bombadil.infradead.org; Fri, 25 Mar 2022 17:53:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=sPZ7FGjoeMWGizm+Tvir8n+ep2Y5gqfNLr6cPfnxdL0=; b=ljmuPYrELdv7ZKJjpUrmv/FxHL
 2EhEHCrmGGYx9srwqi3/j7WiarqxN4cGeme/qFZP8IlF0q+gTdD5AbfLCti94j35x90JExfdso6Er
 WUvj3XiUETRI2koXB7buA3okBI4n5wX0MmFU+L2Vb5QxCU7u+y4bGSpD944w8BqQtkNCNkVn0Jjx5
 tFJ5gIKF0xMjYxWl/Aew4P7OHnC/937isXhxNUBucXqOAuME2pXpo63tVYCyLv7PQHk9kV/kuSX1u
 729PcmhlDy8eZEJl9BW3hmSeTAhbkec9HZDrN+hgxPbIs5wqP+aShkts04Kv7S3nSUmSZ+qPesNxM
 Kl1v0i4g==;
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nXnZ5-004SXQ-Lv
 for linux-phy@lists.infradead.org; Fri, 25 Mar 2022 17:17:33 +0000
Received: by mail-wm1-x32e.google.com with SMTP id n35so4815418wms.5
 for <linux-phy@lists.infradead.org>; Fri, 25 Mar 2022 10:17:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sPZ7FGjoeMWGizm+Tvir8n+ep2Y5gqfNLr6cPfnxdL0=;
 b=QwhQpZiXoY5TVYEr11zMmZ5/ne6KHxjlFBW2/Hw5FR4FrIs5FKHyQACQKH8bld+/Nu
 dqT7jE/l0j4JIRasbWDPOT8ueCgPbeNDIGWGkmqJXNpm6Hp83fe8jZ/1Nx0ffNYJQqSR
 Ej720UwBmE920nZ6u6/NaX7CnJDYHnhutF/+lQRbbtoP9NgV3A33nbW9QmQEh5+Ox/Zy
 d2Vk6Oz+snY7HZPKMcxfOlDfFgw1Oa8o5n1UFv4rKkM2wRN9yg7lQBp1L1A/VgaX7NE4
 Sg3rGnqXCeeFQh2F9R7xmwF3IIcneN77jJF2xxiS3kVdKTEOHMtG1GZ22aT99OGW7Bit
 dRXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sPZ7FGjoeMWGizm+Tvir8n+ep2Y5gqfNLr6cPfnxdL0=;
 b=4qeoZqZHmqFUwWjD1YM+bWqHWsF7OXgu9gIgtUdT/jBxG/wb189R1ucQiU9D3TsmHI
 DAXXh8FYYQKQOQgacqF/vlyxr7ZWijuMzXE12VNltbvXJ4w+oKjbRLevoCopTqxNrZRB
 IMGzfFgcTqHHyNzaUJA/GO9KuR4OBmOY1+5DWAcnJrVbv+FsDMw4fSCaYMxOwFatkjHc
 VbvS7c0f+n1w5q9W9jvLx6Ho1rSWTks+eitjxWpCFpcLyjukgSmi6ByOcN35dIdB5hgm
 44gVAfz+FcsZMtD78GMJrRBzkP2quKQvEOkQ9jzj3pHbSteXP8j12toT/n5HFTG6pORl
 80kA==
X-Gm-Message-State: AOAM5301sKU28/GR9m+w5mItJJql4PqQPtsn5MIhJRqCTszJqcU4GGzl
 b/qz2tyGxg+CAr8hsPXNZYK5HA==
X-Google-Smtp-Source: ABdhPJzx5XeQEx/NjraCkgpGyTOwzN4hvRuQFeGLZUD9Q64Ryk/j+SV+JBkrRHUjiG+2bCFJQXYLyg==
X-Received: by 2002:a05:600c:34d4:b0:38c:5ec7:1e38 with SMTP id
 d20-20020a05600c34d400b0038c5ec71e38mr20281401wmq.184.1648228650139; 
 Fri, 25 Mar 2022 10:17:30 -0700 (PDT)
Received: from localhost.localdomain
 (2a02-8440-6240-cc41-3074-96af-9642-0003.rev.sfr.net.
 [2a02:8440:6240:cc41:3074:96af:9642:3])
 by smtp.gmail.com with ESMTPSA id
 p16-20020a5d6390000000b00203ffebddf3sm7547464wru.99.2022.03.25.10.17.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Mar 2022 10:17:29 -0700 (PDT)
From: Guillaume Ranquet <granquet@baylibre.com>
To: chunkuang.hu@kernel.org, p.zabel@pengutronix.de, airlied@linux.ie,
 daniel@ffwll.ch, robh+dt@kernel.org, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, matthias.bgg@gmail.com,
 chunfeng.yun@mediatek.com, kishon@ti.com, vkoul@kernel.org, deller@gmx.de,
 ck.hu@mediatek.com, jitao.shi@mediatek.com,
 angelogioacchino.delregno@collabora.com
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-fbdev@vger.kernel.org, markyacoub@google.com
Subject: [PATCH 21/22] drm/mediatek: change the aux retries times when
 receiving AUX_DEFER
Date: Fri, 25 Mar 2022 18:15:10 +0100
Message-Id: <20220325171511.23493-22-granquet@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220325171511.23493-1-granquet@baylibre.com>
References: <20220325171511.23493-1-granquet@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220325_171731_914575_9CC9EEE4 
X-CRM114-Status: GOOD (  12.91  )
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

From: Jitao Shi <jitao.shi@mediatek.com>

DP 1.4a Section 2.8.7.1.5.6.1:
A DP Source device shall retry at least seven times upon receiving
AUX_DEFER before giving up the AUX transaction.

Aux should retry to send msg whether how many bytes.

Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
---
 drivers/gpu/drm/mediatek/mtk_dp.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dp.c b/drivers/gpu/drm/mediatek/mtk_dp.c
index 4981a3a3b9ca..de2a1c1b4f8c 100644
--- a/drivers/gpu/drm/mediatek/mtk_dp.c
+++ b/drivers/gpu/drm/mediatek/mtk_dp.c
@@ -2018,7 +2018,7 @@ static ssize_t mtk_dp_aux_transfer(struct drm_dp_aux *mtk_aux,
 	bool is_read;
 	u8 request;
 	size_t accessed_bytes = 0;
-	int retry = 3, ret = 0;
+	int retry, ret = 0;
 
 	mtk_dp = container_of(mtk_aux, struct mtk_dp, aux);
 
@@ -2052,14 +2052,21 @@ static ssize_t mtk_dp_aux_transfer(struct drm_dp_aux *mtk_aux,
 	}
 
 	if (msg->size == 0) {
-		ret = mtk_dp_aux_do_transfer(mtk_dp, is_read, request,
-					     msg->address + accessed_bytes,
-					     msg->buffer + accessed_bytes, 0);
+		retry = 32;
+		while (retry--) {
+			ret = mtk_dp_aux_do_transfer(mtk_dp, is_read, request,
+						     msg->address + accessed_bytes,
+						     msg->buffer + accessed_bytes, 0);
+			if (ret == 0)
+				break;
+			usleep_range(500, 600);
+		}
 	} else {
 		while (accessed_bytes < msg->size) {
 			size_t to_access =
 				min_t(size_t, DP_AUX_MAX_PAYLOAD_BYTES,
 				      msg->size - accessed_bytes);
+			retry = 32;
 			while (retry--) {
 				ret = mtk_dp_aux_do_transfer(mtk_dp,
 							     is_read, request,
@@ -2068,7 +2075,7 @@ static ssize_t mtk_dp_aux_transfer(struct drm_dp_aux *mtk_aux,
 							     to_access);
 				if (ret == 0)
 					break;
-				usleep_range(50, 100);
+				usleep_range(500, 600);
 			}
 			if (!retry || ret) {
 				drm_info(mtk_dp->drm_dev,
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
