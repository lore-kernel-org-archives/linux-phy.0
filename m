Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5498C64EC4
	for <linux-phy@archiver.kernel.org>; Wed,  8 Feb 2023 18:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PzehzUNmr5FMWAtqVXMyWI+KxZc0snxKqRgCC6hiQHs=; b=REi0mAFkzIQo/3
	uWeSnVDS8YL5Rw16Opc5nDyA4796+D1a3wnbekv9sqQvH/TSKTGSbk33DV9bY5LttoCo2GIrlArK4
	uYzceTAtZ3eXo/omTUbA2/wuyqfhEBDLHmfftqFUiR7OcmNM467GhAKU3fpP5x2W1GBmuB6ljfPvs
	ld13DfimEfXMAd7z/dqF7Mi4DN7rWpI9XLiHXmZTr/IkNSJDMOii9cRt8kjcr/DS9WLWBhMqoDqU1
	xHCvZwTskKUsUovavJz4PqT3+9BRvns3PE2CGtfckoz/gpUQKS6coBsK2naQcTAzSVyfU/jMi9tKO
	0FjIsyyKhnKaUYoMjwLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPpHD-00Gcc4-0A; Wed, 08 Feb 2023 18:34:39 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPpH9-00Gcaz-N1
	for linux-phy@lists.infradead.org; Wed, 08 Feb 2023 18:34:37 +0000
Received: by mail-wm1-x32f.google.com with SMTP id n13so13971813wmr.4
        for <linux-phy@lists.infradead.org>; Wed, 08 Feb 2023 10:34:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JLfDY/quHnwUCouz6Bzp+GXo+tVo6iB/nHd1i/j58GI=;
        b=bIhsmexHY4yKfObCkcb5kstFWmxUpIVr63TYSAvIjRXcuZkkHdGJWBJacJPjfPdvM2
         GX2fUWokn0vCe7y4tCQkD8U88dvs1Fp18M/A64L4MwAhjkDh/bBpxiQZAVpXYPn9zSXj
         NmbkIShSG5ZvIIkUbEX1B3TMhkyhe/oB1yF4r9+V1jHhO11G1CLxBaSl42hadmGJ0jAD
         0rzFV39/3m/uwklzHpHMTX1hVuce6Y7zb6VMf4PEcmSQ4difoQeXk0+lAGueQb+t1QMg
         N6nj7OPxQYYI7jbTyln4VlhvFPO4OPQw5eM8cjnZxrXGq4wO3ezQlCRnM3Vc2jrpaIU/
         CggA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JLfDY/quHnwUCouz6Bzp+GXo+tVo6iB/nHd1i/j58GI=;
        b=MByXFPJ2yFyWIp+nMiYCs7BBAQsCI0CVTF/cwl5bqmjy8t28bXoTaodAZ6akT8MNRa
         z5JIq5k4nlJ64Ox2MWWCC29yheac8IU11RX5zyffawQgPYkl34/iMi4LeRTYYOos5Pvl
         PYOxtsRzOneGOR4sZd4hw55A3ITOeFvlm3vJism0M+XF6+FQyi30/q8AgfCWVaAudZ5h
         n0s4SxyWgWbpxfUX5XUFRx/uOOlemWzQ8YcS4gP+QtwLXgFRdCIFh1GzeY/LJO9YWHuP
         7ScYGMHQK+uuaEfVf4/Rs5tVwaRmCbWWVlrinOtvOCY3DQD3YdCvnhlwFCnhZlMtqRxZ
         ygiQ==
X-Gm-Message-State: AO0yUKXPXGV975jkCt1GsCugR5Ax33z9FK4QvESKfcPyNGMYBwsHYg7D
	WYGTQX/73Eu7K1QpibGI3dUJPA==
X-Google-Smtp-Source: AK7set/xGUde5OfzB9OcfQ3EaMRQi9l5zhARcOoWUXWrZgCo0SpvATGeWPaXwf+8PBILopotmrlw/A==
X-Received: by 2002:a05:600c:18a6:b0:3e0:e77:3056 with SMTP id x38-20020a05600c18a600b003e00e773056mr7370990wmp.30.1675881273976;
        Wed, 08 Feb 2023 10:34:33 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id v1-20020adf8b41000000b002be505ab59asm14591304wra.97.2023.02.08.10.34.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 10:34:33 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan+linaro@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-phy@lists.infradead.org
Subject: [PATCH v6 0/6] sm8550: Add USB HC and PHYs support
Date: Wed,  8 Feb 2023 20:34:15 +0200
Message-Id: <20230208183421.2874423-1-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_103435_796919_8670006C 
X-CRM114-Status: GOOD (  11.96  )
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

This patchset adds support for USB for Qualcomm SM8550 platform.

This patchset is based on top of the following patchset:
[1] https://lore.kernel.org/all/20230208180020.2761766-1-abel.vesa@linaro.org/

Changes since v5:
 * rebased on top of [1]

Changes since v4:
 * dropped the dts/dtsi patches as there is no change needed to what is
   already merged
 * rebased on top of next-20230206 which has Luca's patches for SM6350,
   like Johan suggested

Abel Vesa (6):
  dt-bindings: phy: Add qcom,snps-eusb2-phy schema file
  phy: qcom: Add QCOM SNPS eUSB2 driver
  dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Document SM8550
    compatible
  phy: qcom-qmp: pcs-usb: Add v6 register offsets
  phy: qcom-qmp: Add v6 DP register offsets
  phy: qcom-qmp-combo: Add support for SM8550

 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    |   1 +
 .../bindings/phy/qcom,snps-eusb2-phy.yaml     |  74 +++
 drivers/phy/qualcomm/Kconfig                  |   9 +
 drivers/phy/qualcomm/Makefile                 |   1 +
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 409 ++++++++++++++++-
 .../phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h    |  31 ++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   4 +
 drivers/phy/qualcomm/phy-qcom-snps-eusb2.c    | 422 ++++++++++++++++++
 8 files changed, 944 insertions(+), 7 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-snps-eusb2.c

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
