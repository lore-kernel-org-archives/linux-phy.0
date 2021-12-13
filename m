Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D1ACC433EF
	for <linux-phy@archiver.kernel.org>; Mon, 13 Dec 2021 02:05:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NCwlpiBGMKDmwmwa9U6h/7uLNmu4FPPdAdjfn4xTINc=; b=kVOvXY9LNhKaBL
	TD8jIkXQkBdJI7A/EsFs7fl7bXdQNlMUwbieb/6bIij9HLOat86APWOTUPYO/0vHaxS6SqgenPKNo
	F/RC/q6B6Sbx33d8oUt+1nA6jjonpYq+muu98MzvmIczWtPY3JkCAfEZIQrKjtJ4B/VFCmaHwm3co
	ATa3o/4zzQZljzNMozDRzJ2bdY74jQXDdM15sX9+PbB9tQlohIj+3lY42QjXWi1jvGrsypiHIpbOj
	rIlflSq0I1SiHGyS3hsNuCFkjVS5kgRenVwr1OQdQF4Tu015MZ6kUdOyP5fFyJmasBjPYnkbCzwyi
	VeTGhgvmurbuSHAEOjYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwaiR-007ciz-Qm; Mon, 13 Dec 2021 02:05:23 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwaiO-007ciN-RE
 for linux-phy@lists.infradead.org; Mon, 13 Dec 2021 02:05:22 +0000
Received: by mail-pj1-x102a.google.com with SMTP id
 k6-20020a17090a7f0600b001ad9d73b20bso12100176pjl.3
 for <linux-phy@lists.infradead.org>; Sun, 12 Dec 2021 18:05:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZfMoG6X9oBnz9vgJgatuWr3jCxlugYsFtu5GcGk49Mc=;
 b=g5vVjsFJHe9o2GHUu4E4+Su0ye9H6m0xqBM+DGcgJdmD+IQiPo5zQOKiiu3Ft8IEbs
 zHBPcspyJeEVAOVSDs2hxq1G/V1lyQek5p3oHS1dZyT8RP7vge/6jUa6z80deAs1Escm
 KqNH4YQYYqjvsvPSnV6SWPkr001GcVsgSdjEFRjvtNIj2v1zh6T6pGwoXAu/mvU/j8mu
 clkhoeQjghjlwBf+ck+uSZ7G8C9C2J5ffNXHE3/4ge0i35niKH7wy0bTzREkA1FL7pRJ
 fN/vq9LkR1bWZKCXUf7BDqsOkx/FL6fldEAA6rmuOO1A6EuV7igYRYWsRMTT4VOkmRZC
 X2aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZfMoG6X9oBnz9vgJgatuWr3jCxlugYsFtu5GcGk49Mc=;
 b=k+GMVReW+dHeeM9oKNsGXyFku2pJb6fbbPGqrfbgZkrk4ohL78uN1SaNrDas2jMPRu
 BXFyqudD4uxsuhyXCc5dZ0zRncM2EtT9ByklqaHxC0CKUDMyH43p0fe+qo9Lr8sDyBfD
 NDoPbVzeE8IqjhgMaUFh1QZa9KpzhZe4VkmSpZD3xQ0XkLQiQBqjBKBW/rmf6JB/X83Z
 PXrWbI5F6QgvN6dRF0CqfVHyOorcMcqsLIWdRZioGrOQ5qpQ21KMam+og3JNYRzQ227k
 rmaojG0fb/iG+EdOKs6n2CA5BynaJtJ8nwOaQW2c8oYdKEFK81FdJCTB2OWAUVfYSOUr
 9PWQ==
X-Gm-Message-State: AOAM530+CljRhSbUpOSeByUk37cmyMiLkJhB85gS4AdFCAA+uQwMV/fH
 1e+q8NwiF2LB5T8JYWc1GhA=
X-Google-Smtp-Source: ABdhPJxXe2sVfiehDtu1Fli3a+yt3W24vxsc25t6eLYydxx6kbdIMIr5thbA+poPOAHvKPLb0sj9Cw==
X-Received: by 2002:a17:90a:ce02:: with SMTP id
 f2mr40408011pju.77.1639361118786; 
 Sun, 12 Dec 2021 18:05:18 -0800 (PST)
Received: from localhost.localdomain ([159.226.95.43])
 by smtp.googlemail.com with ESMTPSA id
 s28sm11278915pfg.147.2021.12.12.18.05.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 12 Dec 2021 18:05:18 -0800 (PST)
From: Miaoqian Lin <linmq006@gmail.com>
To: digetx@gmail.com
Cc: jckuo@nvidia.com, jonathanh@nvidia.com, kishon@ti.com, linmq006@gmail.com,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-tegra@vger.kernel.org, thierry.reding@gmail.com, vkoul@kernel.org
Subject: [PATCH v2] phy: tegra: xusb: Fix return value of
 tegra_xusb_find_port_node function
Date: Mon, 13 Dec 2021 02:05:07 +0000
Message-Id: <20211213020507.1458-1-linmq006@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <942f943c-9ec8-9887-aa6d-4d133821beca@gmail.com>
References: <942f943c-9ec8-9887-aa6d-4d133821beca@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211212_180520_906419_96F8E43E 
X-CRM114-Status: GOOD (  10.76  )
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

callers of tegra_xusb_find_port_node() function only do NULL checking for
the return value. return NULL instead of ERR_PTR(-ENOMEM) to keep
consistent.

Signed-off-by: Miaoqian Lin <linmq006@gmail.com>
---
 drivers/phy/tegra/xusb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
index 963de5913e50..aa5237eacd29 100644
--- a/drivers/phy/tegra/xusb.c
+++ b/drivers/phy/tegra/xusb.c
@@ -455,7 +455,7 @@ tegra_xusb_find_port_node(struct tegra_xusb_padctl *padctl, const char *type,
 	name = kasprintf(GFP_KERNEL, "%s-%u", type, index);
 	if (!name) {
 		of_node_put(ports);
-		return ERR_PTR(-ENOMEM);
+		return NULL;
 	}
 	np = of_get_child_by_name(ports, name);
 	kfree(name);
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
