Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B1A3C35FE8
	for <linux-phy@archiver.kernel.org>; Sun, 15 Sep 2024 14:18:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=051koX/V3uM3SEuM9hF0QTFMcadS3EQ/9obmcq3ZXl8=; b=JSyjXDgOYpz2WC
	eYrJGE8Q34WuTYSGLAF0aqYkYJlkLGSCDiEReJ95OfZc4s2oIQ2C4gpaSSxMy57QpPAoCaFO0xJGq
	023ygQSkzY9p+JWmkRitqsNR+a92kp7P2WOFxwsyQkP+QKFNMnCYiawL9DTuzWQScVnSxlAkEsjvi
	YtB5yh8BS39f6C3JzSnrWIu/KpHXxrUvA61RQwFWqf+sxs2TQYO+W6BX8GHVT0mJwMZMvzZChfF8r
	QMh91nEogV6Nt9z/Z14bUBp/gu21mcxWmy9BZ7CdAxnyGS3EzkG6/OQhFydxBxPSBNWmovK2n3aHK
	NfGataPtZkzA1as1OzOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1spq5P-00000002Be5-2juS;
	Sun, 15 Sep 2024 14:18:47 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1spq5K-00000002Bd2-1itx
	for linux-phy@lists.infradead.org;
	Sun, 15 Sep 2024 14:18:44 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-53654dbde59so4416477e87.1
        for <linux-phy@lists.infradead.org>; Sun, 15 Sep 2024 07:18:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726409921; x=1727014721; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=731RcZeHTEALfaVb7fhfHI1er4oVn7kj9vmasIgzTaE=;
        b=QC08T6yj73LHkjOtrzxqSs9mpEoEkRCy4YLkqpYhkrSxamT0yxjzj9F3CS8d0qSQCq
         9cJK1VHJjfTMHcTRph345xUYko0eb4a9U2TeaKONlafWmOActT/zrNbvCa6t1lkk+dLL
         BL1RiJIYMyziXLymax9luuMOXXit3IxQSMy6Rit/J1QX0KnmR2sBcphtmoOUWTjJA273
         QKu+rqGN1ciVF9d/ClgJEE/lyxFej9w5MpfIq0xnDkCMv05qIcv2M1lDt9in/BgrC43V
         /RSmMm7vK2aPe4OZXPklelhPIBfbG8s/WyFtaq9kOpHjrNBn2l1Od3jCyYGCs3lr6tJr
         NOuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726409921; x=1727014721;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=731RcZeHTEALfaVb7fhfHI1er4oVn7kj9vmasIgzTaE=;
        b=nm+nTB1gIl7PHFCkrG7V4fbQqbpvDvAttJLaO1voQQ8PbjukdUDKM9bPJ6bkgsg/0W
         O1ykj+Ho7xyk0Fy+w3wDKcr/tLy1H5f1//tzNDcKwxUvJhmVyyc1CnisMHEXRa/JI/Ix
         vVsMCvMmejXwawoi4ArLyNjFzypgjNj4I+u45CJ8WTGey1M+2QsxGUS9hdbig7Nfvj6J
         rMDteAmcvDF7ERBqpkJeaP8i1ZoAoQbve9z2WwyJKXRnFFXtRYVmd2x6XkQ33haIwrpe
         YrB9wVR6snphltGmtyYp2RfJQIIVjQiyBs+hbxkY5f6orIHpQjhWPIX1qH9s1z/Gha4B
         kFNA==
X-Forwarded-Encrypted: i=1; AJvYcCXiN2ZWSWihCh80pwpeQehUsfG9QpIEYg5ZMdkS11OljbxFI58iBxUJ38WrM6tkl01cO3Smteu2bho=@lists.infradead.org
X-Gm-Message-State: AOJu0YwdU/nkyUO2g4gVW00MF+spmk9F5XQEwwqSLV71qyMBTqlQZL5C
	34IDu9hgzMIzQFFHaXitXOCyDGe+03lZBDPjFYg+9z2+AmgjXF7m
X-Google-Smtp-Source: AGHT+IEdGMoIq8Cu8zXTnL+7jCZhukUPP4pANNbdKP+4SVXTL6PZrH6oArytismgN7UkEcJAe5MgPA==
X-Received: by 2002:a05:6512:3095:b0:533:4322:d03e with SMTP id 2adb3069b0e04-5366bb48a87mr6996850e87.25.1726409920722;
        Sun, 15 Sep 2024 07:18:40 -0700 (PDT)
Received: from ilordash-vm.mshome.net (broadband-5-228-117-203.ip.moscow.rt.ru. [5.228.117.203])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-536870968c6sm568967e87.125.2024.09.15.07.18.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Sep 2024 07:18:40 -0700 (PDT)
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
Subject: [RESEND PATCH v4 1/1] dt-bindings: phy: ti,tcan104x-can: Document Microchip ATA6561
Date: Sun, 15 Sep 2024 17:18:31 +0300
Message-Id: <20240915141831.2809208-2-ilordash02@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240915141831.2809208-1-ilordash02@gmail.com>
References: <20240915141831.2809208-1-ilordash02@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240915_071842_456051_9B5F0099 
X-CRM114-Status: UNSURE (   8.23  )
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
