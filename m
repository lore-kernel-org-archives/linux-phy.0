Return-Path: <SRS0=jE1M=PK=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16BA6C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 22 Oct 2021 17:03:02 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D5C8661248
	for <linux-phy@archiver.kernel.org>; Fri, 22 Oct 2021 17:03:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D5C8661248
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=cadence.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ck8flZL1GnaKLEBgkybSWBg/CMEKhELIpD08ex+TcgI=; b=hFJ99dQirQGZ7Z
	P8TFpxbKbsrbaUqs/saAgue8CTmoD6we0wGvFsH97MRTLbDNzuKoju2dXgqAyUnejsCsLZlt6rnft
	2zfo56p8DJsU4CAiWlUdsk+SP7R9ctlLUquAYMXgqI9TlNllCTSXpe3wlT8XJHArek13/wdvBwzwG
	78oucHoGcjfPkFB2ronVOecbGDFgNYJVglrirLeLJQkuuX/xIEn4OOMJvyCc7lJY+CqUaaGe0IeU1
	F2cT5pfnykMkNGgMPi2LqVyIA/m5sXtEawVIcWnXfIWBYvZUirUUfiqX4snnyWlMqeDnosStnw0Vd
	iGc/Qtt5yVWHxjqqBfhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdxwb-00Ba5s-8K; Fri, 22 Oct 2021 17:03:01 +0000
Received: from mx0b-0014ca01.pphosted.com ([208.86.201.193]
 helo=mx0a-0014ca01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdxwV-00Ba1o-NH
 for linux-phy@lists.infradead.org; Fri, 22 Oct 2021 17:02:58 +0000
Received: from pps.filterd (m0042333.ppops.net [127.0.0.1])
 by mx0b-0014ca01.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 19MEgQ11012896; 
 Fri, 22 Oct 2021 10:02:54 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=proofpoint;
 bh=LxhFqcql4Dg9Uel4uwEVR1Th6ctjD9b+FSHFKo8jkCk=;
 b=FEzg+3aVWMsSz1iP1j2YwVOsgTpTi3ZjHmspVZnjxssdyS5+PL+iqDryKwM+xPrvqGB/
 N24AJEc3cTNxg7ftwTAwv2qv8EapTpi28KZAtz9WHOa72Ns9+LdbZmLIpsXvlUR6OlNr
 LLZB9p+1L97LvqgXc7mPmeGlhBt75SOgFxSOizUFwE3Thpo80fHCukvurJJ6VvwFGTw5
 Mg1QpIJNEfONi/IZuPfes4oNc41abMqlelDnw5XUK0QOsqGfhrWYAgaJ3QvYIy/ojj1I
 TzS3kjOQ/WqoOMx6lQx/rK6unhL+Hx63cAk6ZahE4r46w1EkAyeunEvZu1JEYU0aX4rn JQ== 
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2044.outbound.protection.outlook.com [104.47.66.44])
 by mx0b-0014ca01.pphosted.com with ESMTP id 3buya2resq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 22 Oct 2021 10:02:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=REZ0Zy8W5JOW0Gem6D5NuPqz5rWbGp51mCJ7ZpIVjr5yjUaAlfGrHx6CVp+DiJmk997fRcu1Nuz7KCN07O40EKk7FGLFyrU9kWyb3Q+zO/+TXqP+F6fF9nm22ua7O4YwE/AkZ8oAX9zMA4wBAknaOqkCBzClNo97mxiEpkVlZ8TTidcLbbnoES8JCrUk3keH1EF8O4JbvQnVIK98YaJR++dbBz5WfTcztUVnqyikrdyAGO+MfQuGL2Gq8fe36WPLE1B3gV8Qarx0nh+1ubDFJkA/A/sjOrhn+lEmOCOwCUyRErLaIPDf+LYQi4OfeHJK/Y5WOzDesPU3CJONXnI8Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LxhFqcql4Dg9Uel4uwEVR1Th6ctjD9b+FSHFKo8jkCk=;
 b=WX7VqbBB9Fh8ezMRICbIzEmhY6WlOu1uReWB1UeBvrd03pi48ApzQCiCREkei03d8i74aIUdWCkWB9/pvh0wVn9cOWOmnkccbT/MdCAxQ6UoCXGewXJzwlKxBtrOXT5C+CDdqqkknRxUp9v5jSK6fdeHIPaOe3Lr9po0/jlMivpKyd8zeJ74wyQNIcsKu84sQQD8Pb7w2eHzbIoJm6oDqPg6K2PNOTWIFMSQODx1ZdQVVFHbo5+hLML7YLMt/B2g7b19OPV7NIjBZ+OCT+mwl3CM6dP3aK+AetlmIvixcdd1ijttOaBVq8+cuAPtRv4rr8EN4idd2jQX+Zh40f62Qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 158.140.1.147) smtp.rcpttodomain=kernel.org smtp.mailfrom=cadence.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=cadence.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LxhFqcql4Dg9Uel4uwEVR1Th6ctjD9b+FSHFKo8jkCk=;
 b=0NYdr+JErzM2eTjSm81SGDH6p0oT7dEY83oE2zXGdkbAR1hCVHsTjzQXpS2Ykb167HQzH+GmQzE9/47/OQNlnpV8T/GVP8HzvNQaDO1dMPo16o2Y8D8mUWBrteUWsKv2SJrqGrboR6yZI46r7IWlqmoAtQIn9bQ8J6hCK1z8q8Y=
