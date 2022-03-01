Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A195BC433F5
	for <linux-phy@archiver.kernel.org>; Tue,  1 Mar 2022 02:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4IUjwr3pgGex+CfVzI0299VfyYwz+1j6MCdwBXwVWNE=; b=IvylyFy7sdnba2
	uPw+nl+aWz1O8cHpHZKn9TQ49DjPPDqj1IxIJLVFc6lTpPM7IWBoCT+z1sqmd7ojeHKPxpEdY7m87
	ZKFlS0U0NkoDy4QykCnVZopDgY9cBS1P0L3ZAk1ckS2VmBNs5CWVJ6MZ0t9UxbjC9EM5mngyySPse
	OeNtjq+NKitVxM/M0dTCwtVeRu/wt3XQduI5GWcB/ho9hjif3762s0DJeMwMs43vcQP2Rj/SI8BUH
	3ufS5KWRHB8joJjAWEoZhYyuURoacjwJyTBedcH694yRKyVNIGX/B9BPJVSwSazOF2EYTzBGI4Dp6
	QOHxEBmk8ATkg/CanfOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOsj9-00Eki5-3T; Tue, 01 Mar 2022 02:59:03 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOsj6-00EkhU-6f
 for linux-phy@lists.infradead.org; Tue, 01 Mar 2022 02:59:01 +0000
Received: by mail-pj1-x102a.google.com with SMTP id
 em10-20020a17090b014a00b001bc3071f921so886167pjb.5
 for <linux-phy@lists.infradead.org>; Mon, 28 Feb 2022 18:58:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=FecKxYpeO4n33xmiWqk9SqIey10zNBseQvud/vQ/vV4=;
 b=lfKVovcp+PqFLpajm0E9k0CmuzDdMIetRtBohZJaE4llFH787CTue4wRl+PhuM8way
 hd23HpY/jOTSqeTjrRNAYV4A3pIlvcKBQzACDs/9yp9LvvVy782g7aOGUOw5bvog73vF
 2BM7zjSQ4KzwiKW0vMvHx9cwkGxzlWfqql03Zk6YTl/4SInbuXhCOLL9UgGYGCsJygu3
 lp0ttaKCjFQW2Hql3VZSpTKvdXQAj5I8ZLrH4mvK4JDscoRGCHXe8UxY4OlpBDFrWSHx
 XFin5JcUn/1kiOViJ04N3yiqc+beW5oNasMZqKuTmXXyyeRW50zO4sm8gvALyFNdgnXo
 bEYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=FecKxYpeO4n33xmiWqk9SqIey10zNBseQvud/vQ/vV4=;
 b=jUBJuJ6EYQFNhV+S2bSrRmnAqAs4HQ9AxcUr3lHt39EDmt6BPUJjNo6GlLGrNRDO0N
 NiIFR2ix5EfEo6tY145cbhcV5G1JtdtxyNKhXrcObLtxrAgipLGq2hBk/9ijd/Wnhnhl
 QO0fjkeJWxD7ozfv0dTjFhbYzoJksIWCpcr7/oOvGmhkW8OO76FMrOUcLUnJFtkYeCUo
 lrJ7FywGkLFCxD/64fTuUvpiR1KSwEymG78hu7GwdXEH9zPccJTAgE+a7Wc06tzl6H1m
 trWEpTzvZr1C9Mq0mOoLF0eg0a6K3u3w8QOetmiRrYZn2m8mmBIVEgzwf5K2wAkGsIVT
 RL2w==
X-Gm-Message-State: AOAM531zuOF+a68V1UjR3p+U0duBcKrp9KEGExU3WnMaQVlHG2xyAbME
 coIOegt4Vim7H3E6GTC5j75viD08eaHyMN0x3Oo=
X-Google-Smtp-Source: ABdhPJziG+6HlY/JbmxxcP3vpoRkHmZT5wZLHw8bsPXRk3/LgxhY/IAfiUAngyYQ7mgDz6jOJnGwnw==
X-Received: by 2002:a17:902:8d84:b0:14f:83f2:8c0d with SMTP id
 v4-20020a1709028d8400b0014f83f28c0dmr23529356plo.110.1646103538517; 
 Mon, 28 Feb 2022 18:58:58 -0800 (PST)
Received: from localhost.localdomain ([159.226.95.43])
 by smtp.googlemail.com with ESMTPSA id
 k130-20020a633d88000000b00378c359ea29sm2490541pga.12.2022.02.28.18.58.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 18:58:58 -0800 (PST)
From: Miaoqian Lin <linmq006@gmail.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Miaoqian Lin <linmq006@gmail.com>, Randy Dunlap <rdunlap@infradead.org>,
 Roger Quadros <rogerq@ti.com>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2] phy: ti: Add missing pm_runtime_disable() in
 serdes_am654_probe
Date: Tue,  1 Mar 2022 02:58:49 +0000
Message-Id: <20220301025853.1911-1-linmq006@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220105090225.20507-1-linmq006@gmail.com>
References: <20220105090225.20507-1-linmq006@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_185900_251383_4F2C18B5 
X-CRM114-Status: GOOD (  12.33  )
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

The pm_runtime_enable() will increase power disable depth.
If the probe fails, we should use pm_runtime_disable() to balance
pm_runtime_enable().
Add missing pm_runtime_disable() for serdes_am654_probe().

Fixes: 71e2f5c ("phy: ti: Add a new SERDES driver for TI's AM654x SoC")
Signed-off-by: Miaoqian Lin <linmq006@gmail.com>
---
changes in v2:
- remove unused label
---
 drivers/phy/ti/phy-am654-serdes.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/ti/phy-am654-serdes.c b/drivers/phy/ti/phy-am654-serdes.c
index c1211c4f863c..0be727bb9f79 100644
--- a/drivers/phy/ti/phy-am654-serdes.c
+++ b/drivers/phy/ti/phy-am654-serdes.c
@@ -838,7 +838,7 @@ static int serdes_am654_probe(struct platform_device *pdev)
 
 clk_err:
 	of_clk_del_provider(node);
-
+	pm_runtime_disable(dev);
 	return ret;
 }
 
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
