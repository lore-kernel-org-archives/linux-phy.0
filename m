Return-Path: <SRS0=4oE9=IX=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81F05C433C1
	for <linux-phy@archiver.kernel.org>; Thu, 25 Mar 2021 15:47:11 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 313F261A1D
	for <linux-phy@archiver.kernel.org>; Thu, 25 Mar 2021 15:47:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 313F261A1D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ArG70MiDqxTEp73aQGCihtOD29B8niqCPgd0SBMX8oo=; b=F09ZlEZc1HBJQbHhR+n2Ra+xqq
	qEVIqH1hr+EmKtWzN/B9XQnjFujffyJBWl/7l9DpX8fxOOqQr+QoqylYM0EMRkNVoYSgeelXOdbP7
	hDOEJ75ReE7Mk+R5UPykbM0VzS3iHIUCMykUFTHNWJO4FiZ0yBILg245a+cHtRflEjVS9Nd0PEUpt
	siOKHqF6AwTP846kw71moBSXz4cSd3Fma5kyZj7Y9K5SLVIh7YBrojoZ4dlOiS67/J31xu4ptS9C8
	wmQz4c3tVfcDhFkDTCEb0SFKKDJ5rqGRI5uJrjepnRMULOUt6JDxqNzI500rqj2rOsuyzpnDFadWd
	lHvMkluA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPSCT-001lI1-KE; Thu, 25 Mar 2021 15:47:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPSCA-001l9A-Ji; Thu, 25 Mar 2021 15:46:53 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 44320619A3;
 Thu, 25 Mar 2021 15:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1616687207;
 bh=BrV2f8UV7DfwZLtIuKvf80tdpFqcOSMeqyM1Lf9HasI=;
 h=From:To:Cc:Subject:Date:From;
 b=IonT1CEzd6aeLfaCrpGvBiZdh8mueXNygqKIfPPoxYP1zuPm6hxtqBrJS4DiPukEe
 aWCSNToM7PHzds0P0zxkXTS34u8XljYqHau+Yk9nozL3GC05uuPN723yq3KIisSIh7
 okrAoTh0X+vNrqlYqLwEDYO3k98mqUssxJospVus9cWJLYClLIRans2hVoEX+1I/Qv
 j/fE8YU/TPePj9fQM+yz9NP1cwNME9MNUZt8ZSbIH8D3ZDNs/Y2KyMFQrGYRirRMZk
 lvB0q3d7pgIwLTg2cRiTbePkr9dhRSmUHIjr0ckeS1GfwGz6ehi0IztEi7YH2pEekk
 a/h+1zthdJaZw==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1lPSC4-001FYj-3B; Thu, 25 Mar 2021 16:46:44 +0100
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
Subject: [PATCH v5 0/7] Move Hisilicon 6421v600 SPMI and USB drivers out of
 staging
Date: Thu, 25 Mar 2021 16:46:34 +0100
Message-Id: <cover.1616686958.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210325_154651_297215_81231B6E 
X-CRM114-Status: GOOD (  15.29  )
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
  
  spmi: hisi-spmi-controller: move driver from staging
  mfd: hi6421-spmi-pmic: move driver from staging
  regulator: hi6421v600-regulator: move it from staging
  dts: hisilicon: add support for the PMIC found on Hikey 970
  dts: hisilicon: add support for USB3 on Hikey 970

 .../mfd}/hisilicon,hi6421-spmi-pmic.yaml      |   0
 .../bindings/phy/hisilicon,hi3670-usb3.yaml   |   0
 .../spmi}/hisilicon,hisi-spmi-controller.yaml |  18 +--
 MAINTAINERS                                   |  23 +++-
 .../boot/dts/hisilicon/hi3670-hikey970.dts    | 124 +++++++++++++++---
 arch/arm64/boot/dts/hisilicon/hi3670.dtsi     |  58 ++++++++
 .../boot/dts/hisilicon/hikey970-pmic.dtsi     |  87 ++++++++++++
 drivers/mfd/Kconfig                           |  16 +++
 drivers/mfd/Makefile                          |   1 +
 .../hikey9xx => mfd}/hi6421-spmi-pmic.c       |   0
 drivers/phy/hisilicon/Kconfig                 |  10 ++
 drivers/phy/hisilicon/Makefile                |   1 +
 .../hisilicon}/phy-hi3670-usb3.c              |   0
 drivers/regulator/Kconfig                     |   9 ++
 drivers/regulator/Makefile                    |   1 +
 .../hi6421v600-regulator.c                    |   0
 drivers/spmi/Kconfig                          |   9 ++
 drivers/spmi/Makefile                         |   1 +
 .../hikey9xx => spmi}/hisi-spmi-controller.c  |   0
 drivers/staging/Kconfig                       |   2 -
 drivers/staging/Makefile                      |   1 -
 drivers/staging/hikey9xx/Kconfig              |  52 --------
 drivers/staging/hikey9xx/Makefile             |   7 -
 drivers/staging/hikey9xx/TODO                 |   5 -
 24 files changed, 327 insertions(+), 98 deletions(-)
 rename {drivers/staging/hikey9xx => Documentation/devicetree/bindings/mfd}/hisilicon,hi6421-spmi-pmic.yaml (100%)
 rename drivers/staging/hikey9xx/phy-hi3670-usb3.yaml => Documentation/devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml (100%)
 rename {drivers/staging/hikey9xx => Documentation/devicetree/bindings/spmi}/hisilicon,hisi-spmi-controller.yaml (89%)
 create mode 100644 arch/arm64/boot/dts/hisilicon/hikey970-pmic.dtsi
 rename drivers/{staging/hikey9xx => mfd}/hi6421-spmi-pmic.c (100%)
 rename drivers/{staging/hikey9xx => phy/hisilicon}/phy-hi3670-usb3.c (100%)
 rename drivers/{staging/hikey9xx => regulator}/hi6421v600-regulator.c (100%)
 rename drivers/{staging/hikey9xx => spmi}/hisi-spmi-controller.c (100%)
 delete mode 100644 drivers/staging/hikey9xx/Kconfig
 delete mode 100644 drivers/staging/hikey9xx/Makefile
 delete mode 100644 drivers/staging/hikey9xx/TODO

-- 
2.30.2



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
