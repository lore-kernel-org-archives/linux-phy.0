Return-Path: <SRS0=4oE9=IX=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EFCFC433E1
	for <linux-phy@archiver.kernel.org>; Thu, 25 Mar 2021 18:06:08 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0C6F661A34
	for <linux-phy@archiver.kernel.org>; Thu, 25 Mar 2021 18:06:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0C6F661A34
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WBdEY+fb12eikiLEGY2l1gUkBpzLpx1h9khT8glEwhc=; b=pHq3tBBV/MWrYkMOB3E4wZ0If+
	kSyJ2jbTa3sC8/lTC85LWSbHL6lXsW+PNOFyCNUA7qP2fEux/kRQ7wmaBmH1kRSVNRoA9Hf2dmkip
	DEkMWplHE9le/brEYGNc71vj8Amy/aimtimkYU+cEmPFnMXf58RnTgWkow0yQPprmqnufTcZBDDUH
	QsNNy+a3B34aQL72fFseOdcFXbm8jqdnsCOZB9urgZ7W0pcww/z2qqxRvOrj/Xq17DcQRWLAqe9Qo
	d2XuFDVLEE5B6kcc/USP/DOTuKbsOa78m5MO/U/odYX/gm8aLmBCBtNMIhlsQ6z2Sb1apVUUVvi1U
	wbpWb8+Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPUMw-001z7k-9b; Thu, 25 Mar 2021 18:06:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPUMc-001z5V-O0; Thu, 25 Mar 2021 18:05:48 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 174C561A3C;
 Thu, 25 Mar 2021 18:05:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1616695545;
 bh=jXjLA+y0nCRU/QQpmIbeUF0kq7bcptL/C7t/VeW/fmk=;
 h=From:To:Cc:Subject:Date:From;
 b=drnmIoL/1RnNg72x50zPjuhxxzSOAr61LccCC9td9S9HqkEUq/If54GjMa3Fg3nPX
 98mE8/VCxRscppqW4zJsPiwhr1mWoHq1dnUJB6aVCecalgYDxxzlpQpjwIdZ/v5CbH
 zb3Ry5JBDeWb5LkYOPNF7U566PNr9BeYQWir7pE72b/s3oyXVK07yEYDGB7t8G0upH
 ImOQS76Dmexs1r8p+VRfBk5K5txQpzaSCyojuk2z/eles7QQWESYk5Jxlra+E2Yddj
 G3OqKnIJ1/iCBjXE3OC/jjh6r7wxBMDnCuiwtDHC3qTMkMdeRVzcV1D2+ncXEF4gEJ
 ZloM5ODX5++Mw==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1lPUMX-001Mae-O4; Thu, 25 Mar 2021 19:05:41 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Alex Dewar <alex.dewar90@gmail.com>, Atul Gopinathan <leoatul12@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Lee Jones <lee.jones@linaro.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Wei Xu <xuwei5@hisilicon.com>,
 Yu Chen <chenyu56@huawei.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-staging@lists.linux.dev
Subject: [PATCH v5 (RESEND) 0/7] Move Hisilicon 6421v600 SPMI and USB drivers
 out of staging
Date: Thu, 25 Mar 2021 19:05:32 +0100
Message-Id: <cover.1616695231.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210325_180547_209270_42F873B6 
X-CRM114-Status: GOOD (  18.01  )
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

PS.: this series is identical to the one I posted earlier today. The only difference
  is that it was generated with --no-renames, as per Lee Jones request,
  in order to make easier to review the code.

Hi Greg,

Those are the remaining patches that are needed for the USB to work
with Hikey970. This is based on the top of next-20210323.

The main change from the previous patch series is that a new patch
was added:
  - staging: hisilicon,hisi-spmi-controller.yaml cleanup schema

It does some changes at the DT binding file, as requested by Rob.

My understanding from the discussions we had, back on Feb, is that
those patches will be merged via the staging tree.

Thanks!
Mauro


