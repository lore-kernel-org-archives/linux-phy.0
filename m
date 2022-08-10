Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3B3BC19F2A
	for <linux-phy@archiver.kernel.org>; Wed, 10 Aug 2022 04:05:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eTnpgC989pDzv4KhcvS7WVe4XlBfXdj9QEjwELqOJ2Q=; b=iwUy8lFa/FpPEM
	KbqGLi8fWT7pxBSDjlZwFVZsDgr1p7qulshm71+mahdyVRsMQNRroi7jP8cXxxDqQ4Z4tzyqvSNKU
	PeM6iLYXCVKcuHHvVrktBOA6CXUYflEVQr1HBzUqtrj6Pt7ZnVbE+hoCbEkqw7gTbZ7R1VWWqwjeo
	6NGdtOlvsP4fA2j1ZNrmHiXokKoiUhUem8Zx6cCeB50dVLiWt+uML12WJOeOf3lZpWfrZxBTFhsRI
	jx+GMpSSDeDFL2GyLCRMNpBCgLy4QLSRFKa/Ya7sXOGUljkBOr+R2g7/ST3bJoFQB3rQcQCDwr2jD
	L6+lzLau8ClDIudVYWaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLcy2-0090TT-89; Wed, 10 Aug 2022 04:05:14 +0000
Received: from mail-oi1-x234.google.com ([2607:f8b0:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLcxy-0090P7-7v
	for linux-phy@lists.infradead.org; Wed, 10 Aug 2022 04:05:12 +0000
Received: by mail-oi1-x234.google.com with SMTP id q184so16327188oif.1
        for <linux-phy@lists.infradead.org>; Tue, 09 Aug 2022 21:05:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=xXPgGKwOMrjLyfAADDT/AWNmata1kzLm9fIfAkbzbZM=;
        b=qAnvnfMMVZYcYHicgKM2AGxF/A7jQubJZ6OJJyF+JPog16lBXI23vNPbgCFoIjKV9N
         4Cl/caJ3ga3MMWImjVlfrBNE8AEqNX02w0KwFtjyw4Rrgae2O5ZYXPbmBrXdF8XnzEAE
         E0LxPqYNeTJzuB3GSYudPHfnbXJsZRn8lG/wbs6UULyAws2d86RCR5AXgFZlLeF9RIhS
         ikZ0EteS7pAtqISbDgBtNFnni6qVbdq0Susrw5VKR/C6GjhC/xRrmpLd9VN6OIN5YkVl
         MXx8lDHSnvhZnm3MZiY7XwR7XrdxEiAzg14WB6XXdJba5dCGiAx7OTqQcWKqntya0X5Y
         XT1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=xXPgGKwOMrjLyfAADDT/AWNmata1kzLm9fIfAkbzbZM=;
        b=mQyKxH+4bII+oPiRgfeoWQQ/v8lb3UDgb81ZiIJE0V/gZ4Kp+DUjX2w6er/HxH0vwb
         O4//RVd7iB4P5B7NobindMyZZHg8h5bgUxZOEqpt6QQZYhfJ+2b4njr5oSQSMj6VwL4U
         g7gRP+xyJGbS6pyLWxesuVjf3h1mV6scIWuHxm3DiY1X5WFQXOV0CKgLSeWIvYe7UUd9
         sSt+KyQlT0fWjd/S1bYSwMoed1BkrEzuoc5Ryz1Ct+DkOAH08pescXh/8QYHZ/kLexXA
         1gnvEem8YF6KKvZ9aQLL92iUP3YS1gtjGC1cwf5SP+IKKQaG33QTpF2YW2uthrsTaY0y
         OuEw==
X-Gm-Message-State: ACgBeo13QjIKxRMKk8xSz8G4QNBPiI/DXQQcOTAb9VldWY97jBbQ1P/K
	LLxpRZiLCQuBbEGNICI/b1I6pQ==
X-Google-Smtp-Source: AA6agR5RykGQceERY8ctKnJAYF2cVcM8MVRZuZecMttZYm7qy2ENEgWrTeNpmoGCS32W7HWPfwivPQ==
X-Received: by 2002:a05:6808:190f:b0:343:2fbd:9b62 with SMTP id bf15-20020a056808190f00b003432fbd9b62mr392751oib.176.1660104309089;
        Tue, 09 Aug 2022 21:05:09 -0700 (PDT)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id q6-20020a056830440600b00616dfd2c859sm449027otv.59.2022.08.09.21.05.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Aug 2022 21:05:08 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/5] dt-bindings: phy: qcom-edp: Add SC8280XP PHY compatibles
Date: Tue,  9 Aug 2022 21:07:41 -0700
Message-Id: <20220810040745.3582985-2-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220810040745.3582985-1-bjorn.andersson@linaro.org>
References: <20220810040745.3582985-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_210510_295791_134BF539 
X-CRM114-Status: UNSURE (   8.51  )
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

The Qualcomm SC8280XP platform has both eDP and DP PHYs, add compatibles
for these.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
index cf9e9b8011cb..1e104ae76ee6 100644
--- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -19,6 +19,8 @@ properties:
     enum:
       - qcom,sc7280-edp-phy
       - qcom,sc8180x-edp-phy
+      - qcom,sc8280xp-dp-phy
+      - qcom,sc8280xp-edp-phy
 
   reg:
     items:
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
