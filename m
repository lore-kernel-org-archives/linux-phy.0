Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51187ECAAD3
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 09:14:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tVE5IL7YJcTgZniC5hHBpSJC6Dhg1R+XDlOF/c1uNzM=; b=PcBNv47yhOir4o
	YWseYGo1t3pONimT/Z+tvUeTY869cxOJ2wGu7ys/QoAsadYL8VyQV+96d6dx1cwJRqiKGvwJ0y/Ev
	i9dD5iGWnQcgfQ1td/EHciYKR4nfHZz3HGxHsGrgGPN/gOPy5docjPMVZTIb4ClNFVj0WvBp61La9
	6xHRc1XYHgYk6L5Ol2Qdh9QtZ+8OwE5C2M1Y3GPx/x5ktmFa3mjm8BCHdccvSULtPikfBkkGVIIvg
	VDINhKKNLtrOq8LaZlX9Uf9V7mf7fI3Bg6cwp2pWpDc1c3Fkuus+WVQHBRfaxvZ0MXBtzTHKn0J9B
	qc+A2VN81ARcNAD88SnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWa5w-00ExZq-NZ; Fri, 09 Sep 2022 09:14:40 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWa5u-00ExWf-IU
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 09:14:40 +0000
Received: by mail-lf1-x133.google.com with SMTP id f9so911727lfr.3
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 02:14:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=+0z4HKJD1eS//CKtJWyPBgSJ1scmlJeAL3y8G7IiU2g=;
        b=hKq7saiNkBLJb5v7dRXRX7Bh3jdG8DwHCgkwtmtriCm4YWaQ0r8gmSLlc9sN9Gfz8t
         pb0WpWhtbg1XwoZ2S2tEBLhIfzrHb9N0abMy+XdD3iRkBgzmwDxKOFVZJ/bYw4qfksAM
         vsBjYu9yt6cJigo/a41j/4s3TRzw8zB3f+3cD248BN+AHV8zck4FvH6J+HCUnF2KHADZ
         0Fu0T2LdX1nxBpOSZlVlTgDmmDRnQdOy5+vLLVhplUSK5Gnz3VVbIAr46ofnZHMbPBX0
         Oa75BkfgnW+KwT04qPpMqKXfy++qO/hBF6pqcr4kfscr/S+tNjguugU8qYgRDlN6NgO0
         nkVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=+0z4HKJD1eS//CKtJWyPBgSJ1scmlJeAL3y8G7IiU2g=;
        b=yEy3UszluDR5L3rlgkFkC5AgB6uEZotKy0BUCI/A60rT3BMyiYLaboAVXLawOeM42J
         4m0ZSoaREx/scW3AeI1s9FSfrSZ3yW74JZKYxuLQWiDg72m9ueuWy0yjD3NDtdhU1BYs
         jqnhuNjJi/cY9hqaUdPX7YiN3zErXdhb1NPpOWEk6AoUTFu9JxENURuev0rr3zg+kEXv
         IIWRcwJt9jNtsKQXmxIUlyJUrayMD4Oj5Q0F/wowkMFaA+z8ysnYfeqkJkIdIC481A+Z
         66SPF4iXWTSHHNgjOXnB6Iu6uZtDzq4ij+qL7Un1h3+hvac14ArgVW4QOYKowjAjDWT7
         v+uw==
X-Gm-Message-State: ACgBeo0RxGsRnYy+Db9DzC0tU53Gj4a8zSs5Hzohy9NlwLQP6AccwzJu
	xBN1s60OBqs6EzcqtVL76Okvyg==
X-Google-Smtp-Source: AA6agR5s3gvz9R067NMsiWXtYVKGJctpoq2Me9bOJ6xPk3ekGRsEUfodjLVGuqUvJBVUEKdzholYDw==
X-Received: by 2002:a05:6512:3404:b0:48c:e32d:c9a0 with SMTP id i4-20020a056512340400b0048ce32dc9a0mr4303852lfr.212.1662714874512;
        Fri, 09 Sep 2022 02:14:34 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id z26-20020a2e4c1a000000b0026acbb6ed1asm201615lja.66.2022.09.09.02.14.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Sep 2022 02:14:33 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 0/9] PCI: qcom: Support using the same PHY for both RC and EP
Date: Fri,  9 Sep 2022 12:14:24 +0300
Message-Id: <20220909091433.3715981-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_021438_658210_726D6960 
X-CRM114-Status: GOOD (  17.90  )
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

Programming of QMP PCIe PHYs slightly differs between RC and EP modes.

Currently both qcom and qcom-ep PCIe controllers setup the PHY in the
default mode, making it impossible to select at runtime whether the PHY
should be running in RC or in EP modes. Usually this is not an issue,
since for most devices only the RC mode is used. Some devices (SDX55)
currently support only the EP mode without supporting the RC mode (at
this moment).

Nevertheless some of the Qualcomm platforms (e.g. the aforementioned
SDX55) would still benefit from being able to switch between RC and EP
depending on the driver being used. While it is possible to use
different compat strings for the PHY depending on the mode, it seems
like an incorrect approach, since the PHY doesn't differ between
usecases. It's the PCIe controller, who should decide how to configure
the PHY.

This patch series implements the ability to select between RC and EP
modes, by allowing the PCIe QMP PHY driver to switch between
programming tables.

Unlike previous iterations, this series brings in the dependecy from
PCI parts onto the first patch. Merging of PHY and PCI parts should be
coordinated by the maintainers (e.g. by putting the first patch into the
immutable branch).

Changes since v2:
- Added PHY_SUBMODE_PCIE_RC/EP defines (Vinod),
- Changed `primary' table name to `main', added extra comments
  describing that `secondary' are the additional tables, not required in
  most of the cases (following the suggestion by Johan to rename
  `primary' table),
- Changed secondary tables into the pointers to stop wasting extra
  memory (Vinod),
- Split several functions for programming the PHY using these tables.

Changes since v1:
- Split the if(table) removal to the separate patch
- Expanded commit messages and comments to provide additional details
- Fixed build error on pcie-qcom.c
- Added support for EP mode on sm8450 to demonstrate the usage of this
  patchset

Changes since RFC:
- Fixed the compilation of PCIe EP driver,
- Changed pri/sec names to primary and secondary,
- Added comments regarding usage of secondary_rc/_ep fields.

Dmitry Baryshkov (9):
  phy: define submodes for PCIe PHYs
  phy: qcom-qmp-pcie: drop if (table) conditions
  phy: qcom-qmp-pcie: split register tables into main and secondary
    parts
  phy: qcom-qmp-pcie: split PHY programming to separate functions
  phy: qcom-qmp-pcie: turn secondary programming table into a pointer
  phy: qcom-qmp-pcie: support separate tables for EP mode
  phy: qcom-qmp-pcie: Support SM8450 PCIe1 PHY in EP mode
  PCI: qcom: Setup PHY to work in RC mode
  PCI: qcom-ep: Setup PHY to work in EP mode

 drivers/pci/controller/dwc/pcie-qcom-ep.c     |   4 +
 drivers/pci/controller/dwc/pcie-qcom.c        |   4 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 312 ++++++++++++------
 .../qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h    |   1 +
 include/linux/phy/phy.h                       |   9 +
 5 files changed, 229 insertions(+), 101 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
