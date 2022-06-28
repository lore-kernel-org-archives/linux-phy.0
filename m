Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7A58C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jun 2022 12:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4cu3OlHlLZA6X4Q2VpCn2LZGxrat9E44z0hL8rggubw=; b=A0B4SPKq9QmgG3
	XHuKzQdOrzkt07oR8QGgK78LDq67afzAmikK0lPWsJbmRXZsGO8dKnZ5DfXRXIBfn8l7o+gHw9qf+
	WLxNlxvk+yhWWe12jvWtHwiwUqMfjqOwyE339Epjg7cGSGLGYtVJAv9WRsmxcXYEXiK+s9/BmZ3iY
	IwftFJyrFEfDRG9bSstkf04Fi2f2IawSNvZ970gfmB2uP94n93XwUhTwThMp5wCER9M/snVA3IPsx
	0QZc9lpnu35gIMZS8y/HqZVd2cgIG8JpZkRrRcQsqwqjLgGCnO431QbK63sCTFMXhqfKc+W0bixpU
	J2PXXm7+DjJQCoEE2EAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6AFO-0069WE-9F; Tue, 28 Jun 2022 12:23:14 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6AFL-0069VC-Of
	for linux-phy@lists.infradead.org; Tue, 28 Jun 2022 12:23:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2468460FC7;
	Tue, 28 Jun 2022 12:23:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25DFEC3411D;
	Tue, 28 Jun 2022 12:23:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1656418990;
	bh=rEXIp99qfQP4RlG//sn4CD2PHI+woj98TshooNb5NZQ=;
	h=From:To:Cc:Subject:Date:From;
	b=muvApXaNZ5aCqcwN6Nuwpr6dc1BUN1WCsu4N+QxeVkNWY7ucg7YLJrawG5aNQ+MY+
	 SPRaVVaPnC1680P47Y64jMPzvA61172b/aYSuHiyGgpxE47aOm3/V5rcsV2eWZ/lNZ
	 naeZTVE9U6dLTxhMa/jy3oIl4DTlCt5lo6VSvokWlG1pyVALNMEVT5oyH1gneP+6Tx
	 dK1cBuSx5dkRnOBdZx2KPBKD6u3bDPqgweevzGrtLKFjnBQ84s8gpxFj2z5S1G4sw3
	 H/69+tG54Y0bm4l/lAcDnx+0M5nMyPpbD/REnKTqxVEIx6T6wkoEMZrP9PH+3addGq
	 Cp4WnAt1HwkGg==
From: Roger Quadros <rogerq@kernel.org>
To: kishon@ti.com,
	vkoul@kernel.org
Cc: vigneshr@ti.com,
	t-patil@ti.com,
	sjakhade@cadence.com,
	s-vadapalli@ti.com,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Roger Quadros <rogerq@kernel.org>
Subject: [PATCH 0/7] phy: ti: phy-j721e-wiz: Add support for j7200-wiz-10g
Date: Tue, 28 Jun 2022 15:22:48 +0300
Message-Id: <20220628122255.24265-1-rogerq@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_052311_880178_EA387868 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi,

The SERDES in J7200 SR2.0 supports 2 reference clocks.
The second reference clock (core_ref1_clk) is hardwired to
MAIN_PLL3_HSDIV4_CLKOUT (100/125/156.25 MHz).

Add a new compatible "j7200-wiz-10g" for this device.

The external clocks to SERDES PLL refclock mapping is now
controlled by a special register in System Control Module
(SCM) space. Add a property "ti,scm" to reference it and
configure it in the driver.

cheers,
-roger

Roger Quadros (4):
  dt-bindings: phy: ti,phy-j721e-wiz: deprecate clock MUX nodes
  dt-bindings: phy: ti,phy-j721e-wiz: Add support for ti,j7200-wiz-10g
  phy: ti: phy-j721e-wiz: add support for j7200-wiz-10g
  phy: ti: phy-j721e-wiz: set PMA_CMN_REFCLK_DIG_DIV based on reflk rate

Siddharth Vadapalli (1):
  phy: ti: phy-j721e-wiz: Add SGMII support in wiz driver for J7200

Swapnil Jakhade (1):
  dt-bindings: phy: Add PHY_TYPE_USXGMII definition

Tanmay Patil (1):
  phy: ti: phy-j721e-wiz.c: Add usxgmii support in wiz driver

 .../bindings/phy/ti,phy-j721e-wiz.yaml        |  24 +-
 drivers/phy/ti/phy-j721e-wiz.c                | 230 ++++++++++++++++--
 include/dt-bindings/phy/phy.h                 |   1 +
 3 files changed, 239 insertions(+), 16 deletions(-)

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
