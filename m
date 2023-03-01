Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2012C64EC7
	for <linux-phy@archiver.kernel.org>; Wed,  1 Mar 2023 13:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pU1NsyPD42bdNqQYoTlDW+7r7ryOgKFy6hNp4hX2Gdw=; b=N+fo+j2gCC7VHU
	skmNhyGNmJTULgDsevXYhFdxM7iG9VuiwH+ec7LF0gLlFYYl4pR/jovRZwiut5EJw1VZnF3PEX4Yr
	7oY5cBtJ5WcqIXhlh9Nz9fsQr8IzkuHnY6fw9ixJSP4JI5ybe0Lcpo71uNaz0HfZejOd1wYBJLSoM
	eR8uv5zwRkeZhqGQqFLmxtRgHODkQfVgaczoIYv0LYLO15IMcOFDmkXVVy/ULvE57oSKO14eSiQrU
	85U32ayLUuigHDPgUa5O0zT8eqD2Sm666kat04KadS2gKzWqeb/ZMBjwUUoIze6U7sdLy1HzxaSPD
	YU/SrO9i8nnliZk+YiQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXMFZ-00GJqo-3V; Wed, 01 Mar 2023 13:12:05 +0000
Received: from mx0b-0014ca01.pphosted.com ([208.86.201.193] helo=mx0a-0014ca01.pphosted.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXMFT-00GJpF-R6
	for linux-phy@lists.infradead.org; Wed, 01 Mar 2023 13:12:04 +0000
Received: from pps.filterd (m0042333.ppops.net [127.0.0.1])
	by mx0b-0014ca01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 321AXfEb018556;
	Wed, 1 Mar 2023 05:11:52 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=proofpoint;
 bh=z2Sdv/XYvYQeZffHh1KBz1QNBiQC9G2HBB8waC6uecg=;
 b=hA+f6QTHN/CBdcd/EpKh7sLQyD+0dOuE6mWmhhd+J7PzgkA51L7tYVvyQ1qX+SbZANyb
 iUsiyEJJ50UotTf4Abp5R/59tiEAb3p8B97eKvKBClFVUyTleo+Z0dwnnCnfYv8q3xPU
 N9UxZ/bOVlQa6cxqpls29/5Q0DvLEd+IsLy2N0nT3ZWmZW09f2GGG5+1NfUcY4kKH4zB
 +R4BagU+myQuR9M3OiC58OSbavxlCwa1a0PqZDODMfAJRlX0enWUfWs2faZOvPOmgya3
 X9Wqkd6TdfyeityoQUo6A/hcpiBDERnGWtnD/ZkCB0swxZ7Ol7GzpnDyHCmSYgsQvdPa PQ== 
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2168.outbound.protection.outlook.com [104.47.55.168])
	by mx0b-0014ca01.pphosted.com (PPS) with ESMTPS id 3p25280m0j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 01 Mar 2023 05:11:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D2Ww6DbPUEmu8DHm+OHylS96f6SI6QZVIPDeRyIFZH7z37VqUpqWqQ8i7vW9/NN/1gBH5qB/vk/hzhlNqJXAcdAe3KBM2Fe3BluPGEx4gmSve7B0W9jUojVBdbUyyTzKTiNAGk2ONlHMCqqw6fITb2PT2dIbfyc3TMAZJFFGGyWuE5bqcz+DlBEMxUGtPorJSPJYk0DyLHYWoPwMw+f7eE7PzeszSffTfUMSJ+TGdPkyQ5kwUDxmkZR9oGXAB0+EeFk/i6pdqvX+LwbIX1TRcSKtsyzP1qjoQ3iOC/ccDI7XPEf1XtjedDK7da6zmMJrmJVQchM0GbMC9bJkEou30A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z2Sdv/XYvYQeZffHh1KBz1QNBiQC9G2HBB8waC6uecg=;
 b=Dh1J7oQoE7LUSuXsodc2KArEKuGKpn3JdzkYBpha8SYrKEhT6ZxWMTcXliWFlCFZflXYLgESKZFt8rtdS9hvpPYTKHET4rNbf/vizPqAy9zVIZY4CulqmJhklMX3trSyuDsW5WIOdvIQnbtGIHx4iuYo5y2yWxIF9pZtDCglprm8EzwF0gFhTBd2unB4+8XkGvy0zNh0aT0CJJ/Ej4EodB5NWF/h+ai6x74HLijESJ5gJXieOHn+04IAiDUrGtIylfrCM/ARD3+Cub7PO4DQ9JeJ3N/gVoE+mzH0vDuFb9w5ipHcqY5WcL1qUGHgBZFmqpPrYhYfxp9ogwutmr/LCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 158.140.1.148) smtp.rcpttodomain=kernel.org smtp.mailfrom=cadence.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=cadence.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z2Sdv/XYvYQeZffHh1KBz1QNBiQC9G2HBB8waC6uecg=;
 b=0sUSlIlp/tKa12md+TbkH1ITfujhATkkyGCOH8FEs82wF7LiTALhf4vJ0DGkZ86rgztKBMB6CAqY+WK03VqFpPfFW/VP3mM4sbl/faxWrXvRhfO+4jv2ljnn5XgX8VWM6s6XetJzhb3WisZvnf84xwb/lhtTcxsKb0LBQBhhdbE=
