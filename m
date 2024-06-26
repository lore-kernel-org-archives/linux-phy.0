Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CC24C27C4F
	for <linux-phy@archiver.kernel.org>; Wed, 26 Jun 2024 08:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=A4kLMEwJdRBFkQIW+HONzCp0o6hUYGKF4BtPeiJQUIs=; b=AJjAtuXDygktSg
	yEM9AF/tiiKfQz9pwcCHW7hBAWVTi2riKD9HDeGqooK4m7UA6bTv1judrInNPyUZxciFFaZw05jJc
	7aque93nw8v27HsVh0cdnvIK6r3bB9uaGzORIeuWDOo/VrddVtwed2q0sM+ESnQE7t0H1++qjLU2n
	xFAAZm/tLDBmXnyn+5YU55MKfxx5MSS/EuwLAfqrYnGz8iszfPfYKdoeY6p72xv7btSMjC7SuSyv3
	WpictXJj4m0vsfZwRa55+AJ2YInUgJ8O+MMX8AYuOncpJQdaQ9BdMdx02unOSC68ui42su8NyFw0O
	FnH78uJLgf+ilQi8mPPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMNiY-00000005rPF-2XdK;
	Wed, 26 Jun 2024 08:09:26 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMNiW-00000005rOT-329T
	for linux-phy@lists.infradead.org;
	Wed, 26 Jun 2024 08:09:26 +0000
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-1f9b523a15cso2382505ad.0
        for <linux-phy@lists.infradead.org>; Wed, 26 Jun 2024 01:09:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719389361; x=1719994161; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GHr65P0G1QIxVEIvdANGC2Rr426XZ8bqusMBD1XEJpA=;
        b=dAVYWoxSEapvEEPuD9shDL1HfLY3IVgEyDHQ0NiMHNR0nJo87gydKnPjTG652UHku3
         dkJZHd6xKjX6NtQ4jfMese7ofXTkcpuVZ8kSbZeCR8kmxGr5HY7uz8eteT/ZLKBl0lLM
         sftz0fJCayvQIsjeymCom03NbFk4qFg7V5VUCjWV1JE5JKG3tr4WYQ+6Wf8t1+8rHr76
         2qr3hxm0reo70jc1l3xFG6OVu/X+v2vVCbneZfUTNbJLC1118if9tAUzcNDitUO34BPN
         od3wdfWdr1gHVKG2lxRZGrpU9sW+r3o1ADcUYXSdlZCfGihDjE9fJ1Aw7OcIjQcirYJD
         oJ6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719389361; x=1719994161;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GHr65P0G1QIxVEIvdANGC2Rr426XZ8bqusMBD1XEJpA=;
        b=QkEH2uAS9Zk5edINgaPbZ9MQ4I4Ct0mGgad/gB1UyazIjVh3mcpHTPGMCikWKuzzTn
         VoIAcdk7kVLq6BQk8BjQVFGGWy1T5unm+IvZNHsb4rlbhkzrjLZi1WBSM1u4tx+8AIJi
         e9WNshvs+NLAbtWT9tSuTlP7LlGWp2SjsHgpEXkEagOTcjv7HMOTOtXj1fVgD4Qs3P2g
         epaZZZDDwd0sA2p/K4qxRp4Zof/FoQJj6w0W9zc4Y/BXfmHb9Uk/RQza3CCjbrLozvP/
         hX4RFmi2roaKV3dlLGYMDa/EINFQIVDVK+Dx4sSosJP5DNam8MMlxVpTGOTwjrlA3IBi
         Lndw==
X-Forwarded-Encrypted: i=1; AJvYcCW9bkuk3gByfYzSaL8c7hISVSSXBdt9GUnUkO03SouldnQT9vMFG7eyQ5+4FlveWLRpxVnW7c6kjMCWsIGB6HYnBqo8gvdpt1nKDlZAng==
X-Gm-Message-State: AOJu0YxOcC2icwvNlgV3Qd69odcMjY9RbcH0++y+OThN91Do9a0z1zYV
	oODuXbj/J5OkURjRiAB8lN/L08ZKO2thD5IYSwjwgpmQnR/X3DR7
X-Google-Smtp-Source: AGHT+IFSRIZBvzROTW0FmIImtpqxit1LhxMlon6bWdJ346/3jiQERbAZRilUfkforEG3K9JgXiBKYA==
X-Received: by 2002:a17:902:f545:b0:1f9:ec87:284e with SMTP id d9443c01a7336-1fa5e698121mr96305425ad.16.1719389360571;
        Wed, 26 Jun 2024 01:09:20 -0700 (PDT)
Received: from localhost.localdomain ([202.120.234.58])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-1f9eb321715sm94358895ad.93.2024.06.26.01.09.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 01:09:20 -0700 (PDT)
From: Miaoqian Lin <linmq006@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: linmq006@gmail.com
Subject: [PATCH] phy: core: Fix documentation of of_phy_get
Date: Wed, 26 Jun 2024 12:09:10 +0400
Message-Id: <20240626080911.203630-1-linmq006@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240626_010924_783851_43366475 
X-CRM114-Status: GOOD (  10.90  )
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

of_phy_put is used for of_phy_get to release the reference count.

Signed-off-by: Miaoqian Lin <linmq006@gmail.com>
---
 drivers/phy/phy-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index bf6a07590321..f053b525ccff 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -664,7 +664,7 @@ static struct phy *_of_phy_get(struct device_node *np, int index)
  *
  * Returns the phy driver, after getting a refcount to it; or
  * -ENODEV if there is no such phy. The caller is responsible for
- * calling phy_put() to release that count.
+ * calling of_phy_put() to release that count.
  */
 struct phy *of_phy_get(struct device_node *np, const char *con_id)
 {
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
