Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88265D0E6E8
	for <linux-phy@archiver.kernel.org>; Mon, 21 Oct 2024 10:33:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9P6/3T+Bh+oD6Vej1rsVakjA9SVxAI8E2cvdzmTaiI0=; b=ButNikgKHWBXXl
	xyUWoB0iWSvsaaDfjV5xZAhCLsK2swHwGW/lv3mVE/1oaf9KXWTuyHCbSt768PqYeSUAHkO/JSwgD
	kl4/XiRvyKsc9Q7cHat0xknfb2IqpY/9tkRov+UyEIx1nBEvP4k8imnIaghMYqrajRwJngFSvzz5z
	i7VUWtwvyHGNTK4KSei/friqHuEcjnlt8mTw4Vu9p0eYzZVJJ44U8i6tn5gF0nQGsbEDzJaAjvsVx
	olx3XWrPRH61NEw/mCNa2uaPO39rYuioJsxx/kSRMGVAQ7MGjVfZA1EzJ8fCYXAZ1cjKNwmp7tftv
	c+pNyUXbI7HxaYC2k4Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2piv-00000006txy-0U1D;
	Mon, 21 Oct 2024 10:33:17 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2pir-00000006tx6-1sZ9
	for linux-phy@lists.infradead.org;
	Mon, 21 Oct 2024 10:33:14 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2fb5638dd57so42647511fa.0
        for <linux-phy@lists.infradead.org>; Mon, 21 Oct 2024 03:33:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729506791; x=1730111591; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UTXT6Qy0j2/Ntg3Z49e6WSEz/eZy8Jlw8PKip8owHHU=;
        b=dNhWoIT9mTHJSe3b0RcjYMpZlwwP+MUqRiGs3hXSitez+bk8K7QQD3JeifupR8WOMr
         FqFSmDaE4NJB/k6boHOO6z78ZGXFWVB1iUDgn98Bya+Ih4brXQxDCjZ8cvIY5DJJwUtP
         1S1dtxf/tzTWMI04YxXVF5YYQEmORqpO14mdkeUTepzB/xaeKLUQH5ReOXNL/1ngnReM
         Xkr15n55R4VC+cxh7TVrO6W4AusBBWe27qR9LitzXuzdaOJn0HrpJOtNH/jxUHRdtxFk
         1Idote3Hd+OkpKVYNmeVM4Z/jmXhApgMV0jHin12wMPa1KSGaxKVm/XAv6tRC2AEaLml
         AF6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729506791; x=1730111591;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UTXT6Qy0j2/Ntg3Z49e6WSEz/eZy8Jlw8PKip8owHHU=;
        b=SWKq3n68HN8YF9cCo4OiFtTWhHABdBeUP2NQ7dPUeXJph0ba6irncxQXyod3cHLAQv
         vhG39h/Gd3tdb2daryR5O4R4Vt00A9lZlH/v4WDDli7AqNaP8QbTbU5OsjZ8JWv0GlxQ
         sCX+K43TEBhqYNkbSfG8LPw3SA/JBH5ZNwtkZnyH6+0sMO5IrFN+hqA+KjQTsay7Zsa2
         c61dBscq+tOBPzhG3Z05t8kV7/eYkhlk4wMR9CHp+FNBVPv2z6XN/+iFS0PCNsoVJrDv
         rvWE/fJPr+PlXDTYbsa+MbIax2ME2XUVxhuZ0rkNcvMMHjpLGBOAvCUHp5rn03H/ut+B
         CqOw==
X-Forwarded-Encrypted: i=1; AJvYcCVDIilKCXOJVPjdCtKmH0+MxCCz9yeYjnUvOqSOAW8hnCirWut/LJiV9MxmP1KPczOITYwa9G/noj0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxs2xtRI04r3KeV8wdYldIsxJNRyBOShXZeQyO8ytkHIR9eRRSG
	UDh7Q9GzbhGN90xSIK7I179UNmr0e00xNBfy3GRVX/NjeUGFlLC3yWZf0tXoE68=
X-Google-Smtp-Source: AGHT+IHGW0q2lwoRj7S3rf9+iiedFfDzPTp7u5cQ3yIox9lL4ddIvW7Ltn33mCs9mL8+x1IN3JIGaA==
X-Received: by 2002:a05:6512:318b:b0:539:de9c:c890 with SMTP id 2adb3069b0e04-53a1544c332mr5346248e87.42.1729506791288;
        Mon, 21 Oct 2024 03:33:11 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a22420015sm454132e87.123.2024.10.21.03.33.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 03:33:10 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v2 0/6] phy: qualcomm: add support for USB+DP and PCIe PHYs
 on SAR2130P
