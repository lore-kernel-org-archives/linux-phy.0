Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8054FC433EF
	for <linux-phy@archiver.kernel.org>; Mon, 14 Feb 2022 02:06:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qe8/YuTgOYmW6eR6ORbccERUTtQMS7d9QVn3YYH11C0=; b=Me4j6/kJtR/JYY
	/mn+qfsdq0TyqA8fZzPFcDft9CU5++K5YY2ufmQFNsogb8aSUaRHKkfRmBTkok6ge86pEzX5H8Wd3
	wiINownoPYsRZXBzierdpuJBIXUQnna/DZZO9zQO89v87biJ1KfOYTzOgk+3ZT6NMJXGqMWMhwsk5
	kLU58s0qZDPwYtD5eMUkL4CE48A4U9ndHPLNKDYtoDMbV0BMRU1ZkLD9VugzvMJnQm1tIlMuBjdla
	kPgBzRrPOWy3nVJYBfpMvyPptX+qKrk6OZg0tWThB6vl0OAErCEZAiWQqDXN1XNaeGzZVr7X3Dbvk
	vl1Rlu5bX4Zug5ceMvzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJQlA-00CyXg-Tr; Mon, 14 Feb 2022 02:06:36 +0000
Received: from mail-qv1-xf2a.google.com ([2607:f8b0:4864:20::f2a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJQl8-00CyWr-EY
 for linux-phy@lists.infradead.org; Mon, 14 Feb 2022 02:06:35 +0000
Received: by mail-qv1-xf2a.google.com with SMTP id v10so13722527qvk.7
 for <linux-phy@lists.infradead.org>; Sun, 13 Feb 2022 18:06:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=x6D+rW+M/590MNn6d2fJzbKUc0e2Gs+IX5YARDEY8vY=;
 b=XnUgXRrMXepVz7BhayGIuaIuiNR+gi4RU0BnTwEM2Q+1EE2H9I0y4aq0XfVXkoJynu
 vjlZtoyoCInbaMeI3YZkL9ml2a+6PxTpSsEEgnjXA5wNqZEHIBoNeY7WlNMGIanrM+Nn
 XSvNNx5I6xFPXppMW6Qub49m7rnV7XAnur0OMfSGspZkyGfKXsv2O931zJF2ymcBJoOQ
 kXXWoN/ITAlpg0+XQ9HizCsIxeUGTuNRHVE3AI++E3p1LgRGZJgcQTWDkgZv+yk9UibJ
 0Gk29a/2V5VbwTRI2LTRDqlMi69UNgVgJbfMwP13BjLq38VUwlIY+gCpzvqGLrr0IuFN
 Cf8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=x6D+rW+M/590MNn6d2fJzbKUc0e2Gs+IX5YARDEY8vY=;
 b=W1uDNbgTSdbO9DKOC31gMFTNgbFCabQta2vmgYAMqq9gAxEGYKEdcQeH2UQdhYeq63
 Ae9TVelIiIY0M8V+0HSPKqudT1x0kE/3ub8rWNIkVWH9To8142PkmmNQrb2KZf647qAA
 aPoaZzaDtoHpP306Jq8N8WxNeHqPC/fW82KL6l4c4SEXvJvQhJS9Zo1SqNhpZlF/ByvC
 MqLWf/NfSyEfTkD0LUiPUNz6rj56MddFrGrsMMMBkZ1S8Ngh9Jni3HzP0xWn4ctVFRm4
 Dk+R6jXGX/4v4C2IkQNoCmntsT5PRaa3wVHPOHb7Uop395Ikvg1upK/L5I2UuKGHsS3L
 gmVg==
X-Gm-Message-State: AOAM531X2E1CrDioxECzKugICkvuxqxEvc7Ccj01swSKJnUsK8GRq3vn
 CVzmXvVZN+8GK8Wtx9B6/T0=
X-Google-Smtp-Source: ABdhPJyVbKTazCjbPnlL4BVLjqu5Hu2WSB3lyx94QL//89CseIbr6/MdX/GH5h5gxzc4Mpup1ICCmA==
X-Received: by 2002:a05:6214:20c6:: with SMTP id
 6mr8215578qve.32.1644804393036; 
 Sun, 13 Feb 2022 18:06:33 -0800 (PST)
Received: from localhost.localdomain ([193.203.214.57])
 by smtp.gmail.com with ESMTPSA id d6sm16924750qtb.55.2022.02.13.18.06.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Feb 2022 18:06:32 -0800 (PST)
From: cgel.zte@gmail.com
X-Google-Original-From: chi.minghao@zte.com.cn
To: kishon@ti.com
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 "Minghao Chi (CGEL ZTE)" <chi.minghao@zte.com.cn>,
 Zeal Robot <zealci@zte.com.cn>
Subject: [PATCH] phy/cadence: Use of_device_get_match_data()
Date: Mon, 14 Feb 2022 02:06:26 +0000
Message-Id: <20220214020626.1714696-1-chi.minghao@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220213_180634_512957_18603552 
X-CRM114-Status: UNSURE (   9.35  )
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

From: "Minghao Chi (CGEL ZTE)" <chi.minghao@zte.com.cn>

Use of_device_get_match_data() instead of open-coding it.

Reported-by: Zeal Robot <zealci@zte.com.cn>
Signed-off-by: Minghao Chi (CGEL ZTE) <chi.minghao@zte.com.cn>
---
 drivers/phy/cadence/phy-cadence-salvo.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/phy/cadence/phy-cadence-salvo.c b/drivers/phy/cadence/phy-cadence-salvo.c
index 51c0b98f5fd7..e569f5f67578 100644
--- a/drivers/phy/cadence/phy-cadence-salvo.c
+++ b/drivers/phy/cadence/phy-cadence-salvo.c
@@ -263,14 +263,9 @@ static int cdns_salvo_phy_probe(struct platform_device *pdev)
 	struct phy_provider *phy_provider;
 	struct device *dev = &pdev->dev;
 	struct cdns_salvo_phy *salvo_phy;
-	const struct of_device_id *match;
 	struct cdns_salvo_data *data;
 
-	match = of_match_device(cdns_salvo_phy_of_match, dev);
-	if (!match)
-		return -EINVAL;
-
-	data = (struct cdns_salvo_data *)match->data;
+	data = (struct cdns_salvo_data *)of_device_get_match_data(dev);
 	salvo_phy = devm_kzalloc(dev, sizeof(*salvo_phy), GFP_KERNEL);
 	if (!salvo_phy)
 		return -ENOMEM;
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
