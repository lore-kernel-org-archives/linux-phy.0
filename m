Return-Path: <SRS0=alUI=MU=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2555AC4320A
	for <linux-phy@archiver.kernel.org>; Wed, 28 Jul 2021 14:55:17 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E53F860C3E
	for <linux-phy@archiver.kernel.org>; Wed, 28 Jul 2021 14:55:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E53F860C3E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=cadence.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MODYVmJ7nYXKYKg9HfYDKZtoNhsjUvrK09jzigO19FY=; b=ja9oQpPVEgIsS4
	GAVn45zfRkN+cj0+KwOoZOnm5nI2gIL41F0Uw2gLSJqrIJhFH6FCKiM6xL1DaJkDQnttVuE/VDTeI
	k99Kb9ZJs00aUKgS+5UPmL85HiwQJ04nsO42j99YfHb4uHrvlDv98xvN6tnowJz/0WVCNYJs9nllg
	iDbpGw2/1L3rqJq898mZ7l2STtfM8oMrrSwxBwnYhogURbUc2/SkrUBYJ2WZgdf1LFbYWiA2Gfvud
	3yyYnPNy/eWIr3n0rR3XKiqhfb7dOntH55cTwu7xUduzp6djtaI86S6TxzkDAvPgTJoE8cnHEXLip
	FDj7cyMtCtrJZv9nBHIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8kxo-001Acx-B7; Wed, 28 Jul 2021 14:55:16 +0000
Received: from mx0a-0014ca01.pphosted.com ([208.84.65.235])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8kxk-001AZW-4h
 for linux-phy@lists.infradead.org; Wed, 28 Jul 2021 14:55:14 +0000
Received: from pps.filterd (m0042385.ppops.net [127.0.0.1])
 by mx0a-0014ca01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 16SEqub2023158; Wed, 28 Jul 2021 07:55:07 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=proofpoint;
 bh=6myjQfJdV9OxdJ52Wxoohu8K6mg4KFN5NsaK5ZhQlhs=;
 b=QyGGUcNVEkGPiDwJvyzg1q6pIb9GeGmNuT63gy4gZfbtYZvRlHrdJDRwTJVpuc0kMAec
 i6K1uxXSgMK01tb7uHqwg3CUuxMiRkRk+PQiIqfD4audupi86EMBBKP6GanFjaut4aLW
 h6sqGWQtBcOsONq6sLQ7GkKD24162ceXdr3nck6QtdFMuLiF9jLPnJYaChmRXqFv1tz5
 A0PvQf029prpj2B2+inatBUC7/JJg8kizibSi6aFMieTzRylU3EtCwySXQ0JgTW0oPdh
 i/nZfsy4m8/Z1DgPXR8L1KU+R/SRiYsipjDzJSzRIjD9T5Tc8DuFSzc09Ot7bZPNjYAB eQ== 
Received: from nam10-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2100.outbound.protection.outlook.com [104.47.55.100])
 by mx0a-0014ca01.pphosted.com with ESMTP id 3a235vfvkx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 28 Jul 2021 07:55:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b+RhnolLmGU7N7WrVo4+4r53ETI6WzOSS5lz77SZQYRNExDLEMnD7c8VTzy79nxR79pH6C7kGLOmQ4XcP7XVr2Ku/yoEDSTL53HfX1bfczO5P+0JxA08XuAmNLFwFmcGIw+sRTLLZA2w94P7xl14WmeW/nC+Ei7ycPZl/RMrB5X0dn0aQ9me97PXEMwZYaBewrqja8/GrWQkevs+1Kwl78rAMCSRbG8+X2/Wx0rwkMBQ5VrWKq8gkMZGzph6lhkNE1c24TS4WwR/e6+W20i1g0sg/rvwXOLZplwjSLMJHlP/A6OY5BeJG+DE6XqKbyfsygvn5S7ilCKCzBTJSiiiEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6myjQfJdV9OxdJ52Wxoohu8K6mg4KFN5NsaK5ZhQlhs=;
 b=Jti3vejhC+foIdmKqqhk5J3pwaVowOoyAPEflNEi5abVFSDYAWE5nmbKjn01DgGl5eaqpeAsbYC/u6PkG2SkT6A6pnnex1J2ud2B8Z34H1ecrGSz2wYDBlFeDPmxQgXU1Cg3nTnnF/ohDoC0c4GLAOIcTuEYZR/6+WRqZSoJRibEJG0XqkYyEoDqlMdlSdOPQVdJyfxuCSo8i+jOSr1VgExbGnTHuY9vcmEvGQTP8Wd8082Yo328AuhJd1xwdV/dR1oYz62ox4lrptfjnA/CraCwYAQjZkpa/bxrMO+ZTjS5O6ZanEBllr2yk3jZMHJmiVY0QGZOyJV5X11TapuSxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 64.207.220.244) smtp.rcpttodomain=pengutronix.de smtp.mailfrom=cadence.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=cadence.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6myjQfJdV9OxdJ52Wxoohu8K6mg4KFN5NsaK5ZhQlhs=;
 b=kZCLKYMm7W+wG1NQb567n55FcDXp1QbAsAJErsmP0XoeObozD2e8mJDJxVze5Btvg5uS4GA8dz3mTDxGjiJuY7dCiFO+nVRBXjOjkRwkW1STsMm3mswpXxpmbUBrGaYItdhITZs0WjZUbJfrMYcoEgrvIGpFIAl7nTssZ5kGqhY=
