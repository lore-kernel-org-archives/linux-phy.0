Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 112EECAC587
	for <linux-phy@archiver.kernel.org>; Thu, 11 Sep 2025 14:45:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qnig2kpyOv/1+WQV/V8KlUQKulUPIhP4snj50DR/O5s=; b=cEff3ezRnIVWwP
	plODorkYNJYRVEJWgPKRmT+bnWoe1UxgYHGQ387zOLkRHyHLN9iGJmxJHUD0sM4PU4V19ne6LgMIw
	6GCjZICC20OaXEAl/9si/5gJesi6kR62iIWS/m4w8z+0y1CGyUxKroUoN6Uvbjot0Bkda/lD674gW
	vWR6VNM6aIHN7WwnALv/4ehAfqScKqZrlqvpz4INY0w5NyH08BXvdxHPBed26QlRia4OJOWv31M4i
	BsfOSqiP6GrtwdAa/8cqnVT9ehlQ69s943OxeNW5jKAQvARhxcwsxGXhH/Up2OIV8eww4WoQGkzTC
	DQ6LoGPFOfDMRFLCIX4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwiYU-00000003eBl-31ol;
	Thu, 11 Sep 2025 14:45:46 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwiYS-00000003eAG-21XB
	for linux-phy@lists.infradead.org;
	Thu, 11 Sep 2025 14:45:45 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-b0473327e70so133067266b.3
        for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 07:45:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757601942; x=1758206742; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=103cGBp+Ee6AQsaTfOa0MxZHuXIIb4UOJLdbajeRtrQ=;
        b=vV7GHlDg81C2U+GgdgU8M5xrrATn7XMxHIlrmwaeklTAtmJLwOATJNF4lSI1t8jrOO
         AeJGD0fPrI7O4Mq5UxVJgF9PIh+gtVzgpmr1A8hP9wwT4kH6P3hJPaaEALjSgeqmSCis
         layuMslzoa6jEiZaDbK14Sl5NyHZx3xKqMtnkfuCx8SOj1xS4IkplwO3r2cKMBySLNRT
         G+gGa/AMDJUndCQDZ3kwRJaM4HUusZj6vvWW9OdVsPgMXXsqJDJy/FmTwX15xC4h3goO
         2TdegkcZcLAZU9AIWghJFo7DMjEiOCTPPN2Zn+LRe/z5qA5fwgkVJBotljZOnyv0x2DA
         G4bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757601942; x=1758206742;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=103cGBp+Ee6AQsaTfOa0MxZHuXIIb4UOJLdbajeRtrQ=;
        b=vHzTE0yGJmOCpI1yT2g6Ez+DjAW+J7f/WJNj2HXRv96qHAk0ykHR7aBcjMWZVd4eoO
         2GtKlhz+rhbcs3tFpD8KgcIxsI52y/icfmBunSyKf8harSuIzwyHF6b0mCIYmin0TwIa
         i+lHQbfx4UyLYp7CXhw7Y7esH/1E0/9arW8aqkbQId0NPM5euLzXP5n05ebyMf8RQU5t
         ih2r0tIpzUOWy2MoqR/E7Sg0iCPkCZoLRfjtwKfGJyes8GakueXSihWas2qTHdL3fUS9
         iaueG9xgDh9/9F5ZXbj/GrBnVl/sRsA8GU7NkUm+6Vh3wrlLs/uJv6ZbPvi5KJwLpSB8
         o9sQ==
X-Forwarded-Encrypted: i=1; AJvYcCXDLpKDKddY3vre/ifDFS5s7oReQ6kE8DQquzkpfKYdxes8DwKH3JWettalTKpstYi5+XTDozVGMYk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw66zucJliikRFLZH/8Ao5EemNpTh8Q3Gps0KSGRKUl8aVZA8IW
	vDPhMsrfE0ApeBrQ5PAwcevvX5OQivENvf/Kg98+JaCTJCFOdwRDWAA8fKEBy3JOkgkhV9A3BRm
	mlqEc
X-Gm-Gg: ASbGncubTFxSX8O1gTdD09Cu05RHfPZvDvYW4wxxyBYyKYZmDYltDNh5tTWB8SY9ti9
	sK8U4a3INmMC9Z0Y0hq7k5lmShjN4augAgUNsE8/GoZdgRtWGytqeWAbcKjF4QUgjB341ZWpBe1
	t+xdfwPB7wAin8KEzXuHvrRUSqNuE5IbOe6NrduYcdwr4wbik3af5LaCfZmlHv55iWhY6Sc/elc
	NMThsYLDJ2enNp8cb9Va+R8dCx7BR0xYkgZULwGJG8nQnX+U5Rqj0m5ZXjdfgj7jRlt5k0oP9VI
	hySxyGWbWOn8EOHOUHWIAySDBz/KfyzalLCs1fDSCHvRIDNJaY/nXzhylg5O3SoNk/4Uzc4C9w7
	GOD7HFirLkq0qO9HvkHO3DyU=
X-Google-Smtp-Source: AGHT+IHI4MsNX6U7yd3HYoHJOuomoEwI9/ElYgPM8nXP6Yp+KZHZ1xiK18Y8gwgZTPkHgL5uhxR+Rg==
X-Received: by 2002:a17:907:6eab:b0:b04:274a:fc87 with SMTP id a640c23a62f3a-b04b13fe46bmr2015424066b.4.1757601942113;
        Thu, 11 Sep 2025 07:45:42 -0700 (PDT)
