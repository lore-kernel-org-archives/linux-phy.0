Return-Path: <SRS0=jE1M=PK=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 695B8C433FE
	for <linux-phy@archiver.kernel.org>; Fri, 22 Oct 2021 17:03:02 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2BFDD61248
	for <linux-phy@archiver.kernel.org>; Fri, 22 Oct 2021 17:03:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2BFDD61248
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=cadence.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YQTa6erAvbuEgvUDKyPZvLDBmV8Y+ecKmNp7QnA5FMI=; b=2bzpDYzjMGMIX1
	XzXb0+ablW3H7qU3xZz547Wc7dShQI2M4btJdWhq+cObEiD1Wrn6ZuhryULJ39jyUhlXH0fmZSVf+
	x7FvMp7+tIB1KOBGXRjxG6M/qTrbs39RYVLBn9Uv7t3mh180k6TmZ0RTL3MSofpNmWluad0QObPLx
	E4IYPUfqDLSe1tRNKGPnoEhbOtA5KTHW4eKLnF8eL/87BOGubTqsDkYwpBmHoScBc6pVTRs5fm6Gt
	3rgbiMtB9OWiERz2lg2I3B+lEVj2fJcgo4S2zIcHQBuU8k24soKPVg2TPXImxW9r/XYQBSHohIWBd
	GPLVTy/oRHorrH3JjXSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdxwb-00Ba6v-HB; Fri, 22 Oct 2021 17:03:01 +0000
Received: from mx0a-0014ca01.pphosted.com ([208.84.65.235])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdxwU-00Ba1a-Gt
 for linux-phy@lists.infradead.org; Fri, 22 Oct 2021 17:02:58 +0000
Received: from pps.filterd (m0042385.ppops.net [127.0.0.1])
 by mx0a-0014ca01.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 19MEGZhm028588; 
 Fri, 22 Oct 2021 10:02:51 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=proofpoint;
 bh=x73nBtE31dfYcOazONd3t8OPBi4Up1QWwDT4KhkfU0c=;
 b=k5EV9m+qzSGAaPRO8Mx6jBCMr48D4VYe1ea+a3TDwCjnVfOQXkECDcS8z/QeGP5ij5cJ
 C4e+0BY4jUoMujirFjF5yacGaNsKmiFRzN0w0RSkhoJwCgQ5ui4uEC3vrPz9VsNlLQnb
 ndLlQumZVZbK+5Gpu2wVpdHdp+GDVD97yNwtHo/pyqoyFohPzZ2gsu+seNJRJtdSGFfT
 heaXGUw36N4asoyihaBhfajvihGc1fabcEaORaxJmyb4dU+ORqpwp4CxvrACAE0eso5G
 RR4WlKDn7SoVWaQ+0GAgh/q1myRMGm3rggsQOEWRjuVtRGQ64fhXN9fS6axh2TPjJ3vG CQ== 
Received: from nam10-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2104.outbound.protection.outlook.com [104.47.58.104])
 by mx0a-0014ca01.pphosted.com with ESMTP id 3buxg0rm4e-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 22 Oct 2021 10:02:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SmwVXqCWTkckPZnfVF3iNhmasQmgz9B/x4PNUu+aLGLypG2dA/bLa/6+Kbm90hoPgqqgHMzlxdy1sngtApOJ827StVaBMpLtGIIHiZkq5KtfGXIXtkluseN75vyzxtzN3CjFRx1ezVFHTUScF8qjOJjkK6wcHpi/pGwghguUbLN2pGU9ngGDdQqomx8sSHlkYjpYADrXmHqW/nEYJ6zHKbr4hpJ1sPByVAjNjxxz35G/6tycHneRg0XP2mo3wLe+Ap615HttrnyJl2psXmJwJyk8Q470yQuqUJB/9Yh0Tx0v30hAZ328UhFc8HnAUaxqNgS0enHwzDAe3WGDlizJrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x73nBtE31dfYcOazONd3t8OPBi4Up1QWwDT4KhkfU0c=;
 b=OL6Kfu2N6OZBnQ4462gKaGtOrimcnFQlBZTRekNL4OBWDLW5vRTahVchXjVSBCMOUhshlQiRr+IrYMIhBQIEPHP7K/V9WptIF2jk3JHGQ6HTK2wDE6NC99LHuzbOFFPMcxQaYVZtG6okWNR7efol7eIE5H41bDCEfVDhQuq+jeYX1Kq8qjeGoaF5cWDIcgiJwIYuriqPlQnQVBpDdUk1OYzcXlFX4l+IhXoT1zT1pSjjTqrYxofI7kCwWenmjLjdl3tvRIcbGzHoYZwKUL1Z8NmjmmU/or5amZRW05DyHjY53Hj9stI0fReks5/18OvDbvQInX16+MkMmNtSN+ezLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 158.140.1.147) smtp.rcpttodomain=kernel.org smtp.mailfrom=cadence.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=cadence.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x73nBtE31dfYcOazONd3t8OPBi4Up1QWwDT4KhkfU0c=;
 b=WWFQUwH0HGILgDAcY54gfh11WC6o95Zz+RyhQMWvdRkdDKDPdWrM5GEJ1x1aNeUycJGq4x56iHBsc1aQ5WcoVsmV7/1z//TwPiH0Emm+n5FlOKinWI5SO8goXEa7lNYQHMl3XfxNH3qOfBLQkb4dXcWlFC/aJcNgyFtfvx/oIh0=
