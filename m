Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0336FC433EF
	for <linux-phy@archiver.kernel.org>; Mon, 21 Feb 2022 10:48:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Sp+Ibp2rDkMyWpaHk7yOyyO4xhVmU8qgH9SfcjZY848=; b=mM6Wbgx53ejpL8
	5Uwdl2HGHXZ3MDgrOSpdlFdWuqV/xeDaMAOqB4i71c4+iqJd1QbtM6y6BfOsDPw+qocWbSwJtaRcX
	QOMlKBSIS3LBRLGUFqMYZrIyN/xBzu+p3ONVLJRe0rw5QaHUIt7nK6bq0AuBvknOZfZVPiCwWX+qS
	/5X9ihyY8AbctoaDlJAnQagsYXyqDjezA/l6SqpvFJirmAxtstkPNtjAS8otb1s+4hrYvYryBZqSi
	ml5rA7b/tX18Aq60pnI75U4JWs3/cOmZCz0pOzy33/UcFILqHSHMtZezT9StZGtRTcwB2qeqZXITR
	n6tLIYFww3naqSliBulg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nM6Ei-0055OX-2v; Mon, 21 Feb 2022 10:48:08 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nM5b4-004mCE-5m
 for linux-phy@lists.infradead.org; Mon, 21 Feb 2022 10:07:12 +0000
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id DE3753FE41
 for <linux-phy@lists.infradead.org>; Mon, 21 Feb 2022 10:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1645438023;
 bh=cW/QUWxRYPJ01JIv+IxhlaCd34Ezps7vx3XaRgs0k38=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=mE650o2OFMEldwIsOHtit9UymdWipuSPrEBD5QlJtznspRv00LfH1mO5r77YBaspI
 SIkNPYdXnowj2ckEJJIQmV7rn8vfU1A/PREyS7JgPWUiOSlQi7V+npMg11XOfr0wzv
 hs5H7WOA0tDfKBZhDE3EaoM4LasnPgiukfhHK4e7+JFVIaRNmIwJYFrF12LYnfWlX6
 c6ujWJ/d1iNalE/M25cPUngXkG2p8oFWeZReg5y+Vj9QOZ2lvs739C1nfkFMyl42NG
 po3oLscVXRBumYpOzRwjCa9i+KbFn69rI4+4MlDriWO2Hh/fFpRjRZhygwwqQzHUB5
 pPp7NWQk/Wo/Q==
Received: by mail-wm1-f70.google.com with SMTP id
 k30-20020a05600c1c9e00b0037d1bee4847so7802237wms.9
 for <linux-phy@lists.infradead.org>; Mon, 21 Feb 2022 02:07:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cW/QUWxRYPJ01JIv+IxhlaCd34Ezps7vx3XaRgs0k38=;
 b=DhFSOdu9j1bU36eL2BrlwBL2LDeVh4w1fbdaUqTcklITg5sCNjG5aQie0mAdfsf/X9
 e5DCNM/4eDFjyGW2ku1L1/AygLZTqLlAx+/WonD05m+aAxj2QwTabWGdCFyoTt16G6M3
 Z5EFtQuE/Zd3CZXIrZ4N+xSD6fJBTyFkE3e0yByv3XOQUfHxyERhQBSTSxZEf39zuG9I
 lTMPSrdaAT/5cz77/HNkuczA2g2ghmDO2bebute55pgRHFwIvVdHTo6FV03UCRQ1vl+4
 i0IU+Xeauj4KtKQohaW/ugkM/e0MOFYiIXBAzsQ0Q0wlWKOsfoUsQ0LsLOWdok+dF+ku
 DfWw==
X-Gm-Message-State: AOAM531H2cdTShRFLkMari270gfWJfmU6mrahdhn27d65544Kl5EDzqx
 qHj2lENYNKlJNV2Ag67nBHiJuLEoli1+LMvFcTSdMiMxRQUcYLSnN/BEEROxnc6nIVm1daGR7ep
 4I+6Zw9aggGPr+KRT3DQzFRx/v2KAo110IRgyRSpFmiU=
