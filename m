Return-Path: <SRS0=s7Ie=JG=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9791CC433ED
	for <linux-phy@archiver.kernel.org>; Fri,  9 Apr 2021 05:34:57 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2794661184
	for <linux-phy@archiver.kernel.org>; Fri,  9 Apr 2021 05:34:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2794661184
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=cadence.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mLPYJCsCPYyBR74SzTicmVYnSJg9uplq2goM6mr4SUc=; b=OWzFv45VQrXWlRoyeBLxaoY9i
	qrpjx14gsM1/x4lvu3Bc9vUYADNxXCvFq8E/JGEiOpYJtBFZMjuTttYBWYyNXxwRmlXQzGxAnezIT
	5Jg8JqF+TjorZEacmdvya0yW6THuKM+/hYoy1jZoOpfduTF0oxlBlbQA+jmh9Px9Z99H2lar9hT3+
	qjlb7bu4ruWJj3i0FdecnolF1tUmHJaWncr0t5RLdZu/3njT+lK1yuSwZGOrDy92TuUmG/Tt5apv5
	ZA5nXv59VkuOjZaBT3yNhyC2sS9FoF1mILD2X37iG7yhSfuYPCiW6NGPmPQ7yddcIhBZHemPr70Vz
	DFjhi4wSA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lUjnD-00A9jo-BX; Fri, 09 Apr 2021 05:34:55 +0000
Received: from mx0a-0014ca01.pphosted.com ([208.84.65.235])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lUjmt-00A9c4-E2
 for linux-phy@lists.infradead.org; Fri, 09 Apr 2021 05:34:38 +0000
Received: from pps.filterd (m0042385.ppops.net [127.0.0.1])
 by mx0a-0014ca01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 1395Xwe7028333; Thu, 8 Apr 2021 22:34:32 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=proofpoint;
 bh=JSNS7ew+XdrbEuU3/6r2WYy49Y4S8taphfGqqGVnQdA=;
 b=EYh4gveTxlZEVTt0k0mpZsG7romuDU+KkZCr4q8ah0doBeZVsinHvkVYoo6hD6bhhhLG
 rwLYlP53a+oxXbMQEWMYWrrdJeST46fcTDzPJr0gCaAP8lXXJUdZHIAJ/7EQmygEv/vS
 vijlgJnkD3xspFfWK0IF0Bbydyz2A70GdCu/zoj8YgLyZhhCbXdlFe6XfB7U0cG5HpHq
 hV3kZIvlnlXuVWRgL7BK+XrW1rXGjxFHN0dpPMjeyruR1Ye/Afa/XFiwf87yqontPnn+
 QEKetfxDqGBgvWIJ5yszrXnPe8Vs++FcrsHdmIj3RSrhekrOjRdP6w+wfNHoFodWkUzL tg== 
Received: from nam04-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam08lp2048.outbound.protection.outlook.com [104.47.74.48])
 by mx0a-0014ca01.pphosted.com with ESMTP id 37t6ns1srf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 08 Apr 2021 22:34:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bJkEVbR1YEE6fZWWYa3YNXvERkQ6HW+HQPCf0ZvDCk0IrMserIWT/u4nhbwaCBPAS5zGOGGSynNTCGFGk7vahnNG83p0PuN8xLp4f0c3OKGQZzO7n5BQ9rAxdCyynDovox34J/TlTDvESChdgbEmybGcyg6MAJLEcCxrL9AsHnK043BUud6qlroijj/X7DTFzJVbFgX8Vfhj+bvSxcciPGZx25PNUEkNKFtP9HIFFhVxE6AZYbl5sz1g9dzrAmDb8pq3Bxx6DkGGk0a5r7TSEE4k+t0L1VilrUc1Ver2kI88wGmnj6t4vjsof0dsT8Tjf0jtN27RvOZpU+q/itI1fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JSNS7ew+XdrbEuU3/6r2WYy49Y4S8taphfGqqGVnQdA=;
 b=H0+ayX+XrCQe/I6juNPqRZjaZQaVE+qgkyGtpC6IKceIuF2IBfq8cFuQchet4s3HHlU6CuridwvNILozi6RQPHc0kKF4UQC3Vh2Iy0HzP05gjqh/viAcPHxfqxMJEmxSFdrbiu1/k3DRn40phn/mI2PHhNzQZOhJbFIBXQsIon3boWuftoSgz4HpKoU3xqRa7Y6CX2972ZFXUvMWs2t7oKtEU7mXdBg0nXATDSNEUHZQcJ4ytz4Bz4nEwfpwKnNpfKBaCaF3B34TywPtootDutTgOdP1gW2+Km5wTKYoObDkFgFeAHV5pn6gOTg7GBTqoBJvH67Q0/EFdG2FqGQ4bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 158.140.1.147) smtp.rcpttodomain=pengutronix.de smtp.mailfrom=cadence.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=cadence.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JSNS7ew+XdrbEuU3/6r2WYy49Y4S8taphfGqqGVnQdA=;
 b=tStML9B4DHnblMNr8b6YBqfefg0GtRynA9tTGY43fjjNeLrR7uzleatFgOy+vZA98aBzCD9xwwg52RuaYAsd4q3lasO/0gv9Bw4vFS9/dCA5QK+SmFsMpuCRsL5z8sBpaHB0SNl/AMCx4PwmPFMWm5YH7y0cuZtRg/Xfk3gSWkA=
