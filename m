Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A420AC52D7B
	for <linux-phy@archiver.kernel.org>; Wed,  7 Aug 2024 18:10:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VY7FCwcsA2P1/s126qfUwKryaQR0oU6D7rbfGL8jXAM=; b=vw1OqJXWFKKT3v
	ITJb6JaMr8hpPLJpMgB8S5QXqe0w1Se4LvhrnGUOVXSUDQlxl3iqv8YHsY0ABWH3Rp9J2f9TDqKGP
	NbBRnHsxVVOd3MKkYGmInGI5vi3CKb3SpfS1Sy+YVwLsTF8HLSPzWUyDJqjvWdKEc0nFYY2mgfF6p
	MvuzirQEvciJFVHbC8omrsDb4ZGFUpWiczOe0KxRLQoRGa8L3/y0NMj9BdmCuC1p7hylptgf+ZQie
	JmtX9TTOk1vyGCRfbXuX07zWbGTg6Hq6cqyVDHwmdJ+uaPDsQCq8oAgxm/1o9tM2MbpzHm/71avhE
	aH0I9DApjxAUKceQ5WEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbl6q-00000005u2L-19Gl;
	Wed, 07 Aug 2024 18:10:04 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbl6n-00000005u19-2V6D
	for linux-phy@lists.infradead.org;
	Wed, 07 Aug 2024 18:10:02 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-530e062217eso132500e87.1
        for <linux-phy@lists.infradead.org>; Wed, 07 Aug 2024 11:10:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723054200; x=1723659000; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KuxEM8VZYz3rwPd3prNufQEQgMIp4xSelxjonO07Zgs=;
        b=dMlB3E+vnxaVO/O1ODon6LBcyO0cNANO1Hv3eFUi2CGTP2dx5UobDyFyRzbPh9ttwV
         eoUM/WPyQJ2PWkOxsVekFx8S3EH0XrnL0OCEyDbNWtWAGCcW4pmG5EHRiJxwti06+1kF
         SNX6hbOMj0IlOZ4pq/H9N968A+4pJ2MMqkyFNCAaMX0ZqDXA02znpoKBPJ5OCkjmZJnP
         juOUVywLBa6wGPaiRLmNMatA+KM8N4Qnixyz6BAPs9CaYmkqD0i9qu82RYaTPZvYmopl
         gz3Nr38O//lXcCCb4Fa2CjHF6otHX9KA9u/80aej7s6d6klw1haOVhKKHE/N/5eMj9OY
         b2kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723054200; x=1723659000;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KuxEM8VZYz3rwPd3prNufQEQgMIp4xSelxjonO07Zgs=;
        b=CEY+pTERMVD/hVnEHEhDevsg26j6wCNUfFCzDvG8cyTDE8rerC/k2R0iS3TL+07krz
         BNkeCdFRE2WpSIDEJfiDfp2ajkOxqYGxJhd9Rd5yyB2xQtGuXYgZYTzvJqhnJ5LrbQx8
         uxWyY1/t+/so20/D/lus6w+zw40XcTert6DnxM7hwfM2KVoADtAYVnSxW6PC5j9VttRq
         KNDWY/T25mLg1snrX3SD2DVU+B2eRE/NvZalOPeKalayl8TMC2TNUm9sYP3BCteCTZ8g
         gN/RldUlU2ZgBg/VG5RugljQCxKR48dco5HmG6aeWoXR5/FweTiQEpdUiGwEYB3nxKVh
         7rZw==
X-Forwarded-Encrypted: i=1; AJvYcCVV9g/j/C7yXj7ooOdpSZtnwdyHfOIMWoZOzAXm8x5Oc9ZjSuACLElrWSGJYRC5fObPrwNp39sQVn4m7aWAvGJ3W6A0O9L1+RR1WiW48Q==
X-Gm-Message-State: AOJu0YwXGta20ZHaO/2I2e5yqJbznCGb22xyGFLfKZZra3/WLcpNKhgh
	IsDLncAQhJ6r0i1Vyv04kZ7PkR60FYXt7PYeDLdo01oTEjKm4X4e
X-Google-Smtp-Source: AGHT+IFQgMxCfTZ78J29Czohjtb4jQxi5+4UtE9O5Ch4U1w96P4Zt3x/nQ8fMNytR5RwLIOhgha6zA==
X-Received: by 2002:a05:6512:130c:b0:52e:8141:1b27 with SMTP id 2adb3069b0e04-530bb39b079mr14003421e87.43.1723054199279;
        Wed, 07 Aug 2024 11:09:59 -0700 (PDT)
Received: from ilordash-vm.mshome.net (broadband-109-173-124-203.ip.moscow.rt.ru. [109.173.124.203])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-530de3e2ea2sm328995e87.36.2024.08.07.11.09.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Aug 2024 11:09:58 -0700 (PDT)
From: Ilya Orazov <ilordash02@gmail.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Aswath Govindraju <a-govindraju@ti.com>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Ilya Orazov <ilordash02@gmail.com>
Subject: [PATCH v2 1/1] dt-bindings: phy: ti,tcan104x-can: Document Microchip ATA6561
Date: Wed,  7 Aug 2024 21:09:56 +0300
Message-Id: <20240807180956.1341332-2-ilordash02@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240807180956.1341332-1-ilordash02@gmail.com>
References: <20240807180210.1334724-2-ilordash02@gmail.com>
 <20240807180956.1341332-1-ilordash02@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240807_111001_656067_771BFD7A 
X-CRM114-Status: UNSURE (   8.13  )
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

Microchip ATA6561 is High-Speed CAN Transceiver with Standby Mode.
It is pin-compatible with TI TCAN1042 and has a compatible programming
model, therefore use ti,tcan1042 as fallback compatible.

Signed-off-by: Ilya Orazov <ilordash02@gmail.com>
---
 .../devicetree/bindings/phy/ti,tcan104x-can.yaml    | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
index 79dad3e89aa6..f6f1fd843874 100644
--- a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
@@ -14,10 +14,15 @@ properties:
     pattern: "^can-phy"
 
   compatible:
-    enum:
-      - nxp,tjr1443
-      - ti,tcan1042
-      - ti,tcan1043
+    oneOf:
+      - items:
+        - enum:
+          - microchip,ata6561
+        - const: ti,tcan1042
+      - enum:
+          const: ti,tcan1042
+          const: ti,tcan1043
+          const: nxp,tjr1443
 
   '#phy-cells':
     const: 0
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
