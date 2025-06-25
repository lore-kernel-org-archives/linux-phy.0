Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D555C7EE33
	for <linux-phy@archiver.kernel.org>; Wed, 25 Jun 2025 12:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LLibJJdXoykJ/LgoQlZpOa+Oy6JCZgH0TJTaL7AQiuE=; b=rEhrNQH1mYyhcb
	hVHC6Ip3i21gV8eIgN9ChQcDDBzW9ML/pXYMCRJt4DiyU8tBnfy+2/kc+ruPjZmv9T2xRLjCUGJWw
	Hi3o6Sb7DJu3PMAlO4/BbKZySZsjSveSwNG+Adf+9dP5kpYaAa9VtONM0lNsxpFnh6vzyU8z10gnv
	DD3Ism6KvcKQw0Lv71JIPc9aDbUwEAefpdoQRKcdodUNPtr4AAxDY8F2wjwBfrvedYFg+bCrmYPjO
	goxexSzvio/vBIp7VMwY8I4SgM3hoWxohpqzQ1NnEaC96tKh2U2x3G504YycSa8j4/WDuqB0i3h8s
	vRz5Q3he2XwQRba9JVbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUPOs-00000008e8g-0n4X;
	Wed, 25 Jun 2025 12:38:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUMDm-000000085pt-3XKe
	for linux-phy@bombadil.infradead.org;
	Wed, 25 Jun 2025 09:15:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=mAzlUWY2EqvaD05NI5pov78EMSJ4+ZBWhP35Qs35mcY=; b=NT9C+fs952Gg//Qbz9ags+FJhL
	04ZqHJUqvmi93Q2dgOobbkE+UtPCSY8mmv2OigjiBroT/9jZ17DUUm6X3lMd2R96ws5SX1ye6pwpm
	FhQNlrS4apvJmVEU+62AvGxdegH62XcMoiwOjrIZNJZ09VlMOSiuk25AIAkz3a3I9SEixMtKxOAlz
	90YXBwLBYrB1Xn15/Z+KudxxlQ728BNcWPCMNKPERqcj5E4GwidlYOZm0gc7j8AShZ/DEMsT5m1jm
	OuRLv4t+ROKIv17G8b+1joBVQW2GU4IrXcedUuzx4+BDMKw08QlCLT/PRS+yufvbNgS6+Db5TPfP1
	mWBiPJgQ==;
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUMDk-00000005iuB-02h7
	for linux-phy@lists.infradead.org;
	Wed, 25 Jun 2025 09:15:09 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-605b9488c28so11095997a12.2
        for <linux-phy@lists.infradead.org>; Wed, 25 Jun 2025 02:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750842906; x=1751447706; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mAzlUWY2EqvaD05NI5pov78EMSJ4+ZBWhP35Qs35mcY=;
        b=FI1qQ85F4jUX2UwmuY2oeiuRNc3XdRs7YG1p1FUgxUPmIhoZ+PW3X6nnJcDrfxwnF/
         0hjvf4IBIvPnYl+qe4HX2AQY8OGJsvZ3A6LrwqoIWbZfGyz3mgXBNkDNhzfxrH9rrZ6L
         6GCCPFSCzdDAfc14Sqy3Q74Khe+hNNZaPBc2Vu4eQixRFfyNYPtDcT41fj7ZtBt82tpn
         AgJEZrdmAscwyFv7sZJSDcm2n63DpjWVmRwtfFLyluAfWZ9bpBVLvgV1IeryJj2pELuk
         lqMYLMjXuW/UcAPg+wgelU/NVHzWL+NCKOH1oxf9gVex+obj9Uj6KCHtntVYy+4hM98w
         6i5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750842906; x=1751447706;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mAzlUWY2EqvaD05NI5pov78EMSJ4+ZBWhP35Qs35mcY=;
        b=ooAmaSPz69kAjJbYzQRR7ZDoEpobDnSb8jpZjkvglk7hMAG8TL9sUU7aCquIYLNfSe
         2K1GL+dVTyK/prViGMp+/A6PHS9GP1zpwlHufmB76PNiyh2qLcVHkfWs0aP/t2Ed37EJ
         Z62n5eXk0HCoHMjZuNFoz/ZVWqwXOL7Hh5dAWA7EAWXZastCSvM36aq4DsPuskQkv4S8
         OSBviBcWjOP4xR6wWTmwMUsAzX1qvyzdgnaPV1caXPcytET5oZnN7z5LGrKskLcuZXE1
         /6Z8xXs622EuE/iKwgaPGpdcieFX/qxR+eZZ83Yhe01EOi3rmA6pP9HVjNPsVvOcYsUU
         PieQ==
