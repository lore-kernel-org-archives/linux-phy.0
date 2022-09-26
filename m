Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27418C07E9D
	for <linux-phy@archiver.kernel.org>; Mon, 26 Sep 2022 17:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LoBrNq+4KCrjGZNA2hDhViMIz1q0ZKJIVN45FtxhzGw=; b=15ct/VQJczh1zW
	TDNa1oPpJZCw56ljXq/ky1dtzjsjBosonl0oNukDqViWq2+Fh2jsAOrUTNkzydX10As+ZE0I+22Ks
	PZpwNLz3qNT5uTh86WAHDDkKcH+qAoM8T9rHUBsBjf0kjHMsBBxQWuVOOS9akT5N0D4WmFQM/yHdh
	tG/oNJXsE1PsPMIWJU2CSGPaRaBf+KyGfxyqZvm36B8RPf06FuNABW1BMP5rEyAWPHeDUpyUyhzeI
	XH+Hy5ETZcGTSHez8OndfAOT8mYKWCWqLiNVKyoohECURHGiGbdITmyv58IWZU/R+Bv3Tjiz+6IyT
	9tTeqFNHoiqHMugl89eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocs0A-00634H-Ib; Mon, 26 Sep 2022 17:34:42 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocs08-00632c-8l
	for linux-phy@lists.infradead.org; Mon, 26 Sep 2022 17:34:41 +0000
Received: by mail-lj1-x235.google.com with SMTP id b24so8268038ljk.6
        for <linux-phy@lists.infradead.org>; Mon, 26 Sep 2022 10:34:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=3eBH9ZtwH+GTFt8HaXwfYSZezFnUoJTA70guBM37OMI=;
        b=cacUG67zWxuwZavxQfNyoL9Ipbh7EvP5+pviX/VL13Ltt/sTfe5AI1YMTNWKfCW4dU
         anDUG572cEsYhdnIqb0bssaJ/tardiiGdYcFgS18G5Bbqz5JCM/66+XnxETZwlTaInNH
         EmwlqF6lzqjtM7NAqYONYSEzGqyEMwY6WQQ/D+TBZ5XsnAdkL0m4U46i4RgD5xR6aho4
         FSj49ykhlbS2CB+tIR/HSL5okxOi3O9hHrq6wKa6Ev/RSrVMznYkXzkbBQy1i2jhD7sY
         FBjRTPD1lBTC8KFOU6EmXCptithx+qkVDtbGMRO/5i3X1W5pTafLu8FEEIY443A+bzUm
         BQmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=3eBH9ZtwH+GTFt8HaXwfYSZezFnUoJTA70guBM37OMI=;
        b=m50gF7P/xPWdcAmtKANhctr6sVE3iG5ebzRNgU1LJtSS2Ip1g2ZRc9xn2CWNm6X5lx
         3G1Is+0qtEva5M+qFxsGZzegpAil048KHDlSYpPTwvzdaRHY0D0kXSJajd8LXKeTR7GS
         E17CiwRwdlioQ1/oLqvTSkeXM9ru2ytlaJCLY8E8rR2ri1OOglyLLhPSDYpWszwUtxMc
         tjqPx3Ka1qZ3Aj5sZ/hBWkSKRv5jnxKM+BMZmgPzaMB0y1t2zviNICKZNc2v0Q6RSSlr
         7jwxMTmq42Qe6MZ0Eg/bMEfTFjg//nz/+Th6njHpZiYe2BnaijnwTjaHrJmpK+EdawxM
         N/TQ==
X-Gm-Message-State: ACrzQf3HyIRWyDlWBSeaZwPLbEPZLs4CFVVzc2q4wRzGayVQKGkc9a6b
	tL9wPrv55kXZGxqdZkdAhr4a2w==
X-Google-Smtp-Source: AMsMyM4pxRcN2ISIho7dHyf0AgOpoOfBmClLxsel4WJpoWCRmMmdttFOPBwD3I9PILHlBaYJSI+vqQ==
X-Received: by 2002:a2e:98ce:0:b0:26b:e763:27d1 with SMTP id s14-20020a2e98ce000000b0026be76327d1mr7600971ljj.306.1664213676642;
        Mon, 26 Sep 2022 10:34:36 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id v8-20020a2ea448000000b0026ad1da0dc3sm2402640ljn.122.2022.09.26.10.34.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Sep 2022 10:34:36 -0700 (PDT)
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
Subject: [PATCH v5 0/5] PCI: qcom: Support using the same PHY for both RC and EP
Date: Mon, 26 Sep 2022 20:34:30 +0300
Message-Id: <20220926173435.881688-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_103440_380551_BAA21C98 
X-CRM114-Status: GOOD (  20.25  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 523 +++++++++++-------
 .../qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h    |   1 +
 4 files changed, 335 insertions(+), 199 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
