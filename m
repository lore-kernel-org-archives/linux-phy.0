Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F82EC433FE
	for <linux-phy@archiver.kernel.org>; Thu, 13 Oct 2022 18:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bk5tADT44u8YDvLn3aimauzcqxTAXsl535j2BUNRtCk=; b=qYa0FG5qidJaw3
	T7izAsWSmptxTCTzu5L3WZzahgfUOKYemGYZIAjwNCxxRSCDaNq/WKWxJ77K0xq3Qgk9T/zcMRx9w
	kIp1UGh8rtiWjTdCuDZsmeTFKMIgmRRJgiso7pidOdhdi24dXgdaVkoM63KVXLZT7EdqXckGuyS45
	hLGbuPUm3SoR+5JAoHVWFRTSCzoP319hykcAR1yoCRU7ywXJwIMZ8P0lkPAPzdbtQSt2xOV/Eh9cg
	UV8QcA1HrxBkjQFr7D3ozfq4BaI0L32v+WRNgd3XvD7rQCOdCf5LDM7PWYj1EwqzFlY5B8dBQpMzS
	U9CGMxbI9pHP67OYNmig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oj37T-00CihF-2w; Thu, 13 Oct 2022 18:39:47 +0000
Received: from mail-co1nam11on2070.outbound.protection.outlook.com ([40.107.220.70] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oj37Q-00Cig8-Q6
	for linux-phy@lists.infradead.org; Thu, 13 Oct 2022 18:39:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CU+c0ig8v2ZHyqr2ACFizaIiyN1faFkTsF+O4KkPzbdf4HvAxAasXvyvwEj8CYgMGSL0W+MlOvjzypXVKK2GuzXi+9n1NLtMOeUm6IGH85w898/PVV6DNfvtwlmL17dOM4N4AnAr9fIy81UZn8yksT8TPeHd9A24mPbeOv8Kv2u+M4sx5U4r77hC/0P3wL3oVWZssxVca/ocCVkJKsEQrw81Tk7g3w2MFLli1RXqDXr1U4/eb0EobPUkRD2ytqFVlNBt2djm+Xh73wNjrfA5XDqXgkozZ8hTfx/SeDWarz49GE5yLeVMqjhnJfAzTy1rpbkDOaxDtu8JOcLdrxzVJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SwtI5cUpY3q0pk36QJSITZFZxxHq+HlogbzFWEdtcgE=;
 b=M4pNo/bUapyvGdvDh9PNwPo+Tisu609faR4pJrritf4ElO8Bj+K0q2FAdShccqCuEkjwgMG1t15T2scaL9TZPfMlnb6xixw2hdiyuGoflTomme4MLb4OU7E0oXurCJr0vwQEQI/kxCmi2q4vN5gpQDSVrpaFtoCl/agya2mgjLsQxe64KlWO85/yKGcORBh0j76FX5FuMaJN5ahmZnUWfPjEINzFYWLzEkB856cq0zHJGwCnJjtVv1YTPij9vy1o9c6w0vRgZ/1Cgv2Ap5kvqNHvVueSVYH1GC86jidHA6p0gLVTJXXIdOBJdWgQgcZRavIadrPVTshSAT1yxVLBJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.118.232) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SwtI5cUpY3q0pk36QJSITZFZxxHq+HlogbzFWEdtcgE=;
 b=AATFWn7qy2zsMAX+oucQRcN8VPIyp3ltoeMRlk+7PFm3nFhwOKQDAqq91Fmb5fqbCbAAcgPUHnNV/G5B3s6ziK5XR8CG2SSEyU+qWK/6c+7JMrtDEpryED4K2tqw0pgad8WKe64szNlwKr/qxLOAIdoXnCimLim4YNnD9SBC8Y3rFwoW9F5Ds87ls7zFd01qnqAlaUUhgvXVk9WVjo9mmXb41pd1FXcRc3hEGKAGKaeTJaUrlsA3VwjA+bPL9aOAsHlSHRULu3O77QHBgNSIssmivMMHkioSlAi50g9kVqA6s9396F93sTxRty7/rGUCo+Brk4IbgcAZAUFAUfqdog==
