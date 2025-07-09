Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4F5EC83F15
	for <linux-phy@archiver.kernel.org>; Wed,  9 Jul 2025 17:11:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zzwDHtfhoKvs6+sW2D3wEmtFCQ6k2ra5JOcQCzyp9F8=; b=cGuOZJKNa6QR4f
	pCVLbUb9tJJdcCDxgR758TbRE7tTrU/FOH5M8dY+BCGl6r9RH9U4T2sDzHZYXfDl5o4rXuc94z4rb
	jJ4AgYsDPjfjFofwDctbREmr0ubS0urkF/fEzZTj/3A5MsRG5uooAwADyMWm13EyXSjbGC2frIERU
	o277zg0sCnN2+DQIqrBLYPcp4+xl1saNuif4PiuJDolZVPkMBH/z4658NFnpmxQnn9twVmb6/GhMw
	NvZ+Npt8WxvoM8MqD8f/mPuPWrZoMSEVzLMn4KPWtptRpQ/RWUCBHZHKi4NEtTj2125NF+l5/3+f+
	6ELOIj9S6AUPd7nsG3yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZYKE-00000009P5V-22LY;
	Wed, 09 Jul 2025 17:11:18 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZWCl-0000000940g-2ORp
	for linux-phy@lists.infradead.org;
	Wed, 09 Jul 2025 14:55:28 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-ae3be3eabd8so3676666b.1
        for <linux-phy@lists.infradead.org>; Wed, 09 Jul 2025 07:55:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752072926; x=1752677726; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NN/6WRtWv+PbFm6J3y+B0W74bkmxsW5QkrIaTbqFnB0=;
        b=TuT6cVV9uNhmgjxKVP39ciipAmQgU2zLgs71Q8PBGU3NiReTN8+XzYUlgd3oehGiv5
         TsdW87GlvNAAJ31yGXhJwDrO70Ul9ECtxpDYiWptw/2VTE5X64nHz/kNr7ut3ICJOe57
         uM/qdCY5tKHs0nI4Ofs6UYtH8GDjuxfBZK5tO9BRwwH9tXIQeiAPwiQ623PoRcGLnfvq
         R+S2gVDM9Lpq2UGx/eeRL9/58sw8BHGD4ghGbPYJ2nEcCuY8LJMvJQdtFa+kZ+Czwq2N
         dAKaTaN1u/yEUBrk/6xli6+cDZdsnAuTlPQPchTKNXDW+MecsGtW2fHyNKWNppwOpEGj
         afnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752072926; x=1752677726;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NN/6WRtWv+PbFm6J3y+B0W74bkmxsW5QkrIaTbqFnB0=;
        b=YAt61owv/RY1GN1xh/MytXQmaH4+kOle5sIkaxzLTbM6X/Lra8hQWO4C7W4Gobi4C5
         l0Q1t9wFf9RV1BLL4POMGgkddFdkyEHWG7bA61XlzIUlCdI0lVram0mu7MHodr2uphA/
         9RGsdrSt3BhFO7s4QZrbCqy3WjdTu4tiVk9NV5bgSoB9MZV1jscsV2NGVXJnKWOIIlFi
         gtec21cSXvPs6/hg5KHiCM7PsQleR6IXoH/pE+Z28pmlYaRVA0NGWwbz7usFx/2pTAWc
         DRN+qhFBWnHnUPxaXrtqVm9lrCmkaPS0HXvZuyBsTWS6PdFNITQcxXeURwBfjN0f/Dw+
         UM6A==
X-Forwarded-Encrypted: i=1; AJvYcCUxNK2gm5hftthpV2QQC5Bf3APQbhHYzuujFRvcaW+up8tQ9J0oiGZSBNXzHwLb4vhlSKnbKvcgACA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyUDUwQ66GMDwJKY7svstw9IR2fAEwT+7blZQzyK4JgNbkGpHKH
	70k1GxlouwipsKqeXWA+XAKtDTe0+3Wl7Y5nM3DCMLMFCBl6L9AIImVQqW3MfoE1y3w=
X-Gm-Gg: ASbGncu3oUkHQze/wOS99GuraCd+sxCsd41Nq3VxTebmg73EzM4oGEs03nN7dOgEW0g
	11kwRyr9bj7A49Qttv0SRYfvAQym4MsRCTSPbQ9mv63mabviA9LuxKh8aFxqx1G1MYFDIeXmPsI
	2zBMKc9gx9SkLszwXxzq7QXts0zT4WLumt+K3GSZGHdbZxp2XOmJwZhnXGyVDMhmcUxSZKvCAWz
	w1EDZUhPb2d4b7aIHYN+TAPyqvxdDBAsfx++57e1oLWfSh/tPUAB+7GArR5L1L1qQQcBktJ8XdB
	oi8inSs5SDIIMhUbWh9fCv8wy7235oleT3Rm0T1URppjESUuhs/6ib0xbWAZPC3HB45+IDltTj/
	8/rRTHlusEdKbJ5lEC2xkntNbHh7jELe2
X-Google-Smtp-Source: AGHT+IF2i3QqxTWjuz5P1YW6xQ4cfF5i5ZqOygwIXICALdfEZ1j4uTvDCh18CLGk4T33wWsNXDP94Q==
X-Received: by 2002:a17:907:bd96:b0:aca:95eb:12e with SMTP id a640c23a62f3a-ae6d146ee2fmr277785366b.24.1752072926007;
        Wed, 09 Jul 2025 07:55:26 -0700 (PDT)
Received: from otso.local (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6b600ddsm1116795766b.158.2025.07.09.07.55.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jul 2025 07:55:25 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 09 Jul 2025 16:55:16 +0200
Subject: [PATCH v2 3/4] dt-bindings: phy: qcom,snps-eusb2-repeater: Add
 compatible for PMIV0104
MIME-Version: 1.0
Message-Id: <20250709-sm7635-eusb-repeater-v2-3-b6eff075c097@fairphone.com>
References: <20250709-sm7635-eusb-repeater-v2-0-b6eff075c097@fairphone.com>
In-Reply-To: <20250709-sm7635-eusb-repeater-v2-0-b6eff075c097@fairphone.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752072923; l=956;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=RBqmm6y91+jO6MdXINPCWCg3viAFwnMdKUq3SgXL3z0=;
 b=hwGOCiTQWIof7HrmAiBGw2P9RUOR2R7YKLzD2dtTwUYTAmNlWb35hTXpZMFEfFaYmjFiUHBqy
 d2B4j4RXkNvDSM+jA2uL6VWuTxh1n7b9WZPphpHedP0CWDus6dVYyYm
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_075527_612789_7C9BF729 
X-CRM114-Status: UNSURE (   7.22  )
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

Add a dt-bindings compatible string for the Qualcomm's PMIV0104 PMIC.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
index 6bfd11657e2992735998063b3ca390e04a03930d..5bf0d6c9c0256300d00f84307b7f6ccf669f17c4 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
@@ -22,6 +22,7 @@ properties:
           - const: qcom,pm8550b-eusb2-repeater
       - enum:
           - qcom,pm8550b-eusb2-repeater
+          - qcom,pmiv0104-eusb2-repeater
           - qcom,smb2360-eusb2-repeater
 
   reg:

-- 
2.50.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