X-Received: by 2002:adf:fbc4:0:b0:1e7:2060:d65 with SMTP id
 d4-20020adffbc4000000b001e720600d65mr14402420wrs.583.1645438023620; 
 Mon, 21 Feb 2022 02:07:03 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzSDnIuvhfhf6ztWmXo0/EYg1RcHqQ7IBUSFa3H9QTNRrd4GTrHx0Vh3osgtoGhA5uLVbSAgA==
X-Received: by 2002:adf:fbc4:0:b0:1e7:2060:d65 with SMTP id
 d4-20020adffbc4000000b001e720600d65mr14402401wrs.583.1645438023436; 
 Mon, 21 Feb 2022 02:07:03 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-181-108.adslplus.ch.
 [188.155.181.108])
 by smtp.gmail.com with ESMTPSA id x18sm49516678wrw.17.2022.02.21.02.07.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Feb 2022 02:07:03 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To: Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Roger Quadros <rogerq@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org
Subject: [PATCH] dt-bindings: update Roger Quadros email
Date: Mon, 21 Feb 2022 11:07:01 +0100
Message-Id: <20220221100701.48593-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220221_020710_465472_BC0E02C1 
X-CRM114-Status: GOOD (  11.50  )
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

Emails to Roger Quadros TI account bounce with:
  550 Invalid recipient <rogerq@ti.com> (#5.1.1)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

---

Roger,
You should also add a mailmap entry for your inactive emails.

Best regards,
Krzysztof
---
 .../devicetree/bindings/mfd/ti,j721e-system-controller.yaml     | 2 +-
 Documentation/devicetree/bindings/phy/ti,omap-usb2.yaml         | 2 +-
 Documentation/devicetree/bindings/usb/ti,j721e-usb.yaml         | 2 +-
 Documentation/devicetree/bindings/usb/ti,keystone-dwc3.yaml     | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml b/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
index 272832e9f8f2..fa86691ebf16 100644
--- a/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
+++ b/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
@@ -20,7 +20,7 @@ description: |
 
 maintainers:
   - Kishon Vijay Abraham I <kishon@ti.com>
-  - Roger Quadros <rogerq@ti.com
+  - Roger Quadros <rogerq@kernel.org>
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/phy/ti,omap-usb2.yaml b/Documentation/devicetree/bindings/phy/ti,omap-usb2.yaml
index 51c8a36e61f0..8694b9eb52f9 100644
--- a/Documentation/devicetree/bindings/phy/ti,omap-usb2.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,omap-usb2.yaml
@@ -8,7 +8,7 @@ title: OMAP USB2 PHY
 
 maintainers:
   - Kishon Vijay Abraham I <kishon@ti.com>
-  - Roger Quadros <rogerq@ti.com>
+  - Roger Quadros <rogerq@kernel.org>
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/usb/ti,j721e-usb.yaml b/Documentation/devicetree/bindings/usb/ti,j721e-usb.yaml
index a634774c537c..eedde385d299 100644
--- a/Documentation/devicetree/bindings/usb/ti,j721e-usb.yaml
+++ b/Documentation/devicetree/bindings/usb/ti,j721e-usb.yaml
@@ -7,7 +7,7 @@ $schema: "http://devicetree.org/meta-schemas/core.yaml#"
 title: Bindings for the TI wrapper module for the Cadence USBSS-DRD controller
 
 maintainers:
-  - Roger Quadros <rogerq@ti.com>
+  - Roger Quadros <rogerq@kernel.org>
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/usb/ti,keystone-dwc3.yaml b/Documentation/devicetree/bindings/usb/ti,keystone-dwc3.yaml
index f6e91a5fd8fe..4f7a212fddd3 100644
--- a/Documentation/devicetree/bindings/usb/ti,keystone-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/ti,keystone-dwc3.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: TI Keystone Soc USB Controller
 
 maintainers:
-  - Roger Quadros <rogerq@ti.com>
+  - Roger Quadros <rogerq@kernel.org>
 
 properties:
   compatible:
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
