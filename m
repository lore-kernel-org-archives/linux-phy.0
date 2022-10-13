Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12DDBC4332F
	for <linux-phy@archiver.kernel.org>; Thu, 13 Oct 2022 18:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pZZCCVghPoujPxm9gTIn+TkoooVSddUMgYCbQPNRZaQ=; b=4jMQw2N/DdvkHF
	R/pgAOsapc53LLPwRMAToZ0jzs8TJ7x0JUfMKJGF51s66gqrzUjnmmT9G9R+XQrCu1byYm88ds0AV
	bs7utDyuvWQ4LD1VSIInenFNpDob1ElZhKr1VZh4MLtSKlqNLYWu4zfShmpnM2ODEK4w+81Yw5VUS
	Rq5lUs8ZtEmKBpw9GMC54Md5yuqdxo4c+XQ7gJe5StxrRjP4nJth8dhXGJ/C6mzVejt7DrE0qjksd
	OKzE2EPBltGAzrGZmaj3HRVArqnFLElqWs/20IVNMpDV7GLXUD89rMHrrNlHSiaPZJZm7g+2Jfvmq
	XbOfGilhy377LqRgIFTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oj38i-00Cj62-G2; Thu, 13 Oct 2022 18:41:04 +0000
Received: from mail-sn1anam02on2048.outbound.protection.outlook.com ([40.107.96.48] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oj38f-00Cj4n-PQ
	for linux-phy@lists.infradead.org; Thu, 13 Oct 2022 18:41:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y8epMa7xtCYI5wjfLUpvszLjo2LKUW8lZTWnxnZ9H3yg1hSLXvzzmW52Yi6lbfwlEgYNNfxTNzSXpXJEbhtmA8ouSc5UXAZwKFJb9G5FLAdq04xTby0RC3+V4D213bC3OBqMsVmuqkNE7RKc0yPjr9/toTnIeQW4T+6IqFEg64qL5CmPVqOSe9VzUSofFX5uHyfjzLaaEDzKHCA+2OQS06kuJxYvQQ5moJOkRkMLuZfmta3uH+Cjw/gi2mIYhUhLl9qChQ1ohJiE2QOsj+BhFrjEQ8jQigHm4CZ3YtKdLRfQhcHpsoFhTD8zY7GlJEM6XXrfgqMTyACqFmrVIKOvog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=do7jFBBJDjTpxwmlaFOhTACn7os+1N3Tp0MI+EIdnpo=;
 b=FcNgGsnoOElBsuktozZn9WaMuNZB8tUxiTmwe8CSYuDvklhtHbu+yXjRt0jcAUutF43hUVq6QT4SM6bJ+bfpLJ5w6IjZRhptp+0CsPKw02oJnOeQ0IG4bD+WFRyF8ITI08Vqngl5WYYhyI62IIteTY89ZR8LKL+4SCCef4xgww54B9naYzPwPRXdIawQMZEybQbhkVwDkETRLHnabfTDEpL1buB4vAOUiT8E9Abq/Wr8W1F5KKdbReZL9EfDzMRX63dN5pxUKnfmlT9vTnKXZDPfYGQCJOG/+Iuz+b4SnDBcvkjHXdpzCyF2LkvzfVyjtgurrHALu8ptEWG/dQbvvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.118.233) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=do7jFBBJDjTpxwmlaFOhTACn7os+1N3Tp0MI+EIdnpo=;
 b=IHW+LJJLVCjvQKe8JJEuT9RIswgqedh3bLFqUUyV/5hrP85xdmvEhgE4ZD3/j1yPDEaYyVbfarFrzAkNrx7vnBaRsIddUJ0rF+EQhldQZHeyQ+v5Pb095QwNx7aAkkHh64XwBK9Gx+9N1qH+35xY7LontMBvaTcKg5z30m2AXyy+5sb7HNhAonNbZo/9wign74JQ5AiV0ABTG3+pOvsGbhKc+hNJpO/14i3YGm3AJcI+gj/rVVKYbKV5MdIgiaUK0xpgbW7kii1aKAr5BMuR43cUo/yp0tepkeweR9jFmdfxDuWtcKULbG5N4W0pSERcGWLuc7ryJSU+TP+C5u8gpg==
