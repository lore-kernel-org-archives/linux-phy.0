Return-Path: <SRS0=UgvN=LS=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A412C49EA5
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jun 2021 09:03:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 21213613E3
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jun 2021 09:03:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 21213613E3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nYK47mNSxzrNVNyKIQj5H78zq9LmASM8vAEQF/CxyFA=; b=ZBevc9dU+4y0kq
	ntnALRUKWEWlZGvHw5ul6t2eaiQ+g+sRTgERl66J3wZBiAkmyNjTaB+9l7BWdOYFBEK8VdzMDlfIA
	Ye8FwZ4/0qjZXnU6qqvUPLZrVkRxsv4O0M5jKD1+26/xqvioSzFv1p7IlDxsLqcgOrt+dxMFjXItJ
	4jCReZwZ5dZjQEC6VlESRYh0F1qb1VZwYRLTCC9XgZscDYIb/fH1PPFF6UKNROuJU4gBQdcaxRgTd
	nfgFHt688n4xWuyTFG2MecKN/HpFTRA/lTFveDSVE6W48atMmgIiIoNMha/eOEWhE7iLYo+y501z8
	NLtJONR87wIcgDRpBTbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwLGf-00Dcda-It; Thu, 24 Jun 2021 09:03:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwLG9-00DcP2-SM; Thu, 24 Jun 2021 09:02:55 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6ABAB613E7;
 Thu, 24 Jun 2021 09:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1624525373;
 bh=RipF1Knz8sFbeKctWLgXvVEeh2TWOKZIJX2SkI+qPeU=;
 h=From:To:Cc:Subject:Date:From;
 b=Q6hNVazeCbQy28r3AP/zzpTWruHs/ILDY2lgizCZQeP/E4++FWZbBqXPDEILM3zS4
 yt0vsfRBLEl+o4VyPwZOnFcVmKjmyEixhOmsh48da1SCfA3dSx9WjaAjOjYQO+GRS2
 Smtt60K/Ag7/fc1TLCuyv/olY2CuezkfhrcBe9302LT14ABA0IW29FxXxWi73ciLui
 Go9DkUHH8m+bHJeIceRtpEu5ehmlzWsDLyNk+hMnEHP+1CTighcE6Ui12ymfYynAbB
 q41eqFLHBBAdEyydOajM98AV6a3An+wTxR42m4HblTLXq8ukQFDY8wfC0ceZwYe7LX
 HsxS5EWgGQjuQ==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1lwLG6-003jrn-LG; Thu, 24 Jun 2021 11:02:50 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-usb@vger.kernel.org
Subject: [PATCH RESEND v6 0/8] Move Hisilicon 6421v600 SPMI and USB drivers
 out of staging
Date: Thu, 24 Jun 2021 11:01:04 +0200
Message-Id: <cover.1624525118.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_020254_030571_E305D7E8 
X-CRM114-Status: GOOD (  17.46  )
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

Notes:
   1. Patch resent with --no-renames, in order to show the full code when
      moving the code out of staging (on this RESEND);

   2. the previous series is at:
      https://lore.kernel.org/lkml/cover.1616695231.git.mchehab+huawei@kernel.org/

Hi Greg,

Those are the remaining patches that are needed for the USB to work
with Hikey970.

This series address the comments made on v5. Sorry for taking so long to
return back on this. Got sidetracked by other unrelated stuff.

Changes from v5:

- Some changes at DT to comply with Rob Herring's feedback;
- a couple of cleanups at the phy-hi3670-usb3;
- Vinod's ack added to patch 4;
- Several cleanups at hi6421-spmi-pmic.c, in order to address
  Lee Jones feedbacks.

On this series, I opted to keep using "gpios" for the DT IRQ gpios needed
by the PMIC driver, as this is the string expected by of_get_gpio(), and
it is the most common pattern for IRQ gpios. If required, I'll send a
followup patch changing it to use, instead, the of_get_named_gpio_flags()
variant.


