Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8886DC54754
	for <linux-phy@archiver.kernel.org>; Mon, 19 May 2025 09:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JWCAvU/Ayo0WgZhwpOBHoxztVj2NamHuthG085y4Qdo=; b=JknzM/clO7xR8E
	WsK1PWV+1BDEzHQE4v5ENkUPRnOCfi607IUHUjF0inQ4Z58gmih9Nxe+HE0QOJf9FjNQPaPU0fXDi
	AfpENUOuMdBUTIFU+3cizp3QHca147NzP/qIhRog6NKCzXaYlmamq7VVPnRH0InsYUlMb7/RSJ1Xp
	mObsX4znK3+D5ZdYjJ9kTTREpY4P+ZKaMaoARlI8j6+g4miMl6Xb1ljIO5TcIhtiIogpFOAPbam+O
	lZruB6278CjngH46Kr8y6s8d+8sdGvqHew1D/8WJVt3YmWwbxZABnO0bNrwHrk4/ftAZ/00C+bgK+
	dVP8hGZYxf84bjR5IQGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGwWK-00000008USf-1GbJ;
	Mon, 19 May 2025 09:10:52 +0000
Received: from mail-bn1nam02on2061e.outbound.protection.outlook.com ([2a01:111:f403:2407::61e] helo=NAM02-BN1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGwVv-00000008UMz-3a1m
	for linux-phy@lists.infradead.org;
	Mon, 19 May 2025 09:10:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vu8r9Mv2Dlvmso6PAoBP69mwLaT4KFhxbb0qGiPSkuB1BVHpkgQ8JEhfhjBhJOK6zs/iGRXzvdL3LqqpPnOJKDO436IskIQFabBxoGy42PYZd9OxF802XF17kHVGiDrvDJT5lb/bXxaevCIR8660m6iI7TM8EtKPZRPBgXgD/OygpgfdaUrj+bsKscmmashI1jWNpSNnHnCargqdJJCFQo0QH6Rtes0HgHTV2J2oOYtEDmiTlNClCx8lpgi0Kx3kerLhYPi45LBqFn4upnzsadIMq8zuYL5xxh7YszN8f4OA5Cl18SS6UOvN7INc+x1CF8EAcjZI2+cvRF9jDoPdOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0GalOtdE8/OHLGuS3Uv6e2+9I5mZxLCm+E2G4ARmHCY=;
 b=kwZ5w7bYDmQvMayvtE1/elTT2aV4ABKOXFUoZevCWqENmJYJTGrPn//1ot+jLoncEqfLVU8znkquEJd+UeGxHXi9QZ88XdSwx6pUZ3uMhBVuHbWGbj4zNGzuFXFk6SY0p9osPsq59e5p3GZ92FfNCPP6sTQA3fy+iU4ROLDFIddU1fKLu0GJTZ4RxwyGLoC5TK2BnvPQEvTywzhgWwn+CnAqwS+6hmBzMV8SPxsT4lydR2RN9Xu5NSlLv3VHVne72TSYBtSz6nDcKmmy+qj3sU5vuzqVLaW6Z+00l6CVvHwyYYpazZIcIpOhMZV5vJd2my3srX7Feen0PL/PNlKYeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0GalOtdE8/OHLGuS3Uv6e2+9I5mZxLCm+E2G4ARmHCY=;
 b=Qnd8NXC93tKMyhaX9IToDJikIjF3XktyfAZnZqPACK5HmMaoqDnS6/WXvQa+yYW9j2wXbz8exkUGGsbdCeOH+Abcaresmip3fp13N7pt0pvPUjKhyIlY/LOJtFXyxb5Cs1TX0ZsgiqIVik/aXXWJXfF/u9m9oX3iDtfU8Z+136wH8ukQCRB41TUd+3pZrcUJpomFME9fHM5ILHd4XD5qpwx/bsVKLCUNA8/ExidA6kLgFU0CJSVQJpg4xdVtUB37C8YFUkwbYJbZae67SuVoGDydJ8STNKSzD7l50rsbmASGD4OurOwGfDJicghNgCwTsRSlx8ZNsgucsK8/7tVBhA==
Received: from MW2PR16CA0044.namprd16.prod.outlook.com (2603:10b6:907:1::21)
 by IA0PR12MB8696.namprd12.prod.outlook.com (2603:10b6:208:48f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.33; Mon, 19 May
 2025 09:10:21 +0000
Received: from CO1PEPF000042A9.namprd03.prod.outlook.com
 (2603:10b6:907:1:cafe::32) by MW2PR16CA0044.outlook.office365.com
 (2603:10b6:907:1::21) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8746.29 via Frontend Transport; Mon,
 19 May 2025 09:10:20 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 CO1PEPF000042A9.mail.protection.outlook.com (10.167.243.38) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8769.18 via Frontend Transport; Mon, 19 May 2025 09:10:20 +0000
Received: from rnnvmail202.nvidia.com (10.129.68.7) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Mon, 19 May
 2025 02:10:03 -0700
Received: from rnnvmail203.nvidia.com (10.129.68.9) by rnnvmail202.nvidia.com
 (10.129.68.7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.14; Mon, 19 May
 2025 02:09:39 -0700
Received: from waynec-Precision-5760.nvidia.com (10.127.8.13) by
 mail.nvidia.com (10.129.68.9) with Microsoft SMTP Server id 15.2.1544.14 via
 Frontend Transport; Mon, 19 May 2025 02:09:37 -0700
From: Wayne Chang <waynec@nvidia.com>
To: <waynec@nvidia.com>, <jckuo@nvidia.com>, <vkoul@kernel.org>,
	<kishon@kernel.org>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>
CC: <linux-phy@lists.infradead.org>, <linux-tegra@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Haotien Hsu <haotienh@nvidia.com>,
	<stable@vger.kernel.org>
Subject: [PATCH V2 2/2] phy: tegra: xusb: Disable periodic tracking on Tegra234
Date: Mon, 19 May 2025 17:09:29 +0800
Message-ID: <20250519090929.3132456-3-waynec@nvidia.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250519090929.3132456-1-waynec@nvidia.com>
References: <20250519090929.3132456-1-waynec@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-NV-OnPremToCloud: AnonymousSubmission
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PEPF000042A9:EE_|IA0PR12MB8696:EE_
X-MS-Office365-Filtering-Correlation-Id: 61f7afae-2ed1-49ee-5bd1-08dd96b4faf7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|36860700013|376014|82310400026;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S3d2L2Y5WTlhVmFvelRjTmNGK3RJdUZ6VUV5bWxPRVBvYkQrWk16MStWVlZw?=
 =?utf-8?B?Y3Nma3NXSHNKSFNuOG1LdkE1cTB0VzZOaytydjVINi9TYjZlS2xITERGMkM3?=
 =?utf-8?B?YTBGS2lBenB6ek9YU3F5UVY3ajk2Z2kyU3g0Y0xzcnVZMlU2T01TbFREYk5S?=
 =?utf-8?B?SG54bVJTdGllbWFrWTh1aVpUWmRNZmliOHJ6QjJYczZiL3J0d2QyMmpRVVVW?=
 =?utf-8?B?R3l1ZFZ5eFFWN1ZkcTBzMmVKdW85UXplTFZ6Z0E4MDRwdTFxall5Q21IS01a?=
 =?utf-8?B?SWRZKzl3eGhzTERrNnVYTjd1R2l5enAxS2NFNlQvZlpqUUlLdU4wWFRsWW1J?=
 =?utf-8?B?Y3hDK1VNNTU5Q3VSbmxFMG5wbmJjMjRxY1d3aEdxN2xPTGR2VHpHS0NkTGpC?=
 =?utf-8?B?Q0Vyb1RLNEcxZTJzUXBXZUhLZVJyTjJSdmRQdVdSTE16VDZVL2dFMFJhdHpE?=
 =?utf-8?B?Y004NW5zN09xZ3BLNDNQTytCT0oxRmVuelBzMGZqb1VqZlhrSU5QcW8rcnhX?=
 =?utf-8?B?eE9kVTg3ZVQ0L2NwWWlGcWdzWlk3djgya3l2OEhBdWF2akRBSHVrSit1ZW5n?=
 =?utf-8?B?a1JWWkdGSy9KblFacms3SUx3SU1UT2ZLb0l5YnphcGJNRHVqMGVqdGhkSW1q?=
 =?utf-8?B?cmNoSmpvelhMelMyTWJ0MnM2cUUxQ3hrczVRQXh1dXA2dGtvTjdiNDBkeDVC?=
 =?utf-8?B?c21uZ1NoVmk3cjVTVnpNUWVFaExaR21sL05BQkFvOWk2akNQYkV1THp3UTd4?=
 =?utf-8?B?V081MWh0SURaVlliVW5PaWFyT2FLREVnd2ZWaVF0Zk4zL0ZWM1dKZmVHZXhn?=
 =?utf-8?B?WlhveFZJWjJyVVBXLy93a2xidUhCYnJVNVF3MktJaHV1Z2g0WjhZYzA1ekxB?=
 =?utf-8?B?ME9TUUxVa01lOEM3OVQ2a0I4NHI3VjJVK0hJWWJDeWpmU09rWUVqMUNDS1o4?=
 =?utf-8?B?UzFPQnJEQzlsMTRNaFZFRi9raURYRlVwak1rSGRXWUlJWmplY3B3Z2lJb2Qr?=
 =?utf-8?B?bFVFRytudFdyWlMvY3drUUNGSncrdDBNMExHYlJVbnNzUDllSCtrTWc3VXhB?=
 =?utf-8?B?WTJQOC9pRUVUem5IaDNDVkplMmFOeTEyWC8zZjRYSU9SRVQ1Tlp2cDlWcGFl?=
 =?utf-8?B?ME5HUFNvSnVFd1E4ckh4R0pIMnFYVTdTM2JmRlljY2Y1emRRek1kOW96WUVa?=
 =?utf-8?B?VGFsODJid0U5cmxTUU9HeVhZdzExaCtOMU4ydmVaSzJ0THNrMEh5ck1JMi9a?=
 =?utf-8?B?VDVzY2p3c2VmNHJmZzVIZ3BnUjk3aFYzNHhvOXdUeXZLSFBaLytEeFJ2R0hR?=
 =?utf-8?B?UGxIU0k4YUFWd09Rc3RMczdsaE5kcWxHRW9RcEZFcThDTDNmdEQ5M1d5K2NY?=
 =?utf-8?B?NXdvNHBTMENmaEE2eE1ZTUhLelZJaitrdVpBc2RlQ09tWGptRnh6TThWNVJ2?=
 =?utf-8?B?UmxKWWgwTHZSLzA0NnhnU0dHUlVzbm00QnBObXpYNTFKcmdCTVgvemI2RmRu?=
 =?utf-8?B?anlacmQxZ3VIS2xhWExDM2J2aEp3SWUwT3dzV0NnWFFGa0d5YTM5VjVNTTF6?=
 =?utf-8?B?VnZSNk5mUTd1aUVOQWVHTW9YL3QyeHA4TjFDN1dXOS9qSmEwQVl2eklvTC9V?=
 =?utf-8?B?NmhkVThhL1dlTE9EVFFLT2xyajA2cHpzVXV2bXVsU2lzM0VGUm1IVENCaUpG?=
 =?utf-8?B?dW50RFliMHRocmVWZHBqSnlaWDU5M0EyTmRMY29lK1B2VzY3U0tZd2pHOEpp?=
 =?utf-8?B?VVpsMXFLK2tMWjhJR1gzVWp2Qmo3djFNZmhTRGlUNzlUM3RBL0RaVVZTTCtR?=
 =?utf-8?B?RTJIVEl0aEZQZTVCdkcrS1RpaG1VK3JwWEZtdjgxZnJubG03ZTJQay92c3c5?=
 =?utf-8?B?NVFpVm5kVmFoeFN4eGVVNmJkYkZOWUR4N1gzWUhiMGFGeWpOT0FJUFdEWlhn?=
 =?utf-8?B?RitTdVowckt2L3VoWWFFRlZGVEVFb1BTNmNwTklaV0tOVStJMW1VZVdWR3RZ?=
 =?utf-8?B?MkF5SXIxYUlBd1paNnljbTZPMDZ6amQrQkNkUmVGeVkyWDFLY1h2QW1BalVI?=
 =?utf-8?Q?uO1UcZ?=
X-Forefront-Antispam-Report: CIP:216.228.117.161;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge2.nvidia.com;CAT:NONE;SFS:(13230040)(1800799024)(36860700013)(376014)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2025 09:10:20.4337
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 61f7afae-2ed1-49ee-5bd1-08dd96b4faf7
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.161];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1PEPF000042A9.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR12MB8696
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_021027_892454_6F398FE1 
X-CRM114-Status: UNSURE (   9.47  )
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
aGFuZyA8d2F5bmVjQG52aWRpYS5jb20+Ci0tLQpWMS0+VjI6IFJlYmFzZWQgdGhlIGNvbW1pdAog
ZHJpdmVycy9waHkvdGVncmEveHVzYi10ZWdyYTE4Ni5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkv
dGVncmEveHVzYi10ZWdyYTE4Ni5jIGIvZHJpdmVycy9waHkvdGVncmEveHVzYi10ZWdyYTE4Ni5j
CmluZGV4IDY4MzY5MmYwZWMzYy4uYmE2NjhjNzc0NTdmIDEwMDY0NAotLS0gYS9kcml2ZXJzL3Bo
eS90ZWdyYS94dXNiLXRlZ3JhMTg2LmMKKysrIGIvZHJpdmVycy9waHkvdGVncmEveHVzYi10ZWdy
YTE4Ni5jCkBAIC0xNzExLDcgKzE3MTEsNyBAQCBjb25zdCBzdHJ1Y3QgdGVncmFfeHVzYl9wYWRj
dGxfc29jIHRlZ3JhMjM0X3h1c2JfcGFkY3RsX3NvYyA9IHsKIAkubnVtX3N1cHBsaWVzID0gQVJS
QVlfU0laRSh0ZWdyYTE5NF94dXNiX3BhZGN0bF9zdXBwbHlfbmFtZXMpLAogCS5zdXBwb3J0c19n
ZW4yID0gdHJ1ZSwKIAkucG9sbF90cmtfY29tcGxldGVkID0gdHJ1ZSwKLQkudHJrX2h3X21vZGUg
PSB0cnVlLAorCS50cmtfaHdfbW9kZSA9IGZhbHNlLAogCS50cmtfdXBkYXRlX29uX2lkbGUgPSB0
cnVlLAogCS5zdXBwb3J0c19scF9jZmdfZW4gPSB0cnVlLAogfTsKLS0gCjIuMjUuMQoKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
