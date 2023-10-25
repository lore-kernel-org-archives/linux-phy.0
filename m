Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26F57C25B47
	for <linux-phy@archiver.kernel.org>; Wed, 25 Oct 2023 07:34:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Es8cdWA+HRBBsbcyqAuU0ydxcL7ySYeDwYcs+7FF60E=; b=QN1czXO0dGPfbD
	LcITilLh5NhTgQEkZdCa813XgYiVIaJKrvggHnXL+4UMpAi+KS8Tml/6mojz4+xxrlQ0ZyGE7D3TW
	vhe+NWJWPhlulmfS19GHKLWO8bJI7lqwpEQYeL5SjeGngmr5p3VZI0Tgawj+ay8+j3tw/9JIVWFFF
	j2O1gdbkDxU1AOtQE6hfczZUibLZfKYiTVDclcnHE+oH4hI7j2HHAfbrLwkCGwgcbk8QYPw59vnfv
	MA1GlkHkr+o/y8FWoZBH9xiCfezOE0/BztSnwYvT0NpgsPCtsDxjnyhSpTIfE5v5+ry2AhkbOk1we
	82Fu9zw73tYKlv0IMGrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvYPR-00BaWI-2F;
	Wed, 25 Oct 2023 07:34:33 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvYPP-00BaUs-16
	for linux-phy@lists.infradead.org;
	Wed, 25 Oct 2023 07:34:33 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-32db8924201so3521139f8f.1
        for <linux-phy@lists.infradead.org>; Wed, 25 Oct 2023 00:34:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698219269; x=1698824069; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fE8lnfpH60VjXny5tiRH5VlhhWNYUPOQjPWoBvDGkLE=;
        b=gyVLAmKsiFBtT5IlSY2nPJpQBjK/aoStsxEVjhQiXgN0QDkDOK96vkXV/jTQdPsci0
         /f95keNABF5lrYy1ibDQuWFd+aVfYgeTANskV0xjax2flLuoBjFG3bUj62rAc72XCiza
         P+EtzfJbXako7um4gN/rj5DkU/yIfivcAdXG26XjojKQ5/owiQrAh+NUiz6O0ERbHUxC
         xFE+9qmUJqFVATI8viDwCnivznkUBnqAvzUVLX2moMaJPVO2+TtLm50qYUB+NLkVkjQg
         qqfUvxGaYeDR293IbpbjAYqoGCCT5b380LsyQEcxW9q6ZSsMvHHa3FpdsI/Lz/HJNoR1
         XVMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698219269; x=1698824069;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fE8lnfpH60VjXny5tiRH5VlhhWNYUPOQjPWoBvDGkLE=;
        b=INDOg9AUhN3GkclLJ/pI0fdX0kfgaG7KMNDW0Lua4qFl562lP7ZtF2wbfsaJcYEI2I
         AIzry+A9MMx0EsaVDTkZZeFenxhT0xgyd2ze5VIxrCgMCp+c5g3ijFr1kygYO2KiQBjF
         KGwX++bk8uV4ioOdqxXq2/f5cqVjdkUR+spWUrcVmWj9tEBThA5mN++0FrNhxM83VWSp
         gWu8L+ij0rOMzMyjG/x5rSVzvdYnrMg6wpGGXUF66ZDMnB4OanuXipllQwtNiHi7t92M
         5GJaQ0T5e+xMiLQAYYQQZmitFZ2cwPEOEhEluDyCf1tJJMEYJQfAwBnfKUvt7GAOv7+Z
         0peQ==
X-Gm-Message-State: AOJu0YzCiALzAtRd2GZbkPJHq0sK+dqdSjKOsz9nMZWBCxkeQisHEKag
	LVJZvk3zTgkWTdhK1JuUsytEMA==
X-Google-Smtp-Source: AGHT+IFAhfZZJ3gwdbIFUlXOY3usptA+3VKsx7F/YcUoyU9gIJVNtoulpa30s0um+4wBBZPyJ4VOkw==
X-Received: by 2002:a5d:6310:0:b0:32d:a236:b6f4 with SMTP id i16-20020a5d6310000000b0032da236b6f4mr12281843wru.50.1698219269476;
        Wed, 25 Oct 2023 00:34:29 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id y7-20020a5d4ac7000000b0032dde679398sm11431392wrs.8.2023.10.25.00.34.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:34:29 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH 0/7] phy: qcom: Introduce PCIe, UFS & USB PHY support for
 SM8650
