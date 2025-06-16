Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E449C71136
	for <linux-phy@archiver.kernel.org>; Mon, 16 Jun 2025 10:25:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IwdkLXebCWMKXVIcTSa+01Gv9eckTzADpAxhe7Z2f+o=; b=4MYQcsjt70LpT8
	iHvm/e8HfWD0M2QtlZB1NJRCuldbfiuqjPg4ISD8yopzJfmbocZkQEEidFk8CngouHXbelObdVDMb
	y4nOCEE3QiJPbgg9LqkrRxR6QD4Lkuqk8GYVSJEDj8y1sLuq/qpm3ehvgM0N5Sk85NTN2UHjSH0vv
	EYa+aw7btDnwfxKZoNe8PYfvJGui2xuT+AOufubi843pYtPOBLFT5aSF97qhtJpgC6qBdbwPmXmgC
	E8e6Ns1bzj+Y9maU0PuEu8ibnNJPCt5zkMIV8sWfyoq0f7Hun0mNAcF8atOxNfG4lHBMNOvakTzDq
	EzqNLzA83UuTR62MvrNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR726-000000043z1-0KrY;
	Mon, 16 Jun 2025 10:25:42 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR6Pf-00000003xGN-0au0
	for linux-phy@lists.infradead.org;
	Mon, 16 Jun 2025 09:46:00 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-ad1b94382b8so799984866b.0
        for <linux-phy@lists.infradead.org>; Mon, 16 Jun 2025 02:45:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750067157; x=1750671957; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YviJvB3mEmC6/KWy4TJGLCulrpnF3rGNjKlkw3ObS4E=;
        b=OTn2S+0cWW91+DnCBFD8uUDm7yENEU1QwjOdnig96HAkBDvBXf91SFAWBdiacHK5+1
         0Imm3zUJMUkTi1ybiOa7aeOmkHtglL+bAVj4HF9tm+A/IE6xF2dlS0/qZBeIYlsm3ZId
         LqCRhCmt4CwB5AZi3xWIEPTB/z+Qa2MjM5pAZYFy3MUF40PH2Tw7XlAa/DtiXQtVI1+x
         a/l9qKEsQkJMEvObCoU5vneT270rJOvDSbIh9qcLK8iSqaPesyTKj0NMr/OoSMBCMFuE
         L8Owa3I7yNO2wcZnOUKwGizT0IdNDVFaiCEEKCOBw0VyeRLxbgG0LZJbB7PZZwgUA07P
         c17w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750067157; x=1750671957;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YviJvB3mEmC6/KWy4TJGLCulrpnF3rGNjKlkw3ObS4E=;
        b=RoQlIOPuxcJ1O3edwy22EyOlDjv87XV6Ey1eBn2hr/Z5pVgOozl41O/kFG9ge/q03X
         ijR+H/2jXS0hZmyEmHAzcNaIbPOk9kF3nXt8Yg7qM6vMewJfHTUc9W0VMMYhA7w/cI6M
         ++/Sk6+Pesmv27X4BR1aXh8ptUFgPSwzO9UUWWch74oX6bYyhr5gTLSXilSatB5BGZ82
         cbm8RcLMSTmLZY3jnnfvb3AolhmHMZQj8RsJ2aueDK2gBejuRRPItbWvPvMS+gSfXA9y
         o+lwKx3/Dsx/iLJ1MHqqFiU7hoixH8dmBFAtjNDXLhxR785IV9cOsnQr6/QlIDZ4yDrk
         0xfw==
X-Forwarded-Encrypted: i=1; AJvYcCWOrY+mBMP/KXXwUmrkwmPnG2akqnwU7LACCllH/hzD2bOqDGadP4V5sSut00v80+ofn0teREKAk4E=@lists.infradead.org
X-Gm-Message-State: AOJu0YxfzrkpwEqDBo0iBrQiSrX4cPUgrDnSLYOOTzwbMNAsTP4Vde3+
	n/1UeiJz7KHpSFh7rWkWG9gxeT9JOVltYWVPc5iJvL/TeGQPhkkUkJuMWHvhp1de6Qw=
X-Gm-Gg: ASbGnctgNfDXsCrUVQIeWVyv3MqPi+eihNgsVjbvvQ8bmh3W5pp+gbxlVmJZ7TILDoT
	PHOmJKhLNVLUx3pUlQPWAdHRrNef3lKPENQpEM+sRUk4TnKjLqKc+J3/bln4AMQxo+MNAoU76qy
	TKKYMIrubJ7/l+0pMKCwCum3tJEw+mgFSLM2WHPREznBPgOD6hN3JgbJg+EljzC7f0O85zAp3A9
	zH3Sfz00Y6gAeOiI7icHSSDVZNU+dPjw6GMVKDvB2GrqDwaknG11YQIB9vRMxntUzdZYOgGa8Vx
	Rw3/watBkvjgt/O77KQbpXiBYW8KvE2wnY3NKFjhX2Goi8SkyLU3lr2VWVzzQH+j6JldCQ0Trq1
	AmE6CeOGSxxNUpX5WNY6raFWxoyAd0+aVIba87jvp2u8=
X-Google-Smtp-Source: AGHT+IFBvUYtkCndZW1QzfC5qAwo46v0T9wQgNbc8jLt4Uif3oBrNGyHRoJQOBcXYgi0oCzQrIclYw==
X-Received: by 2002:a17:907:1c0c:b0:ade:1863:6ff2 with SMTP id a640c23a62f3a-adfad5c9158mr790453566b.52.1750067157607;
        Mon, 16 Jun 2025 02:45:57 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec81c0421sm613375666b.46.2025.06.16.02.45.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jun 2025 02:45:57 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Mon, 16 Jun 2025 11:45:11 +0200
Subject: [PATCH 1/2] dt-bindings: phy: qcom,snps-eusb2-repeater: Remove
 default tuning values
MIME-Version: 1.0
Message-Id: <20250616-eusb2-repeater-tuning-v1-1-9457ff0fbf75@fairphone.com>
References: <20250616-eusb2-repeater-tuning-v1-0-9457ff0fbf75@fairphone.com>
In-Reply-To: <20250616-eusb2-repeater-tuning-v1-0-9457ff0fbf75@fairphone.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750067155; l=1248;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=OuFHBPiSDnHElYnOnjmGAqSP02DaggUPcI3IBLQcgxo=;
 b=/lx21CCyQJsnPnwSwibTX0OuPV2RXmhvYrgVwxk7E6o5tH/+ZPfJ8KQWyk+ryg1uGi12QFX0x
 QQJMaToq3B+CMaAcZ7HaCJEL+YpaHqDu7P9lHab2Mwuuz5XVdjjg/ZL
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_024559_185988_7CE63448 
X-CRM114-Status: UNSURE (   6.79  )
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

The reset default tuning value depends on the PMIC, so remove them from
the doc since they're not accurate for all PMICs.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
index d16a543a784887eabc69faae2233057c4554be31..27f064a71c9fb8cb60e8333fb285f0510a4af94f 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
@@ -39,21 +39,18 @@ properties:
     description: High-Speed disconnect threshold
     minimum: 0
     maximum: 7
-    default: 0
 
   qcom,tune-usb2-amplitude:
     $ref: /schemas/types.yaml#/definitions/uint8
     description: High-Speed transmit amplitude
     minimum: 0
     maximum: 15
-    default: 8
 
   qcom,tune-usb2-preem:
     $ref: /schemas/types.yaml#/definitions/uint8
     description: High-Speed TX pre-emphasis tuning
     minimum: 0
     maximum: 7
-    default: 5
 
 required:
   - compatible

-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
