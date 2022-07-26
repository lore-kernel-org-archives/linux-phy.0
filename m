Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46CC9C00140
	for <linux-phy@archiver.kernel.org>; Tue, 26 Jul 2022 20:34:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AB3f4OUQackPQAhKi7+XCYBxNQoC6eJrjpAs/gIxOdY=; b=zCJpvsB8S2BUvf
	/cP9Ga7yIXdj4YFb+I3XbHhj9nvAR6PsE83ettKbS5r01tRakVAxtuoXS4c6LT3/kHfNpluvaNh0C
	ledq6PKvFYfC9573+W4dbYA/MMnAjB/cv0YT6AESq+AQaJaXgh+Fhkr5wve/w4HulWnHaVkXOOu9E
	Y7lISaUpOttdRpJWpvZP1UxYgKy1kYtJ6/x3vtC6tIQLDJI5XbKnuUpcfGTWCdiAj5u/5qLg3UmhD
	rx/VaZi4iNZIoHh0uOeoP5NnuXYhSw9zd8x+ilZM3Qj8fGz6gHNOfaqXWHFMbWEySTq1I7IbqP0iz
	uQcIvTSfcLWWj9H5eRRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGRFy-003KsH-DD; Tue, 26 Jul 2022 20:34:18 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGRFu-003KgL-Fd
	for linux-phy@lists.infradead.org; Tue, 26 Jul 2022 20:34:16 +0000
Received: by mail-lj1-x22e.google.com with SMTP id e11so17741584ljl.4
        for <linux-phy@lists.infradead.org>; Tue, 26 Jul 2022 13:34:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LBgfLrjfrDzFKMd04kVmm9cQnQP6aRPvjjtNa3eyuWY=;
        b=IPrAYfeo0Ayz6XdL7LQp+CxK6bh+AlcqHl+DTv//M50yF8BB6VfDiGJZMgiWyGapX9
         qEVmhIHwdOfE5sIMZ1BFcmtmkYJwuLoTN+ZA9oahViyotPsNBT3Ark6muE3ohERSZe/Y
         LSEfuY0Gd1SuPoaJ/u7enrEEVMtKjRX+6fNnDJ6RX8qPsXq6ApSGEKslh9skY0Mo2uh0
         7FxwLuXmoZ8B7HWjALpmXN4fv0/wh9KGUF8BxZgZCLZYzfm7oSFia6GLN4g+FJiVGsBd
         Tyhy1jEm/P6bYaGZnrEZjxWkGoaxjjmkyuAt3A39wvIOe8WI6XbyakNbCBQ3iR82LieH
         vpxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LBgfLrjfrDzFKMd04kVmm9cQnQP6aRPvjjtNa3eyuWY=;
        b=YCeBJYILlsw59GeKBgA927M6d0dulaslwX5i1N6usaDEfa71vHoZILJm2ezl54xsN7
         Dreew40XtK+S3s/ld6tDt1q1LmsTYP2CcUYJQiSF2zuv7GD/Ac4/PQVCCIVVtLlETLqO
         RXxkVP/YpLsdEPoZOyruKDUxbjFa9gIgXE8qTUuv9AOBOYcancY8OEu35fo3OPKV3aWo
         vJaF56PQRBkpXKkChbZoxnKBUq6KkS4G+jtkwmVzMWdV4u+Uu4Pt/fIa+43GOPHFA+iL
         mnfFvNJj35a9WokZVqfleNB3TDQV25eOsff3lbXBdBBfYTNg3jixfFC2ux9I3j2sVjeg
         J86w==
X-Gm-Message-State: AJIora8VlDb4CclhvV1DzAOWDm2CP5TckuEYxqHZXxObstovKrJ2lwvo
	1N44rkH5MS9nH4xe+dtZe7GXgg==
X-Google-Smtp-Source: AGRyM1uf8Wk/0bZLrZKza6HRO1fAvjkNQdRTIc6YaIrx7QPGXWmmDIMLIPP6vWcZwr9draHq70JcWQ==
X-Received: by 2002:a2e:9942:0:b0:25e:887:3fc7 with SMTP id r2-20020a2e9942000000b0025e08873fc7mr3615481ljj.303.1658867643212;
        Tue, 26 Jul 2022 13:34:03 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id o14-20020ac24e8e000000b0048a8899db0fsm1468548lfr.7.2022.07.26.13.34.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Jul 2022 13:34:02 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
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
Subject: [PATCH v1 0/4] PCI: qcom: Support using the same PHY for both RC and EP
Date: Tue, 26 Jul 2022 23:33:57 +0300
Message-Id: <20220726203401.595934-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220726_133414_570468_DD8DCC29 
X-CRM114-Status: GOOD (  12.57  )
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

Note, there is no direct dependency between PCIe and PHY parts of these
series, so these patches can be merged into respective subsystem trees
separately.

Changes since RFC:
- Fixed the compilation of PCIe EP driver,
- Changed pri/sec names to primary and secondary,
- Added comments regarding usage of secondary_rc/_ep fields.

Dmitry Baryshkov (4):
  phy: qcom-qmp-pcie: split register tables into primary and secondary
    part
  phy: qcom-qmp-pcie: support separate tables for EP mode
  PCI: qcom: Setup PHY to work in RC mode
  PCI: qcom-ep: Setup PHY to work in EP mode

 drivers/pci/controller/dwc/pcie-qcom-ep.c |   4 +
 drivers/pci/controller/dwc/pcie-qcom.c    |   4 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c  | 169 +++++++++++++---------
 3 files changed, 109 insertions(+), 68 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
