Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC243D0EE1A
	for <linux-phy@archiver.kernel.org>; Sat, 12 Oct 2024 05:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xegcxXPwXleawgrqy+ncoPXS8J2BPT6Jd7xQgKn0o7c=; b=VCVJWl+HkHk6od
	tKRpY2P6vml/8nGyFawg2P8zaiD0aYKL5z8xOceYKncacLxYILUilgh4qbFPjoT0lQvKd0Boz3Qbq
	lSRrG8Renp8jKC7KqBi54W147B3DUe9QYpRDJ4W+gA6LUAke1uNmlJMS2aR046oTu9uhTt4wyTpZX
	OpRmwUDnBrOVM2IzKdzBH/tyT0tOkMnkpPW6h4waBmIVFltZiBhaW4y4hudbOkIywm5UtV60Jrs5p
	09zU+0ylAbHaIoVkyYm43FKxSZvg+ns29GKBIfBQZPfQkszQ6KlpPBoxxi8/amZ010f681w9bxEmq
	3jqQ6caKDjGHZBdWZlEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szUsX-00000000a4O-1Mqt;
	Sat, 12 Oct 2024 05:41:25 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szUrA-00000000ZzF-0Jkq;
	Sat, 12 Oct 2024 05:40:01 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 49C5dg0L015538;
	Sat, 12 Oct 2024 00:39:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1728711582;
	bh=4HtfdnhrKshlhXfqmNKSPESTr9mWew0Ty0bP54kOgm0=;
	h=From:To:CC:Subject:Date;
	b=Aahk7DROhCYjCJeSGHei0L1rXUmPeD4s9VGzUnWKxZDMuGR6kLDncMm14bZeQe54H
	 tamnXDBgynRPCvHwP1+Wx1WGugOR7Ku5+nDqNTAWL1UDSUIqYtzxlRtGpwf+IBZAW7
	 AAcgWvCtqbRDNByDk2qm0YMM2F8VwpCwnanG1Cmk=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTP id 49C5dgfW117080;
	Sat, 12 Oct 2024 00:39:42 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Sat, 12
 Oct 2024 00:39:41 -0500
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Sat, 12 Oct 2024 00:39:41 -0500
Received: from uda0492258.dhcp.ti.com (uda0492258.dhcp.ti.com [10.24.72.81])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 49C5db9R100121;
	Sat, 12 Oct 2024 00:39:38 -0500
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <thomas.richard@bootlin.com>,
        <krzysztof.kozlowski@linaro.org>, <nichen@iscas.ac.cn>,
        <rogerq@kernel.org>, <c-vankar@ti.com>, <t-patil@ti.com>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <srk@ti.com>,
        <s-vadapalli@ti.com>
Subject: [PATCH v3] phy: ti: phy-j721e-wiz: fix usxgmii configuration
Date: Sat, 12 Oct 2024 11:09:37 +0530
Message-ID: <20241012053937.3596885-1-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_224000_296475_E9D3C8C8 
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

Commit b64a85fb8f53 ("phy: ti: phy-j721e-wiz.c: Add usxgmii support in
wiz driver") added support for USXGMII mode. In doing so, P0_REFCLK_SEL
was set to "pcs_mac_clk_divx1_ln_0" (0x3) and P0_STANDARD_MODE was set to
LANE_MODE_GEN1, which results in a data rate of 5.15625 Gbps. However,
since the USXGMII mode can support up to 10.3125 Gbps data rate, the
aforementioned fields should be set to "pcs_mac_clk_divx0_ln_0" (0x2) and
LANE_MODE_GEN2 respectively. The signal corresponding to the USXGMII lane
of the SERDES has been measured as 5 Gbps without the change and 10 Gbps
with the change. Hence, fix the configuration accordingly to support
USXGMII up to 10G.

Fixes: b64a85fb8f53 ("phy: ti: phy-j721e-wiz.c: Add usxgmii support in wiz driver")
Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
Reviewed-by: Roger Quadros <rogerq@kernel.org>
---

Hello,

This patch is based on commit
09f6b0c8904b Merge tag 'linux_kselftest-fixes-6.12-rc3' of git://git.kernel.org/pub/scm/linux/kernel/git/shuah/linux-kselftest
of the master branch of Mainline Linux.

v2:
https://lore.kernel.org/r/20240930095745.3007057-1-s-vadapalli@ti.com/
Changes since v2:
- Rebased to commit 09f6b0c8904b of Mainline Linux.
- Updated commit message based on Roger's feedback.
- Collected Reviewed-by tag from
  Roger Quadros <rogerq@kernel.org>

v1:
https://lore.kernel.org/r/20240910091714.1082191-1-s-vadapalli@ti.com/
Changes since v1:
- Rebased to Linux 6.12-rc1.

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
