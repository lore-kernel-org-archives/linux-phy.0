Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2063DFA373F
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 07:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7je6l4bqZTPIl1B61zlxOxT8ZxHSdIdrpD8brMn+2J4=; b=sIPMCjI82kBzcR
	gvd9gXu7Zu1grdge1+V1AZRXmZMGQLdJegKU0YpWB8VQgaehgOMO40OiKPdfW6RB81tNXnfE5G47n
	asypPklp5Tq5iTyAuOwx5Qd+CESEIIyV9C5uDAuxaQcwe9EuF0otw/7u2TiuP/O+lnDGax58hfuYs
	rkv7G96a6bj9febscSIQtcHlVchUXfGr1NG34y+1bgAf+i4TvygHFef92np/D2AiTYdr2Zdr+RlVa
	L4eOYRC7+qQl2KbFZyCYACei77vzmbft3L9gIY/hol1Lb+us3fGt3h8l58yCSWhJQVzCG4RSK5ry4
	op5FXPfb9Yo0Nj85vqlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oms5m-00HWJh-IJ; Mon, 24 Oct 2022 07:41:50 +0000
Received: from mail-bn8nam11on2041.outbound.protection.outlook.com ([40.107.236.41] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oms5j-00HWHq-SJ
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 07:41:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i1Z216VIyCEofwZvlx60um84XKGBmQF6fj3vKCfjeDJ81Bsv5WqSIUgR/5udkAQKULNWFwtYLXBYqUWkAQnB6cMGhzsPRhSscwhw0yFhmIFPm5qUF3D1KpuBkPjQOSzKsKcqqveeAf6L9IZerswsblFys0s98JAAMjahZnKc9DMtU2voeb4mkpPvm14GEm2VFAOL5YpuNqEIFBFuHKsVF0ndIwipIFHCtkvzQgtsXX4Scgi9nOjmt5+9iq8hdjqeAw/yQLw7ACF8XaRDktGcra85MYk2M4vmg7psfvcdnzjV9eABSPKa0AaH5JbYf87WCUDjJh3yZ2vzqeHgnwDXlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AsNPU/uubDs9c633fg7AEEMQp528akvzjKlxpYqO1Iw=;
 b=GHwWxOSS3pn9bCxLeK1xQV6j+kv4K/SxZivAUIHv9t7EnazxOgqQiO6FeIjuc9yyAJELjeIcAbhg2eD+zw4wdixztWeUjAahchBbgE08n4M5IDc4u3zirxRtNa1capp62wro0oJXV4PHKeThrJQYY51fQpQu9kVIianS3W8NlXGgNR9gJKEDRE7PONcj1sJO7QEzM72QqRKKMfo0crXAl6YAZuHydFtEo+2fEkRGx7hMvnhJJdoHuXsWIByaVXiV4sWsgHgecvTJNlsSdQquYQRUSp5UjxYl0Nyc26feYFmj/fJC5tNLrvKgISd1XiC7+fHanlZINiX3JO4CPQa+kA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.118.232) smtp.rcpttodomain=linuxfoundation.org
 smtp.mailfrom=nvidia.com; dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=nvidia.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AsNPU/uubDs9c633fg7AEEMQp528akvzjKlxpYqO1Iw=;
 b=MDktFzVodno8U67mNkI2luGIDlMK4bSo0OjXVJj7YoWytLgr75how9yVbDVtC7+sTkIGrzpQEvvjZ5WmwU1bUyQRtavEyGtdnXwYyyMHSGatTWV0ei4r14MyUrLSAeb0HVLlBXQIzoI4aEuhQc8TW2a5LhiAft/doDLkD7bPwl7yDipUp/z3aG1En7qygY1mJMFYlh3XBOZH81zMng2Osmu3QJl9xg7ZuquckrrzIsEz8qmTUWRUXC0vCYFnWFo7Yg0H6NnIoMucTl1zXDZ6jU5Qp5jI58lQxqRjuEJlztIN9a6KbTkEJCUrnvwwzuw1jKLO41BwBVmkUse1HX/ORg==
