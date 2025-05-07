Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16196C3ABBE
	for <linux-phy@archiver.kernel.org>; Wed,  7 May 2025 02:48:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HPQALzUvXYFv7t81YvPEupCV9+KVTs2f00KyES3L7Z8=; b=3wQfyiTltCUjr0
	TXH06qEcMSR+pqJMAi+yYx73rBhbxoBnGOaLg3hWpRw6w8yDKD8q9+XPLHKsWhvcZ6bdyMR+T+jWB
	OOYk1Qx1vLAfiZ1SJ7BxKRq281YzWcYh9jNuzF/Ayq5V0oHVTovz4U++n3iQhwHOFGSb0UrqmC9A0
	Ab1nVrwXHG4DeY9fuCgKQ2DKcyY/9CDSyM1uVMJADyZIL5L6ZjzswoqfgHL75hj5m6bJXkkCdTUn5
	2QoQ5F2jEnKhR8FTGSlWviIpttgIYgbCkSmnStUn3B5saAbKPSiExMGxDSW6r9rLhkvJg/mhpggEz
	7bMeM2swvkiAECbJh3Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCUq8-0000000E1Tg-3Z4L;
	Wed, 07 May 2025 02:48:56 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCUq7-0000000E1Sr-0Ous
	for linux-phy@bombadil.infradead.org;
	Wed, 07 May 2025 02:48:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=T1cSmlw6ekFdTq7IylobwpZNhqNSRsQCTj5lhYZJpqY=; b=BEF6IllrJG9482bYHAnxtzMPWE
	qDzEFnSRiepaMK966eDsjN7x1ACFMOLQbpkbyWLk6kunIK8rZj5KpQg0+kzQYYemwcmO7RiWvibDv
	HeVHwNZQ+RACb7OLJooK0iUlJ3PZwyXIxi2vva/xQ1mcs41g8oTR5gzBt3RHhwUa/lxCAtbEsrr8Y
	RPWhEJ2agFPaU+LwYS+3gBP6wqaFYVGMcy2lgm1/bk2RmcoZBE+hWO4V25w2HWtxKjhtk51F7WKtk
	cbV0aVvr4WDLhBysYAP2k6HJishht8mZ+FwNvRZb56Yu3t34F//fEBQX3bZGTUVmEUlLj/Jhj6BPB
	kHnDwnfQ==;
Received: from mail-dm6nam12on20620.outbound.protection.outlook.com ([2a01:111:f403:2417::620] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1uCUq3-0000000FjYi-2hgr
	for linux-phy@lists.infradead.org;
	Wed, 07 May 2025 02:48:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MX0QiHCilazzKJwXtNc+mI4H7idwrQwYHVIEmg6VNc2Ls7P02bX5HBu2exvPkg+/9tBTwpz3Kbd9dd46BqRWo0U1Nisb49xi9btMXWz09eQ+zvkyVG1LCw39sF5F0BT5HCCw3qycNe5X8pycSuAWuC88NVTqFU9u+v0Twm9eXhowfNqBenBS7n24uKJVYzr0zw0AGgmpmoKcxNjt9gqmegFNYu1R4+El8YDsZZhui/hpsxthJs+uNX1OQ8HHVfbD8Mg/NkU75DiSufM3/ytvvouRvXHqMjoX+EpFXZtrYd2adKvXHXqu1KIVKWHKNTY+v2QaM/LrXLQfi89ThUjbRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T1cSmlw6ekFdTq7IylobwpZNhqNSRsQCTj5lhYZJpqY=;
 b=xGOYj2PksuLQWjnFMdI1v8FuN8nZWAzACiU2/UOP1Tcz0byyW5DkFHfBiaK80aWz1niY1ElY188R2jFR2ut4XrJwrydD0sJGUmDh7xTkQZ3bS3gDI+eqNP1v7iXpyF11WZBtJmEvk909SmFi5X+JQr8fmKirGubWaLSCoEiOkvZpFad+a50Y4itAdHR31c56w2bILj3Oh8BMOw5rwP1mw1ZRXVFafsMSAYoimBoBbU2+CoZV9Xdfk/cCISMr3IJizW97dQtJs+HUd07IEgnUQNoi98LRox/fof8wfZdqtaJrF9GDf43qSXKKVVcm0N8HuZsX0snlQ32+BwjUDhZKeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.118.232) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T1cSmlw6ekFdTq7IylobwpZNhqNSRsQCTj5lhYZJpqY=;
 b=hzxWeT6qaSzMomaUYyf/lOkf/0THnf5jvgVIJiSwP2uFoBqdl4+vn7rVFZiEsX+7ut1V9qUJnBGR4t/HUR975QtiGIjA+eYLD/ynWr3XnfXaJ7Q9oB3FIcNJRqww/hIvz/t1r/FXssjmwUdo1lhvf89rpKBuDES4sOXqhGtOne4sbOZRT3j0eKioZZc0RYh8/yhw/GlNawAL4YxGXG3u8Qp1/qSUK5YGYUcV9KawNCtbp9/oWDHXatzRlMb6mWO0Yosmvu3Cy4AYDdFCReDxQhC5s2Ho2PLTIAd6n2wIHiq4K8oEBx5NInhNt1QjdxkYcr0anCACoVnONss61WEWKw==
