Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9127AC3ABBE
	for <linux-phy@archiver.kernel.org>; Wed,  7 May 2025 02:48:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DKyL24NOzpich2tMZMV2pq0rjE7VRsHbbAPBWFkGVH0=; b=Ojy7nB28Qhqing
	GVrs89FViI6RbuoB3BSD33N2d3Pb4dpcyraB6TdCCsThOv2ZodF2oFa7qtlMnIVnilMOSyiLcOOGP
	UOAbxXF1Ar0I7Zv7dLlrre6L+8RkrY4ur/8ojJ3jNIgiATKgCrRnjgxVhFKdsK9RKka2VX/UbI8iO
	WDeScPL4enReaZBIMsLSgrvn1XJtn3j+6uhQ9ry8ZjQs1Vxae2rcXZs0A384YzBC1XGuCphrh+XwJ
	hqjLqM2DR6BSYB7YFZeLFdWU+TT6m6sh7V+xkMxWEmRwmeVKMQG5r7px2Bue8PTCPojLImYzETz9E
	zyEoR+HyqNVtOrNVgKXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCUq4-0000000E1Rz-1Smh;
	Wed, 07 May 2025 02:48:52 +0000
Received: from mail-sn1nam02on20608.outbound.protection.outlook.com ([2a01:111:f403:2406::608] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCUq2-0000000E1RC-06ey
	for linux-phy@lists.infradead.org;
	Wed, 07 May 2025 02:48:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MNoTTNiVvD1PO4NBZO2bZ81GbCdoEDng3cb43WgJCyr2kTfZY5/g/JYIouRm5n0m5Gv+bNvQljq1STZS9pr3Axyb+L6kFtZLqsVbpHrXWNVgEERUJm/dtF5UK0YRfsG6xcVynf58j8ZfUgjExCe/GujaQbv6TYMM6tS9nzX8AQz7R3FMDSJRk9ELTALGT3oK3jIpgso11ntnyhVEBat3I3Z2Pf8tinXPvxIwqabU7TV5JTZ9X8NbMAIJa9zX48FdrutfvGlKqdwW5yXtOr5I5mzNaIWqKrZy0fvDN4pfonPk79R2L0YdMmvMDwtaIgQRT+i+z1acgHGFSwXyLUw0hA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7EAUlxwWmUxeR+nYVbls0fqQA6SIrF27o1bSHbx7c4c=;
 b=SfIqbXR66az1LbNuD6Pwzf6Vmdcc1Y8kU1SNOITLBwNslTWHy9F+KmG6WMvKzOg3gKMvBdkAyPLUevf4X6TAGuLgfVQfS/4jTEZS6CDN7eGRzBV9drh073fPjEBCNmrQHIBKstSoAhYy/i5qjI6RY0S+i8V0jELMVrWqtpHXljm7c2PDGHb1GR0r57bj4AL00xZAUdtIc/pu/rBsBwIFxwdYRQ6v6HoPOX7QRp/VDtVMQwyEce0uJsTpdOQTGbPfZReRoghCSDptsFixeL54f87pCgKAy9yHvvNSKGdbLfYrElIDgMLBb9MgOQatinqXztXRMDhSA3klGaQyVd7XdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.118.233) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7EAUlxwWmUxeR+nYVbls0fqQA6SIrF27o1bSHbx7c4c=;
 b=CJM4jK04eauAtls7adwpSwCl6nOWxLlHzYfzOKu79zsrILq2Q11h/aWd61gCKdUZ2SE7YND/VBFf8PHGccHkj6Fk2AstkrlQnGNofBFE6C6LVWdGwe0e3T9QmOF4b7eaq8U66OIJw1Phv3U44nrsaM2p4K2Hn83odJt5dMKQrDJ18OvcavJtj05ie0YtJztOh04yY53Nu69ZObenWbiRUD2vHRgR5DHvey/KkNlqnH599jqW4R3CfAkwc4oHCYzkauEED2fF7WSow2gFlfTHC38oD2bRd8pI/EiIXYq7ursLTaKacw7PRxs/EqC+uU5A3Ivec0lPOgO5A+XhVw5N+Q==