Received: from BN8PR04CA0015.namprd04.prod.outlook.com (2603:10b6:408:70::28)
 by CH0PR12MB5188.namprd12.prod.outlook.com (2603:10b6:610:bb::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.23; Mon, 24 Oct
 2022 07:41:42 +0000
Received: from BN8NAM11FT087.eop-nam11.prod.protection.outlook.com
 (2603:10b6:408:70:cafe::1d) by BN8PR04CA0015.outlook.office365.com
 (2603:10b6:408:70::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.27 via Frontend
 Transport; Mon, 24 Oct 2022 07:41:42 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.118.232)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.118.232 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.118.232; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.118.232) by
 BN8NAM11FT087.mail.protection.outlook.com (10.13.177.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5746.16 via Frontend Transport; Mon, 24 Oct 2022 07:41:42 +0000
Received: from drhqmail202.nvidia.com (10.126.190.181) by mail.nvidia.com
 (10.127.129.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.26; Mon, 24 Oct
 2022 00:41:41 -0700
Received: from drhqmail203.nvidia.com (10.126.190.182) by
 drhqmail202.nvidia.com (10.126.190.181) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.29; Mon, 24 Oct 2022 00:41:41 -0700
Received: from waynec-Precision-5760.nvidia.com (10.127.8.13) by
 mail.nvidia.com (10.126.190.182) with Microsoft SMTP Server id 15.2.986.29
 via Frontend Transport; Mon, 24 Oct 2022 00:41:38 -0700
From: Wayne Chang <waynec@nvidia.com>
To: <gregkh@linuxfoundation.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <treding@nvidia.com>,
	<jonathanh@nvidia.com>, <thierry.reding@gmail.com>,
	<heikki.krogerus@linux.intel.com>, <ajayg@nvidia.com>, <kishon@ti.com>,
	<vkoul@kernel.org>, <p.zabel@pengutronix.de>, <balbi@kernel.org>,
	<mathias.nyman@intel.com>, <jckuo@nvidia.com>
CC: <waynec@nvidia.com>, <linux-usb@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<singhanc@nvidia.com>, <linux-i2c@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, <linux-tegra@vger.kernel.org>
Subject: [PATCH 01/11] dt-bindings: usb: tegra-xudc: Add Tegra234 XUSB controller support
Date: Mon, 24 Oct 2022 15:41:18 +0800
Message-ID: <20221024074128.1113554-2-waynec@nvidia.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221024074128.1113554-1-waynec@nvidia.com>
References: <20221024074128.1113554-1-waynec@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8NAM11FT087:EE_|CH0PR12MB5188:EE_
X-MS-Office365-Filtering-Correlation-Id: af504a6a-3b1e-445b-01a4-08dab59331c0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	LTLaK/+CcAjqyJ7ie2xLEA7UObewNBdtUd5BprpUDUttz6692+HUqIK2aU81QGmuNcyKEGugxzjA6zvDsPXnVm7w3QjRuwzyRZcIUxBR4IQYsHvVXXYll60N/7KsBgkYusVKwqcuvX++MG19kIxwt39Q69pOISajKF4u0BUthilQvQczSTzK7X2RcGYq6GLDMRNd4q657YlknlnKaG6NGBPvPVs8nh6iNJFvAfDl3HSwXHhP+sA0fOYwZWb1sIaAhl1vVysXaZKu/jVHugWwCDModFH7+PmCEzL6Xb3tciMn2d7bAaywG4PhhB1G60Y6HBdStyc/QM+zj6xdul05vGKlM81662wbYvIc5byR/MEE3bDNIdwUV1Zcrhyn/ckzBcVxFFFheA+OhRaWdEq1CaTd/Q8mWik5gnD13HC26HInwcoT0c29VHlAqjAC6TqWSobGXpGpnQlMrbXutkCdNCPfdUWbwpvS5YEq3GN1k1KLPw+KUnNis8sdD9Qo34xGzikdkqmcdIeuoxsXNf5IYJDdpCgdUisx+m1t3KVHOhFOd8U//C4zvP3EW0BcybvfAqKS1pJUm2F3lCNbBJM7zoIE8PsXH6FRSCOOi+uQbo4CkfJusiALLF91NAeAHxkrPYv1zHSh9FsZVz2VMDu+3TUShP/W/TTdm2UA3cr5Y4K06vey28g1946pNiTrwOa2iv2M4bO2TJKs9nt+eRGinu6uB7+Z7OnZqu84KUfgh0XIumDRZAEMvO1lcj+1NsBhgn/rBxmrw4u8GNsFf+1KBIWPffqTPNbuzmpSwJcuiiw=
X-Forefront-Antispam-Report: 	CIP:216.228.118.232;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc7edge1.nvidia.com;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(346002)(376002)(136003)(396003)(451199015)(36840700001)(46966006)(40470700004)(83380400001)(478600001)(8676002)(70586007)(70206006)(40460700003)(4326008)(7696005)(426003)(47076005)(6636002)(356005)(7636003)(921005)(5660300002)(2616005)(82310400005)(2906002)(40480700001)(82740400003)(8936002)(86362001)(36860700001)(336012)(54906003)(41300700001)(26005)(110136005)(7416002)(316002)(36756003)(1076003)(186003)(6666004);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2022 07:41:42.3958
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: af504a6a-3b1e-445b-01a4-08dab59331c0
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.118.232];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 	BN8NAM11FT087.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR12MB5188
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_004147_933574_DD91A02C 
X-CRM114-Status: UNSURE (   6.67  )
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

Extend the Tegra XUSB controller device tree binding with Tegra234
support.

Signed-off-by: Wayne Chang <waynec@nvidia.com>
---
 .../bindings/usb/nvidia,tegra-xudc.yaml       | 24 ++++++++++++-------
 1 file changed, 16 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/nvidia,tegra-xudc.yaml b/Documentation/devicetree/bindings/usb/nvidia,tegra-xudc.yaml
index fd6e7c81426e..517fb692f199 100644
--- a/Documentation/devicetree/bindings/usb/nvidia,tegra-xudc.yaml
+++ b/Documentation/devicetree/bindings/usb/nvidia,tegra-xudc.yaml
@@ -22,6 +22,7 @@ properties:
           - nvidia,tegra210-xudc # For Tegra210
           - nvidia,tegra186-xudc # For Tegra186
           - nvidia,tegra194-xudc # For Tegra194
+          - nvidia,tegra234-xudc # For Tegra234
 
   reg:
     minItems: 2
@@ -90,21 +91,27 @@ properties:
 
   phys:
     minItems: 1
+    maxItems: 8
     description:
       Must contain an entry for each entry in phy-names.
       See ../phy/phy-bindings.txt for details.
 
   phy-names:
     minItems: 1
+    maxItems: 8
     items:
-      - const: usb2-0
-      - const: usb2-1
-      - const: usb2-2
-      - const: usb2-3
-      - const: usb3-0
-      - const: usb3-1
-      - const: usb3-2
-      - const: usb3-3
+      anyOf:
+        - const: usb2-0
+        - const: usb2-1
+        - const: usb2-2
+        - const: usb2-3
+        - const: usb3-0
+        - const: usb3-1
+        - const: usb3-2
+        - const: usb3-3
+
+  dma-coherent:
+    type: boolean
 
   avddio-usb-supply:
     description: PCIe/USB3 analog logic power supply. Must supply 1.05 V.
@@ -153,6 +160,7 @@ allOf:
             enum:
               - nvidia,tegra186-xudc
               - nvidia,tegra194-xudc
+              - nvidia,tegra234-xudc
     then:
       properties:
         reg:
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
