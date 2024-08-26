Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CCE6C5321E
	for <linux-phy@archiver.kernel.org>; Mon, 26 Aug 2024 10:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ud1KXc1doufvLKM0Cv1Kn+xknTQScxAOeAF34FdmDk=; b=0AsRvPTCYNeKmE
	chsIxxqleeey95wW2WWWSUPUnUpliQb6mJyhDQJym6cmopWwW1csuO2YC8OnsHh76xy2sIWMfL6ok
	WIZctf/huT5Wvr3998VlYZDn7ATHWqnWAr4K+CZeOD/T8DylLeQAuIp0KedQtwd4z253hYwvKw4Gk
	lGXfkENiZufUubTpjLv5Eq0YAGgliEytRioH6XtFjDRHuMtZmYWgSSXU1XkoS7DCEdnmYIKz4ouvB
	2FpuM01eYANA2N96tILMPamk9yL1O4E5zcfkcxxgbZ+OXhCyhOL0batnmvK4oxPK2TwUWmconpiI3
	JkbBNVQVK+20Ix86z/lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siWge-00000006rga-0d8I;
	Mon, 26 Aug 2024 10:11:00 +0000
Received: from mail-wm1-f49.google.com ([209.85.128.49])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siWdS-00000006qeT-0FLF
	for linux-phy@lists.infradead.org;
	Mon, 26 Aug 2024 10:07:43 +0000
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4281da2cdaeso6294155e9.2
        for <linux-phy@lists.infradead.org>; Mon, 26 Aug 2024 03:07:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724666860; x=1725271660; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0GaYhvDqOLdQ0LiAwBiqvznHKPRO8c0nk7Yc/S2Se7Y=;
        b=MvCTcrkK2YPnuDRm1EeDmg/HS0THLimgf/QT4lu6zwb1kFWgEC3rGmZ+o7EMandpuH
         TV1FNjZouJRSY3fi2uo+yOkIdNirq6qXdQVK0Vw86dizBl7gGBCv5i0cNkN1USz6GGNN
         +rFgAlogPvFu3PTN4Eu2uqw18GXNREdVMvMXn1qy6H/vLYw+k1IGfIifDmJVGmGyOdsB
         KREVDl6KUySHabjskQEa5LqligG90RXqY6WcN9wMDhgOpcaaC8E3+StBt0prggXFbBwG
         2XEwplkrv1bB8P5G8ixn3DOwh4TIGNVwvrzOCWvNNKkD7t974zCM8eeWsPfphReidHjy
         IZhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724666860; x=1725271660;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0GaYhvDqOLdQ0LiAwBiqvznHKPRO8c0nk7Yc/S2Se7Y=;
        b=epMtvVstBfud0OhXsQqI7HbBcyE0tEthKnemgJZQgPtgtQizR9kIPISpwpHB8u+Su3
         pUCar+S4esQOG4UCCIrmYln46yvO4CDfsCKF5H1FEsFpa63VbZW9WUDsyVbNnLbCOr5S
         VEaui8xOTKs89pfHDmxMg9WsDRk0vpnZMvy/lBK1fh6qAvBolTyOknotO/c6ULkL7T2v
         Dox8myyNoD1pc4jcACBY6mLNGRNVQ5MCZods5NhzzODoeG2mpsIHoxj/FGwKKy2cQMu9
         0BfRxTKnkNXcVC2znhYlf48oCwqSQYoDVTIdLpzwSFaYkXZCz9tAjzZiGcs08FO2yh/7
         YpEw==
X-Gm-Message-State: AOJu0YxFHfkNJDl9XMhcjdlTNBCl3QHhtXg0fKAAfkWVYr9wiWVJGkeW
	rPYr/gdz7/grsSAzs3xVl6/uW1UI55yMvZ+HUMrNJaQjfHohdTmPj32VxIxJZ0g=
X-Google-Smtp-Source: AGHT+IHAE0Rm2NAn+4wjgcKvkxwPa4s7aWdk9L4hMBcsuf6xx9Pm4Kt8Ws0+LEPOIoRTC/kzupBvqA==
X-Received: by 2002:a5d:47c2:0:b0:367:9cf7:6df8 with SMTP id ffacd0b85a97d-37311830cd4mr3462928f8f.2.1724666859817;
        Mon, 26 Aug 2024 03:07:39 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37308110009sm10324821f8f.18.2024.08.26.03.07.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Aug 2024 03:07:39 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 26 Aug 2024 12:07:21 +0200
Subject: [PATCH 05/11] phy: mediatek: tphy: Simplify with scoped for each
 OF child loop
