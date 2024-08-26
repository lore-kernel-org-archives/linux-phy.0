Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF012C5321E
	for <linux-phy@archiver.kernel.org>; Mon, 26 Aug 2024 10:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IlaVyCZpTYHMhZKBJ1ea7Z/dGs5DaLDwNxqTwJKvBTg=; b=xHAyFbU0AcM9+S
	lDOSDEfHDXiQrvcRm7MAT75rNZxcrYOc4W9Fucgm/Q6oJsbOsLSRaXBtWvme5drv4NJwv1OCThjLY
	C6qozmhjMULy6J51VlqPRiXw6Pn5Ch8zfwhc6v61JILz3EKVSlHdoy3ENf9qy53IPC1ZvQYOXIPEH
	jm/zpwo2LW6B73Idp1ayXHszzqjQGSdbANWQJJERsU+LP4jHd5tCrRyOgrRAWy36hVd/67M8UN4f2
	5WnltLzxvDpzVO6CWpCNobakuSOFwCK0iDhg3W93cDPxEZfxoBElvP6r5c9PoJvFY7X848IPvj/vj
	HWrviMl8uOh7ihG7I3GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siWi8-00000006rwo-1xXH;
	Mon, 26 Aug 2024 10:12:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siWdV-00000006qgr-2cV3
	for linux-phy@bombadil.infradead.org;
	Mon, 26 Aug 2024 10:07:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=g4NvmLlxu/k307IUSr+vlW1RyZ9QbfRpgymkG5UhSlQ=; b=U0AHQ2RuIwX6tteouOmj286hyo
	TMr9X6DKTvyFTKP2+qt6uRaavqv4n/Prz6ePl9vmB31ofoBCidkQmp4p8uZGqiHdoyb8m1eJBjqF8
	aAOuwXYkCFEKdphuOvI9SAgcYsr8O6q1Ly8graFWdc8Ig/OrcK6mCZ2AMjgwlCfjpWICFZVcgb7fj
	aE3di6+xXaDHmLVk80BLfgx5yh6RFhODUKcCgoRjvU9pyPYpXvL/gN7o1+5gOxVxYqu1qzdlT+wzJ
	zkGnuA7EuQTm2cO/h8V918FAM66mFFZe7b8HA+8E7CnVZHYhzmnNXZVKX7/GjKzWqBP8NkDZeeRJ/
	Gg32QSFw==;
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siWdQ-0000000Ad81-3kiV
	for linux-phy@lists.infradead.org;
	Mon, 26 Aug 2024 10:07:44 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-4290075c7e1so5145425e9.0
        for <linux-phy@lists.infradead.org>; Mon, 26 Aug 2024 03:07:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724666858; x=1725271658; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g4NvmLlxu/k307IUSr+vlW1RyZ9QbfRpgymkG5UhSlQ=;
        b=D7/xYm6ygmlaJsxxmtMohOEAVA4f7e4UsqzstO8BCqhICtjBhuHEp4bP4MFaxipKS9
         c6w1Hcs68Dq2NuHhisQL7L4py0GXgcKmCmmo5fUYDf64d2wuouciI0qzsQqJ95zD00ut
         JiQKl+De8AIUXKkV1IoFYbm2vLtuwx8UPGCDn6NNlmW0v04t4ldl9EdPNQLKGpSyi9Fd
         h9JUPqIkdhe4TrJV2otI3z/pC3ud6nai7yyVeRlbCA+wxPXG9kqZwjP3O0D05NDADg5K
         vVxedJe1QYhJaIO/7xXg1OJl1hGxGhhZGfzkDIijacGpOrxcGThoMuQNQhx3b5oMZjSw
         7Wpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724666858; x=1725271658;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g4NvmLlxu/k307IUSr+vlW1RyZ9QbfRpgymkG5UhSlQ=;
        b=dkTmMF6A1Zzf8bUzXHQR3DZ6l6tPe/kSyOuHsB7jx0LN8joEhzGIWhdlByEykBW4yQ
         Xa/muTveUqylRZ1jfZPg+xv9mKG8LLr7cWCk1aNIvyZKu0GAzkRxPkw7FS3OFSv31s9T
         8QIshEfzq5QPk57ASLOk4gWh1k3WbB6CHtKLnmJ+nPYg2SBTTHpGE6mRUoestkIl0xik
         rf4RSzEc4OOPdr5QgxAqCnYgts8VD1QR4pohYaZY2em69jwp6ur8JXWCFpXz67lj9Ewo
         p7v0iVX25rJHoQsG6sYou0Lyn39rjVILko7UIu0Cjn9jCV1mjiuU/jmRue6rq7FIA27U
         tJ3g==
X-Gm-Message-State: AOJu0Yzdo15W4k45KuFI6HFF0tEEVc68A6Ezp7YQnAw7+++n7W8ocZt3
	cPBxtW74I8dIUOHTior/VUu3gu/lbshbkK5UWyXGhgf68gfPAl5VNYpeA+R7ddX8DAE+dewznIG
	N