Received: from BN0PR04CA0059.namprd04.prod.outlook.com (2603:10b6:408:e8::34)
 by IA1PR12MB7493.namprd12.prod.outlook.com (2603:10b6:208:41b::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.22; Thu, 13 Oct
 2022 18:39:39 +0000
Received: from BN8NAM11FT111.eop-nam11.prod.protection.outlook.com
 (2603:10b6:408:e8:cafe::69) by BN0PR04CA0059.outlook.office365.com
 (2603:10b6:408:e8::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.26 via Frontend
 Transport; Thu, 13 Oct 2022 18:39:39 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.118.232)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.118.232 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.118.232; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.118.232) by
 BN8NAM11FT111.mail.protection.outlook.com (10.13.177.54) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5723.20 via Frontend Transport; Thu, 13 Oct 2022 18:39:39 +0000
Received: from drhqmail202.nvidia.com (10.126.190.181) by mail.nvidia.com
 (10.127.129.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.26; Thu, 13 Oct
 2022 11:39:30 -0700
Received: from drhqmail203.nvidia.com (10.126.190.182) by
 drhqmail202.nvidia.com (10.126.190.181) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.29; Thu, 13 Oct 2022 11:39:29 -0700
Received: from vidyas-desktop.nvidia.com (10.127.8.9) by mail.nvidia.com
 (10.126.190.182) with Microsoft SMTP Server id 15.2.986.29 via Frontend
 Transport; Thu, 13 Oct 2022 11:39:25 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lpieralisi@kernel.org>, <robh@kernel.org>, <kw@linux.com>,
	<bhelgaas@google.com>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
	<kishon@ti.com>, <vkoul@kernel.org>, <mani@kernel.org>,
	<Sergey.Semin@baikalelectronics.ru>, <ffclaire1224@gmail.com>
CC: <linux-pci@vger.kernel.org>, <linux-tegra@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<kthota@nvidia.com>, <mmaddireddy@nvidia.com>, <vidyas@nvidia.com>,
	<sagar.tv@gmail.com>
Subject: [PATCH V3 04/21] PCI: tegra194: Handle errors in BPMP response
Date: Fri, 14 Oct 2022 00:08:37 +0530
Message-ID: <20221013183854.21087-5-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221013183854.21087-1-vidyas@nvidia.com>
References: <20221013183854.21087-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8NAM11FT111:EE_|IA1PR12MB7493:EE_
X-MS-Office365-Filtering-Correlation-Id: c78b02d0-fba4-4c59-efd2-08daad4a4965
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	uzGmwv/bpmj5ki/f8w3UvBWid3mWh0UQg37y/68mIoPSOHxXyarF5hvhU87g6c+AkxHdi2VPXayPR+GU8jNIytBJ4EODmV99x18mV5sWwBfVBnXxPMmOEcIl0bB/CPOBDt5am8weNVTO6ELTpsInS51TPLyLq5RTMVmJWS/yiazMGzCBrtiddw1ZXzX/pcZzohXZtq08tnilEd76P6ZotKnPNmiSuw/O8M+8lliB+b7p5wNDmE0Z207YU7q81Qks5fsfteB2pkpNuEjG+tNTWsZebd1J9fcMnLrajbcY5/hEC2Ym2ctEs8dNfzMmQ2nrWalR/3t+4f5Sbx+NRaOp3+1Fk71F0GEg6f9xCH9QwtQxNwzCV65eQXJoZ6i2Q1NLCfTU98b7o7bm1x1OyLUQsDQLT2ADRRAmEXBuhn+lEfxzHAHnhbPXwqAQEyxTX5wZlQPiD9rSceT2HP3/R8eI9R9/AIaIzZmiiLNlANVe6c2AVIU6EDy8U3WBllLrdcg/ChpluLxkamqBPx8c7bwoSjA96ffFaY51yWizkjudlFETuAB6iZjo2jwp15f5KC7CZ2X/dVG4PENZhG828om/lZOnA0Q4nM94jrK+FhoYVx8wg9rzc+xMTwAYJGD4fBqRs3dQolSoMmbOceARAYE0UwcxUGVuA89TWdg/giEXYdkrHb68WoxX/tMw0Vsh1DMwsBZQ2Eg0K9r7eKzlMxIiYvfC+DZxltppcH35FgeSeSp3fKd0Lw125+toWZd+FWaoM1MbDMuoDLI8WA9gLgnBilKBRPH96wPql1i2+/bQRbI=
X-Forefront-Antispam-Report: 	CIP:216.228.118.232;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc7edge1.nvidia.com;CAT:NONE;SFS:(13230022)(4636009)(136003)(39860400002)(346002)(396003)(376002)(451199015)(46966006)(40470700004)(36840700001)(316002)(110136005)(82740400003)(40480700001)(426003)(921005)(36860700001)(54906003)(47076005)(8936002)(1076003)(7416002)(7636003)(26005)(186003)(5660300002)(6666004)(2616005)(2906002)(8676002)(4326008)(70206006)(70586007)(82310400005)(7696005)(336012)(36756003)(356005)(41300700001)(40460700003)(83380400001)(86362001)(478600001);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2022 18:39:39.4761
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c78b02d0-fba4-4c59-efd2-08daad4a4965
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.118.232];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 	BN8NAM11FT111.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB7493
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221013_113944_864958_E44C2144 
X-CRM114-Status: UNSURE (   9.20  )
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

