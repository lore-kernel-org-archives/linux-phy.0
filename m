Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E81F8C433FE
	for <linux-phy@archiver.kernel.org>; Tue,  8 Nov 2022 00:55:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wQaZGuNC+DuBYq+D+u3VwslP3Eq6jCH1gt531Mnahf0=; b=qIVcsH2QWorxnu
	LUfDM/pgWlq3+moI4YnifzzmaFPNGZfAqZKqp+SHtQ/X5BgFCShIQdA19HSc8Oykz+NyhlqCwm4fG
	456/O3hWtv8tyG4lvSK1FspG4bCzO5tDrj3FIZju+RyOikyNfndG9s+6l7oyPmKBNt+pT/5gumP8T
	6PhdnyfXZ6qwnWKHR6b0s9J3AxLAdg6qdT6DH9SeJ99idC/2YbLN032h57hoGawqJOhztzuw14XLa
	yxaqMfYABfoVtMfJn24adrLTwdYWdEUGRbQrg1Z+0SoMcIax1cGgehLQvpdICumo3VqDEypNxUKrd
	tk6+Ss8NK8SWfc2fcsBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osCtk-001fUi-3n; Tue, 08 Nov 2022 00:55:28 +0000
Received: from relmlor1.renesas.com ([210.160.252.171] helo=relmlie5.idc.renesas.com)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osCth-001fSv-7C
	for linux-phy@lists.infradead.org; Tue, 08 Nov 2022 00:55:27 +0000
X-IronPort-AV: E=Sophos;i="5.96,145,1665414000"; 
   d="scan'208";a="139278947"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
  by relmlie5.idc.renesas.com with ESMTP; 08 Nov 2022 09:55:21 +0900
Received: from localhost.localdomain (unknown [10.166.15.32])
	by relmlir6.idc.renesas.com (Postfix) with ESMTP id 0E2374157802;
	Tue,  8 Nov 2022 09:55:21 +0900 (JST)
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Subject: [PATCH v4 0/2] phy: renesas: Add Renesas Ethernet SERDES driver for R-Car S4-8
Date: Tue,  8 Nov 2022 09:54:58 +0900
Message-Id: <20221108005500.3011449-1-yoshihiro.shimoda.uh@renesas.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_165525_385353_118F36F7 
X-CRM114-Status: UNSURE (   9.55  )
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

This patch series is based on next-20221104.
Add support for R-Car S4-8 Etherent SERDES as a Generic PHY.

Changes from v3:
https://lore.kernel.org/all/20221027134006.2343164-1-yoshihiro.shimoda.uh@renesas.com/
 - Rebased on next-20221104.
 - Add Reviewed-by in the patch [1/2].
 - Sorted config names alphabetically in the Kconfig of patch [2/2].
 - Use dev_dbg() instead of pr_debug() in the patch [2/2].

Changes from v2:
https://lore.kernel.org/all/20221019083449.933005-1-yoshihiro.shimoda.uh@renesas.com/
 - Rebased on next-20221027.
 - Fix examples on the dt-bindings doc.
 - Remove unneeded variable in r8a779f0_eth_serdes_probe().

Changes from v1:
https://lore.kernel.org/all/20220922051645.3442321-1-yoshihiro.shimoda.uh@renesas.com/
 - Rebased on next-20221017.
 - Rename the dt-binding file.
 - Fix the node name of examples.
 - Fix Makefile.
 - Modify the initialized procedure for all channels.
 - Add commit description about the initialization.

Yoshihiro Shimoda (2):
  dt-bindings: phy: renesas: Document Renesas Ethernet SERDES
  phy: renesas: Add Renesas Ethernet SERDES driver for R-Car S4-8

 .../phy/renesas,r8a779f0-ether-serdes.yaml    |  54 +++
 drivers/phy/renesas/Kconfig                   |   8 +
 drivers/phy/renesas/Makefile                  |   1 +
 drivers/phy/renesas/r8a779f0-ether-serdes.c   | 417 ++++++++++++++++++
 4 files changed, 480 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/renesas,r8a779f0-ether-serdes.yaml
 create mode 100644 drivers/phy/renesas/r8a779f0-ether-serdes.c

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
