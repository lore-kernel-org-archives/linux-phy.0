Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1D8CC83F17
	for <linux-phy@archiver.kernel.org>; Thu, 10 Jul 2025 18:32:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pSNBPaK106yPMLm3V3nT+m9Ez47X27YTShqc875bsBM=; b=pALVqcM4BMQwZb
	QEd11jUuE9pxbYKouR65LxK+4RBRUf8KKreHa51tuJx8vWGJHI0C2gTJzIcc1vaHcQIHNQUXfVhE2
	RqPc4UbZThJJBmTxs3Gh82CMtfwNCmJl/rRaZ7DhcgvLK7YMG5a98SBJySBeaWx7xfu1ZjekNOM2K
	SqRayO7LvoI9LrBI6cPeTwhyD/DUtBhrMdA8az028GPm0QIRDokJ1UXUnZgdqauYNmh4GFQjy9pi8
	hwMbMKQVNAbowWt/TYDpbx9NJKMP5VmNOc4MT/ZfbI0akGH6dG3/h2qNnrI1qp6PLQ523ok3QCXtg
	UzqgdiWc1kw334Uvxumg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZw41-0000000CiR9-3BEP;
	Thu, 10 Jul 2025 18:32:09 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZtx6-0000000CNLA-2LYU
	for linux-phy@lists.infradead.org;
	Thu, 10 Jul 2025 16:16:53 +0000
Received: by mail-wr1-x442.google.com with SMTP id ffacd0b85a97d-3a5257748e1so950955f8f.2
        for <linux-phy@lists.infradead.org>; Thu, 10 Jul 2025 09:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752164210; x=1752769010; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vh2A4NxX3SzhrObk7arX5jA4Dh37ZpCGm1SS0zq8Pao=;
        b=wZJ7jsrBT8ZeWzPWOU6r1tx5BRxRoGmF9QBkhm3Xai70CtJvxxUg1VDH9ROvFHvG4l
         JUI6lb/NRlMTs//VTiuAUMaYUUxGBDDZvtnrVkXz86zF9sKMsX55W/IBSatyoQvXhifX
         lhdtveoL4KohbMgLwZTLJlnITGcEgWDEcsNsD9Sx23Pmh44SfQzYXPY1y6xreYsic0Yu
         qBw1h7H/Spe/AFHibXhla1tZNqVBiv8jQWvwc8z7DuavH0+oD5h7xGWWdyq/f+JV6DQf
         wGBN/Scbmww7KQLheuzgusXvvsWyRAHJrohyKqhuioHypKzKHz2CepXkPgLU3pIsE4Rv
         Xq6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752164210; x=1752769010;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vh2A4NxX3SzhrObk7arX5jA4Dh37ZpCGm1SS0zq8Pao=;
        b=CDGsUuVdJP6Ju7+RJXzsWcYSOr0XCmfpzKWR8J7Jj3R/PONVkZ8WeRWBATCgBDrXGo
         8dWPWx/ZpNrtYn20qUMkWHh1HmVRjnm3/VPt3bngqlw7HvRfPcdTh55GzLCHdmwvvewK
         atSMJEcfgTOKCx+9eztYP7CxVRIEUpXgNA2CTMGCLYMQ67RxXLRjJr6PKlfjih5xhong
         ldwoHb3xWWRctVYMglIASjI2SjVUR2rvg52cGl96ThJRiFK5AHzTUpxQ1UjJ+yQioynh
         t2F1BUgZ/j/6CJtf61dH9m8tqP1NObUvb+4TnBbKsTrNeIUFa+eTbcD7J2zqxNegCOIO
         Y/Hw==
X-Forwarded-Encrypted: i=1; AJvYcCVAlTofMGQltXRoAsSkVhRyvGWXjEBZU1/IjHj2eo7Cs6qdIwtpaCGh2iHyz2j5Ka/7sXRhXNUExYM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw8PyroIfZRyjE9wuEBiTZphkZ0xlKVedCeLCHQolDC9OodHww1
	MgF9cnktXb4VkFeMGZOPbFTgJKIMQUh4svdyhThPZlF+WrC2qg29jJ1vuSuBskx9Quo=
