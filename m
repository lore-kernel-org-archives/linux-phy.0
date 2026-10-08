Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7536CA600B
	for <linux-phy@archiver.kernel.org>; Thu,  8 Oct 2026 12:09:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Cc:To:From:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZaSvbbpI6Hs6V7yHj2XvlkOIRZIisX3XFAApZ7YQlRw=; b=bIytLGOuzhZm2NI4O9Qne7YPOa
	8M0cxtSS6KryyU8iSJrpV/KrSsFspeWfGGuGw+ftdCYyHlao34OqY0w/Pa0CRc0/hE5sbKUFJKxsQ
	avYQDTNh19QIqsLAfPEbqqws+KDOcqM6rB/YxZkbuMKgjpPiOLou+2XT3o4TfJ5/g7sgtW0TY/k5+
	A4QGiJjbtSA6vf07DzMtgwg2ZJnnOLkv6iqULCSvBw5gZDdFj90d4kfzC40zpW9Fdw0bHLeESmptc
	WyZQtpyJ4U2gKvabiJeWfKItnJmFFO5eUAsyY/x03LLeHzYpj6NRI7WaJ7cLoahhXcNlYBggG4GTB
	RREI7tuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEmwT-00000004KAc-1KP3;
	Thu, 08 Oct 2026 12:09:45 +0000
