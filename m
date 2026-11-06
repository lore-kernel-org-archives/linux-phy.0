Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB75C606A326
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 17:08:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=MqGmZyFY;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=s8Xj4tPe
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:Message-ID:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=UEET9jdbHT5Gr0AGRvloCCQ+9XqPgdSKKgreZUmjbeg=; b=MqGmZyFYZ8CvZ4UFpHAcLY76GI
	galIc2dPH6OjzhCIcnw9VVCW0aw5/WHlDXU0JhtqH8uub3dHzPQfTMobHleBkzoXu+yJ1xkO9iQO8
	M50I11qBi0as44xhfW2JuLLhBRx7D0yUE6FYlF2ggnOz81lLDXd4n+edcj0ijbiuVC8McvNSBJL/L
	zr3px5XmcKfzuzGqpzuU6UeWUFe37WZHL2wi37VGxjZLEPZWu0wCiLqvEG+01RdZeKwYVXfbzBF7I
	etzQdX/Ca8ZINOZb4xxZAHP+gfVfOVgIF/ZwOTJ4dxCFRPahi75+cLmIisWfsGKlAXdx18eAQQ1m3
	oI5rH+8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPNQK-0000000DAgF-0Y2a;
	Fri, 06 Nov 2026 17:08:20 +0000
Received: from mail-eastus2azlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c110::3] helo=BN8PR05CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPNQH-0000000DAfA-2XEB
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 17:08:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TK3cQdf7t8pD9uAQJFkIr7LgW+C8MlrT0V2gRMMknD+OHTH9ciP32KczoizvwTXd3VLlH41UOm/SMSccIgJznsIf1OOivPd/j9OXN7PbJ0XnuhMxg2wzHX+snT0iQLAOS/QGof4dHEDYiYsWoXwnb6lbpHWVT0Uj9hBWKAH9SygO1e8XDdm/WCUeX1vcm4qulCEUbCP7xRFBu0c/LiDUnLkyrzMtHUPP0x7NjjXWlYRiRYtPIHpb0fpoKnGpZKuV9h/Y0dMfsp0MT6/dSXso6ktVNyG9ZXJz2WwXomDzNNdEvCYJ2mZ3IohGLjGxGOgKLgInDTy/yvKjTBv8HtEYrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ejLgYZSR0yfY2bJ6OliuaybzgHG7znmXv/KanPOgxEc=;
 b=DW+CszaPqNxodeMYzIlniXJTndJafB9ZUG+r5fouBD+AHo4PC4tQNRThwEPfXs/w5J8jzKnmFTtthV/S5P71AiRthedW+VJ+8nCEKHoessiXzMdo51BhRxfgZAriQ36bubdAV7u4hAAn3XcP6/Z4vap4ZSoxVn5rfXbSdDMfbXCrFAC+oX+E1OL7NTRBQ4gfdFHq2M3hGneyo15CuSNw+ai4XJJgIgNWegq6iYYWlUkf+A+iZa4x1JpEhpYVbGJfGE0zBkSim4VWZgOWUkN59GrARbzfp8wxPsJxiczbpyxLgUeODiOceZ8Lz1qnD8o2dY4ZDH4n49UJqF1ChQJp+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ejLgYZSR0yfY2bJ6OliuaybzgHG7znmXv/KanPOgxEc=;
 b=s8Xj4tPeF1vuphJQiBrmmViNVhMxfy/G0rv/9znJpjt83mALwTzGNejm5arz9blVMzAtUgxf9cjxyEMPV8NExv7qE6hb+uJTXMy4Ha2vznH6d8RY81tmz4DrQbRomsD5xqJXQQQCXoOcjxbTiF7Tgt+sPYFRzSHx3/4ZsipNXcJG+qVuvCgmOpIDaMGcyC+2tkZARrLcQoE6uO4PSnOvVpdRIGPMjqNftfTDB3rMPonCLmTsQ3PAxknBWkEEo+InishpdKLa7u5dZlCTbqPmaHEjWBoZ+AVqb3ezMeGNqu30+E2Vl30R3JJ8EErTqgyYz/55ak9M+E4a0P+Lxn3Z9Q==