Date: Mon, 21 Oct 2024 13:33:06 +0300
Message-Id: <20241021-sar2130p-phys-v2-0-d883acf170f7@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAOItFmcC/13MQQqDMBCF4avIrJuSGSXWrnqP4iLaaAaKkUkJF
 cndmwrddPk/eN8O0Qm7CNdqB3GJI4elBJ0qGL1dZqf4URpIU4MaWxWtENZ6VavfomrItHU9XDS
 aDspnFTfx+/DufWnP8RVkO/iE3/UndX9SQqXVMGkzjc5SQ3h78mIlnIPM0OecP6lZppKrAAAA
X-Change-ID: 20241017-sar2130p-phys-426733b80169
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1714;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=Vq2O95x6e7Hs1DzKvXYDscSROlBA9dAz4qml1ZBzo4k=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnFi3jHG8OPQet6L+ETGmWNYD1lBj7VW+leaQvs
 ae5xw29CbuJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZxYt4wAKCRAU23LtvoBl
 uI3QD/4nXKaITIt5aPT/aRcRMosbLmFThrHwNilqfCZp5vHXvBNhs1Ynyeh+7i2DifmIldNE+8d
 I7al4ryRbTYQUmzrcVV/mpTngLXuY4e9Qi1rAM2tWUBUP/2MGWeISmitd3tteL8NbjfspLN9ZBJ
 902lOqOy/oVWqMHdKdvmSWZh++o0tLCzTHNdwj7PdaBIk+WSmT8DKZiC3+/K+ylav1FJMBeT6g7
 +OnFN/+hpTWdJp3r9euV53zbxCuE/azbbUCFbGYzEsJGUFDU/icjA7XYqs/RDEcqziblQ6eLtrQ
 rCL1dI/q5KlX3+xiI1KEKtRHSSzkaJVeudpv+cRZcvDxfBJC9hYYACwNdObmw5fR4ld1rEpTyGC
 t+5C3A7vEAO2MQadKmnKbd90z+4hjhwB0rAxSgRcWga1oz46OKTg69yPCmAV3v23oJ2Ddr8WYBe
 nyCY8XLJyOIZksVTQS8xTzEPATuxPJ4PXD6XPgmusMSAJRCKb8lOMGhZROkwZ4lT1nFRx6Y5zCJ
 PL10tRQ0OY1nxoBYPhrqpArJlsY4+2oEfCQkAEtaofS3V2b1TCwezIGZTbYDQhMgj1DY3bFoTbZ
 vXtCX1nPn5+TNemkprgDL8GAdS79KqI1QhjpDhhF2EtAU6PsvhadK6ZpBoQwufQ5Ph+eaHQNGhS
 4XOEcZmRuEMj9ZQ==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_033313_520766_30255066 
X-CRM114-Status: UNSURE (   8.98  )
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

Add support for the USB+DP Combo PHY and PCIe PHY on the Qualcomm
SAR2130P platform.

The DP part of the combo PHY wasn't yet tested, but it is not possible
to support just the USB part of the PHY. DP part might require
additional fixes later.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Changes in v2:
- Fixed the schema name in the patch 1 subject (Johan)
- Link to v1: https://lore.kernel.org/r/20241019-sar2130p-phys-v1-0-bf06fcea2421@linaro.org

---
Dmitry Baryshkov (6):
      dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Add SAR2130P compatible
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add SAR2130P compatible
      phy: qualcomm: qmp-combo: add support for SAR2130P
      phy: qualcomm: qmp-pcie: split PCS_LANE1 region
      phy: qualcomm: qmp-pcie: define several new registers
      phy: qualcomm: qmp-pcie: add support for SAR2130P

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |   2 +
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |   2 +
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 100 ++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 173 ++++++++++++++++++++-
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v4_20.h |   5 +-
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h |   5 +-
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h    |   3 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h         |   2 +
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h    |   1 +
 9 files changed, 284 insertions(+), 9 deletions(-)
---
base-commit: f2493655d2d3d5c6958ed996b043c821c23ae8d3
change-id: 20241017-sar2130p-phys-426733b80169

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
