Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA275C4706C
	for <linux-phy@archiver.kernel.org>; Sat, 13 Jan 2024 20:56:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9adbBsrBJyLNLV+p7YZtcygJVE960yahhTD2Yl7uMsQ=; b=0hlgStrW53groE
	TE5eq/v9bSFjZCGQhgRJdR1rRMkKR42Zeodq8tN53+G7lYV8+OETODm7xJeKO9yUWMLV5CTpP0FtU
	xOvgW8KNfRafE2DQbOuRMCVmexrSQD0wmLch+f/I4Ea3QMrFCBMXi0RKTVavFaZHfUNTHuDF5mvkn
	vWaM0WFYBT27iinxOgwxAgCj5YQcIGanw6gBqwIevGjT5DZMmtsTix2p5I6/Ja4Ma7WWL8vwC3rL9
	gGLSmK/W8Qclrrm0ALcAc8tWPB+9rLQQlv6JFhkaR2a2sw5IKiTZv2RaDEgaIXBRTNXbXZPXEKoIx
	WcOFtrUadbkbxY0weieQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOl2v-005ghO-17;
	Sat, 13 Jan 2024 20:56:01 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOl2r-005gex-0C
	for linux-phy@lists.infradead.org;
	Sat, 13 Jan 2024 20:55:59 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2cd0f4f306fso88716281fa.0
        for <linux-phy@lists.infradead.org>; Sat, 13 Jan 2024 12:55:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705179354; x=1705784154; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8H3lEOLtQff6kh0Ma41nbBlczO7GfMuk2Ro8jq93iTk=;
        b=d+zSQ4eIan7TudCqZKnVgGnAb+LtFvA+Jh1POwoUOsMzcLu2WAYzxbXkRatrxldtkO
         4NgTrlCFNEVSiPVTAHQjAI4BpQEcRAJ0/kCHqC0a0P1NJikFrz/pIaQWWvfltC2AULI4
         7oYL/glf+vlYt0b3VI3Tjy4Up2qrZUbtx7dFk40tyR11uVyTzE5Y7/8pkGlJCwiTBxX8
         m4f2I3+ch77b0poBVcDbAywHgYjKHzGeaVI7CqdJvmboIwdnMNe5n1bGqda3cgpe3U+5
         bYJ5zDvf0EVu8SR6SRaR2EOBthGwFVjWLRGZ2OD+MrVCEIzGcEdb22fXy7hclNrS7qRz
         ZUZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705179354; x=1705784154;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8H3lEOLtQff6kh0Ma41nbBlczO7GfMuk2Ro8jq93iTk=;
        b=I3lgmpauoFVeoNxKvKtx58lzV8J7osBDQLX6K8B1RBLUdRWb9tU8z1P1CTL5RVipWt
         aCzH5guwwcwdjc5u/jjz7+7eYbiHqPGzEQ7y7hBFMBcno2Mvp0DXUnSqO97TJaFL4PGB
         jnLLxjPhISzh26glOyKELZzsVWZFcaMxEQjTOLc/k1EYeFuB+cw+0ydVvWp8G0EB2UTX
         0eWtYxYvgwxtpSkdo6y9x5vu2mFthXwcKGkeLNxYf9tLC+0aHNQSsY1mzppuqyMtqMvs
         YqJJps+o4Or4MyS2u8EebCuYXj52FwTPXU0uHA36lfRf1lzGpVb70sBVBBcU/wZUl4Bz
         i1YQ==
X-Gm-Message-State: AOJu0Ywtp2OA3dztg2+KkxN+V6HGgPiDARcheKgYkBL8/JEP8VhHwgCF
	FQRw8AEdSTBzng/WW9ElNPGHpmxth27h7Q==
X-Google-Smtp-Source: AGHT+IHYTf1qpzeijG/IAVOHBC9Svr8p0OrVPy2HbaZQn38lIRbpcNldfpa+W+dMGhsU/h3uV49Cjg==
X-Received: by 2002:a05:6512:3b90:b0:50e:935a:ca83 with SMTP id g16-20020a0565123b9000b0050e935aca83mr1825970lfv.91.1705179353618;
        Sat, 13 Jan 2024 12:55:53 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id p14-20020a056512328e00b0050e9355d7eesm919802lfe.103.2024.01.13.12.55.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Jan 2024 12:55:53 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v2 00/15] usb: typec: qcom-pmic-typec: enable support for
 PMI632 PMIC
