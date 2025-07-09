Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01615C83F03
	for <linux-phy@archiver.kernel.org>; Wed,  9 Jul 2025 17:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GrYo6ZUlWrojcSXtkeu9UkCmLySY1s+HgK4GQvNb7Y0=; b=45JTuXuAhxj6U8
	scOGKV+ZGkZcafc0/vXoz/pj0HeVGprVk7tyRUa2qVU6IQi5Bov/7JLibTKceSM4u9CV9kSi9c3lh
	xIJvjV/b1bt5F2snMgDBQ9igtcV/4X0mk/YYBsjA2XJZt04zsulTn5mwfWSXYFdur5um8dg8vpYzB
	6clGSZxu7AS+96+OHZJi/wrTXEIXZPXXGNCqL5H6PDYn/g+hNjFlXMQXvSmF1w0wdX34WvEVtsdja
	zLln4s38RoWe8/OA1alF3LzAxrcE91JG7Io2NhzIt/Qha5feRRukuVYjysgLhxwVrOt+3qesXxuVM
	uDg0m8PPn7MaKvq0zMnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZYKD-00000009P4n-2hy2;
	Wed, 09 Jul 2025 17:11:17 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZWCj-000000093zg-30Hs
	for linux-phy@lists.infradead.org;
	Wed, 09 Jul 2025 14:55:26 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-ae3be3eabd8so3669966b.1
        for <linux-phy@lists.infradead.org>; Wed, 09 Jul 2025 07:55:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752072924; x=1752677724; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xsudQgPEXLO/8rlrHg7A+VcqH4UVc0XGQUOkZdmkbM4=;
        b=pGKV8a49t0Fa1joqSQX6mkSXbBtF5DKmjWuadHilBzG/vZXeuZwzErZNf863K6Bg6b
         FNOf8SlOhiquJ7fIq61Uo33F/mkeHbTgYn0b0SYIFKrRrZS7BodReduWCn1SsPVJTbPj
         JM1MFB66vpk6hhmK0DXbsim4hI2LWcdW8UqTkHDXSB25INQooq+z6pLf5oNLMGfVotNT
         SRJK2g+J7R+HQsiUhtWU5R++aRV2tnACIgXN6PkHe1UzOvQi7gflylKFGKB0krv2evAA
         X7+CWegfN2ZKYXIrrZjqz8BqkBA5bMzeMCm/6ViJ7w9AZv40YEykybwzA3Gxwen9r8Z9
         1+Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752072924; x=1752677724;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xsudQgPEXLO/8rlrHg7A+VcqH4UVc0XGQUOkZdmkbM4=;
        b=vGdYCzErd7ZIOx9Ys4vq8Ge+y1WiRVN64hDVecYJ16NDwRXm7GLGBcA5CHj8fVnATQ
         H6LmOLseEx0MmBru6RTEcR1GjTFmnG2QfGEYqRvau+OVmrof1bTd+jcwMQxm7url0Gq+
         ZEZX3xnU/g0tdWQCQSRTJg4uLGywRr4xN7ylYEO+OOY/Exw+4BfLe7yYeFcTLmpKIfCs
         G2m3gdra3QyloeCvjOoKPtf0OcWeWR6KITa2GTESuquVnTDZg6AwpNLNxWDyy14JPlph
         Xz1dgY9QGwDjvmxuGKMQdy2M6sg7GSFGGY34SVQkJiNHGG8f2p2y4BH2kfd3P0Hrea+d
         B9Cw==
X-Forwarded-Encrypted: i=1; AJvYcCWjmwepZlTavlF+LGrxhgk6qoieeb/b4BOIB68o+4AnhoYKgpw1JERE9jrYRG6qt86q89/uSW6hvBQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YwsZFPYKnaYF2FTGj/bnfgrm6vOntPZp8r4PihqazUlHu23FktQ
	xYXvMdZFl9y2rKEWzEdwI2zTFnBTC+/T/v/3//iC1cc6MxzxjOncdk/McX+XE0HPQhY=
