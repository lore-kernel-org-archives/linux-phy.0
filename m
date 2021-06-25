Return-Path: <SRS0=Mo6n=LT=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4EC1C49EA7
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jun 2021 08:10:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 77ED86141E
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jun 2021 08:10:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 77ED86141E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/CAYKCkjGA5P5Y5Rpxg4V5kIJrJuMYthxWTQoCREWfQ=; b=RAxbzuS6mn7jFF
	3D3VUD0DVKdcxA/UK6ihkI7HqROrLYQac6z+pyJLSGeC47k9TMqSrC50NMyuyR9bGZ9kHwEyplkvc
	8LP4ef3pmvCr03hdqI1wE6Fzkzb9Iseb+H0p33QeJKQbs4t1d8vNRPfVAYn2HgZJMq/yZ79cPFyY4
	Mo6C7lRiwl7dkuqWX+tpiRy9EDKqppwMY/VNrwmM9UDIuf8rYJ7Gy+yVntPaFE6Xi5IR5TCGc/6Ku
	ruTpCzJ/u881lZNg103+oqfUrOBe36irjY/k5lfBDKCb40KZEomFUbk9XF6VttSYojQpI5cvFdacp
	bEljasIlbB2o5qZqK6jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwgub-000DzI-GA; Fri, 25 Jun 2021 08:10:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwgXV-0006fC-AR; Fri, 25 Jun 2021 07:46:17 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 61BC36142C;
 Fri, 25 Jun 2021 07:46:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1624607172;
 bh=X3wjcU/BQy8GCBDaVQvj+55WHVFoAZZ33UGx75kbwJk=;
 h=From:To:Cc:Subject:Date:From;
 b=qKn6xupDGpi5uOfK3/Mtp2T6dIsoq6mEtDq51n6UcNUlAKY+CxtsdA4iYyBL+Mfcd
 FTNlTFujDZHcFe62YNxMbwBQAlw79SeO1kNngqVmkz+OyUS1eYuFPAOl3otu6pz67b
 D1MrKq6yW7tUQxI/gKedEMEZZTJ+HwpKibJQjCP7RsoWXlbsuK04XHrhysdKzLOqwJ
 t1z+/dyiFasHf2eIOHL/tYAugpKDS0fEJ8A2skEPjrdOfh/IYFWm7IfIOAkZ5ej9OA
 OeJaIREv91wiwye9nsCotmdr6J+M/MM7AtgfN3kSvURH0Sp/sFsC3HQox4bURnDeRx
 HB2ovOP7KjDQA==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1lwgXS-004ae2-7T; Fri, 25 Jun 2021 09:46:10 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-usb@vger.kernel.org
Subject: [PATCH v8 00/12] Move Hisilicon 6421v600 SPMI and USB drivers out of
 staging
Date: Fri, 25 Jun 2021 09:45:52 +0200
Message-Id: <cover.1624606660.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_004613_756315_71D0A6C7 
X-CRM114-Status: GOOD (  17.28  )
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

Thanks for merging patches 1 and 2 from the v7 series!

Those are the remaining patches that are needed for the USB to work
with Hikey970.

I guess patches 1 and 2 on this series are also OK, as they were acked
by the PHY and SPMI maintainers.

As suggested on your last review, I broke the MFD staging patches 
into one logical change per patch.

Except for the split, the only change from v7 was at the copyright: 
I'm using 20xx-2021 instead of 20xx- to indicate that the copyrights
extend to the present. I also changed the HiSilicon name to better
reflect the name of the company.

Mauro Carvalho Chehab (12):
  phy: phy-hi3670-usb3: move driver from staging into phy
  spmi: hisi-spmi-controller: move driver from staging
  staging: hisilicon,hi6421-spmi-pmic.yaml: cleanup descriptions
  staging: hi6421-spmi-pmic: update copyright's year
  staging: hi6421-spmi-pmic: use devm_request_threaded_irq()
  staging: hi6421-spmi-pmic: better name IRQs
  staging: hi6421-spmi-pmic: change a return code
  staging: hi6421-spmi-pmic: change identation of a table
  staging: hi6421-spmi-pmic: cleanup some macros
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
 drivers/mfd/hi6421-spmi-pmic.c                | 311 ++++++++
 drivers/phy/hisilicon/Kconfig                 |  10 +
 drivers/phy/hisilicon/Makefile                |   1 +
 drivers/phy/hisilicon/phy-hi3670-usb3.c       | 661 ++++++++++++++++++
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
 .../hisilicon,hisi-spmi-controller.yaml       |  73 --
 drivers/staging/hikey9xx/phy-hi3670-usb3.c    | 661 ------------------
 drivers/staging/hikey9xx/phy-hi3670-usb3.yaml |  73 --
 27 files changed, 1932 insertions(+), 1681 deletions(-)
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