The return value from tegra_bpmp_transfer indicates the success or
failure of the IPC transaction with BPMP. If the transaction
succeeded, we also need to check the actual command's result code.
Add code to do this.

Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
---
V3:
* None

V2:
* None

 drivers/pci/controller/dwc/pcie-tegra194.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
index 685aee378c93..ae7e0d8f693b 100644
--- a/drivers/pci/controller/dwc/pcie-tegra194.c
+++ b/drivers/pci/controller/dwc/pcie-tegra194.c
@@ -1260,6 +1260,7 @@ static int tegra_pcie_bpmp_set_ctrl_state(struct tegra_pcie_dw *pcie,
 	struct mrq_uphy_response resp;
 	struct tegra_bpmp_message msg;
 	struct mrq_uphy_request req;
+	int err;
 
 	/*
 	 * Controller-5 doesn't need to have its state set by BPMP-FW in
@@ -1282,7 +1283,13 @@ static int tegra_pcie_bpmp_set_ctrl_state(struct tegra_pcie_dw *pcie,
 	msg.rx.data = &resp;
 	msg.rx.size = sizeof(resp);
 
-	return tegra_bpmp_transfer(pcie->bpmp, &msg);
+	err = tegra_bpmp_transfer(pcie->bpmp, &msg);
+	if (err)
+		return err;
+	if (msg.rx.ret)
+		return -EINVAL;
+
+	return 0;
 }
 
 static int tegra_pcie_bpmp_set_pll_state(struct tegra_pcie_dw *pcie,
@@ -1291,6 +1298,7 @@ static int tegra_pcie_bpmp_set_pll_state(struct tegra_pcie_dw *pcie,
 	struct mrq_uphy_response resp;
 	struct tegra_bpmp_message msg;
 	struct mrq_uphy_request req;
+	int err;
 
 	memset(&req, 0, sizeof(req));
 	memset(&resp, 0, sizeof(resp));
@@ -1310,7 +1318,13 @@ static int tegra_pcie_bpmp_set_pll_state(struct tegra_pcie_dw *pcie,
 	msg.rx.data = &resp;
 	msg.rx.size = sizeof(resp);
 
-	return tegra_bpmp_transfer(pcie->bpmp, &msg);
+	err = tegra_bpmp_transfer(pcie->bpmp, &msg);
+	if (err)
+		return err;
+	if (msg.rx.ret)
+		return -EINVAL;
+
+	return 0;
 }
 
 static void tegra_pcie_downstream_dev_to_D0(struct tegra_pcie_dw *pcie)
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
