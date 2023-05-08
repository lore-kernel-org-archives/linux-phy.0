Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF9DCC77B7F
	for <linux-phy@archiver.kernel.org>; Mon,  8 May 2023 16:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qpq5OaCH6sLf9guJeGHRarm2nf329bjR9RfK9JRYhxc=; b=AVLLVeYAe0mdiK
	yXoUx8M05g0gtNkZtuo2AT4f6XtDd+sJRWaiIfM5kg8JTf0HJNU1pJi8U4ttuDPrHTNXn9qVDBlw4
	M2+XXH3FiGhxCMzxqW6zWuuxl/DNMAjjky7mBP8H0NWkfI5QRjS7hH6SuPvhZgJeGiizvHhU1GOFr
	k3ubYgNCtc62YT8AyVZJDuHYAbGSGKElSGw8vh3lxr83TPVG7HG/g/UCbeVuqkbToQiTgHBcyJcT+
	ssjlmniyJTHxfZFo6xYCPwBmibrhTDWixcvr5ow2+P0Eggq9zK16NUVCH3xVg5I0GmD4HWymeUWXi
	DoskxZd8K+X6rLFSkcXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pw3JY-000v6T-1L;
	Mon, 08 May 2023 16:02:16 +0000
Received: from alln-iport-3.cisco.com ([173.37.142.90])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pw3JU-000v5V-1a
	for linux-phy@lists.infradead.org;
	Mon, 08 May 2023 16:02:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=cisco.com; i=@cisco.com; l=8626; q=dns/txt; s=iport;
  t=1683561732; x=1684771332;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=iJ7pjBaNjs4nBD8BQAS6E6wbv4xaISl93uvUv2wL+mU=;
  b=QwPnXTkLlOPrxlcbqC3gMdHuvSeTO9fvn8lxd6N/7VPcgDNwtj3ABxK2
   5VG1KCbVJPXiaikQIYv5e9Fl25+y3BfKsgO2c3HPzJMUO9Bh+a51AJe5R
   qCXbRmY/FfN60mLcS+FvviqFq6sIp2kgetyJ8KXonQ3qev/L0lbzJufTT
   I=;
X-CSE-ConnectionGUID: UNsUyunNSXGIzwu/FdLTww==
X-CSE-MsgGUID: aWtlM5KBQUWKjpQqOWhJ+A==
X-IronPort-AV: E=Sophos;i="5.99,259,1677542400"; 
   d="scan'208";a="84758450"
Received: from alln-core-10.cisco.com ([173.36.13.132])
  by alln-iport-3.cisco.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 May 2023 16:02:04 +0000
Received: from sjc-ads-7449.cisco.com (sjc-ads-7449.cisco.com [10.30.220.234])
	by alln-core-10.cisco.com (8.15.2/8.15.2) with ESMTPS id 348G1wdS002688
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Mon, 8 May 2023 16:02:02 GMT
Received: by sjc-ads-7449.cisco.com (Postfix, from userid 1777032)
	id 7B01BCCD0B1; Mon,  8 May 2023 09:01:57 -0700 (PDT)
From: Marcin Wierzbicki <mawierzb@cisco.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Marcin Wierzbicki <mawierzb@cisco.com>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
        Roger Quadros <rogerq@kernel.org>,
        Swapnil Jakhade <sjakhade@cadence.com>, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc: xe-linux-external@cisco.com, danielwa@cisco.com, olicht@cisco.com,
        Bartosz Wawrzyniak <bwawrzyn@cisco.com>
Subject: [PATCH v2] phy: cadence: Sierra: Add single link SGMII register configuration
Date: Mon,  8 May 2023 16:01:40 +0000
Message-Id: <20230508160142.2489365-1-mawierzb@cisco.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-Auto-Response-Suppress: DR, OOF, AutoReply
X-Outbound-SMTP-Client: 10.30.220.234, sjc-ads-7449.cisco.com
X-Outbound-Node: alln-core-10.cisco.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230508_090212_637016_99405A19 
X-CRM114-Status: UNSURE (   9.09  )
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