Received: from hackbox.lan ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b31282e7sm147196266b.23.2025.09.11.07.45.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 07:45:41 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH v3 0/4] phy: qcom: edp: Add support for Glymur platform
Date: Thu, 11 Sep 2025 17:45:21 +0300
Message-Id: <20250911-phy-qcom-edp-add-glymur-support-v3-0-1c8514313a16@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAIHgwmgC/4XNTQ6CMBCG4auQrh3TH5DWlfcwLgqt0ARobaGRE
 O5uITHRFct3Mnm+BQXtjQ7omi3I62iCsUMKdspQ3cqh0WBUakQxLbDADFw7w6u2PWjlQCoFTTf
 3k4cwOWf9CFRyQkolaMUFSorz+mne+8L9kbo1YbR+3gcj2a5fOz+0IwEMmrP6UglJ8qK6dWaQ3
 p6tb9CGR/oLimOQJjA9F4xxovNS/YHrun4AN9TtnSABAAA=
X-Change-ID: 20250903-phy-qcom-edp-add-glymur-support-2a8117d92b89
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1655; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=1ZGtzrU3exJTnHu/Nyew1wGp2xjCeiCIpG3JNd0FD54=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBowuCJiXBuPUgcuSwM5NgfCaGKyFmkIR1JzF7l9
 J1aW12ScEyJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaMLgiQAKCRAbX0TJAJUV
 VvidD/wNlB+W7BH7/9suRcthkLqdB11uXaVveTh2clqqGHpAZ+o1vOzPaXuzEnjMXiU3oULZ/Ps
 MLKftVkROjkTLi8d8tmmGieUQ6qg2cjRaBAKAiZwGAgWgAMeTpuoD4xwHGCIbvTiNwMz5DjAdkH
 iqvyxHcI9nBt7NnnMu4xKNjO4Phk8O/rymnGC005bX0rPS/clJLVRZpXxDivuZD3cCjGQ4Rei/g
 dlk2OKJOf8ZzU3F2ZKKcctM4/mp5Mx5pzeZYm+3MWA30L038G/Mu1oG7cNmjTT3GpnPiWyBoOZu
 nfyVVcOREaf/7tCZE2oooew7ZnDINR9+lHM2K2PmDzTzqJW0ZguQxPL0omB1GWCy9RJXsbYmeth
 lX2PeILK0ZiBXEexSDR6XuBxM0VYtw0THBTnmh/lJlLTN1VfjsY7trnWfX7w0Q8cbWPfqgOXbtz
 tAe1pIZDblSniNAj/gP55TRbxM3j9Ac+nVoCukRpTKzVPDDlfcNw4/ulwB/6k3HxQoKPy1Jlfam
 mnK5yma0SO5GAvBuEyeCnrjzUwDM3fAIKkWRAoCDNoC5b0rot/DjoySgasbt7esJYtNu0yBGLxy
 cZgWTOhUZQH6Azssz+l32KClMXwZ+tW09oFOjcJkxagpfLy0tz7YrAWz8c+jJKgwl6yqmvu49QB
 gfsyIsAHMhJCIcw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_074544_544602_4CAC9703 
X-CRM114-Status: UNSURE (   8.68  )
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

The Glymur platform implements the eDP/DP PHY version 8.
Add the necessary registers, rework the driver to accommodate
this new version and add the Glymur specific configuration data.

This patchset depends on:
https://lore.kernel.org/all/20250909-phy-qcom-edp-add-missing-refclk-v3-0-4ec55a0512ab@linaro.org/

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v3:
- Split the DP_AUX_CFG_SIZE change into as separate patch, as per
  Konrad's request.
- Re-worded the dt-bindings commit, as per Krzysztof's request.
- Link to v2: https://lore.kernel.org/r/20250909-phy-qcom-edp-add-glymur-support-v2-0-02553381e47d@linaro.org

Changes in v2:
- Sorted alphabetically the both the compatible and v8 specific
  configuration.
- Prefixed the new offsets with DP in order differentiate from PCIe ones
- Link to v1: https://lore.kernel.org/r/20250904-phy-qcom-edp-add-glymur-support-v1-0-e83c6b9a145b@linaro.org

---
Abel Vesa (4):
      dt-bindings: phy: Add DP PHY compatible for Glymur
      phy: qcom: edp: Fix the DP_PHY_AUX_CFG registers count
      phy: qcom-qmp: qserdes-com: Add v8 DP-specific qserdes register offsets
      phy: qcom: edp: Add Glymur platform support

 .../devicetree/bindings/phy/qcom,edp-phy.yaml      |   2 +
 drivers/phy/qualcomm/phy-qcom-edp.c                | 242 ++++++++++++++++++++-
 .../phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h  |  52 +++++
 3 files changed, 289 insertions(+), 7 deletions(-)
---
base-commit: 8128ba77e80a40f545381f1b31267f2f204380fe
change-id: 20250903-phy-qcom-edp-add-glymur-support-2a8117d92b89

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