Received: from BN8PR15CA0010.namprd15.prod.outlook.com (2603:10b6:408:c0::23)
 by BN6PR07MB3139.namprd07.prod.outlook.com (2603:10b6:404:ab::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.26; Wed, 28 Jul
 2021 14:55:04 +0000
Received: from BN8NAM12FT058.eop-nam12.prod.protection.outlook.com
 (2603:10b6:408:c0:cafe::2e) by BN8PR15CA0010.outlook.office365.com
 (2603:10b6:408:c0::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.18 via Frontend
 Transport; Wed, 28 Jul 2021 14:55:04 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 64.207.220.244)
 smtp.mailfrom=cadence.com; pengutronix.de; dkim=none (message not signed)
 header.d=none; pengutronix.de; dmarc=pass action=none header.from=cadence.com; 
Received-SPF: Pass (protection.outlook.com: domain of cadence.com designates
 64.207.220.244 as permitted sender) receiver=protection.outlook.com;
 client-ip=64.207.220.244; helo=wcmailrelayl01.cadence.com;
Received: from wcmailrelayl01.cadence.com (64.207.220.244) by
 BN8NAM12FT058.mail.protection.outlook.com (10.13.182.188) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4373.7 via Frontend Transport; Wed, 28 Jul 2021 14:55:03 +0000
Received: from maileu3.global.cadence.com (maileu3.cadence.com [10.160.88.99])
 by wcmailrelayl01.cadence.com (8.14.7/8.14.4) with ESMTP id
 16SEsvru095664
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=OK);
 Wed, 28 Jul 2021 07:55:02 -0700
X-CrossPremisesHeadersFilteredBySendConnector: maileu3.global.cadence.com
Received: from maileu3.global.cadence.com (10.160.88.99) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 28 Jul 2021 16:54:57 +0200
Received: from vleu-orange.cadence.com (10.160.88.83) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Wed, 28 Jul 2021 16:54:57 +0200
Received: from vleu-orange.cadence.com (localhost.localdomain [127.0.0.1])
 by vleu-orange.cadence.com (8.14.4/8.14.4) with ESMTP id 16SEsv5p016549;
 Wed, 28 Jul 2021 16:54:57 +0200
Received: (from sjakhade@localhost)
 by vleu-orange.cadence.com (8.14.4/8.14.4/Submit) id 16SEsvwW016548;
 Wed, 28 Jul 2021 16:54:57 +0200
From: Swapnil Jakhade <sjakhade@cadence.com>
To: <vkoul@kernel.org>, <kishon@ti.com>, <p.zabel@pengutronix.de>,
 <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>
CC: <mparab@cadence.com>, <sjakhade@cadence.com>, <lokeshvutla@ti.com>
Subject: [PATCH v3 7/9] phy: cadence-torrent: Add separate functions for
 reusable code
