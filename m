Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFDE3C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 13 Oct 2022 18:40:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TDrXzr8OjZQaOp7BfnO79iNxhS0AxB62tndH38DmQp4=; b=2XeIUDOe+AOLgf
	XEDuAIWuEzoExgSlw1nghukGSmqjv96plFi47KjpyD9fEnjWnp0lLoB4C/IwBYnVEdU/pc4qfx4kR
	zMsS2Tr82XXxg0bs+aWb//nbxfDCPPJPal+h9UERpXQRhtu+cghdDxGs/GCrh8P/q0aQFhWmx6/GS
	FyEsX4ix6nDYMlhJzWFqW9rrAOzeYBgGyR2v1zJncRdCMGXTE20/c+oWDj9emuIF+sIIXJGeIrvNK
	7Z32mt8hbZUOjUeJmuRVW1Sr4BYR/pRjVTtdBz0J89kpAe+wgt+49Kn1sx7n0p0OZffRQVH6iZHNQ
	uGZNag0tfFLvJakGSpgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oj38a-00Cj3a-7j; Thu, 13 Oct 2022 18:40:56 +0000
Received: from mail-bn1nam07on2081.outbound.protection.outlook.com ([40.107.212.81] helo=NAM02-BN1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oj38X-00Cj2J-Rf
	for linux-phy@lists.infradead.org; Thu, 13 Oct 2022 18:40:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ebt10oCNlk/VvMhtOHVY1GH33El+/SkHZee+ceq6uYT14Lra3ksKIxrsFjgEVoOixyXo7jO6tOEIvVbaSZ+CftKHpmiE4T6jPejRIGqzOIiYmDzu5sCvJTjG6V8CR9OJDZoUG/jvQ8DmT97Cl87qo7l4l3wG1De6Ox9Ki0YOsR6StYzjE+/G5Nct+jm+mbkXbbrLePB8tNfwuQH9LC/16wjuybfP5iSjo595GxsC9p0AiH/mynK4fOwZSu2rcCNbMsyDDtJYsCNVUqrE1fCD/R6H8AfFhbiS/IX3BkrW6LkqQB5iXkddQIw5PpCYUcggEyOYdLUtI4a+BYMpoMcQ6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qxhMeYnpGTaigWSLa7nBbJua/yYgWcM6sOMyjZ7BhdQ=;
 b=MwyU37Vy/52o1J+2o/q6FhxFzNxA9uJQZ4b6dgsU52TUDD7r0ssqx0W6wpzYH/MyZ89OcwAlb9H7u9ks4NJEBoL3YQ415ope5gZS3KCaU1WwJzcHbxo0vsJt4FiSG/z1+ZJf38lQKeJfEtc9R8X7ePXyaXpuHoeuI/dvpODG/6S/oyDqOyulJoqdlD2CH6V0oxhpeoxs4XjrMfiqSQIgLNMWH5bXLV/gmRMGqWZMKk7J0yPJBogrX4S+i++un+RUnCiGWuAnVySYPaLMf2SlL2pSKpEx3VFmA9fuTATMoWaHRGFxED4Rp3emCvRUc7+UoOenM6gFP9FhkQqAWHQpQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.118.233) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qxhMeYnpGTaigWSLa7nBbJua/yYgWcM6sOMyjZ7BhdQ=;
 b=AexbpklnWIi71wZ2t7Istk9dZzo+cF7vmlFRMyaUmWaL35pmUEcSNM5sxartn2YpPsNUSwHY9pKevV91XvnbxHs+f60xnKc739CsGWWjYcnwr0VmOQmELOZUihjv/nByV64H/60gs2EFDXQJxE2qOGopRzDfh2xo4NnxpX+Pa5EWPJv3PyIknL2rgWikeLhfeJlHwNp6n9ZPP+f05fMWvrPV8sHSd5Gw4+bnWgHvZ4TGXr+AkvrJ1SdWQjsp7ZtJrOIGoWlabp0p7q2q02S/rk+YH5WtO9NtsgbMXmZlCCms+WSAFgrnrXCn8ZUlRFORUD1j/J9irPJ4EdFLoL9utw==
