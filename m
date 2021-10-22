Return-Path: <SRS0=jE1M=PK=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 469CCC43217
	for <linux-phy@archiver.kernel.org>; Fri, 22 Oct 2021 17:03:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F358F6128E
	for <linux-phy@archiver.kernel.org>; Fri, 22 Oct 2021 17:03:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org F358F6128E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=cadence.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZXnh29p1vwoV/tRMuPAldg+NjnOKI6t7GLgX74Od+7c=; b=bmUgVOj64jhlI9
	zZg93adJ/FZytlnUsgue2R2SIsPY4nIZgF1qHWH2BSPASg6WnK62Zt7K0FE9PCI8fNLTTZkGZa1XY
	uWPILsJyLL8EumCdxCQHgfqUG2mBq1lmHvUgHRGgnnA9TnGUXroQ9g17aVhdrJawiBNLlWvoCTc2S
	mvWq3TVVe6h+3ddx0XI2Kp1NlayShMgWZXLSd4VSpkFsivW5l5wfpwkCI4c9Iu/ZjHkABlUJVD1fS
	pij/WNBVA+km/e4rmjGDwik0io7KoB9Rv/VD1NtlYIWasTL+C/DTpq1OneIc8OkWGHS5kMOpSSKEk
	LAI31R9ymC9xtYgR6MPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdxwc-00Ba7n-E8; Fri, 22 Oct 2021 17:03:02 +0000
Received: from mx0b-0014ca01.pphosted.com ([208.86.201.193]
 helo=mx0a-0014ca01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdxwY-00Ba3z-0N
 for linux-phy@lists.infradead.org; Fri, 22 Oct 2021 17:03:00 +0000
Received: from pps.filterd (m0042333.ppops.net [127.0.0.1])
 by mx0b-0014ca01.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 19MEgLDu012878; 
 Fri, 22 Oct 2021 10:02:56 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=proofpoint;
 bh=MNcgEWJb/bpq9GsQM+jl493xbb2dyFyWZjgAPs7dybA=;
 b=BVdyK6XY/1Vkwgy8Ys/yRMvMArX2fVUkQyKBXWuRxx9NrwJZvq9VrkCyyPgwxG9nRMxZ
 GS8SZqaLj8XKJBkvcB/YnmpWgywc1V1qPVnDZ1KNmX83Yw7QkYMCwTaRS3gO8ll/EzMo
 a+XkH5kTj9YBVD37JPp1Hgm/QVLh7QujLIadEnHUQEZAEfse/lyZ4h8COaN3lltkpBwb
 JS05sgcTMLsP1frkGAvaKshB2H+9W3ShxrNnebQVy5nnxXnZHy1NRLDGtVT2B6cdv928
 gHQR1LLBrgFIE3T4CE1+M2lUlXHw2FBqcNfsfDY6ielQzcaPkHcQB401fpBMQd/jD8gu 1Q== 
Received: from nam04-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam08lp2043.outbound.protection.outlook.com [104.47.73.43])
 by mx0b-0014ca01.pphosted.com with ESMTP id 3buya2resx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 22 Oct 2021 10:02:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a0ualdw+R/wa9kvq9ZNIeAEBKCrjGLFJldMj9fhQi0hEvL/XUX4J4CuDb72TPz8vjyVL6xZx+qzXVksEekKxsX37c1oofrBs+EavTVWQ7X4MrxY0fHFCLhgqRPdpMd85kbFm/coj2vQyImizsT7DPKB4nBsYY9g/wFEdwpONWwJNDqPvyHvaMS0vjCpI5qU47zWgDv98PAacj1Sh2EH3+GGVPVAG/WqOBA0TL4Hd0pgK0Vnjbutsza495ExsOu1440TsF0UZ79tMiio972S647Xo1jPjv8tlWJmSR5W03VGPvEFaCqdsSmwe8ZWuTDZxk567zokZMyE+1cH6WEC5VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MNcgEWJb/bpq9GsQM+jl493xbb2dyFyWZjgAPs7dybA=;
 b=bNMdwD3p+8zjgziyyYteGfrtiWp6MKkuJVUPBOssgH1BlZIgtKT9bJTIIhTMz0IhWS38gZ1PZyLryLlGFt1DwrFrdfQ7p5vGS5NZckZQn2QbR+VylfDTb7w+fotWpuOsxv6i/ky3XpBGtxn614iOUeKM00A5XPR18naGmDrJApr5/nxfh+8tKjeILRHDLB8yQqShaGZkWxVJl1wSapxorL7E9js0RsimiEV8lP9U47P3rCi92R9F6IUCbCHLL8dnrkOo70qpnWm4r/Uvgujxa9UPhkFjJ3ImazGpLovzqwOtLLXx7dF0X6kqOLl/gdYyXATt3eIwPSUuwwDw9UC43g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 158.140.1.147) smtp.rcpttodomain=kernel.org smtp.mailfrom=cadence.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=cadence.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MNcgEWJb/bpq9GsQM+jl493xbb2dyFyWZjgAPs7dybA=;
 b=pgUJd42Xfn9oJJz7v+T38q/CRCHr/USgy2y0EuptFu3qP+PLm6F5S4CmZEqmYpWqVuSbgV99VjJOC5tCBVLackadLQWrIs2W1b+FpiEk0PNuIRhogwXPy0GP5tMdsBOyVdVade8I1q3QVJMFRRuBQFvAif4iGSVJdyuworHh2R4=