Received: from MWHPR2001CA0012.namprd20.prod.outlook.com
 (2603:10b6:301:15::22) by BN7PR07MB4658.namprd07.prod.outlook.com
 (2603:10b6:406:f5::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18; Fri, 22 Oct
 2021 17:02:48 +0000
Received: from MW2NAM12FT054.eop-nam12.prod.protection.outlook.com
 (2603:10b6:301:15:cafe::3b) by MWHPR2001CA0012.outlook.office365.com
 (2603:10b6:301:15::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.15 via Frontend
 Transport; Fri, 22 Oct 2021 17:02:48 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 158.140.1.147)
 smtp.mailfrom=cadence.com; kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=pass action=none header.from=cadence.com;
Received-SPF: Pass (protection.outlook.com: domain of cadence.com designates
 158.140.1.147 as permitted sender) receiver=protection.outlook.com;
 client-ip=158.140.1.147; helo=sjmaillnx1.cadence.com;
Received: from sjmaillnx1.cadence.com (158.140.1.147) by
 MW2NAM12FT054.mail.protection.outlook.com (10.13.180.197) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4649.8 via Frontend Transport; Fri, 22 Oct 2021 17:02:48 +0000
Received: from maileu3.global.cadence.com (maileu3.cadence.com [10.160.88.99])
 by sjmaillnx1.cadence.com (8.14.4/8.14.4) with ESMTP id
 19MH2iNH008564
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 22 Oct 2021 10:02:48 -0700
X-CrossPremisesHeadersFilteredBySendConnector: maileu3.global.cadence.com
Received: from maileu4.global.cadence.com (10.160.110.201) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 22 Oct 2021 19:02:38 +0200
Received: from maileu3.global.cadence.com (10.160.88.99) by
 maileu4.global.cadence.com (10.160.110.201) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.1.2176.2; Fri, 22 Oct 2021 19:02:38 +0200
Received: from vleu-orange.cadence.com (10.160.88.83) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Fri, 22 Oct 2021 19:02:38 +0200
Received: from vleu-orange.cadence.com (localhost.localdomain [127.0.0.1])
 by vleu-orange.cadence.com (8.14.4/8.14.4) with ESMTP id 19MH2bfw018883;
 Fri, 22 Oct 2021 19:02:37 +0200
Received: (from sjakhade@localhost)
 by vleu-orange.cadence.com (8.14.4/8.14.4/Submit) id 19MH2aw7018879;
 Fri, 22 Oct 2021 19:02:36 +0200
From: Swapnil Jakhade <sjakhade@cadence.com>
To: <vkoul@kernel.org>, <kishon@ti.com>, <robh+dt@kernel.org>,
 <p.zabel@pengutronix.de>, <linux-phy@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
CC: <mparab@cadence.com>, <sjakhade@cadence.com>, <a-govindraju@ti.com>
Subject: [PATCH v3 00/15] PHY: Add support for multilink configurations in
 Cadence Sierra PHY driver
Date: Fri, 22 Oct 2021 19:02:21 +0200
Message-ID: <20211022170236.18839-1-sjakhade@cadence.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-OrganizationHeadersPreserved: maileu3.global.cadence.com
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 78ea393f-b871-4d01-92ef-08d9957dc696
X-MS-TrafficTypeDiagnostic: BN7PR07MB4658:
X-Microsoft-Antispam-PRVS: <BN7PR07MB465823C21A0EB713AD33DF7FC5809@BN7PR07MB4658.namprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: r7QtoIWyQS50AvGCejBDrjy/0q0PiVu0xyKjMYUN+WhvtjB3mlqjF5ih/Lu2EguO/kVOkvNxDnU/d9UwHkOqooWqwwCN6aj1LNv0PUEfixwL+LBBFFJXhYEyCvB0pHKapAPW3d0ercOXW/XDC266ItW1QHCGqX6ZE3L58ee/SoZXJtCVS6O5IFGrqZeHLq/zJ03xHG+THslQ7Mb5dNtGarBmsLUkaXEAXH8lCj21WL5oCEBKRRvfNNpDUvf4RUt6SNdLAS/PXgIUh9w+hkt/1hMmMM7F6lKlEfzFhzAB8Nmv/vyiB/sC8fYbOh7scpq9MvM9bQmExzz8aw3bUx1SLJR4a+CSC4cMsiWOwxYfgQarRvHBFe3cC5vtOgHeiYcm6w67ALRy5dM6WrIC6WiraLv9Ke7Za5whsLwfGQW3M1myKhOYh8Ip91YTv+s7FEUEX05NXUv570/RCq84tM+1NBpEF185RjyL43N2OWcfyTSifZsjhw1laiUcCB3qfRD8hz0rL531MqsuQ9ztwD9Hcykm0VUc7lVvI+Fu5FsDF5ba2eK9OPkhx/LFL4xuxfJpMq3jpDvj/JmwX1/pwB3IZaRZHohMKqkD/ZggQsr0s4kL9ntlferbvlhKV0G5b7YVSB+RRKJ8aRHYv13DZW1ffO2JrGqcTgYvhloROs2IPApSbnMbhVa1+GUFjFZF86pEa6TBHhxrxELjk2nCGQpJ9tU8871/aocVH02MOfCxNr4=
X-Forefront-Antispam-Report: CIP:158.140.1.147; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:sjmaillnx1.cadence.com; PTR:unknown.Cadence.COM; CAT:NONE;
 SFS:(4636009)(36092001)(36840700001)(46966006)(47076005)(4326008)(186003)(426003)(70586007)(70206006)(2616005)(316002)(42186006)(26005)(8936002)(5660300002)(356005)(336012)(8676002)(7636003)(508600001)(83380400001)(82310400003)(2906002)(6666004)(54906003)(110136005)(36756003)(86362001)(36906005)(1076003)(36860700001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2021 17:02:48.4233 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 78ea393f-b871-4d01-92ef-08d9957dc696
X-MS-Exchange-CrossTenant-Id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=d36035c5-6ce6-4662-a3dc-e762e61ae4c9; Ip=[158.140.1.147];
 Helo=[sjmaillnx1.cadence.com]
X-MS-Exchange-CrossTenant-AuthSource: MW2NAM12FT054.eop-nam12.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR07MB4658
X-Proofpoint-GUID: 9LxO4J88-EBW-Mu7vjz5f-thfhwBzgx1
X-Proofpoint-ORIG-GUID: 9LxO4J88-EBW-Mu7vjz5f-thfhwBzgx1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-10-22_04,2021-10-22_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check
 score=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 bulkscore=0
 adultscore=0 spamscore=0 malwarescore=0 phishscore=0 impostorscore=0
 mlxscore=0 mlxlogscore=999 suspectscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2109230001
 definitions=main-2110220099
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211022_100255_552098_F9015046 
X-CRM114-Status: GOOD (  16.54  )
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

Cadence Sierra PHY is a multiprotocol PHY supporting different multilink
PHY configurations. This patch series extends functionality of Sierra PHY
driver by adding features like support for multilink multiprotocol
configurations, derived reference clock etc.

The changes have been validated on TI J721E platform.

Version History:

v3:
   - Rebased on latest PHY next
   - Added Reviewed-by and Acked-by tags

v2:
   - Added a new patch 3/15 to rename the SSC macros for dt-bindings
     to use generic names. These macros are not yet used in any DTS file.

Swapnil Jakhade (15):
  phy: cadence: Sierra: Use of_device_get_match_data() to get driver
    data
  phy: cadence: Sierra: Prepare driver to add support for multilink
    configurations
  dt-bindings: phy: cadence-torrent: Rename SSC macros to use generic
    names
  dt-bindings: phy: cadence-sierra: Add binding to specify SSC mode
  phy: cadence: Sierra: Add support to get SSC type from device tree
  phy: cadence: Sierra: Rename some regmap variables to be in sync with
    Sierra documentation
  phy: cadence: Sierra: Add PHY PCS common register configurations
  phy: cadence: Sierra: Check cmn_ready assertion during PHY power on
  phy: cadence: Sierra: Check PIPE mode PHY status to be ready for
    operation
  phy: cadence: Sierra: Update single link PCIe register configuration
  phy: cadence: Sierra: Fix to get correct parent for mux clocks
  phy: cadence: Sierra: Add support for PHY multilink configurations
  phy: cadence: Sierra: Add PCIe + QSGMII PHY multilink configuration
  dt-bindings: phy: cadence-sierra: Add clock ID for derived reference
    clock
  phy: cadence: Sierra: Add support for derived reference clock output

 .../bindings/phy/phy-cadence-sierra.yaml      |    9 +
 .../bindings/phy/phy-cadence-torrent.yaml     |    4 +-
 drivers/phy/cadence/phy-cadence-sierra.c      | 1299 +++++++++++++++--
 include/dt-bindings/phy/phy-cadence.h         |    9 +-
 4 files changed, 1226 insertions(+), 95 deletions(-)

-- 
2.26.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
