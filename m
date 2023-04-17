Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4E56C77B7A
	for <linux-phy@archiver.kernel.org>; Mon, 17 Apr 2023 18:03:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=susXeHD6AwWl6QoWA4Lh88ezkYM2UaGTaV6X001MAdE=; b=kdRwGKoPwS2Vfz
	Nda74PW31aryo6nKSuXEOIl1VT1d9XQTD3LYvTQcQcFkJDfyoFG45GlYSwDW9dFVVCuy6IooeKci1
	kAmgZXMqr/2QIIa7z5pLYr4oYZ6b0hPD0X2L7AG5wPgAUZeYcXsW+lAGMItknuAh6QUw1jZbNfUJH
	ioop7Uoo7T+vXLoEsHViATPXdbYqcCarT/mMopNfRN7+ljC7uW/By8Cq+JPxa9UMa8vU9+S3i235V
	0JBQV1T5G5fGAVu0eJdWUR3qAyEp7sqHUcV5FkDhpfaDC7d+P3los6JUAo0roMgOIDsPMxLuESyeE
	bAdvgdct/4gVFM9j3ATQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poTCg-00HFwI-1D;
	Mon, 17 Apr 2023 18:03:50 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poTCb-00HFuZ-2e;
	Mon, 17 Apr 2023 18:03:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1681754625; x=1713290625;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=9e21tFRFiV9+9wH7e2y0RyrvY6ylThwIDqV0ywj2WJU=;
  b=EJUFrK936bmNreRfHAWwH3SB5bxpKRBOhpJt3dJYDkjLI1CM8ts79b4I
   lJJJTJPzoHE+GkDK0s2M01c//sg/1gBUfY42cJu8uYh77O4PnayuJCwC1
   oBqDMUFgZDDDAYkWNWte7D7vtPxA8FSrfEg0PaB3ZHDpXBeoDXZWCBf4P
   tC4Sce35gokeE/RviD91RUkXGY9JuPJbPEDjxhGlfuy5TCFUSVevX2hgH
   Db/N4t/KNfW0P7JuIVMLrOa2mFVxwmMtyyejswHQhbh6yFksH/MXlWJ2N
   gUduD9Tr9ihxkq+iWXxgQX+f8rAru47t+T/Z0zgAgYjdETp0ZnSOS+2tK
   A==;
X-IronPort-AV: E=Sophos;i="5.99,204,1677567600"; 
   d="scan'208";a="221268893"
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 17 Apr 2023 11:03:42 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 17 Apr 2023 11:03:42 -0700
Received: from DEN-LT-70577.microchip.com (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.2507.21 via Frontend Transport; Mon, 17 Apr 2023 11:03:40 -0700
From: Daniel Machon <daniel.machon@microchip.com>
To: <vkoul@kernel.org>
CC: <kishon@kernel.org>, <Steen.Hegelund@microchip.com>,
	<daniel.machon@microchip.com>, <UNGLinuxDriver@microchip.com>,
	<joe@perches.com>, <linux-phy@lists.infradead.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 0/7] Power down serdes lanes and CMUs initially
Date: Mon, 17 Apr 2023 20:03:28 +0200
Message-ID: <20230417180335.2787494-1-daniel.machon@microchip.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_110345_909727_D871DBDC 
X-CRM114-Status: UNSURE (   7.85  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

This patch series aims to lower the power consumption of the Sparx5
switch chip, by configuring optimal quiet mode for serdes lanes, as well
as powering down unused CMUs (Clock Multiplier Unit). Before this series,
serdes lane quiet mode were not optimally configured, and all the CMUs were
powered on by default. This uses needless power.

Each serdes lane is provided a CMU clock, depending on the serdes mode
and the serdes index. CMUs will now be powered on individually, when
needed. The amount of power saved varies, depending on the port
configuration. As a reference, this change saves about 1W on
sparx5_pcb135 and 2W on sparx5_pcb134.

Patch #1: Adds the required registers.
Patch #2: Configures optimal quiet mode for all serdes lanes.
Patch #3: Reorders CMU functions.
Patch #4: Configures CMUs to be powered down by default.

Patch #5: Adds the serdes mode and index to CMU index map, and configures the
          individual CMU when the corresponding serdes lane is configured.

Patch #6: Removes the code that unconditionally powered on all CMUs
Patch #7: Adds a check that serdesmode is not unset when a CMU is configured.

Daniel Machon (7):
  phy: sparx5-serdes: add registers required for SD/CMU power down
  phy: sparx5-serdes: configure optimal qiet mode for serdes lanes
  phy: sparx5-serdes: reorder CMU functions
  phy: sparx5-serdes: power down all CMUs by default
  phy: sparx5-serdes: power on CMUs individually
  phy: sparx5-serdes: remove power up of all CMUs
  phy: sparx5-serdes: do not reconfigure serdes if serdesmode is unset

 drivers/phy/microchip/sparx5_serdes.c      | 426 +++++++++++++--------
 drivers/phy/microchip/sparx5_serdes.h      |   1 -
 drivers/phy/microchip/sparx5_serdes_regs.h | 106 +++++
 3 files changed, 370 insertions(+), 163 deletions(-)

--
2.34.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