Received: from BN9P221CA0002.NAMP221.PROD.OUTLOOK.COM (2603:10b6:408:10a::9)
 by SJ0PR07MB8584.namprd07.prod.outlook.com (2603:10b6:a03:371::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18; Fri, 22 Oct
 2021 17:02:52 +0000
Received: from BN8NAM12FT034.eop-nam12.prod.protection.outlook.com
 (2603:10b6:408:10a:cafe::e2) by BN9P221CA0002.outlook.office365.com
 (2603:10b6:408:10a::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.16 via Frontend
 Transport; Fri, 22 Oct 2021 17:02:51 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 158.140.1.147)
 smtp.mailfrom=cadence.com; kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=pass action=none header.from=cadence.com;
Received-SPF: Pass (protection.outlook.com: domain of cadence.com designates
 158.140.1.147 as permitted sender) receiver=protection.outlook.com;
 client-ip=158.140.1.147; helo=sjmaillnx1.cadence.com;
Received: from sjmaillnx1.cadence.com (158.140.1.147) by
 BN8NAM12FT034.mail.protection.outlook.com (10.13.183.4) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4649.8 via Frontend Transport; Fri, 22 Oct 2021 17:02:51 +0000
Received: from maileu3.global.cadence.com (maileu3.cadence.com [10.160.88.99])
 by sjmaillnx1.cadence.com (8.14.4/8.14.4) with ESMTP id
 19MH2iNM008564
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 22 Oct 2021 10:02:51 -0700
X-CrossPremisesHeadersFilteredBySendConnector: maileu3.global.cadence.com
Received: from maileu4.global.cadence.com (10.160.110.201) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 22 Oct 2021 19:02:39 +0200
Received: from maileu3.global.cadence.com (10.160.88.99) by
 maileu4.global.cadence.com (10.160.110.201) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.1.2176.2; Fri, 22 Oct 2021 19:02:39 +0200
Received: from vleu-orange.cadence.com (10.160.88.83) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Fri, 22 Oct 2021 19:02:39 +0200
Received: from vleu-orange.cadence.com (localhost.localdomain [127.0.0.1])
 by vleu-orange.cadence.com (8.14.4/8.14.4) with ESMTP id 19MH2dpd018923;
 Fri, 22 Oct 2021 19:02:39 +0200
Received: (from sjakhade@localhost)
 by vleu-orange.cadence.com (8.14.4/8.14.4/Submit) id 19MH2dTa018922;
 Fri, 22 Oct 2021 19:02:39 +0200
From: Swapnil Jakhade <sjakhade@cadence.com>
To: <vkoul@kernel.org>, <kishon@ti.com>, <robh+dt@kernel.org>,
 <p.zabel@pengutronix.de>, <linux-phy@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
CC: <mparab@cadence.com>, <sjakhade@cadence.com>, <a-govindraju@ti.com>
Subject: [PATCH v3 09/15] phy: cadence: Sierra: Check PIPE mode PHY status to
 be ready for operation
Date: Fri, 22 Oct 2021 19:02:30 +0200
Message-ID: <20211022170236.18839-10-sjakhade@cadence.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20211022170236.18839-1-sjakhade@cadence.com>
References: <20211022170236.18839-1-sjakhade@cadence.com>
MIME-Version: 1.0
X-OrganizationHeadersPreserved: maileu3.global.cadence.com
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 74ab6448-2b57-4222-92f9-08d9957dc881
X-MS-TrafficTypeDiagnostic: SJ0PR07MB8584:
X-Microsoft-Antispam-PRVS: <SJ0PR07MB8584B84AE179F7674B344B18C5809@SJ0PR07MB8584.namprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1388;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: w0Vyln+mc0vS1XNPN083ZgTsxsbVwt6Ho6IyThMKseQoFov2sXfZtKVGwMLcoQZk0LO+VExcT5TtMANhBewkO+b835u0UDp1Mp/TYH4/SJrdMS2lXwFZsV07UmCBBqMNXj681x4tB91VG+wls9/sk763cYwTfCt/3qKFe0Gtp7FG88lDrYtw0ruEQA5QUQkLt4i1Bd3o3GnoJ+fqXeV3uSX+BWsDgIfSgmZlNjXsdVtF3STH2wTZEdl8TG4PdsTFcs/k2/AOo+LKyC3tVbSh8TIwVRURMxv2VjxLZoLTI6LwMk5HB4SBnutYJM+qnsYG+Nm1i7wSlkGyCZ+cT+slVgKG5lILqim2ypj+xwiNeyluOKDs/XwQmjQmHpgEotNqmDIB83dpCZ8Jf4btl6mcfQeuOVQauRMg8VokvxCKDLNZge3zVEA3ujqFRJNsCsA0946mA1R8mIVcCtixxMd8gjkJS7umlM+nUmV7hNvZUUWJXf+bOsNaX9f3Xm9Aonclwireo71bLyFLCzjx6lZ0BEi48DMPy1vSM5uS/66qHbeFBBoapwKc3Ine40ysESXC+r1j1GpnSkEGMWUSnskxqSKq7qeoR5a3i2BsCDVI56deOMwSxWdPo2AmUHBj5L7eYCoFm6iqAoMYAXc6e/QAsEE78/cQgO6hF3BZ6NUelqWy2epMv0ojMRunoZvIAJysEKk25PVwaNyvmw+s9aH7a4oJ2giRyW2puBC40PevJ0s=
X-Forefront-Antispam-Report: CIP:158.140.1.147; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:sjmaillnx1.cadence.com; PTR:unknown.Cadence.COM; CAT:NONE;
 SFS:(4636009)(36092001)(36840700001)(46966006)(110136005)(54906003)(70206006)(70586007)(86362001)(1076003)(82310400003)(8936002)(426003)(7636003)(26005)(336012)(4326008)(47076005)(5660300002)(36860700001)(36756003)(356005)(83380400001)(42186006)(6666004)(186003)(2616005)(316002)(2906002)(508600001)(8676002)(36906005);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2021 17:02:51.5512 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 74ab6448-2b57-4222-92f9-08d9957dc881
X-MS-Exchange-CrossTenant-Id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=d36035c5-6ce6-4662-a3dc-e762e61ae4c9; Ip=[158.140.1.147];
 Helo=[sjmaillnx1.cadence.com]
X-MS-Exchange-CrossTenant-AuthSource: BN8NAM12FT034.eop-nam12.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR07MB8584
X-Proofpoint-GUID: a-fvZdbPYu0k8oNnajV2SZO5BNYvD5LZ
X-Proofpoint-ORIG-GUID: a-fvZdbPYu0k8oNnajV2SZO5BNYvD5LZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-10-22_04,2021-10-22_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check
 score=0 mlxscore=0
 malwarescore=0 impostorscore=0 phishscore=0 clxscore=1015 suspectscore=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 mlxlogscore=999 spamscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109230001 definitions=main-2110220098
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211022_100258_237327_B878FD99 
X-CRM114-Status: GOOD (  20.46  )
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

PIPE phy status is used to communicate the completion of several PHY
functions. Check if PHY is ready for operation while configured for
PIPE mode during startup.

Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
Reviewed-by: Aswath Govindraju <a-govindraju@ti.com>
---
 drivers/phy/cadence/phy-cadence-sierra.c | 73 +++++++++++++++++++++++-
 1 file changed, 72 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/cadence/phy-cadence-sierra.c b/drivers/phy/cadence/phy-cadence-sierra.c
index 13176208e6d7..59458388a855 100644
--- a/drivers/phy/cadence/phy-cadence-sierra.c
+++ b/drivers/phy/cadence/phy-cadence-sierra.c
@@ -151,6 +151,13 @@
 #define SIERRA_PHY_PIPE_CMN_CTRL1			0x0
 #define SIERRA_PHY_PLL_CFG				0xe
 
+/* PHY PCS lane registers */
+#define SIERRA_PHY_PCS_LANE_CDB_OFFSET(ln, block_offset, reg_offset)	\
+				       ((0xD000 << (block_offset)) +	\
+				       (((ln) << 8) << (reg_offset)))
+
+#define SIERRA_PHY_ISO_LINK_CTRL			0xB
+
 /* PHY PMA common registers */
 #define SIERRA_PHY_PMA_COMMON_OFFSET(block_offset)	\
 				     (0xE000 << (block_offset))
@@ -181,6 +188,8 @@ static const struct reg_field pma_cmn_ready =
 				REG_FIELD(SIERRA_PHY_PMA_CMN_CTRL, 0, 0);
 static const struct reg_field pllctrl_lock =
 				REG_FIELD(SIERRA_PLLCTRL_STATUS_PREG, 0, 0);
+static const struct reg_field phy_iso_link_ctrl_1 =
+				REG_FIELD(SIERRA_PHY_ISO_LINK_CTRL, 1, 1);
 
 static const char * const clk_names[] = {
 	[CDNS_SIERRA_PLL_CMNLC] = "pll_cmnlc",
@@ -287,12 +296,14 @@ struct cdns_sierra_phy {
 	struct reset_control *apb_rst;
 	struct regmap *regmap_lane_cdb[SIERRA_MAX_LANES];
 	struct regmap *regmap_phy_pcs_common_cdb;
+	struct regmap *regmap_phy_pcs_lane_cdb[SIERRA_MAX_LANES];
 	struct regmap *regmap_phy_pma_common_cdb;
 	struct regmap *regmap_common_cdb;
 	struct regmap_field *macro_id_type;
 	struct regmap_field *phy_pll_cfg_1;
 	struct regmap_field *pma_cmn_ready;
 	struct regmap_field *pllctrl_lock[SIERRA_MAX_LANES];
+	struct regmap_field *phy_iso_link_ctrl_1[SIERRA_MAX_LANES];
 	struct regmap_field *cmn_refrcv_refclk_plllc1en_preg[SIERRA_NUM_CMN_PLLC];
 	struct regmap_field *cmn_refrcv_refclk_termen_preg[SIERRA_NUM_CMN_PLLC];
 	struct regmap_field *cmn_plllc_pfdclk1_sel_preg[SIERRA_NUM_CMN_PLLC];
@@ -367,6 +378,34 @@ static const struct regmap_config cdns_sierra_phy_pcs_cmn_cdb_config = {
 	.reg_read = cdns_regmap_read,
 };
 
+#define SIERRA_PHY_PCS_LANE_CDB_REGMAP_CONF(n) \
+{ \
+	.name = "sierra_phy_pcs_lane" n "_cdb", \
+	.reg_stride = 1, \
+	.fast_io = true, \
+	.reg_write = cdns_regmap_write, \
+	.reg_read = cdns_regmap_read, \
+}
+
+static const struct regmap_config cdns_sierra_phy_pcs_lane_cdb_config[] = {
+	SIERRA_PHY_PCS_LANE_CDB_REGMAP_CONF("0"),
+	SIERRA_PHY_PCS_LANE_CDB_REGMAP_CONF("1"),
+	SIERRA_PHY_PCS_LANE_CDB_REGMAP_CONF("2"),
+	SIERRA_PHY_PCS_LANE_CDB_REGMAP_CONF("3"),
+	SIERRA_PHY_PCS_LANE_CDB_REGMAP_CONF("4"),
+	SIERRA_PHY_PCS_LANE_CDB_REGMAP_CONF("5"),
+	SIERRA_PHY_PCS_LANE_CDB_REGMAP_CONF("6"),
+	SIERRA_PHY_PCS_LANE_CDB_REGMAP_CONF("7"),
+	SIERRA_PHY_PCS_LANE_CDB_REGMAP_CONF("8"),
+	SIERRA_PHY_PCS_LANE_CDB_REGMAP_CONF("9"),
+	SIERRA_PHY_PCS_LANE_CDB_REGMAP_CONF("10"),
+	SIERRA_PHY_PCS_LANE_CDB_REGMAP_CONF("11"),
+	SIERRA_PHY_PCS_LANE_CDB_REGMAP_CONF("12"),
+	SIERRA_PHY_PCS_LANE_CDB_REGMAP_CONF("13"),
+	SIERRA_PHY_PCS_LANE_CDB_REGMAP_CONF("14"),
+	SIERRA_PHY_PCS_LANE_CDB_REGMAP_CONF("15"),
+};
+
 static const struct regmap_config cdns_sierra_phy_pma_cmn_cdb_config = {
 	.name = "sierra_phy_pma_cmn_cdb",
 	.reg_stride = 1,
@@ -452,6 +491,15 @@ static int cdns_sierra_phy_on(struct phy *gphy)
 		return ret;
 	}
 
+	if (ins->phy_type == TYPE_PCIE || ins->phy_type == TYPE_USB) {
+		ret = regmap_field_read_poll_timeout(sp->phy_iso_link_ctrl_1[ins->mlane],
+						     val, !val, 1000, PLL_LOCK_TIME);
+		if (ret) {
+			dev_err(dev, "Timeout waiting for PHY status ready\n");
+			return ret;
+		}
+	}
+
 	/*
 	 * Wait for cmn_ready assertion
 	 * PHY_PMA_CMN_CTRL[0] == 1
@@ -755,7 +803,17 @@ static int cdns_regfield_init(struct cdns_sierra_phy *sp)
 			dev_err(dev, "P%d_ENABLE reg field init failed\n", i);
 			return PTR_ERR(field);
 		}
-		sp->pllctrl_lock[i] =  field;
+		sp->pllctrl_lock[i] = field;
+	}
+
+	for (i = 0; i < SIERRA_MAX_LANES; i++) {
+		regmap = sp->regmap_phy_pcs_lane_cdb[i];
+		field = devm_regmap_field_alloc(dev, regmap, phy_iso_link_ctrl_1);
+		if (IS_ERR(field)) {
+			dev_err(dev, "PHY_ISO_LINK_CTRL reg field init for lane %d failed\n", i);
+			return PTR_ERR(field);
+		}
+		sp->phy_iso_link_ctrl_1[i] = field;
 	}
 
 	return 0;
@@ -801,6 +859,19 @@ static int cdns_regmap_init_blocks(struct cdns_sierra_phy *sp,
 	}
 	sp->regmap_phy_pcs_common_cdb = regmap;
 
+	for (i = 0; i < SIERRA_MAX_LANES; i++) {
+		block_offset = SIERRA_PHY_PCS_LANE_CDB_OFFSET(i, block_offset_shift,
+							      reg_offset_shift);
+		regmap = cdns_regmap_init(dev, base, block_offset,
+					  reg_offset_shift,
+					  &cdns_sierra_phy_pcs_lane_cdb_config[i]);
+		if (IS_ERR(regmap)) {
+			dev_err(dev, "Failed to init PHY PCS lane CDB regmap\n");
+			return PTR_ERR(regmap);
+		}
+		sp->regmap_phy_pcs_lane_cdb[i] = regmap;
+	}
+
 	block_offset = SIERRA_PHY_PMA_COMMON_OFFSET(block_offset_shift);
 	regmap = cdns_regmap_init(dev, base, block_offset, reg_offset_shift,
 				  &cdns_sierra_phy_pma_cmn_cdb_config);
-- 
2.26.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