Mauro Carvalho Chehab (8):
  staging: phy-hi3670-usb3: do a some minor cleanups
  staging: hisi-spmi-controller: rename spmi-channel property
  staging: phy-hi3670-usb3: do some additional cleanups
  phy: phy-hi3670-usb3: move driver from staging into phy
  spmi: hisi-spmi-controller: move driver from staging
  mfd: hi6421-spmi-pmic: move driver from staging
  dts: hisilicon: add support for the PMIC found on Hikey 970
  dts: hisilicon: add support for USB3 on Hikey 970

 .../mfd/hisilicon,hi6421-spmi-pmic.yaml       | 134 ++++
 .../bindings/phy/hisilicon,hi3670-usb3.yaml   |  73 ++
 .../spmi/hisilicon,hisi-spmi-controller.yaml  |  73 ++
 MAINTAINERS                                   |  23 +-
 .../boot/dts/hisilicon/hi3670-hikey970.dts    | 129 +++-
 arch/arm64/boot/dts/hisilicon/hi3670.dtsi     |  56 ++
 .../boot/dts/hisilicon/hikey970-pmic.dtsi     |  87 +++
 drivers/mfd/Kconfig                           |  16 +
 drivers/mfd/Makefile                          |   1 +
 drivers/mfd/hi6421-spmi-pmic.c                | 316 +++++++++
 drivers/phy/hisilicon/Kconfig                 |  10 +
 drivers/phy/hisilicon/Makefile                |   1 +
 drivers/phy/hisilicon/phy-hi3670-usb3.c       | 661 +++++++++++++++++
 drivers/spmi/Kconfig                          |   9 +
 drivers/spmi/Makefile                         |   1 +
 drivers/spmi/hisi-spmi-controller.c           | 367 ++++++++++
 drivers/staging/Kconfig                       |   2 -
 drivers/staging/Makefile                      |   1 -
 drivers/staging/hikey9xx/Kconfig              |  41 --
 drivers/staging/hikey9xx/Makefile             |   6 -
 drivers/staging/hikey9xx/TODO                 |   5 -
 drivers/staging/hikey9xx/hi6421-spmi-pmic.c   | 297 --------
 .../staging/hikey9xx/hisi-spmi-controller.c   | 367 ----------
 .../hikey9xx/hisilicon,hi6421-spmi-pmic.yaml  | 135 ----
 .../hisilicon,hisi-spmi-controller.yaml       |  71 --
 drivers/staging/hikey9xx/phy-hi3670-usb3.c    | 668 ------------------
 drivers/staging/hikey9xx/phy-hi3670-usb3.yaml |  73 --
 27 files changed, 1937 insertions(+), 1686 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml
 create mode 100644 Documentation/devicetree/bindings/spmi/hisilicon,hisi-spmi-controller.yaml
 create mode 100644 arch/arm64/boot/dts/hisilicon/hikey970-pmic.dtsi
 create mode 100644 drivers/mfd/hi6421-spmi-pmic.c
 create mode 100644 drivers/phy/hisilicon/phy-hi3670-usb3.c
 create mode 100644 drivers/spmi/hisi-spmi-controller.c
 delete mode 100644 drivers/staging/hikey9xx/Kconfig
 delete mode 100644 drivers/staging/hikey9xx/Makefile
 delete mode 100644 drivers/staging/hikey9xx/TODO
 delete mode 100644 drivers/staging/hikey9xx/hi6421-spmi-pmic.c
 delete mode 100644 drivers/staging/hikey9xx/hisi-spmi-controller.c
 delete mode 100644 drivers/staging/hikey9xx/hisilicon,hi6421-spmi-pmic.yaml
 delete mode 100644 drivers/staging/hikey9xx/hisilicon,hisi-spmi-controller.yaml
 delete mode 100644 drivers/staging/hikey9xx/phy-hi3670-usb3.c
 delete mode 100644 drivers/staging/hikey9xx/phy-hi3670-usb3.yaml

-- 
2.31.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
