Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 449B4CA5FA2
	for <linux-phy@archiver.kernel.org>; Mon, 28 Sep 2026 13:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Cc:To:From:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nhJckMD3pBIod8zNX/YjSWYLbsbqSpK3gDdqOoTFwIE=; b=j3A2IyFLd9DhaaPySmHqBVGoX6
	evSYMu+x1cAv+/1T7KaNedGxD8GRRunuE4FWfwRZzvz7vPKoRJYK8+bCyuAFV8Yz4qtgCvskia+oZ
	VPiHrF+GzL+p//Wrm0JkKw3TP6vcoYG/xU14to9I3B81kysYDbSzSEmUJUTIVhnWstphNJt7iqwry
	Mkw2XvoEWe+rwcLTZjZgvdN9Ci1JDg+Lmtzzq2RCSrDbU0xTjKK+Mx8OK6bp96276F1an0fccfV+f
	cKg994Jvg/fd8MEL4q7jHPD1n4WRFsjNKj97B+ps+/vOEf793FnN/8nBvQZ5Dnmk+uprACgQW7UN9
	DCRp6seg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBBlM-00000000i1p-3ILH;
	Mon, 28 Sep 2026 13:51:24 +0000
Received: from mail-westus3azon11011017.outbound.protection.outlook.com ([40.107.208.17] helo=PH0PR06CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBBlJ-00000000i0F-0rn0
	for linux-phy@lists.infradead.org;
	Mon, 28 Sep 2026 13:51:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pZNjNc8l+rqq7GJdf6MeNR5tFY8Ez/r9XihfLkxjSlCzj7pt/2K97fY1foNh3m5CQ+4g0w99Kt5q7KDXu9B61DJ8pE6eQ8DH0qJmVJLRvyUHFkfEQ7tb+YrnaO6Rtx1iOQf4EcRyCmSibbMRhqIkxLSEwrOi3meznGSCymHmlq3hl5mnJnrDxI6z9Ll6EbaHVMYpyhqEimZ35b40Tiruz8j/RTByrdT9/6WZEAKseYHtHPz7Liy3Nuueb0zOaDHUyRYic+GqWjFdx/pCJQGXpDTTCuxqKocfH8QUlyKyRPlw3/joaGCUnBGcufDyZT1fAdK0JecMVH+PI7wIDZcR0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6U/hKKZRrRw4rOo6Z6BeiXo33OorVON/Zk9rQWV7flk=;
 b=t6HR0qnktnZgivb+8NC3BZet2Yw80USKAO99wCGAAaIaP0HH6mtpkQ6k4oKP08lTBcaKTaRtKl5yNEG/zTQNOBTU6VA7PTGUijSE6OtDL+RhvRC8VmJqGJ2K0xzbUKwiS0UgWsjq0WAwZz4t/AcO3gxnCbDQKeeYo1ejILqF7k0gRytYZqjbig01ju3rSbg9FYLTjQHSkpbTQd1bEsIqE63MBZcwYKdkKA4wP1ZL/ht44l0tl7YcldDTD8xlhj/Wd3gmyR4Mmb13RfMK5aLKbSt24fyIEhpv/OQHq1qTxHs2mmuEBfI28nDW+L/xHyeD7t3TAhoiHvlvDUuMnhJaNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6U/hKKZRrRw4rOo6Z6BeiXo33OorVON/Zk9rQWV7flk=;
 b=IHzRKkRO5OrWKWX0Cx2uQd428YeniF3/7XyQdPge41Rk+uapDes8w5l861DC85PkaOufYbBGL5tkSnes9LHzzKjURk70P9XWv6tnZm6NzBRBlvaKlSlm6JtCzLnwT4nQ4eK34xjJF+tn+AE/JS6Vie3siDWVWd8J9mBIQf92eKxNGYR9H/kv5m0znSJgv25Nxs23w1v118mXrx9loILTKNtP8bZhXlRnMB6U9kEmLN2JtlHIh2oS47WTRoWG0oOcGrfY8eUlnv7beiNkQChfTab61U7C8fObkfjd3snI0ShzKzXLAnvd0JSeqjPHCT1d8b+TilK5wbOMt737TGIVxA==
Authentication-Results: mx.microsoft.com 1; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from PH8PR12MB7110.namprd12.prod.outlook.com (2603:10b6:510:22e::11)
 by PH0PR12MB7485.namprd12.prod.outlook.com (2603:10b6:510:1e9::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.451.24; Mon, 28 Sep
 2026 13:51:11 +0000
Received: from PH8PR12MB7110.namprd12.prod.outlook.com
 ([fe80::736a:e1be:ec64:5740]) by PH8PR12MB7110.namprd12.prod.outlook.com
 ([fe80::736a:e1be:ec64:5740%6]) with mapi id 15.21.0451.014; Mon, 28 Sep 2026
 13:51:11 +0000
Message-ID: <b93e29fd-fc1b-46db-b8f6-f24a5e3d39ae@nvidia.com>
Date: Mon, 28 Sep 2026 14:51:05 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 0/4] phy: tegra: xusb: Add Tegra264 support
From: Jon Hunter <jonathanh@nvidia.com>
To: Wayne Chang <waynec@nvidia.com>, Vinod Koul <vkoul@kernel.org>,
 JC Kuo <jckuo@nvidia.com>, Thierry Reding <thierry.reding@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260903071937.533646-1-waynec@nvidia.com>
 <f74e21be-c66a-4a26-8b32-389c2d118c02@nvidia.com>
Content-Language: en-US
In-Reply-To: <f74e21be-c66a-4a26-8b32-389c2d118c02@nvidia.com>
X-ClientProxiedBy: AS4P195CA0005.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:20b:5e2::14) To PH8PR12MB7110.namprd12.prod.outlook.com
 (2603:10b6:510:22e::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR12MB7110:EE_|PH0PR12MB7485:EE_
X-MS-Office365-Filtering-Correlation-Id: fbbf3311-56e1-4841-5b54-08df1d678de3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|10070799003|23010399003|376014|7416014|1800799024|366016|10067099003|56012099006|11063799006|6133799003|22082099003|18002099003|4143699003;
X-Microsoft-Antispam-Message-Info: z/6jOyXdIWTEfRhS6o9pYn7UvR7Weu9RBSyCN4DeGK4HELwovJ1LlZRR8MJHc0zr9JbqlTMccnncwIjDcvVkqec3erYsjPN1VfgKqOPowYDsImK/uniVsWwZpI2t5TMXXquh3/yAvQWYxH9xQg4XoAn7dGg6XgUkhPiv5ZGoHmmYQcwWMNQWyrBE1xoil8Bak7ML+m9WPRFTw/cef7oxBFVlC9rdcVUWf/ltqfNDG1eZtqwlwczpHcbM/4us4wX9OFSRJVhjtTL56pKj7ybOMZyEroxXho57FOuTFto+63dLmjF9rGYvowSEIbpXPm5y9v57VinBdeP2sG36jKhHvXlLkt1x7O3pBnRkM/IZqFrIvqh2/ulrydzZUUB0hvVDTx6HbJKD/8zyoogsPZaBnT0QK7B2sFaRp2JWRE0ekFLquXpV+zDmUULQ58TkIx6No2JnBIVutD1GWEe+MsiNDNzV+WvQGlmn89SQBQbWv0BJSnyAE5IFVzwQsOydnJZZRfTFDp3nktXOWZTtMTRv1Bm1DKGm1hWqGeSOybJuw/gslfZA5xyyJo+C1Lit1n64aqEb3eta/MUHT4dziunVBGyJjUaZk8tO0lyIwfGEQzFZ/rvJY2yCE1onuCbvbUtDnoz1+c4LQomrA0JVa0hilzYXbWTuSqs7JczLRH3GhAo=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH8PR12MB7110.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(23010399003)(376014)(7416014)(1800799024)(366016)(10067099003)(56012099006)(11063799006)(6133799003)(22082099003)(18002099003)(4143699003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TWNKak5VZDA0WGg0UGVaOUZSQXloZWh4QjJzL1pxbXpZbXorNU40ZFhYK3Ni?=
 =?utf-8?B?WU1tQVQrQ0pGTU0wdkVJbWRudTdscFNsTkY3bkJYeTdvQS9RTC9DY3dKRW9P?=
 =?utf-8?B?SmdhcFVQTVVvQWpVd0JZekdsY2swUlRHeDk3VzRJTmxGTDdLaXBJMUthU0FL?=
 =?utf-8?B?UEUxU3Y1NC9GKzFsc2lzR1JJajRxUCs3eDJZd0FsZkZkcDdHODRpcGZWWW1i?=
 =?utf-8?B?cU9uTUtDeDJlTERZMHBiMXY0SG40aVJOOW1nWVhXQjZhTUZoY3B3cG8wMHBj?=
 =?utf-8?B?YllzQndoQmUzd1ZqN0JnVnFxZ0l0cFo5eEcwbk1tWmFOekVFT05PZFVXQ0FZ?=
 =?utf-8?B?bWdKMWQxTFlXTnlYWmdMT1hYMW9WSmEwaHJNTS81cnRjT0RycnBpbTJaN3Mw?=
 =?utf-8?B?c01KSCtDdlBXOXV3dkFTK3FtcEovZ0VCYTM2SGVHT0NJSzhJK1NWTStHMCs0?=
 =?utf-8?B?WWYyaGJ2NmV0NjVMNU1HaUFYS3FOR05QaE9TdzFPNGxnVTZwVFZwcEtWYjVH?=
 =?utf-8?B?TVlLRmJ3SFhuYUFycFRNc2Z3ZmE2MHVvRlNSNS8zRXAzdGplZGYwcCtIeHd6?=
 =?utf-8?B?US93cWM4clVZU0VkL2dzZDlRR0o3eEtDRURBQy9BWitzUGJYcHJ2VFYwVm45?=
 =?utf-8?B?cEp5Ulh2bkRtRXFrOFdVTnM5NnVMZ3FqU1dzQnRWaDFxaEVXdWRnb1VweW1L?=
 =?utf-8?B?SjV1aDBoRER6UzBVRXRxTXEzNU9RRU13VkZQTGJzbHlnaXpOZmxmaHN2UmtX?=
 =?utf-8?B?RHF2WEtqUUFLWHQwZzZnd0RpVlFLbW5ibVE0b1JxSVR5ZnZGWXloU0VIK0FM?=
 =?utf-8?B?WERLYXZqeFF4bDF5SGpWVWxXRzVpSEpRaTlWVitWNWc4ZlRyTVVrdE1IMXp4?=
 =?utf-8?B?STJIYkV6ZEVLV3E1bXBnT3hiZ2c4cndNREJDWGsrQ2lNNW9uQXoyTEV1alVo?=
 =?utf-8?B?bXBuQjZxSkdVZXJZYWZNdTYycVpxeG9oUlluRHY0VzBqbWI2LzBPK0dOV3JZ?=
 =?utf-8?B?MVd2QlQyT0xkOGFia0VSakRob2RXRWFiZ3F5bFA5OXV1NHJpWjNpcmt2YWN1?=
 =?utf-8?B?eGdaamxwZ25vWEdWNklHekxtV1dTai8ySWJmVHM2WHJ2b3N0RDU4QmJ3a0tO?=
 =?utf-8?B?WGhPa29yRW5NZ3BhUmdqdjhteEhlbzZjcTg0eTVvcWE2N2hIQTZxTGNQWEp3?=
 =?utf-8?B?OWhTWXpyUkRXUE5YZm0wOFIrQlV6ZEI0SGh5RDJubjJSRDlXNXQ2V1U3YWdU?=
 =?utf-8?B?UnZQdjlVY0VKLzFlLzlEY1lJSXNad093Mk1vY3NjL1FoY3hFQ3k2dXpDbkIx?=
 =?utf-8?B?Sk9QYUlMMDBtUVo2V3Q0bERCODUxSHMwT1ZtNFR2c0FwU0xrNlB6YnhMWldq?=
 =?utf-8?B?RW1OZDdMMDlMMkpqU1lVV2tmeW8vcWVZdFZFRFk0d0pXdHl2OXNpa3ZrZFpG?=
 =?utf-8?B?dnVPTTRyVkVwVVlwSHlBelI4RDNqVHA1TVJVdlFjcFlnZkcxcVQzRndEbUxw?=
 =?utf-8?B?bXdXZUt2dFZIUU9EcG5TaHdvdFlLbGNOM3B6aGlJUUlHR0FFUXRuaXFScm44?=
 =?utf-8?B?SElBbW9BYitETW1QSXFQVkY5ZGYxaDcrR2c3RWJXZU9aM24wZkh3dENBYjhq?=
 =?utf-8?B?WlZRVXgvbnUxNlNhdmp0dThSVURFWDNiUUdGd2tHTmFEcis2eDB5dE1scWlR?=
 =?utf-8?B?TVd6RVJGNlI1aUdkNlp5aDBFbGFIQnBrZ1JJMzdjQzBnOHk2YjR4T3ZKb3k3?=
 =?utf-8?B?RmIrVUwrc1U5eG1HUlM2Mk93cXVTNXorVWFMOTdCeFVZRUdpS1N2cFBzb09B?=
 =?utf-8?B?MTdhcldsaXVxTHIyWEUycEZEaUswVnRHMHJQZlM4V20ydFczUWE4WXhyWGFN?=
 =?utf-8?B?N2RLR2ZldGRBVVhTclduZVlFdk92MkYzdDFFNjdZOGhrZVZna0l2OVljYjdF?=
 =?utf-8?B?K2hIMldtU3pnM25PcnJ5ZnRtNGxOR0U1NlFCM3dycXRkVjRaQlU0Sm1KZU9N?=
 =?utf-8?B?UGtGMlNLZm1EYzVVb3VGaTM3YWprSE1LM0F4L2tHWmRxb2RsNnBBVzVIdTVB?=
 =?utf-8?B?WStZZ3FUeTdMY2tJeDI4aDl5cWRlaXdyWVNoeWtaUFh3TWJQa0ltVXAyc3A3?=
 =?utf-8?B?TWtYeXM4VHZmWmZlcE9pWjUvS2RUcWJFUnNoRjNNZ1h6alBwSm0rcmE0a2Vz?=
 =?utf-8?B?anN3MDN1QllGOWdHZStqNVkxamp1NXBGKzNVdEVoWkhZMmRnYmxVMFBxNm4z?=
 =?utf-8?B?MUtPazJDdU10OTJQNlZ1L1NJNnVoTExWTkNaVU9NOW80eHcvMldNS2tZQXY1?=
 =?utf-8?B?NmNnSTlTTURPdVd6WUJXVHYzN0YvTmJLTEJuVWxzbXZJdVpaUEtscGw2Z1ph?=
 =?utf-8?Q?ucdT7D4seOobzlxfO7WSUCrBOK5GNlQz4VTWbsJECL1Fl?=
X-MS-Exchange-AntiSpam-MessageData-1: evMwCfPcDFLA1g==
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fbbf3311-56e1-4841-5b54-08df1d678de3
X-MS-Exchange-CrossTenant-AuthSource: PH8PR12MB7110.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Sep 2026 13:51:11.3512
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JJcwY6NHroLE2ruouMcETSJhpZm1ZugAKTx1qlnBqbkyeyFgEj9t9UsF5k4PXZ7kW+kyiM7E/6qUKl/xv6vaTw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR12MB7485
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_065121_271951_9C5BB30F 
X-CRM114-Status: GOOD (  13.77  )
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

SGkgVmlub2QsCgpPbiAwOC8wOS8yMDI2IDE4OjAxLCBKb24gSHVudGVyIHdyb3RlOgo+IAo+IE9u
IDAzLzA5LzIwMjYgMDg6MTksIFdheW5lIENoYW5nIHdyb3RlOgo+PiBBZGQgVGVncmEyNjQgc3Vw
cG9ydCB0byB0aGUgVGVncmEgWFVTQiBQSFkgZHJpdmVyIGFuZCBpdHMgYmluZGluZywgYXMKPj4g
cGFydCBvZiBlbmFibGluZyBVU0IgaG9zdCBmdW5jdGlvbnMgb24gdGhlIFRlZ3JhMjY0IEpldHNv
biBBR1ggVGhvcgo+PiBwbGF0Zm9ybS4KPj4KPj4gVGhpcyBzZXJpZXMgd2FzIHByZXZpb3VzbHkg
cG9zdGVkIGFzIHBhcnQgb2YgYSBzaW5nbGUgOC1wYXRjaCBzZXJpZXMKPj4gY292ZXJpbmcgcGh5
LCBVU0IgaG9zdCBhbmQgYXJtNjQgRFRTIGNoYW5nZXMgdG9nZXRoZXIgWzFdLiBQZXIgcmV2aWV3
Cj4+IGZlZWRiYWNrLCBpdCBoYXMgYmVlbiBzcGxpdCBieSBzdWJzeXN0ZW0gc28gZWFjaCBtYWlu
dGFpbmVyIGNhbiBwaWNrCj4+IHVwIG9ubHkgd2hhdCBiZWxvbmdzIHRvIHRoZWlyIHRyZWU6Cj4+
Cj4+IC0gcGh5OiB0ZWdyYTogeHVzYjogdGhpcyBzZXJpZXMgKGR0LWJpbmRpbmdzL3BoeSArIGRy
aXZlcnMvcGh5L3RlZ3JhKQo+PiAtIHVzYjogaG9zdDogeGhjaS10ZWdyYSArIGl0cyBkdC1iaW5k
aW5ncy91c2I6IHNlcGFyYXRlIHNlcmllcywgdG8KPj4gwqDCoCBmb2xsb3cgc2hvcnRseSAod2ls
bCByZWZlcmVuY2UgdGhpcyBzZXJpZXMgb25jZSBwb3N0ZWQpCj4+IC0gYXJtNjQ6IHRlZ3JhIERU
UyBlbmFibGVtZW50OiBzZXBhcmF0ZSBzZXJpZXMsIHRvIGJlIHNlbnQgb25jZSBib3RoCj4+IMKg
wqAgb2YgdGhlIGFib3ZlIGhhdmUgbGFuZGVkLCBzaW5jZSBpdCBkZXBlbmRzIG9uIGJvdGgKPj4K
Pj4gUGF0Y2ggMS80IChkdC1iaW5kaW5nczogcGh5KSBub3cgc3BlbGxzIG91dCBpbiB0aGUgY29t
bWl0IG1lc3NhZ2Ugd2h5Cj4+IFRlZ3JhMjY0IG5lZWRzIGl0cyBvd24gY29tcGF0aWJsZSBzdHJp
bmcgaW5zdGVhZCBvZiBmYWxsaW5nIGJhY2sgdG8KPj4gbnZpZGlhLHRlZ3JhMjM0LXh1c2ItcGFk
Y3RsLCBwZXIgQ29ub3IncyBhbmQgS3J6eXN6dG9mJ3MgcmVwZWF0ZWQKPj4gcXVlc3Rpb24gb24g
djEvdjIuCj4+Cj4+IFsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC10ZWdyYS8yMDI2
MDgzMTE4NTgzNS4zNzMyNzA3LTEtd2F5bmVjQG52aWRpYS5jb20vCj4+Cj4+IFNpbmctSGFuIENo
ZW4gKDEpOgo+PiDCoMKgIHBoeTogdGVncmE6IHh1c2I6IFVzZSBkZXZtX2Nsa19nZXRfb3B0aW9u
YWwgdG8gZmV0Y2ggVVNCMiB0cmFja2luZwo+PiDCoMKgwqDCoCBjbG9jawo+Pgo+PiBXYXluZSBD
aGFuZyAoMyk6Cj4+IMKgwqAgZHQtYmluZGluZ3M6IHBoeTogdGVncmEteHVzYjogQWRkIHN1cHBv
cnQgZm9yIFRlZ3JhMjY0Cj4+IMKgwqAgcGh5OiB0ZWdyYTogeHVzYjogSW5jcmVhc2UgdGltZW91
dCBmb3IgVVNCMl9UUktfQ09NUExFVEVEIHBvbGxpbmcKPj4gwqDCoCBwaHk6IHRlZ3JhOiB4dXNi
OiBBZGQgVGVncmEyNjQgc3VwcG9ydAo+Pgo+PiDCoCAuLi4vYmluZGluZ3MvcGh5L252aWRpYSx0
ZWdyYTE5NC14dXNiLXBhZGN0bC55YW1sIHzCoCAxICsKPj4gwqAgZHJpdmVycy9waHkvdGVncmEv
TWFrZWZpbGXCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzC
oCAxICsKPj4gwqAgZHJpdmVycy9waHkvdGVncmEveHVzYi10ZWdyYTE4Ni5jwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAzMSArKysrKysrKysrKysrKysrKysrLS0tCj4+IMKgIGRy
aXZlcnMvcGh5L3RlZ3JhL3h1c2IuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHzCoCA2ICsrKysrCj4+IMKgIGRyaXZlcnMvcGh5L3RlZ3JhL3h1c2Iu
aMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAz
ICsrKwo+PiDCoCA1IGZpbGVzIGNoYW5nZWQsIDM5IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25z
KC0pCj4gCj4gRm9yIHRoZSBzZXJpZXMgLi4uCj4gCj4gUmV2aWV3ZWQtYnk6IEpvbiBIdW50ZXIg
PGpvbmF0aGFuaEBudmlkaWEuY29tPgo+IFRlc3RlZC1ieTogSm9uIEh1bnRlciA8am9uYXRoYW5o
QG52aWRpYS5jb20+CkFueSBmZWVkYmFjayBvbiB0aGlzPwoKVGhhbmtzIQpKb24KCi0tIApudnB1
YmxpYwoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
