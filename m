Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4C95CF649D
	for <linux-phy@archiver.kernel.org>; Mon, 30 Sep 2024 10:05:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=evkttdMauAnKpt023xrTxWtgkqZbdmnStzhCYWuZddo=; b=cXASGwohcpZy3M
	AgRQg/7Mn/xOcXWmJ4gyvzjHwceMbOCWRSMTYs1GH3msdiNPiUFBdWXPB9Dw8xns2qpZFRkmNdPIh
	vmFzHY451khc36y90kn+8eBD51zKy8S3Rkz0NS5HlBErAyH+qSIQarEZinyeq4/U7SvnH37vw3N98
	lgmfCWO5cCcy+TGSTzlxukZV5Ccd6Ue1JBq3M4dI54YIpL1gXbsxf1rX7nbyYn7A5SEmqWbIXgEqU
	RaxYmYnLYNJs+ktQ+5mCBQPj2ee8mw0LTKASdf2znRl1d/nxOIba8tiNWFAcbO5MCWMET1NRrM/Ap
	pxEZ03KggvyXOWUKIf+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svDHv-0000000GePO-3dnV;
	Mon, 30 Sep 2024 10:05:55 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svDAK-0000000Gbg0-13ps;
	Mon, 30 Sep 2024 09:58:05 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 48U9voxU121553;
	Mon, 30 Sep 2024 04:57:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1727690270;
	bh=5nAG3PH8pxe0mgQspWLXQZNK62tGR2jcUNgxhIfNm5Q=;
	h=From:To:CC:Subject:Date;
	b=wBY/ySmwTUmcJf/jg5bPUSMBIOAI8Qu6MwFvzynBnXAQ5UbsGvyh16bikoHvXwLp0
	 LEPgawUalXm+8MPpXkAoWf9+VYZ1o35ksdSLauW3/92H9ynqB5xbhGiA2DPBFoIK6b
	 fN1ikI917K/bP+1edE8QeING0nYOcmhckody/0tI=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 48U9vo9j006811
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 30 Sep 2024 04:57:50 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 30
 Sep 2024 04:57:50 -0500
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 30 Sep 2024 04:57:50 -0500
Received: from uda0492258.dhcp.ti.com (uda0492258.dhcp.ti.com [10.24.72.81])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 48U9vkLh069954;
	Mon, 30 Sep 2024 04:57:46 -0500
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <thomas.richard@bootlin.com>,
        <krzysztof.kozlowski@linaro.org>, <nichen@iscas.ac.cn>,
        <rogerq@kernel.org>, <c-vankar@ti.com>, <t-patil@ti.com>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <srk@ti.com>,
        <s-vadapalli@ti.com>
Subject: [PATCH v2] phy: ti: phy-j721e-wiz: fix usxgmii configuration
Date: Mon, 30 Sep 2024 15:27:45 +0530
Message-ID: <20240930095745.3007057-1-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_025804_403557_3E8D44DF 
X-CRM114-Status: GOOD (  12.13  )
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

Commit b64a85fb8f53 ("phy: ti: phy-j721e-wiz.c: Add usxgmii support in
wiz driver") added support for USXGMII mode. In doing so, P0_REFCLK_SEL
was set to "pcs_mac_clk_divx1_ln_0" (0x3) and P0_STANDARD_MODE was set to
LANE_MODE_GEN1, which results in a data rate of 5.15625 Gbps. However,
since the USXGMII mode can support up to 10.3125 Gbps data rate, the
aforementioned fields should be set to "pcs_mac_clk_divx0_ln_0" (0x2) and
LANE_MODE_GEN2 respectively. Fix the configuration accordingly to truly
support USXGMII up to 10G.

Fixes: b64a85fb8f53 ("phy: ti: phy-j721e-wiz.c: Add usxgmii support in wiz driver")
Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
---

Hello,

This patch is based on commit
9852d85ec9d4 Linux 6.12-rc1
of mainline Linux.

v1:
https://lore.kernel.org/r/20240910091714.1082191-1-s-vadapalli@ti.com/
Changes since v1:
- Rebased to Linux 6.12-rc1.

Regards,
Siddharth.

 drivers/phy/ti/phy-j721e-wiz.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index a6c0c5607ffd..c6e846d385d2 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -450,8 +450,8 @@ static int wiz_mode_select(struct wiz *wiz)
 		} else if (wiz->lane_phy_type[i] == PHY_TYPE_USXGMII) {
 			ret = regmap_field_write(wiz->p0_mac_src_sel[i], 0x3);
 			ret = regmap_field_write(wiz->p0_rxfclk_sel[i], 0x3);
-			ret = regmap_field_write(wiz->p0_refclk_sel[i], 0x3);
-			mode = LANE_MODE_GEN1;
+			ret = regmap_field_write(wiz->p0_refclk_sel[i], 0x2);
+			mode = LANE_MODE_GEN2;
 		} else {
 			continue;
 		}
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