Received: from DM6PR02CA0153.namprd02.prod.outlook.com (2603:10b6:5:332::20)
 by DM4PR12MB5892.namprd12.prod.outlook.com (2603:10b6:8:68::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5723.26; Thu, 13 Oct 2022 18:40:58 +0000
Received: from DM6NAM11FT064.eop-nam11.prod.protection.outlook.com
 (2603:10b6:5:332:cafe::68) by DM6PR02CA0153.outlook.office365.com
 (2603:10b6:5:332::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.26 via Frontend
 Transport; Thu, 13 Oct 2022 18:40:58 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.118.233)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.118.233 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.118.233; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.118.233) by
 DM6NAM11FT064.mail.protection.outlook.com (10.13.172.234) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5723.20 via Frontend Transport; Thu, 13 Oct 2022 18:40:58 +0000
Received: from drhqmail202.nvidia.com (10.126.190.181) by mail.nvidia.com
 (10.127.129.6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.26; Thu, 13 Oct
 2022 11:40:49 -0700
Received: from drhqmail203.nvidia.com (10.126.190.182) by
 drhqmail202.nvidia.com (10.126.190.181) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.29; Thu, 13 Oct 2022 11:40:49 -0700
Received: from vidyas-desktop.nvidia.com (10.127.8.9) by mail.nvidia.com
 (10.126.190.182) with Microsoft SMTP Server id 15.2.986.29 via Frontend
 Transport; Thu, 13 Oct 2022 11:40:44 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lpieralisi@kernel.org>, <robh@kernel.org>, <kw@linux.com>,
	<bhelgaas@google.com>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
	<kishon@ti.com>, <vkoul@kernel.org>, <mani@kernel.org>,
	<Sergey.Semin@baikalelectronics.ru>, <ffclaire1224@gmail.com>
CC: <linux-pci@vger.kernel.org>, <linux-tegra@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<kthota@nvidia.com>, <mmaddireddy@nvidia.com>, <vidyas@nvidia.com>,
	<sagar.tv@gmail.com>
Subject: [PATCH V3 16/21] PCI: tegra194: Set LTR message request before PCIe link up
Date: Fri, 14 Oct 2022 00:08:49 +0530
Message-ID: <20221013183854.21087-17-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221013183854.21087-1-vidyas@nvidia.com>
References: <20221013183854.21087-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6NAM11FT064:EE_|DM4PR12MB5892:EE_
X-MS-Office365-Filtering-Correlation-Id: fe24e336-400c-4a5d-ee96-08daad4a7887
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	8DypQODxzsh8gH4lH/AQurPZOJSxuF4+ATA7rs16tgQvmGWLnwNK3LgZrF7EQgOiSuMoL7eN6YXLhRt4RoGNig5RpO3TTxCaU/WAnYfsNbV33Iw7ex2jvhhi/33EWZx9lHNKjx85Tewl5ivDfANiPomOWb+JSjcGcjzS+Bs+UbfAeGAdW4hrNvI1ht8rw+kBErLrmInenCFkgIpw4wxTzYZ7jvABs1pqyKyMrUBsiQrfmiVecoSa/wYGnSlFH+cN4d+lfU3GCwTfCNyNF4a6lKjw52OOJPkAcI2aNrpEZ0qMPQsLbujSHfSJdFi2THi87UIBHeCNhk5b4Bffgeu97oPCe/UF6D5OcG3FX950Sfg3U25xkLc+RSHYci2LbBPm97WwO9yt4oE/e7nql9pzHeB2I/d5cg4b1cLnydat0q+Opei2B0MB46D/22RanzmrTCuogyqXbMDVcJv7DH/nWhTJPcOoc/SPQ9Y6ek8pvGu43Pl+HnqCIQ3ARLC3JT5cqBksZBlPWToXB3ih08uKqCxAgwqiIqyoEjCPwimmKvxXUuSSuNZPIQoKCbWx7JimreLyR6FYK+tNhGrJgi8BpMsv+UPpIH1X9mx2eaBevPe6eLSEKfmHuUVg/0riYIZ8rwuQtF+VT20r1LbiMQ840HjlmtywOlb5WTaG8N0tzt+itRKhHhIGV0ueXHBvEFkDcGox5AmazIGEiGIOv7uIyqMUtgmtsW98ptmYrECE0CbvjBRzSfWtYP+p1NOw8uv6UzA+FeR61Ll7VC5hqH4l2upokG/pxihf+CZPwcDOdLU=
X-Forefront-Antispam-Report: 	CIP:216.228.118.233;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc7edge2.nvidia.com;CAT:NONE;SFS:(13230022)(4636009)(346002)(396003)(136003)(376002)(39860400002)(451199015)(40470700004)(46966006)(36840700001)(2616005)(86362001)(7416002)(41300700001)(7636003)(356005)(5660300002)(82740400003)(186003)(40480700001)(1076003)(478600001)(8936002)(36860700001)(8676002)(82310400005)(4326008)(70206006)(70586007)(36756003)(40460700003)(26005)(316002)(15650500001)(336012)(54906003)(110136005)(2906002)(426003)(47076005)(83380400001)(921005)(7696005);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2022 18:40:58.6299
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fe24e336-400c-4a5d-ee96-08daad4a7887
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.118.233];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 	DM6NAM11FT064.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB5892
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221013_114101_843233_D9FBFE53 
X-CRM114-Status: GOOD (  10.08  )
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

