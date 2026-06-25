Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A608CDB47C
	for <linux-phy@archiver.kernel.org>; Thu, 25 Jun 2026 02:40:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mC0HlZmec5wqcR5q6VpPXaodyg4Kz80g1fwuleSaQ9Y=; b=1/vG7+nbeWaVQs
	HTcP53R1L+bxw9tL8V+lo9x537BgVPXvYYGldbdcySCIX9lfwnr45SOMx8tP3YsdcMVn7ZBn0mFlF
	4IUvVtc403zwBu+sibrn6WOb//No5BIvXv7tPhYHsvf0ZhWhmyt+lG3DkzFQhrbE2dFDXDlyd1zLx
	ysDicvD//QiIlvlN+PJhOtcfqhzO1DxbapLp0sO8Izvg5d0xZAwGPvOeSvCcmN7zTpnlcvRBcEvTs
	1cXnzTMaZwog5y2I5vie/wVlHBzVkkSVrLaxHsfUExe5Ac3BGrw2alB3k8jhxOjFBd4Tj/rN1yEVv
	Or+w//Jy1J+3CHdjUSxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wca0h-00000008ZmO-34Qe;
	Thu, 25 Jun 2026 02:40:11 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wca0f-00000008Zkt-2l5m
	for linux-phy@lists.infradead.org;
	Thu, 25 Jun 2026 02:40:10 +0000
Received: by mail-pj1-x1032.google.com with SMTP id 98e67ed59e1d1-37d826e9811so1158067a91.1
        for <linux-phy@lists.infradead.org>; Wed, 24 Jun 2026 19:40:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782355209; x=1782960009; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6B+w/JGAQL38w6AJd9IpzadwmAsxuQxaTLnqy3En65s=;
        b=grbnh65jObXDGKNqs9f6Rh98F6HSfE4mVQuh9T55P+26RhwAxqF5Mk66E1DGNyIx9M
         zMndYB24F2mKDQgTy919tMlibjj1Z2O8p0nloFdaKwv6HyallQbyVS/pUxMCQoAIwzJ4
         aPQ7yurTIKMz/Hb9lSq1F718yQ0WRhYhWtU7Sno891ZFsGx52F6iwG5DgVfB3jrvin4+
         npJLDdCkTd3zLiVoY0M3I14KNeQUXi9AdZg0jy9UBINtLnkw4SfABVWqH7gRY6ypg1pR
         LkXoWo8tTYCHfS7jbDusAofeP4itA5O2Ep59kEAehRtMS0JAs+htpljxdWwd8fAtn7xB
         4RgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782355209; x=1782960009;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6B+w/JGAQL38w6AJd9IpzadwmAsxuQxaTLnqy3En65s=;
        b=dhV1NGZGbyoc43JcCZlsbIrofZk5z21q+W0irGLv79XEG+52/YJg3BTpfSk6VCRi/T
         9bcLTU+gIaF1NmllhcqDrrv/POk6129rGCXgUPsNH8P67eUjz622vT0tdNKD0u9PRYBh
         Op+sjOUCRqpJ22Q/857XEqTvFpZgTSbqpRIfZ0yUQzFEfvYp0nFuECalpcmyOPCkXsDb
         6vq63dF9R0oIMdTEFdumNTEeGh/lizzwWCNOz0NTyN9YVy+M3m1cJAPRWd/23ub2wvCA
         57fRlNqU07eyCjqZbxTXAfHjdlXAGTFGveguKV/V/UmgcxrOKQ+rN0UsR7LBXbtsrIOP
         tCwQ==
X-Forwarded-Encrypted: i=1; AHgh+Roe7JbBzV6qKVQqk451BAg/tm/m0vs8EHj0pTsYDh8Zim02O6swfdJufLYul/Y/WE7VApnTuOE6QHc=@lists.infradead.org
X-Gm-Message-State: AOJu0YyUIbEAs0rGw47S33q2VfFpWJl51Cm3GzTEfbiJr7+8Rc5Uleck
	+GMBO4lTk7NQtlyp6GmcwBA++zYFAg7LokX+jUFits9sVZAuruC21vrZ
