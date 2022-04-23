Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B9FAC433F5
	for <linux-phy@archiver.kernel.org>; Sat, 23 Apr 2022 12:50:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c7RCNKAzNX58+ESLwPxIpH/j+8V09MBKoQUHolqp0bM=; b=BkRRrajEVgqObK
	koWAxHAr9e+bpUsMMR11e4QqPkiHrrr5+84pk4koJgnczysWcc19kGgZJYDyiDtv5LP0n4t0IHLEV
	DcN0fGR1Hr+3HjFk79NAO8f9IUp3y+QAZdHNBr5VX0qsuqx0i9Qz85psoawJuG1emU4Ixsq0I7PR5
	PgyfBKMwl0nshuCQuNsFvyJIJuQJhFO9LvYvKRMAZPeaWUV3SJYbF2ynshe2DC1YynAS56KJYRjrf
	LO6K6KntLuRIEwc/pDgiiZB6s/2VpC4B5rFLdYndLyCAFK8Ozr5mP0lz5rbtB5l+5JHSKCZHp9RJl
	tPDzEUEsZrO7SHBOIevg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1niFDI-004N5r-FL; Sat, 23 Apr 2022 12:50:12 +0000
Received: from mail-bn7nam10on20629.outbound.protection.outlook.com
 ([2a01:111:f400:7e8a::629]
 helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niFDF-004N59-My
 for linux-phy@lists.infradead.org; Sat, 23 Apr 2022 12:50:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Iytr5rfoaVLPlgKpNL620VAUV4sT+HH7wLBIdwBGzgLtSQ8ldAYA+gHRYZex0cr4D3P5hKzEeu4CGGHqmrz3hVzhn3+/4nR8Ht14ZR6rDVUd9G5r7T9sgxsUyXzS44TsXIFY+h3O6vQh+VHOsT9gNqBTz5JDDPi7ipV2u9m5FLaVIT4cI53XoJg0JKo3Zue/Ej34t2jqCyymZZ9Ir4EcMapE9Ig4EFQyInc5ZmCAM0ToCQkTmmqINgKst8UV2KmOdWz+B/Z+sfXwc3fIj4XODX7zcUzKMUyXwWDsq1oKOVl9/kj/55hwoKoN2EYQk8gQo0lP1gw58WFykTFnv9mEWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Whg2t2U1O4FQLRE4H3lIpVU4D+cm4vHG6d/1TJNfX48=;
 b=H3la2O6QiRAXITLsAU9N5tMxKDj53qXWSEn+ydTvPAXfRXDbNNg1EdBC1GqAvWBayCAHCto+QpyTuZkKAvZGR3c4/A8ERTpaoJQ2iZbDpFtnWXtAM8Qq4OMn1HbbpCrZ042GI5iYpXtbFkecR7t0OLO4DH9/Lhyol1LB466egAFbLGmw5OSSd6F1h+awilj1Gv5K8Kd09/wRz5qYrPRWoR4TTphE5R8V36/XrqUycTA+mo87VhSyddjZGgtY1GRkXqnz7oluW3YOPAz5aGTz33Rlsktp79BVFAl54Y5AjKmv6lUybk230Nt8bYOR8ZEhKTZX7ca9G+2bcBKqemw2+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 12.22.5.234) smtp.rcpttodomain=ti.com smtp.mailfrom=nvidia.com; dmarc=pass
 (p=reject sp=reject pct=100) action=none header.from=nvidia.com; dkim=none
 (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Whg2t2U1O4FQLRE4H3lIpVU4D+cm4vHG6d/1TJNfX48=;
 b=rdZSkAFgcRACTASgKcyF73kL/2I6hTbhvZR018eAnJuUh7wkZO6WGI2s5OpV/+tEJBMZUEazUTpkO+HIsADpkTG14O6QYUWtdz4tqRFBHxs26Xlt4phdCr22LcZMQmtzlut89uSRatig7EdvUCrcxb61RWrSnnqvbXpapr/oPyDeNjomATv+FpeenYlNhS2pWmRc/MneVRcXBManXJwgPSBzILkpbAVRrW/nwUGGy4Lnmst8Xl4XL4iojl/1dKdYktbDHQYqDNLt9CCZSeL5S3cRDp0jnKNeTEtLD+RvNnNlmPUv0l3eSJa0wlmQgYHIvH4cgLWg/tWtX8F/YdLULA==
Received: from BN9PR03CA0365.namprd03.prod.outlook.com (2603:10b6:408:f7::10)
 by CY4PR12MB1720.namprd12.prod.outlook.com (2603:10b6:903:121::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.15; Sat, 23 Apr
 2022 12:50:04 +0000
Received: from BN8NAM11FT025.eop-nam11.prod.protection.outlook.com
 (2603:10b6:408:f7:cafe::c1) by BN9PR03CA0365.outlook.office365.com
 (2603:10b6:408:f7::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.15 via Frontend
 Transport; Sat, 23 Apr 2022 12:50:04 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 12.22.5.234)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 12.22.5.234 as permitted sender) receiver=protection.outlook.com;
 client-ip=12.22.5.234; helo=mail.nvidia.com;
Received: from mail.nvidia.com (12.22.5.234) by
 BN8NAM11FT025.mail.protection.outlook.com (10.13.177.136) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.5186.14 via Frontend Transport; Sat, 23 Apr 2022 12:50:04 +0000
Received: from drhqmail201.nvidia.com (10.126.190.180) by
 DRHQMAIL101.nvidia.com (10.27.9.10) with Microsoft SMTP Server (TLS) id
 15.0.1497.32; Sat, 23 Apr 2022 12:49:44 +0000
Received: from drhqmail201.nvidia.com (10.126.190.180) by
 drhqmail201.nvidia.com (10.126.190.180) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Sat, 23 Apr 2022 05:49:44 -0700
Received: from vidyas-desktop.nvidia.com (10.127.8.9) by mail.nvidia.com
 (10.126.190.180) with Microsoft SMTP Server id 15.2.986.22 via Frontend
 Transport; Sat, 23 Apr 2022 05:49:39 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <bhelgaas@google.com>, <lorenzo.pieralisi@arm.com>, <robh+dt@kernel.org>, 
 <thierry.reding@gmail.com>, <jonathanh@nvidia.com>
CC: <kishon@ti.com>, <vkoul@kernel.org>, <kw@linux.com>, <krzk@kernel.org>,
 <p.zabel@pengutronix.de>, <mperttunen@nvidia.com>,
 <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-tegra@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <kthota@nvidia.com>,
 <mmaddireddy@nvidia.com>, <vidyas@nvidia.com>, <sagar.tv@gmail.com>
Subject: [PATCH V2 6/8] PCI: Disable MSI for Tegra234 root ports
Date: Sat, 23 Apr 2022 18:18:56 +0530
Message-ID: <20220423124858.25946-7-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220423124858.25946-1-vidyas@nvidia.com>
References: <20220423124858.25946-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a3e4a059-78cc-4b55-1a1a-08da2527c9a4
X-MS-TrafficTypeDiagnostic: CY4PR12MB1720:EE_
X-Microsoft-Antispam-PRVS: <CY4PR12MB17207AB0290065763AC5FB03B8F69@CY4PR12MB1720.namprd12.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qGS3st6AzyYM9UN6lJ2rqrwRwLFs/aXN7zp4+gPhTWoBI8TMNLgKgYU85R6ek3VKORuYvjcX5b3sNLsQYZ+7JxzuHUAjOKw0ZLZpBy0vMzqFU83pl8u7/ilMgBoxkuh15JSXtfz/8TEn8UC7a8kqE5VZGoUe44SxrsNfzVSlDmmaQ80sIt8zQ/jdUq5lACuimNzBZr2ohf9hl13kw0/vyz40aqCZlBq7fMpPUANzQsyoQw1HYeHG6LEAazI5oQf+De4DfcdxqSKHD633jKVW2HkWG20zInC5pzJYrb4qmJJciKhvt1K00Iq0iIYXe7sJ/8ndtcGris7BdNHQEKr0qNOcWmXQ6tKb/W81Wyre2VaPryCNpbLSvezbSP6iDafE6gAYW+CiLSzS417bNJKpj23WTwsnGKm8F+vqgE3OCAjz5ftH8nA+ClG5Iq/kIYinHBRxMhKy2LYmutmRg2kzRvcVihn7iF7A9YPpGqCdpRgIf1+XlT5uom8NvWnLFQYo6amTKUSKZtx64HYpduDjc1lG7c8NaiXsmU5fEVXfG7uqEm7wn0YVPtsKUSSw6UIBNWqGJWrt56LvHomRSQJ7+gEuG2c4c6scRUbCyRXmz2fKdUPrTfQKcidkDREYrUAaiftSvj7mMs76+IZYpwk8/WJQEA+pHZAGbiA9WIAWQXYQ+arO8NGCOB9ktj5RVLxcZA5aYyNq5VcRoMXT3S26WQ==
X-Forefront-Antispam-Report: CIP:12.22.5.234; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:InfoNoRecords; CAT:NONE;
 SFS:(13230001)(4636009)(36840700001)(40470700004)(46966006)(8676002)(4326008)(508600001)(7416002)(1076003)(2616005)(8936002)(186003)(336012)(426003)(83380400001)(70586007)(70206006)(5660300002)(47076005)(356005)(2906002)(36860700001)(36756003)(82310400005)(6666004)(7696005)(110136005)(86362001)(81166007)(26005)(40460700003)(6636002)(54906003)(316002)(36900700001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2022 12:50:04.1711 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a3e4a059-78cc-4b55-1a1a-08da2527c9a4
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[12.22.5.234];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: BN8NAM11FT025.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR12MB1720
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220423_055009_810062_1607AFDB 
X-CRM114-Status: UNSURE (   8.30  )
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

Tegra234 PCIe rootports don't generate MSI interrupts for PME and AER
events. Since PCIe spec (Ref: r4.0 sec 6.1.4.3) doesn't support using
a mix of INTx and MSI/MSI-X, MSI needs to be disabled to avoid root
ports service drivers registering their respective ISRs with MSI interrupt
and to let only INTx be used for all events.

Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
---
V2:
* Addressed review comments from Bjorn i.e. changed the PCIe spec reference
  to a more relevant section and modified commit message accordingly

 drivers/pci/quirks.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/quirks.c b/drivers/pci/quirks.c
index 41aeaa235132..6ebb4301eb43 100644
--- a/drivers/pci/quirks.c
+++ b/drivers/pci/quirks.c
@@ -2709,8 +2709,8 @@ DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_NVIDIA,
 			nvenet_msi_disable);
 
 /*
- * PCIe spec r4.0 sec 7.7.1.2 and sec 7.7.2.2 say that if MSI/MSI-X is enabled,
- * then the device can't use INTx interrupts. Tegra's PCIe root ports don't
+ * PCIe spec r4.0 sec 6.1.4.3 says that if MSI/MSI-X is enabled,then the
+ * device can't use INTx interrupts. Tegra's PCIe root ports don't
  * generate MSI interrupts for PME and AER events instead only INTx interrupts
  * are generated. Though Tegra's PCIe root ports can generate MSI interrupts
  * for other events, since PCIe specification doesn't support using a mix of
@@ -2760,6 +2760,15 @@ DECLARE_PCI_FIXUP_CLASS_EARLY(PCI_VENDOR_ID_NVIDIA, 0x10e5,
 DECLARE_PCI_FIXUP_CLASS_EARLY(PCI_VENDOR_ID_NVIDIA, 0x10e6,
 			      PCI_CLASS_BRIDGE_PCI, 8,
 			      pci_quirk_nvidia_tegra_disable_rp_msi);
+DECLARE_PCI_FIXUP_CLASS_EARLY(PCI_VENDOR_ID_NVIDIA, 0x229a,
+			      PCI_CLASS_BRIDGE_PCI, 8,
+			      pci_quirk_nvidia_tegra_disable_rp_msi);
+DECLARE_PCI_FIXUP_CLASS_EARLY(PCI_VENDOR_ID_NVIDIA, 0x229c,
+			      PCI_CLASS_BRIDGE_PCI, 8,
+			      pci_quirk_nvidia_tegra_disable_rp_msi);
+DECLARE_PCI_FIXUP_CLASS_EARLY(PCI_VENDOR_ID_NVIDIA, 0x229e,
+			      PCI_CLASS_BRIDGE_PCI, 8,
+			      pci_quirk_nvidia_tegra_disable_rp_msi);
 
 /*
  * Some versions of the MCP55 bridge from Nvidia have a legacy IRQ routing
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
