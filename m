Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A6C4C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 11 May 2022 05:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2k7ZwAaSRIuiz/RabuismGibkUlaRZrWdzTRaqeKLWA=; b=T3UzPRw3RSGo5f
	VUbr4Gp/L0HaCtlWvcnqMKHqYSE3vK8H3BbBcG3v9MAnODTEbiyZUQIfBjz5dqcGvkFcuvB2YkVfC
	b+ViIHvIsYOIXtRAbKVboR9y9TqxsmqCUV9mJ16XVhrr/IY29SNXj+kmoDnxreH1yLpwwlGJmJ8CW
	Yc8k0x0ZZLc4mt6h12at9Fe96vOX3kbQYQDbxuvlamOry8WJfztMjNh3ZPA0zeTHMQkgEa7EgihCI
	XuKxAK6xLXCAqODF0Rl4Y6YLYnOrDDMGRj6ZPPNQPQ30/5UEOg3QhGM07psEMCyLv9Mnk5caXNbrE
	nmX5DkOUI0qVYGqgskSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1noebG-005ESp-GD; Wed, 11 May 2022 05:09:26 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1noebD-005ERy-KX
 for linux-phy@lists.infradead.org; Wed, 11 May 2022 05:09:25 +0000
Received: by mail-pj1-x1030.google.com with SMTP id
 a15-20020a17090ad80f00b001dc2e23ad84so3853227pjv.4
 for <linux-phy@lists.infradead.org>; Tue, 10 May 2022 22:09:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0gq3sKC60SlE1+eqSd0WEC2zbcLYJeGd4RWGvL2PnVo=;
 b=L5ekbGaTbHgSsh0r0y/zK4RhBJ+lXwEzBFBByDBax0oQlNdDzs4Nmp8n3gaPjtZLlZ
 QQKetg8TBFkSJ08qx6TUveyXFAdt8DhFDP/9hjKukMvSOV5cC7CDUZJzLaRv40GREyNa
 14FW4YDz86Q5UF49J6G3h9I8vtaX4XZfRRe5N1gucDftFkpVmBiov3KFEX19pbqJT6AN
 j/1NUewVh4sKZrX7j/p+eXzfAxgqV6O5Nek/EERMm7YbPVLtZImC3x65ElfFFCjGmEFi
 P2A060F8R3PhJN6UUHOYUFUwqoHwmSOD2cQ43Se0icrOcSkEO4SAQnlRCRkmxoMCdbHD
 MslQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0gq3sKC60SlE1+eqSd0WEC2zbcLYJeGd4RWGvL2PnVo=;
 b=v39OATlmwXh+0sSiPyB9W0eoAT97QpKXuFTkPGZz4LeC2WKgWu9HW7bmpKBDQDlq8f
 +e2sO3vAVDZ2Z+2WNS7rHvhZRQV5vTkYYMZct/0b+a0kZEygsWq2KBpLwLI5AQnGpnPX
 sbgJoq1STq2S/2uYXkf7gtuw93B08gsuxpgMiscXtNBugllbS9cvgdut9R4Kil3m4Cmt
 ooLp+rP+kzq2Acy8M1eixs2s1bnDez3GIGd28dFteuvkoWhrdhv60s64QUBeSAhe/PDO
 M5t72c9Czj4bqmh7/8IkEFZK+1YSGIWM/owreQeqNWn4mLUQaMhKoipjPcN2FIho/tqV
 sLuA==
X-Gm-Message-State: AOAM532xLoYWsUh5NXGEPiqi5/7DN5kiJC0PWiRJUzS8Fg+Z/hB0EiB+
 mPh0ehgHvHYunKZyD9gTS8o=
X-Google-Smtp-Source: ABdhPJx0pFUFYJjVt28setLfLu4qvNgaY8D2j7D6DoMGcX9NPav0eUXgwrj31VFCo7KV0wUsGF77UA==
X-Received: by 2002:a17:90a:cf:b0:1d9:44ad:2607 with SMTP id
 v15-20020a17090a00cf00b001d944ad2607mr3432138pjd.25.1652245762403; 
 Tue, 10 May 2022 22:09:22 -0700 (PDT)
Received: from localhost.localdomain ([202.120.234.246])
 by smtp.googlemail.com with ESMTPSA id
 y5-20020aa78045000000b0050dd876f5f8sm497649pfm.49.2022.05.10.22.09.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 May 2022 22:09:21 -0700 (PDT)
From: Miaoqian Lin <linmq006@gmail.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Miaoqian Lin <linmq006@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] phy: HiSilicon: Fix refcount leak in
 hi3670_pcie_get_resources_from_pcie
Date: Wed, 11 May 2022 09:08:53 +0400
Message-Id: <20220511050903.42763-1-linmq006@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220510_220923_732635_8EC89909 
X-CRM114-Status: UNSURE (   9.66  )
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

1. of_get_child_by_name() returns a node pointer with refcount
incremented, we should use of_node_put() on it when done.

2. bus_find_device_by_of_node() also take a references, use put_device()
to drop the reference in error handling.

Fixes: 73075011ffff ("phy: HiSilicon: Add driver for Kirin 970 PCIe PHY")
Signed-off-by: Miaoqian Lin <linmq006@gmail.com>
---
 drivers/phy/hisilicon/phy-hi3670-pcie.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/hisilicon/phy-hi3670-pcie.c b/drivers/phy/hisilicon/phy-hi3670-pcie.c
index 0ac9634b398d..01f3090b4372 100644
--- a/drivers/phy/hisilicon/phy-hi3670-pcie.c
+++ b/drivers/phy/hisilicon/phy-hi3670-pcie.c
@@ -565,6 +565,7 @@ static int hi3670_pcie_get_resources_from_pcie(struct hi3670_pcie_phy *phy)
 	}
 
 	pcie_dev = bus_find_device_by_of_node(&platform_bus_type, pcie_port);
+	of_node_put(pcie_port);
 	if (!pcie_dev) {
 		dev_err(dev, "Didn't find pcie device\n");
 		return -ENODEV;
@@ -581,6 +582,7 @@ static int hi3670_pcie_get_resources_from_pcie(struct hi3670_pcie_phy *phy)
 	phy->apb = dev_get_regmap(pcie_dev, "kirin_pcie_apb");
 	if (!phy->apb) {
 		dev_err(dev, "Failed to get APB regmap\n");
+		put_device(pcie_dev);
 		return -ENODEV;
 	}
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
