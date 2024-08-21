Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1952C5321E
	for <linux-phy@archiver.kernel.org>; Wed, 21 Aug 2024 21:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=inNQTwVSgz9QyItIVbiSzYqWZ1Vi5sCSyyAq4hLbIGQ=; b=jY0EV/ZwfYEUxR
	UVvmkjXnxz4P6Gj9HOuv7ubJqERHhiCLbX1oKerAX+YWA4oepu8I1/VjKxj3R8BX58PFVHtqGyjWd
	7eTTKh1mYsfxxlWAYadmuffOqdfGxKb9GFNEW5ZGwC4SA1uK8imBTsTAPIO3o+/eRnXp7owZqq+yy
	L9ZUgbOJNtDMfvFLYIIpvoAG6yaZgAyfkVu6qapDvjV5fhJuRYuffA0mTmXGnXxQyUfI8AH0zdnye
	RumdX1pLNF/5EffMIiCqw98u7yKNcepQI9x+sbwlz8nSmwbik5NgLNvbqIWegI7X8Rmqn2GfBAsJW
	Vx+7a4DDLa/F563yguAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgtHK-0000000ATUb-1oYU;
	Wed, 21 Aug 2024 21:54:06 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgtHH-0000000ATTa-2fTI
	for linux-phy@lists.infradead.org;
	Wed, 21 Aug 2024 21:54:05 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-52f01613acbso1481498e87.1
        for <linux-phy@lists.infradead.org>; Wed, 21 Aug 2024 14:54:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724277242; x=1724882042; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XzT7u9Va9+FkDuNLpLus7IzkjxONKq3lMA75TDxSd+s=;
        b=bkjP73Rj7WzNrYAz1QZCcNV+mm5MSbGaeO+tsScFvQsg8ET2HGuQWW0DA50q7TbOXk
         LnK7s08v/MH8/XrbuB0g7lTazu92L4cicOsO8Fdb9jU4VSH5UCeCEs6ngb+Is69TVreT
         te25BDy6kYozpe6fSueIwNW2gcpbW4ZdhEsmRXwWvmVzigZ8ZOfcOR02k/q3jDAWA83y
         NNbAgU0Rj/+/qZ+CYskUBKnol19E2FQ5D7kWmB6YS1Yaz8jc1gVTVqviXnwv0QLANnpE
         Ar0d/D0IyxcU0nubdGf5mSAqCI0yQ+ZIGnmuPQEo3gr4kDFxQ97z5Sw7kBnM8aKRgskT
         Xl6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724277242; x=1724882042;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XzT7u9Va9+FkDuNLpLus7IzkjxONKq3lMA75TDxSd+s=;
        b=d0gHaFcGnjDp6BPLmKVtozDAv4EJ+28OcVwaO/S+NSyoPqmGLI0UPZKtB55nKlHnAv
         kU5WKbZ0Kwa32QqS9M4yMIc3oUEUubiKxN919BYE/lZ8grBzXMkQ19sfVPUXZsLUREJF
         10QGftI6YyzXq+5DURydi+tHQTaK9Mkn8evO98haOflvoSXGHGT1BQXh7M4XIEwk5I5N
         rIl+mpXTQgBVBgo7ZasJ9JmKcpB4R9vbZpFpXl0Ies3bdON78m2LQdp5t3FD8/FO9Igz
         3FkwIRc/dB7KzqsPEsiBGlekdlpKCw8EtC/I/IxR3jxUMzTR3RnL/oDtfuHD3LitIvc5
         /AQw==
X-Forwarded-Encrypted: i=1; AJvYcCUXivsckmEV3msI7PCK5CC3YPGXyKsleMOKRQ45lmScaN94BZEr3Jl4CVsLJNJ1nLXapvF24JVMN44=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw2uZZpuAFBph7l/ZRSrUCgANDz3a3nbXLcjCukRSowmz3Zl3Jd
	yt0HC1Sdb1eN9Id5nxBazzqanh+XoAIkZlU9xT7nS5p3K8kN32t6
X-Google-Smtp-Source: AGHT+IG6spftSttzdVaDbR+Cow/+aj2DlHU11b0mq8N6KLzTL/5MVfbFQ8AUb7MhGFrrQVxZxQC9Rg==
X-Received: by 2002:a05:6512:b03:b0:530:ad97:78ba with SMTP id 2adb3069b0e04-5334ca7d79dmr277195e87.9.1724277240906;
        Wed, 21 Aug 2024 14:54:00 -0700 (PDT)
Received: from ilordash-vm.mshome.net (95-26-8-211.broadband.corbina.ru. [95.26.8.211])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5334ea89004sm15623e87.274.2024.08.21.14.54.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Aug 2024 14:54:00 -0700 (PDT)
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
	Ilya Orazov <ilordash02@gmail.com>
Subject: [PATCH v3 1/1] dt-bindings: phy: ti,tcan104x-can: Document Microchip ATA6561
Date: Thu, 22 Aug 2024 00:53:57 +0300
Message-Id: <20240821215357.20224-2-ilordash02@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240821215357.20224-1-ilordash02@gmail.com>
References: <20240821215357.20224-1-ilordash02@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_145403_694872_B0A0ECD8 
X-CRM114-Status: UNSURE (   8.44  )
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