Received: from DM6PR13CA0007.namprd13.prod.outlook.com (2603:10b6:5:bc::20) by
 MW4PR07MB9471.namprd07.prod.outlook.com (2603:10b6:303:220::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.30; Wed, 1 Mar
 2023 13:11:44 +0000
Received: from DM6NAM12FT019.eop-nam12.prod.protection.outlook.com
 (2603:10b6:5:bc:cafe::44) by DM6PR13CA0007.outlook.office365.com
 (2603:10b6:5:bc::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.18 via Frontend
 Transport; Wed, 1 Mar 2023 13:11:44 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 158.140.1.148)
 smtp.mailfrom=cadence.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=cadence.com;
Received-SPF: Pass (protection.outlook.com: domain of cadence.com designates
 158.140.1.148 as permitted sender) receiver=protection.outlook.com;
 client-ip=158.140.1.148; helo=sjmaillnx2.cadence.com; pr=C
Received: from sjmaillnx2.cadence.com (158.140.1.148) by
 DM6NAM12FT019.mail.protection.outlook.com (10.13.178.84) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6178.6 via Frontend Transport; Wed, 1 Mar 2023 13:11:44 +0000
Received: from maileu4.global.cadence.com (eudvw-maileu4.cadence.com [10.160.110.201])
	by sjmaillnx2.cadence.com (8.14.4/8.14.4) with ESMTP id 321DBfvM021385
	(version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 1 Mar 2023 05:11:42 -0800
Received: from maileu4.global.cadence.com (10.160.110.201) by
 maileu4.global.cadence.com (10.160.110.201) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.7; Wed, 1 Mar 2023 14:11:29 +0100
Received: from vleu-orange.cadence.com (10.160.88.83) by
 maileu4.global.cadence.com (10.160.110.201) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.7
 via Frontend Transport; Wed, 1 Mar 2023 14:11:29 +0100
Received: from vleu-orange.cadence.com (localhost.localdomain [127.0.0.1])
	by vleu-orange.cadence.com (8.14.4/8.14.4) with ESMTP id 321DBS48006151;
	Wed, 1 Mar 2023 14:11:28 +0100
Received: (from sjakhade@localhost)
	by vleu-orange.cadence.com (8.14.4/8.14.4/Submit) id 321DBSsg006150;
	Wed, 1 Mar 2023 14:11:28 +0100
From: Swapnil Jakhade <sjakhade@cadence.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: <mparab@cadence.com>, <sjakhade@cadence.com>, <rogerq@kernel.org>
Subject: [PATCH 2/7] phy: cadence-torrent: Use key:value pair table for all settings
Date: Wed, 1 Mar 2023 14:11:20 +0100
Message-ID: <20230301131125.6084-3-sjakhade@cadence.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20230301131125.6084-1-sjakhade@cadence.com>
References: <20230301131125.6084-1-sjakhade@cadence.com>
MIME-Version: 1.0
X-CrossPremisesHeadersFilteredBySendConnector: maileu4.global.cadence.com
X-OrganizationHeadersPreserved: maileu4.global.cadence.com
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6NAM12FT019:EE_|MW4PR07MB9471:EE_
X-MS-Office365-Filtering-Correlation-Id: c77cb0d6-9061-4501-08fb-08db1a568142
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	r+nuvFU2FYPbX4olNZ8p0Xz3J6KH+ccGF8yFjkSJ0rkGk9FGxkwi/F/nkuVkS1sSpOqAip0PRIQFkzQjFxf68WyEURa21/zWi8TLEmHIoHb5Qybg0lYJ5vgAa3RvT7BfYwf7hAGFdTk7yO8IlXv8did35TQYvYGxPLKEwF6CjwqjaKbkxpVajyWb7P6wHOwriR78oYsoq1wo/AeRN9GXirn+FZWMjO64TzLwgsvDYpGn/ENLIUR13j6LbcVViEkJ92jmSHSpDoTchAGI8MXvdYma0TEM3GxHFBX9v9Yxa+bcL02sYIFgR79Gw7slGMOFS+T4zllNpZY/xAeTSJKx7ojzIQpmyoGFxA/SA0TxN7fqrdP+Svw0Q/SGZ3ms1PlLPllaJ14J3DNPPhdoAuPVDcMBCi4G/tX5q/OtcxH2oTY+YXvBp/bj2M/HoGANUQ56q38qyjxW9WHgSJ1bZkWbV+gpjz+OgRccwwsdal3ZUOPLcwoiE095slI/SVvywhzim77ki/SUzg5mQ8L2tIC7wK0gQGi6Oz30VMngFn2C+M2SMMNfQrzqJi3eJSM/iVu5jEKNklmsFupwErC0DT8I98Jm5rFv+BFHsagpR1Rz4JwpWOCvVkPlBnheuEaeYNud+gzoZh5npXwDGPVGNrdWuQXx028rcHtM8T1uvO39y/gmW6Wu4qn1dkKB2Q2w7/zWlCfghF7w9S0B5BdweXd9Ag==
X-Forefront-Antispam-Report: 	CIP:158.140.1.148;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:sjmaillnx2.cadence.com;PTR:unknown.Cadence.COM;CAT:NONE;SFS:(13230025)(4636009)(136003)(346002)(39860400002)(376002)(396003)(36092001)(451199018)(46966006)(40470700004)(36840700001)(70206006)(26005)(70586007)(1076003)(2906002)(42186006)(6666004)(54906003)(186003)(316002)(40480700001)(478600001)(40460700003)(86362001)(110136005)(36756003)(83380400001)(41300700001)(82310400005)(36860700001)(7636003)(8676002)(30864003)(8936002)(356005)(4326008)(336012)(426003)(47076005)(5660300002)(2616005)(82740400003)(559001)(579004);DIR:OUT;SFP:1101;
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Mar 2023 13:11:44.0217
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c77cb0d6-9061-4501-08fb-08db1a568142
X-MS-Exchange-CrossTenant-Id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=d36035c5-6ce6-4662-a3dc-e762e61ae4c9;Ip=[158.140.1.148];Helo=[sjmaillnx2.cadence.com]
X-MS-Exchange-CrossTenant-AuthSource: 	DM6NAM12FT019.eop-nam12.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR07MB9471
X-Proofpoint-GUID: FY4yGLvwQ34EMSe4NK3XwSktPoeLONq6
X-Proofpoint-ORIG-GUID: FY4yGLvwQ34EMSe4NK3XwSktPoeLONq6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-01_09,2023-03-01_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check score=0 malwarescore=0
 mlxlogscore=999 suspectscore=0 bulkscore=0 phishscore=0 lowpriorityscore=0
 clxscore=1015 adultscore=0 impostorscore=0 spamscore=0 priorityscore=1501
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2303010111
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230301_051200_141979_A2705DDD 
X-CRM114-Status: GOOD (  20.82  )
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

From: Roger Quadros <rogerq@kernel.org>

Instead of a 3D matrix use a key:value pair table for link_cmn_vals,
xcvr_diag_vals, pcs_cmn_vals, phy_pma_cmn_vals, cmn_vals,
tx_ln_vals and rx_ln_vals. This makes it scaleable for multiple
reference clocks.

Wherever both CDNS and TI use the same settings, reuse the same data.

Introduce CLK_ANY and ANY_SSC enums which are used if the setting
is independent of clock rate or SSC type.

Signed-off-by: Roger Quadros <rogerq@kernel.org>
Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
---
 drivers/phy/cadence/phy-cadence-torrent.c | 1661 ++++++---------------
 1 file changed, 485 insertions(+), 1176 deletions(-)

diff --git a/drivers/phy/cadence/phy-cadence-torrent.c b/drivers/phy/cadence/phy-cadence-torrent.c
index d7b5ad82b81d..52b2e3c2d299 100644
--- a/drivers/phy/cadence/phy-cadence-torrent.c
+++ b/drivers/phy/cadence/phy-cadence-torrent.c
@@ -32,10 +32,6 @@
 #define MAX_NUM_LANES		4
 #define DEFAULT_MAX_BIT_RATE	8100 /* in Mbps */
 
-#define NUM_SSC_MODE		3
-#define NUM_REF_CLK		4
-#define NUM_PHY_TYPE		7
-
 #define POLL_TIMEOUT_US		5000
 #define PLL_LOCK_TIMEOUT	100000
 
@@ -307,15 +303,42 @@ enum cdns_torrent_ref_clk {
 	CLK_19_2_MHZ,
 	CLK_25_MHZ,
 	CLK_100_MHZ,
-	CLK_156_25_MHZ
+	CLK_156_25_MHZ,
+	CLK_ANY,
 };
 
 enum cdns_torrent_ssc_mode {
 	NO_SSC,
 	EXTERNAL_SSC,
-	INTERNAL_SSC
+	INTERNAL_SSC,
+	ANY_SSC,
 };
 
+/* Unique key id for vals table entry
+ * REFCLK0_RATE | REFCLK1_RATE | LINK0_TYPE | LINK1_TYPE | SSC_TYPE
+ */
+#define REFCLK0_SHIFT	12
+#define REFCLK0_MASK	GENMASK(14, 12)
+#define REFCLK1_SHIFT	9
+#define REFCLK1_MASK	GENMASK(11, 9)
+#define LINK0_SHIFT	6
+#define LINK0_MASK	GENMASK(8, 6)
+#define LINK1_SHIFT	3
+#define LINK1_MASK	GENMASK(5, 3)
+#define SSC_SHIFT	0
+#define SSC_MASK	GENMASK(2, 0)
+
+#define CDNS_TORRENT_KEY(refclk0, refclk1, link0, link1, ssc) \
+			((((refclk0) << REFCLK0_SHIFT) & REFCLK0_MASK) | \
+			(((refclk1) << REFCLK1_SHIFT) & REFCLK1_MASK) | \
+			(((link0) << LINK0_SHIFT) & LINK0_MASK) | \
+			(((link1) << LINK1_SHIFT) & LINK1_MASK) | \
+			(((ssc) << SSC_SHIFT) & SSC_MASK))
+
+#define CDNS_TORRENT_KEY_ANYCLK(link0, link1) \
+			CDNS_TORRENT_KEY(CLK_ANY, CLK_ANY, \
+					 (link0), (link1), ANY_SSC)
+
 struct cdns_torrent_inst {
 	struct phy *phy;
 	u32 mlane;
@@ -402,23 +425,26 @@ struct cdns_torrent_vals {
 	u32 num_regs;
 };
 
+struct cdns_torrent_vals_entry {
+	u32 key;
+	struct cdns_torrent_vals *vals;
+};
+
+struct cdns_torrent_vals_table {
+	struct cdns_torrent_vals_entry *entries;
+	u32 num_entries;
+};
+
 struct cdns_torrent_data {
 	u8 block_offset_shift;
 	u8 reg_offset_shift;
-	struct cdns_torrent_vals *link_cmn_vals[NUM_PHY_TYPE][NUM_PHY_TYPE]
-					       [NUM_SSC_MODE];
-	struct cdns_torrent_vals *xcvr_diag_vals[NUM_PHY_TYPE][NUM_PHY_TYPE]
-						[NUM_SSC_MODE];
-	struct cdns_torrent_vals *pcs_cmn_vals[NUM_PHY_TYPE][NUM_PHY_TYPE]
-					      [NUM_SSC_MODE];
-	struct cdns_torrent_vals *phy_pma_cmn_vals[NUM_PHY_TYPE][NUM_PHY_TYPE]
-						  [NUM_SSC_MODE];
-	struct cdns_torrent_vals *cmn_vals[NUM_REF_CLK][NUM_PHY_TYPE]
-					  [NUM_PHY_TYPE][NUM_SSC_MODE];
-	struct cdns_torrent_vals *tx_ln_vals[NUM_REF_CLK][NUM_PHY_TYPE]
-					    [NUM_PHY_TYPE][NUM_SSC_MODE];
-	struct cdns_torrent_vals *rx_ln_vals[NUM_REF_CLK][NUM_PHY_TYPE]
-					    [NUM_PHY_TYPE][NUM_SSC_MODE];
+	struct cdns_torrent_vals_table link_cmn_vals_tbl;
+	struct cdns_torrent_vals_table xcvr_diag_vals_tbl;
+	struct cdns_torrent_vals_table pcs_cmn_vals_tbl;
+	struct cdns_torrent_vals_table phy_pma_cmn_vals_tbl;
+	struct cdns_torrent_vals_table cmn_vals_tbl;
+	struct cdns_torrent_vals_table tx_ln_vals_tbl;
+	struct cdns_torrent_vals_table rx_ln_vals_tbl;
 };
 
 struct cdns_regmap_cdb_context {
@@ -427,6 +453,24 @@ struct cdns_regmap_cdb_context {
 	u8 reg_offset_shift;
 };
 
+static struct cdns_torrent_vals *cdns_torrent_get_tbl_vals(const struct cdns_torrent_vals_table *tbl,
+							   enum cdns_torrent_ref_clk refclk0,
+							   enum cdns_torrent_ref_clk refclk1,
+							   enum cdns_torrent_phy_type link0,
+							   enum cdns_torrent_phy_type link1,
+							   enum cdns_torrent_ssc_mode ssc)
+{
+	int i;
+	u32 key = CDNS_TORRENT_KEY(refclk0, refclk1, link0, link1, ssc);
+
+	for (i = 0; i < tbl->num_entries; i++) {
+		if (tbl->entries[i].key == key)
+			return tbl->entries[i].vals;
+	}
+
+	return NULL;
+}
+
 static int cdns_regmap_write(void *context, unsigned int reg, unsigned int val)
 {
 	struct cdns_regmap_cdb_context *ctx = context;
@@ -2276,7 +2320,10 @@ static int cdns_torrent_phy_init(struct phy *phy)
 		ssc = NO_SSC;
 
 	/* PHY configuration specific registers for single link */
-	link_cmn_vals = init_data->link_cmn_vals[phy_type][TYPE_NONE][ssc];
+	link_cmn_vals = cdns_torrent_get_tbl_vals(&init_data->link_cmn_vals_tbl,
+						  CLK_ANY, CLK_ANY,
+						  phy_type, TYPE_NONE,
+						  ANY_SSC);
 	if (link_cmn_vals) {
 		reg_pairs = link_cmn_vals->reg_pairs;
 		num_regs = link_cmn_vals->num_regs;
@@ -2293,7 +2340,10 @@ static int cdns_torrent_phy_init(struct phy *phy)
 				     reg_pairs[i].val);
 	}
 
-	xcvr_diag_vals = init_data->xcvr_diag_vals[phy_type][TYPE_NONE][ssc];
+	xcvr_diag_vals = cdns_torrent_get_tbl_vals(&init_data->xcvr_diag_vals_tbl,
+						   CLK_ANY, CLK_ANY,
+						   phy_type, TYPE_NONE,
+						   ANY_SSC);
 	if (xcvr_diag_vals) {
 		reg_pairs = xcvr_diag_vals->reg_pairs;
 		num_regs = xcvr_diag_vals->num_regs;
@@ -2306,7 +2356,10 @@ static int cdns_torrent_phy_init(struct phy *phy)
 	}
 
 	/* PHY PCS common registers configurations */
-	pcs_cmn_vals = init_data->pcs_cmn_vals[phy_type][TYPE_NONE][ssc];
+	pcs_cmn_vals = cdns_torrent_get_tbl_vals(&init_data->pcs_cmn_vals_tbl,
+						 CLK_ANY, CLK_ANY,
+						 phy_type, TYPE_NONE,
+						 ANY_SSC);
 	if (pcs_cmn_vals) {
 		reg_pairs = pcs_cmn_vals->reg_pairs;
 		num_regs = pcs_cmn_vals->num_regs;
@@ -2317,7 +2370,10 @@ static int cdns_torrent_phy_init(struct phy *phy)
 	}
 
 	/* PHY PMA common registers configurations */
-	phy_pma_cmn_vals = init_data->phy_pma_cmn_vals[phy_type][TYPE_NONE][ssc];
+	phy_pma_cmn_vals = cdns_torrent_get_tbl_vals(&init_data->phy_pma_cmn_vals_tbl,
+						     CLK_ANY, CLK_ANY,
+						     phy_type, TYPE_NONE,
+						     ANY_SSC);
 	if (phy_pma_cmn_vals) {
 		reg_pairs = phy_pma_cmn_vals->reg_pairs;
 		num_regs = phy_pma_cmn_vals->num_regs;
@@ -2328,7 +2384,10 @@ static int cdns_torrent_phy_init(struct phy *phy)
 	}
 
 	/* PMA common registers configurations */
-	cmn_vals = init_data->cmn_vals[ref_clk][phy_type][TYPE_NONE][ssc];
+	cmn_vals = cdns_torrent_get_tbl_vals(&init_data->cmn_vals_tbl,
+					     ref_clk, ref_clk,
+					     phy_type, TYPE_NONE,
+					     ssc);
 	if (cmn_vals) {
 		reg_pairs = cmn_vals->reg_pairs;
 		num_regs = cmn_vals->num_regs;
@@ -2339,7 +2398,10 @@ static int cdns_torrent_phy_init(struct phy *phy)
 	}
 
 	/* PMA TX lane registers configurations */
-	tx_ln_vals = init_data->tx_ln_vals[ref_clk][phy_type][TYPE_NONE][ssc];
+	tx_ln_vals = cdns_torrent_get_tbl_vals(&init_data->tx_ln_vals_tbl,
+					       ref_clk, ref_clk,
+					       phy_type, TYPE_NONE,
+					       ssc);
 	if (tx_ln_vals) {
 		reg_pairs = tx_ln_vals->reg_pairs;
 		num_regs = tx_ln_vals->num_regs;
@@ -2352,7 +2414,10 @@ static int cdns_torrent_phy_init(struct phy *phy)
 	}
 
 	/* PMA RX lane registers configurations */
-	rx_ln_vals = init_data->rx_ln_vals[ref_clk][phy_type][TYPE_NONE][ssc];
+	rx_ln_vals = cdns_torrent_get_tbl_vals(&init_data->rx_ln_vals_tbl,
+					       ref_clk, ref_clk,
+					       phy_type, TYPE_NONE,
+					       ssc);
 	if (rx_ln_vals) {
 		reg_pairs = rx_ln_vals->reg_pairs;
 		num_regs = rx_ln_vals->num_regs;
@@ -2441,7 +2506,9 @@ int cdns_torrent_phy_configure_multilink(struct cdns_torrent_phy *cdns_phy)
 		 * being configured, but these can be different for particular
 		 * PHY type and are per lane.
 		 */
-		link_cmn_vals = init_data->link_cmn_vals[phy_t1][phy_t2][ssc];
+		link_cmn_vals = cdns_torrent_get_tbl_vals(&init_data->link_cmn_vals_tbl,
+							  CLK_ANY, CLK_ANY,
+							  phy_t1, phy_t2, ANY_SSC);
 		if (link_cmn_vals) {
 			reg_pairs = link_cmn_vals->reg_pairs;
 			num_regs = link_cmn_vals->num_regs;
@@ -2459,7 +2526,9 @@ int cdns_torrent_phy_configure_multilink(struct cdns_torrent_phy *cdns_phy)
 					     reg_pairs[i].val);
 		}
 
-		xcvr_diag_vals = init_data->xcvr_diag_vals[phy_t1][phy_t2][ssc];
+		xcvr_diag_vals = cdns_torrent_get_tbl_vals(&init_data->xcvr_diag_vals_tbl,
+							   CLK_ANY, CLK_ANY,
+							   phy_t1, phy_t2, ANY_SSC);
 		if (xcvr_diag_vals) {
 			reg_pairs = xcvr_diag_vals->reg_pairs;
 			num_regs = xcvr_diag_vals->num_regs;
@@ -2472,7 +2541,9 @@ int cdns_torrent_phy_configure_multilink(struct cdns_torrent_phy *cdns_phy)
 		}
 
 		/* PHY PCS common registers configurations */
-		pcs_cmn_vals = init_data->pcs_cmn_vals[phy_t1][phy_t2][ssc];
+		pcs_cmn_vals = cdns_torrent_get_tbl_vals(&init_data->pcs_cmn_vals_tbl,
+							 CLK_ANY, CLK_ANY,
+							 phy_t1, phy_t2, ANY_SSC);
 		if (pcs_cmn_vals) {
 			reg_pairs = pcs_cmn_vals->reg_pairs;
 			num_regs = pcs_cmn_vals->num_regs;
@@ -2483,7 +2554,9 @@ int cdns_torrent_phy_configure_multilink(struct cdns_torrent_phy *cdns_phy)
 		}
 
 		/* PMA common registers configurations */
-		cmn_vals = init_data->cmn_vals[ref_clk][phy_t1][phy_t2][ssc];
+		cmn_vals = cdns_torrent_get_tbl_vals(&init_data->cmn_vals_tbl,
+						     ref_clk, ref_clk,
+						     phy_t1, phy_t2, ssc);
 		if (cmn_vals) {
 			reg_pairs = cmn_vals->reg_pairs;
 			num_regs = cmn_vals->num_regs;
@@ -2494,7 +2567,9 @@ int cdns_torrent_phy_configure_multilink(struct cdns_torrent_phy *cdns_phy)
 		}
 
 		/* PMA TX lane registers configurations */
-		tx_ln_vals = init_data->tx_ln_vals[ref_clk][phy_t1][phy_t2][ssc];
+		tx_ln_vals = cdns_torrent_get_tbl_vals(&init_data->tx_ln_vals_tbl,
+						       ref_clk, ref_clk,
+						       phy_t1, phy_t2, ssc);
 		if (tx_ln_vals) {
 			reg_pairs = tx_ln_vals->reg_pairs;
 			num_regs = tx_ln_vals->num_regs;
@@ -2507,7 +2582,9 @@ int cdns_torrent_phy_configure_multilink(struct cdns_torrent_phy *cdns_phy)
 		}
 
 		/* PMA RX lane registers configurations */
-		rx_ln_vals = init_data->rx_ln_vals[ref_clk][phy_t1][phy_t2][ssc];
+		rx_ln_vals = cdns_torrent_get_tbl_vals(&init_data->rx_ln_vals_tbl,
+						       ref_clk, ref_clk,
+						       phy_t1, phy_t2, ssc);
 		if (rx_ln_vals) {
 			reg_pairs = rx_ln_vals->reg_pairs;
 			num_regs = rx_ln_vals->num_regs;
@@ -4082,1169 +4159,401 @@ static struct cdns_torrent_vals pcie_100_no_ssc_rx_ln_vals = {
 	.num_regs = ARRAY_SIZE(pcie_100_ext_no_ssc_rx_ln_regs),
 };
 
+static struct cdns_torrent_vals_entry link_cmn_vals_entries[] = {
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_DP, TYPE_NONE), &sl_dp_link_cmn_vals},
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_DP, TYPE_PCIE), &pcie_dp_link_cmn_vals},
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_DP, TYPE_USB), &usb_dp_link_cmn_vals},
+
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_PCIE, TYPE_NONE), NULL},
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_PCIE, TYPE_SGMII), &pcie_sgmii_link_cmn_vals},
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_PCIE, TYPE_QSGMII), &pcie_sgmii_link_cmn_vals},
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_PCIE, TYPE_USB), &pcie_usb_link_cmn_vals},
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_PCIE, TYPE_DP), &pcie_dp_link_cmn_vals},
+
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_SGMII, TYPE_NONE), &sl_sgmii_link_cmn_vals},
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_SGMII, TYPE_PCIE), &pcie_sgmii_link_cmn_vals},
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_SGMII, TYPE_USB), &usb_sgmii_link_cmn_vals},
+
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_QSGMII, TYPE_NONE), &sl_sgmii_link_cmn_vals},
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_QSGMII, TYPE_PCIE), &pcie_sgmii_link_cmn_vals},
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_QSGMII, TYPE_USB), &usb_sgmii_link_cmn_vals},
+
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_USB, TYPE_NONE), &sl_usb_link_cmn_vals},
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_USB, TYPE_PCIE), &pcie_usb_link_cmn_vals},
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_USB, TYPE_SGMII), &usb_sgmii_link_cmn_vals},
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_USB, TYPE_QSGMII), &usb_sgmii_link_cmn_vals},
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_USB, TYPE_DP), &usb_dp_link_cmn_vals},
+
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_USXGMII, TYPE_NONE), &sl_usxgmii_link_cmn_vals},
+};
+
+static struct cdns_torrent_vals_entry xcvr_diag_vals_entries[] = {
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_DP, TYPE_NONE), &sl_dp_xcvr_diag_ln_vals},
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_DP, TYPE_PCIE), &dp_pcie_xcvr_diag_ln_vals},
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_DP, TYPE_USB), &dp_usb_xcvr_diag_ln_vals},
+
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_PCIE, TYPE_NONE), NULL},
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_PCIE, TYPE_SGMII), &pcie_sgmii_xcvr_diag_ln_vals},
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_PCIE, TYPE_QSGMII), &pcie_sgmii_xcvr_diag_ln_vals},
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_PCIE, TYPE_USB), &pcie_usb_xcvr_diag_ln_vals},
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_PCIE, TYPE_DP), &pcie_dp_xcvr_diag_ln_vals},
+
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_SGMII, TYPE_NONE), &sl_sgmii_xcvr_diag_ln_vals},
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_SGMII, TYPE_PCIE), &sgmii_pcie_xcvr_diag_ln_vals},
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_SGMII, TYPE_USB), &sgmii_usb_xcvr_diag_ln_vals},
+
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_QSGMII, TYPE_NONE), &sl_sgmii_xcvr_diag_ln_vals},
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_QSGMII, TYPE_PCIE), &sgmii_pcie_xcvr_diag_ln_vals},
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_QSGMII, TYPE_USB), &sgmii_usb_xcvr_diag_ln_vals},
+
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_USB, TYPE_NONE), &sl_usb_xcvr_diag_ln_vals},
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_USB, TYPE_PCIE), &usb_pcie_xcvr_diag_ln_vals},
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_USB, TYPE_SGMII), &usb_sgmii_xcvr_diag_ln_vals},
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_USB, TYPE_QSGMII), &usb_sgmii_xcvr_diag_ln_vals},
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_USB, TYPE_DP), &usb_dp_xcvr_diag_ln_vals},
+
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_USXGMII, TYPE_NONE), &sl_usxgmii_xcvr_diag_ln_vals},
+};
+
+static struct cdns_torrent_vals_entry pcs_cmn_vals_entries[] = {
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_USB, TYPE_NONE), &usb_phy_pcs_cmn_vals},
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_USB, TYPE_PCIE), &usb_phy_pcs_cmn_vals},
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_USB, TYPE_SGMII), &usb_phy_pcs_cmn_vals},
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_USB, TYPE_QSGMII), &usb_phy_pcs_cmn_vals},
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_USB, TYPE_DP), &usb_phy_pcs_cmn_vals},
+};
+
+static struct cdns_torrent_vals_entry cmn_vals_entries[] = {
+	{CDNS_TORRENT_KEY(CLK_19_2_MHZ, CLK_19_2_MHZ, TYPE_DP, TYPE_NONE, NO_SSC), &sl_dp_19_2_no_ssc_cmn_vals},
+	{CDNS_TORRENT_KEY(CLK_25_MHZ, CLK_25_MHZ, TYPE_DP, TYPE_NONE, NO_SSC), &sl_dp_25_no_ssc_cmn_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_DP, TYPE_NONE, NO_SSC), &sl_dp_100_no_ssc_cmn_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_DP, TYPE_PCIE, NO_SSC), &dp_100_no_ssc_cmn_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_DP, TYPE_USB, NO_SSC), &sl_dp_100_no_ssc_cmn_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_NONE, NO_SSC), NULL},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_NONE, EXTERNAL_SSC), NULL},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_NONE, INTERNAL_SSC), &sl_pcie_100_int_ssc_cmn_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_SGMII, NO_SSC), &pcie_100_no_ssc_cmn_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_SGMII, EXTERNAL_SSC), &pcie_100_no_ssc_cmn_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_SGMII, INTERNAL_SSC), &pcie_100_int_ssc_cmn_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_QSGMII, NO_SSC), &pcie_100_no_ssc_cmn_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_QSGMII, EXTERNAL_SSC), &pcie_100_no_ssc_cmn_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_QSGMII, INTERNAL_SSC), &pcie_100_int_ssc_cmn_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_USB, NO_SSC), &pcie_100_no_ssc_cmn_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_USB, EXTERNAL_SSC), &pcie_100_no_ssc_cmn_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_USB, INTERNAL_SSC), &pcie_100_int_ssc_cmn_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_DP, NO_SSC), NULL},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_NONE, NO_SSC), &sl_sgmii_100_no_ssc_cmn_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_PCIE, NO_SSC), &sgmii_100_no_ssc_cmn_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_PCIE, EXTERNAL_SSC), &sgmii_100_no_ssc_cmn_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_PCIE, INTERNAL_SSC), &sgmii_100_int_ssc_cmn_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_USB, NO_SSC), &sgmii_100_no_ssc_cmn_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_USB, EXTERNAL_SSC), &sgmii_100_no_ssc_cmn_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_USB, INTERNAL_SSC), &sgmii_100_no_ssc_cmn_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_NONE, NO_SSC), &sl_qsgmii_100_no_ssc_cmn_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_PCIE, NO_SSC), &qsgmii_100_no_ssc_cmn_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_PCIE, EXTERNAL_SSC), &qsgmii_100_no_ssc_cmn_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_PCIE, INTERNAL_SSC), &qsgmii_100_int_ssc_cmn_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_USB, NO_SSC), &qsgmii_100_no_ssc_cmn_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_USB, EXTERNAL_SSC), &qsgmii_100_no_ssc_cmn_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_USB, INTERNAL_SSC), &qsgmii_100_no_ssc_cmn_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_NONE, NO_SSC), &sl_usb_100_no_ssc_cmn_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_NONE, EXTERNAL_SSC), &sl_usb_100_no_ssc_cmn_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_NONE, INTERNAL_SSC), &sl_usb_100_int_ssc_cmn_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_PCIE, NO_SSC), &usb_100_no_ssc_cmn_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_PCIE, EXTERNAL_SSC), &usb_100_no_ssc_cmn_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_PCIE, INTERNAL_SSC), &usb_100_int_ssc_cmn_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_SGMII, NO_SSC), &sl_usb_100_no_ssc_cmn_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_SGMII, EXTERNAL_SSC), &sl_usb_100_no_ssc_cmn_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_SGMII, INTERNAL_SSC), &sl_usb_100_int_ssc_cmn_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_QSGMII, NO_SSC), &sl_usb_100_no_ssc_cmn_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_QSGMII, EXTERNAL_SSC), &sl_usb_100_no_ssc_cmn_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_QSGMII, INTERNAL_SSC), &sl_usb_100_int_ssc_cmn_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_DP, NO_SSC), &usb_100_no_ssc_cmn_vals},
+
+	{CDNS_TORRENT_KEY(CLK_156_25_MHZ, CLK_156_25_MHZ, TYPE_USXGMII, TYPE_NONE, NO_SSC), &sl_usxgmii_156_25_no_ssc_cmn_vals},
+};
+
+static struct cdns_torrent_vals_entry cdns_tx_ln_vals_entries[] = {
+	{CDNS_TORRENT_KEY(CLK_19_2_MHZ, CLK_19_2_MHZ, TYPE_DP, TYPE_NONE, NO_SSC), &sl_dp_19_2_no_ssc_tx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_25_MHZ, CLK_25_MHZ, TYPE_DP, TYPE_NONE, NO_SSC), &sl_dp_25_no_ssc_tx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_DP, TYPE_NONE, NO_SSC), &sl_dp_100_no_ssc_tx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_DP, TYPE_PCIE, NO_SSC), &dp_100_no_ssc_tx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_DP, TYPE_USB, NO_SSC), &dp_100_no_ssc_tx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_NONE, NO_SSC), NULL},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_NONE, EXTERNAL_SSC), NULL},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_NONE, INTERNAL_SSC), NULL},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_SGMII, NO_SSC), NULL},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_SGMII, EXTERNAL_SSC), NULL},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_SGMII, INTERNAL_SSC), NULL},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_QSGMII, NO_SSC), NULL},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_QSGMII, EXTERNAL_SSC), NULL},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_QSGMII, INTERNAL_SSC), NULL},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_USB, NO_SSC), NULL},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_USB, EXTERNAL_SSC), NULL},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_USB, INTERNAL_SSC), NULL},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_DP, NO_SSC), NULL},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_NONE, NO_SSC), &sgmii_100_no_ssc_tx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_PCIE, NO_SSC), &sgmii_100_no_ssc_tx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_PCIE, EXTERNAL_SSC), &sgmii_100_no_ssc_tx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_PCIE, INTERNAL_SSC), &sgmii_100_no_ssc_tx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_USB, NO_SSC), &sgmii_100_no_ssc_tx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_USB, EXTERNAL_SSC), &sgmii_100_no_ssc_tx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_USB, INTERNAL_SSC), &sgmii_100_no_ssc_tx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_NONE, NO_SSC), &qsgmii_100_no_ssc_tx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_PCIE, NO_SSC), &qsgmii_100_no_ssc_tx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_PCIE, EXTERNAL_SSC), &qsgmii_100_no_ssc_tx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_PCIE, INTERNAL_SSC), &qsgmii_100_no_ssc_tx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_USB, NO_SSC), &qsgmii_100_no_ssc_tx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_USB, EXTERNAL_SSC), &qsgmii_100_no_ssc_tx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_USB, INTERNAL_SSC), &qsgmii_100_no_ssc_tx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_NONE, NO_SSC), &usb_100_no_ssc_tx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_NONE, EXTERNAL_SSC), &usb_100_no_ssc_tx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_NONE, INTERNAL_SSC), &usb_100_no_ssc_tx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_PCIE, NO_SSC), &usb_100_no_ssc_tx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_PCIE, EXTERNAL_SSC), &usb_100_no_ssc_tx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_PCIE, INTERNAL_SSC), &usb_100_no_ssc_tx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_SGMII, NO_SSC), &usb_100_no_ssc_tx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_SGMII, EXTERNAL_SSC), &usb_100_no_ssc_tx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_SGMII, INTERNAL_SSC), &usb_100_no_ssc_tx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_QSGMII, NO_SSC), &usb_100_no_ssc_tx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_QSGMII, EXTERNAL_SSC), &usb_100_no_ssc_tx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_QSGMII, INTERNAL_SSC), &usb_100_no_ssc_tx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_DP, NO_SSC), &usb_100_no_ssc_tx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_156_25_MHZ, CLK_156_25_MHZ, TYPE_USXGMII, TYPE_NONE, NO_SSC), &usxgmii_156_25_no_ssc_tx_ln_vals},
+};
+
+static struct cdns_torrent_vals_entry cdns_rx_ln_vals_entries[] = {
+	{CDNS_TORRENT_KEY(CLK_19_2_MHZ, CLK_19_2_MHZ, TYPE_DP, TYPE_NONE, NO_SSC), &sl_dp_19_2_no_ssc_rx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_25_MHZ, CLK_25_MHZ, TYPE_DP, TYPE_NONE, NO_SSC), &sl_dp_25_no_ssc_rx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_DP, TYPE_NONE, NO_SSC), &sl_dp_100_no_ssc_rx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_DP, TYPE_PCIE, NO_SSC), &dp_100_no_ssc_rx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_DP, TYPE_USB, NO_SSC), &dp_100_no_ssc_rx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_NONE, NO_SSC), &pcie_100_no_ssc_rx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_NONE, EXTERNAL_SSC), &pcie_100_no_ssc_rx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_NONE, INTERNAL_SSC), &pcie_100_no_ssc_rx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_SGMII, NO_SSC), &pcie_100_no_ssc_rx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_SGMII, EXTERNAL_SSC), &pcie_100_no_ssc_rx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_SGMII, INTERNAL_SSC), &pcie_100_no_ssc_rx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_QSGMII, NO_SSC), &pcie_100_no_ssc_rx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_QSGMII, EXTERNAL_SSC), &pcie_100_no_ssc_rx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_QSGMII, INTERNAL_SSC), &pcie_100_no_ssc_rx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_USB, NO_SSC), &pcie_100_no_ssc_rx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_USB, EXTERNAL_SSC), &pcie_100_no_ssc_rx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_USB, INTERNAL_SSC), &pcie_100_no_ssc_rx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_DP, NO_SSC), &pcie_100_no_ssc_rx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_NONE, NO_SSC), &sgmii_100_no_ssc_rx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_PCIE, NO_SSC), &sgmii_100_no_ssc_rx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_PCIE, EXTERNAL_SSC), &sgmii_100_no_ssc_rx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_PCIE, INTERNAL_SSC), &sgmii_100_no_ssc_rx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_USB, NO_SSC), &sgmii_100_no_ssc_rx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_USB, EXTERNAL_SSC), &sgmii_100_no_ssc_rx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_USB, INTERNAL_SSC), &sgmii_100_no_ssc_rx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_NONE, NO_SSC), &qsgmii_100_no_ssc_rx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_PCIE, NO_SSC), &qsgmii_100_no_ssc_rx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_PCIE, EXTERNAL_SSC), &qsgmii_100_no_ssc_rx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_PCIE, INTERNAL_SSC), &qsgmii_100_no_ssc_rx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_USB, NO_SSC), &qsgmii_100_no_ssc_rx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_USB, EXTERNAL_SSC), &qsgmii_100_no_ssc_rx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_USB, INTERNAL_SSC), &qsgmii_100_no_ssc_rx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_NONE, NO_SSC), &usb_100_no_ssc_rx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_NONE, EXTERNAL_SSC), &usb_100_no_ssc_rx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_NONE, INTERNAL_SSC), &usb_100_no_ssc_rx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_PCIE, NO_SSC), &usb_100_no_ssc_rx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_PCIE, EXTERNAL_SSC), &usb_100_no_ssc_rx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_PCIE, INTERNAL_SSC), &usb_100_no_ssc_rx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_SGMII, NO_SSC), &usb_100_no_ssc_rx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_SGMII, EXTERNAL_SSC), &usb_100_no_ssc_rx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_SGMII, INTERNAL_SSC), &usb_100_no_ssc_rx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_QSGMII, NO_SSC), &usb_100_no_ssc_rx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_QSGMII, EXTERNAL_SSC), &usb_100_no_ssc_rx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_QSGMII, INTERNAL_SSC), &usb_100_no_ssc_rx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_DP, NO_SSC), &usb_100_no_ssc_rx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_156_25_MHZ, CLK_156_25_MHZ, TYPE_USXGMII, TYPE_NONE, NO_SSC), &usxgmii_156_25_no_ssc_rx_ln_vals},
+};
+
 static const struct cdns_torrent_data cdns_map_torrent = {
 	.block_offset_shift = 0x2,
 	.reg_offset_shift = 0x2,
-	.link_cmn_vals = {
-		[TYPE_DP] = {
-			[TYPE_NONE] = {
-				[NO_SSC] = &sl_dp_link_cmn_vals,
-			},
-			[TYPE_PCIE] = {
-				[NO_SSC] = &pcie_dp_link_cmn_vals,
-			},
-			[TYPE_USB] = {
-				[NO_SSC] = &usb_dp_link_cmn_vals,
-			},
-		},
-		[TYPE_PCIE] = {
-			[TYPE_NONE] = {
-				[NO_SSC] = NULL,
-				[EXTERNAL_SSC] = NULL,
-				[INTERNAL_SSC] = NULL,
-			},
-			[TYPE_SGMII] = {
-				[NO_SSC] = &pcie_sgmii_link_cmn_vals,
-				[EXTERNAL_SSC] = &pcie_sgmii_link_cmn_vals,
-				[INTERNAL_SSC] = &pcie_sgmii_link_cmn_vals,
-			},
-			[TYPE_QSGMII] = {
-				[NO_SSC] = &pcie_sgmii_link_cmn_vals,
-				[EXTERNAL_SSC] = &pcie_sgmii_link_cmn_vals,
-				[INTERNAL_SSC] = &pcie_sgmii_link_cmn_vals,
-			},
-			[TYPE_USB] = {
-				[NO_SSC] = &pcie_usb_link_cmn_vals,
-				[EXTERNAL_SSC] = &pcie_usb_link_cmn_vals,
-				[INTERNAL_SSC] = &pcie_usb_link_cmn_vals,
-			},
-			[TYPE_DP] = {
-				[NO_SSC] = &pcie_dp_link_cmn_vals,
-			},
-		},
-		[TYPE_SGMII] = {
-			[TYPE_NONE] = {
-				[NO_SSC] = &sl_sgmii_link_cmn_vals,
-			},
-			[TYPE_PCIE] = {
-				[NO_SSC] = &pcie_sgmii_link_cmn_vals,
-				[EXTERNAL_SSC] = &pcie_sgmii_link_cmn_vals,
-				[INTERNAL_SSC] = &pcie_sgmii_link_cmn_vals,
-			},
-			[TYPE_USB] = {
-				[NO_SSC] = &usb_sgmii_link_cmn_vals,
-				[EXTERNAL_SSC] = &usb_sgmii_link_cmn_vals,
-				[INTERNAL_SSC] = &usb_sgmii_link_cmn_vals,
-			},
-		},
-		[TYPE_QSGMII] = {
-			[TYPE_NONE] = {
-				[NO_SSC] = &sl_sgmii_link_cmn_vals,
-			},
-			[TYPE_PCIE] = {
-				[NO_SSC] = &pcie_sgmii_link_cmn_vals,
-				[EXTERNAL_SSC] = &pcie_sgmii_link_cmn_vals,
-				[INTERNAL_SSC] = &pcie_sgmii_link_cmn_vals,
-			},
-			[TYPE_USB] = {
-				[NO_SSC] = &usb_sgmii_link_cmn_vals,
-				[EXTERNAL_SSC] = &usb_sgmii_link_cmn_vals,
-				[INTERNAL_SSC] = &usb_sgmii_link_cmn_vals,
-			},
-		},
-		[TYPE_USB] = {
-			[TYPE_NONE] = {
-				[NO_SSC] = &sl_usb_link_cmn_vals,
-				[EXTERNAL_SSC] = &sl_usb_link_cmn_vals,
-				[INTERNAL_SSC] = &sl_usb_link_cmn_vals,
-			},
-			[TYPE_PCIE] = {
-				[NO_SSC] = &pcie_usb_link_cmn_vals,
-				[EXTERNAL_SSC] = &pcie_usb_link_cmn_vals,
-				[INTERNAL_SSC] = &pcie_usb_link_cmn_vals,
-			},
-			[TYPE_SGMII] = {
-				[NO_SSC] = &usb_sgmii_link_cmn_vals,
-				[EXTERNAL_SSC] = &usb_sgmii_link_cmn_vals,
-				[INTERNAL_SSC] = &usb_sgmii_link_cmn_vals,
-			},
-			[TYPE_QSGMII] = {
-				[NO_SSC] = &usb_sgmii_link_cmn_vals,
-				[EXTERNAL_SSC] = &usb_sgmii_link_cmn_vals,
-				[INTERNAL_SSC] = &usb_sgmii_link_cmn_vals,
-			},
-			[TYPE_DP] = {
-				[NO_SSC] = &usb_dp_link_cmn_vals,
-			},
-		},
-		[TYPE_USXGMII] = {
-			[TYPE_NONE] = {
-				[NO_SSC] = &sl_usxgmii_link_cmn_vals,
-			},
-		},
-	},
-	.xcvr_diag_vals = {
-		[TYPE_DP] = {
-			[TYPE_NONE] = {
-				[NO_SSC] = &sl_dp_xcvr_diag_ln_vals,
-			},
-			[TYPE_PCIE] = {
-				[NO_SSC] = &dp_pcie_xcvr_diag_ln_vals,
-			},
-			[TYPE_USB] = {
-				[NO_SSC] = &dp_usb_xcvr_diag_ln_vals,
-			},
-		},
-		[TYPE_PCIE] = {
-			[TYPE_NONE] = {
-				[NO_SSC] = NULL,
-				[EXTERNAL_SSC] = NULL,
-				[INTERNAL_SSC] = NULL,
-			},
-			[TYPE_SGMII] = {
-				[NO_SSC] = &pcie_sgmii_xcvr_diag_ln_vals,
-				[EXTERNAL_SSC] = &pcie_sgmii_xcvr_diag_ln_vals,
-				[INTERNAL_SSC] = &pcie_sgmii_xcvr_diag_ln_vals,
-			},
-			[TYPE_QSGMII] = {
-				[NO_SSC] = &pcie_sgmii_xcvr_diag_ln_vals,
-				[EXTERNAL_SSC] = &pcie_sgmii_xcvr_diag_ln_vals,
-				[INTERNAL_SSC] = &pcie_sgmii_xcvr_diag_ln_vals,
-			},
-			[TYPE_USB] = {
-				[NO_SSC] = &pcie_usb_xcvr_diag_ln_vals,
-				[EXTERNAL_SSC] = &pcie_usb_xcvr_diag_ln_vals,
-				[INTERNAL_SSC] = &pcie_usb_xcvr_diag_ln_vals,
-			},
-			[TYPE_DP] = {
-				[NO_SSC] = &pcie_dp_xcvr_diag_ln_vals,
-			},
-		},
-		[TYPE_SGMII] = {
-			[TYPE_NONE] = {
-				[NO_SSC] = &sl_sgmii_xcvr_diag_ln_vals,
-			},
-			[TYPE_PCIE] = {
-				[NO_SSC] = &sgmii_pcie_xcvr_diag_ln_vals,
-				[EXTERNAL_SSC] = &sgmii_pcie_xcvr_diag_ln_vals,
-				[INTERNAL_SSC] = &sgmii_pcie_xcvr_diag_ln_vals,
-			},
-			[TYPE_USB] = {
-				[NO_SSC] = &sgmii_usb_xcvr_diag_ln_vals,
-				[EXTERNAL_SSC] = &sgmii_usb_xcvr_diag_ln_vals,
-				[INTERNAL_SSC] = &sgmii_usb_xcvr_diag_ln_vals,
-			},
-		},
-		[TYPE_QSGMII] = {
-			[TYPE_NONE] = {
-				[NO_SSC] = &sl_sgmii_xcvr_diag_ln_vals,
-			},
-			[TYPE_PCIE] = {
-				[NO_SSC] = &sgmii_pcie_xcvr_diag_ln_vals,
-				[EXTERNAL_SSC] = &sgmii_pcie_xcvr_diag_ln_vals,
-				[INTERNAL_SSC] = &sgmii_pcie_xcvr_diag_ln_vals,
-			},
-			[TYPE_USB] = {
-				[NO_SSC] = &sgmii_usb_xcvr_diag_ln_vals,
-				[EXTERNAL_SSC] = &sgmii_usb_xcvr_diag_ln_vals,
-				[INTERNAL_SSC] = &sgmii_usb_xcvr_diag_ln_vals,
-			},
-		},
-		[TYPE_USB] = {
-			[TYPE_NONE] = {
-				[NO_SSC] = &sl_usb_xcvr_diag_ln_vals,
-				[EXTERNAL_SSC] = &sl_usb_xcvr_diag_ln_vals,
-				[INTERNAL_SSC] = &sl_usb_xcvr_diag_ln_vals,
-			},
-			[TYPE_PCIE] = {
-				[NO_SSC] = &usb_pcie_xcvr_diag_ln_vals,
-				[EXTERNAL_SSC] = &usb_pcie_xcvr_diag_ln_vals,
-				[INTERNAL_SSC] = &usb_pcie_xcvr_diag_ln_vals,
-			},
-			[TYPE_SGMII] = {
-				[NO_SSC] = &usb_sgmii_xcvr_diag_ln_vals,
-				[EXTERNAL_SSC] = &usb_sgmii_xcvr_diag_ln_vals,
-				[INTERNAL_SSC] = &usb_sgmii_xcvr_diag_ln_vals,
-			},
-			[TYPE_QSGMII] = {
-				[NO_SSC] = &usb_sgmii_xcvr_diag_ln_vals,
-				[EXTERNAL_SSC] = &usb_sgmii_xcvr_diag_ln_vals,
-				[INTERNAL_SSC] = &usb_sgmii_xcvr_diag_ln_vals,
-			},
-			[TYPE_DP] = {
-				[NO_SSC] = &usb_dp_xcvr_diag_ln_vals,
-			},
-		},
-		[TYPE_USXGMII] = {
-			[TYPE_NONE] = {
-				[NO_SSC] = &sl_usxgmii_xcvr_diag_ln_vals,
-			},
-		},
+	.link_cmn_vals_tbl = {
+		.entries = link_cmn_vals_entries,
+		.num_entries = ARRAY_SIZE(link_cmn_vals_entries),
 	},
-	.pcs_cmn_vals = {
-		[TYPE_USB] = {
-			[TYPE_NONE] = {
-				[NO_SSC] = &usb_phy_pcs_cmn_vals,
-				[EXTERNAL_SSC] = &usb_phy_pcs_cmn_vals,
-				[INTERNAL_SSC] = &usb_phy_pcs_cmn_vals,
-			},
-			[TYPE_PCIE] = {
-				[NO_SSC] = &usb_phy_pcs_cmn_vals,
-				[EXTERNAL_SSC] = &usb_phy_pcs_cmn_vals,
-				[INTERNAL_SSC] = &usb_phy_pcs_cmn_vals,
-			},
-			[TYPE_SGMII] = {
-				[NO_SSC] = &usb_phy_pcs_cmn_vals,
-				[EXTERNAL_SSC] = &usb_phy_pcs_cmn_vals,
-				[INTERNAL_SSC] = &usb_phy_pcs_cmn_vals,
-			},
-			[TYPE_QSGMII] = {
-				[NO_SSC] = &usb_phy_pcs_cmn_vals,
-				[EXTERNAL_SSC] = &usb_phy_pcs_cmn_vals,
-				[INTERNAL_SSC] = &usb_phy_pcs_cmn_vals,
-			},
-			[TYPE_DP] = {
-				[NO_SSC] = &usb_phy_pcs_cmn_vals,
-			},
-		},
+	.xcvr_diag_vals_tbl = {
+		.entries = xcvr_diag_vals_entries,
+		.num_entries = ARRAY_SIZE(xcvr_diag_vals_entries),
 	},
-	.phy_pma_cmn_vals = {
-		[TYPE_USXGMII] = {
-			[TYPE_NONE] = {
-				[NO_SSC] = NULL,
-			},
-		},
+	.pcs_cmn_vals_tbl = {
+		.entries = pcs_cmn_vals_entries,
+		.num_entries = ARRAY_SIZE(pcs_cmn_vals_entries),
 	},
-	.cmn_vals = {
-		[CLK_19_2_MHZ] = {
-			[TYPE_DP] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &sl_dp_19_2_no_ssc_cmn_vals,
-				},
-			},
-		},
-		[CLK_25_MHZ] = {
-			[TYPE_DP] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &sl_dp_25_no_ssc_cmn_vals,
-				},
-			},
-		},
-		[CLK_100_MHZ] = {
-			[TYPE_DP] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &sl_dp_100_no_ssc_cmn_vals,
-				},
-				[TYPE_PCIE] = {
-					[NO_SSC] = &dp_100_no_ssc_cmn_vals,
-				},
-				[TYPE_USB] = {
-					[NO_SSC] = &sl_dp_100_no_ssc_cmn_vals,
-				},
-			},
-			[TYPE_PCIE] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = NULL,
-					[EXTERNAL_SSC] = NULL,
-					[INTERNAL_SSC] = &sl_pcie_100_int_ssc_cmn_vals,
-				},
-				[TYPE_SGMII] = {
-					[NO_SSC] = &pcie_100_no_ssc_cmn_vals,
-					[EXTERNAL_SSC] = &pcie_100_no_ssc_cmn_vals,
-					[INTERNAL_SSC] = &pcie_100_int_ssc_cmn_vals,
-				},
-				[TYPE_QSGMII] = {
-					[NO_SSC] = &pcie_100_no_ssc_cmn_vals,
-					[EXTERNAL_SSC] = &pcie_100_no_ssc_cmn_vals,
-					[INTERNAL_SSC] = &pcie_100_int_ssc_cmn_vals,
-				},
-				[TYPE_USB] = {
-					[NO_SSC] = &pcie_100_no_ssc_cmn_vals,
-					[EXTERNAL_SSC] = &pcie_100_no_ssc_cmn_vals,
-					[INTERNAL_SSC] = &pcie_100_int_ssc_cmn_vals,
-				},
-				[TYPE_DP] = {
-					[NO_SSC] = NULL,
-				},
-			},
-			[TYPE_SGMII] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &sl_sgmii_100_no_ssc_cmn_vals,
-				},
-				[TYPE_PCIE] = {
-					[NO_SSC] = &sgmii_100_no_ssc_cmn_vals,
-					[EXTERNAL_SSC] = &sgmii_100_no_ssc_cmn_vals,
-					[INTERNAL_SSC] = &sgmii_100_int_ssc_cmn_vals,
-				},
-				[TYPE_USB] = {
-					[NO_SSC] = &sgmii_100_no_ssc_cmn_vals,
-					[EXTERNAL_SSC] = &sgmii_100_no_ssc_cmn_vals,
-					[INTERNAL_SSC] = &sgmii_100_no_ssc_cmn_vals,
-				},
-			},
-			[TYPE_QSGMII] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &sl_qsgmii_100_no_ssc_cmn_vals,
-				},
-				[TYPE_PCIE] = {
-					[NO_SSC] = &qsgmii_100_no_ssc_cmn_vals,
-					[EXTERNAL_SSC] = &qsgmii_100_no_ssc_cmn_vals,
-					[INTERNAL_SSC] = &qsgmii_100_int_ssc_cmn_vals,
-				},
-				[TYPE_USB] = {
-					[NO_SSC] = &qsgmii_100_no_ssc_cmn_vals,
-					[EXTERNAL_SSC] = &qsgmii_100_no_ssc_cmn_vals,
-					[INTERNAL_SSC] = &qsgmii_100_no_ssc_cmn_vals,
-				},
-			},
-			[TYPE_USB] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &sl_usb_100_no_ssc_cmn_vals,
-					[EXTERNAL_SSC] = &sl_usb_100_no_ssc_cmn_vals,
-					[INTERNAL_SSC] = &sl_usb_100_int_ssc_cmn_vals,
-				},
-				[TYPE_PCIE] = {
-					[NO_SSC] = &usb_100_no_ssc_cmn_vals,
-					[EXTERNAL_SSC] = &usb_100_no_ssc_cmn_vals,
-					[INTERNAL_SSC] = &usb_100_int_ssc_cmn_vals,
-				},
-				[TYPE_SGMII] = {
-					[NO_SSC] = &sl_usb_100_no_ssc_cmn_vals,
-					[EXTERNAL_SSC] = &sl_usb_100_no_ssc_cmn_vals,
-					[INTERNAL_SSC] = &sl_usb_100_int_ssc_cmn_vals,
-				},
-				[TYPE_QSGMII] = {
-					[NO_SSC] = &sl_usb_100_no_ssc_cmn_vals,
-					[EXTERNAL_SSC] = &sl_usb_100_no_ssc_cmn_vals,
-					[INTERNAL_SSC] = &sl_usb_100_int_ssc_cmn_vals,
-				},
-				[TYPE_DP] = {
-					[NO_SSC] = &usb_100_no_ssc_cmn_vals,
-				},
-			},
-		},
-		[CLK_156_25_MHZ] = {
-			[TYPE_USXGMII] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &sl_usxgmii_156_25_no_ssc_cmn_vals,
-				},
-			},
-		},
+	.cmn_vals_tbl = {
+		.entries = cmn_vals_entries,
+		.num_entries = ARRAY_SIZE(cmn_vals_entries),
 	},