X-Google-Smtp-Source: AGHT+IFw9/YOcCZ4U7WA87IeV+RhOZP4bUxwWYn8Wb7oiTEYe4Ohe64MYDaPtt1DLAHFY/viNcl8kw==
X-Received: by 2002:a05:6000:402a:b0:367:4d9d:56a6 with SMTP id ffacd0b85a97d-37311842d2amr3539393f8f.1.1724666858308;
        Mon, 26 Aug 2024 03:07:38 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37308110009sm10324821f8f.18.2024.08.26.03.07.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Aug 2024 03:07:37 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 26 Aug 2024 12:07:20 +0200
Subject: [PATCH 04/11] phy: hisilicon: usb2: Simplify with scoped for each
 OF child loop
MIME-Version: 1.0
Message-Id: <20240826-phy-of-node-scope-v1-4-5b4d82582644@linaro.org>
References: <20240826-phy-of-node-scope-v1-0-5b4d82582644@linaro.org>
In-Reply-To: <20240826-phy-of-node-scope-v1-0-5b4d82582644@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Ray Jui <rjui@broadcom.com>, 
 Scott Branden <sbranden@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 linux-arm-msm@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1786;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=uw0Pf+zldgzboru4goVYRFCRCYr8alqMpX4Y+JIze8E=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmzFPb4sshkjU2CA9+XXXwCTRdCMdijvb6c9Og6
 nYQj7pay9CJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZsxT2wAKCRDBN2bmhouD
 13HXD/4pvENOHQUutqEqhtyXsdoTSjcrpUUfXLAHO6/21A1P+HQwDV6r4fVVRJN+4aUHynnlwXw
 GopDkMKpVV2abQ/lO5LqbUkMMvXi1M9o6QNEGnzu2scYkY+OVy4MT4Z2EK2zvjR5Fr6V9ICc7C6
 MoLxq+uREB5PWt23Z6GkcU86pc45o7ZiNHR9jwfwCXYRvJr/5mUkFXq08RZVzuHcMBtFiPxN5qL
 nif11Z04T3flhl4Zz+5zF7ciAB61V1d0DxFDBiMRVlgvBjpt2drTsYvNwlpdZMAeGYRTRUKqH36
 D5CFi+A3qFLoCpEKnu3mO2vhk9rwc3a9o5Mhf/wP6A8ivCt6hNJztUKLrbmhg4RNdZ0ME/e0R/+
 D2U0wc6Ig7cchhg3q0CSw9qsId2CBEnDjdxB3guCj0qCH4UkFrPwpfS7me8CQvi85Pb3Zd1VC9A
 Q347IbJLWq4RSEl2uNBC7eNv44Em7byvi6+84nUAjpG3ValeHjvjLwMs2db5G2ZmzAM2pCR1YfT
 pcdYwuwDicAdmXdNmDaQGWWdGisY6Ar6Ij3s09BWqqS6XfgG5sZ8O28puUNgcQvMc2MWoh0iXez
 GGTUDZrNnEJYSEa8sU3rRg3Xfy3NwR+S7QmmV/zP0ztj1PHnbRI3QzquMymUKGaJnm1Lxwa6K+y
 JtdTYdv9csoe90w==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_110741_129357_30D393D5 
X-CRM114-Status: GOOD (  11.73  )
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

Use scoped for_each_child_of_node_scoped() when iterating over device
nodes to make code a bit simpler.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/phy/hisilicon/phy-hisi-inno-usb2.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/phy/hisilicon/phy-hisi-inno-usb2.c b/drivers/phy/hisilicon/phy-hisi-inno-usb2.c
index c138cd4807d6..c843923252aa 100644
--- a/drivers/phy/hisilicon/phy-hisi-inno-usb2.c
+++ b/drivers/phy/hisilicon/phy-hisi-inno-usb2.c
@@ -138,7 +138,6 @@ static int hisi_inno_phy_probe(struct platform_device *pdev)
 	struct device_node *np = dev->of_node;
 	struct hisi_inno_phy_priv *priv;
 	struct phy_provider *provider;
-	struct device_node *child;
 	int i = 0;
 	int ret;
 
@@ -162,24 +161,20 @@ static int hisi_inno_phy_probe(struct platform_device *pdev)
 
 	priv->type = (uintptr_t) of_device_get_match_data(dev);
 
-	for_each_child_of_node(np, child) {
+	for_each_child_of_node_scoped(np, child) {
 		struct reset_control *rst;
 		struct phy *phy;
 
 		rst = of_reset_control_get_exclusive(child, NULL);
-		if (IS_ERR(rst)) {
-			of_node_put(child);
+		if (IS_ERR(rst))
 			return PTR_ERR(rst);
-		}
 
 		priv->ports[i].utmi_rst = rst;
 		priv->ports[i].priv = priv;
 
 		phy = devm_phy_create(dev, child, &hisi_inno_phy_ops);
-		if (IS_ERR(phy)) {
-			of_node_put(child);
+		if (IS_ERR(phy))
 			return PTR_ERR(phy);
-		}
 
 		phy_set_bus_width(phy, 8);
 		phy_set_drvdata(phy, &priv->ports[i]);
@@ -187,7 +182,6 @@ static int hisi_inno_phy_probe(struct platform_device *pdev)
 
 		if (i >= INNO_PHY_PORT_NUM) {
 			dev_warn(dev, "Support %d ports in maximum\n", i);
-			of_node_put(child);
 			break;
 		}
 	}

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
