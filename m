Return-Path: <SRS0=+yjZ=L6=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6303C07E96
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jul 2021 12:23:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 683196221E
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jul 2021 12:23:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 683196221E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aSpxD82zJvxvqpVTPJAUhWePnKP+ohjFi6iP/LNQtbc=; b=S1mqoHuLDfPeZr
	agTv4tPSQopd/TDyX4LsqpIrtJFSj+b9wJdTtpM1vV75dbXqRL9NyWYTucw/ZAt1/1rGH0BuG6W8e
	AO0zWkyQY6yX+ZnzpBObESRB5eSXK7sTCLUOzBcDzXo60K6aiR3DmMeyvMoJ4wVuFa6XfdK6xO03c
	QGa/iCCTFOeOsHq7gQGxcBGs7iQom6Qyt/9EgMOvfbyngq0v+vrFF52lKXfjcX0HwBfhYdwHyk7mo
	RiGMJC1Qw9SdLbcUAe2NKHyVAXO1ZOTXle+60uE9qquwTyiTnEXtGtHpnKDN4Psdh54n8kerU75hb
	Z4Q7fRV/NVnNMN2uH3aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0k6q-00Bjrf-VT; Tue, 06 Jul 2021 12:23:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0k6Y-00Bjom-OB; Tue, 06 Jul 2021 12:23:17 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6324C622E9;
 Tue,  6 Jul 2021 12:23:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1625574190;
 bh=wz4Bic0LSPWmrCj80ELZl2dM0eChPNGuIIo785wRWDw=;
 h=From:To:Cc:Subject:Date:From;
 b=RXfwtOXbimz822euPvZ9jCYUkxtuTtUsicRgUhnDJ/VlBQFDfty6hxF87aW0Tf7Gw
 GgGsvbXHPxBQEvWzc8021HYoSBJtcFtAb5OFuSaAoLGiXufB3IvOMxM+nB0XjcaOmp
 9xXfYA4uRF+lH6MrDeL61na0vPyl0XK4/M7JtpLfFXatgY3SEQazITSz3eIIOs5sl8
 qf/jyDqkE80a6QyL7LYofiV53/f5dtV187FLgxktsjIZoDR0KeCedMK0FTJI4AvP6F
 Ps08ZgTnkwu4i9cDTGQCS7wWg5O2t0IEY3XHI8wkafg3uVgoRYh+n8VC8SJltZ0GXM
 4sACa0d+6YT6Q==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1m0k6W-004qMk-4w; Tue, 06 Jul 2021 14:23:08 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Binghui Wang <wangbinghui@hisilicon.com>,
 Xiaowei Song <songxiaowei@hisilicon.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH RFC 0/1] Move PHY out of pcie-kirin driver
Date: Tue,  6 Jul 2021 14:23:05 +0200
Message-Id: <cover.1625573452.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210706_052311_673880_603D3901 
X-CRM114-Status: GOOD (  13.84  )
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

During the review of the Kirin 970 PCIe patch series, it was pointed that
the pcie-kirin driver has PHY logic mixed inside it:

   https://lore.kernel.org/lkml/CAL_JsqK7_hAw4aacHyiqJWE6zSWiMez5695+deaCSHfeWuX-XA@mail.gmail.com/

Probably due to that, support for those devices weren't added 
upstream.

Before trying to re-send it again, let's split the existing PHY code
for Kirin 960 (Hisi3660) from the driver.

Please notice that this change will alter the device tree, as a new PHY
descriptor will be needed, and the PHY properties from the pcie nodes
will need to switch.

This patch doesn't change the documentation yet, but it does change
the DTS file. If this change is OK, I'll resend this patch together with
the documentation changes.

Tested on a Hikey 960. After the patch, the PCI bridge is properly
displayed:

	$ lspci
	00:00.0 PCI bridge: Huawei Technologies Co., Ltd. Device 3660 (rev 01)

Unfortunately, currently I can't test if the bridge is working as this
bridge supports only non-SATA M.2 devices.  I'm acquiring one for
tests, but it will take a couple weeks to arrive.

Mauro Carvalho Chehab (1):
  PCI: dwc: pcie-kirin: split PHY interface from the driver

 arch/arm64/boot/dts/hisilicon/hi3660.dtsi |  24 +-
 drivers/pci/controller/dwc/pcie-kirin.c   | 195 +++-------------
 drivers/phy/hisilicon/Kconfig             |  10 +
 drivers/phy/hisilicon/Makefile            |   1 +
 drivers/phy/hisilicon/phy-hi3660-pcie.c   | 261 ++++++++++++++++++++++
 5 files changed, 321 insertions(+), 170 deletions(-)
 create mode 100644 drivers/phy/hisilicon/phy-hi3660-pcie.c

-- 
2.31.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
