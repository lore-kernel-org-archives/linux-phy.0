Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13D8EECE582
	for <linux-phy@archiver.kernel.org>; Tue, 10 Sep 2024 09:18:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gKhK7Oy9N9C6Icymeb4x0A9HxH5nNPpXYmHSnbHowv4=; b=FPr2D07vAieG0j
	NDBiMV2kh4kRW6A4POsLjFxUrh+0t0omO7adeAHURlDf7Uh8zwRNsOOaQHQeFWa/IP76koNBfLFxA
	nk95cTZLPTsp48LEcS0dgMeD59m2a5plpDDAwjrGJX80dVqQTzBoZuAtGDqMyBU6hnTd6AzFC+WDT
	ZNF/wmGx1kj2nwloRloFkfb6kdoJDOFeg6MVl7oLIuROd7nx4vHy2byvoyY35CHTXfKjXBKlOGqB9
	57yIt/Gw0PAQmF3Jrd/v4tYJtj3AYZljCjeguqy6haYP2qJf4uHwrULHkFy7D7k8YMRatXcn/FIgf
	c72qGFNFdwBNce4feQNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snx1H-00000004yyh-3MUH;
	Tue, 10 Sep 2024 09:18:43 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snx09-00000004ykq-2x5e;
	Tue, 10 Sep 2024 09:17:35 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 48A9HJvS083998;
	Tue, 10 Sep 2024 04:17:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1725959839;
	bh=b8yjZV6nv1Rb/0+iyalrSE6khPKZSm0V4DNGNDmHOxs=;
	h=From:To:CC:Subject:Date;
	b=jfkHrxq4bs4/rSJwp9eYjsznvsC8LWhu4T61T1L8ziLhmcRnru6bVfPF3JGxIdYvR
	 xFL7URMf5u1zxc9xcsaHY9ums5Q2jJ1ZPtDbluPg+hnekvC35HhoqIHRnfAtHVVmgD
	 GtlsszUYsODBlfI1wXokrTlKaUb53SVV1mGsayT4=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 48A9HJsg121695
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 10 Sep 2024 04:17:19 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 10
 Sep 2024 04:17:18 -0500
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 10 Sep 2024 04:17:18 -0500
Received: from uda0492258.dhcp.ti.com (dhcp-10-24-72-81.dhcp.ti.com [10.24.72.81])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 48A9HFsp051241;
	Tue, 10 Sep 2024 04:17:15 -0500
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <thomas.richard@bootlin.com>,
        <rogerq@kernel.org>, <c-vankar@ti.com>, <t-patil@ti.com>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <srk@ti.com>,
        <s-vadapalli@ti.com>
Subject: [PATCH] phy: ti: phy-j721e-wiz: fix usxgmii configuration
Date: Tue, 10 Sep 2024 14:47:14 +0530
Message-ID: <20240910091714.1082191-1-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_021733_870419_3A24D633 
X-CRM114-Status: GOOD (  11.38  )
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
bc83b4d1f086 Merge tag 'bcachefs-2024-09-09' of git://evilpiepirate.org/bcachefs
of Mainline Linux.

Regards,
Siddharth.

 drivers/phy/ti/phy-j721e-wiz.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index 7f626c597025..aa45d77dd733 100644
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
