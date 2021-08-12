Return-Path: <SRS0=qRVw=ND=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33F88C432BE
	for <linux-phy@archiver.kernel.org>; Thu, 12 Aug 2021 20:42:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EB98F610A8
	for <linux-phy@archiver.kernel.org>; Thu, 12 Aug 2021 20:42:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org EB98F610A8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vlVCOPzZxpJD/UP58NWxmaNFasBd5pnaSgMb2UzxQ1Y=; b=QdqGbMaclqzt4n
	LgUNoWo9LR5CapCREqcDfFlpCF3Vj+jYodZ5T+7027Z8GHiofIw+R9ZJji1bILsfy8RLbHyKEuSiY
	kk457VTRbKIqYQZmUdD7QQSmDDlm4KJ7N2pOfBUV91HhNBsQdlKjWJtP0pn89OJY6POyHelopQYHw
	OTkqmP5+wLo7e7/+1CuXEaKGtgjjIXK3UtZe08C0r9G2q/Dy1NbXd9ctWTT9dduoltnUs/tE0OrO1
	CNjg2riKFWg3QvyP7VFHdKJ/fc82s+BOCQ/tN8hptQ9tMuQSLTXa1Ob75tzEKF1mCkkjDnz1rQk+K
	tB1ANQbd5z74vbmZPg9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEHX3-00BBbZ-5N; Thu, 12 Aug 2021 20:42:29 +0000
Received: from mail-qk1-x72a.google.com ([2607:f8b0:4864:20::72a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEHWa-00BBOm-70; Thu, 12 Aug 2021 20:42:01 +0000
Received: by mail-qk1-x72a.google.com with SMTP id f23so8203230qkk.13;
 Thu, 12 Aug 2021 13:41:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ochq/82t5xUPXvIID1znrVTmhLe5E8Izsp9c+gWvjrs=;
 b=Ed+L/+HybSvG4ub6uDGYR4D3031+XqS2vV/V6Zxga1iPxvcAIKPkTXPVoHkCVCs+Jc
 OKUpjvQMuusgI+rqnw2LTK+aJ2VxMT5xjukAFHS3q+mwW19KSl6HlxU63WGj3x3RBAvr
 MOxZmmj52Fo0YcckO8dSOhTrhBgiP/5R1ePBp9JKzIxrBtfztUWJVSOBO1JfHLFdW7Ba
 hspMqOkcp9js009uvTsU7HDcdWMpXA0UoLF0DX8sgc+tZBK0fMs8MFs+UTAtwUJOk+IX
 WwjfNLmZKGHiCxD4PV3ngGlugVyUsslMv0PxzSi4LsJAmzoGCndHxLA6WC6pg748Bk/W
 oy/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ochq/82t5xUPXvIID1znrVTmhLe5E8Izsp9c+gWvjrs=;
 b=i9UcV4/NQ6+0JllXiP0fcNPkeK89OCMF0Q4zvL2z3F5m4W3vFkkrU79FIvJUrSkTY7
 9NUX87ZEKh75WLuUxJdpf+HMX/afxzblNB5GuCOY16Ko03R6TRUdDvV/xrnMClA+/PEz
 PfLwF0oTYmuaQyI1mBsynTHNatg33UPQDBhAa5LyArc/KhDuH5B+qVwd6oc3KyOualw8
 MMPN7TBBu7yrYBBBE1ziVJh/zRoul0yKiDrNgughMiDt1h9cdA31c+KggKwbFfzHAP7c
 AQhS8rdrpIcvpVBzywVHlHrN7sj9JHpC5dqGrAYPQXEQiv7cIurYb1xWkRVqmJeQwbvY
 Ltgg==
X-Gm-Message-State: AOAM5314e/5u8Lb8+vPLHrbHi7r28w+UuhJLS4oKolZB6KetbA6GyXcE
 vpu7Mfl9t8DE402hVwvfT74=
X-Google-Smtp-Source: ABdhPJxc8txTOhaH5bN7e5C0ZZdy7/xbhS9z9tOTuYM+5y6GbHfXe3ZldmfmU/BYBbYY0BHqOmGbkQ==
X-Received: by 2002:a37:43ca:: with SMTP id q193mr6552744qka.459.1628800919041; 
 Thu, 12 Aug 2021 13:41:59 -0700 (PDT)
Received: from master-laptop.sparksnet
 ([2601:153:980:85b1:e89f:d077:9161:1bd7])
 by smtp.gmail.com with ESMTPSA id m16sm1940361qki.19.2021.08.12.13.41.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Aug 2021 13:41:58 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/8] dt-bindings: phy: phy-rockchip-inno-usb2: add rk3568
 documentation
Date: Thu, 12 Aug 2021 16:41:10 -0400
Message-Id: <20210812204116.2303617-3-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210812204116.2303617-1-pgwipeout@gmail.com>
References: <20210812204116.2303617-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210812_134200_300382_86591A3B 
X-CRM114-Status: GOOD (  11.18  )
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

The rk3568 usb2phy node is a standalone node with a single muxed
interrupt.
Add documentation for it to phy-rockchip-inno-usb2.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 .../bindings/phy/phy-rockchip-inno-usb2.yaml  | 31 ++++++++++++++++---
 1 file changed, 27 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
index 5bebd86bf8b6..d2a749c3f9a3 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
@@ -18,6 +18,7 @@ properties:
       - rockchip,rk3328-usb2phy
       - rockchip,rk3366-usb2phy
       - rockchip,rk3399-usb2phy
+      - rockchip,rk3568-usb2phy
       - rockchip,rv1108-usb2phy
 
   reg:
@@ -50,6 +51,9 @@ properties:
     description:
       Phandle to the extcon device providing the cable state for the otg phy.
 
+  interrupts:
+    description: Muxed interrupt for both ports
+
   rockchip,usbgrf:
     $ref: /schemas/types.yaml#/definitions/phandle
     description:
@@ -78,8 +82,6 @@ properties:
 
     required:
       - "#phy-cells"
-      - interrupts
-      - interrupt-names
 
   otg-port:
     type: object
@@ -109,8 +111,6 @@ properties:
 
     required:
       - "#phy-cells"
-      - interrupts
-      - interrupt-names
 
 required:
   - compatible
@@ -120,6 +120,29 @@ required:
   - host-port
   - otg-port
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3568-usb2phy
+      then:
+        properties:
+          interrupts:
+            maxItems: 1
+        required:
+          - interrupts
+      else:
+        properties:
+          host-port:
+            required:
+              - interrupts
+              - interrupt-names
+          otg-port:
+            required:
+              - interrupts
+              - interrupt-names
+
 additionalProperties: false
 
 examples:
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