Date: Sat, 13 Jan 2024 22:55:43 +0200
Message-Id: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAM/4omUC/1XMQQqDMBCF4avIrJuSZLSpXfUexYUkow60SUhEK
 uLdmwpddPk/eN8GmRJThlu1QaKFMwdfQp8qsFPvRxLsSoOWupZKaRFffEEt5jWSFbU1DaJsNV4
 NlEtMNPD74B5d6YnzHNJ66Iv6rj8I/6FFCSkcGTe4ummxwfuTfZ/COaQRun3fP9vsOwapAAAA
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
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=3797;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=CS9SbNxFzGdH021lW0ayb4u0wurDARzzELIZIOoEHYs=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlovjVgTNg+7k1nM72B6joVl25KPM1s15T6Nfw/
 KHDh5ovnJeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZaL41QAKCRCLPIo+Aiko
 1SNWB/4gB8dpPDVvSXPhjV9SucMh7BkyGVx2mhG29317CtS0V62KEIOYwaFP9YIEQYzOoc1gpJm
 HLoIJAgORJ4eWCciCZlkdmXS4XjtJ6xJPiczt7G3s1QFLqsWgHBwJEY4JQWDPAuXOSroRNg8SRv
 OpxbPqRuZWByNn7KTKHkQCHO09Tyc5YB4E6S/N5FynMkgobVXWeFRJbdLANoDYTA3FNsk1BnNtG
 4r4Ul+Tai6qZ/RECBSi/MI7tn8sySUZrRlO3IkZ465GoW9xrhqS3//nYhLsEr3QfQU8X9G4gOGC
 Jbacdkfp2lPCCcRAdBCtVlZ2MvrghilYCW8xusv6w6gMt3ZF
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240113_125557_143578_F714D6D9 
X-CRM114-Status: GOOD (  11.51  )
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
Changes in v2:
- Split qcom_pmic_typec_pdphy_set_roles() changes to separate patch
  (Konrad)
- Simplified devm_kzalloc / sizeof() argument (Konrad)
- Made start / stop callbacks mandatory (Bryan)
- Reworked Type-C port handling into a backend similar to PD PHY (Bryan)
- Made more qcom-pmic-typec data static const (Bryan)
- Squashed usbc PHY single-lane removal patch (Konrad)
- Further usbc PHY cleanup (Konrad)
- Fixed order of DT properties in pmi632.dtsi (Konrad)
- Instead of specifying bogus PDOs for the port, specify pd-disable and
  typec-power-opmode properties for the connector
- Moved orientation-switch / usb-dual-role properties to sm6115.dtsi
  (Konrad)
- Linked usb_dwc3_ss and usb_qmpphy_usb_ss_in
- Link to v1: https://lore.kernel.org/r/20240113-pmi632-typec-v1-0-de7dfd459353@linaro.org

---
Dmitry Baryshkov (14):
      dt-bindings: regulator: qcom,usb-vbus-regulator: add support for PMI632
      dt-bindings: usb: qcom,pmic-typec: add support for the PMI632 block
      dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: split from sc8280xp PHY schema
      dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: support USB-C data
      usb: typec: tcpm: fix the PD disabled case
      usb: typec: qcom-pmic-typec: fix arguments of qcom_pmic_typec_pdphy_set_roles
      usb: typec: qcom-pmic-typec: allow different implementations for the PD PHY
      usb: typec: qcom-pmic-typec: allow different implementations for the port backend
      usb: typec: qcom-pmic-typec: add support for PMI632 PMIC
      phy: qcom: qmp-usb: split USB-C PHY driver
      phy: qcom: qmp-usb: drop dual-lane handling
      phy: qcom: qmp-usbc: add support for the Type-C handling
      arm64: dts: qcom: pmi632: define USB-C related blocks
      arm64: dts: qcom: qrb4210-rb2: enable USB-C port handling

Vladimir Zapolskiy (1):
      arm64: dts: qcom: sm6115: drop pipe clock selection

 .../bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml    |  171 +++
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        |   22 -
 .../regulator/qcom,usb-vbus-regulator.yaml         |    9 +-
 .../devicetree/bindings/usb/qcom,pmic-typec.yaml   |   28 +-
 arch/arm64/boot/dts/qcom/pmi632.dtsi               |   30 +
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts           |   50 +-
 arch/arm64/boot/dts/qcom/sm6115.dtsi               |   44 +-
 drivers/phy/qualcomm/Makefile                      |    2 +-
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c            |  323 +-----
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c           | 1169 ++++++++++++++++++++
 drivers/usb/typec/tcpm/qcom/Makefile               |    3 +-
 drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c      |  254 +----
 drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.h      |   27 +
 .../usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.c    |  157 ++-
 .../usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.h    |   94 +-
 .../typec/tcpm/qcom/qcom_pmic_typec_pdphy_stub.c   |   80 ++
 drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_port.c |  290 ++++-
 drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_port.h |  172 +--
 drivers/usb/typec/tcpm/tcpm.c                      |    3 +-
 19 files changed, 2058 insertions(+), 870 deletions(-)
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