Received: from MW4PR04CA0180.namprd04.prod.outlook.com (2603:10b6:303:85::35)
 by DS0PR12MB7535.namprd12.prod.outlook.com (2603:10b6:8:13a::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Wed, 7 May
 2025 02:48:38 +0000
Received: from MWH0EPF000989E8.namprd02.prod.outlook.com
 (2603:10b6:303:85:cafe::e2) by MW4PR04CA0180.outlook.office365.com
 (2603:10b6:303:85::35) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8699.31 via Frontend Transport; Wed,
 7 May 2025 02:48:38 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.118.233)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.118.233 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.118.233; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.118.233) by
 MWH0EPF000989E8.mail.protection.outlook.com (10.167.241.135) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8722.18 via Frontend Transport; Wed, 7 May 2025 02:48:37 +0000
Received: from drhqmail202.nvidia.com (10.126.190.181) by mail.nvidia.com
 (10.127.129.6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Tue, 6 May 2025
 19:48:30 -0700
Received: from drhqmail203.nvidia.com (10.126.190.182) by
 drhqmail202.nvidia.com (10.126.190.181) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 6 May 2025 19:48:31 -0700
Received: from waynec-Precision-5760.nvidia.com (10.127.8.13) by
 mail.nvidia.com (10.126.190.182) with Microsoft SMTP Server id 15.2.1544.14
 via Frontend Transport; Tue, 6 May 2025 19:48:29 -0700
From: Wayne Chang <waynec@nvidia.com>
To: <waynec@nvidia.com>, <jckuo@nvidia.com>, <vkoul@kernel.org>,
	<kishon@kernel.org>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>
CC: <linux-phy@lists.infradead.org>, <linux-tegra@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Haotien Hsu <haotienh@nvidia.com>,
	<stable@vger.kernel.org>
Subject: [PATCH 2/2] phy: tegra: xusb: Disable periodic tracking on Tegra234
Date: Wed, 7 May 2025 10:48:20 +0800
Message-ID: <20250507024820.1648733-3-waynec@nvidia.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250507024820.1648733-1-waynec@nvidia.com>
References: <20250507024820.1648733-1-waynec@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-NV-OnPremToCloud: AnonymousSubmission
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWH0EPF000989E8:EE_|DS0PR12MB7535:EE_
X-MS-Office365-Filtering-Correlation-Id: 9c9518ad-8c64-4c9e-f8ed-08dd8d11aaf9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|36860700013|82310400026|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OTk2alNKeE00WWhmZmQ3R3lCc0lldGpSL3JCWXQrUFRnYkU4cVE3TWRyMHpS?=
 =?utf-8?B?ZXorZVB6Q3NwMng4Y2FveStWU1A3LzVCaHF3L1AzTDNjVjkvWm1pL0ozdXNp?=
 =?utf-8?B?Qy9KOEtpZkYwUWU3alluWVAzNWdGS3U2YzV5NktuSWhOVGQ3Wk5SSzJEMkJl?=
 =?utf-8?B?SjMyNkNLeTdXdTlneE5XNVN2WFJzVW04dHBSRzJEdHE5TW5DT3hVcUQzM0RW?=
 =?utf-8?B?cWMwVExhUktWMFJ6U1NzTkNPZGNpSnlna3ZGTlFTSk9OczBMV3hpQXpyTUZh?=
 =?utf-8?B?d2pJRkFnM29JOGsvUXNOejFPaXlzb0RERVMyM01TOElSZ0JXM0JOK1Z3VDdP?=
 =?utf-8?B?UDIzY3U1Qkdmc3hYdHJMVGhZNG93aVFvSjJZRmgrVzNDRDFNWmdod0UzaEoz?=
 =?utf-8?B?b3JDSWxLakF6NFVTS0Yrek5ocmVhcnVqZVR6aWg2QWJJYU9CeUNGM2N1WkpE?=
 =?utf-8?B?UjJsVlpkNWg4TUNSWjhJSE9IVjlZQXNNZmlUTE96aTF6S0VBRUxtZmk3SzU0?=
 =?utf-8?B?K1RnZkJEdjgyMTlBbFdISGRvTjlHaDJmQVNZS1o3M3ZZNm0vaWNvU0Q1bXJR?=
 =?utf-8?B?YTV3ZVJROVk3MUtjTVVVOCtaQ1lWeXc5SndIZXptMU5taVBWZXltRGVjRkFP?=
 =?utf-8?B?a3B3b21aVUxudHB2N2pCd0RmMkFvZGZaU2Z2cnpGcWZRZkxXTXBicHFyV1Z6?=
 =?utf-8?B?TCtzc01kOEdkN2FtWHJjVlZ5bUVwOWlaa1AvdldTYXFicGxwUGc1M1ZNM05h?=
 =?utf-8?B?eFFUb0hibURwK3V3M2FjdG9rLy9VZVhibk4rWHZRVFYrbDFCeko3ZjV5WmxC?=
 =?utf-8?B?WThGSGxHdGxqSmt3bFhBU0h6S1F0U1hIbXZHOG9qckFEd2ZCTXJVY0s4dytB?=
 =?utf-8?B?ZERUVkdnd2VoVmRzWU1QY1N5bjFYVGNBYUg2cFJGQ0JBd0hZNDNyQUNMbjdZ?=
 =?utf-8?B?REtlbVhOajUwNVpGNUJGRjA4Y2pNdDNIZWJvY3UvN1hucjcyMUVTempmcDZy?=
 =?utf-8?B?NThZOGNkZGx0NjNJZVp6NE5rSGswa0xvWC90ZGJvYitjenZxMWNTTExyS3o1?=
 =?utf-8?B?RkpBdkU0WGhLOWRDUWZPckRnMVpwdmNaT1dWTXA4UDVrWFhYLzMwUmFyZ2Rs?=
 =?utf-8?B?b0tDSHBxbDJGRVp0amZqV1VPZVZLN3N2aVJrdFNQT2lHaUt0MllNYTF2Ym5t?=
 =?utf-8?B?L2NNZ0I2cEJYT29kWXhqZkJRWDJEbTBzcEkxOHpyeFM5T2ZQZ0ZqRjJvWGY1?=
 =?utf-8?B?RlJHdW5Hc2k5YTJaNGVuaGxjeDBVQXJLTkxPVlVETFJibXF5aG9HMkthME5X?=
 =?utf-8?B?UkVPZEthMlE5WjZRaEs1clJJakVkZ3FTL3hSaHFPSXEwRVFXZEp5eHFiTE1H?=
 =?utf-8?B?WUkxdThpaDNLSG5ZczJtTUJTYWJ5bFFPeW9kWFRqY2FpemMrajErU0lxbElO?=
 =?utf-8?B?WXZCQmJYZ25JcUplSmFqR0ZpWnVqa2dRbmFNL2JlTU1lMDdKMncrNTcwVm5s?=
 =?utf-8?B?YVBNdjhxUXdKbDZTT1IrbDBHdXIvRmVMUFBmaGkvVDRSK3BKUE1Oa2NaZG1v?=
 =?utf-8?B?RVNVWFpKalBEdUU3VS9nNExhQUZlbWd6ZjVIUW5PYlNzblZkRWRhVzZEaXJx?=
 =?utf-8?B?QlFoRElKY1pDeGduTEUwb0hwL2xLYWQ3SEdBNkp3WFJYdC8rZkFUaGJzNWNS?=
 =?utf-8?B?MHNOd0NWU3cvc0ZzMHRUbkM0d1NaWFQyNG1WOXMwNmRtMlZrYmtRbnhrQWI5?=
 =?utf-8?B?TU9sWE84TURnRGZUamVOTUpURnNYRHl6UVhZc3BoN1FIMytjSGFqQlVSR1pG?=
 =?utf-8?B?aTVLSVJlYkwxaWdEMk5OWkZyS2VuR0k4Tm1McFNpYVh6T1BDQ01xb0piSFhV?=
 =?utf-8?B?bDB3YmFUVFNCendxaFdNU1NLNmtBQlVmbTRWY2h0V1YzY0c3Q0QxRW5pZlVO?=
 =?utf-8?B?R0ZxOGdFOGgzUFV5S2tNeXg1aVUwcGljT2JaOFVORVJ6djZPWXJ3UEZkanRY?=
 =?utf-8?B?ZytQb09uU1I4eTZyaUt6cFZzN3ZIeitHRktmVE5aY2xpWU5IT1ZqWTBHN0tj?=
 =?utf-8?Q?2AXgXs?=
X-Forefront-Antispam-Report: CIP:216.228.118.233;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc7edge2.nvidia.com;CAT:NONE;SFS:(13230040)(36860700013)(82310400026)(376014)(1800799024);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2025 02:48:37.7782
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c9518ad-8c64-4c9e-f8ed-08dd8d11aaf9
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.118.233];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: MWH0EPF000989E8.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB7535
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250506_194850_065102_EE29FD68 
X-CRM114-Status: UNSURE (   9.75  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

RnJvbTogSGFvdGllbiBIc3UgPGhhb3RpZW5oQG52aWRpYS5jb20+CgpQZXJpb2RpYyBjYWxpYnJh
dGlvbiB1cGRhdGVzICh+MTDCtXMpIG1heSBvdmVybGFwIHdpdGggdHJhbnNmZXJzIHdoZW4KUENJ
ZSBOVk1lIFNTRCwgTFBERFIsIGFuZCBVU0IyIGRldmljZXMgb3BlcmF0ZSBzaW11bHRhbmVvdXNs
eSwgY2F1c2luZwpjcm9zc3RhbGsgb24gVGVncmEyMzQgZGV2aWNlcy4gSGVuY2UgZGlzYWJsZSBw
ZXJpb2RpYyBjYWxpYnJhdGlvbiB1cGRhdGVzCmFuZCBtYWtlIHRoaXMgYSBvbmUtdGltZSBjYWxp
YnJhdGlvbi4KCkZpeGVzOiBkODE2M2EzMmNhOTUgKCJwaHk6IHRlZ3JhOiB4dXNiOiBBZGQgVGVn
cmEyMzQgc3VwcG9ydCIpCkNjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnClNpZ25lZC1vZmYtYnk6
IEhhb3RpZW4gSHN1IDxoYW90aWVuaEBudmlkaWEuY29tPgpTaWduZWQtb2ZmLWJ5OiBXYXluZSBD
aGFuZyA8d2F5bmVjQG52aWRpYS5jb20+Ci0tLQogZHJpdmVycy9waHkvdGVncmEveHVzYi10ZWdy
YTE4Ni5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9u
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvdGVncmEveHVzYi10ZWdyYTE4Ni5jIGIvZHJp
dmVycy9waHkvdGVncmEveHVzYi10ZWdyYTE4Ni5jCmluZGV4IGRkMGFhZjMwNWU5MC4uNDE0ZjRl
YWJmZTlkIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS90ZWdyYS94dXNiLXRlZ3JhMTg2LmMKKysr
IGIvZHJpdmVycy9waHkvdGVncmEveHVzYi10ZWdyYTE4Ni5jCkBAIC0xNzAzLDcgKzE3MDMsNyBA
QCBjb25zdCBzdHJ1Y3QgdGVncmFfeHVzYl9wYWRjdGxfc29jIHRlZ3JhMjM0X3h1c2JfcGFkY3Rs
X3NvYyA9IHsKIAkubnVtX3N1cHBsaWVzID0gQVJSQVlfU0laRSh0ZWdyYTE5NF94dXNiX3BhZGN0
bF9zdXBwbHlfbmFtZXMpLAogCS5zdXBwb3J0c19nZW4yID0gdHJ1ZSwKIAkucG9sbF90cmtfY29t
cGxldGVkID0gdHJ1ZSwKLQkudHJrX2h3X21vZGUgPSB0cnVlLAorCS50cmtfaHdfbW9kZSA9IGZh
bHNlLAogCS50cmtfdXBkYXRlX29uX2lkbGUgPSB0cnVlLAogCS5zdXBwb3J0c19scF9jZmdfZW4g
PSB0cnVlLAogfTsKLS0gCjIuMjUuMQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