X-Gm-Gg: AfdE7cnQecHMCQChP9QwPUG8VHEBQhdKvdlypV0Nk+uKupYQIojGKtbZNLFNZAjY6IH
	CZBTRDYu0/tSz7Zm7rAXwGLWDCMd15L09TL2tFxAiw8dLYeRFAHORY0qq7I8zLzoX3he+bcYmdL
	CMui/Q/5GmWLnB+c7gfG1AwkVaYWmOya8p8BD1lny7UCKDh6UB1X2L7lDhdEldbmy92SJ8JYfAT
	2dtmtGXY3pZTPmfOXRwq/3xUYla3xi3sK+MU+CgL3dADFm0FaOqy6u2ONCTg+UCjKt9tn0PRDLr
	hOtHXBA213HtWa4a2iwQ2XJJ4qm4PZzFxeTPJ6KHB4lEvcbbu/iBl2s7GVXDTftC7dbswRkP0Ir
	7uzB+8bCUGXiEnHzTKOW8e6YBZIjEdtqDkT1BmBSK+1tCkyNakbg7ZwBf2VhPkiaS/TPGpUY4pS
	IC58DMlkkQRMCjQSFfCpCe1O02s1R/InhJKwNEh5/ZOQ9kk2C1oUwx01/qqs/W5OMiWIlokXNms
	cnATMXfL24H
X-Received: by 2002:a17:903:1a68:b0:2ba:7881:948d with SMTP id d9443c01a7336-2c7fc658488mr8256905ad.1.1782355208638;
        Wed, 24 Jun 2026 19:40:08 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c7f64dc839sm8538545ad.68.2026.06.24.19.40.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2026 19:40:08 -0700 (PDT)
From: Joey Lu <a0987203069@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Jacky Huang <ychuang3@nuvoton.com>,
	Shan-Chun Hung <schung@nuvoton.com>,
	Hui-Ping Chen <hpchen0nvt@gmail.com>,
	Joey Lu <yclu4@nuvoton.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Joey Lu <a0987203069@gmail.com>
Subject: [PATCH v2 1/4] dt-bindings: reset: nuvoton,ma35d1-reset: add simple-mfd and child node support
Date: Thu, 25 Jun 2026 10:39:55 +0800
Message-ID: <20260625023958.569299-2-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260625023958.569299-1-a0987203069@gmail.com>
References: <20260625023958.569299-1-a0987203069@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260624_194009_697822_15E8A6B8 
X-CRM114-Status: GOOD (  10.35  )
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

The MA35D1 system-management syscon node hosts the USB PHY register
block at offset 0x60.  To model usb-phy@60 as a DT child of the syscon
node the binding must allow:

  - simple-mfd as an optional third compatible so the MFD core can
    instantiate child platform devices.

  - #address-cells and #size-cells (each const: 1) so child nodes can
    carry a reg property.

  - An open child-node pattern (patternProperties "^.*@[0-9a-f]+$")
    to pass dt-schema validation.

Signed-off-by: Joey Lu <a0987203069@gmail.com>
---
 .../bindings/reset/nuvoton,ma35d1-reset.yaml        | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/reset/nuvoton,ma35d1-reset.yaml b/Documentation/devicetree/bindings/reset/nuvoton,ma35d1-reset.yaml
index 3ce7dcecd87a..1fda7e8f4b5d 100644
--- a/Documentation/devicetree/bindings/reset/nuvoton,ma35d1-reset.yaml
+++ b/Documentation/devicetree/bindings/reset/nuvoton,ma35d1-reset.yaml
@@ -19,6 +19,8 @@ properties:
     items:
       - const: nuvoton,ma35d1-reset
       - const: syscon
+      - const: simple-mfd
+    minItems: 2
 
   reg:
     maxItems: 1
@@ -26,6 +28,16 @@ properties:
   '#reset-cells':
     const: 1
 
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 1
+
+patternProperties:
+  "^.*@[0-9a-f]+$":
+    type: object
+
 required:
   - compatible
   - reg
@@ -43,4 +55,3 @@ examples:
         #reset-cells = <1>;
     };
 ...
-
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