X-Gm-Gg: ASbGnctCSi8drNS2Tbvj6sO0WI/qlNMQanNtMF9h1Kgxx2AP6AnmUH/BnHaBoHVGuEB
	6t3cJyPpQ4Hao4pIRZm8bPZjjWOlNjg0tLuIYScwsgK5R6jtfTTjU8CLHFMZ+yw8IvmHYsiG6j7
	M2T322dPnjbiVRoF+fQhVmPUcZ9crvZwkV3PjuJlMkIl/BSg+bWLedB7pSc/vBIXGd/MzGByee/
	H2iY6g6pK+wWaT85G3SsLlCuFOJpR5YeEbyToxkJkytXKoOLsa7pHWQNnAGx3WM1DDE78cZyWhK
	QjBXpiFcxEOl/u2r3oOeNBNB/yAQqn7EEcUt7+LS1XIz30ePlHOLRnE8xnfr5RJFmpT7T2pCK08
	Wq08EH6FQi/JP/Wq5PzRd1X7FMyCPU0CC8hFIfv6gVfw=
X-Google-Smtp-Source: AGHT+IEJi9D3i6knXbAjsckZ7Ciww/QJ7BLM67HvKfXZJLKXPgCmFN58CA6mh9SyrO15bCmZYpI2PQ==
X-Received: by 2002:a17:907:3c88:b0:ae3:ee3a:56ee with SMTP id a640c23a62f3a-ae6d1266a1bmr305624866b.3.1752072924078;
        Wed, 09 Jul 2025 07:55:24 -0700 (PDT)
Received: from otso.local (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6b600ddsm1116795766b.158.2025.07.09.07.55.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jul 2025 07:55:23 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH v2 0/4] Add support for eUSB2 repeater on PMIV0104
Date: Wed, 09 Jul 2025 16:55:13 +0200
Message-Id: <20250709-sm7635-eusb-repeater-v2-0-b6eff075c097@fairphone.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIANGCbmgC/22Pwa7CIBBFf6WZtWOACtWu3n+8uKB0sCxKK1CiM
 f33h/UlunB5ZzL3nHlApOAoQls9IFB20U2+BLGrwAzaXwhdXzIIJiRTgmEcG1VLpCV2GGgmnSg
 g65ujlbIRJ2ahnM6BrLtttb/nVw50XUp7eg2h05HQTOPoUltltecKg+HwiS0WG7SsnjTxxqXFO
 39BK1Vdc6M6bnWbBTxJg4tpCvftn8w31L+6/K6eOTLkp/4o5YFTdzA/VrswD5OnffGD87quf4d
 lDUsmAQAA
X-Change-ID: 20250620-sm7635-eusb-repeater-0d78f557290f
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752072923; l=1322;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=+2bfuo/XxdFtjNlpBnRSz55oWsfelV2bXIgIhY/HOGo=;
 b=xWvHS2PiKGx9o1Y75d8aHnX5JAyJpQ/n8m6U4OfOHpTGyPApAs6B48YmWcriEDLmsi3xk8qVe
 PPsYGLmQPflDDpV6LeYtlYy1puVL7D8jpEP5qSk6tv1ji9/vpUFkq2+
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_075525_773443_AFC43E78 
X-CRM114-Status: UNSURE (   7.52  )
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

Add a new property qcom,tune-res-fsdif for the eUSB2 repeater and add
the compatible for the repeater on the PMIV0104 PMIC.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Changes in v2:
- Expand the dt-bindings qcom,tune-res-fsdif commit message regarding
  the register value in dt.
- Pick up tags
- Link to v1: https://lore.kernel.org/r/20250625-sm7635-eusb-repeater-v1-0-19d85541eb4c@fairphone.com

---
Luca Weiss (4):
      dt-bindings: phy: qcom,snps-eusb2-repeater: Document qcom,tune-res-fsdif
      phy: qualcomm: phy-qcom-eusb2-repeater: Support tune-res-fsdif prop
      dt-bindings: phy: qcom,snps-eusb2-repeater: Add compatible for PMIV0104
      phy: qualcomm: phy-qcom-eusb2-repeater: Add support for PMIV0104

 .../devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml |  7 +++++++
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c            | 15 +++++++++++++++
 2 files changed, 22 insertions(+)
---
base-commit: d9946fe286439c2aeaa7953b8c316efe5b83d515
change-id: 20250620-sm7635-eusb-repeater-0d78f557290f
prerequisite-change-id: 20250616-eusb2-repeater-tuning-f56331c6b1fa:v2
prerequisite-patch-id: 5c504d171a4d1acd9ec376e01e0dd0fddbad92b8
prerequisite-patch-id: 0c97dcf5472fbed8ef4cffbd482f3169fe1e972d

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