MIME-Version: 1.0
Message-Id: <20240826-phy-of-node-scope-v1-5-5b4d82582644@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2867;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=d6YjtlhFoRREw1+Zm7s3VPFYbcnOL8lp7zFl+ncHJGc=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmzFPcISCpOL78DthcvA7n9HD0PjGn3OQrBZ0N6
 9WAbz2hyTiJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZsxT3AAKCRDBN2bmhouD
 1/L+EACU8UjoaFd/VCOUIcGc4SNtlfbfC+VIH3e/hLs5GQvLFRRKaw/ctKPrtD5hehNwo8cqZGd
 dbw5yPIsS9sW9/GVW1zLhi2allQ5HZKJqUSsrUXVrFQApwPK++u2IJ33hHv6CIjyLO4vvEbIA6t
 8GJlZuVUzRGxaCTDhPsL4H2HCYaZujr+qRH4DWBOKRD2qqzPpL/JoPlt2TH0+AoJXmHCNW7db9Z
 1utOfTYXSq61lEXGuuZimVJ9TXXnhfRkmH2oq6Xc/0exvXZG1MbWU7CQM4PdG9DreJnFuNLbtap
 ruBReOQDSvd9AHBgC/o8s6E/4+lP3cP5fS0SBki7LgcoegQrMVbw2cEQQZ6xI/eQtuPnpyVxAGJ
 wVVPLZwSvfW539p4NPtF6IFBDj0FJ09mosqDstt/Wc73q5PkaFd7vUoKaMVAKaIvolHFen6oaBO
 i08cuJne7aIPc01MiGV2kCxoUaKV+dNs4UA+prfk8xydUpMvxgAbhyT2nZ6CGVVyaY8hxGgXeFj
 0qZ7duixEF2nhzTlLhFJTLL7v74FlpJ8hM1FiYp/MdMks6Fogf6HycKJkUqanRrymxvL/QD3Q5x
 L3ejj/i3hAyBxNyuZeexLBUMc69HrPnaFYtg8u/Sw524zBA6MpifbyrXCL5tBSGsJhV8BE4OTJD
 IC1QCJiWHP5cqjA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_030742_142557_ACE9172A 
X-CRM114-Status: GOOD (  14.32  )
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
 drivers/phy/mediatek/phy-mtk-tphy.c | 30 +++++++++++-------------------
 1 file changed, 11 insertions(+), 19 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-tphy.c b/drivers/phy/mediatek/phy-mtk-tphy.c
index 25b86bbb9cec..3f7095ec5978 100644
--- a/drivers/phy/mediatek/phy-mtk-tphy.c
+++ b/drivers/phy/mediatek/phy-mtk-tphy.c
@@ -1577,12 +1577,11 @@ static int mtk_tphy_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
-	struct device_node *child_np;
 	struct phy_provider *provider;
 	struct resource *sif_res;
 	struct mtk_tphy *tphy;
 	struct resource res;
-	int port, retval;
+	int port;
 
 	tphy = devm_kzalloc(dev, sizeof(*tphy), GFP_KERNEL);
 	if (!tphy)
@@ -1623,25 +1622,23 @@ static int mtk_tphy_probe(struct platform_device *pdev)
 	}
 
 	port = 0;
-	for_each_child_of_node(np, child_np) {
+	for_each_child_of_node_scoped(np, child_np) {
 		struct mtk_phy_instance *instance;
 		struct clk_bulk_data *clks;
 		struct device *subdev;
 		struct phy *phy;
+		int retval;
 
 		instance = devm_kzalloc(dev, sizeof(*instance), GFP_KERNEL);
-		if (!instance) {
-			retval = -ENOMEM;
-			goto put_child;
-		}
+		if (!instance)
+			return -ENOMEM;
 
 		tphy->phys[port] = instance;
 
 		phy = devm_phy_create(dev, child_np, &mtk_tphy_ops);
 		if (IS_ERR(phy)) {
 			dev_err(dev, "failed to create phy\n");
-			retval = PTR_ERR(phy);
-			goto put_child;
+			return PTR_ERR(phy);
 		}
 
 		subdev = &phy->dev;
@@ -1649,14 +1646,12 @@ static int mtk_tphy_probe(struct platform_device *pdev)
 		if (retval) {
 			dev_err(subdev, "failed to get address resource(id-%d)\n",
 				port);
-			goto put_child;
+			return retval;
 		}
 
 		instance->port_base = devm_ioremap_resource(subdev, &res);
-		if (IS_ERR(instance->port_base)) {
-			retval = PTR_ERR(instance->port_base);
-			goto put_child;
-		}
+		if (IS_ERR(instance->port_base))
+			return PTR_ERR(instance->port_base);
 
 		instance->phy = phy;
 		instance->index = port;
@@ -1668,19 +1663,16 @@ static int mtk_tphy_probe(struct platform_device *pdev)
 		clks[1].id = "da_ref";  /* analog clock */
 		retval = devm_clk_bulk_get_optional(subdev, TPHY_CLKS_CNT, clks);
 		if (retval)
-			goto put_child;
+			return retval;
 
 		retval = phy_type_syscon_get(instance, child_np);
 		if (retval)
-			goto put_child;
+			return retval;
 	}
 
 	provider = devm_of_phy_provider_register(dev, mtk_phy_xlate);
 
 	return PTR_ERR_OR_ZERO(provider);
-put_child:
-	of_node_put(child_np);
-	return retval;
 }
 
 static struct platform_driver mtk_tphy_driver = {

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