Add single link SGMII register configuration for no SSC for
cdns,sierra-phy-t0 compatibility string.
The configuration is based on Sierra Programmer's Guide and
validated in Cisco CrayAR SoC.

Co-developed-by: Bartosz Wawrzyniak <bwawrzyn@cisco.com>
Signed-off-by: Bartosz Wawrzyniak <bwawrzyn@cisco.com>
Signed-off-by: Marcin Wierzbicki <mawierzb@cisco.com>
Change-Id: Id4c093a1bbf409f3176736b5326854a1396391c1
---
 drivers/phy/cadence/phy-cadence-sierra.c | 103 +++++++++++++++++++++++
 1 file changed, 103 insertions(+)

diff --git a/drivers/phy/cadence/phy-cadence-sierra.c b/drivers/phy/cadence/phy-cadence-sierra.c
index 13fcd3a65fe9..6c3870a6b236 100644
--- a/drivers/phy/cadence/phy-cadence-sierra.c
+++ b/drivers/phy/cadence/phy-cadence-sierra.c
@@ -30,28 +30,40 @@
 #define SIERRA_COMMON_CDB_OFFSET			0x0
 #define SIERRA_MACRO_ID_REG				0x0
 #define SIERRA_CMN_PLLLC_GEN_PREG			0x42
+#define SIERRA_CMN_PLLLC_FBDIV_INT_MODE0_PREG		0x43
+#define SIERRA_CMN_PLLLC_DCOCAL_CTRL_PREG		0x45
+#define SIERRA_CMN_PLLLC_INIT_PREG			0x46
+#define SIERRA_CMN_PLLLC_ITERTMR_PREG			0x47
 #define SIERRA_CMN_PLLLC_MODE_PREG			0x48
 #define SIERRA_CMN_PLLLC_LF_COEFF_MODE1_PREG		0x49
 #define SIERRA_CMN_PLLLC_LF_COEFF_MODE0_PREG		0x4A
 #define SIERRA_CMN_PLLLC_LOCK_CNTSTART_PREG		0x4B
+#define SIERRA_CMN_PLLLC_LOCKSEARCH_PREG		0x4C
 #define SIERRA_CMN_PLLLC_CLK1_PREG			0x4D
+#define SIERRA_CMN_PLLLC_CLK0_PREG			0x4E
 #define SIERRA_CMN_PLLLC_BWCAL_MODE1_PREG		0x4F
 #define SIERRA_CMN_PLLLC_BWCAL_MODE0_PREG		0x50
 #define SIERRA_CMN_PLLLC_DSMCORR_PREG			0x51
 #define SIERRA_CMN_PLLLC_SS_PREG			0x52
 #define SIERRA_CMN_PLLLC_SS_AMP_STEP_SIZE_PREG		0x53
 #define SIERRA_CMN_PLLLC_SSTWOPT_PREG			0x54
+#define SIERRA_CMN_PLLCSM_PLLEN_TMR_PREG		0x5D
+#define SIERRA_CMN_PLLCSM_PLLPRE_TMR_PREG		0x5E
 #define SIERRA_CMN_PLLLC_SS_TIME_STEPSIZE_MODE_PREG	0x62
 #define SIERRA_CMN_PLLLC_LOCK_DELAY_CTRL_PREG		0x63
+#define SIERRA_SDOSCCAL_CLK_CNT_PREG			0x6E
 #define SIERRA_CMN_REFRCV_PREG				0x98
+#define SIERRA_CMN_RESCAL_CTRLA_PREG			0xA0
 #define SIERRA_CMN_REFRCV1_PREG				0xB8
 #define SIERRA_CMN_PLLLC1_GEN_PREG			0xC2
 #define SIERRA_CMN_PLLLC1_FBDIV_INT_PREG		0xC3
