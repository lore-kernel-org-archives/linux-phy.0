Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B5C0C433FE
	for <linux-phy@archiver.kernel.org>; Fri, 18 Nov 2022 15:40:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=22bGqD/hANuGFuzqQXa4a6VQiDxaqZOxCZ98pgZNr9s=; b=kNApwerebbubL9
	lQWhbvPVqenOtbZjNbnV67RDynEaq9PE5UNRV+EGSE3LuIiscnGTTqD6teYbycGUkpJ2fI4MERCeh
	jQOAiS2GJBqGGHuAjyiVjoYIHRaTrN3o+yI1zHsSUv9KfTVT6qkFHb1iCt32tTabJZ1h6fgTw1X7y
	8ukqbzS8u8ewtsKUQZXZuWmSlUaOiHLX2009/flYxs3goNpAJx8e8U8xeJcrf+VjXVBQMR0GSd+5Q
	GlnzPte6qExKyfOpAle9ZX8VdLzfaeYoEdolnAna2GgWgw7Jb1kDeQzLaeOyVfvZFmBZI8f1jv6Ni
	pG/U6vUJ1EvIopXvVkfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow3U7-004zxq-M5; Fri, 18 Nov 2022 15:40:55 +0000
Received: from mail-mw2nam10on20608.outbound.protection.outlook.com ([2a01:111:f400:7e89::608] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow3U3-004zuQ-Mv
	for linux-phy@lists.infradead.org; Fri, 18 Nov 2022 15:40:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lLMvjnoqgKoHRGn+ukEAE4dAo17VzTnlnWuj+3TTScnPMktWnZjRM86VGXUO7XODtu2HFPbJ12kAT2fXPKN3br5mpF3f5+Mj/83fRGBBEJ6KpUji7lteZANrgnH34CAtxNBXwi5qLYdhWC58o3QBpMIk9pNi9p9vsZFYWHeU5NIkOlZYLgAysYpdpKJAMwQRi9qCbPUNI6W1xFxP5GaFaC1PXlUuzAhqUFihlYmisSfDYiSIE4p0qltwqcubF3jeSvIYDGJtvQp6aK2o2CpjYqwu9K33Nn+ERBgJG7J0NjrHLbbxpaNZQs0kO/EYYkcV9QVK0nddGaPlQnVQ+9RsVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EUfVEaI/3BZEmOL7keuQWErBKhFiQREKGNnv8Bqxx/0=;
 b=IVJ034FhvvjKF/abjMKEvcJ0mjgnfNP/P3neE6SO39hj+ralsCcxBZUsbzWrqio6KgCJWgCM/w6CeIU3rDazCLKTTKPmWYzkIsnb2m/nAVZXLF4BeBdg838pzcbLmTScdUQ1TeS0TJm7eAPiqbuDN7xgev5cGD14i9kRf+C31KIVEVAtksY3jmeIpMmOxjYDwwejz75fmuvMBKDZDFtqxUcGWVAY3IlxZBU+cIEB/gexgzfCnv8jvcMEurksVzPS9e68Au18j3nI3l2/D0/Bib1KHl1YXlCMXOgt/iDrcWQd+CT/y5H2s1e+8KNNIcIGU+OSNEEWXUnCeIfkEri++Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=intel.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EUfVEaI/3BZEmOL7keuQWErBKhFiQREKGNnv8Bqxx/0=;
 b=HyxaEuMxOAkWwqGl2jRGEbC3uyruoIf2OHWL9aDXPPOcutDDWwoZmx3nbowHVqaFbk7lzQI1ut5+zs4Ed7VsokQfN3+ZJ2Ubhn2gHqQkhgH0tOSvLHE1WvsKtqhzts0Pkg6WX+f4jSIl2zlXnWTbF2eo1umPcmnLbc0laoyM5UsVmFolhUKAVMIlONE4g5+uOTcgQlBG0Y4hb9JQ0XBz/iCnG0aWLDWF6y+q6ACF7khjAtC//mpyMNwmTBt3rb2wSBlbXTjkGPDBAqIxp9j4Udnqotg9Go0Yrc0VipuoHAUFuiE52OD+kcJBC+N0slRXsXfMffAyqs7NYba8foHAIQ==
Received: from MW4PR04CA0348.namprd04.prod.outlook.com (2603:10b6:303:8a::23)
 by CY5PR12MB6177.namprd12.prod.outlook.com (2603:10b6:930:26::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.20; Fri, 18 Nov
 2022 15:40:48 +0000
Received: from CO1NAM11FT088.eop-nam11.prod.protection.outlook.com
 (2603:10b6:303:8a:cafe::a2) by MW4PR04CA0348.outlook.office365.com
 (2603:10b6:303:8a::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.20 via Frontend
 Transport; Fri, 18 Nov 2022 15:40:48 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 CO1NAM11FT088.mail.protection.outlook.com (10.13.175.131) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5834.8 via Frontend Transport; Fri, 18 Nov 2022 15:40:47 +0000
Received: from rnnvmail202.nvidia.com (10.129.68.7) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Fri, 18 Nov
 2022 07:40:32 -0800
Received: from rnnvmail204.nvidia.com (10.129.68.6) by rnnvmail202.nvidia.com
 (10.129.68.7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Fri, 18 Nov
 2022 07:40:32 -0800
Received: from moonraker.nvidia.com (10.127.8.14) by mail.nvidia.com
 (10.129.68.6) with Microsoft SMTP Server id 15.2.986.36 via Frontend
 Transport; Fri, 18 Nov 2022 07:40:29 -0800
From: Jon Hunter <jonathanh@nvidia.com>
To: Mathias Nyman <mathias.nyman@intel.com>, <gregkh@linuxfoundation.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <robh+dt@kernel.org>,
	<vkoul@kernel.org>, <treding@nvidia.com>
CC: <linux-usb@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, <linux-tegra@vger.kernel.org>,
	<waynec@nvidia.com>, Jon Hunter <jonathanh@nvidia.com>
Subject: [PATCH V4 3/6] phy: tegra: xusb: Disable trk clk when not in use
Date: Fri, 18 Nov 2022 15:40:03 +0000
Message-ID: <20221118154006.173082-4-jonathanh@nvidia.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221118154006.173082-1-jonathanh@nvidia.com>
References: <20221118154006.173082-1-jonathanh@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1NAM11FT088:EE_|CY5PR12MB6177:EE_
X-MS-Office365-Filtering-Correlation-Id: d123ef26-018c-4180-6d1d-08dac97b43ae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	os09VifGOfVed0Zbh/M6JfcdbxkRftX/7fJ7suFj9K7C9HOTHXGuoU89Fx38DN6G4hQU0fdVxIzEWra4YW5347fKSzSjvtdVURwRtc1WNzxlPZRJF+Aw3YeGm9BXwGGVY42OHVF7KjiY83RxI+zXOLXYu616wJm+ghXcmYuxiBFLOzEdkV6MKJOT5+/f7FCdEM4oRYr8mjZfllP26A0w61qM/wfBpt5Mz3f+e3Mr6KQhsWHwL6WzN3G3RVQ18Om7kR3n30yQdo+AYjOfJCkgtiL8hNXldeuXXGerAF0wIIH9Nq4pftf6rLCfGNsPgz5aFhXBDGuc3P4pCchDSmM3lzYAv0tNE5HO9VxI0LFHAgkLHoQqLkv40vDyZpEGbplJArDGFvzn8lAqeq+Y/KjRlQfnzLhm90fM8QPTay8pX5it4mzJ1ta0QUtglA8qK7/dY+D0Mz32mCEoXHZUoSJtLgkEARbgG509094ajtKG5gTRGJ0rdw7HicdMalStqLLPt7vwLLUsEB6Rxbp0xTyig48oksj+NnH8lRHYBTVD3woctpaDaFR/O/oFXIncmm9rPhseVOo5I8zMchNp7ohjFSYWR+IEd5YX9ZHYbVdb8jid1epPZho4nyIIw3M+4zex2b/pdbimvcOaEHJwxxBImuSo/urGSvGC+LkplCjCzPwvMExxHjaJcwijTUpFZe7dG0wqtDWV8JyxU+l8DWvvhA==
X-Forefront-Antispam-Report: 	CIP:216.228.117.161;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge2.nvidia.com;CAT:NONE;SFS:(13230022)(4636009)(376002)(346002)(136003)(396003)(39860400002)(451199015)(46966006)(40470700004)(36840700001)(36756003)(82740400003)(356005)(7636003)(478600001)(40480700001)(82310400005)(86362001)(83380400001)(36860700001)(2906002)(107886003)(5660300002)(426003)(2616005)(47076005)(40460700003)(26005)(4326008)(6666004)(7696005)(8936002)(186003)(6636002)(70206006)(1076003)(70586007)(54906003)(336012)(110136005)(8676002)(316002)(41300700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2022 15:40:47.8292
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d123ef26-018c-4180-6d1d-08dac97b43ae
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.161];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 	CO1NAM11FT088.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR12MB6177
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_074051_776787_005297F8 
X-CRM114-Status: UNSURE (   8.41  )
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

From: Wayne Chang <waynec@nvidia.com>

Pad tracking is a one-time calibration for Tegra186 and Tegra194.
Clk should be disabled after calibration.

Disable clk after calibration.
While at it add 100us delay for HW recording the calibration value.

Signed-off-by: Wayne Chang <waynec@nvidia.com>
Signed-off-by: Jon Hunter <jonathanh@nvidia.com>
---
V3 -> V4: nothing has changed
V2 -> V3: nothing has changed
V1 -> V2: update the commit message.

 drivers/phy/tegra/xusb-tegra186.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/tegra/xusb-tegra186.c b/drivers/phy/tegra/xusb-tegra186.c
index 6a8bd87cfdbd..c00d14f27ab4 100644
--- a/drivers/phy/tegra/xusb-tegra186.c
+++ b/drivers/phy/tegra/xusb-tegra186.c
@@ -609,6 +609,10 @@ static void tegra186_utmi_bias_pad_power_on(struct tegra_xusb_padctl *padctl)
 	value &= ~USB2_PD_TRK;
 	padctl_writel(padctl, value, XUSB_PADCTL_USB2_BIAS_PAD_CTL1);
 
+	udelay(100);
+
+	clk_disable_unprepare(priv->usb2_trk_clk);
+
 	mutex_unlock(&padctl->lock);
 }
 
@@ -633,8 +637,6 @@ static void tegra186_utmi_bias_pad_power_off(struct tegra_xusb_padctl *padctl)
 	value |= USB2_PD_TRK;
 	padctl_writel(padctl, value, XUSB_PADCTL_USB2_BIAS_PAD_CTL1);
 
-	clk_disable_unprepare(priv->usb2_trk_clk);
-
 	mutex_unlock(&padctl->lock);
 }
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
