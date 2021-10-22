Return-Path: <SRS0=jE1M=PK=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A420DC433FE
	for <linux-phy@archiver.kernel.org>; Fri, 22 Oct 2021 17:02:59 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5DEF96121F
	for <linux-phy@archiver.kernel.org>; Fri, 22 Oct 2021 17:02:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5DEF96121F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=cadence.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SUFWBUThkejhlp454/bk+gmMsn/pf+kDiJB26/yF7/Y=; b=uhEB5yESc4WeS4
	5i7u796fwJwy+2/5cEwQYsdSHOKIoVsZkSrDkWU8yPrL0rhjDQvFq9CnlDce5Iu9TGPRfkI/ubV2u
	8Qxn4IXF/T5azlFPa0nbU9NflOtKWrRHVVjWbz1wvlYOWhYbgCzgSsJWP7QHvCWEL33R+QySNrp0g
	+RGOxlmCptw5Km8orWZwvkfe8EQE8hSdF2GWZtZvJ0TqQwtBGKFx6wmKN67ilSp8CFOj9aJLw8jSQ
	K4z7Sur+64Eojh8pehOh11KiF6s/+JaVt/B1sRmBx9Z4af2Y1TA5DbFKUh+/ZQ/wphOKGrutJxRj+
	QK3AJEUdE9+7qvaGbLRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdxwY-00Ba58-M4; Fri, 22 Oct 2021 17:02:58 +0000
Received: from mx0a-0014ca01.pphosted.com ([208.84.65.235])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdxwV-00Ba1i-1j
 for linux-phy@lists.infradead.org; Fri, 22 Oct 2021 17:02:56 +0000
Received: from pps.filterd (m0042385.ppops.net [127.0.0.1])
 by mx0a-0014ca01.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 19MEhB1s008069; 
 Fri, 22 Oct 2021 10:02:52 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=proofpoint;
 bh=2pfTm9eMx8rDFS/G1HRRvMPJRstkV53qxgoEbhf52u0=;
 b=miQS6tNucWCGTZtTfA6cOviSj7pQ63O9PLlsUwTw7PC9ewz4JZb65zD82GUuhNNmi3u2
 hHz2d5cE82wvZuCER5OztIJq7/3cJ6kHDFV6cJd5xaolUSc53TACAWStlNTB4Nl9LT+m
 qejPFfMZ0a4BitSB0MJ6y1O9PZSR3j0zH2aZuJzEcUuPUhWjS8sFrnRT3dZmdaftwVti
 2tXXgyoeW2DmXQWTyJLVMlb6m7xPVnQ+LJi1lbJRXC/tWPjfSToUaNqSRMyeiXNE/bwX
 rQAp+7l/KyuRv1f8cdDY5Qnucj0cK3OZuUAGKE1Zo680baOdzctFWDmr0X7ssaovmxww Tg== 
Received: from nam12-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2176.outbound.protection.outlook.com [104.47.55.176])
 by mx0a-0014ca01.pphosted.com with ESMTP id 3buxg0rm4g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 22 Oct 2021 10:02:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JK5x/rrdiIbxkNr96mkOoEkQKR0btPzQ06frNneL6ZV0eU7qCfTPhfE5Dpv+ttFe3kMyw2N+1hqGYpvCrUqjHUjYzpvvFv6An3THdByzTr1PMFfMZNaPA1mNwt+LTHeiEFdUeQTuM0YX+SkIP1cRyjRcN5gaaXbvTFRpl3kH6Sxo5JMw5qmibGaUzy1RqDMP5izshTa8nkJaspEhLrL2aWSIegwg83A4yjz/PG6n30tJjyXghQBdJJAgeU7X/ksf8hD8b360eTF8uyE0nF97gEYPqjXenWZHW/VZpgroPYspSGGAxqGgHVu7oxw4qe5Xm8LVOUlymqkFM7AzROmHAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2pfTm9eMx8rDFS/G1HRRvMPJRstkV53qxgoEbhf52u0=;
 b=aRQ+brsAURd4S34+b0IHNBtzNcb2MBs2GJxx+NE8nBvWUZEcB6ubqi1g3qoYJah446nNVHCkoZ2MjNTR0gan5oOlIC4mdoUYRUwxOhfI/m5J0HXk1//KawUCMhN7XppDagwV32KKwZzgHg6lFOAeOoD4IoWw8AGf6aLQtKtwgv5f+HnB9s0CmctJg288AlIp1xofNYLB5i/HnQ/EYC/y/cEnFWsRHw3QX6FgXfHZBpd7HwnzWgZS+6gSmyLze5QBBdti41nDyubpQwmRE/LMYO/rJrHJv5vZUKSTIgaPzmsFs2Vd2wjMCHLyK7BvaNQ2wWKTL/r4X46ZhcStC4uk3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 158.140.1.147) smtp.rcpttodomain=kernel.org smtp.mailfrom=cadence.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=cadence.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2pfTm9eMx8rDFS/G1HRRvMPJRstkV53qxgoEbhf52u0=;
 b=OxTrNggIIjDGJJXDPu9XrP4lJR1btktwQ8Ymxtf1CDDtTyb0DydA5gzSYPhT7fzXC7QamxVNjy8IJFGAWQeY8nhqnWel1dVc6KVcYVAWdka2EHhE8ztOuNRCDX7/1HaO5h2DyRnW21mM/vCd66NdE08dkiCs9x/VE419w1yGhoc=
