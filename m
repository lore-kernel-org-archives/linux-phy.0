Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A98FCCA479
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jun 2022 12:45:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lbex+VXIJTMOYU612Mf7WpK7DvkIyQijSeMN4mtLe1E=; b=4l+Ou/X9lK7xgP
	jFnOdAzN7jXQ9AY34QqyECRQ2Hw1YOuVQ8U+LotdGtGO/GpZQ2R8ak1+S3tVjxds0Js66Lq4JH0XJ
	WfLwB5NTbpe+sc6GE4hQ1xZGb0G4t2vhP2DjfiMRUhtV8VIx4eXzjwAAeRV0C2vCh2ljZdjziBJZ8
	tPflM95y+juJlV100mxZqSjDqcQ1gqvySbHKIo2n4N89OVZ7F7Zz2xhzhv7LhjN1LxPfZr0f2LyuN
	v8jYt8r3NyKwD2rxHkG/MvTEa9Nw4/wvjddCKIwjdAThpQKsV/ZzXtMUjWOvIVbiWG6vJwLaFXkz3
	KxKTiZjSlg01caTB1ynQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Aaq-006Dms-PQ; Tue, 28 Jun 2022 12:45:24 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Aan-006DjZ-4s
	for linux-phy@lists.infradead.org; Tue, 28 Jun 2022 12:45:22 +0000
Received: by mail-ej1-x636.google.com with SMTP id g26so25512271ejb.5
        for <linux-phy@lists.infradead.org>; Tue, 28 Jun 2022 05:45:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=pWy53RILJ6Qa6Uv8/5trw4fA3o1TR4WeWhGrXiQns2g=;
        b=GI2bfTI+oPZhauznzAMgp8lBoloxpPFWPIPpXcnJNAilvSNKyrnKjpqXq7yND2gkF7
         uf22bEej7rhHW0vyyzfieSB2MB1IZlGRDzv+c+25uriZyHTspThRrM5RBmAwpfxK26VE
         o2TtcyZuCZ5hxjZDI3HYXmJ2xW5nkhvr2HWCN3+38P2CEPRdbxZSjGLqfMFmFd7OAVZJ
         v+u5mmuxA+TtxH90fqfdQNcCRs3lpPqH9mNE+GaS9Lzj7P8kYNjNcz+PI5DraymXKXRR
         mvS/CcSUaoDEDJDNi3ME9LJJUfvHhuvo1muB6tfGmYJZsT88yyD8Bsp4o8h0HUWm+uYt
         NWQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=pWy53RILJ6Qa6Uv8/5trw4fA3o1TR4WeWhGrXiQns2g=;
        b=Nw97iRodAhbNwV3gnAhbQz39ioVjbs0IoCbdvqlL01uJZoF3ZLkGdrL9zzR7MnMCed
         TQaqSzutnZsDTtnf78D0wexc9aVK0swn3FXxfLcVIlYslDyyKSruiTwMadhKrX7zDMq+
         VutjNZ5xV8yYFk9kpOo36Vsps0C1icV7MGf+BbYK1M2BmFM4bpDE96JFnF/+W+zjOFUR
         +2IgJcQ1FiME0stg+bAPfajV9oM2U0EGzzaXY4igaXx4lcDy4xY1BMoW4BUxUmxIS+Oc
         z1PydQ0WcY26mQ9F2XZSWmz2pWdMOiBzRasLkACKKewZ9tn96Q8Vr8PSbsVJEPDvqDSY
         UlMw==
X-Gm-Message-State: AJIora/TEBMJuYdlIjV9P7waYnAg1uiTxI3LUXKo7vttNPpnnRvlvAAK
	eLKneeyhus6GN1IfD2APxupQXFLNU7M=
X-Google-Smtp-Source: AGRyM1vTDsl70Af9eviVGtq5Yi/oUbUqx8gBk3UZxf/wRnSVdh4QXGUQ5G93aKdq3ZK5B3ETIHKqsQ==
X-Received: by 2002:a17:906:5343:b0:722:ea54:fe67 with SMTP id j3-20020a170906534300b00722ea54fe67mr17867627ejo.181.1656420318647;
        Tue, 28 Jun 2022 05:45:18 -0700 (PDT)
Received: from localhost.localdomain (dynamic-095-114-061-215.95.114.pool.telefonica.de. [95.114.61.215])
        by smtp.googlemail.com with ESMTPSA id f13-20020a170906824d00b00726e108b566sm622871ejx.173.2022.06.28.05.45.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jun 2022 05:45:18 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	p.zabel@pengutronix.de
Cc: linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	vkoul@kernel.org,
	kishon@ti.com,
	rtanwar@maxlinear.com,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH v1 2/9] dt-bindings: reset: intel,rcu-gw: Allow up to three global reset items
Date: Tue, 28 Jun 2022 14:44:34 +0200
Message-Id: <20220628124441.2385023-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220628124441.2385023-1-martin.blumenstingl@googlemail.com>
References: <20220628124441.2385023-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_054521_247750_FF448DAD 
X-CRM114-Status: GOOD (  10.39  )
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

Legacy SoCs use three elements for the global reset:
- offset
- reset bit
- status bit

Allow this in the dt-bindings as well.

Fixes: b7ab0cb00d086b ("dt-bindings: reset: Add YAML schemas for the Intel Reset controller")
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 Documentation/devicetree/bindings/reset/intel,rcu-gw.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/reset/intel,rcu-gw.yaml b/Documentation/devicetree/bindings/reset/intel,rcu-gw.yaml
index 13bf6bb3f097..be64f8597710 100644
--- a/Documentation/devicetree/bindings/reset/intel,rcu-gw.yaml
+++ b/Documentation/devicetree/bindings/reset/intel,rcu-gw.yaml
@@ -22,11 +22,15 @@ properties:
   intel,global-reset:
     description: Global reset register offset and bit offset.
     $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 2
     items:
       - description: Register offset
       - description: Register bit offset
         minimum: 0
         maximum: 31
+      - description: Status bit offset (only if "#reset-cells" is 3)
+        minimum: 0
+        maximum: 31
 
   "#reset-cells":
     minimum: 2
-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