X-Forwarded-Encrypted: i=1; AJvYcCWQQB1QWvsTVqPXyk72FR7ZAln2KtI+1yPcnXZsBR+mHsuobgdqqW4EN5wxQ6nwUfPlWQY+xKHWSjI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw1c9AmzFGVWz+cfJAijQ5HzOmjzi0qlHsRzwcRx0g9uO6Z7CXr
	XBn293pG553MTKAjOGjEPMNcRnepjkfAjcmIuhyeGovi8jJJersb07TZIGHxLlZ4Iqw=
X-Gm-Gg: ASbGncu84pqCbMOKdkM817pVM7yrvYsalPloatwiQzr7gTTWDGrWhVdz/k1xrfnS5PO
	9qCoSE9DSAGj4qSHR3n6bUbu+HAxmLyZs/In6sxqC8xrUSUn3rW9A4fkAwtSFNEDTuDAx4Wulep
	DKVmGIUS1UEgz3RmJE1U45nRvZt19XhAVM9pisRbvuNygq0O9CX6wXHU5MXRvR9++esrop9wTJp
	gLzp/q20vkJcR519ARbJkyuJFgZADJKrqZCmoDcAk1I+beuDC4kEhVunUkBasmUiymIji602khA
	slp0VPuCb03Jx2gUPPt6/Ip4/naFiTaXAV+hHL1We2z4Tfw+8zBeiH1qnwtGorhveCdMjpxE8+k
	xuw1aV44HBC+mKPc76nqrkSzLfjcUKJDB
X-Google-Smtp-Source: AGHT+IHfcb1R/5G1p1D1Z8iqejyo/Aq/XvPrfI1iFMiH4aK59J/B9AcF8vW1nRksr4D+XAcktFDzpA==
X-Received: by 2002:a17:907:d29:b0:ad2:3fa9:7511 with SMTP id a640c23a62f3a-ae0beaba4aemr215314466b.41.1750842905839;
        Wed, 25 Jun 2025 02:15:05 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae053ee4c2bsm1008972266b.71.2025.06.25.02.15.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:15:05 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 25 Jun 2025 11:14:56 +0200
Subject: [PATCH 1/4] dt-bindings: phy: qcom,snps-eusb2-repeater: Document
 qcom,tune-res-fsdif
MIME-Version: 1.0
Message-Id: <20250625-sm7635-eusb-repeater-v1-1-19d85541eb4c@fairphone.com>
References: <20250625-sm7635-eusb-repeater-v1-0-19d85541eb4c@fairphone.com>
In-Reply-To: <20250625-sm7635-eusb-repeater-v1-0-19d85541eb4c@fairphone.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750842904; l=988;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=9GiaZ2p/nxP//ytqx6Na68602XUJeae7knZz2N0Hquo=;
 b=sZOd6X/TTKsIXlQi1c49HslZ89NGfRuZaXpOsS2usgmdvQDgC8Ef8q5d5SXdJbjhaG1+NGSM4
 E6Ygjl8H9IFCR/3SZaedBtkip9bwaE0PYLi08jVFwrmWLgDWEbiKmun
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_101508_385640_79CE7E8C 
X-CRM114-Status: UNSURE (   7.30  )
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
the eUSB2 repeater on Qualcomm PMICs.

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