Received: from DM6PR08CA0020.namprd08.prod.outlook.com (2603:10b6:5:80::33) by
 DM4PR12MB6087.namprd12.prod.outlook.com (2603:10b6:8:b1::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5709.15; Thu, 13 Oct 2022 18:40:48 +0000
Received: from DM6NAM11FT081.eop-nam11.prod.protection.outlook.com
 (2603:10b6:5:80:cafe::a9) by DM6PR08CA0020.outlook.office365.com
 (2603:10b6:5:80::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.25 via Frontend
 Transport; Thu, 13 Oct 2022 18:40:48 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.118.233)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.118.233 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.118.233; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.118.233) by
 DM6NAM11FT081.mail.protection.outlook.com (10.13.172.136) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5723.20 via Frontend Transport; Thu, 13 Oct 2022 18:40:48 +0000
Received: from drhqmail203.nvidia.com (10.126.190.182) by mail.nvidia.com
 (10.127.129.6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.26; Thu, 13 Oct
 2022 11:40:43 -0700
Received: from drhqmail203.nvidia.com (10.126.190.182) by
 drhqmail203.nvidia.com (10.126.190.182) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.29; Thu, 13 Oct 2022 11:40:42 -0700
Received: from vidyas-desktop.nvidia.com (10.127.8.9) by mail.nvidia.com
 (10.126.190.182) with Microsoft SMTP Server id 15.2.986.29 via Frontend
 Transport; Thu, 13 Oct 2022 11:40:38 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lpieralisi@kernel.org>, <robh@kernel.org>, <kw@linux.com>,
	<bhelgaas@google.com>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
	<kishon@ti.com>, <vkoul@kernel.org>, <mani@kernel.org>,
	<Sergey.Semin@baikalelectronics.ru>, <ffclaire1224@gmail.com>
CC: <linux-pci@vger.kernel.org>, <linux-tegra@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<kthota@nvidia.com>, <mmaddireddy@nvidia.com>, <vidyas@nvidia.com>,
	<sagar.tv@gmail.com>
Subject: [PATCH V3 15/21] PCI: tegra194: Disable L1.2 capability of Tegra234 EP
Date: Fri, 14 Oct 2022 00:08:48 +0530
Message-ID: <20221013183854.21087-16-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221013183854.21087-1-vidyas@nvidia.com>
References: <20221013183854.21087-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6NAM11FT081:EE_|DM4PR12MB6087:EE_
X-MS-Office365-Filtering-Correlation-Id: febfad2c-a646-48ad-0091-08daad4a7258
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	9B877wshN5K0e30wFa9Oq7T2VX5j74eq7lnBOuD3WcIiHj7oq+NLAoUqKzcjYNYaZ3+V6ghtijzQJIjoPIDZXOtuHixZKucUIVWi78RvKzbbuf0cG6yFHSo6BJbqzNdYljiPoCJHl09Bso2NomxdRg71B7PGNxzZTJRWsREu071vS+AFOIAxewpyq9acAs+UDJFGwGD3ZJ01fITE+4YSngOM/u+JJ1ojQ6xfLnrvx0y7V9XEiszXsT0je+ObRycexBccgVfJaFYiordiBbja0xNKIfkDuc6RK4Lx5aYLt6FCy76LKzAGSxqW6PxN2VGXc7FgQoem1fAaWc6+G25eLOTttzBcK6UxkdI5OWK2MmP3OZDSHqkacrSzeLZ5coj3imWS/OGAuWPpSwGpdg9c0mwvJzFWQSk36jkoXmAo5fP27et+kdSlGkfAJ8tnnZQUA3YkK4i5iidG8BtAn8exP+RjZfRNeHDIHMWPhmT3oelb98EhSutnF9mmbxV9yhPU+ZDtPsI0c2P/bEaqojkAyUZ/He425dYOuuXsG+Bgw8qDz0fqdMKEPfIGLTSzFv7qffs2uE2FEiecKm9hlCGL/kO4t3CD/BnXxkkrG6D+iOgFFfVoytTS3rtKGRvJltYYfpBXRzMlMaF1V4Y+vtw2FjOc6BbYMH3pz6WkGXZFoPWJ8kON614ijDUlTFaIZ6Ie4bvziHRZ1SfLy3xSXe9S6K0Gotz1hmRHoDPoX6imfR53zPzpZDcNd1+/rZUG8dh3TsLMlrrLQW5l2janmjo6LAhbM2yEtZ8MeGv8MrOXJa0=
X-Forefront-Antispam-Report: 	CIP:216.228.118.233;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc7edge2.nvidia.com;CAT:NONE;SFS:(13230022)(4636009)(136003)(396003)(346002)(376002)(39860400002)(451199015)(36840700001)(40470700004)(46966006)(186003)(5660300002)(36860700001)(54906003)(41300700001)(47076005)(86362001)(426003)(2616005)(40460700003)(40480700001)(83380400001)(478600001)(7416002)(336012)(2906002)(1076003)(316002)(6666004)(36756003)(110136005)(356005)(7696005)(82310400005)(7636003)(82740400003)(921005)(70206006)(26005)(8936002)(70586007)(4326008)(8676002);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2022 18:40:48.2339
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: febfad2c-a646-48ad-0091-08daad4a7258
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.118.233];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 	DM6NAM11FT081.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB6087
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221013_114053_914241_CE050156 
X-CRM114-Status: GOOD (  11.28  )
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

