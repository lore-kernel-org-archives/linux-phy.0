Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4ECD3C83F0F
	for <linux-phy@archiver.kernel.org>; Wed,  9 Jul 2025 17:11:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lCBwIH/tSjnLD3SWSgainRSzJUJ+H4Rx0pZoip4rw0s=; b=v1sHaVX9FCMgqW
	yYvFZUvPOa4b4K7sbqQH2u9HhPXCvYrWUsEWRiWRqNLGND1tTd0gT3vYdVCuI3TzhTsUX1LeNYDOu
	0zwTONRINraAhfxX4mUc+gwttu6oLFLggCduRX4g7hz5UK2oCfo4lRfmD2ObwXe+cEKwjhHsWyjov
	X1GAxy2uZSWryNp95S/R4V6LcDtIB/MmrA+iPs0sTJ0r5QlQUbT3hKQNKH4baKQnVbQaa2rB9sxos
	wKNDSFJ3at9QWpwO87++MY2SY6Gwt5TR0kBTgkteCddnJK65iP5fXpKCFzjnr70ZNeXK7LAVDTRom
	GAGEhPpvN+8yTnY9zmbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZYKD-00000009P4z-3uEE;
	Wed, 09 Jul 2025 17:11:17 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZWCk-000000093zk-1Le0
	for linux-phy@lists.infradead.org;
	Wed, 09 Jul 2025 14:55:28 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-ae3a604b43bso897518066b.0
        for <linux-phy@lists.infradead.org>; Wed, 09 Jul 2025 07:55:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752072925; x=1752677725; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q3A3hRQjja7NMerwUSuHLGaJ14/ejKpqQyPzO1AUrp8=;
        b=MOdcv3i+R76nyEPn2+vBdXFrDrpQ4sdedGwaNKi4kAZMIn8n7Gdb+sI7hh15wLcoAN
         msrmnKsoz4mBPE/9USlpIBHJBfeL4NUCbNgLahZUOB/JH63ThHKbVVsm0xibg+eQvxkr
         ELaV3bnVeAtbnrhQlUEHgDfH69xuWPznouw/ssppiKnXgwMYdlc4TO97ILTdj2lXwifv
         wtmiOF8CjP00Dvgik02YMqq80afI3cR/gA8nfrL2cWrprGR91xoC9vFEMyxqoDsch6sn
         qUOhzBELvfR02XsOl50749FxxbXb5IXCEkXTBtwnf5qF+L5YMClpQ98mcLBgLi9/KfXC
         +f/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752072925; x=1752677725;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q3A3hRQjja7NMerwUSuHLGaJ14/ejKpqQyPzO1AUrp8=;
        b=kCN4pRR3t6yn+6zFE8ill2AW1NC4n3+a08uzaZp5QeMEE2SzORTbgXoWHD5+kfmXIS
         khBCz6Xi/qfCYACYzYNYjquTJCLVwJiEIyG8mhGAGHD6NI3ohXbNk2B19tOZw99ywSor
         dzaUb+lq9As8OoCPG44D7lAT/FqBwcIz4Gty0iqd77kVgHzP4s5gyTfSC5NWa7QXD+Gh
         ThPTQwI+3+I6RYXi41f6yclg3U9Cv0K3wX45jXpYBrgzT/M86R+q3qsulyZGf2dSoTeK
         p5AooGXonB0U1Y8XVWO4/JFyvaIPCW3cuVWUbA/ZME5YY2SJGq2J6El0teBnjzGOh8Qz
         l8jQ==
X-Forwarded-Encrypted: i=1; AJvYcCXQEABYQ1O0gGg3m3Qpdqte4XzQxPI4C0SMETao6q8cLcxDk4qiSoUeZs553d/SIG1vqeW9ZOXssZk=@lists.infradead.org
X-Gm-Message-State: AOJu0YxLV+nbopv6PO4ehmVMYEFOTifvvBBJ57oXvMtLQhWfrNfukEWr
	4Gy4m45AWEucASKDU8vhRwVi0+FA2L6Zy+YQIL4NzayOQHQwDsfy5vEzB0RyiarltN8=
X-Gm-Gg: ASbGncv9enWMY/JmUAYwTeGOsYFIAyBvYl3EVhGsYhTyvI6QJbbL6wmyMdgjc7JGb+S
	YqftQpPlM6M95hWUGlrgqkR9ZrWqTOulgv4RSZ+tVCv+RfOamB5WqrDUPecghuxvXr5ghxW7xwq
	bDrtT1lgjmGNYzeBUqOx+Nq9WShkS9U4DCDb0YLFEIxZxOMHSvbYCSoASrGnIc47+MI3YasecEv
	gHYMcamD6mc4glNieJj4iwqtAej6N8Mxqp1MFJTHS6eKGU2Xk65qJz5TRA6F9bKQuNO0GVm+NBy
	3f0lySL5xB8+mDwpQk7IU0T3c6wXe0x31gsh5L0r0svDSz+Ubqk4sZTYFg/QdiuV++vq5zR3f9j
	mNVs1VSqlifhSuQNQL9D0GfPYEJsnVLQW0DuNttn0wRk=
X-Google-Smtp-Source: AGHT+IE1CWKVdaIzESsJv98mg9o7AX3rvILsP4/LmkQKyHBEdouOQ04zPbRMcVC/GnkZe9exm7j4sg==
X-Received: by 2002:a17:907:3c90:b0:ae3:6cc8:e426 with SMTP id a640c23a62f3a-ae6e1049e58mr9441866b.9.1752072924666;
        Wed, 09 Jul 2025 07:55:24 -0700 (PDT)
Received: from otso.local (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6b600ddsm1116795766b.158.2025.07.09.07.55.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jul 2025 07:55:24 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 09 Jul 2025 16:55:14 +0200
Subject: [PATCH v2 1/4] dt-bindings: phy: qcom,snps-eusb2-repeater:
 Document qcom,tune-res-fsdif
MIME-Version: 1.0
Message-Id: <20250709-sm7635-eusb-repeater-v2-1-b6eff075c097@fairphone.com>
References: <20250709-sm7635-eusb-repeater-v2-0-b6eff075c097@fairphone.com>
In-Reply-To: <20250709-sm7635-eusb-repeater-v2-0-b6eff075c097@fairphone.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752072923; l=1262;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=NXnGscA8zt8gzxiNiTYIUpV9OfGd5HRPGvlVvXT/iJo=;
 b=H+Maa8FQfQMc4eZK+lVTkgEgw5axIHwWJiezVuUHjjiMKqtPvImloJEAECKGkVNX2B4QbuKj/
 VbyHsa6K3PHDkywR6SF4gjvn6DReQ+U5+SEDTmfS3zD9EEvXZb76HsM
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_075526_369341_6797E314 
X-CRM114-Status: UNSURE (   8.74  )
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

Document the FS Differential TX Output Resistance Tuning value found on
the eUSB2 repeater on Qualcomm PMICs. The tuning values have special
meanings, being different offsets of the resistance to the default value
in Ohms but the exact meaning is not relevant here, as the correct
tuning is determined by hardware engineers to make sure the electrical
properties are as expected.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
index 27f064a71c9fb8cb60e8333fb285f0510a4af94f..6bfd11657e2992735998063b3ca390e04a03930d 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
@@ -52,6 +52,12 @@ properties:
     minimum: 0
     maximum: 7
 
+  qcom,tune-res-fsdif:
+    $ref: /schemas/types.yaml#/definitions/uint8
+    description: FS Differential TX Output Resistance Tuning
+    minimum: 0
+    maximum: 7
+
 required:
   - compatible
   - reg

-- 
2.50.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
