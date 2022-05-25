Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21488C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 25 May 2022 23:58:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ES4PqSr4+9ovZFsq2lGGYTGWGfx4aPwNn9spEXIthuU=; b=AiipU33dRH9EeF
	pM6K581sCm3gZZL7b2DcO4CmRFDox8By/TWboaljrw9/rorKddJOytcjVCD8QYKOwFkJQfnyJyrA7
	RgfGRyOszcXwJ5zWaIeJV2tkgYWm9Tn3ZEBIS4LrvOnUnj/roYdsFXnX0mEQnKpK+hMW6uGqAjNE0
	d1NeqHWjdSKcloJLxgHlfzFcHbG8EJD2nBUb4JVfKAq3SyXccUyjSY+Kok3x7YTsdwapuvRxnTldM
	nwwGMGjDgx+N5YoKcpJYV4xQAK1DXS2Uqe/G96f9Ulz1iomrbX8RAZfhgHPb2UtH4SpvdsQykDprH
	EZwZoPQinWbSiCLcU/AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nu0ts-00Cz6l-AM; Wed, 25 May 2022 23:58:48 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nu0tp-00Cz5p-Tv
	for linux-phy@lists.infradead.org; Wed, 25 May 2022 23:58:47 +0000
Received: by mail-lj1-x22f.google.com with SMTP id e4so107895ljb.13
        for <linux-phy@lists.infradead.org>; Wed, 25 May 2022 16:58:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=M0etsjt3N3Ag/ghkmKC2eVWJ+UlMScMu38fKLV6Dh50=;
        b=hE+V12yDph0Sx/2fqnXMiatAsnD2dZQbMuRzUsjyj7YfP1tDji7fJDS5PLhQ//S9eS
         UMhd5SQsy22nSNl6ATkplBpIxEu3RrCFqrmYx54VUnvXNs1QxPrI+X9Bt1R97yCCeEtB
         9OjeYq7cmnxLVFKz44iz/r1V4nczworDtKURfyGoBAAdtmYiRuXGKDS9kR37vPWHW6ao
         n5pOV98PcTF1M1Om5Psj/bShidAbBKbtZIPnFm95rHj3jqT8llL0Rb60boU0UhWKRC2q
         U89bNTWCzI7s3UxKxXwH6m69I4PwdsQZIsrDAbw6PD+seJoTaej4d4tOFhHZNJblaWMh
         noOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=M0etsjt3N3Ag/ghkmKC2eVWJ+UlMScMu38fKLV6Dh50=;
        b=a3baehzKdIrbTvt1M/KS0Bqgdb/6YMNXiKJZoSU1rFi4ctMwjzbPeBdGSo7dA4STxc
         ebSAws8TSjhbFDSa4p26JfasJrn6RNQaTHdI+btCodr0spZqYOS7oCqYEDTnXWd6hFtI
         Eg6bmsG9SJdLdiNXZKyjgRKWoV1UFWMo8+1eA48acYELFdQyeQx/olXX9FUjqp2YTiTl
         J/7lPKALsMdNp00NOZLdhJibGcSS+rFwLim1kqSoIrGFR8xPyueonJ+DPZQ70yN1vg4w
         gXtngU57dvKoQimH1jonMVd+Ukr0KJYaKAXEKE/3CKeFq+c9JtodVkcPy5VKQfkG3eC7
         5X4w==
X-Gm-Message-State: AOAM533+9zr3J56ZeNAcV2ccmtOI4SUhxAlpAjJqGkjqa7jb2HM2mWnf
	rh3RiJ4vfjL63X+tL1c9rAXbuA==
X-Google-Smtp-Source: ABdhPJzAl/VQBwjybEtdG3Q+pNXcG6IZKYTAx8FwbB3J8y9hJEXqVKTCtjKPrIA5IZVh1zdFi21YAg==
X-Received: by 2002:a2e:b4b4:0:b0:253:fdf5:1a1d with SMTP id q20-20020a2eb4b4000000b00253fdf51a1dmr5587013ljm.18.1653523123160;
        Wed, 25 May 2022 16:58:43 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u28-20020a056512041c00b0047255d21203sm9557lfk.306.2022.05.25.16.58.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 May 2022 16:58:42 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [RFC PATCH v2 00/34] phy: qcom-qmp: split the QMP PHY driver