+#define SIERRA_CMN_PLLLC1_DCOCAL_CTRL_PREG		0xC5
 #define SIERRA_CMN_PLLLC1_LF_COEFF_MODE0_PREG		0xCA
 #define SIERRA_CMN_PLLLC1_CLK0_PREG			0xCE
 #define SIERRA_CMN_PLLLC1_BWCAL_MODE0_PREG		0xD0
 #define SIERRA_CMN_PLLLC1_SS_TIME_STEPSIZE_MODE_PREG	0xE2
 
+
 #define SIERRA_LANE_CDB_OFFSET(ln, block_offset, reg_offset)	\
 				((0x4000 << (block_offset)) + \
 				 (((ln) << 9) << (reg_offset)))
@@ -86,6 +98,7 @@
 #define SIERRA_DFE_BIASTRIM_PREG			0x04C
 #define SIERRA_DRVCTRL_ATTEN_PREG			0x06A
 #define SIERRA_DRVCTRL_BOOST_PREG			0x06F
+#define SIERRA_LANE_TX_RECEIVER_DETECT_PREG		0x071
 #define SIERRA_TX_RCVDET_OVRD_PREG			0x072
 #define SIERRA_CLKPATHCTRL_TMR_PREG			0x081
 #define SIERRA_RX_CREQ_FLTR_A_MODE3_PREG		0x085
@@ -101,6 +114,8 @@
 #define SIERRA_CREQ_SPARE_PREG				0x096
 #define SIERRA_CREQ_EQ_OPEN_EYE_THRESH_PREG		0x097
 #define SIERRA_CTLELUT_CTRL_PREG			0x098
+#define SIERRA_DEQ_BLK_TAU_CTRL1_PREG			0x0AC
+#define SIERRA_DEQ_BLK_TAU_CTRL4_PREG			0x0AF
 #define SIERRA_DFE_ECMP_RATESEL_PREG			0x0C0
 #define SIERRA_DFE_SMP_RATESEL_PREG			0x0C1
 #define SIERRA_DEQ_PHALIGN_CTRL				0x0C4
@@ -129,6 +144,9 @@
 #define SIERRA_DEQ_GLUT14				0x0F6
 #define SIERRA_DEQ_GLUT15				0x0F7
 #define SIERRA_DEQ_GLUT16				0x0F8
+#define SIERRA_POSTPRECUR_EN_CEPH_CTRL_PREG		0x0F9
+#define SIERRA_TAU_EN_CEPH2TO0_PREG			0x0FB
+#define SIERRA_TAU_EN_CEPH5TO3_PREG			0x0FC
 #define SIERRA_DEQ_ALUT0				0x108
 #define SIERRA_DEQ_ALUT1				0x109
 #define SIERRA_DEQ_ALUT2				0x10A
@@ -143,6 +161,7 @@
 #define SIERRA_DEQ_ALUT11				0x113
 #define SIERRA_DEQ_ALUT12				0x114
 #define SIERRA_DEQ_ALUT13				0x115
+#define SIERRA_OEPH_EN_CTRL_PREG			0x124
 #define SIERRA_DEQ_DFETAP_CTRL_PREG			0x128
 #define SIERRA_DEQ_DFETAP0				0x129
 #define SIERRA_DEQ_DFETAP1				0x12B
@@ -157,6 +176,7 @@
 #define SIERRA_DEQ_TAU_CTRL2_PREG			0x151
 #define SIERRA_DEQ_TAU_CTRL3_PREG			0x152
 #define SIERRA_DEQ_OPENEYE_CTRL_PREG			0x158
+#define SIERRA_DEQ_CONCUR_EPIOFFSET_MODE_PREG		0x159
 #define SIERRA_DEQ_PICTRL_PREG				0x161
 #define SIERRA_CPICAL_TMRVAL_MODE1_PREG			0x170
 #define SIERRA_CPICAL_TMRVAL_MODE0_PREG			0x171
