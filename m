Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F052C3DA4A
	for <linux-phy@archiver.kernel.org>; Thu, 22 Aug 2024 10:52:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=051koX/V3uM3SEuM9hF0QTFMcadS3EQ/9obmcq3ZXl8=; b=1I7vOZuhE4Mz8Q
	Ow2TCaGGRkXnd/2uRQIe6GdRTBZS1Q+oP+EwmSfFtA3WarFCvnnlFHg4RwWnj/WiC+nM/0Y5f2e+Q
	kffLYO1xkpksfMgWrXP91KLzyHyCP4ezdHFUqkKTBWRl+9naRDeB8lDYlxldz82vntkPk+HjjKtIu
	MUnM3KquzkkUYwTq8tjhK12GCpfBKPlFM/Om2zJLBRPyZNRVf3XimaYVfch4/IfqHwKFNDHd7Serg
	HVEbmDzTvFhqZBOfvam4duW4oBv+Ktg3Uylu+WpSjwuO96q55RGqaLVvBEKm6aDXN/2d4IFW3gyCv
	JgYD8LyKX8KJbTiF32hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh5Qs-0000000CUHy-3NLA;
	Thu, 22 Aug 2024 10:52:46 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh5Qp-0000000CUGK-2Dup
	for linux-phy@lists.infradead.org;
	Thu, 22 Aug 2024 10:52:44 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2f029e9c9cfso7676571fa.2
        for <linux-phy@lists.infradead.org>; Thu, 22 Aug 2024 03:52:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724323961; x=1724928761; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=731RcZeHTEALfaVb7fhfHI1er4oVn7kj9vmasIgzTaE=;
        b=OZTsmsVgZfco6d3aliG1S5tO/b0dV76UfSGnK6tBKvSGalFV768V0RKS9GJ1yHQNbZ
         nEZSyQuxoYzg17VK+w2/kBFGTelwSOKS3OGXJUz5Wq4zRbuN4yxgbIMl38U6FGiAn3ZC
         gCvKBYBIiQmtu9c19KUfhqghpu3lJJKgleTs1nSnhfeaEqZ8+TTBsgMOkPAfwIb6yuCK
         eZGv7gAhSeaXQzZDaM+E9JZc7zvCf5UXtXM79Fpl+LNUjL2bvjJDvFCHHVicpFJpqZAq
         ocosHAy95HQ802Wn2h+ZBoNVnw2FBBq5bWNlm2RVpi7rC6Un1FttpNZYc4a1lfMjwbG9
         IijQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724323961; x=1724928761;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=731RcZeHTEALfaVb7fhfHI1er4oVn7kj9vmasIgzTaE=;
        b=Lw9sfdDP4w0JXmXIi/agssmDoUOWktDChVcj2FtlALNph5OmG+WP0hG6el1f/R9Vp7
         lMmIzvQKxYVnkfwN/ja1MLISaMBkbq/Zd1WPVRW2KZ4ABgXtNFK4b4E7xksq+XJrOSIy
         YQCriMfcq+CPVCP3M3dQChbtSdYY652aD6Y7W7rdZe3WukZ+PFlzM70GqujX8ux/YBQ9
         k4/r7MPN2aGU0VreQ25iIkldon+HGbTYaSwR40c4WNvasDw3wtnh+oXZOGX5JSJQBAMD
         sotcNHo09Ru2xGkEEnguAwEWw8Q3r8PmO/EbklZwzmB/fWxl5gsSqKE/OjBZIBlTHlat
         k6dQ==
X-Forwarded-Encrypted: i=1; AJvYcCWi7d+GTAcShYyElLobuZTap4yLbnJ7lxoVI5lLvqzUpuxVy2UHGOWscfKvBTi6RT22/fBHj0smWXw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzi6DDrLLS+UdyKBraTZ2ZDR52OpLV7JfboA/zBUAmJPNt+XJuM
	pBOTswnanObytrx44yRs2flSCvzUaXSKNEclAC4Ee8eObS9nBtuN
X-Google-Smtp-Source: AGHT+IHDaN/6OMm9DmGNsNVe6VPZ1q8odEbtMigR7nu2Jgm+IpGLa5NIzCQFVQF2ZAT4sXqVvJ6drg==
X-Received: by 2002:a2e:9b02:0:b0:2f3:bdca:3e2 with SMTP id 38308e7fff4ca-2f405e9ef3bmr10474781fa.27.1724323960795;
        Thu, 22 Aug 2024 03:52:40 -0700 (PDT)
Received: from ilordash-vm.mshome.net (95-26-8-211.broadband.corbina.ru. [95.26.8.211])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f4047a4f59sm1886261fa.13.2024.08.22.03.52.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2024 03:52:40 -0700 (PDT)
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
Date: Thu, 22 Aug 2024 13:52:38 +0300
Message-Id: <20240822105238.213019-2-ilordash02@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240822105238.213019-1-ilordash02@gmail.com>
References: <20240822105238.213019-1-ilordash02@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_035243_589977_2FBAE4AB 
X-CRM114-Status: UNSURE (   8.32  )
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
