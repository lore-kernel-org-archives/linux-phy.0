Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BB5DCA1013
	for <linux-phy@archiver.kernel.org>; Thu,  4 Sep 2025 08:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NRYmFQWpWRZ4t4W8WA4DD4phYiv2K1kZMScIzfkKlZM=; b=A3bp8njfxYVnfG
	LlMRsu4QmR/VjGwCpyElHBDoMRL7PbkoIQkXvyQjnRaXazfGbdxw7q6jh3+IlLw7MnSa9xKaOsfmn
	L2S4TzZMo4N3uMmDTNL3ApTG/mo+xIWpiL6iT93hvco/cT4IDMb0UpNCvq87qocUdrXOVhpCYSVNu
	Zcquo23yWhmnF9hzfSFaZ2b+549i1UbmduEwMb1w3LD3qFUNJeMkhXZC/5ZXEP+HDPNm+FZxafNvq
	xvhlznsZyAFJ8LBsPaqbMR4xOYeqepn0N84WkPnryl0/jfjBiMWbrVJOo0vpDVqyJjIPOV1NcRDSG
	1l9R/D8Er636vutfWSmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu5lV-0000000ANx6-3zgr;
	Thu, 04 Sep 2025 08:56:21 +0000
Received: from fllvem-ot04.ext.ti.com ([198.47.19.246])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu5Eb-0000000ACC8-2nlD
	for linux-phy@lists.infradead.org;
	Thu, 04 Sep 2025 08:22:23 +0000
Received: from fllvem-sh04.itg.ti.com ([10.64.41.54])
	by fllvem-ot04.ext.ti.com (8.15.2/8.15.2) with ESMTP id 5848Lvbx3427807;
	Thu, 4 Sep 2025 03:21:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1756974117;
	bh=TChUC5Tq/D6zfPNycygW1QaBaGRjl+5qqzikrlhBGFk=;
	h=From:To:Subject:Date;
	b=mDH9tCP1CNvjDK4XrckMN3CUz1wb0xpoVeI0NyX5GqpN0Ji2C+iAwe4ebGNZkwC2g
	 fKrEsNdz8I7MGI52jlNq28PQrCOKsqNKoFKo0RgEUw1KKqG3V4OXZMc4vPvPQLFrWg
	 +xIOS5EQZEDYXmkiLZmuxh0f07RztUqD2z52BpIc=
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
	by fllvem-sh04.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 5848LuxY730615
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Thu, 4 Sep 2025 03:21:56 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Thu, 4
 Sep 2025 03:21:55 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Thu, 4 Sep 2025 03:21:56 -0500
Received: from hkshenoy.dhcp.ti.com (hkshenoy.dhcp.ti.com [172.24.235.208])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 5848LpgE2963848;
	Thu, 4 Sep 2025 03:21:52 -0500
From: Harikrishna Shenoy <h-shenoy@ti.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <devarsht@ti.com>,
        <tomi.valkeinen@ideasonboard.com>, <aradhya.bhatia@linux.dev>,
        <u.kleine-koenig@baylibre.com>, <mripard@kernel.org>,
        <sakari.ailus@linux.intel.com>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <u-kumar1@ti.com>, <s-jain1@ti.com>
Subject: [PATCH RESEND 0/3] Fix and optimize cadence DPHY driver
Date: Thu, 4 Sep 2025 13:51:48 +0530
Message-ID: <20250904082151.2929189-1-h-shenoy@ti.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_012221_750633_DD68BEDF 
X-CRM114-Status: UNSURE (   6.08  )
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

This series optimizes the cadence dphy driver by below improvements:
- Fixes PLL lockup and O_CMN_READY timeout by moving the polling
function after common state machine gets enabled. Also fix the
calibration wait time to optimize the polling time.
- Enable support for data lane rates between 80-160 Mbps,
enables lower resolutions like 640x480 at 60Hz.

Series is a combination of below 2 series, rebased on top of next-20250901:
- https://lore.kernel.org/all/20250704125915.1224738-1-devarsht@ti.com/
- https://lore.kernel.org/all/20250807052002.717807-1-h-shenoy@ti.com/

Devarsh Thakkar (2):
  phy: cadence: cdns-dphy: Fix PLL lock and O_CMN_READY polling
  phy: cadence: cdns-dphy: Update calibration wait time for startup
    state machine

Harikrishna Shenoy (1):
  drivers: phy: cadence: cdns-dphy: Enable lower resolutions in dphy

 drivers/phy/cadence/cdns-dphy.c | 130 ++++++++++++++++++++++++--------
 1 file changed, 97 insertions(+), 33 deletions(-)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