@@ -165,6 +185,7 @@
 #define SIERRA_CPI_RESBIAS_BIN_PREG			0x17E
 #define SIERRA_CPI_TRIM_PREG				0x17F
 #define SIERRA_CPICAL_RES_STARTCODE_MODE23_PREG		0x183
+#define SIERRA_CPICAL_RES_STARTCODE_MODE01_PREG		0x184
 #define SIERRA_EPI_CTRL_PREG				0x187
 #define SIERRA_LFPSDET_SUPPORT_PREG			0x188
 #define SIERRA_LFPSFILT_NS_PREG				0x18A
@@ -176,6 +197,7 @@
 #define SIERRA_RXBUFFER_CTLECTRL_PREG			0x19E
 #define SIERRA_RXBUFFER_RCDFECTRL_PREG			0x19F
 #define SIERRA_RXBUFFER_DFECTRL_PREG			0x1A0
+#define SIERRA_LN_SPARE_REG_PREG			0x1B0
 #define SIERRA_DEQ_TAU_CTRL1_FAST_MAINT_PREG		0x14F
 #define SIERRA_DEQ_TAU_CTRL1_SLOW_MAINT_PREG		0x150
 
@@ -2401,6 +2423,77 @@ static struct cdns_sierra_vals usb_100_ext_ssc_ln_vals = {
 	.num_regs = ARRAY_SIZE(cdns_usb_ln_regs_ext_ssc),
 };
 
