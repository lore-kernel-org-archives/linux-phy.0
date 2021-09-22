Return-Path: <SRS0=p6f2=OM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	UNWANTED_LANGUAGE_BODY,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BFE9C43217
	for <linux-phy@archiver.kernel.org>; Wed, 22 Sep 2021 12:38:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1B9B361181
	for <linux-phy@archiver.kernel.org>; Wed, 22 Sep 2021 12:38:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1B9B361181
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=cadence.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A+qrDvsmUmfoi9+28zggk0KSquTKUdrxoYh4R+HX16U=; b=P3YdPzzBw6NB8t
	XSm/tZj+UQLPrzijPJc/YSbEMRV35cwCfqZ3mvYMwUPoeRnk4S92I0uBn9ZF6NhXznD8itorQl6RI
	6rI4Vb/SFi6P3B2bdjuVISJ9LGSklriMK/GnA6eClP0YqrXBBuJqUshaZmMmeA1QAaBBHhU5NuKGT
	ziVZWpcCrkTPdaWKLinSFu3P+uVkd8o4oK5Sk4QliUpnhtIibq6lcr0pPpNgYjGe+ZnvevyXCSZ+/
	oXtwmpSETInRPVa+ML7vdwXaR63DdspBfOQKxtWlzjPMVoO/341grUjxVJZ2PuOJfphZFwJ42Y1Iq
	37QJG185FaFeKQyChypg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mT1Vn-008O62-Jy; Wed, 22 Sep 2021 12:38:07 +0000
Received: from mx0a-0014ca01.pphosted.com ([208.84.65.235])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mT1Vl-008O5J-FR
 for linux-phy@lists.infradead.org; Wed, 22 Sep 2021 12:38:06 +0000
Received: from pps.filterd (m0042385.ppops.net [127.0.0.1])
 by mx0a-0014ca01.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 18MBEDBI011057; 
 Wed, 22 Sep 2021 05:38:04 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=proofpoint;
 bh=KBXBDrvPArq1kogd2+VhgbmyqIZl15RH1yoDmXxWoNE=;
 b=Oz1x3yFwHX9ofqFl1ixBX3Abf1K0jOzhFFT8eX542iUNBUH8EVcs9xFA/N880I60Jc0W
 El8EhBfdXMDuDhV61CwiWVLTfxN2d+51hS/S8l844YFvKwwfvVNFATHms/OjL7962mCw
 /SjlQ+T9dowHN7P+Hu/W1OUd1CRZM1cn2VqcCeZyvMRgccGomj65O+NFAiOjSh/e3q4V
 48ianLGmvsCArE9SpqhTAC5C/oBlhY2F3lTHs7uteqxHD0rSmp5/3F8iVf79UUryXeg3
 Tk+jiRWjsdvgyiGoWKRxGn8CIlCawcrS+pHmVF0BChCqwXsNQ97Yx2A/7mUsXsQMvXbA nw== 
Received: from nam11-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam11lp2174.outbound.protection.outlook.com [104.47.57.174])
 by mx0a-0014ca01.pphosted.com with ESMTP id 3b7q41a4ye-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Sep 2021 05:38:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XcjhIsvTF9VZkq1VlOnVv41hK2NEz+ovGnqffeMqE1rMmBYzLazVWQuq8d+OK4X5adUy3+PHxUDbqX6GyT7HmHVAj+QfKeM+czLV08nB/u8meNZhKy0eGIPnG+16WdDGMGPiB8Kiro8gjLQQl6TrwiOlFdk5+OjTGCS3PHyiuKFEUIfu0fs6Z9k0QplzJWJn5ffU4WcU9pi4lOgaSq0XlyXWFZ7br7xe0170JWdiobNqzPCrBgUs8G8sZ0dDeZl5YNWIXCvlgxTdgyAkKYycO8I9FKGe2MDAEC79m/4+WvI7kin0NRA4h+CPODqoRrlyPhBwhrc2x0VJ/iIVbKaF/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=KBXBDrvPArq1kogd2+VhgbmyqIZl15RH1yoDmXxWoNE=;
 b=GhaTbDh5Q2WxZ4zQIVy3Hdus6f+mLMfmlODyf67mqBL8enIKE53bwbXmaRQBHWWYYrOiVJOmGFcg33DaxaQdu4ZWXZfp4rzKWtJnAD6MpR5/jkjl/0SI+v6djeXzZfJ03ijk+tAke5gp2Ryu90pJJaIzrULIrJ5iR8SS2yBnpg96mCarZcBJBPb+8tyg09B1YmLdGj7RAO1nI9tgBQNVP3KnUyTvJnuDfpXVgM8XPFC83IHvnjl4O0BOufEaTN3K3cEUs1J/l8Z6KKLdaV0ewA8I1SgLxixZGFgb/S2iAB63K8WiSVwfXcvEewmbTMzrhIrZKFMZYZ9jrF/YJw5v+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 199.43.4.23) smtp.rcpttodomain=kernel.org smtp.mailfrom=cadence.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=cadence.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KBXBDrvPArq1kogd2+VhgbmyqIZl15RH1yoDmXxWoNE=;
 b=22H+yOHMgsudD6jI/V7isIh3AVUqYWJyz4fBZe8+X36N1QIehYoLPJL9sW/J6fhmhmlBExYBw0hqAYKjBmVziaLPXTglZcf0zVeWpRG6z5l56VovdBhrtVQ0yY4OY+ZibgPbZ5EygEcaxqoiLOrve7z8GAC8xdgKece2SPlzZC4=