LTR message should be sent as soon as the root port enables LTR in the
endpoint. Set snoop & no snoop LTR timing and LTR message request before
PCIe links up. This ensures that LTR message is sent upstream as soon as
LTR is enabled.

Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
---
V3:
* This is a new patch in this series

 drivers/pci/controller/dwc/pcie-tegra194.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
index d592cf68b02c..23ca97401339 100644
--- a/drivers/pci/controller/dwc/pcie-tegra194.c
+++ b/drivers/pci/controller/dwc/pcie-tegra194.c
@@ -493,11 +493,6 @@ static irqreturn_t tegra_pcie_ep_irq_thread(int irq, void *arg)
 	if (val & PCI_COMMAND_MASTER) {
 		ktime_t timeout;
 
-		/* 110us for both snoop and no-snoop */
-		val = 110 | (2 << PCI_LTR_SCALE_SHIFT) | LTR_MSG_REQ;
-		val |= (val << LTR_MST_NO_SNOOP_SHIFT);
-		appl_writel(pcie, val, APPL_LTR_MSG_1);
-
 		/* Send LTR upstream */
 		val = appl_readl(pcie, APPL_LTR_MSG_2);
 		val |= APPL_LTR_MSG_2_LTR_MSG_REQ_STATE;
@@ -1951,6 +1946,11 @@ static void pex_ep_event_pex_rst_deassert(struct tegra_pcie_dw *pcie)
 	val |= APPL_INTR_EN_L1_8_EDMA_INT_EN;
 	appl_writel(pcie, val, APPL_INTR_EN_L1_8_0);
 
+	/* 110us for both snoop and no-snoop */
+	val = 110 | (2 << PCI_LTR_SCALE_SHIFT) | LTR_MSG_REQ;
+	val |= (val << LTR_MST_NO_SNOOP_SHIFT);
+	appl_writel(pcie, val, APPL_LTR_MSG_1);
+
 	reset_control_deassert(pcie->core_rst);
 
 	val = dw_pcie_readl_dbi(pci, PCIE_LINK_WIDTH_SPEED_CONTROL);
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
