Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13DE7C3F6B0
	for <linux-phy@archiver.kernel.org>; Thu, 11 Aug 2022 06:40:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rGIRtoFQBPA5SF5uARYwQ2eBHdIXgbJ8y2B4e0aZB4o=; b=tyvDFC5bbmHKXN
	G8hb8EXfFQPRoS8nj3s9tvN5JO9FEiV1NoDH3/9f2cf0/LQ71rAwuvv5c+bnXI4M483btrv2shOTS
	xW7YsqPYGsrM6c6zTJNqJhz7p4jL/Rkno/72k553VPnorhlphiEw9en9HoivMmZ1qAHiCo4al6drX
	AMguNk3RFhhQjZzA0m0+Hfy0u+gbjId9NO72y/xd7kHFvNvcDaIL6CUuZdWo2ACojMaSOi+BaP7rq
	01dG+iE110qOLLzDD1bKObKLdoUNfL120c0upj1fGp3MfCo/7KmgMXvx60gAF41HhLBO60STiOfD5
	RjCzVqJVVmcul8EfvSOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oM1rT-007FQa-Jd; Thu, 11 Aug 2022 06:40:07 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oM1qB-007EO3-Ey
	for linux-phy@lists.infradead.org; Thu, 11 Aug 2022 06:38:53 +0000
Received: by mail-lf1-x12d.google.com with SMTP id a9so24266570lfm.12
        for <linux-phy@lists.infradead.org>; Wed, 10 Aug 2022 23:38:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=AGEywKGeoHQ0FbmdJ6X1DklF8N9Blk35YsMIqDrQ5Mw=;
        b=QDLGAXXBsgC04gfJKOEdrkRdt7sHC5ZTFaNm25Y4iwXxALrOoH45XuzuBmlG5JpolA
         TqXKykAgXPC01T8cFQQwtgcC2K410aXDsoXaMBJnbvVyfentYv2dbO7+q9UQUEtplti9
         jUBIYkji138JeXwjl4H42p8ncNvpyyTAGDHs5hoYnfLVEZD7Da5BThWeJhkifdnoT7p8
         ejaBsT9TFFNO6YWOu5W1puCR6a4WH2VUiROY2Woj+MAxjFDhdJvFVn581Zq+E1Qey/On
         qpZdMYJGCrW2sbcjULBpZO9pAfxPDcKbsIfpmhppTl+q0MMiR21tAUPdBgV1xefOQznE
         D9GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=AGEywKGeoHQ0FbmdJ6X1DklF8N9Blk35YsMIqDrQ5Mw=;
        b=nBhAogCKheL2ouRSKNvk5ngAemVTtaKFgQShPwXP02Fpx2JJSLaTkLAklSdZ+my8PJ
         oBZ5Bt/Sx6tuzIhDg1OwbkG05i7bUr6ILm6jrWDgyi2P+bNgZwxJ8lPkf+04q1mrqzsJ
         4PJtG+iG+TIeYtGduBUMwbb4Sf3AwqnY/sMEcTwKNKn9ICBYWQ+CbCOaCROlFS0G6d8k
         c+4GlxTp+TAaQ97kQJsgSbfhZsNld272eqvTkvn1whXjX9TRlWrDslGRhwGJaz7ovQv2
         YvJmMIPB2//zqnYsqDuegW75YtRt56NbPnqJfQWeKZPipUuqPX+7Gtime8hmHY0fG5IJ
         HlMA==
X-Gm-Message-State: ACgBeo2wUQDRfNafPxIg22JugwzKVDzuNoZOuOG+Rshh2izCgPzbGZDS
	bWdVqPNz4l/RCThOTDkaWLTLhQ==
X-Google-Smtp-Source: AA6agR4ugZV+KRC/fxXYtcxvD9OkFiF6TJixcJtRQF4gWRmYwTQnRaC2c4lhLhI+rf8d4aFDAojiEQ==
X-Received: by 2002:a05:6512:3583:b0:48a:e811:3d89 with SMTP id m3-20020a056512358300b0048ae8113d89mr11627782lfr.371.1660199923566;
        Wed, 10 Aug 2022 23:38:43 -0700 (PDT)
Received: from localhost.localdomain ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id c15-20020a056512324f00b0048ac33f34d8sm585537lfr.289.2022.08.10.23.38.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Aug 2022 23:38:42 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: phy: Drop Pratyush Yadav
Date: Thu, 11 Aug 2022 09:38:40 +0300
Message-Id: <20220811063840.7670-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220810_233847_689231_CC06E58B 
X-CRM114-Status: UNSURE (   9.24  )
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

Emails to Pratyush Yadav bounce ("550 Invalid recipient").

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/phy/cdns,dphy-rx.yaml | 2 +-
 Documentation/devicetree/bindings/phy/cdns,dphy.yaml    | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/cdns,dphy-rx.yaml b/Documentation/devicetree/bindings/phy/cdns,dphy-rx.yaml
index 07be031d82e6..834f65636819 100644
--- a/Documentation/devicetree/bindings/phy/cdns,dphy-rx.yaml
+++ b/Documentation/devicetree/bindings/phy/cdns,dphy-rx.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Cadence DPHY Rx Device Tree Bindings
 
 maintainers:
-  - Pratyush Yadav <p.yadav@ti.com>
+  - Kishon Vijay Abraham I <kishon@ti.com>
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/phy/cdns,dphy.yaml b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
index f0e9ca8427bb..37bc20493fd0 100644
--- a/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
+++ b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Cadence DPHY Device Tree Bindings
 
 maintainers:
-  - Pratyush Yadav <p.yadav@ti.com>
+  - Kishon Vijay Abraham I <kishon@ti.com>
 
 properties:
   compatible:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