X-Gm-Gg: ASbGncv/CWrSg73lZTII1kFFYcZVwUU9H3tNxwDB2wuHm8bRr4v0D9aZdg9WIgsCKXN
	EHtqJl//6Z7UtqxOWH1WRt7pUHO7af6NvFXC0krOewlxnN89yriQi+ZFg8ziDHsDOnBIhDoACC+
	GbwJKuFp1vX27YBWxF8Y9AwHP/8xglJpYqiVCn9GB8QupG+8Xm/OBMPRhKvB2wUptKgRKiMS2e5
	+3NLp2OZZMIyb1HUx6sDoiAGp++yN+6V29+BHHXfFM14MZM7louCn1m3VPXqVWEt+vSzMSinaCw
	p3u5pTGr5SN/B4WLCLC/F00Llw7qOLJIYq9xtfk+3+Lv9vpt3DescW71fRMoVmo19WwIq31licB
	9K3/X7u6SFSj3pnPfGjR04zCOHaEIcMSFJEG8+V4=
X-Google-Smtp-Source: AGHT+IERdBO0d8lPpetUFVBGxZDmPMxF4u7RG24UaG947RWVv9nQ3kmWBfXeC2Ax/LUwUkeRu0REmw==
X-Received: by 2002:a05:6000:4402:b0:3a4:ddd6:427f with SMTP id ffacd0b85a97d-3b5f18d3d1bmr90390f8f.35.1752164210220;
        Thu, 10 Jul 2025 09:16:50 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8dc22a8sm2314207f8f.34.2025.07.10.09.16.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 09:16:49 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH 0/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
Date: Thu, 10 Jul 2025 17:16:46 +0100
Message-Id: <20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAG7nb2gC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDc0MD3QrDVN3k4kwj3YKMSt00MxNjkyQzU8MU40QloJaCotS0zAqwcdG
 xtbUASxDxul4AAAA=
X-Change-ID: 20250710-x1e-csi2-phy-f6434b651d3a
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3679;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=09k8nauOQI+SPJuQ2FMg+lvL3iW+Ogwh/RRpwWFIjkc=;
 b=owEBbQKS/ZANAwAIASJxO7Ohjcg6AcsmYgBob+dwghGiTiZwUODkbb3BqmCZMxbX8rhID17lv
 e3N3Z1CtjWJAjMEAAEIAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCaG/ncAAKCRAicTuzoY3I
 OrOqD/9kP6o7zHrhn9IppVvEfzzjSS6CG4hFOsGvB8sLItvuICt3F8CJOqCLRHRaLmEwdzLzw5I
 BCbuYebi4e4TcpD+ihirP3CUYJ1vMgBq4HVHK1E3LJ3DuityYMCJRuHBVsbPb4HYNDKSa0ocMAe
 eyghoWqK8PW/fRxgrLfY2c3JO3yVsBwRRXn40UCHZ8we5CgfDQ8GKTQhWJturXeE/QfW14JY9H5
 JXAwTkzVAw/NNb0AUL4QsHDMslHv5FcOsXTdqzVuzrTcYwyVfoNkmY4BuZzFZjvwGefBbrlLHvF
 qX4g0luzZx4LOqtxVGwEp/wylhtYzQDKx9H7PJ5nWn+W74nySj8FAqRsQpOTfECqw4Vtg0HxYpV
 BewQjhfIakBxPs56w7R6mWWa/h+Tj4eNJbzpxU3Yqd54eQskzgO0OqD98MOl4hA1nLzRElgCSYG
 H4xcJKKJyUAEjPjwtovKJy2myujH8JfvuQKuo2cLeWR5eq6RftXaNOKsWVbquEPoFDjqx/1+j53
 U565Yj5lhLsb7swxkY87Pkf5y16frcbZ701jrEciGAEwuQOygNb2tapF4eo0zEha6trJn9aKUUc
 LAzWu1/aWAuUVOhNr2GokB0HpobvfDDNKrwnmKm8gjxPQcVvHlPlxXpabrFARdniYpgpVigzZr7
 8tJJDqzgJ90Nj5g==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_091652_612877_DA075359 
