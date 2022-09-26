Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A7CEC07E9D
	for <linux-phy@archiver.kernel.org>; Mon, 26 Sep 2022 11:51:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KKgnp781sAxPOD0iYASkXSiUm5s0hX8odgLkaphL6+o=; b=ZAtaydBFCcLOyh
	pCygVjf75WRKM/0wG36kPGZeFkEzATdWpt18/zkZr6cz63fQ9t1s5Loj/b+gGNLu3i/Y6mIvYfqil
	zF8mHc1zim9AmaE67yXUXqrBuiGT1fisrJxLGkL4aWrowdxDZ274PfOSS09Y0AHE40LY4R34FLUf/
	lap1Fj6wOLFx/Iw7qNXBsMmalnRlED9S4bUX2Hi/DWTU1ceBqdHc5d3InzeFCpLFaXjdP7KTmdy9X
	WuzY+J67SQnJ7EiBVg1MnDaXLA/yV14ztQJJw6e/cIf0N6cfWsvd6IeluwOICnjafS/TbFQg6CasB
	XQMfIA1UtGQsvu/x5bGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocme2-004bxY-S9; Mon, 26 Sep 2022 11:51:30 +0000
Received: from mail-bn7nam10on2066.outbound.protection.outlook.com ([40.107.92.66] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocme0-004bw0-9m
	for linux-phy@lists.infradead.org; Mon, 26 Sep 2022 11:51:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EWVyDxBrAfJ0H7Nr9oxrr896BzfjYRWyI5sRIeqxrkWpy6u0nw0ibwmcJQwpr5VaabR+wsMUq5qyRYsiGY6ojsYpDJhJWScn1b+OfXd8Ce+8TYcRiZE7kLfuvPHHd8pN2HA7G7f8JjsB0ICLPrjCAHkZBCyDGrfycXG+8uc2ZYOAtZBQFExwfn6eB3OBv2TbJK7ughQKRcSqN4Vgaxo7nlbncRsh9/ny/8QqRZm4AgiAR76kTEQYbEJ1qOO9O/0C2R0vfQZmKti4woj90igpJlgVYPxvOXOHdlYoQirCSQb6FyjfKCxVocqQN3DAfCUYYXy5Ky1XaYbh8P7b4dOIxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OS4tAl4e4GdO0ByBukVOwers8V1PitXMTTFaTisp6rg=;
 b=HLss4Nl+9lE/+fnk4nE7S1rFzLmH8GjwF2h/JB9CjNhL11RCYc6bWjVnkni7xXibz9gfAJoDXmrRcSdF3CVauXY+AUP6LxqvoAFVVXuIaJ+Ub0eMEAMuvc0zCcLwIr9IpHvEF1je14ZQqQcMmP+YKF0c8ACK+gXxp9ECju/8ZXsYt0h+D8sxvPBCDQymtdIaKHI77/ONXG6UE22VHE2nIEt62jTnoJ++wwbiEK+jaS4qW7yT83V9e3v9Zy/LbA8tmXU7yQRG+MXDg2kldKFN9FG4ainR2HmnU8RfjRDn8KN3w3JsmYCDXniyIb/Pg1psmFyrh3nNiWWHR9Sz0/h/mQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OS4tAl4e4GdO0ByBukVOwers8V1PitXMTTFaTisp6rg=;
 b=gcs0gYhnLoOHf/H41PUuHaoD2cG/iDhp9M297Xrla0oJTcvuGyue1ODcYtOZ8L8k+GsSDjOUhl99i1AwpF+Jb22cbExRRJ11oNVnQ54lYOesiz52D7i2ptTXmW/Vg3sAyqWzItYMR+NyjqBni4W+AJVrpEGT15q5AXg3Y3Qy5idFqIs3OBrhjznp+081/Meh4geYM00OA3ryOGA/Jev5pY9wbRK0UT6f2eIi0HFg5MHxO5X/Lob0dA//oTGEmFaqxcFjiWqbgTLZpWeY+bFa+aMj/dcmA9wJsKrukEyy4TE6hdUZjTKmsYpSuIacH6nEA6Cyl6xUv1/oyRwiUor1dw==
Received: from DS7PR03CA0334.namprd03.prod.outlook.com (2603:10b6:8:55::11) by
 CH2PR12MB4167.namprd12.prod.outlook.com (2603:10b6:610:7a::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5654.26; Mon, 26 Sep 2022 11:51:22 +0000
Received: from DM6NAM11FT070.eop-nam11.prod.protection.outlook.com
 (2603:10b6:8:55:cafe::b1) by DS7PR03CA0334.outlook.office365.com
 (2603:10b6:8:55::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.26 via Frontend
 Transport; Mon, 26 Sep 2022 11:51:22 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 DM6NAM11FT070.mail.protection.outlook.com (10.13.173.51) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5654.14 via Frontend Transport; Mon, 26 Sep 2022 11:51:22 +0000
Received: from rnnvmail203.nvidia.com (10.129.68.9) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.26; Mon, 26 Sep
 2022 04:51:13 -0700
Received: from rnnvmail202.nvidia.com (10.129.68.7) by rnnvmail203.nvidia.com
 (10.129.68.9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.29; Mon, 26 Sep
 2022 04:51:12 -0700
Received: from vidyas-desktop.nvidia.com (10.127.8.9) by mail.nvidia.com
 (10.129.68.7) with Microsoft SMTP Server id 15.2.986.29 via Frontend
 Transport; Mon, 26 Sep 2022 04:51:07 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lpieralisi@kernel.org>, <robh@kernel.org>, <kw@linux.com>,
	<bhelgaas@google.com>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
	<kishon@ti.com>, <vkoul@kernel.org>, <mani@kernel.org>,
	<Sergey.Semin@baikalelectronics.ru>, <ffclaire1224@gmail.com>
CC: <linux-pci@vger.kernel.org>, <linux-tegra@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<kthota@nvidia.com>, <mmaddireddy@nvidia.com>, <vidyas@nvidia.com>,
	<sagar.tv@gmail.com>
Subject: [PATCH V2 4/9] PCI: tegra194: Handle errors in BPMP response
Date: Mon, 26 Sep 2022 17:20:33 +0530
Message-ID: <20220926115038.24727-5-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220926115038.24727-1-vidyas@nvidia.com>
References: <20220926115038.24727-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6NAM11FT070:EE_|CH2PR12MB4167:EE_
X-MS-Office365-Filtering-Correlation-Id: 2f869d32-93bf-4c61-32e6-08da9fb56f18
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	Wx+UI7xsDOsCC5XPmjfaZJ+36U+afKuSDHIS4hUaFf9UxPMjUcUTPDT/QaZrSKU7xm7WD5pqDsnvdzqMBQ+URoKip/RCf5R+TRyHvjW2vIy3wyU9oeWFcOmT/l2k+Q9feIAypezyyb960KsF8tozPMe3xb2ax8PHQsDNLX0PTbzu90vbUoShja87rF/wNka3Ne6NLt7XiUHH8XzRrM2O2fZ3+OR5mEg3aL3++TaeJYOdZClrgT8XmSRdu+t2BSMh18hMXIBNQdR0VCAXPXMvvtFKGqiTfvw4oRLP9Rk5lA5FK91x0sBszdZNK5nKxVBvCLkrVgVZ2f3gqMfEa9462lhyUqmdI+hMZfihdUExys+0pmxyTXU8OjQ6mjC2dr4hsTuUXVYr9Gl1S20AOkFOSjpnaJ48OpGvZeqxmSujPkIfDkCN3X6f/7GL7NcOWPxTaksIO8moCwwnw2ntMnxG779d0z3b8uIIkyhreATW62VPTW2dpeo6VeayTDkl6hL3LVhzo3fIkafclgebe89VdanG74bsaruRCNkD+a2JCNoKpVgvOPXGOUrBeYhBOEvkaN4NbetsPqaHKvJ9ibRqioFQBjGqTnMM2YkvDeBRBdhF1r120tli7qdb+l9pfWpegccL0zxK0AN9rV0yIC278rKFD9LUsYLGG0ymNG9GAX8mXlgRcQiOFucddhbNTMb6WJurvvPHIJhomkfJEcyU9ffy2pFCvnC8PtMcK/U7BMgPWINdtGnFQiYGctzsuwcE1K7P/COc32KIl4ahiY73XIu3N/30hQe85M5b1Ii2xoY=
X-Forefront-Antispam-Report: 	CIP:216.228.117.161;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge2.nvidia.com;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(396003)(376002)(346002)(136003)(451199015)(46966006)(40470700004)(36840700001)(316002)(5660300002)(26005)(70206006)(70586007)(478600001)(8676002)(7696005)(8936002)(6666004)(41300700001)(7416002)(7636003)(921005)(2616005)(47076005)(83380400001)(356005)(82310400005)(2906002)(186003)(1076003)(336012)(54906003)(110136005)(36860700001)(426003)(4326008)(40460700003)(86362001)(36756003)(40480700001)(82740400003);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2022 11:51:22.6381
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f869d32-93bf-4c61-32e6-08da9fb56f18
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.161];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 	DM6NAM11FT070.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB4167
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_045128_361525_414B1CCE 
X-CRM114-Status: UNSURE (   9.48  )
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
V2:
* None

 drivers/pci/controller/dwc/pcie-tegra194.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
index 7d6e54a12eff..0268eacdae48 100644
--- a/drivers/pci/controller/dwc/pcie-tegra194.c
+++ b/drivers/pci/controller/dwc/pcie-tegra194.c
@@ -1203,6 +1203,7 @@ static int tegra_pcie_bpmp_set_ctrl_state(struct tegra_pcie_dw *pcie,
 	struct mrq_uphy_response resp;
 	struct tegra_bpmp_message msg;
 	struct mrq_uphy_request req;
+	int err;
 
 	/*
 	 * Controller-5 doesn't need to have its state set by BPMP-FW in
@@ -1225,7 +1226,13 @@ static int tegra_pcie_bpmp_set_ctrl_state(struct tegra_pcie_dw *pcie,
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
@@ -1234,6 +1241,7 @@ static int tegra_pcie_bpmp_set_pll_state(struct tegra_pcie_dw *pcie,
 	struct mrq_uphy_response resp;
 	struct tegra_bpmp_message msg;
 	struct mrq_uphy_request req;
+	int err;
 
 	memset(&req, 0, sizeof(req));
 	memset(&resp, 0, sizeof(resp));
@@ -1253,7 +1261,13 @@ static int tegra_pcie_bpmp_set_pll_state(struct tegra_pcie_dw *pcie,
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
