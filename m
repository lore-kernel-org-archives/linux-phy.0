Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E34CC433EF
	for <linux-phy@archiver.kernel.org>; Wed,  5 Jan 2022 09:02:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qv5WbuCNrkh0wh3xfqEFkAVJLzWrbnoZP5TUE0NlmTU=; b=nIc6e3OetbVYMb
	emT9uPQGv7Gr6wWbDra0y2ZjtCtaT6g+LYDebZK3/Tfe9HGdAFxuFJtrsKuNug1yDOLdD4Sl0+ZDW
	8OJ2icdTx4t3MLepo8QXftEigrxrMoqeyBSGTiK8O6u270QdAno/fVTJWvOUxW66dldfVGJUSOTbi
	tzpelciR7mMBtxAbLPBCuftuS+uwkcqUH2oh3CDnvTKDdQ3h+sNkGu2j/nI6SZOZmCVXJwLR5/ORd
	yI4qPepfW+DRTCoO8cBKeAK/MGHRZpoa0QCqOO/8TxBsYZiXIT8Cm/IamIIGR6FG2sxEKi9p7gbK9
	ZIeKEUL7pk4hKiCaVigg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n52Bm-00EIB1-Up; Wed, 05 Jan 2022 09:02:34 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n52Bk-00EIAE-Cj
 for linux-phy@lists.infradead.org; Wed, 05 Jan 2022 09:02:33 +0000
Received: by mail-pj1-x1031.google.com with SMTP id
 rj2-20020a17090b3e8200b001b1944bad25so5759980pjb.5
 for <linux-phy@lists.infradead.org>; Wed, 05 Jan 2022 01:02:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id;
 bh=7paFOjR8m7HOb+sz9hC54Zc05xSSZt8Wcs+DKe0ERcU=;
 b=lDxJLTIC/CCDEUw5ofBdSPXs6MsGpm3H55V4nZaW8WRlH5GGG/OZB/sEKFs35wln83
 B8aYROhGOlQlFBAG86G0rc1Y5yLKcE/8UPA/KtkfSTmHR335+IP6df76V/uwibj0uc79
 BeZ39er5QWW8Zkd7Cj9PIMZ6pxQFlw4uCqj2Hl0daIBcG4S5HfZZ0HB19LxDJMGpv8Bj
 9mNi2pya97SfjnnRptMerFekVn8vIFP7ikENHj6q7FPQpRC4brh/xRAzmnoke3jLBkrb
 C5wnojanUSHtF5Fmoz0yEYbfjcpa7cw4D4y3G3Ly9m0xA9sIBhBeu07u3p9LAkblKbAv
 4cSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=7paFOjR8m7HOb+sz9hC54Zc05xSSZt8Wcs+DKe0ERcU=;
 b=O7F/S138NtrShimuLXWATyfzgc7uXLL4mNLWb7+92wGlz4TRdP8DHiKW0Z1FBRFuQW
 F5vU5EU0szIQ4mlzmtox2k2nC4T4g2k/bCJQsd6ZxgYKDDh+zqMTWXzFOXnmySjHnQ0b
 4DcSD2y/7Xay2Gx4O+eAtjY1476T0dfJs2Jeuqjc4Gjt+f87CIl0DJS5VKY3H80q3IkC
 iRLIwpOx0sbxK6carpFzjDoOdiEIoh5Ry/1IhCCwSv1G6oZeXkmGgfwsmJ55Kb2T3iY6
 hvzq8TNdtu1JsOceZGNHUPBhyvQasdmoD+Pq5aL51q4z6dst9qZP2J6V39CcSly5p+LW
 jjfA==
X-Gm-Message-State: AOAM531uGIk9kTYuDWzKy3wsVn2bbgmw0EOm4+KRGImBHZSFLS7l2f0j
 3SQV0ANbmSAPBFGHQX8/Fh0=
X-Google-Smtp-Source: ABdhPJxCNLuRpiVZBvA7IBuRK5Cl7DwnRdWT+9r6cfwUWLPahAV74RUPshxG9RbNNbrHkYHRWmxjmg==
X-Received: by 2002:a17:90a:f283:: with SMTP id
 fs3mr2841516pjb.103.1641373350769; 
 Wed, 05 Jan 2022 01:02:30 -0800 (PST)
Received: from localhost.localdomain ([159.226.95.43])
 by smtp.googlemail.com with ESMTPSA id
 f10sm49809816pfj.145.2022.01.05.01.02.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Jan 2022 01:02:30 -0800 (PST)
From: Miaoqian Lin <linmq006@gmail.com>
To: 
Cc: linmq006@gmail.com, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Randy Dunlap <rdunlap@infradead.org>,
 Roger Quadros <rogerq@ti.com>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] phy: ti: Add missing pm_runtime_disable() in probe function
Date: Wed,  5 Jan 2022 09:02:20 +0000
Message-Id: <20220105090225.20507-1-linmq006@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220105_010232_496824_5E7682C0 
X-CRM114-Status: GOOD (  10.36  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

If the probe fails, we should use pm_runtime_disable() to balance
pm_runtime_enable().
Add missing pm_runtime_disable() for serdes_am654_probe().

Fixes: 71e2f5c ("phy: ti: Add a new SERDES driver for TI's AM654x SoC")
Signed-off-by: Miaoqian Lin <linmq006@gmail.com>
---
 drivers/phy/ti/phy-am654-serdes.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/ti/phy-am654-serdes.c b/drivers/phy/ti/phy-am654-serdes.c
index c1211c4f863c..b77ef9e0e0c7 100644
--- a/drivers/phy/ti/phy-am654-serdes.c
+++ b/drivers/phy/ti/phy-am654-serdes.c
@@ -838,7 +838,8 @@ static int serdes_am654_probe(struct platform_device *pdev)
 
 clk_err:
 	of_clk_del_provider(node);
-
+err_pm_disable:
+	pm_runtime_disable(dev);
 	return ret;
 }
 
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