Received: from mail-northcentralusazon11012056.outbound.protection.outlook.com ([40.107.200.56] helo=CH5PR02CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEmwQ-00000004KAH-1yn7
	for linux-phy@lists.infradead.org;
	Thu, 08 Oct 2026 12:09:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vC73q37/aDhWGrAqs9+YM+jO1c4wbNP3RwvTmylWd31bP0s0saVNHavXSJOVReCpQa99viqITcCnSihXY8xB7y9lxBMBncscpMPmoqD8LxBWbZ30aBfv0IdT/t04R9IJPNrVs3BrjN04/OO57p9DmfZ+HfCosmBK7HCv8RaqJl59Cgcp2/agcx0ViNulvg2WPzg8zguy4f/5ATxZ4dugizR0rk7wvhcBt6aOhmJb/PgjVpdU8rPUlK5mtMfVXq9GinIMFph73VQ45imdRr2WfgofuEr+xnNVR7ewwu3HfMSN/6D9QGv7/oob5etzzbgInjWMMmHgG8Gg5hEDmRTGlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fBRpjnyogdMVg3B62bPVaVxr5xhn7hZlNHq67RIqJRI=;
 b=Qf80faHwnQQDinHh1nXcmudWYS8+AJCjRieStcPrTyuJqreaNHxlMfEVOoWldibtNMFKc/tlBpQzWxItLwY222O0Y4nWJBZortrNs55gEJgKZEcNo/n7IgjHMF2ORA8z2UshhiorpU0y0z6DVBKvDzrYriOvP8hY/7zGKwvBRKNR1twsQFt97dtoXMn5Upsnb5CDthO2JuC9b0LBIP/hJJMsvIkmah+ZqiWcbK4whz0hjiGsy+md/Cd3LbJsZXVRupT38rnrQYxhwzmL+tzjR1G5awUqDmzEJKQD0GK67PzJwgaNewFWfQ6MDW090Na493nRr3Lt4c0MQOQe4abEZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fBRpjnyogdMVg3B62bPVaVxr5xhn7hZlNHq67RIqJRI=;
 b=UL0u6kRCirTLimrgP1ydd4FYSVsXz/hyDeZLBjODTWx91Mlu0SPv0P4O0ZaN6mDcek5fo6SBGReIFKxh28KjGyvtBpCKEEySRDTvFWAhDkEAXzwDBkn77CWYbbrMpjPQMfjVVimR8bFZsRcGEufuZb9OEHwQqLklT+9NxIpLJFytZlUmFhQ3uL1GUL6WaJgT8J7Q983eqUqVJMaHlkN6AcPT6YWkSH3dFQXBBzq/N54nbyBh3k+xRTZYHIEoHReA/NrjyEgFxK3OS4b2jX9PnK5W6kaE3GP8TOvTGE7dhAFrhkcPvM7dTufuac39mrtP9WBXHVbZ25EbNIkX+D0IBA==
Authentication-Results: mx.microsoft.com 1; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from PH8PR12MB7110.namprd12.prod.outlook.com (2603:10b6:510:22e::11)
 by BY5PR12MB4068.namprd12.prod.outlook.com (2603:10b6:a03:203::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.496.17; Thu, 8 Oct
 2026 12:09:35 +0000
Received: from PH8PR12MB7110.namprd12.prod.outlook.com
 ([fe80::736a:e1be:ec64:5740]) by PH8PR12MB7110.namprd12.prod.outlook.com
 ([fe80::736a:e1be:ec64:5740%6]) with mapi id 15.21.0451.014; Thu, 8 Oct 2026
 12:09:35 +0000
Message-ID: <576e4762-4ced-4abb-99ef-a895415e30af@nvidia.com>
Date: Thu, 8 Oct 2026 13:09:28 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] phy: tegra: Add support for Tegra238 XUSB pad
 controller
From: Jon Hunter <jonathanh@nvidia.com>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Thierry Reding <thierry.reding@kernel.org>,
 JC Kuo <jckuo@nvidia.com>, Thierry Reding <thierry.reding@gmail.com>,
 Wayne Chang <waynec@nvidia.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-tegra@vger.kernel.org
References: <20261007-tegra-phy-v3-0-d501de414710@nvidia.com>
 <20261007-tegra-phy-v3-3-d501de414710@nvidia.com>
 <y7p44oeut66usohn3hdfsx2fndlxhup6osok6uo27c5xreyjvv@uyk37kiedv3u>
 <25b96f0f-afc6-493c-9428-ab00a0bd9aff@nvidia.com>
Content-Language: en-US
In-Reply-To: <25b96f0f-afc6-493c-9428-ab00a0bd9aff@nvidia.com>
X-ClientProxiedBy: AS4P189CA0033.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:5dd::6) To PH8PR12MB7110.namprd12.prod.outlook.com
 (2603:10b6:510:22e::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR12MB7110:EE_|BY5PR12MB4068:EE_
X-MS-Office365-Filtering-Correlation-Id: c01e8912-cab4-4589-3830-08df253504ae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|23010399003|366016|1800799024|56012099006|4143699003|11063799006|10067099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: inXd7ly7KFI+Pj4f5nSZUInjlZ4nHYFmI8+kYmB/8qAqsPdF2zaaDRJIu036tHHlQ7RwXgEtKzv4UjYtN23s2tUf/m+4FqXB3+s7SuIeBO1Yth1m+ALkB5A38qeixrh9IVICVOs8CZHlnbpayYhDJCpBnZD5rzTelxCxyOWlIUUSO+FnRsCfAgjOxTpHaCR5mjB3EZsSfBSuQQd1M/pBXq4ru1mmC9pLTMwMZAJTTz7vobbFSL1iOiG89oNZaXRUAhJm7dxqA0NhBjAWJIAkCaIC1WTRB7+k5cfhbRUxxaBt3YLjRW496VcaI7XEOw8YaKXda18ZwKRlVNoSd9ZRHMEztZkhMNXAXMPmR7ePkUiOZ5vkf4/FqMMwZv3wpXWyg64jaRWQqgKj+g3Z6Mte9WFO429y6Ww1xDQERJMF29h5rDxpm1E3bGNSEaufr90IPExD2XVpv0gGZWXrUqX5ggP/gWgLdxVJH6wTzse1blGC/Du3lQtXWF6kwal47s/8BibdmGR4cTSxAsE3duqL3A/ScOEW+F0u2qdMW8dXQ56yOPcCZOamM8r+9wgTZLA+yxKM8W2UvIh7EVUeAdQYZlOsZZJ+e75D3ROI44dAbBxidyxWCD+xCfjm9hVFWGtB44vJjtl8p1bPbTnrnl0qLoSRaiC+4WIYGWPEXrFSHbE=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH8PR12MB7110.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(23010399003)(366016)(1800799024)(56012099006)(4143699003)(11063799006)(10067099003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VHZ1TDYwck8rL09pdGxOU3A0L2c2WmRnTzlXU1Y2WHNLbVJURHV5R0owSU1K?=
 =?utf-8?B?Q1ZZTXpBb1lkNEVNSVBlb3pzbG5Mb1BCVEMvUGxMWVNEQjJRYkIxMEgwUHR0?=
 =?utf-8?B?OWNrdmZ0S0RhQTE1MUZWYS85a0U3cjVTeFUyOVJFVXJERDk4anhxRVB6S0JU?=
 =?utf-8?B?bVN5c2UvekRZN3Z6N2pWWHZGTW9uakZ2aFVYS1IzQXJFVWM2aW9kT241NjhC?=
 =?utf-8?B?Rm1KQTBKR2lSRWlJNURoWFVCbDdWeW9zQWdYckZwNFFEU1ZaYWNUL3VUNkdD?=
 =?utf-8?B?TGtzcXlpamRWbVR1Q0N4RnNOMEtXZDUyODA4QXV4QTI4UkNnSVBvKzU2TGVz?=
 =?utf-8?B?L3NZNFlBYVMxM0E0dEp6MGc2S2k0Q0tqNkxTMUc1emhjVk9ENGJETTRJcENN?=
 =?utf-8?B?Wk8wcTViWCt3ODVVZnQrWlorY3pIdWtsako1dDhoODl1UmFlQk9kdTJqRmxa?=
 =?utf-8?B?dFNJV3EyZXk4eXJLWVlaK2dtY1dYRFNER2tXWHhzTWd2MUpuc3RLNDJXM09u?=
 =?utf-8?B?aHJFSXIyRlhvcno5bEpDL2VqcGRvMEVyRnhjVmRVOW4wQWdPSWI0eWJvN1dq?=
 =?utf-8?B?WUlrOVhGS0RFSlowR3YyL3cwd0tIdU5PODJvdHFVc2UxaFRaRWlvMUNMS2Z5?=
 =?utf-8?B?Qms2bXFINEVldzlKUUJjeGJoN3o2OTVzRnBJbUMwcjBtR3pkbXFLYW82dndk?=
 =?utf-8?B?Yk1CbDlHQkh1VHdPZ1NKVVVZa3kzTmhKV2UxZkF2ZnF3WndjMmR5TnlPLzJi?=
 =?utf-8?B?MUE0ZUVraXh4SVZPbFJ1TnNzNXhtcW0xVmgwZktGWUdFNURpSGZzb1F2YWRR?=
 =?utf-8?B?WVI5SWtEa1R3ajZtSVN5SFdtMDJZVTlJdmJQRlVNVFhBbkVlZm9Xbk52cVU4?=
 =?utf-8?B?OHVUOFdWdXZud3VYaUNvSlMyZVhtZ1VGN1dybC92Tm1YUHlUNUF1VkF6c09K?=
 =?utf-8?B?cDhNNDR3UkFRdWoxQ0dIdGNuNVEwSzZ5V040TWo5K3JWcTF4UDdWNDdmWWdR?=
 =?utf-8?B?WE5yTmI0Mk84eXFwZWRrNENVVGlIODgzcmFhTkZxT3F4TUNLcXUyNE1EdkRR?=
 =?utf-8?B?MGdpOUpxenpHckFkVC9ZQnNyOHlzTW4xQ1I1cTU2a21aZGJXdWlGV1VOQmJ3?=
 =?utf-8?B?eGROOG1kKzRFMFpUbFA5RzBiSkpjMGdpQXFlV3BPYnorVmhMYVhNOUpyTDNr?=
 =?utf-8?B?b2hURTJGRk16WVZSQ0dhK0g3c1JLK21WbnhiZnZzRDhZMzVZbUIxTVZzTThs?=
 =?utf-8?B?REJnTFRkUHNZemdtUzBORmdIWm5UYjhTMFdmNE1WOTN0T0lSQ1FYcWs5dUYw?=
 =?utf-8?B?alNoN0V6QVcxVEtiZXZXYmE5elpGZEVHR2RDUzcreUZwa0pSazNudkNGdDdj?=
 =?utf-8?B?eXZ4bUZlZlpMMWNoVkZNaGd3Ni9UWDlDZVc4dFFxcnA5RHB1bVFXa2hkSGpU?=
 =?utf-8?B?Q1RwL1lqSTFlNGYwN0dRamwxSSszeWRhNjR1NDZrMkJQZEhWd082K1ErTENW?=
 =?utf-8?B?eW0veU5CSHVtM2NaRjh3N3VJbzJIckVsZDlZNHJycHgxY3BxRGRDdkNHZjRJ?=
 =?utf-8?B?USsySHo0Vm1kazY2aXdjb2d2OHNNdHkrOFFDSUJnZUovSnd5U2czZVVuMlZs?=
 =?utf-8?B?eEdFMWFIdHFLWWh2Q2ZxSFRzSGVuSWdCV0cyMWNUdFlrOGlyaGhpeVJoeUp4?=
 =?utf-8?B?bnZ2cnhBK21pZDh4S0s2OE1TWHVmSkxZdnE3Q0xRcVUwT1UzK3F4NTFCWVRH?=
 =?utf-8?B?QXpuZzJvSzhNNkNkcGUzeEVRbm5hbFZHZDdSTUFnZ3B4Z1BBR0pDMVMzdTcx?=
 =?utf-8?B?eFdKREdNWlhwNlpyYW9IZnNqc3kxOE5QOFJHRjlVTkt1MTcybk9DdVBOVEIz?=
 =?utf-8?B?RDYxbnk0VmdXOTBMUmEyeTBrdWRST0dWRmpjc0xncW9VcWVwUzdwS256N3RX?=
 =?utf-8?B?eWpwVVkyZVdxR3FEVHM3Qk9tQzBabzJpM1M0U2E2dHRadGJmMVgvUGRCeGJW?=
 =?utf-8?B?M3oxaFNXRU9WVytuc1hhSWxUS2RmakVvRlJIRlJib21vRmxqUHFPWmZHa25B?=
 =?utf-8?B?S3ZoVkZqMzNPMUdzR2tZZVZXc3RhZFRpQ2RVSkkyRUVUSzArT21sTm92TDNw?=
 =?utf-8?B?RUtMZVlkOWlrUGl5dk82eXpCZFJwbFhsMmdlOEYza2F3SXFUTjdwYVhQOEpE?=
 =?utf-8?B?UzRKSG1rYmFWOXowb0c2SkM3YlQvQkFNZXJUUWoxd3U1OEVRa1RDdTh4UStl?=
 =?utf-8?B?anpYREc2RFVtMGhTM3Vvb3hUTmt4RjY1SUdwU3Nkd0FvMUg5dGRGMFJ2VllZ?=
 =?utf-8?B?bTV1bFJyVElXcHZMMit6dEkxQkpXYmg0bm9QZWo1Qms4Z1pBM25iUT09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c01e8912-cab4-4589-3830-08df253504ae
X-MS-Exchange-CrossTenant-AuthSource: PH8PR12MB7110.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Oct 2026 12:09:35.3161
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ys3H6ciLKF54WvxH3WJkBoQ+V990Jkpvw69+/K2NhWT5L9sTmHVPqzFmdxvhFjnfGBWL05QGUA5rQEaWMhAEcA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_050942_523115_1255AB4E 
X-CRM114-Status: GOOD (  14.21  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Ck9uIDA3LzEwLzIwMjYgMTc6MjcsIEpvbiBIdW50ZXIgd3JvdGU6Cj4gCj4gT24gMDcvMTAvMjAy
NiAxNjoyMCwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdyb3RlOgo+PiBPbiBXZWQsIE9jdCAwNywg
MjAyNiBhdCAwMzo0NDo0M1BNICswMTAwLCBKb24gSHVudGVyIHdyb3RlOgo+Pj4gQWRkIHN1cHBv
cnQgZm9yIHRoZSBUZWdyYTIzOCBYVVNCIHBhZCBjb250cm9sbGVyIGJ5IHBvcHVsYXRpbmcgdGhl
Cj4+PiBUZWdyYTIzOCBzcGVjaWZpYyBTb0MgZGF0YSBmb3IgdGhlIGNvbnRyb2xsZXIuIFRoZSBU
ZWdyYTIzOCBoYXMgdGhyZWUKPj4+IFVTQjIgYW5kIFVTQjMgcG9ydHMsIHVzZXMgdGhlIHNhbWUg
cG9ydCBvcHMgYXMgVGVncmExODYgYW5kIGhhcyB0aGUKPj4+IHNhbWUgc3VwcGxpZXMgYXMgVGVn
cmExOTQuIER1ZSB0byB0aGUgZGVwZW5kZW5jaWVzIHRoZSBUZWdyYTIzOCBkZXZpY2UKPj4+IGhh
cyBvbiB0aGUgVGVncmExODYgcG9ydCBvcHMgYW5kIFRlZ3JhMTk0IHN1cHBsaWVzLCBkcm9wIHRo
ZSBjb21waWxlCj4+PiB0aW1lIGd1YXJkcyBhcm91bmQgdGhlc2Ugc3RydWN0dXJlcy4KPj4+Cj4+
PiBTaWduZWQtb2ZmLWJ5OiBKb24gSHVudGVyIDxqb25hdGhhbmhAbnZpZGlhLmNvbT4KPj4+IC0t
LQo+Pj4gwqAgZHJpdmVycy9waHkvdGVncmEvTWFrZWZpbGXCoMKgwqDCoMKgwqDCoCB8wqAgMSAr
Cj4+PiDCoCBkcml2ZXJzL3BoeS90ZWdyYS94dXNiLXRlZ3JhMTg2LmMgfCAyOSArKysrKysrKysr
KysrKysrKysrKysrKy0tLS0tLQo+Pj4gwqAgZHJpdmVycy9waHkvdGVncmEveHVzYi5jwqDCoMKg
wqDCoMKgwqDCoMKgIHzCoCA2ICsrKysrKwo+Pj4gwqAgZHJpdmVycy9waHkvdGVncmEveHVzYi5o
wqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAzICsrKwo+Pj4gwqAgNCBmaWxlcyBjaGFuZ2VkLCAzMyBp
bnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3BoeS90ZWdyYS9NYWtlZmlsZSBiL2RyaXZlcnMvcGh5L3RlZ3JhL01ha2VmaWxlCj4+PiBpbmRl
eCBmNWVkOTU4MmQ4MGIuLjAxOGE0Y2FiMmI0MCAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvcGh5
L3RlZ3JhL01ha2VmaWxlCj4+PiArKysgYi9kcml2ZXJzL3BoeS90ZWdyYS9NYWtlZmlsZQo+Pj4g
QEAgLTgsNiArOCw3IEBAIHBoeS10ZWdyYS14dXNiLSQoQ09ORklHX0FSQ0hfVEVHUkFfMjEwX1NP
QykgKz0geHVzYi10ZWdyYTIxMC5vCj4+PiDCoCBwaHktdGVncmEteHVzYi0kKENPTkZJR19BUkNI
X1RFR1JBXzE4Nl9TT0MpICs9IHh1c2ItdGVncmExODYubwo+Pj4gwqAgcGh5LXRlZ3JhLXh1c2It
JChDT05GSUdfQVJDSF9URUdSQV8xOTRfU09DKSArPSB4dXNiLXRlZ3JhMTg2Lm8KPj4+IMKgIHBo
eS10ZWdyYS14dXNiLSQoQ09ORklHX0FSQ0hfVEVHUkFfMjM0X1NPQykgKz0geHVzYi10ZWdyYTE4
Ni5vCj4+PiArcGh5LXRlZ3JhLXh1c2ItJChDT05GSUdfQVJDSF9URUdSQV8yMzhfU09DKSArPSB4
dXNiLXRlZ3JhMTg2Lm8KPj4+IMKgIHBoeS10ZWdyYS14dXNiLSQoQ09ORklHX0FSQ0hfVEVHUkFf
MjY0X1NPQykgKz0geHVzYi10ZWdyYTE4Ni5vCj4+Cj4+IFRoaXMgaXMganVzdCBhIG1lc3MuIEFz
IGEgZm9sbG93dXAgcGF0Y2gsIGNvdWxkIHlvdSBwbGVhc2UgcGxlYXNlIHN3aXRjaCB0bwo+PiBn
ZW5lcmljIEFSQ0hfVEVHUkEgS2NvbmZpZyBvcHRpb24gYXMgZG9uZSBpbiB0aGlzIGNvbW1pdCwg
NmI1ZTJmNzBhOTVjCj4+ICgiUENJOiBkd2M6IHRlZ3JhMTk0OiBCcm9hZGVuIGFyY2hpdGVjdHVy
ZSBkZXBlbmRlbmN5Iik/Cj4gCj4gWWVzIHRoYXQgd291bGQgYmUgYSBnb29kIGlkZWEgYW5kIHll
cyBJIGNhbiBkbyB0aGF0IGFzIGEgZm9sbG93LXVwLgpJIGRpZCBzZWUgdGhlIGxhdGVzdCBzYXNo
aWtvIHdhcm5pbmc6CgoiRG9lcyB0aGlzIGNhdXNlIG1pc3NpbmcgZGVjbGFyYXRpb24gd2Fybmlu
Z3MgKC1XbWlzc2luZy1kZWNsYXJhdGlvbnMgb3IKLVdtaXNzaW5nLXByb3RvdHlwZXMpIi4KCkkg
YW0gbm90IHNlZWluZyBhbnkgd2FybmluZ3MgYnV0IEkgY2FuIGFsc28gYWRkcmVzcyB0aGF0IGlu
IHRoZQpmb2xsb3ctdXAuCgpKb24KLS0gCm52cHVibGljCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
