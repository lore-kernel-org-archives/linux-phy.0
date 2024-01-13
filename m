Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 613FBC47258
	for <linux-phy@archiver.kernel.org>; Sat, 13 Jan 2024 05:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vFD/eC33iYArXR+sIa06WxAAF7XPaVwEq7TYERNGz/I=; b=Y9XvPbEH5mRo+J
	GnecpukY1DJuqf5/WDYjRV37Tkia7sSKVXvgeIB59GICYGYPhNoduaLheomWy/r9yjSoGGPyWLLZF
	q84q1e+DVhW9bfMDzG/WuhmWQ+/wFSBBY0tct15IHGLqNJR2GPAYa0srNJiaJt1JckLuiMw5pK3Ke
	mC7jYXc6FV/t60sCVP3eXS6pGHRaEdJpFkOmkNJTGTEVvH4a2KpQ+8FjhjQljHnEFTP6X1UPx1fPE
	6vVpHkJdSOrlXrgYuBippZShHfFVxxFlkXuT+uCbZKmMA652KtH/v2rRQE4SjrZyX1awlilmjGyye
	hYCIj94Kpl/k/2bK8G4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOWnE-004Zfa-0C;
	Sat, 13 Jan 2024 05:42:52 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOWnA-004Zcx-2x
	for linux-phy@lists.infradead.org;
	Sat, 13 Jan 2024 05:42:50 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2cdae52d355so620381fa.2
        for <linux-phy@lists.infradead.org>; Fri, 12 Jan 2024 21:42:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705124563; x=1705729363; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QOP792ToKBpSccev9vxQctAneEofXtQ960cKYhNIK/4=;
        b=B6NNRuVCvnUKDAlGGLRS1Sx/lWKcW+TWctW0ZzH4q3cLxbKUWRCgXBaMjqiZFllK11
         XTSBErnck1uHoKIISK5oYihQ3cmfbHLT+ulxlxVXjj2IikeeVnWACJnTYqJNIuSs6S4Q
         18uNw/VXbEU9RBO8lSnzvq7yn2BQTv0165kYQm+q9j4NAUgeA/P15ioBkzPj1cIYEgiJ
         R/8weeUy8ILYbm3Zg2s0qiPfg0tDYuJnPLnhrwlrrTyjaVEhHdD/1n38OjMadmjMDOkN
         jlX7NJ2WF7VabRo3T9o+NaDmOObjgnJZyH1y7qoJlmxfLZxjNPXeBQWmJFttMc3ZPEWE
         Sz8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705124563; x=1705729363;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QOP792ToKBpSccev9vxQctAneEofXtQ960cKYhNIK/4=;
        b=XIt1EY4EOHRr6OsGIMbBBmocKlVYM7zGLI893PSNRtArLgWaOqOsdLNX/48HLisByi
         hTUlQKLn3pmkauLHftVysPzwZneyre4GrTwSIEMvFwVrKLhqtagAP5pjbQ0mk7cYOzg1
         f9hxvqmng+vfEZMfDD9BJPkfXqWAAa/GQolhhc9iJyFiepHGtByb8FxsIu3dTRdyqRm3
         PywcR8bnKoHYUGNujV5C2fERYSfcJ2eleFAIL8ADvkEzy71/1nV+KADcOjIC/zl/srSd
         4Sw8hAPXXng8o/KRha6Tk3miIRFaKqPUWeOVH/tPVdB8QHFu9y1nT+QyHlmlQqDrFLuF
         2ECA==
X-Gm-Message-State: AOJu0YxQCMRxCKV8ZZ3fH039/twvfth/axpJXcwRpQ+hFBDnFgb7mGBu
	NN0PhJWpG8IgpI7qbI6DWsxclpmKlHyq3Q==
X-Google-Smtp-Source: AGHT+IFwCgekZWlNnDV2eOTshKrBgIyOrcxe/8+NArIpcWWS5B+j6guQX/EDrLAEYzfxUnHQeW3aoA==
X-Received: by 2002:a05:651c:332:b0:2cc:e3ae:1ca9 with SMTP id b18-20020a05651c033200b002cce3ae1ca9mr1077711ljp.1.1705124563014;
        Fri, 12 Jan 2024 21:42:43 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id r22-20020a2eb616000000b002cc71e9168csm677719ljn.129.2024.01.12.21.42.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jan 2024 21:42:42 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH 00/13] usb: typec: qcom-pmic-typec: enable support for
 PMI632 PMIC
