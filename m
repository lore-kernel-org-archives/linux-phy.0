Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF47DC433EF
	for <linux-phy@archiver.kernel.org>; Thu,  7 Apr 2022 09:45:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jU65kMPXiSRQPSzq7UB5388VGqW/8np6fHhr23NBvvI=; b=LlGNbX9aFgG/cm
	m8y7rO90wbHzgL0q6FIi8Oc6qqDCpKCRp54d1Jt6oHxj7iZKVFf/pxydrM/0Gr42Rw4XjpqPG6BkR
	QOj7ps3K3sP+pYsFKubh/ZMsOw+WV5gynGyTcBBam/PFhojYdk4g7mEANdsa+mnE64opi8GeErl3m
	bhkhQBk9GC7dDN59ABj0UQ55mfuBKY5+YN2pdunLZi0W1Z4Pqe4h6Jdo7mkRqeO1WH5A3Jd9IAMAe
	AvFPG5BSSHNVuFnD5Y5dxIf6pNN5JPbbsuuDV6lTqXRp4VG7QThuDwnJ8ZZ7uTf1N34sNsBzEPZe5
	bc0DxM6QUfoDlsn0hwww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncOi5-00Az0o-SZ; Thu, 07 Apr 2022 09:45:49 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncOII-00Amoz-Ha
 for linux-phy@lists.infradead.org; Thu, 07 Apr 2022 09:19:12 +0000
Received: by mail-ed1-x52c.google.com with SMTP id b24so5627537edu.10
 for <linux-phy@lists.infradead.org>; Thu, 07 Apr 2022 02:19:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=VNbnKRlfaQArckBwqtyPd//4SBBVpRdJ3XTbCofIYRs=;
 b=iKMF7HKH1ujVrO+HWsVSZBima3JdMAbH4p58+DPB86kQEpFAapqdqaaGmPgM+CCT5c
 4ijl8uuyUSC5K0ptya67Bi4z1z1WrZKDC/36CqWVCJOVDF2l6HbaACSlJwQET6tyc9ON
 E83TgMGDZMbug8Upqcm5z8MPN3P+7sKYJy/vK1t1/UC7ImP5BSBT7lrXg1fA31fWjMV9
 6FPdUiH3UDQCyKi+cGH9xeeljybBQU9++yW9sMK/wsMVTUWqs6A+5gqWBSKUxZRPHSwW
 zvwYy1SOGxeKXBfcPn5FoSdzkg/cveW3tZVciql/oQhQnmMYs0P0sIhdaLg96L8yZEfm
 oGWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VNbnKRlfaQArckBwqtyPd//4SBBVpRdJ3XTbCofIYRs=;
 b=gwcsrp95H7+I01ZR1Pq6VBxpaAuYZEjpRwfGmQ1ZvZoo4QR5VHw9DKqhVdA/p7W7zJ
 KomeXcgwZjoSyJRar7rQgDmNBkITrKkG2nGPDOqwJnBWj8Cjn/31K0OQ1AIeALRPVCkd
 +n81Clex5EKrbN8hdrkY9/SDh+qiM7eadJgPTYvDYJxGPhvlurNWIu0KyMlLkKyC44fG
 lHEvQfSCEF0SpNIn5SrLlImcD+A/QLWSTiEPB2XPkrgdd2N+PinE5C/CvU8klV5IA28U
 tIRiOYx/lySy339V2IToTln6GYnfziMBX2ngUYYHO4Gsj5mRWiV8bXzttAw24u7Drgi9
 4riQ==
X-Gm-Message-State: AOAM531zfSLCs8puJ4+jVYpCmq9NDbOUqni9iYlwmxcrET/tBeOM8zVN
 vbZTb5/8Ean9kuaXzNgLczh1TQ==
X-Google-Smtp-Source: ABdhPJzFsBM5gI6o2DREc7Xi8f5GVAMfoqKmYdFDqhcq0iN5kCkieW3N33D+6qQ3NnRe9X9N43TCtQ==
X-Received: by 2002:a05:6402:5107:b0:419:935d:bb6e with SMTP id
 m7-20020a056402510700b00419935dbb6emr13218359edd.242.1649323146442; 
 Thu, 07 Apr 2022 02:19:06 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 m1-20020a170906848100b006e8053c7cdcsm2927752ejx.39.2022.04.07.02.19.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Apr 2022 02:19:06 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Girish K S <ks.giri@samsung.com>,
 Yuvaraj Kumar C D <yuvaraj.cd@gmail.com>,
 Vasanth Ananthan <vasanth.a@samsung.com>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [RESEND PATCH 2/2] phy: samsung: exynos5250-sata: fix missing device
 put in probe error paths
Date: Thu,  7 Apr 2022 11:18:57 +0200
Message-Id: <20220407091857.230386-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220407091857.230386-1-krzysztof.kozlowski@linaro.org>
References: <20220407091857.230386-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_021910_620969_182992D8 
X-CRM114-Status: GOOD (  11.66  )
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

The actions of of_find_i2c_device_by_node() in probe function should be
reversed in error paths by putting the reference to obtained device.

Fixes: bcff4cba41bc ("PHY: Exynos: Add Exynos5250 SATA PHY driver")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/phy/samsung/phy-exynos5250-sata.c | 20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/samsung/phy-exynos5250-sata.c b/drivers/phy/samsung/phy-exynos5250-sata.c
index 6c305a3fe187..595adba5fb8f 100644
--- a/drivers/phy/samsung/phy-exynos5250-sata.c
+++ b/drivers/phy/samsung/phy-exynos5250-sata.c
@@ -196,20 +196,21 @@ static int exynos_sata_phy_probe(struct platform_device *pdev)
 	sata_phy->phyclk = devm_clk_get(dev, "sata_phyctrl");
 	if (IS_ERR(sata_phy->phyclk)) {
 		dev_err(dev, "failed to get clk for PHY\n");
-		return PTR_ERR(sata_phy->phyclk);
+		ret = PTR_ERR(sata_phy->phyclk);
+		goto put_dev;
 	}
 
 	ret = clk_prepare_enable(sata_phy->phyclk);
 	if (ret < 0) {
 		dev_err(dev, "failed to enable source clk\n");
-		return ret;
+		goto put_dev;
 	}
 
 	sata_phy->phy = devm_phy_create(dev, NULL, &exynos_sata_phy_ops);
 	if (IS_ERR(sata_phy->phy)) {
-		clk_disable_unprepare(sata_phy->phyclk);
 		dev_err(dev, "failed to create PHY\n");
-		return PTR_ERR(sata_phy->phy);
+		ret = PTR_ERR(sata_phy->phy);
+		goto clk_disable;
 	}
 
 	phy_set_drvdata(sata_phy->phy, sata_phy);
@@ -217,11 +218,18 @@ static int exynos_sata_phy_probe(struct platform_device *pdev)
 	phy_provider = devm_of_phy_provider_register(dev,
 					of_phy_simple_xlate);
 	if (IS_ERR(phy_provider)) {
-		clk_disable_unprepare(sata_phy->phyclk);
-		return PTR_ERR(phy_provider);
+		ret = PTR_ERR(phy_provider);
+		goto clk_disable;
 	}
 
 	return 0;
+
+clk_disable:
+	clk_disable_unprepare(sata_phy->phyclk);
+put_dev:
+	put_device(&sata_phy->client->dev);
+
+	return ret;
 }
 
 static const struct of_device_id exynos_sata_phy_of_match[] = {
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
