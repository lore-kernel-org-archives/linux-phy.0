Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EEE7C28B2B
	for <linux-phy@archiver.kernel.org>; Tue, 16 Aug 2022 13:28:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gPzg2Smy97se7XQU/oivDfT1Q3M5OymlLCFM+ErUXZ4=; b=aASxvGTktxd8vb
	OeP6znvbaeYGpSuJLMwrd2/u9IWjco5ECp9L1gNTozXqGl1rBjyeToPIIZuZ5Fu2MDSJycJ08zEWy
	R4wVoLug2G6V5kJdVuDniHzieg4vNPVY8ctJhlBkgF3goJbaZY4CdeiN0OFtTFIH0FpP2c9JtYTtl
	nE9QI8pl88FskwvnoW0c7H2A3kMUvQpzeZsoniqDrfuSOrPfSvpQSuGEUDunoZcjTzOkoQeDYvVu4
	Dd/ZppnerGPAkhoIubyaqioZx0BgR360OA0TOGxO9Gqs8qjSuI3GolR4Bc5lqKUXaSM99dy9LNHbA
	QQiDNAkUDIcQHFhUTlFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNwcE-002qk7-5r; Tue, 16 Aug 2022 13:28:19 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNwVr-002nO3-Mu
	for linux-phy@lists.infradead.org; Tue, 16 Aug 2022 13:21:46 +0000
Received: by mail-lf1-x130.google.com with SMTP id r17so14878595lfm.11
        for <linux-phy@lists.infradead.org>; Tue, 16 Aug 2022 06:21:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=yE7zn3+63TAoBI4QapAvwqAkJrBFU8gy8jfI0uwa9Io=;
        b=MDzvxydaTkVDEjoHMlvPvOnwvlr7ONZ2+VmBXkidWml+0GhHByNN6EWuo39IFC8yZ4
         4CbvNwRQuYmzzuwIB0kqA6keBCbjCiZg59ROuHLbpcXGUyVOn6GwQgA+dSn3f9kGCVrj
         +iWgLCl5YeyTgXVm0yzI89zqlenbzT/mODrQZon8JM1W/XtNcUj0eKf7JKBqzKY4NDtq
         N8PKaTLB1cNJqgDJkCnAtqQV9NYHQsqVWn6QyuEZU0egFpKBIA9yaWsAcGDIjJQTXPQ6
         6JtHdJ9wy8/vfI6svnRYpghzayyrCwMeNXciOKiV4MZ7AsAPEHBmDDqPoIAd59/bcDzI
         2vkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=yE7zn3+63TAoBI4QapAvwqAkJrBFU8gy8jfI0uwa9Io=;
        b=HOlSUoNnqKigDekJ7Zp5oKChlv3+u9zx0oQeRV4Fc1Nsei82TDUSEyjvEXLulhqXZz
         4qhY+y6P758NlznFA4kAZumKq1V1JaPSQM/14PG3ImmKWYz44XSCCXt7gS6oHjBLzWgq
         LbrlKvdeBvrw7wyzrYItTDrh0LbAWyQO/R/eLq2SM/ldvzE3BCbf12zXIsMkXIS4+1jn
         Tirsd9n/IDnVlNKFCE2crAfuLRJdNEavh5G4AMtARYbw7u13SssVMeVtna3aX6Z+gaPg
         /4mAhdrMJ1tTxYKeVcZEUAZHVIUX3NixG6I/CmB6QXRsCZt+L0ti5WeUSkDTy/UHw52O
         fmjg==
X-Gm-Message-State: ACgBeo2U6d+u7ihXRHqYiHiASk0/oZJjU7GhRVpGjUimJ6eTRPR0jVs7
	572yYDo2IVNAMD6K96yFH5MrhQ==
X-Google-Smtp-Source: AA6agR6XKqcse24maA6Z7f54Nlx/n9AiCKXjXCJKSey1kamKIawSJ0X2wWxzj59gOcgEC27vgTh/uQ==
X-Received: by 2002:a19:d611:0:b0:492:8e15:ba18 with SMTP id n17-20020a19d611000000b004928e15ba18mr2700922lfg.524.1660656101921;
        Tue, 16 Aug 2022 06:21:41 -0700 (PDT)
Received: from krzk-bin.. (d15l54g8c71znbtrbzt-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1782:dd68:b0c1:c1a4])
        by smtp.gmail.com with ESMTPSA id m17-20020a056512015100b0048ae518364dsm1387442lfo.148.2022.08.16.06.21.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Aug 2022 06:21:41 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Pratyush Yadav <pratyush@kernel.org>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v2] dt-bindings: phy: Update Pratyush Yadav's email
Date: Tue, 16 Aug 2022 16:21:31 +0300
Message-Id: <20220816132131.75591-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220816_062143_819089_434B33C8 
X-CRM114-Status: UNSURE (   9.52  )
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

Emails to Pratyush Yadav bounce ("550 Invalid recipient"), so update to
match one in commit 92714596cdbe ("MAINTAINERS: Use my kernel.org
email").

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Rob Herring <robh@kernel.org>

---

Changes since v1:
1. Update email instead of dropping.
---
 Documentation/devicetree/bindings/phy/cdns,dphy-rx.yaml | 2 +-
 Documentation/devicetree/bindings/phy/cdns,dphy.yaml    | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/cdns,dphy-rx.yaml b/Documentation/devicetree/bindings/phy/cdns,dphy-rx.yaml
index 07be031d82e6..d24ec47c038e 100644
--- a/Documentation/devicetree/bindings/phy/cdns,dphy-rx.yaml
+++ b/Documentation/devicetree/bindings/phy/cdns,dphy-rx.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Cadence DPHY Rx Device Tree Bindings
 
 maintainers:
-  - Pratyush Yadav <p.yadav@ti.com>
+  - Pratyush Yadav <pratyush@kernel.org>
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/phy/cdns,dphy.yaml b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
index f0e9ca8427bb..649e0b953df0 100644
--- a/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
+++ b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Cadence DPHY Device Tree Bindings
 
 maintainers:
-  - Pratyush Yadav <p.yadav@ti.com>
+  - Pratyush Yadav <pratyush@kernel.org>
 
 properties:
   compatible:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