Date: Sat, 13 Jan 2024 07:42:37 +0200
Message-Id: <20240113-pmi632-typec-v1-0-de7dfd459353@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAM0iomUC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDQ0Mj3YLcTDNjI92SyoLUZF2TZHNTY2MDSyNjC3MloJaCotS0zAqwcdG
 xtbUAx5O2L14AAAA=
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Guenter Roeck <linux@roeck-us.net>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2662;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=khqa4i3wX3Fe7VocE+Dlxwa2qBKuZ4dGSNroLXygiZ4=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBloiLPI5DTQpVj1TOXfaIjSt8yYe7R7w8rWhax8
 hbY6NdeVouJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZaIizwAKCRCLPIo+Aiko
 1RnWB/98WVdNe6uelq9oMopvGDy0u/89qtcIsNY5fVhy1U6G55QIXYGAY+5M7TWUXfKKtcR2wEg
 R5P+6xq/fw4oq+FyEBq7qeuBqhvLtFzJfNqBlml/zocmn2tixkoEhCgs595nNZ3EICZlPzV1mWb
 p8oxxslyBjFpaWWP/vv4kpkUjsT3k/L5Lghrrp2YMQhg83J+Tplp1Wh93XVxZFXJ0VVconT8X/4
 lKT82OiaMD2Gomhqq2Kx+3aVDY7uLQKKZJW1f1vfA5P5txoEJEatFnZKf69KfHdpPXbLWJe0wsr
 f4HfuukEb8flgwcD1/EbXYrsN/QyemNPxyklfkjnXojlAntx
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240112_214248_953433_7923D361 
X-CRM114-Status: UNSURE (   9.64  )
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

The Qualcomm PMI632 PMIC (found on Qualcomm Robotics RB2 platform)
doesn't support USB Power Delivery. However this PMIC still supports
handling of the Type-C port (orientation detection, etc). Reuse exiting
qcom-pmic-typec driver to support Type-C related functionality of this
PMIC. Use this to enable USB-C connector support on the RB2 platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Dmitry Baryshkov (12):
      dt-bindings: regulator: qcom,usb-vbus-regulator: add support for PMI632
      dt-bindings: usb: qcom,pmic-typec: add support for the PMI632 block
      dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: split from sc8280xp PHY schema
      dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: support USB-C data
      usb: typec: qcom-pmic-typec: allow different implementations for the PD PHY
      usb: typec: qcom-pmic-typec: add support for PMI632 PMIC
      phy: qcom: qmp-usb: split USB-C PHY driver
      phy: qcom: qmp-usb: drop dual-lane handling
      phy: qcom: qmp-usbc: drop single lane handling
      phy: qcom: qmp-usbc: add support for the Type-C handling
      arm64: dts: qcom: pmi632: define USB-C related blocks
      arm64: dts: qcom: qrb4210-rb2: enable USB-C port handling

Vladimir Zapolskiy (1):
      arm64: dts: qcom: sm6115: drop pipe clock selection

 .../bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml    |  171 +++
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        |   22 -
 .../regulator/qcom,usb-vbus-regulator.yaml         |    9 +-
 .../devicetree/bindings/usb/qcom,pmic-typec.yaml   |   28 +-
 arch/arm64/boot/dts/qcom/pmi632.dtsi               |   29 +
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts           |   60 +-
 arch/arm64/boot/dts/qcom/sm6115.dtsi               |   39 +-
 drivers/phy/qualcomm/Makefile                      |    2 +-
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c            |  323 +-----
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c           | 1202 ++++++++++++++++++++
 drivers/usb/typec/tcpm/qcom/Makefile               |    3 +-
 drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c      |  126 +-
 drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.h      |   25 +
 .../usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.c    |  155 ++-
 .../usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.h    |   92 +-
 .../typec/tcpm/qcom/qcom_pmic_typec_pdphy_stub.c   |   67 ++
 drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_port.h |    4 +-
 17 files changed, 1805 insertions(+), 552 deletions(-)
---
base-commit: 9e21984d62c56a0f6d1fc6f76b646212cfd7fe88
change-id: 20240112-pmi632-typec-4c7533092387

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
