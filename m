Return-Path: <SRS0=alUI=MU=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF21FC4338F
	for <linux-phy@archiver.kernel.org>; Wed, 28 Jul 2021 12:28:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8FAD160C3E
	for <linux-phy@archiver.kernel.org>; Wed, 28 Jul 2021 12:28:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8FAD160C3E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5/DN/ltfNo6N4QB/wXVVBHw7XuNaS6mDHmt4CicCitw=; b=F0UM6Y0pLT/amI
	L227AtS7GmcgrLL+fLPW28ScuHgx90VnMV4CnOsFtvztYsmJ/GWWyvs+k9MRNFU/02j7++K/Fln9X
	/5kA66C0vEJVren43i/QqaOQUWLfREQcB8mLOzJVctCxVz6OKMtMHZvltmdiADi52pqaI6mOYZv9T
	VfKP5NOzBtFLQZhN1bKFxHBQQXLIN2bB7Q5euF851HZty90iToptaZJAuNPzonDkX2t4w4TAtFhzP
	jsD06GN8e8vTx4wDm4lwZlBuzvYMJLGl1++Oh+rkn91VhZfGPq+cYppGDynOHy40TukRuARQP8RSl
	Y7sjxK5+eXg0tDcHY74w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8ig5-000did-0T; Wed, 28 Jul 2021 12:28:49 +0000
Received: from mail-qt1-x832.google.com ([2607:f8b0:4864:20::832])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8idi-000cfa-RP; Wed, 28 Jul 2021 12:26:24 +0000
Received: by mail-qt1-x832.google.com with SMTP id g11so1150994qts.11;
 Wed, 28 Jul 2021 05:26:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yXImnqZERav+3w/cyHb8wggYxQXzQW+9n8PpB8P0B2M=;
 b=nTf1Rh+IBTk37Ypl1bqpBx/ym8f/2c2cD3boqnDXbg49T69of7n1FZDMO2lodZfo+a
 FKJNsHP0XHimKRL+HQlTOcMoynXQ9O+9daG3gi72aE2zeB6DLbbU9JfsyBgQyxC9VB6f
 daLU/ljVyIzhnLLbfiJuAcZBXCUx5tVouRLb24L2gqz46/YJ6e7yizBxeBmp5N1+WXn6
 5e0AMP9nmpTRllygLdkCHbRhcvDHefqLLp2+jUUQCum5pdeCxrzjOavdKnkqf2kQq6xM
 /TzWidxzOB7B6Q8oMYlBvLZ6uH0P9VaJGMKCmjefY85M1JWvC/SmORGEvlx4TGkOQnkG
 WhzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yXImnqZERav+3w/cyHb8wggYxQXzQW+9n8PpB8P0B2M=;
 b=s6cmXP+1hJ5P5hsWjsTU5Ex+KR9Oo3/wYODBs1xQvOhTSe01hc9bNRclcd0f5vWbhk
 E8U7ByQQMiCI5vSG1O8z78lg7bX71bQK3FY+wbOeE0eozV7g7CoBuY93siml1jjRM9nX
 okSLZzERmPOueKu9WGh6n9psOg91inqaqBZAJFQb28rid6tcUaPXdGBjUBfmz6vEI0+i
 h2a4Vu9HixU9CV4L6tZ3O4Qr+SJfednCAEXZrMd2iU4EKcp/TOVLQJ6IPDS8cGAu9EYR
 3KRTh311wZz0fs5DgVHL7UdSAdNGX46U7yEl6fw5vxdnpaq0NkqkCCd9URjanWwnOkGZ
 pW5Q==
X-Gm-Message-State: AOAM531XGXuDVo7VgR8AxFof1oKBRtjkkWeu8CnSXlJJqUS2cioMRXcC
 9OqlBz8f/v597YUOqejM3Qs=
X-Google-Smtp-Source: ABdhPJyWW6C88y7pL6cKMtwywRISt6YmNQd6o2KFh32MLgLwlTNoYrvvX7m/LDxvsGY6ke0R8rGdzg==
X-Received: by 2002:ac8:5210:: with SMTP id r16mr16895190qtn.344.1627475181525; 
 Wed, 28 Jul 2021 05:26:21 -0700 (PDT)
Received: from master-laptop.sparksnet ([2601:153:980:85b1:b58:2ae8:d75f:660a])
 by smtp.gmail.com with ESMTPSA id z9sm2842972qtn.54.2021.07.28.05.26.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Jul 2021 05:26:21 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>
Subject: [RFC PATCH 5/9] phy: phy-rockchip-inno-usb2: support standalone phy
 nodes
Date: Wed, 28 Jul 2021 08:26:02 -0400
Message-Id: <20210728122606.697619-6-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210728122606.697619-1-pgwipeout@gmail.com>
References: <20210728122606.697619-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_052622_969431_867D7C01 
X-CRM114-Status: GOOD (  13.32  )
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

New Rockchip devices have the usb2 phy devices as standalone nodes
instead of children of the grf node.
Allow the driver to find the grf node from a phandle.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 5d2916143df7..84a0c1d697da 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -1081,12 +1081,19 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
-	if (!dev->parent || !dev->parent->of_node)
-		return -EINVAL;
+	if (!dev->parent || !dev->parent->of_node) {
+		rphy->grf = syscon_regmap_lookup_by_phandle(np, "rockchip,usbgrf");
+		if (IS_ERR(rphy->grf)) {
+			dev_err(dev, "failed to locate usbgrf\n");
+			return PTR_ERR(rphy->grf);
+		}
+	}
 
-	rphy->grf = syscon_node_to_regmap(dev->parent->of_node);
-	if (IS_ERR(rphy->grf))
-		return PTR_ERR(rphy->grf);
+	else {
+		rphy->grf = syscon_node_to_regmap(dev->parent->of_node);
+			if (IS_ERR(rphy->grf))
+				return PTR_ERR(rphy->grf);
+	}
 
 	if (of_device_is_compatible(np, "rockchip,rv1108-usb2phy")) {
 		rphy->usbgrf =
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