Date: Wed, 25 Oct 2023 09:34:22 +0200
Message-Id: <20231025-topic-sm8650-upstream-phy-v1-0-6137101520c4@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAP7EOGUC/x3MwQ5EQAyA4VeRnrdJp5jgVTYOQtEDJlO7IeLdT
 Ry/w/9fYBJVDJrsgih/Nd3WBPfJoJ+7dRLUIRmYOHfkPO5b0B5tqXxJ+Au2R+kWDPOJNbGngse
 aiwpSH6KMerzvb3vfD0fJ6uZrAAAA
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1940;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=2qdNaDtgGGnm05vv31/7opnlAHHFreo8WKAr4O8Zdsc=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMUB8JaeBVZg6YS6uDVAZ3/Town0yPRPcxPqk5wI
 LKxgWpqJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjFAQAKCRB33NvayMhJ0YzgEA
 DAxioqC8P+mE0ccFVudeKAO+XM27PQd5yCXAohkSjEQJFNb1sqN7WpywmZtIzP2Hd4a47OlWZiSpef
 Cfyh6k11Xl1xlkcE1c2+HMiaGXomXaCI03klnhMMEkyUNVFA9rvFM2LdkGPu0ipjLQ6BdNZo5+6hEz
 ShoXUqI8fDsN9UnG7//RCvHp2V247+yZL6KftFQPJciCfVmFh4kEqtN4zilX+b1UhU3GaNT4mCYbWC
 Ykzx6Wui7syRyeso0OSApPIYW5xz2o5pi5Iw3zgieNbt6PXhi5maEBHT8KzCB4OMZGzWwH4NvjrrqT
 iwPDzq7chubYbOa24DTLcTQZ+7o9TKm4CLDIuGdkZ/VzBcb4XENbT9cEyTRiHHz+SADdTRwyISwcB3
 bmj8PvhX0K01+/J6YyESVZJstFpIT/KeTs66xHd6JP/0AAWXAGe1hxoB7I5u4T3CrsquHFCWu95ACw
 M9p4xbWy13Sfq1PqvjSUDem+00MNDxTLvwsYjzmhrLW+/G2LUMP5bELnqtO2rG4rX/mBH+VHZ3NAHU
 8ynSzV8iiAdR8y9ykcSqrVq7G/suWk3I2X+91sHsX4iWe7lfQAbViLRH8A/uZimfB/OuBbTMY4WSVQ
 br88r9NqXaDiHICWhBgNu2KNnStItzEYUiFeERZdhvKGq5oA2tAERyoQmFGQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231025_003431_376981_6307C805 
X-CRM114-Status: UNSURE (   8.20  )
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

The SM8650 PHYs are similar to very close to the ones found
on the SM8550 platform.

Only a few changes in the init tables are required for the
UFS, PCIe and USB3/DP Combo PHYs.

The Synopsys eUSB2 PHY is the same as SM8550, so only a fallback
is added in the bindings.

Dependencies: None

For convenience, a regularly refreshed linux-next based git tree containing
all the SM8650 related work is available at:
https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upstream/integ

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Neil Armstrong (7):
      dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: document the SM8650 QMP UFS PHY
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: document the SM8650 QMP PCIe PHYs
      dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: document the SM8650 QMP USB/DP Combo PHY
      dt-bindings: phy: qcom,snps-eusb2: document the SM8650 Synopsys eUSB2 PHY
      phy: qcom: qmp-ufs: add QMP UFS PHY tables for SM8650
      phy: qcom: qmp-pcie: add QMP PCIe PHY tables for SM8650
      phy: qcom: qmp-combo: add QMP USB3/DP PHY tables for SM8650

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |  5 ++
 .../bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    |  1 +
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |  2 +
 .../bindings/phy/qcom,snps-eusb2-phy.yaml          |  1 +
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c          |  4 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 65 ++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h     |  1 +
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h    |  7 ++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c            | 86 ++++++++++++++++++++++
 9 files changed, 172 insertions(+)
---
base-commit: fe1998aa935b44ef873193c0772c43bce74f17dc
change-id: 20231016-topic-sm8650-upstream-phy-9026042f9248

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
