Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6173C07E9D
	for <linux-phy@archiver.kernel.org>; Mon, 26 Sep 2022 11:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nnFO5Hw5DA/XUWSpITuxPlVvpj5/FUnYZedBoGQG0hw=; b=ez1JlTPmgnK/+N
	/e+6qwI7N3DySVEWZXSijlnpc8cZSlT3HpnWUwxlQa9xuf6QGf8Mo5Blcioza2nazVpbtbsm3Jsam
	ncUDKxeEIlBLoXr5xGzinqrzLL/RUqTphTl5FZI4OQVXl0m3mvOLMk2Z8Pa1PgA4iLEy6BkY1wTKd
	3CbMVqNMpIce0B9g1ZO2vjDou0FGCbBUkCIk08iFnhx3sCrNdqU2xE82ERwAaLiq9pDZPFDcKRXjU
	4a3XDiyEOl4uB1C4wNLZi4CK/qPxAiMXdB7wv3/c7zX0Tu+jpK46v7z+8Y5AaUBD7nq7/OU8MpP48
	w8e0kSfBF0EAAPmWriew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocmdd-004bnp-2M; Mon, 26 Sep 2022 11:51:05 +0000
Received: from mail-bn7nam10on2089.outbound.protection.outlook.com ([40.107.92.89] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocmdZ-004blY-Bo
	for linux-phy@lists.infradead.org; Mon, 26 Sep 2022 11:51:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G5UaH1PpGcnImdEw/FAUBgQuBA1u1DscYMqlyvKyqJRGlmf5mQAY423aRvnV2djuBt5Bmvjro63wMN/8R2N5pwPlA5QgqCbz/PQVO7bV7Bhwvl0v59sqm7sviTv7SGfy6v1Skh7MAKEQQNk+d5uvF0h1qMej98cf8jzNV+k8LWTvy2hq5l+GLUYiLYQxPevvTezGs7yN4ZOxxNLRNKwO70NcuA3oMk4QcuFrGQ4AaEJ9YgVJ73m2ZG6qzBH8OG+SA6jns6xep7hOd7xSPbUCch75no8zOD6smBPk1bRbSpmnLDUsvNR+RNLVDomldRHN2JD3iYZHXfY1DI7dBg5qDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=arh3EpjFeu4EuIDCT1OjVSzGrfiJ2BUMGsFBFI3ztlI=;
 b=Z1eEau02k61rm+jFotNW9KF0oxoILh1Y4lOkr7WcMzH5lql5vA5k8p2pRRaBBkx99tFzyA6tXL7ZkXv+8+/Xcn4jU9a77GoJmRbc6q5yD/zxVXxVUIqjWWebVoGqVrzn+fieDZZUaCC8ZLORstD9ipET5tAYylWk+vj1bhb84FQmxrvNCR8Y2uQyGuwMCW5z3KL12CZlqkKZ96cnCU6lNO6HaXuaS96JniB88/taVYaRwnj+MZL6qiqzd6e0/EJ1db/NgXssGLIbgBIyjYvTiqoSUl4pfaIB8wJgtizPnajlemGHeUZoqxWkalN7nZZc/bXNjQ8GpqthtwEGVyQDig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=arh3EpjFeu4EuIDCT1OjVSzGrfiJ2BUMGsFBFI3ztlI=;
 b=F5cm9ZJMz7cTFzLGWvmU5Pmnr0sHes2Ra+wZyxodGVY5u74st8YXkqJKDuyJBYumDHmzWYDTVFe7rEljAbb5ndem5wtd3b8AAfvdEqQ7WfIoTZvQtV/AI33653oM2mudwCmumd/VEK9J0GxUHdmNtwVgT8C4LTHbjj5zrIpP2Iz2tqntwOcTpF5+rF0z0hKOZmdcdk1isex797cqsn4r3GKa0N0pPsnlA4EkE9+VV2XonR1VIqM0o7+PLbXCX8aE6KcvoBbdmNxPcTfTgqe3/7uu8ST3514TC/iuEicJT8ex8Qq6+hNUH1hYpkWZvxwuUVEMn9q4gXbgAWKwnrbYYw==
Received: from DM6PR10CA0028.namprd10.prod.outlook.com (2603:10b6:5:60::41) by
 BL0PR12MB4852.namprd12.prod.outlook.com (2603:10b6:208:1ce::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.25; Mon, 26 Sep
 2022 11:50:54 +0000
Received: from DM6NAM11FT084.eop-nam11.prod.protection.outlook.com
 (2603:10b6:5:60:cafe::ee) by DM6PR10CA0028.outlook.office365.com
 (2603:10b6:5:60::41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.25 via Frontend
 Transport; Mon, 26 Sep 2022 11:50:54 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 DM6NAM11FT084.mail.protection.outlook.com (10.13.172.132) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5654.14 via Frontend Transport; Mon, 26 Sep 2022 11:50:54 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.26; Mon, 26 Sep
 2022 04:50:45 -0700
Received: from rnnvmail202.nvidia.com (10.129.68.7) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.29; Mon, 26 Sep
 2022 04:50:45 -0700
Received: from vidyas-desktop.nvidia.com (10.127.8.9) by mail.nvidia.com
 (10.129.68.7) with Microsoft SMTP Server id 15.2.986.29 via Frontend
 Transport; Mon, 26 Sep 2022 04:50:40 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lpieralisi@kernel.org>, <robh@kernel.org>, <kw@linux.com>,
	<bhelgaas@google.com>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
	<kishon@ti.com>, <vkoul@kernel.org>, <mani@kernel.org>,
	<Sergey.Semin@baikalelectronics.ru>, <ffclaire1224@gmail.com>
CC: <linux-pci@vger.kernel.org>, <linux-tegra@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<kthota@nvidia.com>, <mmaddireddy@nvidia.com>, <vidyas@nvidia.com>,
	<sagar.tv@gmail.com>
Subject: [PATCH V2 0/9] Enhancements to pcie-tegra194 driver
Date: Mon, 26 Sep 2022 17:20:29 +0530
Message-ID: <20220926115038.24727-1-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
X-NVConfidentiality: public
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6NAM11FT084:EE_|BL0PR12MB4852:EE_
X-MS-Office365-Filtering-Correlation-Id: 9395dd91-e191-4fcf-1b39-08da9fb55e5f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	8F5vSBTJQP+vdLzcIJz/fIuqK+vSxuq9PM+Eg6GnKCjYf+felQqpRZEdscneFOXVDUKLeF0MiKbG2x7klspDd0qGNOk7poRzX7jIlYunvUQdn9UQdxhhpOn8j7ieFLvaXjYPY85HskKq2euz5KydQK5es11wfTa4XJZ84RyG23xwkNXpRvCb6xEdn4yh4oXQcn9gSX7lhCYnyMUTh2lxGEvuwn7R+dpPpg+97aa+DoK7k05XOumsqzFR5DQScKtQzNorZ/dIobVIvyFzSyzB5J41kJZyj/bOjUWlKtJ5MKTE4ux4AZ9aalUQllLndvOFPyIvA8e5sJcgcDhgTLl1Mb13AdEhGtpiItrllRi0860Jc337AUof3XiiG/tptTMy6U5kLmnQw0Y+7z3dYavzwOeQwl/VHvqJNooU2oD0n0xiHT0ge0sJlas2BDtNACGc6WXFVE4UOtdTxL7sKRynsI8TJMHYZszwZ/tNU2cntpasUNMbOeX4PMCEzwxNZtQ5kFqph6bBPX6rQVRPwHtPXgcEs4H3UGOufVCb554subhRmOnH0O36P6NXq02r4E/XF3OhJxZzm4SkGt4JMBOoo+Uiu2yWlAMHiWb251hCYOTxgSFwwTKT/XA+XZYXg4xodpD4WhDZ8ZxPNpHF/0iPgwUrBZ4swVvLEDaNBZ3WpcIXuPc4AMwiVkEeHYZztm6FCtAwy+Nk2AzJ2DwhIbO72gLHnjf5Ua0u/HPYr6o5nwFynPkeuRScxnZMhYSx5uLyIj+wm/PwIjd4/WbIU+4MYEdkD+z1AluZnLh4GzdRzoY=
X-Forefront-Antispam-Report: 	CIP:216.228.117.160;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge1.nvidia.com;CAT:NONE;SFS:(13230022)(4636009)(346002)(376002)(136003)(39860400002)(396003)(451199015)(36840700001)(40470700004)(46966006)(82310400005)(921005)(356005)(82740400003)(110136005)(478600001)(7636003)(316002)(54906003)(26005)(186003)(1076003)(2906002)(4326008)(6666004)(70586007)(70206006)(8676002)(41300700001)(5660300002)(40480700001)(86362001)(7416002)(4744005)(47076005)(336012)(83380400001)(2616005)(426003)(36756003)(7696005)(36860700001)(40460700003)(8936002);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2022 11:50:54.5972
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9395dd91-e191-4fcf-1b39-08da9fb55e5f
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.160];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 	DM6NAM11FT084.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB4852
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_045101_425296_E01B81EA 
X-CRM114-Status: UNSURE (   5.27  )
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

This patch series contains enhancements to the pcie-tegra194.c driver
that works for both Tegra194 and Tegra234 SoCs and for both RootPort
and Endpoint modes.

V2:
* Addressed review comments from test bot and Vinod

Vidya Sagar (9):
  PCI: tegra194: Use devm_gpiod_get_optional() to parse
    "nvidia,refclk-select"
  PCI: tegra194: Drive CLKREQ signal low explicitly
  PCI: tegra194: Fix polling delay for L2 state
  PCI: tegra194: Handle errors in BPMP response
  PCI: tegra194: Apply pinctrl settings for both PCIe RP and EP
  PCI: tegra194: Refactor LTSSM state polling on surprise down
  PCI: tegra194: Disable direct speed change for EP
  phy: tegra: p2u: Set ENABLE_L2_EXIT_RATE_CHANGE in calibration
  PCI: tegra194: Calibrate P2U for endpoint mode

 drivers/pci/controller/dwc/pcie-tegra194.c | 126 +++++++++++++++------
 drivers/phy/tegra/phy-tegra194-p2u.c       |  14 +++
 2 files changed, 104 insertions(+), 36 deletions(-)

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
