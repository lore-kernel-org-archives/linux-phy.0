Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D4B0C3601A
	for <linux-phy@archiver.kernel.org>; Tue,  1 Apr 2025 21:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7PY9qadBYXfOQH/pyty/+r+O7QrdHKYsjMi+DD8/L8Y=; b=c0CmK5jwwxzwpP
	7CmdJvA4gAmJQh0XC/A7rNyflQUT31NjXkASXAK1d0u4gWle94GbA/a6K6RnC4XkVn+9UWZ4aoYIL
	NTuQiLjoDxJxn/Cr7uyf55Ppt1ZMYnZBpRDtCiQM2L24c1+vE0yvLxOlysz/pk58gyG6WFSM/8XSx
	qDTPhmY41Ujv5AtCCDr0134+bOpxUJaFhMXvi7bG8LiGUzVXNarAZInsQroh6bbNljPFvK/SUhImI
	q9EQD40Kr9PGaIdrJsaTyUV/W7sBGXnU4Aiyrcp7GJLXqnEKzIm8jvB53gGL2mC68WLxW/8lNxno1
	ehhekjppX9I80Ac5cDjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tziuO-00000004QBH-2XtF;
	Tue, 01 Apr 2025 21:12:32 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzipi-00000004P2l-1RPx
	for linux-phy@lists.infradead.org;
	Tue, 01 Apr 2025 21:07:43 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-22409077c06so160891185ad.1
        for <linux-phy@lists.infradead.org>; Tue, 01 Apr 2025 14:07:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1743541661; x=1744146461; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fh6IUA26lEyrJEifWIUg0Aon6jE68Po+06xiKRDzRZA=;
        b=VTdcog1jMqllPgZJjEt6TJ8tczN1HVc7ehAUUeiQ0OAXHM5Rdvp+1+Ogm2c1TGP44Q
         mQmZEZ6hItznFy79bK1e0uy0ASZVXCMSKVAKeQgMGV7R/WO6+p8Wf/SE2dFF8PEWS/Gv
         3DOdCGARhxhd7YAp7KYc/7w5AwsBYyhSs5GsQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743541661; x=1744146461;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fh6IUA26lEyrJEifWIUg0Aon6jE68Po+06xiKRDzRZA=;
        b=sLQu+tViE/UcFUqBcIoWffL5qtSjRgLvaxOmhlXGC1hIDQTNAHRjkQV7J1aZJhHgvI
         1eZtuAb1W80MRgPzISJEgj/N70OaMmbJ9TLDUTGj1CBEItK+PiPur+3mnLTy4Ybf3lUq
         VGdFsHnvLOHyhKOjiDc5Vil4+iEn2kKtUsciroW6os2Pi1vNg+jAmaB9D/ZPwbvjp0y4
         AE1MpZ0DNM0YZFrPiTADSadVbxKic2epkeVCeriJdCL14L/6o6AxiMB0PBkXFNIPRfEN
         59xQS3UYH0gX8DKv4D8rGNWQ6WhtEfJ7ZoQ3jv783Hu6nAFnfC2hf8TVCXqzXRUK1zAP
         VK1w==
X-Forwarded-Encrypted: i=1; AJvYcCWA+A65aE9JGyykAHQ3ynyS/YCiwkpNxtN4HCB5b/18Ijwp11bYSUdIg7igpO4DYn1U2YUKMwDFLDw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyep32sYZYjzshPsEA0QJpjqUboreH7B/5w1TQsY2oZttmi3Y0Q
	ctiX5gCK8tT3a/rVVeFPQKYRz/uBlrvDuJn8GJYb2BSXIK02EiRZj8/8saCH0A==
X-Gm-Gg: ASbGnctQHtUwgkHZQqsJG+zuJcpbMTZzIdZNuWSl5Xq3zM9OTjdEIMIDgABir9o/3G/
	VLYGzfICWiIFCcVZW2h+Q6CFso35S5gyZj9yAnij3LHwdjhvAjmsvbCWul9zwJBrM7E7Gh3uxLg
	/hTjmMQsDDiRB97sNlSpAzdP7YOuyp8kLhgJ5Q+/KqBYxP+mhVFzlwMkrEdSXEclAabAV5dwIEk
	pRwX55wshHmBK6EdV0mpWZUGnrCmU7t0gXSBJjagf2songsMlF1P0hf2+fCL6fBQAWROF0X/rB1
	KOT2GOrmkPaYuOqtGu4IesmOou9cjrRvl7w+nJLkTjo3CtmWLM0K88+/jkc4+zJp34UB/BluprI
	qpRndIvc3Y0fnH0Q3OGH2uw==
X-Google-Smtp-Source: AGHT+IGf9oq+B6UHqEuTrughCDWV/clMEy9Ly7iIk2+4GYzd43PWpBaNMRG0niwSdY027BBWwPy/rw==
X-Received: by 2002:a05:6a00:2da1:b0:736:4b85:ee05 with SMTP id d2e1a72fcca58-739803c5d57mr21662614b3a.11.1743541661474;
        Tue, 01 Apr 2025 14:07:41 -0700 (PDT)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73970deef7fsm9414995b3a.9.2025.04.01.14.07.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Apr 2025 14:07:41 -0700 (PDT)
From: Justin Chen <justin.chen@broadcom.com>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: rafal@milecki.pl,
	alcooperx@gmail.com,
	bcm-kernel-feedback-list@broadcom.com,
	florian.fainelli@broadcom.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	kishon@kernel.org,
	vkoul@kernel.org,
	Justin Chen <justin.chen@broadcom.com>
Subject: [PATCH v2 1/2] dt-bindings: phy: brcmstb-usb-phy: Add support for bcm74110
Date: Tue,  1 Apr 2025 14:07:35 -0700
Message-Id: <20250401210736.2613748-2-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250401210736.2613748-1-justin.chen@broadcom.com>
References: <20250401210736.2613748-1-justin.chen@broadcom.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_140742_382658_BF4128ED 
X-CRM114-Status: UNSURE (   8.87  )
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

bcm74110 brcmstb usb phy adds further power savings during suspend
states.

Signed-off-by: Justin Chen <justin.chen@broadcom.com>
---
v2:
	Sorted compat string odering
	Add new compat string to constraints

 .../devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml      | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml b/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml
index 580fbe37b37f..28906bb664f4 100644
--- a/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml
@@ -15,9 +15,10 @@ maintainers:
 properties:
   compatible:
     enum:
-      - brcm,bcm4908-usb-phy
+      - brcm,bcm74110-usb-phy
       - brcm,bcm7211-usb-phy
       - brcm,bcm7216-usb-phy
+      - brcm,bcm4908-usb-phy
       - brcm,brcmstb-usb-phy
 
   reg:
@@ -139,7 +140,9 @@ allOf:
       properties:
         compatible:
           contains:
-            const: brcm,bcm7216-usb-phy
+            enum:
+              - brcm,bcm74110-usb-phy
+              - brcm,bcm7216-usb-phy
     then:
       properties:
         reg:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