Received: from DM5PR08CA0053.namprd08.prod.outlook.com (2603:10b6:4:60::42) by
 BY5PR07MB7857.namprd07.prod.outlook.com (2603:10b6:a03:1fa::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18; Fri, 22 Oct
 2021 17:02:47 +0000
Received: from DM6NAM12FT029.eop-nam12.prod.protection.outlook.com
 (2603:10b6:4:60:cafe::67) by DM5PR08CA0053.outlook.office365.com
 (2603:10b6:4:60::42) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.16 via Frontend
 Transport; Fri, 22 Oct 2021 17:02:47 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 158.140.1.147)
 smtp.mailfrom=cadence.com; kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=pass action=none header.from=cadence.com;
Received-SPF: Pass (protection.outlook.com: domain of cadence.com designates
 158.140.1.147 as permitted sender) receiver=protection.outlook.com;
 client-ip=158.140.1.147; helo=sjmaillnx1.cadence.com;
Received: from sjmaillnx1.cadence.com (158.140.1.147) by
 DM6NAM12FT029.mail.protection.outlook.com (10.13.178.133) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4649.8 via Frontend Transport; Fri, 22 Oct 2021 17:02:47 +0000
Received: from maileu3.global.cadence.com (maileu3.cadence.com [10.160.88.99])
 by sjmaillnx1.cadence.com (8.14.4/8.14.4) with ESMTP id
 19MH2iNF008564
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 22 Oct 2021 10:02:46 -0700
X-CrossPremisesHeadersFilteredBySendConnector: maileu3.global.cadence.com
Received: from maileu3.global.cadence.com (10.160.88.99) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 22 Oct 2021 19:02:38 +0200
Received: from vleu-orange.cadence.com (10.160.88.83) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Fri, 22 Oct 2021 19:02:38 +0200
Received: from vleu-orange.cadence.com (localhost.localdomain [127.0.0.1])
 by vleu-orange.cadence.com (8.14.4/8.14.4) with ESMTP id 19MH2c9M018898;
 Fri, 22 Oct 2021 19:02:38 +0200
Received: (from sjakhade@localhost)
 by vleu-orange.cadence.com (8.14.4/8.14.4/Submit) id 19MH2cNG018897;
 Fri, 22 Oct 2021 19:02:38 +0200
From: Swapnil Jakhade <sjakhade@cadence.com>
To: <vkoul@kernel.org>, <kishon@ti.com>, <robh+dt@kernel.org>,
 <p.zabel@pengutronix.de>, <linux-phy@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
CC: <mparab@cadence.com>, <sjakhade@cadence.com>, <a-govindraju@ti.com>
Subject: [PATCH v3 03/15] dt-bindings: phy: cadence-torrent: Rename SSC macros
 to use generic names