Received: from MN2PR12CA0032.namprd12.prod.outlook.com (2603:10b6:208:a8::45)
 by CH3PR12MB8401.namprd12.prod.outlook.com (2603:10b6:610:130::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Wed, 7 May
 2025 02:48:38 +0000
Received: from BL02EPF00021F6B.namprd02.prod.outlook.com
 (2603:10b6:208:a8:cafe::29) by MN2PR12CA0032.outlook.office365.com
 (2603:10b6:208:a8::45) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8699.31 via Frontend Transport; Wed,
 7 May 2025 02:48:38 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.118.232)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.118.232 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.118.232; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.118.232) by
 BL02EPF00021F6B.mail.protection.outlook.com (10.167.249.7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8722.18 via Frontend Transport; Wed, 7 May 2025 02:48:37 +0000
Received: from drhqmail201.nvidia.com (10.126.190.180) by mail.nvidia.com
 (10.127.129.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Tue, 6 May 2025
 19:48:22 -0700
Received: from drhqmail203.nvidia.com (10.126.190.182) by
 drhqmail201.nvidia.com (10.126.190.180) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 6 May 2025 19:48:23 -0700
Received: from waynec-Precision-5760.nvidia.com (10.127.8.13) by
 mail.nvidia.com (10.126.190.182) with Microsoft SMTP Server id 15.2.1544.14
 via Frontend Transport; Tue, 6 May 2025 19:48:22 -0700
From: Wayne Chang <waynec@nvidia.com>
To: <waynec@nvidia.com>, <jckuo@nvidia.com>, <vkoul@kernel.org>,
	<kishon@kernel.org>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>
CC: <linux-phy@lists.infradead.org>, <linux-tegra@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
Subject: [PATCH 0/2] Disable periodic tracking on Tegra234
Date: Wed, 7 May 2025 10:48:18 +0800
Message-ID: <20250507024820.1648733-1-waynec@nvidia.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-NVConfidentiality: public
X-NV-OnPremToCloud: AnonymousSubmission
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL02EPF00021F6B:EE_|CH3PR12MB8401:EE_
X-MS-Office365-Filtering-Correlation-Id: 6012551e-3b8c-4217-8548-08dd8d11ab13
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|36860700013|376014|1800799024|82310400026;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZDZBZXJ6SG11czdoUVJtWnU1Vi9wc01YQWo4ZEY2V2k4WWpjaG0zUUkzUDRP?=
 =?utf-8?B?NllVbFYrQTVhb2ZIaTBjVWgxVml4a3YzT3NkNjg5MjRiL2dqSVBIMmxwS1Ft?=
 =?utf-8?B?UXZlTitHaWxxN1dQKzhrZk94bzNSUzNmK3krYXI3eWs0T3h6UkM5Sk9RdTN4?=
 =?utf-8?B?aGpFeXFMUklJcVE0bm9MclBxOGNWMUNtWjJhV1pZK3EyMmlFM3lHaktpcmpo?=
 =?utf-8?B?dWN3RHpFTGM0N1lDRitOaHBHb3gxWEdjd1lxK0l1dmNGMEZRTGpFNFpIN2N2?=
 =?utf-8?B?cDRkM25TVGpsRS9pUEowM2t6YzJTT2JhbG9FcDVMV1FHOExTSDBHQVp6a2do?=
 =?utf-8?B?a1VNMklDTVk2NmhvUzROdHRvUzRFTUp2alNZK0I2aHdieVRCQkZlL0ptcFRI?=
 =?utf-8?B?UWZoMjl4QnYrVldNMHY3WmFDcjdoWlFHNTRJSk0vWDlUUVhGK1FPUXBWbTNo?=
 =?utf-8?B?bHdFQzhhd0dpNU0waFRBMEt5UGdEV3ZCY1hIbnQ3dGV3dm1od3ZpanR4Tmpk?=
 =?utf-8?B?UWxmL0ZFN2cvZkZkNHNzMGliVW5lZEhheUJDVC9JZ2ZERWpjT2NKWk12TFVi?=
 =?utf-8?B?aWxTRXJEMUY0TWVtZEQrbUJGTW5lQkorM2tXZnVQc2VVOGlUWUZWamdZT1BB?=
 =?utf-8?B?ZW1ybzNyY0VpMG9lM0JmYnFzK0xJOFVtSllQRDhvcmJKTEo4R2QvWnF2d0F3?=
 =?utf-8?B?TnhXYlpVTGVQcFVnQjR2ZXIxNG95UDU5anBKNUpGVEp5S2twL0dkN1JNZ25C?=
 =?utf-8?B?TFFYSmhweDNjYmdDejg0VVJnMC8xRFo1QlNmUktNR3hpa2JoSG5EWDdUMEZO?=
 =?utf-8?B?SkJ0cEpoQzNRY1FacjliK3d6aGJBaDRSNkVWOWI1QjlialRTSm9maHF0QWNy?=
 =?utf-8?B?bWIyN0t4L3RpeXV4R1BTN0l4SzNnZ21oeHZDT1JSeTd2cUFReEpiOXRqZUlt?=
 =?utf-8?B?U0liU3RhTStJZ2J5K3FlQVRHQXdFVkZMWVlDSG1jR1ZqMDhYQmZYKzN3L243?=
 =?utf-8?B?dDVvZkpOVW9JTG9ETWxaUy9vTW5Qa2VPaEtPRVlhMGpqSmxkcTFhWlovbThW?=
 =?utf-8?B?U1cyWjBWUGgzYS85R1Zwem5pa2d2bVRrVk83WEMzQmpwNXkrczErZWF3RC9F?=
 =?utf-8?B?ZGs3bDI5eEQ3Kzg5VlF1VkdCYjM1cmZJYWlJSWg2UTR1dFdJQWtOZVlaYURC?=
 =?utf-8?B?Z2xBa2ZUSDJCTmdta1l0Q2l2ZHFFbkZmeVEzM044ZU5oQUh6YlVSM3ZTWlMw?=
 =?utf-8?B?U2FLd2FyYWtXUmFDdWxwMGV6emQwNk9wMWNPSXNUV2dXaVlFcnYyOTU3ekl2?=
 =?utf-8?B?YzNMQ3V0UHBLbE40bDMwUllIc2JZcXVWb0tBYms2dXBsSmRseDkrTjJseGUy?=
 =?utf-8?B?VU4xbFlLUW9VWll6ZklZZm9MRUh3MDdIWHBqdGYrbnc2S1hSeWc3WHlrR0w2?=
 =?utf-8?B?a1dyRGttbTlSMG1xYWlTalJmVEI2U3RwZGRPcVJIMk9scTVQTlIzNkhQYW9B?=
 =?utf-8?B?VWdNRUkxWDFrM1lDQklEL3NtWXhoMHhMNEwycDF1Q0EvejQzWDRNcytwU3dz?=
 =?utf-8?B?a29zWk5OYXNFT3VJdjBsK0FZS3Y3SzJGS0VXUGRmTEJtVEZkWFlqV01EdnlU?=
 =?utf-8?B?eTM5OGYxcWdhTThUdW5yWFg2eGhyRHFjU05qQU5xSk1sM0tPaXgvQUg3N0hI?=
 =?utf-8?B?TlVYaE9aS3l1dmRmLzNseWRYbi9GRU9vSHZVV0JpZEJRUXJ2VzRTUnVXL0R4?=
 =?utf-8?B?V3MyU0c0anp1V3ViZGdYN2Q3YVJuWDVnZGVoaCtvTkhoaitWNXhZSzhCZTRu?=
 =?utf-8?B?d2RZY055SFFxQVBMUEwyZ0VkRERSWnhETmxlMFI4cmJkZXN0UGhoU29jYWZ1?=
 =?utf-8?B?MjBObjBMMVBGZ2d1ZUI0a2JRcTAxQjQyQVlzWDNvUU1objQ5eUh5V2YxUUQz?=
 =?utf-8?B?QlplQVd2WlhCbWZSUFNTcnNyR0ptb0ZuQk8wVm9meXFmam50cEFwQ1dEL3JK?=
 =?utf-8?B?WVU3ZUZ4RDFwMzVEQml2QWtyYkdKamhJUEtYaERUelZHNlRpK0N3M2R4ajZG?=
 =?utf-8?Q?gnlQH4?=
X-Forefront-Antispam-Report: CIP:216.228.118.232;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc7edge1.nvidia.com;CAT:NONE;SFS:(13230040)(36860700013)(376014)(1800799024)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2025 02:48:37.8642
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6012551e-3b8c-4217-8548-08dd8d11ab13
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.118.232];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: BL02EPF00021F6B.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB8401
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_034852_069110_45D3D67B 
X-CRM114-Status: UNSURE (   5.42  )
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

Decouple CYA_TRK_CODE_UPDATE_ON_IDLE from trk_hw_mode and disable
periodic tracking on Tegra234

Haotien Hsu (1):
  phy: tegra: xusb: Disable periodic tracking on Tegra234

Wayne Chang (1):
  phy: tegra: xusb: Decouple CYA_TRK_CODE_UPDATE_ON_IDLE from
    trk_hw_mode

 drivers/phy/tegra/xusb-tegra186.c | 16 +++++++++-------
 drivers/phy/tegra/xusb.h          |  1 +
 2 files changed, 10 insertions(+), 7 deletions(-)


base-commit: 92a09c47464d040866cf2b4cd052bc60555185fb
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