When Tegra234 is operating in the endpoint mode with L1.2 enabled, PCIe
link goes down during L1.2 exit. This is because Tegra234 is powering up
UPHY PLL immediately without making sure that the REFCLK is stable.
This is causing UPHY PLL to not lock to the correct frequency and leading
to link going down. There is no hardware fix for this, hence do not
advertise the L1.2 capability in the endpoint mode.

Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
---
V3:
* This is a new patch in this series

 drivers/pci/controller/dwc/pcie-tegra194.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
index e6fd713e9868..d592cf68b02c 100644
--- a/drivers/pci/controller/dwc/pcie-tegra194.c
+++ b/drivers/pci/controller/dwc/pcie-tegra194.c
@@ -246,6 +246,7 @@ struct tegra_pcie_dw_of_data {
 	bool has_sbr_reset_fix;
 	bool has_l1ss_exit_fix;
 	bool has_ltr_req_fix;
+	bool disable_l1_2;
 	u32 cdm_chk_int_en_bit;
 	u32 gen4_preset_vec;
 	u8 n_fts[2];
@@ -1967,10 +1968,11 @@ static void pex_ep_event_pex_rst_deassert(struct tegra_pcie_dw *pcie)
 	init_host_aspm(pcie);
 
 	/* Disable ASPM-L1SS advertisement if there is no CLKREQ routing */
-	if (!pcie->supports_clkreq) {
+	if (!pcie->supports_clkreq)
 		disable_aspm_l11(pcie);
+
+	if (!pcie->supports_clkreq || pcie->of_data->disable_l1_2)
 		disable_aspm_l12(pcie);
-	}
 
 	if (!pcie->of_data->has_l1ss_exit_fix) {
 		val = dw_pcie_readl_dbi(pci, GEN3_RELATED_OFF);
@@ -2589,6 +2591,7 @@ static const struct tegra_pcie_dw_of_data tegra234_pcie_dw_ep_of_data = {
 	.mode = DW_PCIE_EP_TYPE,
 	.has_l1ss_exit_fix = true,
 	.has_ltr_req_fix = true,
+	.disable_l1_2 = true,
 	.cdm_chk_int_en_bit = BIT(18),
 	/* Gen4 - 6, 8 and 9 presets enabled */
 	.gen4_preset_vec = 0x340,
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
