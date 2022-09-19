Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39E99C6FA90
	for <linux-phy@archiver.kernel.org>; Mon, 19 Sep 2022 14:37:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FbrlUxAduDvsSFou+ZuYRMRjhGXeQ1JRL1sIa/qvhgY=; b=N43RLHFkf6u6sl
	3pkkIgi/72u2cMJaAJ/ePTRxeSk9OyP3YY9QhpGWt1NAmdBT9VVSjOhnt6aO98nEY1g/pQZn/cjjn
	F38upBGs5U8o+ac3vOOOdCTMcbUGKrVjuwwKQZ1CA6pAReFLDBp7KYCgX9pZtqAP1WlXw4j9DyFRs
	m1Rrou77NIpP+AVeUAWulnokFqMNUXB9bEL96HGjYivJR8+uW+QnrTmtGAEuBPGyCILNCugOujD9c
	BOg1ORAZy1xG3HwF3Qce9DL/ONB1JeSrSfsjmt+6YMtGDrIeGtIhCRE5V5edxwJxZISXCP93ZZOQA
	BPN22UOSnCsu9fmzxSmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaHtp-00C81j-GS; Mon, 19 Sep 2022 14:37:29 +0000
Received: from mail-dm6nam10on2044.outbound.protection.outlook.com ([40.107.93.44] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaHtn-00C803-8C
	for linux-phy@lists.infradead.org; Mon, 19 Sep 2022 14:37:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lIe6LZlb/9CMLBzu6GDaoYtPqQDF1/3dhjZ1lG1mNka2TFYg+u0AZrdbXr2LlOkD0nT7gbEkiLEeZMxBb9iVW9Tiid2rsqSo7F1IX+1bS7bYOG0QWeQ7bfET86wwMN60W5bfj3kz/xev4fQBlP5wcJ7htp23PqbBONfDpmnKRYhjI8ek4NOaoJoIXqtP1OrEShWQwTeblpOl5lSs/qDyqvc2OD2YEs6pEf4LBbujKBy4pL3q+A5orMENJEZLQ/cGvvtb8mHUq7RoOIC2zXQm76G+B9d9jb7yB/EcxHThjLJu9xRNjhWncApDfZBayx0tLzbaRtnsczClDC4uKAacBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zaUGzJWgxubPULxhpKeOFhUJ/BBEMitqnXBEZaI8gY4=;
 b=Lmjt+fguCwRGyFky9P2L1QRcNyv09Ffg5M3cawyhcQqTmzQZxGLwrj+FdGZvJP+sCY8FZBxQ7K5dC3hrb8wsW6zxG2S5Mmakq3qHggxMdGjBgTSpfPjTNXOwiIaVHVY1ta8jcTpjHp6MuNftypbCMaYJL6iy47K4+7UR9JPWLvnWe2S0X7u5SnFOMrpLwc4N6ob+IY3weQaq6iaT9Ll+dl+17l4gl28ql30p4J4KHUveEw/Vt5FPniBzitDv8poSP6ErtK/I/ntpp3S3wqc9jtdhfOyN9nEUi7gNSTwWX3m56ay9d1ZC8yJfJsqjstuiYWcEJPaBoG56cSliZ3553w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zaUGzJWgxubPULxhpKeOFhUJ/BBEMitqnXBEZaI8gY4=;
 b=Z5GpNZY8p5WqzdNiPkVjBSUc0nDv3WcPHqARBziWS6Rkg7pZYEQlvBqFKfItGuq7EPHmZoiX6Di8tfdThV47/YjNXw+jdud28MCepTygNtpsNx966Nq9EUl1oF4OoGElvlHG22IHCaAydqKtFSuEB2jSj5g6zyUFCmYAXIPcS+uXntCO9mvyra8znlHqW9msHEJDf6UUsSnpt2zXTyRvu7Tr5u3lE/OIzxYwyyfEJjoRWolikW3HCNKX6qzxnvNKVnnQLgebQTzCOiTykUm0kfyS+MV8naZLGOqQvkjyBHBBwmvWsPZUli37FrZY6xJ+BgL2xQY7S1TataR6BRhARw==
Received: from MW4PR04CA0341.namprd04.prod.outlook.com (2603:10b6:303:8a::16)
 by DS0PR12MB7581.namprd12.prod.outlook.com (2603:10b6:8:13d::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.18; Mon, 19 Sep
 2022 14:37:24 +0000
Received: from CO1NAM11FT009.eop-nam11.prod.protection.outlook.com
 (2603:10b6:303:8a:cafe::f7) by MW4PR04CA0341.outlook.office365.com
 (2603:10b6:303:8a::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.21 via Frontend
 Transport; Mon, 19 Sep 2022 14:37:24 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 CO1NAM11FT009.mail.protection.outlook.com (10.13.175.61) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5632.12 via Frontend Transport; Mon, 19 Sep 2022 14:37:24 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.26; Mon, 19 Sep
 2022 07:37:12 -0700
Received: from rnnvmail205.nvidia.com (10.129.68.10) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.29; Mon, 19 Sep
 2022 07:37:11 -0700
Received: from vidyas-desktop.nvidia.com (10.127.8.9) by mail.nvidia.com
 (10.129.68.10) with Microsoft SMTP Server id 15.2.986.29 via Frontend
 Transport; Mon, 19 Sep 2022 07:37:07 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lpieralisi@kernel.org>, <robh@kernel.org>, <kw@linux.com>,
	<bhelgaas@google.com>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
	<kishon@ti.com>, <vkoul@kernel.org>, <mani@kernel.org>,
	<Sergey.Semin@baikalelectronics.ru>, <ffclaire1224@gmail.com>
CC: <linux-pci@vger.kernel.org>, <linux-tegra@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<kthota@nvidia.com>, <mmaddireddy@nvidia.com>, <vidyas@nvidia.com>,
	<sagar.tv@gmail.com>
Subject: [PATCH V1 5/9] PCI: tegra194: Apply pinctrl settings for both PCIe RP and EP
Date: Mon, 19 Sep 2022 20:06:23 +0530
Message-ID: <20220919143627.13803-6-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220919143627.13803-1-vidyas@nvidia.com>
References: <20220919143627.13803-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1NAM11FT009:EE_|DS0PR12MB7581:EE_
X-MS-Office365-Filtering-Correlation-Id: 36ab88e3-1230-4084-8fa1-08da9a4c77b1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	8D2ZhjBCQWnJ7g9ixtsGae2XObhcqG5SsqBP0byfrpBrtl1M5jYHhQgsWx2DT5bwIY6tCKsewor21GfmZek2w7m7/yo8wXrqsmDV0XH9j9tixaj+LmbhBi3/+RhVAxmrKUbxxjZovlMwWIAlAQxWksh+cwxXMig19C3sKMxVG7eajglhhpfLZY70cPoMFJ4ygCFaMRHkDhCDUXAjfAdK3QHjbt0S3Z1QshU5zENvjMIJhVw0IHBFSaO5pWg2zctAclZ+mb+U3rMFj5ATRsISkYQ112yevoBCVIynJhPoVlbfG5KOHWKOwhuvBrv5/gOo58/1PmM8ysfWlMBGnc4EeT57uHpjzJiFzqbJQOTrBcHQC9pmdj4SpWhg6dUguKg3y2V5OUMsR+T4xYzfScNiF1cVYM4AuReFTRwTyNZ6tYqVaerDWUx/DHv5jebnxnFDEQ8BPSdhNfsL8WmHqJ298cNh0CbRJELjV17meOfgZUhT8dTAHIpwRub8Vk2rx2xhdefS005kc/Lzi/y8Fn9EKhWa8NWR5XY5JhTCo9YsjS4WMz/i4nRq8A9YVqt0VXYPSoqiX2EtY/t/6Jh9LKC+oO/hwKxU6Miv5JkqXqRYMxsU5XrWpePG2eKNzK9lqXJ4l0+f2rN8tR57dlLbg7lTkDNxKpC+IhWXn/P4kEOZCm3ssER2t7qfC77Bzg8liywy6wtnYU0tS5PnmB7ubGY4rpcWdF9jTnNkeTBmKakqhNtOeJr3wtAvw+iucoicjQ8ze0RG8st5YyZCi825AUOGC8nX7xaHSYRtiXjTQkQ2koo=
X-Forefront-Antispam-Report: 	CIP:216.228.117.161;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge2.nvidia.com;CAT:NONE;SFS:(13230022)(4636009)(346002)(39860400002)(376002)(136003)(396003)(451199015)(40470700004)(46966006)(36840700001)(36860700001)(4326008)(36756003)(478600001)(110136005)(70206006)(70586007)(54906003)(41300700001)(7696005)(6666004)(86362001)(2616005)(7636003)(8936002)(921005)(82310400005)(26005)(356005)(336012)(40460700003)(83380400001)(7416002)(5660300002)(40480700001)(82740400003)(8676002)(316002)(186003)(1076003)(47076005)(426003)(2906002);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2022 14:37:24.0788
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 36ab88e3-1230-4084-8fa1-08da9a4c77b1
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.161];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 	CO1NAM11FT009.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB7581
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_073727_458501_50E5AF4D 
X-CRM114-Status: GOOD (  11.29  )
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

PERST# and CLKREQ# pinctrl settings should be applied for both root port
and endpoint mode. Move pinctrl_pm_select_default_state() function call
from root port specific configuration function to probe().

Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
---
 drivers/pci/controller/dwc/pcie-tegra194.c | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
index 65c2c689fcd5..f96f60c49dcb 100644
--- a/drivers/pci/controller/dwc/pcie-tegra194.c
+++ b/drivers/pci/controller/dwc/pcie-tegra194.c
@@ -1659,12 +1659,6 @@ static int tegra_pcie_config_rp(struct tegra_pcie_dw *pcie)
 		goto fail_pm_get_sync;
 	}
 
-	ret = pinctrl_pm_select_default_state(dev);
-	if (ret < 0) {
-		dev_err(dev, "Failed to configure sideband pins: %d\n", ret);
-		goto fail_pm_get_sync;
-	}
-
 	ret = tegra_pcie_init_controller(pcie);
 	if (ret < 0) {
 		dev_err(dev, "Failed to initialize controller: %d\n", ret);
@@ -2122,6 +2116,19 @@ static int tegra_pcie_dw_probe(struct platform_device *pdev)
 	pp = &pci->pp;
 	pp->num_vectors = MAX_MSI_IRQS;
 
+	ret = pinctrl_pm_select_default_state(dev);
+	if (ret < 0) {
+		const char *level = KERN_ERR;
+
+		if (ret == -EPROBE_DEFER)
+			level = KERN_DEBUG;
+
+		dev_printk(level, dev,
+			   "Failed to configure sideband pins: %d\n",
+			   ret);
+		return ret;
+	}
+
 	ret = tegra_pcie_dw_parse_dt(pcie);
 	if (ret < 0) {
 		const char *level = KERN_ERR;
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