Date: Wed, 28 Jul 2021 16:54:52 +0200
Message-ID: <20210728145454.15945-8-sjakhade@cadence.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20210728145454.15945-1-sjakhade@cadence.com>
References: <20210728145454.15945-1-sjakhade@cadence.com>
MIME-Version: 1.0
X-OrganizationHeadersPreserved: maileu3.global.cadence.com
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7a4eae2f-0cee-405f-a6c1-08d951d7ae63
X-MS-TrafficTypeDiagnostic: BN6PR07MB3139:
X-Microsoft-Antispam-PRVS: <BN6PR07MB313915817C52B1228DA2062FC5EA9@BN6PR07MB3139.namprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: euaukMl8Gt8CBwoSdEVpSjisnluXarHHCKYV3+6jw4y4gVEZjR6dQk/uvsuUD8HLic1PrUlr2NRwOa4kvqWb6LVPKYIOXXj06FS4MNsPo6gmpnoYb3Imp7uE57HtuJ+qpV+QguPC7O19GQv1EHDIqCVxJiZMHO52I8lAt3vvYTeRB7WlTcMR8EUP9Q98C0lXLDaVtAyvbDQNqulWIICYSJHmLmJk+5yM4Sh2pvPwE+qRKWuyvs/3gkLl6SHqc6TFeyXN5EJZUfm2kNkQ602zfJPJGdnnr/wFP2Sfxxk2lEycZf43b67FAdvv1P1Yx2VHu0Xtppf9XUwq1fexxFS4itUxw8NGCMZeYH8c8w7lS1z+37pWM+5h6g9o3Inq7PMgIYV9MBDWPS9lyNxeqJRmOj+DHW7RByHvDVm2JNbcELlbEOrimTj2pTCLmiKGge9UTO4lZS6rdHaZILR6/O6bKhS9O8kiv0Yv62jJHB3EcqUarbJVERO1pyFnVJfTzWGt7PTe4I9LPkGY4UhKAwfJng+lDZfUEIgyvsgmF1pbTe+Pi/yINeSUVbZDRnGewGvve6dOo17g0UNZJaleQnr0bpNDn2qPA0zaNtv8XWt83xxbf9qyNK1zD5YXV+QzCphCS4R2a7J3HkwVFPTheSr0TuiEscUNd7KlQOuaf+pgR2GTm1cGrLKd2NLSG9B/2GV2cuG85QRK2cBAryXeohG5CUkaDuNxBTZiHEO3LY7kzUJv6zRfEZaBWDwImKPw2x3XLOITqC6Dgd18y+sdEzyb13iy1Zle2gP0Gq6uwLlD03E=
X-Forefront-Antispam-Report: CIP:64.207.220.244; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:wcmailrelayl01.cadence.com; PTR:ErrorRetry; CAT:NONE;
 SFS:(4636009)(36092001)(36840700001)(46966006)(316002)(42186006)(2616005)(8676002)(186003)(1076003)(426003)(5660300002)(36756003)(356005)(70206006)(26005)(81166007)(508600001)(82310400003)(47076005)(36860700001)(2906002)(4326008)(54906003)(110136005)(6666004)(86362001)(70586007)(336012)(83380400001)(8936002)(36900700001)(2101003);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2021 14:55:03.3081 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a4eae2f-0cee-405f-a6c1-08d951d7ae63
X-MS-Exchange-CrossTenant-Id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=d36035c5-6ce6-4662-a3dc-e762e61ae4c9; Ip=[64.207.220.244];
 Helo=[wcmailrelayl01.cadence.com]
X-MS-Exchange-CrossTenant-AuthSource: BN8NAM12FT058.eop-nam12.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR07MB3139
X-Proofpoint-ORIG-GUID: kTU2uachNQRrOl8sddU5Ydvv_zwLeyy_
X-Proofpoint-GUID: kTU2uachNQRrOl8sddU5Ydvv_zwLeyy_
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391, 18.0.790
 definitions=2021-07-28_08:2021-07-27,
 2021-07-28 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check
 score=0 adultscore=0
 mlxscore=0 malwarescore=0 suspectscore=0 phishscore=0 mlxlogscore=999
 spamscore=0 priorityscore=1501 impostorscore=0 clxscore=1015
 lowpriorityscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2107140000 definitions=main-2107280083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_075512_988149_D863E215 
X-CRM114-Status: GOOD (  17.90  )
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