Received: from MWHPR21CA0035.namprd21.prod.outlook.com (2603:10b6:300:129::21)
 by BL3PR07MB8884.namprd07.prod.outlook.com (2603:10b6:208:357::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.15; Fri, 22 Oct
 2021 17:02:49 +0000
Received: from MW2NAM12FT007.eop-nam12.prod.protection.outlook.com
 (2603:10b6:300:129:cafe::21) by MWHPR21CA0035.outlook.office365.com
 (2603:10b6:300:129::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.1 via Frontend
 Transport; Fri, 22 Oct 2021 17:02:49 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 158.140.1.147)
 smtp.mailfrom=cadence.com; kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=pass action=none header.from=cadence.com;
Received-SPF: Pass (protection.outlook.com: domain of cadence.com designates
 158.140.1.147 as permitted sender) receiver=protection.outlook.com;
 client-ip=158.140.1.147; helo=sjmaillnx1.cadence.com;
Received: from sjmaillnx1.cadence.com (158.140.1.147) by
 MW2NAM12FT007.mail.protection.outlook.com (10.13.180.74) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4649.8 via Frontend Transport; Fri, 22 Oct 2021 17:02:49 +0000
Received: from maileu3.global.cadence.com (maileu3.cadence.com [10.160.88.99])
 by sjmaillnx1.cadence.com (8.14.4/8.14.4) with ESMTP id
 19MH2iNJ008564
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 22 Oct 2021 10:02:49 -0700
X-CrossPremisesHeadersFilteredBySendConnector: maileu3.global.cadence.com
Received: from maileu5.global.cadence.com (10.160.110.202) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 22 Oct 2021 19:02:38 +0200
Received: from maileu3.global.cadence.com (10.160.88.99) by
 maileu5.global.cadence.com (10.160.110.202) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.1.2176.2; Fri, 22 Oct 2021 19:02:38 +0200
Received: from vleu-orange.cadence.com (10.160.88.83) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Fri, 22 Oct 2021 19:02:38 +0200
Received: from vleu-orange.cadence.com (localhost.localdomain [127.0.0.1])
 by vleu-orange.cadence.com (8.14.4/8.14.4) with ESMTP id 19MH2clS018902;
 Fri, 22 Oct 2021 19:02:38 +0200
Received: (from sjakhade@localhost)
 by vleu-orange.cadence.com (8.14.4/8.14.4/Submit) id 19MH2cmP018901;
 Fri, 22 Oct 2021 19:02:38 +0200
From: Swapnil Jakhade <sjakhade@cadence.com>
To: <vkoul@kernel.org>, <kishon@ti.com>, <robh+dt@kernel.org>,
 <p.zabel@pengutronix.de>, <linux-phy@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
CC: <mparab@cadence.com>, <sjakhade@cadence.com>, <a-govindraju@ti.com>
Subject: [PATCH v3 04/15] dt-bindings: phy: cadence-sierra: Add binding to
 specify SSC mode
Date: Fri, 22 Oct 2021 19:02:25 +0200
Message-ID: <20211022170236.18839-5-sjakhade@cadence.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20211022170236.18839-1-sjakhade@cadence.com>
References: <20211022170236.18839-1-sjakhade@cadence.com>
MIME-Version: 1.0
X-OrganizationHeadersPreserved: maileu3.global.cadence.com
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3e7c726f-13af-4378-2d92-08d9957dc740
X-MS-TrafficTypeDiagnostic: BL3PR07MB8884:
X-Microsoft-Antispam-PRVS: <BL3PR07MB888463987D23C79D9FD2A045C5809@BL3PR07MB8884.namprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PIzNvrvmP2nKVUM+tJd8DlLw93j+0gbikKEaUCX5CcLHZhYTra5x/gQipuFVx3GxVxMn+EJ/uj+aFa9ErGf00Sdux9T0L3cXpavO2k2TcFM8vpgLg7ncfmwdnD7kpoWHLRhIeYkiAsDN1E40ka0J6gz6i+S0CN9hesNNWvTnCpoJoOsLKBTafPqEg5HwDEFiVvCUdbUPmeV5JdCMGLel+I5ZSlafGF2uAhva2sPegk7jom+uytDGBM9/q4dQfaB7lqhxyNRmTEJpDT/wrO+9Lf0odKptqjSSkgjFTsMyuzGMnz7/myJ/HA8rK+DygRQHH1sNP1Kk8NPWHpQv4fUIHcnQH1FoDdhQrBY5hwl6uckSqbI4q9G1A4RGVYKD+5h+720Xd7Vx/6F5V8DtwwkEKo4mMVY9dD0aCgc74vm3wev7co/vSTNduBzXi8N86tRHboFGHpQDkje5tR0znt0j3zZl8gfu5ugM93ON7YWH2buqd5Qxs2p9n7TMwxDq+xVkiLPN648F5UGTStzbXFr8xgtPQMhFMcBSttyOd/1geRX//XdPgalNhvNEAzOcP0sFNaWTmRBHlNQdKsilF9l2kTYJfwwjy1yzE6iIkBRJEhBNL7erFaH0qubUvrWPNUR+SgVl4Da0vYfp0JwWtPRhK/gUS8Z1JJt64bUMqOElemY/exTRDOVTsc3ilaTPSrDjSQFi+yJtf8FHd3GsX6ZLtvEUTU7rm8RWg0NT+nJrz6g=
X-Forefront-Antispam-Report: CIP:158.140.1.147; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:sjmaillnx1.cadence.com; PTR:unknown.Cadence.COM; CAT:NONE;
 SFS:(4636009)(36092001)(46966006)(36840700001)(336012)(1076003)(47076005)(54906003)(110136005)(2906002)(36906005)(36756003)(70586007)(26005)(6666004)(4326008)(2616005)(316002)(426003)(70206006)(42186006)(8936002)(82310400003)(186003)(86362001)(356005)(508600001)(5660300002)(4744005)(8676002)(36860700001)(83380400001)(7636003);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2021 17:02:49.5338 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e7c726f-13af-4378-2d92-08d9957dc740
X-MS-Exchange-CrossTenant-Id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=d36035c5-6ce6-4662-a3dc-e762e61ae4c9; Ip=[158.140.1.147];
 Helo=[sjmaillnx1.cadence.com]
X-MS-Exchange-CrossTenant-AuthSource: MW2NAM12FT007.eop-nam12.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR07MB8884
X-Proofpoint-GUID: lR4TAAjVBXlTYy6vskGii47hKvsbfjJx
X-Proofpoint-ORIG-GUID: lR4TAAjVBXlTYy6vskGii47hKvsbfjJx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-10-22_04,2021-10-22_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check
 score=0 mlxscore=0
 malwarescore=0 impostorscore=0 phishscore=0 clxscore=1011 suspectscore=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 mlxlogscore=999 spamscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109230001 definitions=main-2110220098
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211022_100255_913808_4BAB9B4D 
X-CRM114-Status: GOOD (  12.35  )
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

Add binding to specify Spread Spectrum Clocking mode used.

Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/phy/phy-cadence-sierra.yaml      | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-cadence-sierra.yaml b/Documentation/devicetree/bindings/phy/phy-cadence-sierra.yaml
index e71b32c9c0d1..a9e227d8b076 100644
--- a/Documentation/devicetree/bindings/phy/phy-cadence-sierra.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-cadence-sierra.yaml
@@ -113,6 +113,15 @@ patternProperties:
         minimum: 1
         maximum: 16
 
+      cdns,ssc-mode:
+        description:
+          Specifies the Spread Spectrum Clocking mode used. It can be NO_SSC,
+          EXTERNAL_SSC or INTERNAL_SSC.
+          Refer include/dt-bindings/phy/phy-cadence.h for the constants to be used.
+        $ref: /schemas/types.yaml#/definitions/uint32
+        enum: [0, 1, 2]
+        default: 1
+
     required:
       - reg
       - resets
-- 
2.26.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
