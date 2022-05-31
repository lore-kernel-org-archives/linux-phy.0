Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA46BC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 31 May 2022 15:02:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y156Q63bxZz/CSUWyLO+nEl6kBmME3M33LoruKH+yGI=; b=4fzXcBmCePl2wQ
	5OoHQoE53g+rt+xgRaoViHwdcdxBtIfuRSrpEXyb5F+SpMw2HjDr4aKQIdIKtHWz3KVpnuLoTievD
	2Fy0zJtEhrDmOK8uXTy12ECjMRJSq6VQdFZYcVT5kjlJ+5QpsDV/tAl7ip90HavuzXC9XnoqMUOi3
	dV2tM5rGVMK5r/hyomcQz0u7oBMI92mnColvzYrtD5Wheuda7I0XpoK1utgTbg6r63EmUxvcHjW+p
	oVKSu8JhlPtNMAY2hudV0DaO15X6ZRDiLM034U3RxSDKARv7NhqClV5oeFKuAJPQlNkk4FugEAhBi
	IFrcbp+XxrXictquv/kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw3OA-00BPru-JM; Tue, 31 May 2022 15:02:30 +0000
Received: from mail-wr1-f42.google.com ([209.85.221.42])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw2Gw-00BACJ-Bk
	for linux-phy@lists.infradead.org; Tue, 31 May 2022 13:50:59 +0000
Received: by mail-wr1-f42.google.com with SMTP id d26so13181804wrb.13
        for <linux-phy@lists.infradead.org>; Tue, 31 May 2022 06:50:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lW0yAksGLkkUyy22NDdYQDHyZq2zc0vWqxg9iWVW56I=;
        b=0Rpx6jMIsXbKBWz1Z4MydcV9MC4lfQ3IYbK0315TxxRiBKVFtYDLzjN7CG4UB2UfWq
         06uhmo1Q6/Mi1Jb09Hw7bavVWC473lzLKiVfHrsQ5in01UXAMACueQStByBDdPzDrBqp
         twnBLWRJxnAEiZ0+mPXx6cIxmUygABTTEFKvNZa/MjJr/Y2grABaHGjDVverTv4ebyxt
         TnzynXxR7yWbhOz4huGXpOoRp1SIMztgg1r5aLLCiQ3CmPtGzWQoJt1KE4PCgOXkFwQg
         zaN3g5ow5FcEEOLYDOomGD2Td/iJJorkSyXXnQpmbUAJFuBArGG5g3rkIgU01hKSc2lm
         Z3uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lW0yAksGLkkUyy22NDdYQDHyZq2zc0vWqxg9iWVW56I=;
        b=2bpF/lEn4AKOwx50TPd6r/AiCwONPJZKZdDt9BriAWih/Erl3WJKH/YwU7dZhP5v+f
         G2keANlpiJF0EKrdxFAnloqVt/HBSN+rhQOx0Rs2LtxPYuN7mQ0XE9X44xuMVBzuAKaZ
         MHFnAa0L6rm7j6HBEx1LTcIzSoNaMaZ2vqtMubU4VcYv16TR5wLT7SUjV4tAAZWUHEvV
         F3sOnHcNrILpo/dqjTVu47XMLRXN1cdXAcWbdJmKkTwdOwOJFlTsX7uoFkB8TUC9Y50P
         13nKNwem+aN+CDlGPkouqin98lwyQMBcKyCBxenaDb2CfOsIh3ogzEqAw428GTCZl7bK
         qKvQ==
X-Gm-Message-State: AOAM532R88+NBYzwTgy4T6cj79Y1L/6uGdDBs0PPkPvuzG7P1Tzu1VXZ
	ds4CgBlFnIw7sEN79o0djj+1Kw==
X-Google-Smtp-Source: ABdhPJx92GIJhNJSvoi0FLCIeGZ8dl9Y3pv8+Zk660zC6fx9w1PvGGZpm6/Ia+aYM0mB7Jhr4qPWOw==
X-Received: by 2002:a5d:448d:0:b0:20d:744:7663 with SMTP id j13-20020a5d448d000000b0020d07447663mr50722292wrq.654.1654005055117;
        Tue, 31 May 2022 06:50:55 -0700 (PDT)
Received: from localhost.localdomain ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id l11-20020a05600c1d0b00b00394351e35edsm2404806wms.26.2022.05.31.06.50.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 May 2022 06:50:54 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	vkoul@kernel.org,
	qii.wang@mediatek.com,
	matthias.bgg@gmail.com,
	jic23@kernel.org,
	chaotian.jing@mediatek.com,
	ulf.hansson@linaro.org,
	srinivas.kandagatla@linaro.org,
	chunfeng.yun@mediatek.com,
	broonie@kernel.org,
	wim@linux-watchdog.org,
	linux@roeck-us.net,
	Leilk Liu <leilk.liu@mediatek.com>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dmaengine@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-iio@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-serial@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 09/17] dt-bindings: spi: mt65xx: add MT8365 SoC bindings
Date: Tue, 31 May 2022 15:50:18 +0200
Message-Id: <20220531135026.238475-10-fparent@baylibre.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220531135026.238475-1-fparent@baylibre.com>
References: <20220531135026.238475-1-fparent@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_065058_411576_70516408 
X-CRM114-Status: UNSURE (   8.58  )
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

Add binding documentation for the MT8365 SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 Documentation/devicetree/bindings/spi/mediatek,spi-mt65xx.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spi/mediatek,spi-mt65xx.yaml b/Documentation/devicetree/bindings/spi/mediatek,spi-mt65xx.yaml
index 94ef0552bd42..d3d34a3a0b7f 100644
--- a/Documentation/devicetree/bindings/spi/mediatek,spi-mt65xx.yaml
+++ b/Documentation/devicetree/bindings/spi/mediatek,spi-mt65xx.yaml
@@ -18,6 +18,7 @@ properties:
       - items:
           - enum:
               - mediatek,mt7629-spi
+              - mediatek,mt8365-spi
           - const: mediatek,mt7622-spi
       - items:
           - enum:
-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
