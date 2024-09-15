Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C721DC35FE4
	for <linux-phy@archiver.kernel.org>; Sun, 15 Sep 2024 14:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=051koX/V3uM3SEuM9hF0QTFMcadS3EQ/9obmcq3ZXl8=; b=G6aeGBboYBLyKQ
	UmzqsB95N/aa0ksANJ6e3/S76Xvt+2cC81lEnus35n1R37dXo+5XgFAB6MX4d5wpvu2f22nAfpfEd
	s26jNrXNQuMuzfhqtmlCVQCVbOfrM6T6xJUqz+/mZ0tofvYAzhWMPGIlySYkCuHOFpmSNS7ypxU4S
	H3FbPvW+fqx1pmKYNOJJUmEbAcefwXtuwUUYhEeO+jf+XIPcmOTSA0bn9Avum+gsrL7jQBeKHiqSI
	jODHejO3NPD6svik5cv+OWV56VbcLcygoSzhpwEMRZJyVvjc+4SRIZp3KgvQEfpYa73ZiurSNn+Vu
	f5VvWDyAA/suSrXu6Kkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1spq2H-00000002BTi-1Qjd;
	Sun, 15 Sep 2024 14:15:33 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1spq2E-00000002BT3-0NVk
	for linux-phy@lists.infradead.org;
	Sun, 15 Sep 2024 14:15:31 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-535dc4ec181so3014248e87.3
        for <linux-phy@lists.infradead.org>; Sun, 15 Sep 2024 07:15:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726409728; x=1727014528; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=731RcZeHTEALfaVb7fhfHI1er4oVn7kj9vmasIgzTaE=;
        b=Tqr8Q5ZKcMQ43bOe/Vu4e43MPZNk8FPoH7ICYD/J+rTTIG0n6bIS5kerTzuV1hvjgA
         IkNwEXOOFNvVv987ZVij/y4svXfYj6ZT/s+XDuQkSrqUy17FFYK1sGRA50XwNprWC9TN
         pv0SWSRJdlLCPboF/Rn5MEe65kZiuSfC9XuDoTlvW4RJjZqSkWhLldwMHa5jMYxT6wo/
         h2t9hmE/n4nH1paII8m1hD+iG9Wb7k0L8IXol2gUGOcy4AojjCDYy5yzN0w1PqZvhBWy
         HtkFahq3m2fYwN5sjF+LDRkhVtwY/04uZ+TeT2/De9q1Swwdm26/vgzMgiFjRLP0PFAi
         8qtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726409728; x=1727014528;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=731RcZeHTEALfaVb7fhfHI1er4oVn7kj9vmasIgzTaE=;
        b=SXbiOVCrUAMpnAuJSzbERnfCa28xlR9HOulh+mDJUdzL5iQDN4K+zgWAK/xCbPfVod
         b4osQr+ePnqsnC3lbI2EPsgoGKP+1od9WY9Onq+gGpsskYiWz670qzcmCMfkB2QVYJ7N
         3OA1fc/4DFu27v9mbrXk+ZLba7al38Xs/g++DJ5iGJoGfWKzawn3yWMGIrh/3BiYGzYQ
         3rrkOftAYN8uJcIU+2b0IBpjJG8mhtytyHAFqGDTbnepwt2HblHzd2LgII0wrrXaHMPg
         keD9wMkGxUkdUw0xpfK+3EqV+fVQsUXyeCXZYoMflfzBMpBxMRK41kxlPtdpqYsc3ynM
         TWzg==
X-Forwarded-Encrypted: i=1; AJvYcCVck4To71cgA5UP4dbrBcbdanTo98g+0elLR2h2QSh6CqR66MrJa0Dsvt1IRlO24E699lGBXiAmR4Y=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw4qyMR8iq31s6ZZvADwmqo9/W6Z3VPsL9OM/bGlPLvFx+gLraE
	UD7G9RZFBzpnBfGk+oIz24NRV3BN6HYwu/CKu+oXb4eCpViKY4ii
X-Google-Smtp-Source: AGHT+IE8xo9SxCSyrvC6lXR9rfYJXHpWHXpE3glLFShkHMRHBk3Qp4sURn+0LC/FptvpAai5P72XAA==
X-Received: by 2002:a05:6512:33cf:b0:52e:fd53:a251 with SMTP id 2adb3069b0e04-53678fec73amr7001780e87.59.1726409727438;
        Sun, 15 Sep 2024 07:15:27 -0700 (PDT)
Received: from ilordash-vm.mshome.net (broadband-5-228-117-203.ip.moscow.rt.ru. [5.228.117.203])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-536870968d1sm565255e87.175.2024.09.15.07.15.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Sep 2024 07:15:27 -0700 (PDT)
From: Ilya Orazov <ilordash02@gmail.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Aswath Govindraju <a-govindraju@ti.com>
Cc: linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Ilya Orazov <ilordash02@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v4 1/1] dt-bindings: phy: ti,tcan104x-can: Document Microchip ATA6561
Date: Sun, 15 Sep 2024 17:13:40 +0300
Message-Id: <20240915141340.2802953-2-ilordash02@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240915141340.2802953-1-ilordash02@gmail.com>
References: <20240915141340.2802953-1-ilordash02@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240915_071530_186347_AC253942 
X-CRM114-Status: UNSURE (   8.16  )
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

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Ilya Orazov <ilordash02@gmail.com>
---
 .../devicetree/bindings/phy/ti,tcan104x-can.yaml    | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
index 79dad3e89aa6..4a8c3829d85d 100644
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
+          - enum:
+              - microchip,ata6561
+          - const: ti,tcan1042
+      - enum:
+          - ti,tcan1042
+          - ti,tcan1043
+          - nxp,tjr1443
 
   '#phy-cells':
     const: 0
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
