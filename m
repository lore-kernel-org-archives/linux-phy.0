Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6ABBFC4332F
	for <linux-phy@archiver.kernel.org>; Thu, 13 Oct 2022 18:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zju19SYXPCyCVe9LnugK36QrUSBNG1p0VDg729ScIuk=; b=T71wZuu4XEC+5/
	bjCJCW9Fc/1mQJPUl5n2VGA2qhk769q77jXGxUalaqX2YeTn17ShL2BNW7T4KohdMeSlw40NiuZyI
	UVKgyqQWtYaqFTCbZ4wVedVhN98wfb+MWLdPaRGRTpzzr08PXdfrKVlghhRAN6Xa/01u9O+DYw+DA
	Vj+4gYZPYkTM3NFUS4weWr60H/Aux4aAgGX2i+a1szCoEyZoLaZei56iJI3IE7OU133kdTZ8kxDRr
	T+NfVeJQaZuI5e+9G+48lnRVCW5W+5YRMQ+da7JgZ6K0KRjoxFFIXq3rFb0pFBnNMf0+aMzRpigHd
	1UBEqlh02x3S2NRsqvww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oj394-00CjDE-SG; Thu, 13 Oct 2022 18:41:26 +0000
Received: from mail-dm6nam12on2065.outbound.protection.outlook.com ([40.107.243.65] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oj392-00CjCR-DB
	for linux-phy@lists.infradead.org; Thu, 13 Oct 2022 18:41:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SUN6F+uuswwJQ6fTe7zoocqoVCJftyfPS5Aykj5X1iI0sft0PSVWsuQ1Tbbx4MdiuCZwE+oFxQt2QO2iKrPo3/BDETkYqcT/PuA74kxoaQaG35kMdXpYkRSN1UH6HfIZj61vDPE8fsQfDwi98DeysJe0Sk1H3b+amQtbxmDKwQ8bimQcY8JCqNMtmDEc2f5ay0A7yHIqNnKCrBzTkKGB+d4j4khKyPmLRHPSlrqrrbrGX/ZltUNS/bCcQscUWgakevTk6VVAh0nXKlDssl0E15qPLhfiyxgPL6cz6rAcAZYxdzCLwglh+yx0BtLWxdnyR9QZvy/V20NILKCypga6XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+OYl6hX3/oChjrgjuOaGFWyc0+88Bn9/AYVGZVWF5mc=;
 b=lyoFcKL5aWLRmFdl8O5sodHlJFVSixlTU4c6QCcxQ9m1b5lSzDzv1Rg6QTBZZ2fvZkFqpjb1G2z5cgPJxM3XCl3hvzgytTs8g+Up42cnVnL+yhBtihe9Y2TjZ/5/kKKxdiM9nydpfk31utOijgHIrvMEwFgMeEr3r3OXEjHHMQtO3I1TxJZ+afsLXXydFrQhMWLvvMxA6P8Yfnz0nN6JPqlOIQEC4+vDGFWTXk5egssml+xn5FQfrZ+D4JwcwEN6jBz5FJKYmzwr5Pae/hrdJVIQEZXNNMe9RwmAAhPz1iM0XZ9vn74z6ZkdnEOYAVN1a1YE1txNVh1uRoDVmy/boA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.118.233) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+OYl6hX3/oChjrgjuOaGFWyc0+88Bn9/AYVGZVWF5mc=;
 b=QX2O/DwP8jXqMelbv+SPkQZ1NRy0bZluS7eiI543uWkr1OcPt/eRS6ntPae/wwHcOI4Cdruv3aqu1Z5VG0tVELpLcjFjWyxoJPhFecjGpkjRzoDL/hiCMQ0eMxJj5kbl3c/XPVavm5Sr8Vp5ZQb6DCZ/Ky5ONQ7ux2BrT3Z6FaNZdIpz1x0Yku3hPb6Ti3FsLPNP4Gyl+sIY+OMhIRdiLZnnGWJrSjVmdcMtUMUR0Q8wOAgiN9IjiER/YVlMbsqVuV+qZrbNDyp4IVH9VsEpqNVzciA8IW94QHWp7zuyAE/sIreKEhYq5SZij84fB7VTH411VjYGjhLZMfmMyHc6cg==
