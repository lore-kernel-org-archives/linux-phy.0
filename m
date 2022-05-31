Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CE62C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 31 May 2022 14:42:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4bU9huRgaSPuZZml2lPeieSxTBXvEKW4qqssbE/aBTM=; b=Bdi4irjVpVqSw0
	kOBYp5sCeyGnS51mVtECs7Uaqy5+nJow2eUd7W5bM+76ZfyKvV0/2bZEhEP3i7uNMc1C/kEkuRnqA
	2+BoXrntwU2sDGSMBSVLS8+tRIRUUpBoZTU4a1xsV6lZ0P9z0Gl9I8NcmWF+GxMHQ8yXl1tKM77Oh
	/at7p+jWA9VdxraeALBLD9ZJreSpAH0qbBBYqeHKC2JRHBAi1Do37dga6pNzUvAgfIT8cVNgqAQau
	/hxcZ2J3GLKCcGxsos6udVHn6oTplXv0FQFmCpoZlOC/8VpU5Wq5SwvCAIO2JKF+wqQmh5TDLbgL1
	gv/X5OFs5QQvqb1WoD4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw34c-00BJhp-Pk; Tue, 31 May 2022 14:42:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw34I-00BIzQ-QK
	for linux-phy@bombadil.infradead.org; Tue, 31 May 2022 14:41:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Wl0eUhfQkf22AJDmTLSjt67Vrs4AO/BddtK22iFmA/I=; b=oCfBmQZjXElWtSfMWQ3pQysRTp
	4GPaN247DzlSCprR1jUw828J4vBk66sHdJnnTZgEhFs3Jdrpusa9XK5UMOABZ0uvggIlMWJ074i4+
	sVyliVjzz+j42wIp1N+g0XvHP6/g8KhzCoq48wkJWpPOrbpz0H7bRP6rpnOpPS7++J+niXZxycIPk
	+aYk66STPQc1NB8M178TuB2/Z3zgF0zK0tS6kN9shIs2u2QQAK4lpsDyCSQ5NxKByNx+KFeDAZypW
	AzyVOv3cWj/E1kLar0kDdPNAl8YJt9DfQnBb0BBJY9GZxQKbAIafnDFcDfAjvAmCxXJVwVQNNIxCB
	QctZdN3w==;
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw2Gw-003Sfi-VQ
	for linux-phy@lists.infradead.org; Tue, 31 May 2022 13:51:02 +0000
Received: by mail-wm1-x335.google.com with SMTP id f7-20020a1c3807000000b0039c1a10507fso1225636wma.1
        for <linux-phy@lists.infradead.org>; Tue, 31 May 2022 06:50:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Wl0eUhfQkf22AJDmTLSjt67Vrs4AO/BddtK22iFmA/I=;
        b=YZO96mhcYG0MG87d8UPaolLiT4EBhzbYR+2tvzycFKH95/lqHD4Jvzk66jQVmww9GM
         Kfuya/cPBUoxIoak9XlXW8H5NmofpLD8gqIUsA33sVyo/Yuc72GVVUFaMBT1tI9z/EKt
         NS0T+fZwjd0jYvUswsjsKudEOEmH7IyunZjW0vI6BwdFL1QiOfrQQQndMC6y+6yEGjoo
         WUJ3xntSihv5qvWX5bY6EsT4t/XTIGneUSkxDd+JFVeUG0kyU5v35dRrRxEPhkSvKohE
         Q/wmLZ/0Dfhgbn0UZjwaY0AWfzaLcCmgbdayY/VxweaTPGhE8DjhUj3npWKQfucbxM0R
         2K/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Wl0eUhfQkf22AJDmTLSjt67Vrs4AO/BddtK22iFmA/I=;
        b=tENfLluVgkB1S9cHWFuiR8XJxes8DdXZ0dwKRMHvini/0vq2O5leYBgqj7RhaRMwM5
         8sjh2BKv2V7M0uNvC1iJhe4Qqzq09kcAzQXetVFB6S3/7grHAVr3agLx/yaCwEztACql
         NsAEQ4FcCm9p7PQ5m2ar83/ub5WTmT+l68hvBfjiNIHuALhDqbR+4g66zJDcwzg8cz+N
         oJhId1minUxUvQkMKGexczzE3NZs0noICAT4rNgAFUG4TIgUGrFaKAd7+8CRR0SQMXD7
         DkHu38LnszE/WI2XfdyrkwxxUp5FM7HalL5yCB2HU3ATTNxMwjyRFfgaLtAHnvjATqS+
         5U3w==
X-Gm-Message-State: AOAM533MDhLJl6E9GXy23KJUjD00qVxfCguO0z5o/nuaAcMhReWjdgPh
	JGtj5i3IKgxXBSBz0u9ObuiXgA==
X-Google-Smtp-Source: ABdhPJzY1EA1gKYAjC0/wFLQ8zOis9WUaThFryPbsCAa6HYcRuwOQnBjCPCWIyToQh8i4anN2+EsDQ==
X-Received: by 2002:a05:600c:2182:b0:397:58f5:c6cf with SMTP id e2-20020a05600c218200b0039758f5c6cfmr23289080wme.86.1654005057059;
        Tue, 31 May 2022 06:50:57 -0700 (PDT)
Received: from localhost.localdomain ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id l11-20020a05600c1d0b00b00394351e35edsm2404806wms.26.2022.05.31.06.50.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 May 2022 06:50:56 -0700 (PDT)
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
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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
Subject: [PATCH 10/17] dt-bindings: serial: mediatek: add MT8365 bindings
Date: Tue, 31 May 2022 15:50:19 +0200
Message-Id: <20220531135026.238475-11-fparent@baylibre.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220531135026.238475-1-fparent@baylibre.com>
References: <20220531135026.238475-1-fparent@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_145059_717995_AC6AEBBE 
X-CRM114-Status: UNSURE (   8.67  )
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
 Documentation/devicetree/bindings/serial/mediatek,uart.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/serial/mediatek,uart.yaml b/Documentation/devicetree/bindings/serial/mediatek,uart.yaml
index 4ff27d6d4d5b..71e78f285e47 100644
--- a/Documentation/devicetree/bindings/serial/mediatek,uart.yaml
+++ b/Documentation/devicetree/bindings/serial/mediatek,uart.yaml
@@ -44,6 +44,7 @@ properties:
               - mediatek,mt8186-uart
               - mediatek,mt8192-uart
               - mediatek,mt8195-uart
+              - mediatek,mt8365-uart
               - mediatek,mt8516-uart
           - const: mediatek,mt6577-uart
 
-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
