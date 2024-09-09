Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B336BECE579
	for <linux-phy@archiver.kernel.org>; Mon,  9 Sep 2024 15:18:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:MIME-Version:Message-ID:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8OIrssgzXsYUG6kN9H32cZKITecWv1NA+l7I2YDvedY=; b=yIimGru7GL0oBi
	3yGU97ua9MtPT4tJPmgZEbG1Egu12oQ05mrPJ9rMvvbiwdjEMv9qFvDh07/6AP4XesiKy61wRDvjh
	e4TU0c5ltFXeXCP8ej22qMC2BIXegxncno93i/CjIM8Z64HPSNVvLsM/h9hV7wCmS2HLxEh2d7tdk
	6rI1vlaK+kRSiukfZmeN1a56q/a6I2ZlpAOwo9hKxsSl5cq6NUB+pLS9MENxLHZ2hNnoA9xOSqRvQ
	90RdnpEOUPgIM6hhpLgVZL2X4ZpsPfteZQpL9XdDLslquohSpcpxqXkcRRMrlRsM9hIv2YD4WcCNq
	PLyJ4Q51/SVYMP0L4iVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sng9j-00000002R1Q-1ppx;
	Mon, 09 Sep 2024 15:18:19 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sng6s-00000002QCZ-1ZOm;
	Mon, 09 Sep 2024 15:15:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1725894922; x=1757430922;
  h=from:subject:date:message-id:mime-version:
   content-transfer-encoding:to:cc;
  bh=7eBDbIZBoCNdgrtkB2Ysz8rn1Ya0WQpeA0tUMqyjFIg=;
  b=cs9qV1fXyczDsAn7EpX42DWwuVE1knwIqj/B8OnAg+AxlRyCF94B1+rk
   TkWuFi0ZJTLX1b3n4HwZROCDJQCoeH7dO2TQPkQXEgOQvnUi0tRnjeXyD
   +suhHylim12vAzAZyhrBLP+L5kp1X66GxoZVzK+F+LavZIK+KVCFClaGB
   xl67/RJ8TuZyjAj6gx5KRrXii+wTUhLDUy1mGDT2zS6iNQxkvbXp6NQxQ
   s4TxNI8Fou5dLReXKO0zJJ+LGMmNWPxeyi1UboCVIiq3ZvCTmMF2p2kb+
   ybiWqf+/FIoyNnoJl1QcXMqxNZxbUmB51o3D3tsOE9yH0ZMcJJn1HTiDa
   A==;
X-CSE-ConnectionGUID: /ltMKKTeRqSXWxXLFfJz/g==
X-CSE-MsgGUID: FiYGY5+RRX+z7Dxmn8NWFw==
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; 
   d="scan'208";a="31514493"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa3.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 09 Sep 2024 08:15:21 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 9 Sep 2024 08:14:54 -0700
Received: from DEN-DL-M70577.microchip.com (10.10.85.11) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.2507.35 via Frontend Transport; Mon, 9 Sep 2024 08:14:52 -0700
From: Daniel Machon <daniel.machon@microchip.com>
Subject: [PATCH v2 0/9] phy: sparx5-serdes: add support for lan969x serdes
 driver
Date: Mon, 9 Sep 2024 17:14:40 +0200
Message-ID: <20240909-sparx5-lan969x-serdes-driver-v2-0-d695bcb57b84@microchip.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAOAQ32YC/32OQQ7CIBREr2JY+w2lLQFX3sN0QQHlJxaajyE1T
 e8urXuXL5l5MyvLntBndj2tjHzBjClWEOcTs8HEpwd0lZngouNKCMizoaWHl4la6gVq3fkMjrB
 4AtUq7UbntFGaVcVM/oHLob8PlUeTPYxkog27dDIY91jA/E70OU6UZg//9jSX//dKAxyUky2XT
 Wd7ZW4TWko24HyxaWLDtm1fMOtkyOMAAAA=
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
	Lars Povlsen <lars.povlsen@microchip.com>, Steen Hegelund
	<Steen.Hegelund@microchip.com>, <UNGLinuxDriver@microchip.com>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>
CC: <linux-phy@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
X-Mailer: b4 0.14-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_081522_583565_96446151 
X-CRM114-Status: GOOD (  11.56  )
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

The lan969x switch chip (upstreaming efforts beginning soon) has ten 10G
SERDES'es which share the same features and data rates as the Sparx5 10G
SERDES'es. Lets take advantage of this and reuse the existing SERDES
driver for lan969x.

In order to do this, we add a new indirection layer to the register
macros, that takes register differences into account. Additionally, we
add driver match data for other differences that we need to handle.
These other differences are handled by a combination of constants (eg.
the number of SERDES'es), ops and if's

Patch #1 adds support for match data.

Patch #2 adds a struct to handle constants and adds a constant for the
number of SERDES'es.

Patch #3 adds a constant for the number of CMU's

Patch #4 adds a struct for ops and adds a function for setting SERDES
type.

Patch #5 adds a function for getting the number of CMU's.

Patch #6 adds register macro indirection layer.

Patch #7 adds SERDES target types (eg. Sparx5, lan969x) to be used for
branching out based on the target.

Patch #8 adds support for lan969x in the Sparx5 dt-bindings.

Patch #9 introduces the new lan969x SERDES driver.

Signed-off-by: Daniel Machon <daniel.machon@microchip.com>
---
Changes in v2:
- Changed the subject and commit description.
- Added compatible strings for all lan969x SKU's in the dt-bindings.
- Got rid of example in dt-bindings.
- Added new compatible string: lan9691-serdes to driver.
- Link to v1: https://lore.kernel.org/r/20240906-sparx5-lan969x-serdes-driver-v1-0-8d630614c58a@microchip.com

---
Daniel Machon (9):
      phy: sparx5-serdes: add support for private match data
      phy: sparx5-serdes: add constants to match data
      phy: sparx5-serdes: add constant for the number of CMU's
      phy: sparx5-serdes: add ops to match data
      phy: sparx5-serdes: add function for getting the CMU index
      phy: sparx5-serdes: add indirection layer to register macros
      phy: sparx5-serdes: add support for branching on chip type
      dt-bindings: phy: sparx5: document lan969x
      phy: lan969x-serdes: add support for lan969x serdes driver

 .../bindings/phy/microchip,sparx5-serdes.yaml      |  17 +-
 drivers/phy/microchip/sparx5_serdes.c              | 195 +++++-
 drivers/phy/microchip/sparx5_serdes.h              |  44 +-
 drivers/phy/microchip/sparx5_serdes_regs.h         | 746 ++++++++++++++-------
 4 files changed, 706 insertions(+), 296 deletions(-)
---
base-commit: 221f9cce949ac8042f65b71ed1fde13b99073256
change-id: 20240822-sparx5-lan969x-serdes-driver-8389dbdd9a89

Best regards,
-- 
Daniel Machon <daniel.machon@microchip.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