Date: Thu, 26 May 2022 02:58:07 +0300
Message-Id: <20220525235841.852301-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220525_165846_100626_373851A1 
X-CRM114-Status: GOOD (  13.99  )
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

While adding support for the PCIe EP mode support to the QMP driver I
couldn't help but notice that the QMP PHY driver has slowly become the a
beast with tons of conditions and corner cases being inserted here and
there.r

This an RFC for an attempt to to cleanup the QMP driver by splitting the
QMP PHY driver into four smaller drivers, each targeting a particular
family of PHY backends (DP/combo, PCIe, UFS and USB). Yes, this results
in some code duplication, but I hope that the end result is still better
than the current situation.

If the idea looks good, I will continue polishing the drivers. A
feedback regarding the common functions (ones, left in the
phy-qcom-qmp-lib.c file) would be appreciated.

Changes since RFC:
 - Split the patchset to be able to get through the email size
   limitations
 - Minor correcions to the split drivers

Dmitry Baryshkov (34):
  phy: qcom-qmp: add library source code
  phy: qcom-qmp: add QMP PCIe PHY driver
  phy: qcom-qmp: move MSM8996 PCIe PHY to new QMP driver
  phy: qcom-qmp: move MSM8998 PCIe PHY to new QMP driver
  phy: qcom-qmp: move SDM845 PCIe PHY to new QMP driver
  phy: qcom-qmp: move SM8250 PCIe PHY to new QMP driver
  phy: qcom-qmp: move IPQ6018 PCIe PHY to new QMP driver
  phy: qcom-qmp: move IPQ8074 PCIe PHY to new QMP driver
  phy: qcom-qmp: move SC8180x PCIe PHY to new QMP driver
  phy: qcom-qmp: move SDX55 PCIe PHY to new QMP driver
  phy: qcom-qmp: move SM8450 PCIe PHY to new QMP driver
  phy: qcom-qmp: add QMP UFS PHY driver
  phy: qcom-qmp: move MSM8996 UFS PHY to new QMP driver
  phy: qcom-qmp: move MSM8998, SDM845 and SM6350 UFS PHY to new QMP
    driver
  phy: qcom-qmp: move SC8180x, SM8150 and SM8250 UFS PHY to new QMP
    driver
  phy: qcom-qmp: move SM6116 UFS PHY to new QMP driver
  phy: qcom-qmp: move SC8280xp, SM8350 and SM8450 UFS PHY to new QMP
    driver
  phy: qcom-qmp: add QMP USB PHY driver
  phy: qcom-qmp: move MSM8996 USB PHY to new QMP driver
  phy: qcom-qmp: move IPQ6018, IPQ8074 USB PHY to new QMP driver
  phy: qcom-qmp: move MSM8998 USB PHY to new QMP driver
  phy: qcom-qmp: move SDM845 USB PHY to new QMP driver
  phy: qcom-qmp: move SC7180 USB PHY to new QMP driver
  phy: qcom-qmp: move SC8180x, SM8150 USB PHY to new QMP driver
  phy: qcom-qmp: move SM8250 USB PHY to new QMP driver
  phy: qcom-qmp: move SM8350, SM8450 USB PHY to new QMP driver
  phy: qcom-qmp: move SDX55 USB PHY to new QMP driver
  phy: qcom-qmp: move SDX65 USB PHY to new QMP driver
  phy: qcom-qmp: move QCM2290 USB PHY to new QMP driver
  phy: qcom-qmp: add QMP combo DP+USB PHY driver
  phy: qcom-qmp: move SC7180 DP PHY to new QMP driver
  phy: qcom-qmp: move SC8180X DP PHY to new QMP driver
  phy: qcom-qmp: move SM8250 DP PHY to new QMP driver
  phy: qcom-qmp: drop old QMP PHY driver

 drivers/phy/qualcomm/Makefile             |    8 +-
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 1401 +++++
 drivers/phy/qualcomm/phy-qcom-qmp-lib.c   |  417 ++
 drivers/phy/qualcomm/phy-qcom-qmp-lib.h   |  311 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c  | 2098 +++++++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c   |  983 ++++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c   | 2229 ++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.c       | 6350 ---------------------
 drivers/phy/qualcomm/phy-qcom-qmp.h       |    3 +
 9 files changed, 7449 insertions(+), 6351 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-combo.c
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-lib.c
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-lib.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb.c
 delete mode 100644 drivers/phy/qualcomm/phy-qcom-qmp.c

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
