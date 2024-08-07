Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45AC5C3DA7F
	for <linux-phy@archiver.kernel.org>; Wed,  7 Aug 2024 18:02:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GAXyBE2uE8Gu43qX/7bHm2e+xydeBGYutlgt11XvlaU=; b=2gxV+sRqY6gsjp
	tPu+jG8Gpygcat14zMm5tT/uSDwCaFOMoXdF/qxGP0cPzA/Ywvay2JAOq1+9RkjjvHhvy3utQnopD
	gwJwu8qdpxCI4cTSONVFuvVE8d6jUOI+YAROibbEahGNClQXp1DWuMCXX8uMQHrvQTE6YIw/q7Pqn
	QFTu89cxgl70sTmttm7Y9sHcgj4Vjt+Xj/vntei32DJYAYgu6T6UaAasQ5V0+WAnnsiqFzMJ94P2n
	SPzqmroRyBhThB9f1XOeS0r6a3aoCYb/vqlq/djrsvIxVjEWVMLqVAob5o6HoT/8VEpq74XVjJaNj
	0ovZ4OrNEZtco3JUUUDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbkzL-00000005tLf-42qN;
	Wed, 07 Aug 2024 18:02:19 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbkzH-00000005tKn-2923
	for linux-phy@lists.infradead.org;
	Wed, 07 Aug 2024 18:02:17 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-52efbb55d24so159803e87.1
        for <linux-phy@lists.infradead.org>; Wed, 07 Aug 2024 11:02:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723053733; x=1723658533; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jwE9+aTmzE/L4eY1Ly8aatDyxXhgT1yoAT1n8F/TGSI=;
        b=WO+fwYrZre8/eD8foNQWRrcKyBpRo4cE/lqZ+BMVCunTOeySB4KlEzQcRHLZflxOJo
         cXcPVMHVOW2FNGTu7+DJNVtu5u8FMRVtZuPY0+9EGMQJOJjz8RGY6DJA0n4DI5wHSf5M
         OGxNlm5powfsjvrkM/64z7lJheZuFGVkEPoPz6j7MQtMfsmWVLcNN+AovrHNplU995Te
         Iwakot+SJ6tP8lirOx0VItrDHt8yJlbR9XW2pH/5keXQ5T6d4xUjNyYTgcjsnnWvz4yM
         eCVwZ8wCOQfTjjhxJlgg0oV5k+pzCoaqLt5rUBD8NEzmo+9r/+XeA9SLSvo/mDFpVoC8
         xq+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723053733; x=1723658533;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jwE9+aTmzE/L4eY1Ly8aatDyxXhgT1yoAT1n8F/TGSI=;
        b=ckNHjo9jWDJqIB+lV1cTD6kExuAMcaUkvWCitcYXQML3WO4irGTJ32i1cSF8L/VtoJ
         5bpRLV+DYOSgWwvxsUWur4TOeMeQTQReEFJ6wuJsU//jjFnVVA2vlDqFmi6FqEq6GyT0
         VRhV8o5k4pQK53+t3e7wzF1c5TXBx5cZ/3ZFrmm+KqQmHao+lKGvm7BDM/kVZDrE0q5i
         eolzW07eLDGezhP8jgAuQSHvymOz3kghBlNGGL/GQJwOe6JuIDLAKJiIBNCD/rJx+KSb
         e2mVcIt2bPkNDQgKqX/kHp7zeZcpeYtuL+qNBLpbOE9I3EMb1N5envmguVwtQPBLgSOS
         7kYQ==
X-Forwarded-Encrypted: i=1; AJvYcCVAzHrPUsWuocMaQRfXCVIuHVXurcx1bpXd5LXs0Q2fkXpvoovNsmrWQfBk2KDxYLpxZzozupiTwjWqLS6zoZvOKFVSwkN+Ny9XaTwqZg==
X-Gm-Message-State: AOJu0YxH2NL9sT0dlPLKidyrVGOLXiXoF6eokYw6koi41w2bkxtrRxoB
	NmxTxOtrMBJtHxKm4rXObXZhskTzcGumVJW6zwdOa0sN4Ryp2EX+
X-Google-Smtp-Source: AGHT+IFAFz4dVLM+vZEi9pZsqtcnRSt/zqO+GPnpIZGyj3KakZJXvTw6178wvD2HqJDuTv8eJa/fLQ==
X-Received: by 2002:a05:6512:2387:b0:52c:d5ac:d42 with SMTP id 2adb3069b0e04-530bb373067mr16820971e87.9.1723053733003;
        Wed, 07 Aug 2024 11:02:13 -0700 (PDT)
Received: from ilordash-vm.mshome.net (broadband-109-173-124-203.ip.moscow.rt.ru. [109.173.124.203])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-530de3e2e18sm332454e87.34.2024.08.07.11.02.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Aug 2024 11:02:12 -0700 (PDT)
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
Date: Wed,  7 Aug 2024 21:02:10 +0300
Message-Id: <20240807180210.1334724-2-ilordash02@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240807180210.1334724-1-ilordash02@gmail.com>
References: <20240805-fruit-chip-cf08a0e166a3@spud>
 <20240807180210.1334724-1-ilordash02@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240807_110215_571190_493E58A6 
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
model, therefore use ATA6561 as fallback device for TCAN1042.

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