-	.tx_ln_vals = {
-		[CLK_19_2_MHZ] = {
-			[TYPE_DP] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &sl_dp_19_2_no_ssc_tx_ln_vals,
-				},
-			},
-		},
-		[CLK_25_MHZ] = {
-			[TYPE_DP] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &sl_dp_25_no_ssc_tx_ln_vals,
-				},
-			},
-		},
-		[CLK_100_MHZ] = {
-			[TYPE_DP] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &sl_dp_100_no_ssc_tx_ln_vals,
-				},
-				[TYPE_PCIE] = {
-					[NO_SSC] = &dp_100_no_ssc_tx_ln_vals,
-				},
-				[TYPE_USB] = {
-					[NO_SSC] = &dp_100_no_ssc_tx_ln_vals,
-				},
-			},
-			[TYPE_PCIE] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = NULL,
-					[EXTERNAL_SSC] = NULL,
-					[INTERNAL_SSC] = NULL,
-				},
-				[TYPE_SGMII] = {
-					[NO_SSC] = NULL,
-					[EXTERNAL_SSC] = NULL,
-					[INTERNAL_SSC] = NULL,
-				},
-				[TYPE_QSGMII] = {
-					[NO_SSC] = NULL,
-					[EXTERNAL_SSC] = NULL,
-					[INTERNAL_SSC] = NULL,
-				},
-				[TYPE_USB] = {
-					[NO_SSC] = NULL,
-					[EXTERNAL_SSC] = NULL,
-					[INTERNAL_SSC] = NULL,
-				},
-				[TYPE_DP] = {
-					[NO_SSC] = NULL,
-				},
-			},
-			[TYPE_SGMII] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &sgmii_100_no_ssc_tx_ln_vals,
-				},
-				[TYPE_PCIE] = {
-					[NO_SSC] = &sgmii_100_no_ssc_tx_ln_vals,
-					[EXTERNAL_SSC] = &sgmii_100_no_ssc_tx_ln_vals,
-					[INTERNAL_SSC] = &sgmii_100_no_ssc_tx_ln_vals,
-				},
-				[TYPE_USB] = {
-					[NO_SSC] = &sgmii_100_no_ssc_tx_ln_vals,
-					[EXTERNAL_SSC] = &sgmii_100_no_ssc_tx_ln_vals,
-					[INTERNAL_SSC] = &sgmii_100_no_ssc_tx_ln_vals,
-				},
-			},
-			[TYPE_QSGMII] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &qsgmii_100_no_ssc_tx_ln_vals,
-				},
-				[TYPE_PCIE] = {
-					[NO_SSC] = &qsgmii_100_no_ssc_tx_ln_vals,
-					[EXTERNAL_SSC] = &qsgmii_100_no_ssc_tx_ln_vals,
-					[INTERNAL_SSC] = &qsgmii_100_no_ssc_tx_ln_vals,
-				},
-				[TYPE_USB] = {
-					[NO_SSC] = &qsgmii_100_no_ssc_tx_ln_vals,
-					[EXTERNAL_SSC] = &qsgmii_100_no_ssc_tx_ln_vals,
-					[INTERNAL_SSC] = &qsgmii_100_no_ssc_tx_ln_vals,
-				},
-			},
-			[TYPE_USB] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &usb_100_no_ssc_tx_ln_vals,
-					[EXTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
-					[INTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
-				},
-				[TYPE_PCIE] = {
-					[NO_SSC] = &usb_100_no_ssc_tx_ln_vals,
-					[EXTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
-					[INTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
-				},
-				[TYPE_SGMII] = {
-					[NO_SSC] = &usb_100_no_ssc_tx_ln_vals,
-					[EXTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
-					[INTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
-				},
-				[TYPE_QSGMII] = {
-					[NO_SSC] = &usb_100_no_ssc_tx_ln_vals,
-					[EXTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
-					[INTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
-				},
-				[TYPE_DP] = {
-					[NO_SSC] = &usb_100_no_ssc_tx_ln_vals,
-				},
-			},
-		},
-		[CLK_156_25_MHZ] = {
-			[TYPE_USXGMII] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &usxgmii_156_25_no_ssc_tx_ln_vals,
-				},
-			},
-		},
+	.tx_ln_vals_tbl = {
+		.entries = cdns_tx_ln_vals_entries,
+		.num_entries = ARRAY_SIZE(cdns_tx_ln_vals_entries),
 	},
-	.rx_ln_vals = {
-		[CLK_19_2_MHZ] = {
-			[TYPE_DP] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &sl_dp_19_2_no_ssc_rx_ln_vals,
-				},
-			},
-		},
-		[CLK_25_MHZ] = {
-			[TYPE_DP] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &sl_dp_25_no_ssc_rx_ln_vals,
-				},
-			},
-		},
-		[CLK_100_MHZ] = {
-			[TYPE_DP] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &sl_dp_100_no_ssc_rx_ln_vals,
-				},
-				[TYPE_PCIE] = {
-					[NO_SSC] = &dp_100_no_ssc_rx_ln_vals,
-				},
-				[TYPE_USB] = {
-					[NO_SSC] = &dp_100_no_ssc_rx_ln_vals,
-				},
-			},
-			[TYPE_PCIE] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &pcie_100_no_ssc_rx_ln_vals,
-					[EXTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
-					[INTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
-				},
-				[TYPE_SGMII] = {
-					[NO_SSC] = &pcie_100_no_ssc_rx_ln_vals,
-					[EXTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
-					[INTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
-				},
-				[TYPE_QSGMII] = {
-					[NO_SSC] = &pcie_100_no_ssc_rx_ln_vals,
-					[EXTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
-					[INTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
-				},
-				[TYPE_USB] = {
-					[NO_SSC] = &pcie_100_no_ssc_rx_ln_vals,
-					[EXTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
-					[INTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
-				},
-				[TYPE_DP] = {
-					[NO_SSC] = &pcie_100_no_ssc_rx_ln_vals,
-				},
-			},
-			[TYPE_SGMII] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
-				},
-				[TYPE_PCIE] = {
-					[NO_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
-					[EXTERNAL_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
-					[INTERNAL_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
-				},
-				[TYPE_USB] = {
-					[NO_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
-					[EXTERNAL_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
-					[INTERNAL_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
-				},
-			},
-			[TYPE_QSGMII] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
-				},
-				[TYPE_PCIE] = {
-					[NO_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
-					[EXTERNAL_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
-					[INTERNAL_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
-				},
-				[TYPE_USB] = {
-					[NO_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
-					[EXTERNAL_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
-					[INTERNAL_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
-				},
-			},
-			[TYPE_USB] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &usb_100_no_ssc_rx_ln_vals,
-					[EXTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
-					[INTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
-				},
-				[TYPE_PCIE] = {
-					[NO_SSC] = &usb_100_no_ssc_rx_ln_vals,
-					[EXTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
-					[INTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
-				},
-				[TYPE_SGMII] = {
-					[NO_SSC] = &usb_100_no_ssc_rx_ln_vals,
-					[EXTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
-					[INTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
-				},
-				[TYPE_QSGMII] = {
-					[NO_SSC] = &usb_100_no_ssc_rx_ln_vals,
-					[EXTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
-					[INTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
-				},
-				[TYPE_DP] = {
-					[NO_SSC] = &usb_100_no_ssc_rx_ln_vals,
-				},
-			},
-		},
-		[CLK_156_25_MHZ] = {
-			[TYPE_USXGMII] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &usxgmii_156_25_no_ssc_rx_ln_vals,
-				},
-			},
-		},
+	.rx_ln_vals_tbl = {
+		.entries = cdns_rx_ln_vals_entries,
+		.num_entries = ARRAY_SIZE(cdns_rx_ln_vals_entries),
 	},
 };
 
+static struct cdns_torrent_vals_entry j721e_phy_pma_cmn_vals_entries[] = {
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_USXGMII, TYPE_NONE), &ti_usxgmii_phy_pma_cmn_vals},
+};
+
+static struct cdns_torrent_vals_entry ti_tx_ln_vals_entries[] = {
+	{CDNS_TORRENT_KEY(CLK_19_2_MHZ, CLK_19_2_MHZ, TYPE_DP, TYPE_NONE, NO_SSC), &sl_dp_19_2_no_ssc_tx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_25_MHZ, CLK_25_MHZ, TYPE_DP, TYPE_NONE, NO_SSC), &sl_dp_25_no_ssc_tx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_DP, TYPE_NONE, NO_SSC), &sl_dp_100_no_ssc_tx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_DP, TYPE_PCIE, NO_SSC), &dp_100_no_ssc_tx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_DP, TYPE_USB, NO_SSC), &dp_100_no_ssc_tx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_NONE, NO_SSC), NULL},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_NONE, EXTERNAL_SSC), NULL},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_NONE, INTERNAL_SSC), NULL},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_SGMII, NO_SSC), NULL},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_SGMII, EXTERNAL_SSC), NULL},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_SGMII, INTERNAL_SSC), NULL},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_QSGMII, NO_SSC), NULL},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_QSGMII, EXTERNAL_SSC), NULL},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_QSGMII, INTERNAL_SSC), NULL},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_USB, NO_SSC), NULL},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_USB, EXTERNAL_SSC), NULL},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_USB, INTERNAL_SSC), NULL},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_PCIE, TYPE_DP, NO_SSC), NULL},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_NONE, NO_SSC), &ti_sgmii_100_no_ssc_tx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_PCIE, NO_SSC), &ti_sgmii_100_no_ssc_tx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_PCIE, EXTERNAL_SSC), &ti_sgmii_100_no_ssc_tx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_PCIE, INTERNAL_SSC), &ti_sgmii_100_no_ssc_tx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_USB, NO_SSC), &ti_sgmii_100_no_ssc_tx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_USB, EXTERNAL_SSC), &ti_sgmii_100_no_ssc_tx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_USB, INTERNAL_SSC), &ti_sgmii_100_no_ssc_tx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_NONE, NO_SSC), &ti_qsgmii_100_no_ssc_tx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_PCIE, NO_SSC), &ti_qsgmii_100_no_ssc_tx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_PCIE, EXTERNAL_SSC), &ti_qsgmii_100_no_ssc_tx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_PCIE, INTERNAL_SSC), &ti_qsgmii_100_no_ssc_tx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_USB, NO_SSC), &ti_qsgmii_100_no_ssc_tx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_USB, EXTERNAL_SSC), &ti_qsgmii_100_no_ssc_tx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_USB, INTERNAL_SSC), &ti_qsgmii_100_no_ssc_tx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_NONE, NO_SSC), &usb_100_no_ssc_tx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_NONE, EXTERNAL_SSC), &usb_100_no_ssc_tx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_NONE, INTERNAL_SSC), &usb_100_no_ssc_tx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_PCIE, NO_SSC), &usb_100_no_ssc_tx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_PCIE, EXTERNAL_SSC), &usb_100_no_ssc_tx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_PCIE, INTERNAL_SSC), &usb_100_no_ssc_tx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_SGMII, NO_SSC), &usb_100_no_ssc_tx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_SGMII, EXTERNAL_SSC), &usb_100_no_ssc_tx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_SGMII, INTERNAL_SSC), &usb_100_no_ssc_tx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_QSGMII, NO_SSC), &usb_100_no_ssc_tx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_QSGMII, EXTERNAL_SSC), &usb_100_no_ssc_tx_ln_vals},
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_QSGMII, INTERNAL_SSC), &usb_100_no_ssc_tx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_USB, TYPE_DP, NO_SSC), &usb_100_no_ssc_tx_ln_vals},
+
+	{CDNS_TORRENT_KEY(CLK_156_25_MHZ, CLK_156_25_MHZ, TYPE_USXGMII, TYPE_NONE, NO_SSC), &usxgmii_156_25_no_ssc_tx_ln_vals},
+};
+
 static const struct cdns_torrent_data ti_j721e_map_torrent = {
 	.block_offset_shift = 0x0,
 	.reg_offset_shift = 0x1,
-	.link_cmn_vals = {
-		[TYPE_DP] = {
-			[TYPE_NONE] = {
-				[NO_SSC] = &sl_dp_link_cmn_vals,
-			},
-			[TYPE_PCIE] = {
-				[NO_SSC] = &pcie_dp_link_cmn_vals,
-			},
-			[TYPE_USB] = {
-				[NO_SSC] = &usb_dp_link_cmn_vals,
-			},
-		},
-		[TYPE_PCIE] = {
-			[TYPE_NONE] = {
-				[NO_SSC] = NULL,
-				[EXTERNAL_SSC] = NULL,
-				[INTERNAL_SSC] = NULL,
-			},
-			[TYPE_SGMII] = {
-				[NO_SSC] = &pcie_sgmii_link_cmn_vals,
-				[EXTERNAL_SSC] = &pcie_sgmii_link_cmn_vals,
-				[INTERNAL_SSC] = &pcie_sgmii_link_cmn_vals,
-			},
-			[TYPE_QSGMII] = {
-				[NO_SSC] = &pcie_sgmii_link_cmn_vals,
-				[EXTERNAL_SSC] = &pcie_sgmii_link_cmn_vals,
-				[INTERNAL_SSC] = &pcie_sgmii_link_cmn_vals,
-			},
-			[TYPE_USB] = {
-				[NO_SSC] = &pcie_usb_link_cmn_vals,
-				[EXTERNAL_SSC] = &pcie_usb_link_cmn_vals,
-				[INTERNAL_SSC] = &pcie_usb_link_cmn_vals,
-			},
-			[TYPE_DP] = {
-				[NO_SSC] = &pcie_dp_link_cmn_vals,
-			},
-		},
-		[TYPE_SGMII] = {
-			[TYPE_NONE] = {
-				[NO_SSC] = &sl_sgmii_link_cmn_vals,
-			},
-			[TYPE_PCIE] = {
-				[NO_SSC] = &pcie_sgmii_link_cmn_vals,
-				[EXTERNAL_SSC] = &pcie_sgmii_link_cmn_vals,
-				[INTERNAL_SSC] = &pcie_sgmii_link_cmn_vals,
-			},
-			[TYPE_USB] = {
-				[NO_SSC] = &usb_sgmii_link_cmn_vals,
-				[EXTERNAL_SSC] = &usb_sgmii_link_cmn_vals,
-				[INTERNAL_SSC] = &usb_sgmii_link_cmn_vals,
-			},
-		},
-		[TYPE_QSGMII] = {
-			[TYPE_NONE] = {
-				[NO_SSC] = &sl_sgmii_link_cmn_vals,
-			},
-			[TYPE_PCIE] = {
-				[NO_SSC] = &pcie_sgmii_link_cmn_vals,
-				[EXTERNAL_SSC] = &pcie_sgmii_link_cmn_vals,
-				[INTERNAL_SSC] = &pcie_sgmii_link_cmn_vals,
-			},
-			[TYPE_USB] = {
-				[NO_SSC] = &usb_sgmii_link_cmn_vals,
-				[EXTERNAL_SSC] = &usb_sgmii_link_cmn_vals,
-				[INTERNAL_SSC] = &usb_sgmii_link_cmn_vals,
-			},
-		},
-		[TYPE_USB] = {
-			[TYPE_NONE] = {
-				[NO_SSC] = &sl_usb_link_cmn_vals,
-				[EXTERNAL_SSC] = &sl_usb_link_cmn_vals,
-				[INTERNAL_SSC] = &sl_usb_link_cmn_vals,
-			},
-			[TYPE_PCIE] = {
-				[NO_SSC] = &pcie_usb_link_cmn_vals,
-				[EXTERNAL_SSC] = &pcie_usb_link_cmn_vals,
-				[INTERNAL_SSC] = &pcie_usb_link_cmn_vals,
-			},
-			[TYPE_SGMII] = {
-				[NO_SSC] = &usb_sgmii_link_cmn_vals,
-				[EXTERNAL_SSC] = &usb_sgmii_link_cmn_vals,
-				[INTERNAL_SSC] = &usb_sgmii_link_cmn_vals,
-			},
-			[TYPE_QSGMII] = {
-				[NO_SSC] = &usb_sgmii_link_cmn_vals,
-				[EXTERNAL_SSC] = &usb_sgmii_link_cmn_vals,
-				[INTERNAL_SSC] = &usb_sgmii_link_cmn_vals,
-			},
-			[TYPE_DP] = {
-				[NO_SSC] = &usb_dp_link_cmn_vals,
-			},
-		},
-		[TYPE_USXGMII] = {
-			[TYPE_NONE] = {
-				[NO_SSC] = &sl_usxgmii_link_cmn_vals,
-			},
-		},
+	.link_cmn_vals_tbl = {
+		.entries = link_cmn_vals_entries,
+		.num_entries = ARRAY_SIZE(link_cmn_vals_entries),
 	},
-	.xcvr_diag_vals = {
-		[TYPE_DP] = {
-			[TYPE_NONE] = {
-				[NO_SSC] = &sl_dp_xcvr_diag_ln_vals,
-			},
-			[TYPE_PCIE] = {
-				[NO_SSC] = &dp_pcie_xcvr_diag_ln_vals,
-			},
-			[TYPE_USB] = {
-				[NO_SSC] = &dp_usb_xcvr_diag_ln_vals,
-			},
-		},
-		[TYPE_PCIE] = {
-			[TYPE_NONE] = {
-				[NO_SSC] = NULL,
-				[EXTERNAL_SSC] = NULL,
-				[INTERNAL_SSC] = NULL,
-			},
-			[TYPE_SGMII] = {
-				[NO_SSC] = &pcie_sgmii_xcvr_diag_ln_vals,
-				[EXTERNAL_SSC] = &pcie_sgmii_xcvr_diag_ln_vals,
-				[INTERNAL_SSC] = &pcie_sgmii_xcvr_diag_ln_vals,
-			},
-			[TYPE_QSGMII] = {
-				[NO_SSC] = &pcie_sgmii_xcvr_diag_ln_vals,
-				[EXTERNAL_SSC] = &pcie_sgmii_xcvr_diag_ln_vals,
-				[INTERNAL_SSC] = &pcie_sgmii_xcvr_diag_ln_vals,
-			},
-			[TYPE_USB] = {
-				[NO_SSC] = &pcie_usb_xcvr_diag_ln_vals,
-				[EXTERNAL_SSC] = &pcie_usb_xcvr_diag_ln_vals,
-				[INTERNAL_SSC] = &pcie_usb_xcvr_diag_ln_vals,
-			},
-			[TYPE_DP] = {
-				[NO_SSC] = &pcie_dp_xcvr_diag_ln_vals,
-			},
-		},
-		[TYPE_SGMII] = {
-			[TYPE_NONE] = {
-				[NO_SSC] = &sl_sgmii_xcvr_diag_ln_vals,
-			},
-			[TYPE_PCIE] = {
-				[NO_SSC] = &sgmii_pcie_xcvr_diag_ln_vals,
-				[EXTERNAL_SSC] = &sgmii_pcie_xcvr_diag_ln_vals,
-				[INTERNAL_SSC] = &sgmii_pcie_xcvr_diag_ln_vals,
-			},
-			[TYPE_USB] = {
-				[NO_SSC] = &sgmii_usb_xcvr_diag_ln_vals,
-				[EXTERNAL_SSC] = &sgmii_usb_xcvr_diag_ln_vals,
-				[INTERNAL_SSC] = &sgmii_usb_xcvr_diag_ln_vals,
-			},
-		},
-		[TYPE_QSGMII] = {
-			[TYPE_NONE] = {
-				[NO_SSC] = &sl_sgmii_xcvr_diag_ln_vals,
-			},
-			[TYPE_PCIE] = {
-				[NO_SSC] = &sgmii_pcie_xcvr_diag_ln_vals,
-				[EXTERNAL_SSC] = &sgmii_pcie_xcvr_diag_ln_vals,
-				[INTERNAL_SSC] = &sgmii_pcie_xcvr_diag_ln_vals,
-			},
-			[TYPE_USB] = {
-				[NO_SSC] = &sgmii_usb_xcvr_diag_ln_vals,
-				[EXTERNAL_SSC] = &sgmii_usb_xcvr_diag_ln_vals,
-				[INTERNAL_SSC] = &sgmii_usb_xcvr_diag_ln_vals,
-			},
-		},
-		[TYPE_USB] = {
-			[TYPE_NONE] = {
-				[NO_SSC] = &sl_usb_xcvr_diag_ln_vals,
-				[EXTERNAL_SSC] = &sl_usb_xcvr_diag_ln_vals,
-				[INTERNAL_SSC] = &sl_usb_xcvr_diag_ln_vals,
-			},
-			[TYPE_PCIE] = {
-				[NO_SSC] = &usb_pcie_xcvr_diag_ln_vals,
-				[EXTERNAL_SSC] = &usb_pcie_xcvr_diag_ln_vals,
-				[INTERNAL_SSC] = &usb_pcie_xcvr_diag_ln_vals,
-			},
-			[TYPE_SGMII] = {
-				[NO_SSC] = &usb_sgmii_xcvr_diag_ln_vals,
-				[EXTERNAL_SSC] = &usb_sgmii_xcvr_diag_ln_vals,
-				[INTERNAL_SSC] = &usb_sgmii_xcvr_diag_ln_vals,
-			},
-			[TYPE_QSGMII] = {
-				[NO_SSC] = &usb_sgmii_xcvr_diag_ln_vals,
-				[EXTERNAL_SSC] = &usb_sgmii_xcvr_diag_ln_vals,
-				[INTERNAL_SSC] = &usb_sgmii_xcvr_diag_ln_vals,
-			},
-			[TYPE_DP] = {
-				[NO_SSC] = &usb_dp_xcvr_diag_ln_vals,
-			},
-		},
-		[TYPE_USXGMII] = {
-			[TYPE_NONE] = {
-				[NO_SSC] = &sl_usxgmii_xcvr_diag_ln_vals,
-			},
-		},
+	.xcvr_diag_vals_tbl = {
+		.entries = xcvr_diag_vals_entries,
+		.num_entries = ARRAY_SIZE(xcvr_diag_vals_entries),
 	},
-	.pcs_cmn_vals = {
-		[TYPE_USB] = {
-			[TYPE_NONE] = {
-				[NO_SSC] = &usb_phy_pcs_cmn_vals,
-				[EXTERNAL_SSC] = &usb_phy_pcs_cmn_vals,
-				[INTERNAL_SSC] = &usb_phy_pcs_cmn_vals,
-			},
-			[TYPE_PCIE] = {
-				[NO_SSC] = &usb_phy_pcs_cmn_vals,
-				[EXTERNAL_SSC] = &usb_phy_pcs_cmn_vals,
-				[INTERNAL_SSC] = &usb_phy_pcs_cmn_vals,
-			},
-			[TYPE_SGMII] = {
-				[NO_SSC] = &usb_phy_pcs_cmn_vals,
-				[EXTERNAL_SSC] = &usb_phy_pcs_cmn_vals,
-				[INTERNAL_SSC] = &usb_phy_pcs_cmn_vals,
-			},
-			[TYPE_QSGMII] = {
-				[NO_SSC] = &usb_phy_pcs_cmn_vals,
-				[EXTERNAL_SSC] = &usb_phy_pcs_cmn_vals,
-				[INTERNAL_SSC] = &usb_phy_pcs_cmn_vals,
-			},
-			[TYPE_DP] = {
-				[NO_SSC] = &usb_phy_pcs_cmn_vals,
-			},
-		},
+	.pcs_cmn_vals_tbl = {
+		.entries = pcs_cmn_vals_entries,
+		.num_entries = ARRAY_SIZE(pcs_cmn_vals_entries),
 	},
-	.phy_pma_cmn_vals = {
-		[TYPE_USXGMII] = {
-			[TYPE_NONE] = {
-				[NO_SSC] = &ti_usxgmii_phy_pma_cmn_vals,
-			},
-		},
+	.phy_pma_cmn_vals_tbl = {
+		.entries = j721e_phy_pma_cmn_vals_entries,
+		.num_entries = ARRAY_SIZE(j721e_phy_pma_cmn_vals_entries),
 	},
-	.cmn_vals = {
-		[CLK_19_2_MHZ] = {
-			[TYPE_DP] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &sl_dp_19_2_no_ssc_cmn_vals,
-				},
-			},
-		},
-		[CLK_25_MHZ] = {
-			[TYPE_DP] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &sl_dp_25_no_ssc_cmn_vals,
-				},
-			},
-		},
-		[CLK_100_MHZ] = {
-			[TYPE_DP] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &sl_dp_100_no_ssc_cmn_vals,
-				},
-				[TYPE_PCIE] = {
-					[NO_SSC] = &dp_100_no_ssc_cmn_vals,
-				},
-				[TYPE_USB] = {
-					[NO_SSC] = &sl_dp_100_no_ssc_cmn_vals,
-				},
-			},
-			[TYPE_PCIE] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = NULL,
-					[EXTERNAL_SSC] = NULL,
-					[INTERNAL_SSC] = &sl_pcie_100_int_ssc_cmn_vals,
-				},
-				[TYPE_SGMII] = {
-					[NO_SSC] = &pcie_100_no_ssc_cmn_vals,
-					[EXTERNAL_SSC] = &pcie_100_no_ssc_cmn_vals,
-					[INTERNAL_SSC] = &pcie_100_int_ssc_cmn_vals,
-				},
-				[TYPE_QSGMII] = {
-					[NO_SSC] = &pcie_100_no_ssc_cmn_vals,
-					[EXTERNAL_SSC] = &pcie_100_no_ssc_cmn_vals,
-					[INTERNAL_SSC] = &pcie_100_int_ssc_cmn_vals,
-				},
-				[TYPE_USB] = {
-					[NO_SSC] = &pcie_100_no_ssc_cmn_vals,
-					[EXTERNAL_SSC] = &pcie_100_no_ssc_cmn_vals,
-					[INTERNAL_SSC] = &pcie_100_int_ssc_cmn_vals,
-				},
-				[TYPE_DP] = {
-					[NO_SSC] = NULL,
-				},
-			},
-			[TYPE_SGMII] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &sl_sgmii_100_no_ssc_cmn_vals,
-				},
-				[TYPE_PCIE] = {
-					[NO_SSC] = &sgmii_100_no_ssc_cmn_vals,
-					[EXTERNAL_SSC] = &sgmii_100_no_ssc_cmn_vals,
-					[INTERNAL_SSC] = &sgmii_100_int_ssc_cmn_vals,
-				},
-				[TYPE_USB] = {
-					[NO_SSC] = &sgmii_100_no_ssc_cmn_vals,
-					[EXTERNAL_SSC] = &sgmii_100_no_ssc_cmn_vals,
-					[INTERNAL_SSC] = &sgmii_100_no_ssc_cmn_vals,
-				},
-			},
-			[TYPE_QSGMII] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &sl_qsgmii_100_no_ssc_cmn_vals,
-				},
-				[TYPE_PCIE] = {
-					[NO_SSC] = &qsgmii_100_no_ssc_cmn_vals,
-					[EXTERNAL_SSC] = &qsgmii_100_no_ssc_cmn_vals,
-					[INTERNAL_SSC] = &qsgmii_100_int_ssc_cmn_vals,
-				},
-				[TYPE_USB] = {
-					[NO_SSC] = &qsgmii_100_no_ssc_cmn_vals,
-					[EXTERNAL_SSC] = &qsgmii_100_no_ssc_cmn_vals,
-					[INTERNAL_SSC] = &qsgmii_100_no_ssc_cmn_vals,
-				},
-			},
-			[TYPE_USB] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &sl_usb_100_no_ssc_cmn_vals,
-					[EXTERNAL_SSC] = &sl_usb_100_no_ssc_cmn_vals,
-					[INTERNAL_SSC] = &sl_usb_100_int_ssc_cmn_vals,
-				},
-				[TYPE_PCIE] = {
-					[NO_SSC] = &usb_100_no_ssc_cmn_vals,
-					[EXTERNAL_SSC] = &usb_100_no_ssc_cmn_vals,
-					[INTERNAL_SSC] = &usb_100_int_ssc_cmn_vals,
-				},
-				[TYPE_SGMII] = {
-					[NO_SSC] = &sl_usb_100_no_ssc_cmn_vals,
-					[EXTERNAL_SSC] = &sl_usb_100_no_ssc_cmn_vals,
-					[INTERNAL_SSC] = &sl_usb_100_int_ssc_cmn_vals,
-				},
-				[TYPE_QSGMII] = {
-					[NO_SSC] = &sl_usb_100_no_ssc_cmn_vals,
-					[EXTERNAL_SSC] = &sl_usb_100_no_ssc_cmn_vals,
-					[INTERNAL_SSC] = &sl_usb_100_int_ssc_cmn_vals,
-				},
-				[TYPE_DP] = {
-					[NO_SSC] = &usb_100_no_ssc_cmn_vals,
-				},
-			},
-		},
-		[CLK_156_25_MHZ] = {
-			[TYPE_USXGMII] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &sl_usxgmii_156_25_no_ssc_cmn_vals,
-				},
-			},
-		},
+	.cmn_vals_tbl = {
+		.entries = cmn_vals_entries,
+		.num_entries = ARRAY_SIZE(cmn_vals_entries),
 	},