Received: from DM6PR05CA0048.namprd05.prod.outlook.com (2603:10b6:5:335::17)
 by PH7PR12MB5709.namprd12.prod.outlook.com (2603:10b6:510:1e0::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5709.21; Thu, 13 Oct
 2022 18:41:21 +0000
Received: from DM6NAM11FT061.eop-nam11.prod.protection.outlook.com
 (2603:10b6:5:335:cafe::ec) by DM6PR05CA0048.outlook.office365.com
 (2603:10b6:5:335::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.11 via Frontend
 Transport; Thu, 13 Oct 2022 18:41:20 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.118.233)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.118.233 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.118.233; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.118.233) by
 DM6NAM11FT061.mail.protection.outlook.com (10.13.173.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5723.20 via Frontend Transport; Thu, 13 Oct 2022 18:41:20 +0000
Received: from drhqmail201.nvidia.com (10.126.190.180) by mail.nvidia.com
 (10.127.129.6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.26; Thu, 13 Oct
 2022 11:41:15 -0700
Received: from drhqmail203.nvidia.com (10.126.190.182) by
 drhqmail201.nvidia.com (10.126.190.180) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.29; Thu, 13 Oct 2022 11:41:14 -0700
Received: from vidyas-desktop.nvidia.com (10.127.8.9) by mail.nvidia.com
 (10.126.190.182) with Microsoft SMTP Server id 15.2.986.29 via Frontend
 Transport; Thu, 13 Oct 2022 11:41:10 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lpieralisi@kernel.org>, <robh@kernel.org>, <kw@linux.com>,
	<bhelgaas@google.com>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
	<kishon@ti.com>, <vkoul@kernel.org>, <mani@kernel.org>,
	<Sergey.Semin@baikalelectronics.ru>, <ffclaire1224@gmail.com>
CC: <linux-pci@vger.kernel.org>, <linux-tegra@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<kthota@nvidia.com>, <mmaddireddy@nvidia.com>, <vidyas@nvidia.com>,
	<sagar.tv@gmail.com>
Subject: [PATCH V3 20/21] dt-bindings: PCI: tegra194: Add monitor clock support
Date: Fri, 14 Oct 2022 00:08:53 +0530
Message-ID: <20221013183854.21087-21-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221013183854.21087-1-vidyas@nvidia.com>
References: <20221013183854.21087-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6NAM11FT061:EE_|PH7PR12MB5709:EE_
X-MS-Office365-Filtering-Correlation-Id: 29b66c5d-8da7-4b57-7170-08daad4a85b4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	5IdSbKPRTJkE+mvyASrLxqQKH/H1WCIxP3B1/IR9pRTpOP0oiAhlVTQ/o2ARKomfF2Xcr8pzkYzo4iKM9tiOWjGILmLzP6gR4jX4zYS5XZ7etENLAapuCY4ykEdTKLBMT5MbWQNQoVU8zM1xa7i3ULiIyDnyGz2V+bE0KWRBHSrcabTSD0MkzucajJXK+jjpeIcn0ahoJOsf36VwtLYoJKE7OQRlDnjb5UW0zL2fQoz34wFZ51VDP5EDyVsW4N2pioG+32ikVSzaE3Y4SCrFaff2oYENcijNAiivlPv6jHPBXBgGwJMebvOMY47J6iIFGqcNtxGkhbdwkM921ZLEQdtZkDSd7L3y3ldOUx8fCnYOzkHPyKPr+syDQjxQ+nmoZc6ci9VE804NRyCKIep/rMlFE77XKStO4LTsKVBL9IyXvISI1a90TOZKsPJmt0kjtiNJ0x9RUv0MxUb4+OhnddZf4ET0UKnUh8gjowEC575XU/LFyri+E8Dfptv2lg1KLq237gkO5cCJWzWjNrFEBTo8YZm/s92fx0YCYcvPbbEQUvt+9WNKnMhJCg6C9SBZGqc/TSr5apJf3OF7a3vzH/msaP45MQ8YagIZ3uDRCvu5OkBFGO++fIz2dERGbdpCK0fZ2WmNPnOfhBcUhiW6goQNcuA9PEkbdYZsU2uX9HhBOaHt103I7ZJ/qb7kPP3wJiu9bQnVvOhxXYpg3SkTavzDzZVzf+0763ZsTRI11X5kvi52rI01OHeVD4zviK/GUpARWQ3DVH5BAJhH+JL5G9rIjc2YIchbLeYYrqIeJxg=
X-Forefront-Antispam-Report: 	CIP:216.228.118.233;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc7edge2.nvidia.com;CAT:NONE;SFS:(13230022)(4636009)(346002)(376002)(136003)(396003)(39860400002)(451199015)(46966006)(40470700004)(36840700001)(54906003)(356005)(7416002)(921005)(70206006)(70586007)(82740400003)(7636003)(2906002)(5660300002)(40460700003)(8936002)(41300700001)(36860700001)(8676002)(26005)(4326008)(110136005)(2616005)(1076003)(336012)(478600001)(6666004)(7696005)(316002)(186003)(83380400001)(47076005)(82310400005)(426003)(36756003)(40480700001)(86362001);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2022 18:41:20.7320
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 29b66c5d-8da7-4b57-7170-08daad4a85b4
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.118.233];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 	DM6NAM11FT061.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB5709
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221013_114124_465347_D00A2BC0 
X-CRM114-Status: UNSURE (   6.91  )
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

Tegra supports PCIe core clock monitoring for any rate changes that may be
happening because of the link speed changes. This is useful in tracking
any changes in the core clock that are not initiated by the software.

Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
---
V3:
* This is a new patch in this series

 .../devicetree/bindings/pci/nvidia,tegra194-pcie-ep.yaml    | 6 +++++-
 .../devicetree/bindings/pci/nvidia,tegra194-pcie.yaml       | 6 +++++-
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie-ep.yaml
index a24fb8307d29..7c6900802f04 100644
--- a/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie-ep.yaml
+++ b/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie-ep.yaml
@@ -55,12 +55,16 @@ properties:
       - const: intr
 
   clocks:
+    minItems: 1
     items:
-      - description: module clock
+      - description: module's core clock
+      - description: module's monitor clock
 
   clock-names:
+    minItems: 1
     items:
       - const: core
+      - const: core_m
 
   resets:
     items:
diff --git a/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.yaml b/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.yaml
index 75da3e8eecb9..aaaa238e6dc1 100644
--- a/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.yaml
@@ -54,12 +54,16 @@ properties:
       - const: msi
 
   clocks:
+    minItems: 1
     items:
-      - description: module clock
+      - description: module's core clock
+      - description: module's monitor clock
 
   clock-names:
+    minItems: 1
     items:
       - const: core
+      - const: core_m
 
   resets:
     items:
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