Received: from DM5PR04CA0060.namprd04.prod.outlook.com (2603:10b6:3:ef::22) by
 SJ0PR07MB7584.namprd07.prod.outlook.com (2603:10b6:a03:28d::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.29; Fri, 9 Apr
 2021 05:34:28 +0000
Received: from DM6NAM12FT005.eop-nam12.prod.protection.outlook.com
 (2603:10b6:3:ef:cafe::3b) by DM5PR04CA0060.outlook.office365.com
 (2603:10b6:3:ef::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.17 via Frontend
 Transport; Fri, 9 Apr 2021 05:34:28 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 158.140.1.147)
 smtp.mailfrom=cadence.com; pengutronix.de; dkim=none (message not signed)
 header.d=none; pengutronix.de; dmarc=pass action=none header.from=cadence.com; 
Received-SPF: Pass (protection.outlook.com: domain of cadence.com designates
 158.140.1.147 as permitted sender) receiver=protection.outlook.com;
 client-ip=158.140.1.147; helo=sjmaillnx1.cadence.com;
Received: from sjmaillnx1.cadence.com (158.140.1.147) by
 DM6NAM12FT005.mail.protection.outlook.com (10.13.178.111) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4042.6 via Frontend Transport; Fri, 9 Apr 2021 05:34:28 +0000
Received: from maileu3.global.cadence.com (maileu3.cadence.com [10.160.88.99])
 by sjmaillnx1.cadence.com (8.14.4/8.14.4) with ESMTP id
 1395YJ5b032749
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 8 Apr 2021 22:34:27 -0700
X-CrossPremisesHeadersFilteredBySendConnector: maileu3.global.cadence.com
Received: from maileu3.global.cadence.com (10.160.88.99) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 9 Apr 2021 07:34:19 +0200
Received: from vleu-orange.cadence.com (10.160.88.83) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Fri, 9 Apr 2021 07:34:19 +0200
Received: from vleu-orange.cadence.com (localhost.localdomain [127.0.0.1])
 by vleu-orange.cadence.com (8.14.4/8.14.4) with ESMTP id 1395YJEK027868;
 Fri, 9 Apr 2021 07:34:19 +0200
Received: (from sjakhade@localhost)
 by vleu-orange.cadence.com (8.14.4/8.14.4/Submit) id 1395YJI6027867;
 Fri, 9 Apr 2021 07:34:19 +0200
From: Swapnil Jakhade <sjakhade@cadence.com>
To: <vkoul@kernel.org>, <kishon@ti.com>, <p.zabel@pengutronix.de>,
 <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>
CC: <mparab@cadence.com>, <sjakhade@cadence.com>, <lokeshvutla@ti.com>
Subject: [PATCH 10/14] phy: cadence-torrent: Add function to get PLL to be
 configured for DP
Date: Fri, 9 Apr 2021 07:34:12 +0200
Message-ID: <1617946456-27773-11-git-send-email-sjakhade@cadence.com>
X-Mailer: git-send-email 2.4.5
In-Reply-To: <1617946456-27773-1-git-send-email-sjakhade@cadence.com>
References: <1617946456-27773-1-git-send-email-sjakhade@cadence.com>
MIME-Version: 1.0
X-OrganizationHeadersPreserved: maileu3.global.cadence.com
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6f074a70-760f-4c2a-ab3d-08d8fb1924b2
X-MS-TrafficTypeDiagnostic: SJ0PR07MB7584:
X-Microsoft-Antispam-PRVS: <SJ0PR07MB758420708047ECC276899F92C5739@SJ0PR07MB7584.namprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ddRrBSHpzDeDWPQUVFIper6l3EKRq1YHLmqCyt2zJ1XAEJaLG8uj5WKs3GxlffH+U+Yai+EWBbV3kGy9Md/aAq7c+l8ALEzCfavCeh/2QYUS6dZ6k2lJ3fZG08ic2X1O+/rIhVRlYaP9Ghs8oYFuwNaGJhuHEdpMOsNXS7XBpiDaYoC46me+bB8C+FHwWGPTn1wBY+0U9JABUNBwaJTt3vHC+eUGNhPywxKDvi9HxFhHW8Q0kEXbBZGXUk9QyZV+oBXlH/s/LZevupnzmBL57XambeCD3VeThf1B9nwIR0pWwtVZpkAUaHFealP1D+JTm2tHfJHzO6vdf34aO/whkhas+xvoTRsZoNFaxTe9mrSjQUkv9CS0bdI9cSQTHAGQdAkmlXXasMmhgk64/rnvabCvRw1ayYeg9foC/tEyVV+AiYPzZYHpktnU7dKjTaRPtpSCCL2v7ud6fQP1sXH/BqrPlNWc+RaYuk6/rXEDFPOWvTBwcuEA9LtOrLuePAgahAJd0mqoxtxNdcA4W620vnI7FDxpieiy9qQGWPqVRuXaL06O9yrcTH9ij0InnMbIXYDvDjwAF/B0wjR0AFOaV+qht8PL4IKQ/pgp331v/3Ge/Cx06r9qMfQ4OojIFz1Ew7n8PzUmzlAxuGGiL4AD3XNXCynvIAl3k9bULTrWizzP1qMSfjt7EWMR5wwMeSCNb+b18Zf26biul0Yd1bIypw==
X-Forefront-Antispam-Report: CIP:158.140.1.147; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:sjmaillnx1.cadence.com; PTR:unknown.Cadence.COM; CAT:NONE;
 SFS:(4636009)(376002)(39860400002)(346002)(396003)(136003)(36092001)(46966006)(36840700001)(6666004)(8676002)(42186006)(82310400003)(478600001)(8936002)(356005)(36906005)(426003)(26005)(5660300002)(70586007)(70206006)(186003)(4326008)(54906003)(36860700001)(110136005)(47076005)(336012)(36756003)(7636003)(86362001)(2906002)(316002)(82740400003)(2616005)(2101003);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2021 05:34:28.0358 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f074a70-760f-4c2a-ab3d-08d8fb1924b2
X-MS-Exchange-CrossTenant-Id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=d36035c5-6ce6-4662-a3dc-e762e61ae4c9; Ip=[158.140.1.147];
 Helo=[sjmaillnx1.cadence.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM12FT005.eop-nam12.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR07MB7584
X-Proofpoint-ORIG-GUID: efG13-YqhmHLqZLtkr2grvsHCTQJ0Eky
X-Proofpoint-GUID: efG13-YqhmHLqZLtkr2grvsHCTQJ0Eky
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391, 18.0.761
 definitions=2021-04-09_03:2021-04-08,
 2021-04-09 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check
 score=0 bulkscore=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 mlxscore=0
 malwarescore=0 mlxlogscore=994 clxscore=1015 adultscore=0 suspectscore=0
 spamscore=0 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104060000 definitions=main-2104090041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210409_063436_666435_33C0818B 
X-CRM114-Status: GOOD (  16.45  )
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

Torrent PHY PLL0 or PLL1 is used for DP depending on the single link or
multilink protocol configuration for which PHY is configured. In multilink
configurations with other protocols, either PLL0 or PLL1 will be used
for DP. For single link DP, both PLLs need to be configured at POR.

Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
---
 drivers/phy/cadence/phy-cadence-torrent.c | 32 +++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/drivers/phy/cadence/phy-cadence-torrent.c b/drivers/phy/cadence/phy-cadence-torrent.c
index e4dd8d1711a6..44e28ea8ffa7 100644
--- a/drivers/phy/cadence/phy-cadence-torrent.c
+++ b/drivers/phy/cadence/phy-cadence-torrent.c
@@ -288,6 +288,11 @@ enum cdns_torrent_ssc_mode {
 	INTERNAL_SSC
 };
 
+enum cdns_torrent_dp_pll {
+	DP_PLL0 = 0x1,
+	DP_PLL1 = 0x2
+};
+
 struct cdns_torrent_inst {
 	struct phy *phy;
 	u32 mlane;
@@ -301,6 +306,7 @@ struct cdns_torrent_phy {
 	void __iomem *base;	/* DPTX registers base */
 	void __iomem *sd_base; /* SD0801 registers base */
 	u32 max_bit_rate; /* Maximum link bit rate to use (in Mbps) */
+	u32 dp_pll;
 	struct reset_control *phy_rst;
 	struct reset_control *apb_rst;
 	struct device *dev;
@@ -900,6 +906,30 @@ void cdns_torrent_dp_pma_cmn_vco_cfg_100mhz(struct cdns_torrent_phy *cdns_phy,
 	}
 }
 
+/* Set PLL used for DP configuration */
+static int cdns_torrent_dp_get_pll(struct cdns_torrent_phy *cdns_phy,
+				   enum cdns_torrent_phy_type phy_t2)
+{
+	switch (phy_t2) {
+	case TYPE_PCIE:
+	case TYPE_USB:
+		cdns_phy->dp_pll = DP_PLL1;
+		break;
+	case TYPE_SGMII:
+	case TYPE_QSGMII:
+		cdns_phy->dp_pll = DP_PLL0;
+		break;
+	case TYPE_NONE:
+		cdns_phy->dp_pll = DP_PLL0 | DP_PLL1;
+		break;
+	default:
+		dev_err(cdns_phy->dev, "Unsupported PHY configuration\n");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 /*
  * Enable or disable PLL for selected lanes.
  */
@@ -1554,6 +1584,8 @@ static int cdns_torrent_dp_init(struct phy *phy)
 		return -EINVAL;
 	}
 
+	cdns_torrent_dp_get_pll(cdns_phy, TYPE_NONE);
+
 	cdns_torrent_dp_common_init(cdns_phy, inst);
 
 	return cdns_torrent_dp_start(cdns_phy, inst, phy);
-- 
2.26.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
