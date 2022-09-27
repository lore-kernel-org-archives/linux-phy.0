Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F9F4C6FA83
	for <linux-phy@archiver.kernel.org>; Tue, 27 Sep 2022 09:28:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ufWSSf9XfV1BSPRw8X/beijI5sMFbJxxTiUvwr03NsM=; b=q4RFVBFdg6W3vp
	KG85VgZ8zgu4rl7m6JnRnEgLhoXXFZQcP6bQyFg3FybkSBvtp0Ozhgbs0MJIrGqOuB6GyZV8YrkJk
	h3py0NNbpjxl/peQO6/ndZQq3C8Ch8tKg1osuA2vB5b4oVUT7yqnRSSaQM4HeQ5yS+RQ/17kd1ZyD
	AYSFhpzKZgDxwKTyO6AKQByaTb7Lt20ydLlFMfxzg08WNLLfX+4Ih//aEOsDkdrFiZ/YHmn37SSRO
	mj3ftpfdMVPRUajyf8MuCifEwe5GB0tPcN6RUVlrVWVqfRo4wFcEdwPtBL0Han00D/+AfrYV6c+eo
	YWmrQD4Y8p3//313ppRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od6sl-009XRa-3K; Tue, 27 Sep 2022 09:28:03 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od6n5-009UhO-UM
	for linux-phy@lists.infradead.org; Tue, 27 Sep 2022 09:22:15 +0000
Received: by mail-lf1-x12c.google.com with SMTP id bu25so12883995lfb.3
        for <linux-phy@lists.infradead.org>; Tue, 27 Sep 2022 02:22:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=t6VJu8/Wiv6IWB8+BmCNnWaAShjWuGgtnz4D16lWKkA=;
        b=gI68beGbJZoo0vPg2KcWfCFD+IkjfDmW6ssvm6SfL8kvFWUcIfDxDGyYWYt2ekE4qg
         lnmEuBh42pT8CDRomBvhvdo/Rw6jWa8EQZbY8aepey9JCjQOfYC0csEdE4QnM45eO5CF
         TBeufoOX4QRienNaZM+Fkdgc0Zmy/rPTyemlM8zfNl4Lq4TaeYZ6A26WrAfjHIQ8izcT
         c4uEm5EOXSUHpN7JrqiEcDxAfSlE5ZtFuI2Xsw0MtcS2aRw4KMRrxTlSMzeG6+JLQKvY
         E5hSLes2xYLj7JLwLDEARQo9O7dXhE9rqYDJ85ks0HolfhYcghBVdhmsyPk9jrGhopUB
         cvmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=t6VJu8/Wiv6IWB8+BmCNnWaAShjWuGgtnz4D16lWKkA=;
        b=AP0kkVBTji9MEzlbj/0Im1P6+h9ecD93B1Eef+fPAuTDrzt9FbewIFiFVqgRonCXlS
         g7AQK4RTxtH4q2PUCjMP0JGccV/LB65JpnvaLEABdSrvuypZzG/XkfohqrPjSGrkNxJ5
         VrNGxU17b4UJ0GUqqyGNdx71Dqq85FfBoiudCUK5Z05zXOmFvwtMF8e4fnMWgaKw58/M
         egSa9o5/a8MxBq3F6libWi+Aex2zbpCGVsBj0p5C6g0NHKHBZAYVianlHlHJurcVVQcc
         jSzmMk4HsN7NH7ATVDD6jggslqRMIBV+8U2yBXPgVrK9qpUlt05IJa/jOD981mM9mM+I
         933Q==
X-Gm-Message-State: ACrzQf3Zjj0ufaAsYlCF4Smus5xyAUdsOKYrqwhYs/fKRj5Nx3nuxc33
	p9lSrhgUp6b+Biq8kMshkd9Hsg==
X-Google-Smtp-Source: AMsMyM4bdX/XPynEVd9IO0nlZgabJ7bk+eApg6ueDPdJ8Mp1fK20BKCqZTKf4rm0M/am4akh1nzJzg==
X-Received: by 2002:a05:6512:158b:b0:499:f9b3:df87 with SMTP id bp11-20020a056512158b00b00499f9b3df87mr11410112lfb.451.1664270528074;
        Tue, 27 Sep 2022 02:22:08 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id r28-20020a2e8e3c000000b0026c15d60ad1sm104584ljk.132.2022.09.27.02.22.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 02:22:07 -0700 (PDT)
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
Subject: [PATCH v6 0/5] PCI: qcom: Support using the same PHY for both RC and EP
Date: Tue, 27 Sep 2022 12:22:01 +0300
Message-Id: <20220927092207.161501-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_022213_366793_B6F3AD7F 
X-CRM114-Status: GOOD (  20.97  )
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

This patchseries depends on the header from the pre-6.1 phy/next. Thus
after the 6.1 the PCIe patches can be applied independently of the PHY
part.

Changes since v5:
- Fixed typos (Johan)
- Added R-B tags which I missed in v5

Changes since v4:
- Fixed the possible oops in probe (Johan)
- Renamed the tables struct and individual table fields (Johan)
- Squashed the 'separate funtions' patch to lower the possible
  confusion.

Changes since v3:
- Rebased on top of phy/next to pick in newly defined
  PHY_MODE_PCIE_RC/EP.
- Renamed 'main' to 'common' and 'secondary' to 'extra' to reflect the
  intention of the split (the 'common' tables and the 'extra for the ...
  mode' tables).
- Merged the 'pointer' patch into first and second patches to make them
  more obvious.

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


Dmitry Baryshkov (5):
  phy: qcom-qmp-pcie: split register tables into common and extra parts
  phy: qcom-qmp-pcie: support separate tables for EP mode
  phy: qcom-qmp-pcie: Support SM8450 PCIe1 PHY in EP mode
  PCI: qcom: Setup PHY to work in RC mode
  PCI: qcom-ep: Setup PHY to work in EP mode

 drivers/pci/controller/dwc/pcie-qcom-ep.c     |   5 +
 drivers/pci/controller/dwc/pcie-qcom.c        |   5 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 518 +++++++++++-------
 .../qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h    |   1 +
 4 files changed, 330 insertions(+), 199 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
