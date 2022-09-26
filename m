Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21618C07E9D
	for <linux-phy@archiver.kernel.org>; Mon, 26 Sep 2022 11:51:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0iVIf9ffXGgA0SSwQaZYnUuaMdSuSroZdnCboY+9LJE=; b=vnPk0v/Cx0Tf5B
	+1MSv0E8irjgak5uYtFgECahf/F2yhAdVFgbhXkpm+g/ug+a8/JBQOxIfd7NKFvQcIiT6K+im1dIl
	XU6hzsG/8gbwS0td50R8TEgymFpoHn8f5B7df6Fn/YI72O6KyIMu01F+0itOJWju7LMpB6r5CzaYp
	++qOSvU51Oo22FZNb7udZs+y9VUjQXNYOmeoOLWifU+NubuU6RdDJQ51GV7wtKHsFPDutk8Vc+ryW
	Ip6T/4xBNgiejlK98tlzV+Iu1vr2/UWaWsj6IXxQusIFThnHrcbtz+HARnPbFCxsJkogHUxK+q8O5
	gspUOlFOiJn+d6A9JlOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocmeK-004cCz-IG; Mon, 26 Sep 2022 11:51:48 +0000
Received: from mail-bn8nam11on2041.outbound.protection.outlook.com ([40.107.236.41] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocmeH-004cAP-Uy
	for linux-phy@lists.infradead.org; Mon, 26 Sep 2022 11:51:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aQQzvr2XgLP2z8kwPFGGPQu994xnpw7dthUIn/EzT16pjjtha9pf6jRbR4e0OFph5ILoxN8Tfmb3VgXqeiUeh7wIq2oGnGDhuYL+yQmpePBHCVsk3uCz2DV8N9Sr8SKmIDx0o8rJYRJDaeacUDJfYCufX0ys89WCu177v6NQzwQvMLGvr0POw+3Jmgx3+r8MdoAHXMTC21zfvIYBITREHoaJJPh24WqaDcDZGSPvFEP5SOS6Sye0nmFdvTH6BFQb/0rmjMI/ojhsGK3Soh3PHrGx6Nit+SLy8ChHJNZV6+IofbBxEvLFQF/TLHBJJFv38gb7miTrXKd21a8j3Ns77Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y+FKelymuYp/gnfAEznaV4rnLYFrV4/9oEDPJXygwNY=;
 b=Dqf3jd19VP5f4upu5Y7Wach9sFYF856pSWWOHk9P/aelHhhbaWKqz3dejcX+1fl+4vQpRbvzG7hS3iqvoiCegjzrJqDpcA/0yXSBPvZH8lY/VqqCW4PyWSWjZ099mZhWSHU9M7Lnf1XuUhMz0H8gAj0PvsCNvw9p7VylDdZtvRqY8p8xT+bcAX4O3N1VU73rnvVJfE4H3TWdTVCZ90Qep2eGeL421tvLURYpiBrNzdpfbFCZx6oy7vo0UAaTBJ4t4VWSfPqF95/23/K7npWaa6lqKXiWkMGRP6FtYdEKalI1WgilJhDsPGs2BYDsyFTljW/ea9EvyFpBWMqyyHPViQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y+FKelymuYp/gnfAEznaV4rnLYFrV4/9oEDPJXygwNY=;
 b=ZxD5UQIa+kSAiF8GJ2atECW+rCjoCtcTd3Ucwwt7/e0JVv1YGwfQdL68jUNRxKYqCJ3agpBnOpFm5cKqeByPLgVK797S7nWOimL+/IsgmS+yKLSTZRoOB2KYyrS9oYPXm7bS6jiGum8wxjmyiLiWvep3VDhP4y5Cv+IZEIugHP7yA73ARhA18cwiwPwA3qUE0dGAU76Fyci5AVnq95aQooicELPNwFJnqzULwR4wA8aixPqNYfHIOmVTTyen10dbhBMit7eTY3cAYFX8hSLzwja7hmcQvTFYQPDJKVKpmENH0xaa7auvMQ+TjqiZODC17TWkeXySmbd2MLwqLJiANg==
Received: from DM6PR03CA0048.namprd03.prod.outlook.com (2603:10b6:5:100::25)
 by PH7PR12MB5902.namprd12.prod.outlook.com (2603:10b6:510:1d6::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.25; Mon, 26 Sep
 2022 11:51:41 +0000
Received: from DM6NAM11FT096.eop-nam11.prod.protection.outlook.com
 (2603:10b6:5:100:cafe::6a) by DM6PR03CA0048.outlook.office365.com
 (2603:10b6:5:100::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.25 via Frontend
 Transport; Mon, 26 Sep 2022 11:51:40 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 DM6NAM11FT096.mail.protection.outlook.com (10.13.173.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5654.14 via Frontend Transport; Mon, 26 Sep 2022 11:51:40 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.26; Mon, 26 Sep
 2022 04:51:32 -0700
Received: from rnnvmail202.nvidia.com (10.129.68.7) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.29; Mon, 26 Sep
 2022 04:51:31 -0700
Received: from vidyas-desktop.nvidia.com (10.127.8.9) by mail.nvidia.com
 (10.129.68.7) with Microsoft SMTP Server id 15.2.986.29 via Frontend
 Transport; Mon, 26 Sep 2022 04:51:27 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lpieralisi@kernel.org>, <robh@kernel.org>, <kw@linux.com>,
	<bhelgaas@google.com>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
	<kishon@ti.com>, <vkoul@kernel.org>, <mani@kernel.org>,
	<Sergey.Semin@baikalelectronics.ru>, <ffclaire1224@gmail.com>
CC: <linux-pci@vger.kernel.org>, <linux-tegra@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<kthota@nvidia.com>, <mmaddireddy@nvidia.com>, <vidyas@nvidia.com>,
	<sagar.tv@gmail.com>
Subject: [PATCH V2 7/9] PCI: tegra194: Disable direct speed change for EP
Date: Mon, 26 Sep 2022 17:20:36 +0530
Message-ID: <20220926115038.24727-8-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220926115038.24727-1-vidyas@nvidia.com>
References: <20220926115038.24727-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6NAM11FT096:EE_|PH7PR12MB5902:EE_
X-MS-Office365-Filtering-Correlation-Id: b6914b81-ed7d-431b-29cc-08da9fb579da
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	jzqA05hbPCLOXdevA28bdLUWb8KV2N8JWoFnf7ePdBcNYIXMirYr3gUvLptczT0KG5JZb/ng+rbE4HadK/6IYpRHYvW9NSQom06besZZxjSWx1s4jqTS2AHpw6L+E9M6Bd08/iEUPuaai8eV5utwn2zf/qY+IqEVuAIIYVZGlgx5HFKMaNL4WwrEz51lXUHFvbVrKs7wb/TZVKnTxlN9tluOLvtSQP1ySxQkaVB1Srqb+aMFh5IkdJvi89ypHBXu6C1sqPyBCOGYH5fYB0s9o280Q3nXeWkYqbkShVkGCbekwomXE87izE5MZiSHghpJX+RyqknZggd7c/dgpIm4RPgX65Pj+Xqpg850LTEjFLGNJOhD9sVBZcASBectTWFYAWQWjU5NUHNn2o6hCxDOEypIdlQANh0/Ja7IAZUNTsq9wbHKIfw3n19+N65zEgAycVwDvlXGW0v6tGN+LnWtbvKSYysf8yhQAKqD6kcjg9vzsiLCkjWGELyM8tZsNmSZiWoat0aRM9XO80MESERhBQiwPmg0GaTUJciPw+ir9E+pG3HwzDYxC2qU8rAu738Rn8WgrF2M2l9ugqJpmwyIFEeYNrKK7Vt2Grvwfzrr4AyMqP2sjjkpf4VNb1coGMVWSfZ2/uxWfs4MPA1Qgxiw7xog89k/nr2bXMMi36x4Dv5RDFhFn7dSV71QqYxP+CGGlIHHKfRhRn7Al6FI5wbHDx4AQ69Sm0L+Z6xnQN+kCcj7Uv2o6VLgjxIUC+F9zfZ3EehKlaSDuO9d/XtAg+OKcWlP4nkhUQxHDwrTwjzBmnM=
X-Forefront-Antispam-Report: 	CIP:216.228.117.161;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge2.nvidia.com;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(136003)(346002)(376002)(396003)(451199015)(36840700001)(40470700004)(46966006)(83380400001)(82740400003)(356005)(921005)(7636003)(110136005)(36860700001)(40460700003)(4326008)(70586007)(8676002)(70206006)(86362001)(316002)(54906003)(2906002)(5660300002)(8936002)(7416002)(41300700001)(47076005)(2616005)(36756003)(1076003)(426003)(336012)(186003)(7696005)(6666004)(40480700001)(26005)(82310400005)(478600001);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2022 11:51:40.7021
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b6914b81-ed7d-431b-29cc-08da9fb579da
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.161];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 	DM6NAM11FT096.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB5902
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_045146_139547_2E55F862 
X-CRM114-Status: UNSURE (   6.73  )
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

Disable direct speed change for endpoint to prevent it from doing
speed change by itself post physical layer link up at gen1 and also
to leave link speed in control of the host.

Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
---
V2:
* None

 drivers/pci/controller/dwc/pcie-tegra194.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
index 702c55deb747..3e4868ab8416 100644
--- a/drivers/pci/controller/dwc/pcie-tegra194.c
+++ b/drivers/pci/controller/dwc/pcie-tegra194.c
@@ -1872,6 +1872,10 @@ static void pex_ep_event_pex_rst_deassert(struct tegra_pcie_dw *pcie)
 
 	reset_control_deassert(pcie->core_rst);
 
+	val = dw_pcie_readl_dbi(pci, PCIE_LINK_WIDTH_SPEED_CONTROL);
+	val &= ~PORT_LOGIC_SPEED_CHANGE;
+	dw_pcie_writel_dbi(pci, PCIE_LINK_WIDTH_SPEED_CONTROL, val);
+
 	if (pcie->update_fc_fixup) {
 		val = dw_pcie_readl_dbi(pci, CFG_TIMER_CTRL_MAX_FUNC_NUM_OFF);
 		val |= 0x1 << CFG_TIMER_CTRL_ACK_NAK_SHIFT;
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