-	.tx_ln_vals = {
-		[CLK_19_2_MHZ] = {
-			[TYPE_DP] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &sl_dp_19_2_no_ssc_tx_ln_vals,
-				},
-			},
-		},
-		[CLK_25_MHZ] = {
-			[TYPE_DP] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &sl_dp_25_no_ssc_tx_ln_vals,
-				},
-			},
-		},
-		[CLK_100_MHZ] = {
-			[TYPE_DP] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &sl_dp_100_no_ssc_tx_ln_vals,
-				},
-				[TYPE_PCIE] = {
-					[NO_SSC] = &dp_100_no_ssc_tx_ln_vals,
-				},
-				[TYPE_USB] = {
-					[NO_SSC] = &dp_100_no_ssc_tx_ln_vals,
-				},
-			},
-			[TYPE_PCIE] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = NULL,
-					[EXTERNAL_SSC] = NULL,
-					[INTERNAL_SSC] = NULL,
-				},
-				[TYPE_SGMII] = {
-					[NO_SSC] = NULL,
-					[EXTERNAL_SSC] = NULL,
-					[INTERNAL_SSC] = NULL,
-				},
-				[TYPE_QSGMII] = {
-					[NO_SSC] = NULL,
-					[EXTERNAL_SSC] = NULL,
-					[INTERNAL_SSC] = NULL,
-				},
-				[TYPE_USB] = {
-					[NO_SSC] = NULL,
-					[EXTERNAL_SSC] = NULL,
-					[INTERNAL_SSC] = NULL,
-				},
-				[TYPE_DP] = {
-					[NO_SSC] = NULL,
-				},
-			},
-			[TYPE_SGMII] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &ti_sgmii_100_no_ssc_tx_ln_vals,
-				},
-				[TYPE_PCIE] = {
-					[NO_SSC] = &ti_sgmii_100_no_ssc_tx_ln_vals,
-					[EXTERNAL_SSC] = &ti_sgmii_100_no_ssc_tx_ln_vals,
-					[INTERNAL_SSC] = &ti_sgmii_100_no_ssc_tx_ln_vals,
-				},
-				[TYPE_USB] = {
-					[NO_SSC] = &ti_sgmii_100_no_ssc_tx_ln_vals,
-					[EXTERNAL_SSC] = &ti_sgmii_100_no_ssc_tx_ln_vals,
-					[INTERNAL_SSC] = &ti_sgmii_100_no_ssc_tx_ln_vals,
-				},
-			},
-			[TYPE_QSGMII] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &ti_qsgmii_100_no_ssc_tx_ln_vals,
-				},
-				[TYPE_PCIE] = {
-					[NO_SSC] = &ti_qsgmii_100_no_ssc_tx_ln_vals,
-					[EXTERNAL_SSC] = &ti_qsgmii_100_no_ssc_tx_ln_vals,
-					[INTERNAL_SSC] = &ti_qsgmii_100_no_ssc_tx_ln_vals,
-				},
-				[TYPE_USB] = {
-					[NO_SSC] = &ti_qsgmii_100_no_ssc_tx_ln_vals,
-					[EXTERNAL_SSC] = &ti_qsgmii_100_no_ssc_tx_ln_vals,
-					[INTERNAL_SSC] = &ti_qsgmii_100_no_ssc_tx_ln_vals,
-				},
-			},
-			[TYPE_USB] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &usb_100_no_ssc_tx_ln_vals,
-					[EXTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
-					[INTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
-				},
-				[TYPE_PCIE] = {
-					[NO_SSC] = &usb_100_no_ssc_tx_ln_vals,
-					[EXTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
-					[INTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
-				},
-				[TYPE_SGMII] = {
-					[NO_SSC] = &usb_100_no_ssc_tx_ln_vals,
-					[EXTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
-					[INTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
-				},
-				[TYPE_QSGMII] = {
-					[NO_SSC] = &usb_100_no_ssc_tx_ln_vals,
-					[EXTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
-					[INTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
-				},
-				[TYPE_DP] = {
-					[NO_SSC] = &usb_100_no_ssc_tx_ln_vals,
-				},
-			},
-		},
-		[CLK_156_25_MHZ] = {
-			[TYPE_USXGMII] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &usxgmii_156_25_no_ssc_tx_ln_vals,
-				},
-			},
-		},
+	.tx_ln_vals_tbl = {
+		.entries = ti_tx_ln_vals_entries,
+		.num_entries = ARRAY_SIZE(ti_tx_ln_vals_entries),
 	},
-	.rx_ln_vals = {
-		[CLK_19_2_MHZ] = {
-			[TYPE_DP] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &sl_dp_19_2_no_ssc_rx_ln_vals,
-				},
-			},
-		},
-		[CLK_25_MHZ] = {
-			[TYPE_DP] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &sl_dp_25_no_ssc_rx_ln_vals,
-				},
-			},
-		},
-		[CLK_100_MHZ] = {
-			[TYPE_DP] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &sl_dp_100_no_ssc_rx_ln_vals,
-				},
-				[TYPE_PCIE] = {
-					[NO_SSC] = &dp_100_no_ssc_rx_ln_vals,
-				},
-				[TYPE_USB] = {
-					[NO_SSC] = &dp_100_no_ssc_rx_ln_vals,
-				},
-			},
-			[TYPE_PCIE] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &pcie_100_no_ssc_rx_ln_vals,
-					[EXTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
-					[INTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
-				},
-				[TYPE_SGMII] = {
-					[NO_SSC] = &pcie_100_no_ssc_rx_ln_vals,
-					[EXTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
-					[INTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
-				},
-				[TYPE_QSGMII] = {
-					[NO_SSC] = &pcie_100_no_ssc_rx_ln_vals,
-					[EXTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
-					[INTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
-				},
-				[TYPE_USB] = {
-					[NO_SSC] = &pcie_100_no_ssc_rx_ln_vals,
-					[EXTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
-					[INTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
-				},
-				[TYPE_DP] = {
-					[NO_SSC] = &pcie_100_no_ssc_rx_ln_vals,
-				},
-			},
-			[TYPE_SGMII] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
-				},
-				[TYPE_PCIE] = {
-					[NO_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
-					[EXTERNAL_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
-					[INTERNAL_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
-				},
-				[TYPE_USB] = {
-					[NO_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
-					[EXTERNAL_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
-					[INTERNAL_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
-				},
-			},
-			[TYPE_QSGMII] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
-				},
-				[TYPE_PCIE] = {
-					[NO_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
-					[EXTERNAL_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
-					[INTERNAL_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
-				},
-				[TYPE_USB] = {
-					[NO_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
-					[EXTERNAL_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
-					[INTERNAL_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
-				},
-			},
-			[TYPE_USB] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &usb_100_no_ssc_rx_ln_vals,
-					[EXTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
-					[INTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
-				},
-				[TYPE_PCIE] = {
-					[NO_SSC] = &usb_100_no_ssc_rx_ln_vals,
-					[EXTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
-					[INTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
-				},
-				[TYPE_SGMII] = {
-					[NO_SSC] = &usb_100_no_ssc_rx_ln_vals,
-					[EXTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
-					[INTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
-				},
-				[TYPE_QSGMII] = {
-					[NO_SSC] = &usb_100_no_ssc_rx_ln_vals,
-					[EXTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
-					[INTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
-				},
-				[TYPE_DP] = {
-					[NO_SSC] = &usb_100_no_ssc_rx_ln_vals,
-				},
-			},
-		},
-		[CLK_156_25_MHZ] = {
-			[TYPE_USXGMII] = {
-				[TYPE_NONE] = {
-					[NO_SSC] = &usxgmii_156_25_no_ssc_rx_ln_vals,
-				},
-			},
-		},
+	.rx_ln_vals_tbl = {
+		.entries = cdns_rx_ln_vals_entries,
+		.num_entries = ARRAY_SIZE(cdns_rx_ln_vals_entries),
 	},
 };
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
