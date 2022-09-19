Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAE8CC54EE9
	for <linux-phy@archiver.kernel.org>; Mon, 19 Sep 2022 14:37:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bOl2Jw8aNVHXO3y8zkwxiVDKMnY6swt6wcfQ5xMcoqk=; b=MN3QmK9D8Lr4gU
	JVLYoNr3a8ml19RnkDLac448lOdYWq0unSIxjEMHcUA/N6rQgkRdpamQsUqy9BpzcsAijC1MkWr2l
	Yu5zwI/DrZIN5bavMbq2ihXqNTAF6LdK43ZlBbXdwBbjyCwre6pnmMZTIpEpo3Wr9ln2cIRA2pnQW
	wQIrRh3jQEE8vj0grb9ebspubY1Gc3tMv3UUTcipeXJIk+DxMKcJbPZ+bazRi5/oDGq+WWIdbj4Pr
	zxP2GdI0gk0UYtZEwkUCUqSVOyUISoJWhAGhDwUCk5+6P14FNonQ6+ChvZhO2kp8GA5/I5Uat9LAc
	bXEcDCPDqsEt56aem9Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaHtj-00C7yz-Qs; Mon, 19 Sep 2022 14:37:24 +0000
Received: from mail-bn8nam12on2079.outbound.protection.outlook.com ([40.107.237.79] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaHth-00C7x3-63
	for linux-phy@lists.infradead.org; Mon, 19 Sep 2022 14:37:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZMYBIyL9KN8AhSwV0hGOLBnClYnnSD72NfBqKsiU1vp7FAxwcclHmSpwUo6NBOYhZ/fTpEh7O74LWSXYmGx96EaAezqkorHiewBQonGlJ2daWWqAT/KjWMr+vVuMdDoDzqlJME9FroUXCVCfvUxdTIEfRyxzrCOuSY2hQa3k4Vwq0Roho9Txe0NUOpkpzvfss4wkaPYHuR3DEd3RAZa6lGhZzdfyqIWR2U79I/wlycfO4yYd6OVM2lQilnzZi80uOgogf5xni1d695nYmEOKHgL4mmZEowmnkf8MGNsvaFGi0XTciREjkUJoT2HsCyo7DYqbwGhK9JtwzkAr8j0Aeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sVBebQ49Srt+cVV9jMHtGZ9hGiIsSsQyUgx3EP7CK3Q=;
 b=JWoIPfpJPDzG5OMyjGtEumaKOD4RL9D0CNrk4z9g/V8HgH7Z2YiLIjs41n4FnzODZKwV5exC5nW/atJw9Uqkc9v3fzFepLWccKsNVGyJ6aL++FmsxnZ4Yg3Hl9UXlFpwwcoGlV3pJyWxQ2ShnoG+WpQG7ugiDjSfZKqcQ1SDARw6oO4IR9NeW89JCbMN0cyNAAIs8NX90dpviqnrQWCkNTge7qHkHGozvcyeP3pf1kk1GWm29aHiLCxB4oAM84yQXURP5LHfgxumqK6hCDo5lfv+QAEyBm1WBSMiRb9d0TITien7XRlRZOQNpKaKnyfWn8xE9n8O14u6oVq5q5xhZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sVBebQ49Srt+cVV9jMHtGZ9hGiIsSsQyUgx3EP7CK3Q=;
 b=sGM9rl07tFcwkjdBfjARllZyo7DCLLu5IMiTfGG9tI4DbqMuEWhqB8zDyZoil7MdWRKEGCIskwkbDAi0CiqaG9P25p9m5HhGgFjm751kYamgzd1uXg2vp5hwip1NtbgCPfJSr6ICjHkxAl42ojBPryNMbHSPDtb+a5wkXWWa7V6Gf7zjDQUcHDOTp6/adqiTkApBlw6jl8hmjPX5/Vl5lUjQPZN5bsqFjpQzd0GaxymV+/ides6h9yhtsLiJJ4kvEyRWmTM+hdhngRDbMprG/ay9tqPHE9U//if+q4DmYzizJ9T94nyyqT1FmStBgSqg4Suhkm/OdqaKleTAg6qKQA==
Received: from CY5PR14CA0007.namprd14.prod.outlook.com (2603:10b6:930:2::8) by
 SA0PR12MB4558.namprd12.prod.outlook.com (2603:10b6:806:72::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5632.21; Mon, 19 Sep 2022 14:37:16 +0000
Received: from CY4PEPF0000B8EE.namprd05.prod.outlook.com
 (2603:10b6:930:2:cafe::5) by CY5PR14CA0007.outlook.office365.com
 (2603:10b6:930:2::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.21 via Frontend
 Transport; Mon, 19 Sep 2022 14:37:16 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 CY4PEPF0000B8EE.mail.protection.outlook.com (10.167.241.10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5654.11 via Frontend Transport; Mon, 19 Sep 2022 14:37:16 +0000
Received: from rnnvmail203.nvidia.com (10.129.68.9) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.26; Mon, 19 Sep
 2022 07:36:59 -0700
Received: from rnnvmail205.nvidia.com (10.129.68.10) by rnnvmail203.nvidia.com
 (10.129.68.9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.29; Mon, 19 Sep
 2022 07:36:59 -0700
Received: from vidyas-desktop.nvidia.com (10.127.8.9) by mail.nvidia.com
 (10.129.68.10) with Microsoft SMTP Server id 15.2.986.29 via Frontend
 Transport; Mon, 19 Sep 2022 07:36:54 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lpieralisi@kernel.org>, <robh@kernel.org>, <kw@linux.com>,
	<bhelgaas@google.com>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
	<kishon@ti.com>, <vkoul@kernel.org>, <mani@kernel.org>,
	<Sergey.Semin@baikalelectronics.ru>, <ffclaire1224@gmail.com>
CC: <linux-pci@vger.kernel.org>, <linux-tegra@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<kthota@nvidia.com>, <mmaddireddy@nvidia.com>, <vidyas@nvidia.com>,
	<sagar.tv@gmail.com>
Subject: [PATCH V1 3/9] PCI: tegra194: Fix polling delay for L2 state
Date: Mon, 19 Sep 2022 20:06:21 +0530
Message-ID: <20220919143627.13803-4-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220919143627.13803-1-vidyas@nvidia.com>
References: <20220919143627.13803-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY4PEPF0000B8EE:EE_|SA0PR12MB4558:EE_
X-MS-Office365-Filtering-Correlation-Id: 82aca797-46fa-4cf6-47f3-08da9a4c72e6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	FjalXqeLe0269Jpl+NshmXvdpRc8IcXjJ5TaJJIs2lTVKNLOtnWX4vQpxjrBsakNv0lossMMU8Gw5+PLaYr0nyww6Oi3gn91wgoY+s1OWa3FNduCOP7bBVRLkokjhH6GGBbFm0W8mwukNFoTMwevjuBcdCfuuE6S51qq0dzZnSw2XHcunNOdUBoNAUZTLqvUmRNbUcF5RcVuK0EewOzfvtgXt3WVUOuzsQ98TNjS1flTmMsEc/6/DWmdDijWzX5IohQZXFA/OJJIJjp7tMDMzGVK6c4NBUwd0KcPLQvioM7zfjQmvIVxSzE0jKCGbqlcdV2EpaJ65AG9ysJQU8MbCkij/hjaS1znXCvOcI8yc6by15HhjtAJsMWndilsS6sFm+nYOcIOyvSyeaVMycGo7v2WLPHspwRnlJYqg+ifzzRczeRGjtF5722hrJszOk7XNBAyCmMjvLtNIzW6z1bXBQx/txG59nApOtlU7+wBMAswAikCOHYAfFGorG6W1BznTy0Cmc9zI+WJOGJx9N8JRmLJjylsPLVHrRbtEIpzhaHdzYFUxohXZHgW++zgk90NtbI4qr4B4jWXgPQf1oqyLTetpFcDYkHy8A5ZCQiGoiluOtviis1bcfvhMb/35gdFwDEZswR2G3Il8o9HwxZn8wW+7yi6lfV5B/7eS3qF0jbguoYdRZVi2P1wGNyqFfg4DkwLnAUU9wLeJ7r4MnyfeFBW1J76k7JqE8IMYsQDI/s8hV7KGnZDcixV7QASJ8egNAXsp4fvksYRllMl+QX1O/5hOmRD7EhssmHbPSzB3qA=
X-Forefront-Antispam-Report: 	CIP:216.228.117.160;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge1.nvidia.com;CAT:NONE;SFS:(13230022)(4636009)(396003)(376002)(39860400002)(346002)(136003)(451199015)(36840700001)(46966006)(40470700004)(36860700001)(8936002)(86362001)(83380400001)(5660300002)(7416002)(426003)(316002)(47076005)(36756003)(70586007)(70206006)(186003)(7636003)(1076003)(2616005)(40460700003)(82310400005)(478600001)(41300700001)(336012)(2906002)(82740400003)(356005)(921005)(26005)(110136005)(40480700001)(54906003)(6666004)(8676002)(4326008)(7696005);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2022 14:37:16.1139
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 82aca797-46fa-4cf6-47f3-08da9a4c72e6
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.160];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 	CY4PEPF0000B8EE.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR12MB4558
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_073721_308928_10010E41 
X-CRM114-Status: UNSURE (   9.63  )
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

Current L2 state polling with 1us interval is too aggressive. Based on
the experiments with different endpoints, LTSSM state transisition to L2
is happening between 6us ~ 40us. Hence, update the polling delay for L2
state from 1us to 100us for a better utilization of CPU cycles.

Fixes: 56e15a238d92 ("PCI: tegra: Add Tegra194 PCIe support")
Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
---
 drivers/pci/controller/dwc/pcie-tegra194.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
index d053e52b1778..de477192c4b8 100644
--- a/drivers/pci/controller/dwc/pcie-tegra194.c
+++ b/drivers/pci/controller/dwc/pcie-tegra194.c
@@ -206,7 +206,8 @@
 #define CAP_SPCIE_CAP_OFF_USP_TX_PRESET0_MASK	GENMASK(11, 8)
 #define CAP_SPCIE_CAP_OFF_USP_TX_PRESET0_SHIFT	8
 
-#define PME_ACK_TIMEOUT 10000
+#define PME_ACK_DELAY		100   /* 100 us */
+#define PME_ACK_TIMEOUT		10000 /* 10 ms */
 
 #define LTSSM_TIMEOUT 50000	/* 50ms */
 
@@ -1556,7 +1557,7 @@ static int tegra_pcie_try_link_l2(struct tegra_pcie_dw *pcie)
 
 	return readl_poll_timeout_atomic(pcie->appl_base + APPL_DEBUG, val,
 				 val & APPL_DEBUG_PM_LINKST_IN_L2_LAT,
-				 1, PME_ACK_TIMEOUT);
+				 PME_ACK_DELAY, PME_ACK_TIMEOUT);
 }
 
 static void tegra_pcie_dw_pme_turnoff(struct tegra_pcie_dw *pcie)
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
