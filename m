Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04AA5C433FE
	for <linux-phy@archiver.kernel.org>; Thu, 24 Nov 2022 08:35:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P9f71nBvInIKrH6x5XewJB65TwvRvXacNFXR51p+lDo=; b=nxnyCr7FHEu9nJ
	2+HFQl+Lw9MZr2rzeKoy5JRFoD8GX9qD476HU/Rj1SEbMr6zGuzXi2l/nwEDYzJ+mwELdT7H/Ll0a
	tKMhM3hu/UOlJeZdeAXnuHEzbqD7NprtWgNMGZc6WWHBBRRY57jYu4K1IScA9KZhZUKw4rBInscXL
	RZUOYSHHWFqrEoFmbXabRPinUQnqEojTpLD4LQ+GIYqjqsCM4UFMXQsRt30r6l962/1ViHIVmI7pZ
	9KvVrrj1//Pmj1NI0NtpXV3wt/9f2ggbkKfLkW/wrK3glv2brN2d7gy9zuJ1w5OZQfh2diJLEfOiU
	5nbH3MWQzrxGYahzk4PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oy7hv-006aRj-4l; Thu, 24 Nov 2022 08:35:43 +0000
Received: from mail-dm6nam11on20616.outbound.protection.outlook.com ([2a01:111:f400:7eaa::616] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oy7hs-006aP4-Jj
	for linux-phy@lists.infradead.org; Thu, 24 Nov 2022 08:35:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DcAZfKnp4SubgXmw+Fm7t2DMgAUh8rroaM/z9188KY1D16sRATu5GiNpTm+p5DdQ5S4IWXoFcEXJEGSQOsqqGWvFXCD1IleCKfQgzyUId6nRC5uTTDHTcMS5jadqD4Ex+2zlNeWc2AMt2UYk5N92IzZ3Jb/jOXOUDocC3/SnZcLE+fcMN2t16jgXoJKe8Kf5DqbwmLrEiIskjio+opps03G7SwWFJ4/4XS0u12PNq73h7+s46BfXh5TQkI7FsuS1mxtlrYuOEa9vYZSD9g6VCu3tUx1WxFbUbaBrNdOdWokdcn4CaIenOuwPAJqLyljhVKtg0kBDNL9Nd6DR0edu1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jrb96oJ1XTaWs7uDXw8gzrA2RJOuAdcPo0OCdKbIUJg=;
 b=FMQFlbBEVEV67iOjpxpW4QhPtpRbDUwRXW0Kwk/0tLIAi6zgdbjQnrlH/Sr8nkoWz4qdilxLZbzPqSNJ3i5fM4PMbCU3VlAu7bOCUQfqLUVqv+ghOO3Q3eR41iMh8gPZTrq2lWGEbQJD1WcGj8xpgWOM42se01FE2GRVCFP1XwB1+eYwxy/CyVZ5h30ZTGtuz38hBS+wMUn76nw+KJb7zBUxsFDveChxbOw3cHbD96o0kUlMeJAnGu10irFh3+rWIUfW+/0wNk8GlmEcrWq9/KSi0fg/dEIOIz5A3j4FU5QrGis9utHIlIojZQ+ZEc30Olriz4oCjlgHAT5a1GdJLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jrb96oJ1XTaWs7uDXw8gzrA2RJOuAdcPo0OCdKbIUJg=;
 b=PLnwFNrgP0cvEq+ZAk5oSZVfSACsc3KHOXMVGMFbuvS99GzhV53dVSeJQsXJVz6SM5GtlA3iQXtJMMFU5RfjXResIs1rTK4QC2wmGFCfgGE7X987DMiu7esE9peAp5OvS3PBb7EKGzIQHrATeNsheGfhbzWOiRlJ9rvmyqxVxTV0GUxZ2W89HgsnFu6V0gqHHqUlRxpaSlia+pprCTa0NBjkwguBERULvSkPyOXImOgCYT+xLBJIsofrUUDQcvN71UrEmzVovqxv44HAx40rWdPiI9pdjkYxzlv0ENzJSNm4I5qn+FYFJWBh0hGuYlqPmXrRoUZbvCiIL41xIZySZg==
Received: from DM5PR08CA0026.namprd08.prod.outlook.com (2603:10b6:4:60::15) by
 CH2PR12MB4230.namprd12.prod.outlook.com (2603:10b6:610:aa::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5857.19; Thu, 24 Nov 2022 08:35:36 +0000
Received: from DM6NAM11FT061.eop-nam11.prod.protection.outlook.com
 (2603:10b6:4:60:cafe::4a) by DM5PR08CA0026.outlook.office365.com
 (2603:10b6:4:60::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15 via Frontend
 Transport; Thu, 24 Nov 2022 08:35:36 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 DM6NAM11FT061.mail.protection.outlook.com (10.13.173.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5857.19 via Frontend Transport; Thu, 24 Nov 2022 08:35:35 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Thu, 24 Nov
 2022 00:35:23 -0800
Received: from rnnvmail205.nvidia.com (10.129.68.10) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Thu, 24 Nov
 2022 00:35:22 -0800
Received: from mmaddireddy-ubuntu.nvidia.com (10.127.8.10) by mail.nvidia.com
 (10.129.68.10) with Microsoft SMTP Server id 15.2.986.36 via Frontend
 Transport; Thu, 24 Nov 2022 00:35:18 -0800
From: Manikanta Maddireddy <mmaddireddy@nvidia.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <thierry.reding@gmail.com>,
	<jonathanh@nvidia.com>, <vidyas@nvidia.com>
CC: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-tegra@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-pci@vger.kernel.org>, <bhelgaas@google.com>, <lpieralisi@kernel.org>,
	<nkristam@nvidia.com>, Manikanta Maddireddy <mmaddireddy@nvidia.com>
Subject: [IP REVIEW PATCH 0/3] Add support for Lane Margining at Receiver
Date: Thu, 24 Nov 2022 14:05:07 +0530
Message-ID: <20221124083510.3008139-1-mmaddireddy@nvidia.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-NVConfidentiality: public
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6NAM11FT061:EE_|CH2PR12MB4230:EE_
X-MS-Office365-Filtering-Correlation-Id: 14bdc38a-e70c-49d0-0139-08dacdf6dbda
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	+J+oaT5e6No6OnCSNcfO6GP0u3QDh705N5eoUzXEZOkYlS9Ih2llusGfed5gxakx5Ut6cgNu9tCEav3aPtAQKlqg6ISPbYA4c4UQcpA6wQZG97WbOSj7YkkI9GdX1ixooKlELEftjL6SD91S7iTmETCkcUt39IVoO9r5SaB0w//UZCBWLzV4J07XEgpqOJMzxb9yGKOdu8kPWYjErbQBeLKdod7HHDhAZnMkeQPoRORYq/bkIkTL3uv0vJwf5zcLVo3kuyYuMlPyz7D2p0RVpHS5Brt8dAIc2B8nxeE4eR9ZPvW4S3MqFB9+9w6hH9gMeig4Iqjmos3Ck96FDnLks8A7xnlqxEcWFYEtETsrWvu4Wit7NcN1Lsl3R2vokbcMNwSyMchSp9bO/LAPnjSG/d+pptGHzzd3Pmg9Zy0wVQW1LeE3AlCK9OkEGiwQNTO3gYObcevkeSz+qcxJHgSKU2Y74ECQYeol5IeshrxwVtBzfLXa3Oh12lkNqSNjrBS3QFDzSAgEjZz03UuLUMxlS8pCU2337LzwUilZccgHkC3cqqxk6785DFZae9nI6wQT+zTT2muaEaK2R9vImBd9KFLM0nqlgkXwTfuEzvTRFnDzJbg+TMS8+TsaF8tqahyhnS1UE5CfaN7YqBeMFIRs2A/WPvg3qNcCgbdgzk0O4sevxfpaDVJxTYw2mQpXgFC0zW/YttlbFQbVlHr1h3ncttixDBgAyW1iScb9Xp0uJP8=
X-Forefront-Antispam-Report: 	CIP:216.228.117.160;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge1.nvidia.com;CAT:NONE;SFS:(13230022)(4636009)(396003)(39860400002)(346002)(136003)(376002)(451199015)(36840700001)(40470700004)(46966006)(1076003)(47076005)(426003)(2616005)(186003)(336012)(110136005)(54906003)(107886003)(82310400005)(6666004)(478600001)(36756003)(7696005)(26005)(40480700001)(356005)(7636003)(40460700003)(36860700001)(82740400003)(316002)(6636002)(4744005)(5660300002)(7416002)(8936002)(2906002)(70586007)(70206006)(8676002)(41300700001)(86362001)(4326008)(2101003);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Nov 2022 08:35:35.9086
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 14bdc38a-e70c-49d0-0139-08dacdf6dbda
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.160];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 	DM6NAM11FT061.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB4230
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221124_003540_690329_38FFDF20 
X-CRM114-Status: UNSURE (   4.95  )
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

Tegra234 supports Lane Margining at Receiver feature. However, this
requires programming of per lane PIPE2UPHY hardware instance to relay
the lane margin control and margin status information between PCIe
controller and UPHY modules. This series adds this support in PIPE2UPHY
driver.

Manikanta Maddireddy (3):
  phy: tegra: p2u: Add lane margin support
  dts: soc: t234: Add uphy lane number and intr in p2u nodes
  dt-bindings: PHY: P2U: Add PCIe lane margining support

 .../bindings/phy/phy-tegra194-p2u.yaml        |  50 ++++
 arch/arm64/boot/dts/nvidia/tegra234.dtsi      | 120 ++++++++
 drivers/phy/tegra/phy-tegra194-p2u.c          | 274 ++++++++++++++++++
 3 files changed, 444 insertions(+)

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
