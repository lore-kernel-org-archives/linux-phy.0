Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FCAAC61DFD
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 18:59:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9MIqsS9eosEQ9ZF94W84OTcIPDHMBTAfjCNmHRYZxLk=; b=Vo68j/TJhE+U9A
	WjeEym7CxpBzscGrVNfz6ssoyAmQjSDcdgnmfCfokK523ldo+xFIvpkJ6Aa3O7ix1gJSsprxSqLIU
	A3KyNW5cUQWGVwYWHKZy+CIRa3YbNTorajgtBLMkz9/1CYu6sQqQsHKlXZJcynC5i61nULI/enVTq
	Yl5PHvKmzUAUoSVAjqE9p1gHKZo3sju09ztVQdZGzrOFq3sCis2UN1HQAwiatXTSCTCyLg8HBpno7
	foazSBw3yJS1EzF9L+1fK6bfYudmbZgka/4JNFVqRi0Rfg9L93KDTvY13Cyyyig0tLJc06Q5MK5Yc
	fQuDv7XCyOpv0Xok7P7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x17EO-0000000AKhg-0HoA;
	Mon, 31 Aug 2026 18:59:44 +0000
Received: from mail-southcentralusazlp170120001.outbound.protection.outlook.com ([2a01:111:f403:c10d::1] helo=SN4PR2101CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x17EL-0000000AKgK-1ySi
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 18:59:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s46iS81SqnyELNDoobbNms6cLigkX77enzVZjy5fU485yXWhfm6M2znQ7ERm7OYVxp45TOnepwonYXhtGUqTHopP+UgXDmLZbSYeSOUENwc+5/t6ppf7ToiQ0XsybCO6h92LL1VPzqc74Oi9RxuLlTLSW7eQFUumcHb0UBaJomWQWRE//jYrH6M+WRUtnt5EUQuv4kfad9UxHrB30DCvuEJDSdEMKS7NLPQuCWzmq+VDcayacKiR81Z9Kfmcg2a01aFCbGKX5n30j1HWf4oKQVbDaxwSJk5eIOA6cesdn/rBaOmfqvzD55A178y2TxN9Pofq+J0fkYY8XbQ9HS/YsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Drcxe4pg9XGvU3goWV6nXHYjiN2lWPSdudW96UqUKl0=;
 b=a/0IOlEqkxjo+GmUqW6f2FJnDKOrYZ+BPwbwAmsLjxoRitu+a3+izIAaQAQpXYQeR88w2qIjG/SZ/H8KXWIy1wGfEa5xK4RqYH4IhhkaafKmx9Wl6yFyKglRwuIz6gMxX/Z7Ai7gWYmj+06g0SvAN/JMJ+Dg5tNkwu/tzhpSVv/tlb9CRRu5CQ6lfMkw69tc1BOPLsL2H9m6bRJdg5uuzEUXvlg9rGhsDOqvH2fcvGhRnWosIu/0YoyIVBdVWUBaVtQV/mFVJdmZyJCYdwEyCN/9eIcYhKlQ4Q0A6+k7j6FNAgG6NNSRZ+FtcNjtHpCR5d3jY69lRV8zVQv84RlYIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=intel.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Drcxe4pg9XGvU3goWV6nXHYjiN2lWPSdudW96UqUKl0=;
 b=PC/f/1eTLaj/WDEIO8wBu5rMik/OCFyupFWdo89GKTNJKvqKp21Ywr9o682XiRRO5+8wWxB9WhYNCy5KIn8EBIJXCyzX0cSeQol2zA+gDfgqNaKDkg5viqfabNSpiY0JY03CN8POxUnpXcCRPGizsNMjb3MREwwpuLsmPuJ9lQGff1z6bbWPtbewrU0gpJ4AkxNtMHtoGQoGH4f+LXarx7uyi+BHDditUJ6qaNJM8Uh7EUKvqQlOHgG7LQQFNRYZM5EzwWpqAaxUts5BvVZArsHlTMp5UCpurpZD4uFZquvKENcRBGckudFQcRVQryjCTmT2DBmzjtX6BxGhXdI95g==
Received: from PH7P220CA0027.NAMP220.PROD.OUTLOOK.COM (2603:10b6:510:326::33)
 by SA3PR12MB9179.namprd12.prod.outlook.com (2603:10b6:806:3a1::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.360.13; Mon, 31 Aug
 2026 18:59:34 +0000
Received: from SA2PEPF00003AE9.namprd02.prod.outlook.com
 (2603:10b6:510:326:cafe::4) by PH7P220CA0027.outlook.office365.com
 (2603:10b6:510:326::33) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.360.13 via Frontend Transport; Mon,
 31 Aug 2026 18:59:34 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 SA2PEPF00003AE9.mail.protection.outlook.com (10.167.248.9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.382.8 via Frontend Transport; Mon, 31 Aug 2026 18:59:34 +0000
Received: from rnnvmail204.nvidia.com (10.129.68.6) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.46; Mon, 31 Aug
 2026 11:59:03 -0700
Received: from rnnvmail201.nvidia.com (10.129.68.8) by rnnvmail204.nvidia.com
 (10.129.68.6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.46; Mon, 31 Aug
 2026 11:59:02 -0700
Received: from waynec-Precision-5760.nvidia.com (10.127.8.13) by
 mail.nvidia.com (10.129.68.8) with Microsoft SMTP Server id 15.2.2562.46 via
 Frontend Transport; Mon, 31 Aug 2026 11:58:59 -0700
From: Wayne Chang <waynec@nvidia.com>
To: <mathias.nyman@intel.com>, <vkoul@kernel.org>,
	<neil.armstrong@linaro.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <gregkh@linuxfoundation.org>,
	<thierry.reding@gmail.com>, <jonathanh@nvidia.com>
CC: <waynec@nvidia.com>, <linux-usb@vger.kernel.org>,
	<linux-tegra@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>
Subject: [PATCH V2 5/8] phy: tegra: xusb: Increase timeout for USB2_TRK_COMPLETED polling
Date: Tue, 1 Sep 2026 02:58:32 +0800
Message-ID: <20260831185835.3732707-6-waynec@nvidia.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260831185835.3732707-1-waynec@nvidia.com>
References: <20260831185835.3732707-1-waynec@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-NV-OnPremToCloud: ExternallySecured
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA2PEPF00003AE9:EE_|SA3PR12MB9179:EE_
X-MS-Office365-Filtering-Correlation-Id: f1c4ba78-671e-4ff1-f518-08df0791ff45
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|23010399003|36860700016|82310400026|7416014|376014|1800799024|56012099006|10067099003|11063799006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: 1fk2D91nIwMIDjlFvd/LfrywMvUO7so7EvkcjWjyjlxruhbfObIzCdbOT7/8Oxm20PyjvkyQHW5D1J0v/gdYM91juu6bKlFIxMwHkrwjfkwEo4+Z45p7mqnC8SZNdsXH0DP5A7M4Dmb8uUicqqp17VyTsl6Xdef1LrwADehwwvuuQW1WUdque3ow+mSs80Rxk5SrKY79VE5+stodFn9XItjc2lvrbT9J/4cUzmco0gxUzG1LYHigHfjhqJxMv3CXl82TdstM9WTUBYGY5oQxjiUxly0eIDKLAydOcJSL7TRfn9Re/Cnrpl+pIs2N3ZDeIFBl9EDio8C1WaUDvYmWt/GLuP6QENq9sYFIs0wmh+jbMOqTT3AtDI9Fk5MZC/9xtmS0yFyRqCoZOv+AWG8WrvTq3C0L4neqHMrIWpGKJPY/IIoILK+vnws/bRyUN0KAERa3lGgnm2ubsXv3aMQA8Yrn47DSllPAJf7b15jQ4VicMnP9UMWKc+nTyqc7eXnSRQxZtHpBnQssi6ZdQC2EyvwOtvURQGXrIrGW3V0yCXv6d8QMSm0w14SVezO2TUeU1ThemEPYcNH/9MWxo1ubxNLtb2jVN+GO121sqKT3g4g8dZNaL1H8VYDMJG+0AxbeaPJ2qi2HrJueGO1x6lLJNzhwcPXbn+Mlff2/6FUs9/eyX0BC06iyvdWTofTFgATaeKcVGNiif6ErTm2JqEPg/A==
X-Forefront-Antispam-Report: CIP:216.228.117.161;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge2.nvidia.com;CAT:NONE;SFS:(13230040)(23010399003)(36860700016)(82310400026)(7416014)(376014)(1800799024)(56012099006)(10067099003)(11063799006)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: d08jL+A+3e7OqIA1lsICzAHFjChLEFXQeWAYPIbpQPH9+7RXG8YGUOP/nsHvwdHRyg8Z/T1F5TPxeaDw/6+t9aJ4SQnRZ6Z1U0qHsaMA8+TWlIUPiccYOul5JqGavGFKSnz4S8/IsKWamJ7YRQqri0D7WWN3y+jISxbw0rGjQ+dGxxBFfFEqeJ4AvC9VtBq4KpWmpibmnQ67YXdVzkQuk9+wjscdpeG443ZMDNP767/DhzzGiXUYxC6WR9B1bwqr1l9Hb+nBYyae6wU8zfyiLHuT6D4FNJedkkLTssC6EMlfacs7mRahDlecfEBmAr/qFeQBzEx4tYG207zMJSmkNX5e7aiTLan7LFp+UE1Kkm71nhPdHWXMRB0bbSPZV8dchBZV6kxhIL/7ShHZAflBMthQudywP/x/gwBOKTF0AglJOGyZPJgMOYB7Mtsaqemx
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Aug 2026 18:59:34.2864
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f1c4ba78-671e-4ff1-f518-08df0791ff45
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.161];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: SA2PEPF00003AE9.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR12MB9179
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_115941_539873_BF595307 
X-CRM114-Status: GOOD (  10.83  )
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

On Tegra264, the UTMI bias tracking circuit runs at 1 MHz and needs
more cycles for the biases to settle than on earlier SoCs such as
Tegra234. The existing timeout is therefore not long enough and can
cause spurious polling failures during bias pad power-on. Therefore,
increase the timeout to 200 cycles to support Tegra264 devices

Signed-off-by: Wayne Chang <waynec@nvidia.com>
---
V1 -> V2: No change
 drivers/phy/tegra/xusb-tegra186.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/tegra/xusb-tegra186.c b/drivers/phy/tegra/xusb-tegra186.c
index 800be0cbb3f9..9c1bcd4a72ac 100644
--- a/drivers/phy/tegra/xusb-tegra186.c
+++ b/drivers/phy/tegra/xusb-tegra186.c
@@ -636,7 +636,7 @@ static void tegra186_utmi_bias_pad_power_on(struct tegra_xusb_padctl *padctl)
 
 	if (padctl->soc->poll_trk_completed) {
 		err = padctl_readl_poll(padctl, XUSB_PADCTL_USB2_BIAS_PAD_CTL1,
-					USB2_TRK_COMPLETED, USB2_TRK_COMPLETED, 100);
+					USB2_TRK_COMPLETED, USB2_TRK_COMPLETED, 200);
 		if (err) {
 			/* The failure with polling on trk complete will not
 			 * cause the failure of powering on the bias pad.
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
