Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B87FFCCD1BF
	for <linux-phy@archiver.kernel.org>; Tue, 28 Oct 2025 06:25:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OYFyRQ/+uRw0af17aDSshPWIT4pepxxnVPnkBiiKzgM=; b=YRqludCzXxnuEB
	XMQzf1KygoENaDN/OJS1MzE/fOdVGvSfoUDD7YCpNLP8zLmSvLzIcNvYflMJBQsImIYyzEajHtnSI
	8EuXJ09OQnmrVUiR75+b8643MVvE5lkxRsuQVkWnhjyZfh5PMGa/4iPhlDmABu6gUeZoB6I430vk3
	/XKOqF13LNjHezFzzm/68WrijwF0BkHrjXviN/MfimZyiyQWfI73Quriz51QTuXw+63mO+1ZMJ8n9
	EPXQ2huEOLSwXWKrHGGQbqI0UJ4PT5+mey/sgq100r8TRyV2QnEZcS/u7WyuHG64H+wnZArvqCn4L
	fwt2z8w5Dw4RKDZcYr8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDd94-0000000FKhM-3ick;
	Tue, 28 Oct 2025 06:25:26 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDd92-0000000FKgg-04pp
	for linux-phy@lists.infradead.org;
	Tue, 28 Oct 2025 06:25:25 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-26a0a694ea8so39697335ad.3
        for <linux-phy@lists.infradead.org>; Mon, 27 Oct 2025 23:25:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761632723; x=1762237523; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XLfGh1leNUsZjwbIktpxp1n7uZcLFRPeUCzP02QzPMk=;
        b=Lk7QYIpn05ivJ7ZRW2++L4Hre5sMCHj88COsCU7DJC1x4UV2EQGXfSk726mk68lC4E
         MGRyW7cdOyrKHzvmiJe5p1/LumikYop2KVSwL5OyUbHCKhip4byRLS8hgAvFl4vFc3cd
         9UahStK860gxGc3QYBuLgmfPdhSAzG6pJce5RCdfVd7BJ3MUryt5RNwSNJDmF+oXmD+1
         z6sE4wwVW/3N8pgg959pEcl1pWNWuYBTacM69x/p5PgWfgXlRYtcdw0tnuaGiMUZn9jl
         tScrIi4/+RevwjfYTaO+MNGLMJ5/h00EOKipAXQvCwISqcQRC0p9rDN9EqychNF7pKTW
         nS2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761632723; x=1762237523;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XLfGh1leNUsZjwbIktpxp1n7uZcLFRPeUCzP02QzPMk=;
        b=GnHTW0KClAZ/rbFTz7s852PDLWs13B9AQN+QKnKsoyjct0jrni02W84VSW/CYny2n0
         RaSPUnLOgivsLDqhxegsNEt5kWAurEhX2yAfnqCpurDyzg2uAtdOXnyOC61x7X3aJ9YW
         357iQ7dUkExkhWokwPYCLRJs4NiZn+YkzE3DaWO5otBlfhet+59cJrV1a3byLbYZS9pv
         LWEyr/zZWo6ChO0/k+W39EvMlZmoLMHFnA4wGUaWKGEiCB16dWI2ik6rd2k2SrdQpf/s
         AMO/P3ha4BdxkcWKlwDUm1H01DALOhP4RJwekUIgux2mxY9CQCNYWVnjKi8DzMihesim
         XR5A==
X-Forwarded-Encrypted: i=1; AJvYcCWYWbUM3EzqSaG3l5i7ydbksW6oMOYbfqyR8ntLLCRUIeTzPYUmJt++CqfFleNrZZrEaHMftFJ7xjw=@lists.infradead.org
X-Gm-Message-State: AOJu0YwzqjyMXee2xNUgboQOLZ5w33uIAb43xEg8bPwDvaA6JDzZxx5j
	5zAw4NZgBDY0CMuIOHG2CVEGM5XNNOn+y2PL2VRSYS2nI1g71NSgEVs+
X-Gm-Gg: ASbGnctlu+qENVCeAUKK/OJtLF6VRXXQgolz8g/2TC/DqZO3MbZz2n7riTrPbw5+zVF
	hk7+UDvORJla7iQG5or8ji5pihQCV8WAwm9Zgp0PPJizJNbU+u0NPD4PQ0TOIHOaRCtb8+QZeJL
	u25iFbgBa5TPNzlayA6sugQwn2z9V4areEtDjlNnMdHsd9rPXlTBIiU1Y4foQp4nPsTZCZ0LMIv
	jcxwKD/rhD6Y2ZPpt/4rTfYUuCm+aiJbqLHSbbc20C3+rUk8X5tR0AomLXDACD3X4LIZOWIa87Z
	9erKsylugE/I250Jp4W9WnQeeRCx9NWqG3l6o1wHBiD+gaL9LCMuebTxNH5jD3vXSPtJ0/ep0w5
	3CbEi+ZgzsZYuYOElEPimVUPCI7NdpCjzkRXhomMZ0jFITvx2AJUQk8mJVxb1meqGeQq+wlt8Wx
	UeU5LAjOs/mexH1EBCYkFEQ33Ya8EtmWni
X-Google-Smtp-Source: AGHT+IHSAuBgHpUbQhJC9STJdSs05Hy2t30Op7zl+T/wUnVSBrW32g8WMe3rf9WtP6Q8+DGepqzUJA==
X-Received: by 2002:a17:902:cece:b0:24b:164d:4e61 with SMTP id d9443c01a7336-294cb378c42mr33310415ad.13.1761632723109;
        Mon, 27 Oct 2025 23:25:23 -0700 (PDT)
Received: from localhost.localdomain ([124.77.218.104])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-29498cf3bbcsm103004975ad.15.2025.10.27.23.25.20
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 27 Oct 2025 23:25:22 -0700 (PDT)
From: Miaoqian Lin <linmq006@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Johan Hovold <johan@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Roger Quadros <rogerq@ti.com>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: linmq006@gmail.com,
	stable@vger.kernel.org
Subject: [PATCH] phy: ti: omap-usb2: Fix device node reference leak in omap_usb2_probe
Date: Tue, 28 Oct 2025 14:25:06 +0800
Message-Id: <20251028062508.69382-1-linmq006@gmail.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_232524_718882_C56F0113 
X-CRM114-Status: GOOD (  10.20  )
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

In omap_usb2_probe(), of_parse_phandle() returns a device node with its
reference count incremented. The caller is responsible for releasing this
reference when the node is no longer needed.

Add of_node_put(control_node) after usage to fix the
reference leak.

Found via static analysis.

Fixes: 478b6c7436c2 ("usb: phy: omap-usb2: Don't use omap_get_control_dev()")
Cc: stable@vger.kernel.org
Signed-off-by: Miaoqian Lin <linmq006@gmail.com>
---
 drivers/phy/ti/phy-omap-usb2.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/ti/phy-omap-usb2.c b/drivers/phy/ti/phy-omap-usb2.c
index 1eb252604441..660df3181e4f 100644
--- a/drivers/phy/ti/phy-omap-usb2.c
+++ b/drivers/phy/ti/phy-omap-usb2.c
@@ -426,6 +426,7 @@ static int omap_usb2_probe(struct platform_device *pdev)
 		}
 
 		control_pdev = of_find_device_by_node(control_node);
+		of_node_put(control_node);
 		if (!control_pdev) {
 			dev_err(&pdev->dev, "Failed to get control device\n");
 			return -EINVAL;
-- 
2.39.5 (Apple Git-154)


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
