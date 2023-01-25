Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CDDDC54E94
	for <linux-phy@archiver.kernel.org>; Wed, 25 Jan 2023 22:14:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7fAkhBNMN6MsB9Uv5X7dMdwXIm3kzCXbI0bN8SnYuN8=; b=qApX0sevrJlefL
	UwMo61uDdJOcPlNTS+qaKXSm4S8WBurOOhLX7Xj07fDcH96t2MGoB4giJRjwkgiHCjsfk4Irwj55x
	tNsazb6s3JyjsEc0CLeA2PEKJvbdGNMuNJw6XCk/aF5lQT5K/a19tYevHuR1juX1e5W5t/e7+YsCc
	m9IHQDI0Asoqf9UMFzfkJR+01T6NFiHD78jwrIEAPFz8S3Qv5fxzePmX/eZQjch6sNudho5w2Ylh7
	74SMXZJL94tS6JSzP+gy0gxaD0DdOH8GM5yXwXgRkxbT4XnByo3n+c8IINa9EAMMVC554LSI4dQ2m
	vr+bc0WsmKg6Ngtae7Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKo2h-008xK5-0d; Wed, 25 Jan 2023 22:14:55 +0000
Received: from mail-ot1-f54.google.com ([209.85.210.54])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKo2e-008xIM-SZ
	for linux-phy@lists.infradead.org; Wed, 25 Jan 2023 22:14:54 +0000
Received: by mail-ot1-f54.google.com with SMTP id u13-20020a056830118d00b00686def09868so117725otq.7
        for <linux-phy@lists.infradead.org>; Wed, 25 Jan 2023 14:14:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VntylNPkRn7HwDOyGLvqIMmZ4+nA7TLouy4C3scpsR4=;
        b=ssdarqWhm0bG16+e5TwujhWePHS0d02CaQy+262hVPWeHjfp2Bwki25qDs2nvA0f5I
         agCUTn4VppgxxOutJZA7zztAn/aaHsFkbonWpDcb4ZdFvyGL8QCHdq4N4/aPD78/zMG5
         gLeDwRulntZtk90hK0Qb3uT2izwvanvtGTFm56IBnhjw//RxkYGdKBUlE9wvG3yrvIPB
         VXj03HqMyj6wDOw1swlNgyBDhDtuLk8wP1q1O2zWeuRTEv0f8KIj5i1hhL/CK4gGCyEL
         2vAULVapXcBh1A7h12R68yiGkxMcHnPNbYKrCnD1Ems/2XK+hr4g85UCwUdfudevBAzh
         xOYQ==
X-Gm-Message-State: AO0yUKVaxayplWJDBugVzSc4ShzrkGsah0aTNNjQzRdx94KlkwlTHIUp
	EnIKdI9Wk2xvwQNx2s3lZA==
X-Google-Smtp-Source: AK7set92WE+b16Zc6lK++b0mfe9v5JKPbgYOLupTZTTfk+RBYuKrRvGSICJJo3MYY3Wn2iTJYHYGUQ==
X-Received: by 2002:a9d:70d6:0:b0:686:5b76:1610 with SMTP id w22-20020a9d70d6000000b006865b761610mr41333otj.1.1674684889198;
        Wed, 25 Jan 2023 14:14:49 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id p7-20020a9d6947000000b0066e873e4c2csm2746090oto.45.2023.01.25.14.14.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jan 2023 14:14:48 -0800 (PST)
Received: (nullmailer pid 3058728 invoked by uid 1000);
	Wed, 25 Jan 2023 22:14:48 -0000
From: Rob Herring <robh@kernel.org>
To: Yu Chen <chenyu56@huawei.com>, Binghui Wang <wangbinghui@hisilicon.com>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: phy: hisilicon: Fix 'hisilicon,eye-diagram-param' differing types
Date: Wed, 25 Jan 2023 16:14:43 -0600
Message-Id: <20230125221444.3058631-1-robh@kernel.org>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_141452_929658_8EC6A663 
X-CRM114-Status: UNSURE (   9.18  )
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

'hisilicon,eye-diagram-param' is also defined in
hisilicon,phy-hi3670-pcie.yaml as a 'uint32-array'. Unify it to use
'uint32-array' everywhere.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/phy/hisilicon,hi3660-usb3.yaml         | 3 ++-
 .../devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml         | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/hisilicon,hi3660-usb3.yaml b/Documentation/devicetree/bindings/phy/hisilicon,hi3660-usb3.yaml
index 20b79e2e8b82..b11d9873854a 100644
--- a/Documentation/devicetree/bindings/phy/hisilicon,hi3660-usb3.yaml
+++ b/Documentation/devicetree/bindings/phy/hisilicon,hi3660-usb3.yaml
@@ -27,7 +27,8 @@ properties:
     description: phandle of syscon used to control usb tcxo.
 
   hisilicon,eye-diagram-param:
-    $ref: /schemas/types.yaml#/definitions/uint32
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    maxItems: 1
     description: Eye diagram for phy.
 
 required:
diff --git a/Documentation/devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml b/Documentation/devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml
index 1cb00dbcd4c5..3c69aca6c7eb 100644
--- a/Documentation/devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml
+++ b/Documentation/devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml
@@ -32,7 +32,8 @@ properties:
     description: phandle of syscon used to control phy deep sleep.
 
   hisilicon,eye-diagram-param:
-    $ref: /schemas/types.yaml#/definitions/uint32
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    maxItems: 1
     description: Eye diagram for phy.
 
   hisilicon,tx-vboost-lvl:
-- 
2.39.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