Torrent PHY driver currently supports single link DP configuration.
Prepare driver to support multilink DP configurations by adding
separate functions for common initialization sequence.

Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
Reviewed-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/phy/cadence/phy-cadence-torrent.c | 53 +++++++++++++++--------
 1 file changed, 35 insertions(+), 18 deletions(-)

diff --git a/drivers/phy/cadence/phy-cadence-torrent.c b/drivers/phy/cadence/phy-cadence-torrent.c
index 69466481af26..e4dd8d1711a6 100644
--- a/drivers/phy/cadence/phy-cadence-torrent.c
+++ b/drivers/phy/cadence/phy-cadence-torrent.c
@@ -1472,24 +1472,11 @@ static int cdns_torrent_phy_off(struct phy *phy)
 	return reset_control_assert(inst->lnk_rst);
 }
 
-static int cdns_torrent_dp_init(struct phy *phy)
+static void cdns_torrent_dp_common_init(struct cdns_torrent_phy *cdns_phy,
+					struct cdns_torrent_inst *inst)
 {
-	unsigned char lane_bits;
-	int ret;
-	struct cdns_torrent_inst *inst = phy_get_drvdata(phy);
-	struct cdns_torrent_phy *cdns_phy = dev_get_drvdata(phy->dev.parent);
 	struct regmap *regmap = cdns_phy->regmap_dptx_phy_reg;
-
-	switch (cdns_phy->ref_clk_rate) {
-	case CLK_19_2_MHZ:
-	case CLK_25_MHZ:
-	case CLK_100_MHZ:
-		/* Valid Ref Clock Rate */
-		break;
-	default:
-		dev_err(cdns_phy->dev, "Unsupported Ref Clock Rate\n");
-		return -EINVAL;
-	}
+	unsigned char lane_bits;
 
 	cdns_torrent_dp_write(regmap, PHY_AUX_CTRL, 0x0003); /* enable AUX */
 
@@ -1510,8 +1497,10 @@ static int cdns_torrent_dp_init(struct phy *phy)
 	/* release pma_xcvr_pllclk_en_ln_*, only for the master lane */
 	cdns_torrent_dp_write(regmap, PHY_PMA_XCVR_PLLCLK_EN, 0x0001);
 
-	/* PHY PMA registers configuration functions */
-	/* Initialize PHY with max supported link rate, without SSC. */
+	/*
+	 * PHY PMA registers configuration functions
+	 * Initialize PHY with max supported link rate, without SSC.
+	 */
 	if (cdns_phy->ref_clk_rate == CLK_19_2_MHZ)
 		cdns_torrent_dp_pma_cmn_vco_cfg_19_2mhz(cdns_phy,
 							cdns_phy->max_bit_rate,
@@ -1530,6 +1519,13 @@ static int cdns_torrent_dp_init(struct phy *phy)
 
 	/* take out of reset */
 	regmap_field_write(cdns_phy->phy_reset_ctrl, 0x1);
+}
+
+static int cdns_torrent_dp_start(struct cdns_torrent_phy *cdns_phy,
+				 struct cdns_torrent_inst *inst,
+				 struct phy *phy)
+{
+	int ret;
 
 	cdns_torrent_phy_on(phy);
 
@@ -1542,6 +1538,27 @@ static int cdns_torrent_dp_init(struct phy *phy)
 	return ret;
 }
 
+static int cdns_torrent_dp_init(struct phy *phy)
+{
+	struct cdns_torrent_inst *inst = phy_get_drvdata(phy);
+	struct cdns_torrent_phy *cdns_phy = dev_get_drvdata(phy->dev.parent);
+
+	switch (cdns_phy->ref_clk_rate) {
+	case CLK_19_2_MHZ:
+	case CLK_25_MHZ:
+	case CLK_100_MHZ:
+		/* Valid Ref Clock Rate */
+		break;
+	default:
+		dev_err(cdns_phy->dev, "Unsupported Ref Clock Rate\n");
+		return -EINVAL;
+	}
+
+	cdns_torrent_dp_common_init(cdns_phy, inst);
+
+	return cdns_torrent_dp_start(cdns_phy, inst, phy);
+}
+
 static int cdns_torrent_derived_refclk_enable(struct clk_hw *hw)
 {
 	struct cdns_torrent_derived_refclk *derived_refclk = to_cdns_torrent_derived_refclk(hw);
-- 
2.26.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