Received: from MW4PR03CA0118.namprd03.prod.outlook.com (2603:10b6:303:b7::33)
 by BN3PR07MB2705.namprd07.prod.outlook.com (2a01:111:e400:7bb2::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Wed, 22 Sep
 2021 12:38:01 +0000
Received: from MW2NAM12FT053.eop-nam12.prod.protection.outlook.com
 (2603:10b6:303:b7:cafe::c) by MW4PR03CA0118.outlook.office365.com
 (2603:10b6:303:b7::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.14 via Frontend
 Transport; Wed, 22 Sep 2021 12:38:01 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 199.43.4.23)
 smtp.mailfrom=cadence.com; kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=pass action=none header.from=cadence.com;
Received-SPF: Pass (protection.outlook.com: domain of cadence.com designates
 199.43.4.23 as permitted sender) receiver=protection.outlook.com;
 client-ip=199.43.4.23; helo=rmmaillnx1.cadence.com;
Received: from rmmaillnx1.cadence.com (199.43.4.23) by
 MW2NAM12FT053.mail.protection.outlook.com (10.13.181.9) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4544.6 via Frontend Transport; Wed, 22 Sep 2021 12:38:01 +0000
Received: from maileu3.global.cadence.com (maileu3.cadence.com [10.160.88.99])
 by rmmaillnx1.cadence.com (8.14.4/8.14.4) with ESMTP id
 18MCbvKm003390
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 22 Sep 2021 08:38:00 -0400
X-CrossPremisesHeadersFilteredBySendConnector: maileu3.global.cadence.com
Received: from maileu4.global.cadence.com (10.160.110.201) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 22 Sep 2021 14:37:50 +0200
Received: from maileu3.global.cadence.com (10.160.88.99) by
 maileu4.global.cadence.com (10.160.110.201) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.1.2176.2; Wed, 22 Sep 2021 14:37:38 +0200
Received: from vleu-orange.cadence.com (10.160.88.83) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Wed, 22 Sep 2021 14:37:38 +0200
Received: from vleu-orange.cadence.com (localhost.localdomain [127.0.0.1])
 by vleu-orange.cadence.com (8.14.4/8.14.4) with ESMTP id 18MCbcf3021977;
 Wed, 22 Sep 2021 14:37:38 +0200
Received: (from sjakhade@localhost)
 by vleu-orange.cadence.com (8.14.4/8.14.4/Submit) id 18MCbcDF021976;
 Wed, 22 Sep 2021 14:37:38 +0200
From: Swapnil Jakhade <sjakhade@cadence.com>
To: <vkoul@kernel.org>, <kishon@ti.com>, <robh+dt@kernel.org>,
 <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>
CC: <mparab@cadence.com>, <sjakhade@cadence.com>, <lokeshvutla@ti.com>,
 <a-govindraju@ti.com>
Subject: [PATCH v2 2/4] dt-bindings: phy: cadence-torrent: Add clock IDs for
 derived and received refclk
Date: Wed, 22 Sep 2021 14:37:33 +0200
Message-ID: <20210922123735.21927-3-sjakhade@cadence.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20210922123735.21927-1-sjakhade@cadence.com>
References: <20210922123735.21927-1-sjakhade@cadence.com>
MIME-Version: 1.0
X-OrganizationHeadersPreserved: maileu3.global.cadence.com
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f5b5838f-937f-4356-c286-08d97dc5d0c1
X-MS-TrafficTypeDiagnostic: BN3PR07MB2705:
X-Microsoft-Antispam-PRVS: <BN3PR07MB27059B66473BA82BEFC72FFAC5A29@BN3PR07MB2705.namprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1079;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: soaBvoW/Mq7L4I84qwMQL63AsBw0BtTvi0HFAldAA3OXBInLMEKmmYDBASQCs6jezoRf4i8Sn+qyol0XZVBbiy49QdBHxG+F2pF4LKuxpmvUJuXaoDOpQd+Uvl8tm8wyN82fniKZeScjRVWvU2Z7pJSXFgO6/DIvebxzbPEtqk9+Uw+jzw2rogPgIHSfLR6Z0i8288x/D4GUanSmiLSmjx7owNtiiyyCXMSacpe1w0zmi8hFfHARBm0+tVyxpYFm00g6BpySJ5yCEspgOUUHEWna4KRg0ndRKc+HgpGkx5DkANwCQGCs/3rYp96Er1pQKBwSMy/X4N+asuKlEVpwQeWFY3b9gn5KJIbEbtH1HCPQKdtdVAx8hBxw2WJufHvuXwaFoMFbEbRw3oiOnzXRRBrCEKR1mdjZB9V8c69P0K4zmLiulMFzbjNgyIMK8cJrbq5pdxAXLEr9hlVNJPGYlc/ja5ygEOE3RGPmnuh4Fnh5EkXnEaTcD/aa/Vk/m08WFVx6OBAn9R3Eiu0CA9Ru3hbpfB+5ToCR6s9DQVYKKoP1dEmyvHm4cU/ReTrmzL8Es6NxIzBMMiWH+s40wjAJ5lR0fXjQ2NytK3VKFCCRQnKhV8nbx/mA8s4kk7RFJLU4lGPhyVwAQ0prCV0BfttmYlHGSpr8T7xjRLo1YourwtmgYamprXq+SYSOtHf6DOaj4Xdrg6Ity9C/8MwT9Q9HR/W1MtU9rtg/VF7DxDJBvrCApMjafRuqhcVnWshAmubzUuYVHXwmDh1o1Wwb+F47ODuPNk//msiVOjegW8Qfaf8=
X-Forefront-Antispam-Report: CIP:199.43.4.23; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:rmmaillnx1.cadence.com; PTR:InfoDomainNonexistent;
 CAT:NONE;
 SFS:(4636009)(36092001)(46966006)(36840700001)(6666004)(83380400001)(1076003)(81166007)(86362001)(8936002)(316002)(508600001)(54906003)(4326008)(42186006)(36906005)(356005)(110136005)(36756003)(36860700001)(2616005)(4744005)(5660300002)(82310400003)(26005)(426003)(47076005)(186003)(336012)(8676002)(2906002)(70206006)(70586007)(2101003)(36900700001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2021 12:38:01.2435 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f5b5838f-937f-4356-c286-08d97dc5d0c1
X-MS-Exchange-CrossTenant-Id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=d36035c5-6ce6-4662-a3dc-e762e61ae4c9; Ip=[199.43.4.23];
 Helo=[rmmaillnx1.cadence.com]
X-MS-Exchange-CrossTenant-AuthSource: MW2NAM12FT053.eop-nam12.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR07MB2705
X-Proofpoint-ORIG-GUID: aKtFxpGq6TyK52uFDJ4B-16papSSo_Uh
X-Proofpoint-GUID: aKtFxpGq6TyK52uFDJ4B-16papSSo_Uh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-09-22_04,2021-09-22_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check
 score=0
 lowpriorityscore=0 adultscore=0 mlxlogscore=961 spamscore=0 clxscore=1015
 priorityscore=1501 mlxscore=0 impostorscore=0 suspectscore=0 bulkscore=0
 phishscore=0 malwarescore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2109200000 definitions=main-2109220089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_053805_547058_A37995F5 
X-CRM114-Status: GOOD (  13.95  )
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

Add clock IDs for derived and received reference clock output.

Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 include/dt-bindings/phy/phy-cadence.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/dt-bindings/phy/phy-cadence.h b/include/dt-bindings/phy/phy-cadence.h
index 4652bcb86265..24fdc9e11bd6 100644
--- a/include/dt-bindings/phy/phy-cadence.h
+++ b/include/dt-bindings/phy/phy-cadence.h
@@ -12,6 +12,8 @@
 #define TORRENT_SERDES_INTERNAL_SSC	2
 
 #define CDNS_TORRENT_REFCLK_DRIVER      0
+#define CDNS_TORRENT_DERIVED_REFCLK	1
+#define CDNS_TORRENT_RECEIVED_REFCLK	2
 
 /* Sierra */
 #define CDNS_SIERRA_PLL_CMNLC		0
-- 
2.26.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