Received: from BY3PR05CA0038.namprd05.prod.outlook.com (2603:10b6:a03:39b::13)
 by DM4PR12MB7694.namprd12.prod.outlook.com (2603:10b6:8:102::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.592.10; Fri, 6 Nov
 2026 17:06:03 +0000
Received: from SJ1PEPF00002325.namprd03.prod.outlook.com
 (2603:10b6:a03:39b:cafe::a5) by BY3PR05CA0038.outlook.office365.com
 (2603:10b6:a03:39b::13) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.615.5 via Frontend Transport; Fri, 6
 Nov 2026 17:06:03 +0000
X-MS-Exchange-Authentication-Results: mx.microsoft.com 1; spf=pass (sender IP
 is 216.228.117.161) smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 SJ1PEPF00002325.mail.protection.outlook.com (10.167.242.88) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.615.4 via Frontend Transport; Fri, 6 Nov 2026 17:06:03 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.56; Fri, 6 Nov
 2026 09:05:43 -0800
Received: from [127.0.1.1] (10.126.231.37) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.56; Fri, 6 Nov
 2026 09:05:41 -0800
From: Jon Hunter <jonathanh@nvidia.com>
Date: Fri, 6 Nov 2026 17:05:40 +0000
Subject: [PATCH] phy: tegra: Set has_per_pad_term for Tegra238
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-ID: <20261106-tegra-phy-fixes-v1-1-b53911c20b77@nvidia.com>
X-B4-Tracking: v=1; b=H4sIAOMI7moC/yXMywqDMBCF4VeRWXcgCV6gryIuNJ7E6cJKxpaK+
 O5Gu/w4/GcnRRIoPYudEr6i8p4z7KMgP/VzBMuYTc642lpT84qYel6mjYP8oBw8bIOmcmUIlKs
 l4R5y1HZ/62d4wa/XDR3HCW7EWbtzAAAA
X-Change-ID: 20261106-tegra-phy-fixes-fce17e7524ff
To: JC Kuo <jckuo@nvidia.com>, Vinod Koul <vkoul@kernel.org>, Neil Armstrong
	<neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>,
	"Thierry Reding" <thierry.reding@kernel.org>, Jonathan Hunter
	<jonathanh@nvidia.com>
CC: <linux-phy@lists.infradead.org>, <linux-tegra@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
X-Mailer: b4 0.16.1-dev
X-ClientProxiedBy: rnnvmail203.nvidia.com (10.129.68.9) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PEPF00002325:EE_|DM4PR12MB7694:EE_
X-MS-Office365-Filtering-Correlation-Id: bfa7170b-fc4b-4fb9-68d4-08df3c283d14
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|82310400026|36860700016|23010399003|376014|1800799024|10067099003|18002099003|56012099006|11063799006|261026121527099003|261102130727099003|261102123227099003|261021121427099003|261009223027099003;
X-Microsoft-Antispam-Message-Info: eK/Gu3hVCnp3wK6tP/nXS7XWqToDoOB9Zk0EYYNY7cotNzYTe3f9zwAPAmMbb33eUCtSl5YgOeVSD1/7RyRtJ05Fm0OKNqj/25Mw1wHb8BzUp3uhjYnZ2MTibbX5pa0ItoWlk48xBX2j+Hh358Zj+mkqwnjF+xBOemr1Hk4Y5oPNcom0uT8ayhSOfRahcwce3Zl5NMzGu+1clTL5vN4uhsgItGOGpw25ndiVyAkxn9n6Fe2VPD+CfAiJpOGgDVCm34Ac9Y7CAIKlIk7USNGTsPuKSgKUD21bpowG6ahvqgK1PAKeR/jkhrWyYhsewtG0zEdKtmMsuCyj4Kk2KvHcFn+mBdYPRoEiI5LmcMicXnztcKBKx11x/HsqdARM2mA6ixbyyl0Ty90Hv4DBeNDCKK+plZk6na91+52Kr2IAaSd7MtpzZckAGlX07BXnK+48vpD0Hn3/x1PoUTLI8BFeqUPURSIo99apZd33fk7CGjwCmFk012xYg5Lsypd6SCkyqGuxdF40soqXPNx6YXqqhf4zpxs4MXFvAZ6Rl+cOqEzz3TE3jeAzthb7mPGVVedCHH5Qnm7PwECUJfs/KusmNd603iA3JARH1calEVnObViELoxNePWZe6L6UKFMQeSJtSA0sQB5GgAUH856+vv5LRcDO6Lk/cKNENM85vsFYEIi2KMQ4YbEYQz+N2mFrpzd
X-Forefront-Antispam-Report: CIP:216.228.117.161;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge2.nvidia.com;CAT:NONE;SFS:(13230040)(82310400026)(36860700016)(23010399003)(376014)(1800799024)(10067099003)(18002099003)(56012099006)(11063799006)(261026121527099003)(261102130727099003)(261102123227099003)(261021121427099003)(261009223027099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: OjKuS1IDpVs4P9IbHp6zmK/Vt2Opf0dzi1zAWRlGC9wqCz3ppJ1y4kzFPn/FaBXo+8OtmpazcT9f1Ouut9NyTr+qDP/92D+cvQCGldKj3MW+J0XzEtaO+IjT73UB13759/aol6hF1G1r3EXRQLqY3VkygGX1Pu0jhzdjKVTMhQL3ZLlHP7W0h1gZlmHRWn+9g6W+Uj7mpjZdVR1xPJJQcRX9qvOWmX/fh1lsw8GTm8Msq9dpU6D8NiJ6IMWQkXJ/v8rqWHAUPoRQ8cWexonA0HDYy6XBhrrX11lw1ujDxThXt8WADSNRhkttM4BmTpt1UFTke5Xw9W8PnaCGSVmXRjoCi7qv49kFM1nLtAKceOlYKhpYXwpuZgwYtmTDJE2f8tVzIMxBwiCPz7HK71d2HT1d8Jzotl9i3L47xLCpd5/tGSNTlUs1z3CdoIlBVhEc
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2026 17:06:03.0747
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: bfa7170b-fc4b-4fb9-68d4-08df3c283d14
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.161];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: SJ1PEPF00002325.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB7694
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_090817_649254_E0875DC3 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The Tegra238 device supports per-pad termination, but this is not
currently set in the SoC data for the device. Fix this by adding this
for Tegra238.

Fixes: 8f56fdf3d8cb ("phy: tegra: Add support for Tegra238 XUSB pad controller")
Signed-off-by: Jon Hunter <jonathanh@nvidia.com>
---
 drivers/phy/tegra/xusb-tegra186.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/tegra/xusb-tegra186.c b/drivers/phy/tegra/xusb-tegra186.c
index aa8ab94fad4c..4191acebdbc2 100644
--- a/drivers/phy/tegra/xusb-tegra186.c
+++ b/drivers/phy/tegra/xusb-tegra186.c
@@ -1770,6 +1770,7 @@ const struct tegra_xusb_padctl_soc tegra238_xusb_padctl_soc = {
 	.poll_trk_completed = true,
 	.trk_hw_mode = false,
 	.supports_lp_cfg_en = true,
+	.has_per_pad_term = true,
 };
 EXPORT_SYMBOL_GPL(tegra238_xusb_padctl_soc);
 

---
base-commit: ddfe51b0a0f5dc9e415cc2c8ad8db17532dd426b
change-id: 20261106-tegra-phy-fixes-fce17e7524ff

Best regards,
--  
Jon Hunter <jonathanh@nvidia.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