+/* SGMII PHY common configuration */
+static const struct cdns_reg_pairs sgmii_cmn_regs[] = {
+	{0x0180, SIERRA_SDOSCCAL_CLK_CNT_PREG},
+	{0x6000, SIERRA_CMN_REFRCV_PREG},
+	{0x0031, SIERRA_CMN_RESCAL_CTRLA_PREG},
+	{0x001C, SIERRA_CMN_PLLLC_FBDIV_INT_MODE0_PREG},
+	{0x2106, SIERRA_CMN_PLLLC_LF_COEFF_MODE0_PREG},
+	{0x0000, SIERRA_CMN_PLLLC_LOCKSEARCH_PREG},
+	{0x8103, SIERRA_CMN_PLLLC_CLK0_PREG},
+	{0x0000, SIERRA_CMN_PLLLC_BWCAL_MODE0_PREG},
+	{0x0027, SIERRA_CMN_PLLCSM_PLLEN_TMR_PREG},
+	{0x0062, SIERRA_CMN_PLLCSM_PLLPRE_TMR_PREG},
+	{0x0800, SIERRA_CMN_PLLLC_SS_TIME_STEPSIZE_MODE_PREG},
+	{0x0000, SIERRA_CMN_PLLLC_INIT_PREG},
+	{0x0000, SIERRA_CMN_PLLLC_ITERTMR_PREG},
+	{0x0020, SIERRA_CMN_PLLLC_LOCK_CNTSTART_PREG},
+	{0x0013, SIERRA_CMN_PLLLC_DCOCAL_CTRL_PREG},
+	{0x0013, SIERRA_CMN_PLLLC1_DCOCAL_CTRL_PREG},
+};
+
+static struct cdns_sierra_vals sgmii_cmn_vals = {
+	.reg_pairs = sgmii_cmn_regs,
+	.num_regs = ARRAY_SIZE(sgmii_cmn_regs),
+};
+
+/* SGMII PHY lane configuration */
+static const struct cdns_reg_pairs sgmii_ln_regs[] = {
+	{0x691E, SIERRA_DET_STANDEC_D_PREG},
+	{0x0FFE, SIERRA_PSC_RX_A0_PREG},
+	{0x0104, SIERRA_PLLCTRL_FBDIV_MODE01_PREG},
+	{0x0013, SIERRA_PLLCTRL_SUBRATE_PREG},
+	{0x0106, SIERRA_PLLCTRL_GEN_D_PREG},
+	{0x5234, SIERRA_PLLCTRL_CPGAIN_MODE_PREG},
+	{0x0000, SIERRA_DRVCTRL_ATTEN_PREG},
+	{0x00AB, SIERRA_RX_CREQ_FLTR_A_MODE0_PREG},
+	{0x3C0E, SIERRA_CREQ_CCLKDET_MODE01_PREG},
+	{0x3220, SIERRA_CREQ_FSMCLK_SEL_PREG},
+	{0x0000, SIERRA_CREQ_EQ_CTRL_PREG},
+	{0x6320, SIERRA_DEQ_CONCUR_EPIOFFSET_MODE_PREG},
+	{0x0000, SIERRA_CPI_OUTBUF_RATESEL_PREG},
+	{0x15A2, SIERRA_LN_SPARE_REG_PREG},
+	{0x7900, SIERRA_DEQ_BLK_TAU_CTRL1_PREG},
+	{0x2202, SIERRA_DEQ_BLK_TAU_CTRL4_PREG},
+	{0x2206, SIERRA_DEQ_TAU_CTRL2_PREG},
+	{0x0005, SIERRA_LANE_TX_RECEIVER_DETECT_PREG},
+	{0x8001, SIERRA_CREQ_SPARE_PREG},
+	{0x0000, SIERRA_DEQ_CONCUR_CTRL1_PREG},
+	{0xD004, SIERRA_DEQ_CONCUR_CTRL2_PREG},
+	{0x0101, SIERRA_DEQ_GLUT9},
+	{0x0101, SIERRA_DEQ_GLUT10},
+	{0x0101, SIERRA_DEQ_GLUT11},
+	{0x0101, SIERRA_DEQ_GLUT12},
+	{0x0000, SIERRA_DEQ_GLUT13},
+	{0x0000, SIERRA_DEQ_GLUT16},
+	{0x0000, SIERRA_POSTPRECUR_EN_CEPH_CTRL_PREG},
+	{0x0000, SIERRA_TAU_EN_CEPH2TO0_PREG},
+	{0x0003, SIERRA_TAU_EN_CEPH5TO3_PREG},
+	{0x0101, SIERRA_DEQ_ALUT8},
+	{0x0101, SIERRA_DEQ_ALUT9},
+	{0x0100, SIERRA_DEQ_ALUT10},
+	{0x0000, SIERRA_OEPH_EN_CTRL_PREG},
+	{0x5425, SIERRA_DEQ_OPENEYE_CTRL_PREG},
+	{0x7458, SIERRA_CPICAL_RES_STARTCODE_MODE23_PREG},
+	{0x321F, SIERRA_CPICAL_RES_STARTCODE_MODE01_PREG},
+};
+
+static struct cdns_sierra_vals sgmii_ln_vals = {
+	.reg_pairs = sgmii_ln_regs,
+	.num_regs = ARRAY_SIZE(sgmii_ln_regs),
+};
+
 static const struct cdns_sierra_data cdns_map_sierra = {
 	.id_value = SIERRA_MACRO_ID,
 	.block_offset_shift = 0x2,
@@ -2461,6 +2554,11 @@ static const struct cdns_sierra_data cdns_map_sierra = {
 				[INTERNAL_SSC] = &qsgmii_100_no_ssc_plllc1_cmn_vals,
 			},
 		},
+		[TYPE_SGMII] = {
+			[TYPE_NONE] = {
+				[NO_SSC] = &sgmii_cmn_vals,
+			},
+		},
 	},
 	.pma_ln_vals = {
 		[TYPE_PCIE] = {
@@ -2499,6 +2597,11 @@ static const struct cdns_sierra_data cdns_map_sierra = {
 				[INTERNAL_SSC] = &qsgmii_100_no_ssc_plllc1_ln_vals,
 			},
 		},
+		[TYPE_SGMII] = {
+			[TYPE_NONE] = {
+				[NO_SSC] = &sgmii_ln_vals,
+			},
+		},
 	},
 };
 
-- 
2.28.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