Date: Fri, 22 Oct 2021 19:02:24 +0200
Message-ID: <20211022170236.18839-4-sjakhade@cadence.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20211022170236.18839-1-sjakhade@cadence.com>
References: <20211022170236.18839-1-sjakhade@cadence.com>
MIME-Version: 1.0
X-OrganizationHeadersPreserved: maileu3.global.cadence.com
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a0fb6488-a8dd-42d9-28cb-08d9957dc605
X-MS-TrafficTypeDiagnostic: BY5PR07MB7857:
X-Microsoft-Antispam-PRVS: <BY5PR07MB7857F505A20159EF6F28AA13C5809@BY5PR07MB7857.namprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cWvBoUj/nvyUY+dgo9AhJcsPfLAaLSmgpod52gec0XjZF7h6Bs7zfdISgLJj4PGzpJi5RhLaPos/7whKxKWpnOejKaEuuBvZ7hBErL06ildxwhSabar4Axo/xcnm3b+Hu19EbDJo9Xo91mm2NTyN/PV5mNCF6/DhdPtv4/T/iquBq9ZBf26wnoyUGHvXIGvXWnxgU8SZPJx0z1R8BXjVwjjEOVhMGsq3RjtQs5Gkyc80N0abopSlbuV4peWHnxISgU4ZeyCa7KG61yUu1dkJLnQAh4fFKYIFBeGt3cpjVVusqZ8BDpdCqDk0KW5I08jkOakQb3vQRqLJniSkGhjX/VM/nXti5jjEfvgbyXEvyfwmew8QXrKR9MVSf9ZkQhQ9ruoJCVo99U0e9H4vS3rIpbpq71oZXWvKMgaHdW6c8jhURYS8b+WfAOPF7uml2v7v5+V3MqLxweoGy/OXMq/9JB5vKJTNPEvKjiv0S8FNwX5QkbCJXaw9FVcX9HTu2r8JwznpTTrycEk8N6jgxVecKfXxexrIaSUBJn/jDcOq6+ABT6JrKNJ0Zixb7wmk6WWFS8lD0ofO0jQq+Qo/3/iGYD4+HhV6eB5ok90qDLZ1mOrcQzLKTgQFDr4X9VkYkEaOkT7+uq2TtZJ6bHVH+zEEjkpHryWBnVo0gw8KYKeLhA9eE1/lZrtp8KPUCJHgPd3Csq1FdK3E0GKN5EcjVMFOjlOI9If8ehSWVIzM2eAdOqxUeXpQZenAuJUuZWvstIMS
X-Forefront-Antispam-Report: CIP:158.140.1.147; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:sjmaillnx1.cadence.com; PTR:unknown.Cadence.COM; CAT:NONE;
 SFS:(4636009)(36092001)(46966006)(36840700001)(110136005)(426003)(6666004)(2906002)(336012)(82310400003)(2616005)(508600001)(4326008)(83380400001)(54906003)(8936002)(186003)(7636003)(36756003)(356005)(36860700001)(36906005)(26005)(5660300002)(47076005)(8676002)(1076003)(42186006)(316002)(70206006)(70586007)(86362001)(41533002);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2021 17:02:47.4393 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a0fb6488-a8dd-42d9-28cb-08d9957dc605
X-MS-Exchange-CrossTenant-Id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=d36035c5-6ce6-4662-a3dc-e762e61ae4c9; Ip=[158.140.1.147];
 Helo=[sjmaillnx1.cadence.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM12FT029.eop-nam12.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR07MB7857
X-Proofpoint-GUID: LSq1IjOMOZHv1D8GMcB2Ky_P6Fg8LtSg
X-Proofpoint-ORIG-GUID: LSq1IjOMOZHv1D8GMcB2Ky_P6Fg8LtSg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-10-22_04,2021-10-22_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check
 score=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 bulkscore=0
 adultscore=0 spamscore=0 malwarescore=0 phishscore=0 impostorscore=0
 mlxscore=0 mlxlogscore=814 suspectscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2109230001
 definitions=main-2110220099
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211022_100255_542760_C092CE62 
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

Rename SSC macros to use generic names instead of PHY specific names,
so that they can be used to specify SSC modes for both Torrent and
Sierra. Renaming the macros should not affect the things as these are
not being used in any DTS file yet.

Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/phy/phy-cadence-torrent.yaml      | 4 ++--
 include/dt-bindings/phy/phy-cadence.h                     | 8 ++++----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
index bd9ae11c9994..2fec9e54ad0e 100644
--- a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
@@ -202,7 +202,7 @@ examples:
                 #phy-cells = <0>;
                 cdns,phy-type = <PHY_TYPE_PCIE>;
                 cdns,num-lanes = <2>;
-                cdns,ssc-mode = <TORRENT_SERDES_NO_SSC>;
+                cdns,ssc-mode = <CDNS_SERDES_NO_SSC>;
             };
 
             phy@2 {
@@ -211,7 +211,7 @@ examples:
                 #phy-cells = <0>;
                 cdns,phy-type = <PHY_TYPE_SGMII>;
                 cdns,num-lanes = <1>;
-                cdns,ssc-mode = <TORRENT_SERDES_NO_SSC>;
+                cdns,ssc-mode = <CDNS_SERDES_NO_SSC>;
             };
         };
     };
diff --git a/include/dt-bindings/phy/phy-cadence.h b/include/dt-bindings/phy/phy-cadence.h
index 24fdc9e11bd6..d55fe6e6b936 100644
--- a/include/dt-bindings/phy/phy-cadence.h
+++ b/include/dt-bindings/phy/phy-cadence.h
@@ -6,11 +6,11 @@
 #ifndef _DT_BINDINGS_CADENCE_SERDES_H
 #define _DT_BINDINGS_CADENCE_SERDES_H
 
-/* Torrent */
-#define TORRENT_SERDES_NO_SSC		0
-#define TORRENT_SERDES_EXTERNAL_SSC	1
-#define TORRENT_SERDES_INTERNAL_SSC	2
+#define CDNS_SERDES_NO_SSC		0
+#define CDNS_SERDES_EXTERNAL_SSC	1
+#define CDNS_SERDES_INTERNAL_SSC	2
 
+/* Torrent */
 #define CDNS_TORRENT_REFCLK_DRIVER      0
 #define CDNS_TORRENT_DERIVED_REFCLK	1
 #define CDNS_TORRENT_RECEIVED_REFCLK	2
-- 
2.26.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