X-CRM114-Status: GOOD (  13.42  )
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

This short series adds a CSI2 MIPI PHY driver, initially supporting D-PHY
mode. The core logic and init sequences come directly from CAMSS and are
working on at least five separate x1e devices.

The rationale to instantiate CSI2 PHYs as standalone devices instead of as
sub-nodes of CAMSS is as follows.

1. Precedence
   CAMSS has a dedicated I2C bus called CCI Camera Control Interface.
   We model this controller as its own separate device in devicetree.
   This makes sense and CCI/I2C is a well defined bus type already modelled
   in Linux.

   MIPI CSI2 PHY devices similarly fit into a well defined separate
   bus/device structure.

   Contrast to another CAMSS component such as VFE, CSID or TPG these
   components only interact with other CAMSS inputs/outputs unlike CSIPHY
   which interacts with non-SoC components.

2. Hardware pinouts and rails
   The CSI2 PHY has its own data/clock lanes out from the SoC and indeed
   has its own incoming power-rails.

3. Other devicetree schemas
   There are several examples throughout the kernel of CSI PHYs modeled as
   standalone devices which one assumes follows the same reasoning as given
   above.

I've been working on this on-and-off since the end of April:
Link: https://lore.kernel.org/linux-media/c5cf0155-f839-4db9-b865-d39b56bb1e0a@linaro.org

There is another proposal to have the PHYs be subdevices of CAMSS but, I
believe we should go with a "full fat" PHY to match best practices in
drivers/phy/qualcomm/*.

Using the standard PHY API and the parameter passing that goes with it
allows us to move away from custom interfaces in CAMSS and to conform more
clearly to established PHY paradigms such as the QMP combo PHY.

Looking at existing compat strings I settled on
"qcom,x1e80100-mipi-csi2-combo-phy" deliberately omitting reference to the
fact the PHY is built on a four nano-meter process node, which seems to
match recent submissions to QMP PHY.

My first pass at this driver included support for the old two phase
devices:

Link: https://git.codelinaro.org/bryan.odonoghue/kernel/-/commit/a504c28d109296c93470340cfe7281231f573bcb#b6e59ed7db94c9da22e492bb03fcda6a4300983c

I realised that the device tree schema changes required to support a
comprehensive conversion of all CAMSS to this driver would be an
almost certainly be unacceptable ABI break or at the very least an enormous
amount of work and verification so I instead aimed to support just one new
SoC in the submission.

I've retained the callback indirections give us scope to add in another type of
future PHY including potentially adding in the 2PH later on.

This driver is tested and working on x1e/Hamoa and has been tested as not
breaking sc8280xp/Makena and sm8250/Kona.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
Bryan O'Donoghue (2):
      dt-bindings: phy: qcom: Add MIPI CSI2 C-PHY/DPHY Combo schema
      phy: qcom-mipi-csi2: Add a CSI2 MIPI D-PHY driver

 .../phy/qcom,x1e80100-mipi-csi2-combo-phy.yaml     |  95 ++++
 MAINTAINERS                                        |  11 +
 drivers/phy/qualcomm/Kconfig                       |  11 +
 drivers/phy/qualcomm/Makefile                      |   6 +
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 491 +++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c     | 281 ++++++++++++
 drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          | 101 +++++
 7 files changed, 996 insertions(+)
---
base-commit: 2b0b621d5db55cf01bb200e6e6976b4ff4810544
change-id: 20250710-x1e-csi2-phy-f6434b651d3a

Best regards,
-- 
Bryan O'Donoghue <bryan.odonoghue@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