Mauro Carvalho Chehab (7):
  phy: phy-hi3670-usb3: move driver from staging into phy
  staging: hisilicon,hisi-spmi-controller.yaml cleanup schema
  spmi: hisi-spmi-controller: move driver from staging
  mfd: hi6421-spmi-pmic: move driver from staging
  regulator: hi6421v600-regulator: move it from staging
  dts: hisilicon: add support for the PMIC found on Hikey 970
  dts: hisilicon: add support for USB3 on Hikey 970

 .../mfd/hisilicon,hi6421-spmi-pmic.yaml       | 135 ++++
 .../bindings/phy/hisilicon,hi3670-usb3.yaml   |  73 ++
 .../spmi/hisilicon,hisi-spmi-controller.yaml  |  71 ++
 MAINTAINERS                                   |  23 +-
 .../boot/dts/hisilicon/hi3670-hikey970.dts    | 124 +++-
 arch/arm64/boot/dts/hisilicon/hi3670.dtsi     |  58 ++
 .../boot/dts/hisilicon/hikey970-pmic.dtsi     |  87 +++
 drivers/mfd/Kconfig                           |  16 +
 drivers/mfd/Makefile                          |   1 +
 drivers/mfd/hi6421-spmi-pmic.c                | 297 ++++++++
 drivers/phy/hisilicon/Kconfig                 |  10 +
 drivers/phy/hisilicon/Makefile                |   1 +
 drivers/phy/hisilicon/phy-hi3670-usb3.c       | 668 ++++++++++++++++++
 drivers/regulator/Kconfig                     |   9 +
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/hi6421v600-regulator.c      | 299 ++++++++
 drivers/spmi/Kconfig                          |   9 +
 drivers/spmi/Makefile                         |   1 +
 drivers/spmi/hisi-spmi-controller.c           | 367 ++++++++++
 drivers/staging/Kconfig                       |   2 -
 drivers/staging/Makefile                      |   1 -
 drivers/staging/hikey9xx/Kconfig              |  52 --
 drivers/staging/hikey9xx/Makefile             |   7 -
 drivers/staging/hikey9xx/TODO                 |   5 -
 drivers/staging/hikey9xx/hi6421-spmi-pmic.c   | 297 --------
 .../staging/hikey9xx/hi6421v600-regulator.c   | 299 --------
 .../staging/hikey9xx/hisi-spmi-controller.c   | 367 ----------
 .../hikey9xx/hisilicon,hi6421-spmi-pmic.yaml  | 135 ----
 .../hisilicon,hisi-spmi-controller.yaml       |  75 --
 drivers/staging/hikey9xx/phy-hi3670-usb3.c    | 668 ------------------
 drivers/staging/hikey9xx/phy-hi3670-usb3.yaml |  73 --
 31 files changed, 2230 insertions(+), 2001 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml
 create mode 100644 Documentation/devicetree/bindings/spmi/hisilicon,hisi-spmi-controller.yaml
 create mode 100644 arch/arm64/boot/dts/hisilicon/hikey970-pmic.dtsi
 create mode 100644 drivers/mfd/hi6421-spmi-pmic.c
 create mode 100644 drivers/phy/hisilicon/phy-hi3670-usb3.c
 create mode 100644 drivers/regulator/hi6421v600-regulator.c
 create mode 100644 drivers/spmi/hisi-spmi-controller.c
 delete mode 100644 drivers/staging/hikey9xx/Kconfig
 delete mode 100644 drivers/staging/hikey9xx/Makefile
 delete mode 100644 drivers/staging/hikey9xx/TODO
 delete mode 100644 drivers/staging/hikey9xx/hi6421-spmi-pmic.c
 delete mode 100644 drivers/staging/hikey9xx/hi6421v600-regulator.c
 delete mode 100644 drivers/staging/hikey9xx/hisi-spmi-controller.c
 delete mode 100644 drivers/staging/hikey9xx/hisilicon,hi6421-spmi-pmic.yaml
 delete mode 100644 drivers/staging/hikey9xx/hisilicon,hisi-spmi-controller.yaml
 delete mode 100644 drivers/staging/hikey9xx/phy-hi3670-usb3.c
 delete mode 100644 drivers/staging/hikey9xx/phy-hi3670-usb3.yaml

-- 
2.30.2



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
