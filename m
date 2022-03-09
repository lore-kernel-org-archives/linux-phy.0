Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 692A3C433F5
	for <linux-phy@archiver.kernel.org>; Wed,  9 Mar 2022 12:49:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b1q1p9bxkBbch/0P/P6SjApWQZx2On9FOsZMjnfpow0=; b=NmPUZRCF8SSFMg
	VEFlaqdZnD0gNvpdG/gXx+MR4zaU6wQBBJnwRUR23/WdFghyJ72DkGBov2EtRbFNEsgFiqc/ywW37
	zBlNAKwhuyn1X6lwWyl3Gu1KAy5irijag9/0bb7mTDys8JKEPW/dTaLTsZwz5kUQ/UDMn4W5L1dC0
	PKp0FvN0zVcJaEOh9hA+abdOzfHRI+INnKwvRDesy4OGM9OVGDE1V2wLrL7rjAfZLHkjsxjYTau0x
	oK1IRV7aOgNLcyKxrcnUk+2Ns9mOfcb2zW3jV67K/t4qzwqmqE1y5Nt1DarIlIyLiCiuNJdWNESGs
	dGDCuvjLf+WdBbK4VQdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRvkY-008dI7-Rx; Wed, 09 Mar 2022 12:49:06 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRvkV-008dGx-GI; Wed, 09 Mar 2022 12:49:04 +0000
Received: by mail-pj1-x1033.google.com with SMTP id
 z12-20020a17090ad78c00b001bf022b69d6so2217279pju.2; 
 Wed, 09 Mar 2022 04:49:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id;
 bh=gmzfDc79SJaw0O2J8OrdJVxDniuiRhZZSCsFjJqsgqU=;
 b=hqHHbC4f33ri/ELlINMm1EGRqrT6SfD0ZFHEaHa0Zgu6ZHRJIpolnRhwLLG6NAPkbZ
 HHqltR8DP748UgQc8n/vfGJVT0W27pKIHw+/Ib9zBSDe55UbQKPjCkNC9zxtlTtKBK7M
 qCevSfewjeIT023qhBz09+5y0mbg5k6WXWTZaMbpWP/+kIB/4VPxAspE/eVXPKrofxbC
 Jd614Xt+Nhv4TTFNK+vNKWb0Z6JG7e9XjHrq2U/1UbIGWr/Om4pvWKvYQ+foRwUSsMjI
 gRRl9qSVS8X6eDQ6bDPRaSQFbJAws8EaQV5aSzPi91rsTEeKhE6FpnRxwqpQ7vP320rM
 wjhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=gmzfDc79SJaw0O2J8OrdJVxDniuiRhZZSCsFjJqsgqU=;
 b=w4T6YZknkvQCTQgVn/jnZCqNkO4VkiQKNK/kGDEH5/dUHUeWG3X2s0cTJUSnrf8vb4
 uNXOMtZJyO05mBltuQ/diBHzC+AQpe3si5m8bUQGIE6eD2ZNb5dDZ8bhLh4Hggy2Qdr4
 kma6aUbRugLO1rOlcQLDcbxVfsFvxJwNF2PXdXZU1zIIJf0/gpruORKqrgZeQgDD2V9J
 U/UpS/2BvcTdqqB3osoAncgzTmybnAzZdeH5W1RNMpwOd2E1HSirStoA4+7j1qRbVhzK
 w5RRcgBP9CyWk7qbjFjl+0Mu05MhMrxCGXXX8jv8GnGmGDEVtEuhL2zd0FQYaEjku0kc
 SvyA==
X-Gm-Message-State: AOAM5307kKhk/Alr1WRdMCv3ddkGLjX5t/LZhAyFVbKW4G08Ylyd1fDP
 6iE7YFJXGWeFHoeCC8z6J2o=
X-Google-Smtp-Source: ABdhPJwy69AcSthvPd1Jwa4D/eCjVma76OudGhtMQzni4PgKe7zYNLgFb6mVdJmX/5YGFr/o8D6oKQ==
X-Received: by 2002:a17:902:ec8d:b0:151:cab8:9aa9 with SMTP id
 x13-20020a170902ec8d00b00151cab89aa9mr22320338plg.173.1646830142783; 
 Wed, 09 Mar 2022 04:49:02 -0800 (PST)
Received: from localhost.localdomain ([159.226.95.43])
 by smtp.googlemail.com with ESMTPSA id
 h18-20020a056a00231200b004f72b290994sm3083024pfh.180.2022.03.09.04.48.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Mar 2022 04:49:02 -0800 (PST)
From: Miaoqian Lin <linmq006@gmail.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Alim Akhtar <alim.akhtar@samsung.com>, Miaoqian Lin <linmq006@gmail.com>,
 Girish K S <ks.giri@samsung.com>, Vasanth Ananthan <vasanth.a@samsung.com>,
 Yuvaraj Kumar C D <yuvaraj.cd@gmail.com>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] phy: samsung: Fix missing of_node_put() in
 exynos_sata_phy_probe
Date: Wed,  9 Mar 2022 12:48:52 +0000
Message-Id: <20220309124856.32632-1-linmq006@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220309_044903_563048_03213E1D 
X-CRM114-Status: UNSURE (   9.61  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

The device_node pointer is returned by of_parse_phandle() with refcount
incremented. We should use of_node_put() on it when done.

Fixes: bcff4cba41bc ("PHY: Exynos: Add Exynos5250 SATA PHY driver")
Signed-off-by: Miaoqian Lin <linmq006@gmail.com>
---
 drivers/phy/samsung/phy-exynos5250-sata.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/samsung/phy-exynos5250-sata.c b/drivers/phy/samsung/phy-exynos5250-sata.c
index 9ec234243f7c..6c305a3fe187 100644
--- a/drivers/phy/samsung/phy-exynos5250-sata.c
+++ b/drivers/phy/samsung/phy-exynos5250-sata.c
@@ -187,6 +187,7 @@ static int exynos_sata_phy_probe(struct platform_device *pdev)
 		return -EINVAL;
 
 	sata_phy->client = of_find_i2c_device_by_node(node);
+	of_node_put(node);
 	if (!sata_phy->client)
 		return -EPROBE_DEFER;
 
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
