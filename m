Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98ABCD0C85C
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jan 2026 11:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Vsy0FDWlWsWmXd0m45ClmRgjdoQxHWvM4H5dJuiCJ+c=; b=c64UQFJiRYxTU2srBzVsAEu2Yu
	60NraF/bEZCoCU/rfP9b81BYmteEe2V7IQ0zGltWZz/dgh96bolTrTA7bTKtMWERjRK8XJPs2vLt3
	rlcll0M31++mBpcNOOhTSfBQzZGtQh8javPobMzKaNhj0V5vXSynpdQBiAxX5hnagVut1wGbx967q
	6k48gBFi5fLV/9mIDqqroYmOq/sHv09OMCwHWqq2yr9CchDPHYFyxlugC1o+JQnjQTlhxmahqUaez
	H9kUtyKBrekMNRzq/oeMr4IFKnstga22nB041mqCm3KLa4jsf0SmFnYOS0sSKC26urW3MNd89cgu6
	GIU3DRjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfcgP-000000071r1-0uj2;
	Tue, 13 Jan 2026 11:35:33 +0000
Received: from mail-westcentralusazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c112::7] helo=CY3PR05CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfcgM-000000071qc-1dK0
	for linux-phy@lists.infradead.org;
	Tue, 13 Jan 2026 11:35:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T8DLe3B+ms73hRDnMtarX5eJPA80lgB/bbPjM3YgdWvh/jzZ/G38uhmupHJ5SAL0g7Ohu29R9CEmMo/1daXSKM8mqFXqDG0Rc2GjG6fWeBtzvK6sRYOwc9CrFOiS8IZZfxyhaiYgUyDroITtO27lc9B2yUp6LR6KuxVTiJbg1hQqzPrHwTWazgAQxr0LA9w9RAj7kV2XsuNrrVram9X0Ycc0HuZ5j/J4B+In/BFqzJ+Pn9LoVFRjtswkctQp94eyvitZ+kiAMQ9wGw4B4X9jTl7w12AplVE71aEopLBKdf5MejXdXrOkxsiCAFjdH6wb5xz2HDAOTprMYzJEoqEmSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oMDWD852+dF9qs/kMu3jAhQuwXlCR4/6K35U724fD2g=;
 b=aIIjjOw0a2iUZrAAlLnvWDkpAHyO0Nbqwh19zuCdX/Jpr5kePDPZmXWiHjf8HLGbKDxu+3g+H1D6ivdzdh/nCocoEu/CSv0znJNVGZjljghg3FX9Q+Gtc9RZSKARxitvAGXAw29DV9G0C0KqXgQhHFkjHn7LJUF2Ay5P/An+83bUoZSHuyKEA9GF6J/NhmgdVguGuHa6cEhnCP4bq5yX4U8Geymg7TLtl95oKtSmPYoHtoznYTuh+wAOquS9rJohSf3qVlMTn4GO5mpVHkO0xQbqIdrYel3TSV86eofLySZ8LG2QTCSnGtv/rmI7E29elOh10uxn05hu8f+YkIJZpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oMDWD852+dF9qs/kMu3jAhQuwXlCR4/6K35U724fD2g=;
 b=aC+m14m5qvnKzERIcowSH6kRihjCM4xPYK1pw+fiMfNaDfC5zWHpdmPJaalGkFH3y4iZHMz67KGjIAfQc6RY87h4xqWWc5BWx8Xe90KjUEJsatVuZBuQ2P1i1YJMt8MNh4v8f+bcuH9V3Ja2MI3AbA+9MsAE1Dwr4fVtLggTTLrw0I30vlgd3ODwWv1NduLeOJ2nn+D2gAF/13Ym382mdZ38BFjsA3cwXPpcu8nyXl9JTKeIM75XDxJawneZGMZQ+4elKyIUHjFG0+7tn7wvqPIFSt1Rev9UuL+7rlmUBAFaFOOW632ekcJkj/euGhYkHRHcj98+RgXY3oRVbPjCjQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS2PR12MB9750.namprd12.prod.outlook.com (2603:10b6:8:2b0::12)
 by SA1PR12MB7224.namprd12.prod.outlook.com (2603:10b6:806:2bb::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Tue, 13 Jan
 2026 11:35:22 +0000
Received: from DS2PR12MB9750.namprd12.prod.outlook.com
 ([fe80::56a8:d6bf:e24c:b391]) by DS2PR12MB9750.namprd12.prod.outlook.com
 ([fe80::56a8:d6bf:e24c:b391%5]) with mapi id 15.20.9499.005; Tue, 13 Jan 2026
 11:35:22 +0000
Message-ID: <e9f18b0d-6462-43e7-955f-45337914b321@nvidia.com>
Date: Tue, 13 Jan 2026 11:35:18 +0000
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] phy: tegra: xusb: Fix ordering issue when switching
 roles on USB2 ports
To: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>,
 Mathias Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thierry Reding <thierry.reding@gmail.com>, JC Kuo <jckuo@nvidia.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-usb@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20251204-diogo-tegra_phy-v1-0-51a2016d0be8@tecnico.ulisboa.pt>
 <20251204-diogo-tegra_phy-v1-3-51a2016d0be8@tecnico.ulisboa.pt>
From: Jon Hunter <jonathanh@nvidia.com>
Content-Language: en-US
In-Reply-To: <20251204-diogo-tegra_phy-v1-3-51a2016d0be8@tecnico.ulisboa.pt>
X-ClientProxiedBy: CH0PR07CA0027.namprd07.prod.outlook.com
 (2603:10b6:610:32::32) To DS2PR12MB9750.namprd12.prod.outlook.com
 (2603:10b6:8:2b0::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS2PR12MB9750:EE_|SA1PR12MB7224:EE_
X-MS-Office365-Filtering-Correlation-Id: ca79e03b-e4d9-4b1d-2c04-08de5297d693
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|366016|1800799024|921020|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OFNQLzJITVRacWlkbDVCcFcyZUdQU0ZBdllzUUFxdlMyM2xCZDBaenpxSGxr?=
 =?utf-8?B?S0lBUHJjZm5pOVk5OEZrZWw4M04rUCtvWUs3eGRFd2cvd09hcXVmdmIySXlo?=
 =?utf-8?B?MnZ5NHJpOVprRS9xOXJTdlJ4T0Z4c3hhK1V2NS84dlRvUk9iNU13RXdGbVVj?=
 =?utf-8?B?Uk1UN00rS3Z4UFZLVkdERFVHRlJNbmlMRXQwM09aM01OZisydGJrMnpDeEF6?=
 =?utf-8?B?UXN5N0hNNW1Rc0NvTHR4NVoyM0tHMlN6OUVlSFVwSVJaNWVtWHJxV0tQMHV5?=
 =?utf-8?B?b3ZBd1VFWDN2UEJyK0orc1pMY3ZneDB6TWZueC95MEM2SlFmckE2SVczZkZC?=
 =?utf-8?B?Yi9DbGREVFl5ZEVjUFYvVEFtb04rNlFuellTeG1qd3pXSCtuaFRLeGtvaXdP?=
 =?utf-8?B?SlVuUFVyclE2UWlqT25QSFc3cmZCRVRCZW04dmJnNU1mT2t1MkNrSU8vYXdI?=
 =?utf-8?B?NW5QWm93L2hKcWZHakhIbGxaNDhKaDVKdVRhbmU4WHZkd29jR00rN0ZoUklT?=
 =?utf-8?B?TWxRUGdFUjBmdy9zY05vaTdsdmdIRWo2K3c1NUhYVm1IaThMVU1Yd0tWSFo0?=
 =?utf-8?B?cm03QzgyOENjek1GR0N0Qk96MXlvcXY0QUJGcUEwK1d1N2M3ZWdnYTMreUd6?=
 =?utf-8?B?Q1J4d1YwMHZZQlVla2dLaVVTK2VlSTFHYzVaN011a0IyNCtMOHpHUS93a3Rh?=
 =?utf-8?B?VTY5SC9uQWQ1SzZCdXhDNHRJbGt6TEJweFhqZ2kwOHpQUXBlWHQzYWxwcnNX?=
 =?utf-8?B?dDU0RTB3bldZanVSYnk3TEhEakNYSWIxT3IxbVRNMXpIRUhLc09hUk1oejg1?=
 =?utf-8?B?TW1sL2Eya2dRUkp0SW9XeGJjbFVPTXZyd1ZjSFMydHkyOXVsTXdtclBkb0ZY?=
 =?utf-8?B?UElOaStmSUhibEhNQmhmMU5tMStNM3Riend5Z3dhNDlUd3R0RFd1V0Y1azNJ?=
 =?utf-8?B?eXcxOExnbHBvazBDbmtveUFFMGYzWUU2Y3d0MUVRMWJvbzcvbnBwYXpGZ3Rr?=
 =?utf-8?B?elE4RnhQb1BjQ1dZMEl6U0pITVJQVlByNitHdDlhcmkyL0wzMWs5bXAycnI3?=
 =?utf-8?B?T044VDhLcDkxSVc4R2RNZFZoOGxSUGJWSThpMUM1TG0yVkowcW1XbWpHQnc2?=
 =?utf-8?B?RXNMbXpiMU1CcXJRSnk2N3kvTCtmS3NudXEvWnpMbHNaUFYvblNZRTJ6Wmlh?=
 =?utf-8?B?VVRMNE40NFpEZG5MVmhkZTh4NmVKQ1R6ZFBCYWFVUlQvcWJoOEN2dDNMaTRo?=
 =?utf-8?B?eVNzUXpNT1dWZFRGTjJ5ZWoyaTJnV3cvdHNTdjJRaStXemVlR2haem5kVW9m?=
 =?utf-8?B?L1RodzNIQmlMQUh1amRDK2FKMS8wck0rM21YWVB1MldXQkpEeXF6Y0xZQ2JG?=
 =?utf-8?B?SS82VnBkeHQxNnE2TGt3aWgveFYwaC9YYXVOdFoxZWFoZW4ydGFZcnV6RWVE?=
 =?utf-8?B?REdyczByb09QQ00yNUdxMjdNa0txWi9UT0R6a3cwSGJOMlFUOGtUUmFwc1N4?=
 =?utf-8?B?WnN2UlMvdDZiY0g3aHM4NzAwRnllRzNWL2kybEpYYlB1UkVqeDUwVHdnem5s?=
 =?utf-8?B?cExsbmk1eWl6cmViT01TemNaT3NvRGNVUXV3SzQ1VUE0UExSQ1lOem1wME5x?=
 =?utf-8?B?YUs0aDRBUlFzT0U1QXBHT1B0L0NPZWhwNWhjcjJ5a2plaXVQVGUrZ1hBV0JQ?=
 =?utf-8?B?OFZVOWNIZFowa2tXRzJtOUZob0dzSnJJYkozYVp2TnN2ekhFVnNReU1XK3NG?=
 =?utf-8?B?RWdPUUk0VWhIWjVlemhZdVZkaXVnS2pPRys3bzJNeTF2aGxlbFFIWE9UMXdN?=
 =?utf-8?B?T243eXV3T2lOVGZRNnJRK2l6ZWRZTHR5VW94eE9uOFY3VkFiazFqODRvOG94?=
 =?utf-8?B?Z1RTbmZ3ciswcFdZOVJsS3pkT2VtOFVtV2VHdS9XU0dBOEdXOGtpSkpOMDAy?=
 =?utf-8?B?QUs1eVB3WnVYOXRiOXJpWDlNWTlsRy9JVmxwN2FYNHZXZS9BM3NyUHNOL3c2?=
 =?utf-8?Q?FQpKOF9J+8Icta4mRntrXUBpfv8zHc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS2PR12MB9750.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(366016)(1800799024)(921020)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R095Z2c2NW5GL0JMYStmclByS3FPVi80bThVVlZydDJhdjZaNUpsaWFQTC9t?=
 =?utf-8?B?OFpwamIvVks1U3FMTVpmRlhydkN3YXN3bnBNb3pTc2VxVmVxeU95d2hlcEtX?=
 =?utf-8?B?OURZZVNualFVRXdHaUZabEh0dTZ5MFBUOHE4TEVrMEl5ejFXWi9xY0hHV3NC?=
 =?utf-8?B?aytIM0VwOVlPK3dFK05VdFd5N2szeS9yRUdNRTVSbnR3cWtvVzJ1Tk43MXJx?=
 =?utf-8?B?TzFaS0FLM3NjNVgzZTk2ZGtiRllXYnpodnRJdmdMa2JsM09HbmdwalE0S1ZN?=
 =?utf-8?B?WXliVm9PWnZ5endTZk5SWUZXdjZqc1ZQdWhUbVRpdDZlczZRdGZPb0tiRTRi?=
 =?utf-8?B?cEtFbENmZGVwSU5xWi9MWFFHdjFVL0tOcE5RUllHcFo5MWUyOWdWREhIcFll?=
 =?utf-8?B?SGRrZitIVG9FLyt2MENKckpvelNmRnpFdTVqdk9xZHVkV3hjRlhuVDZBb0dP?=
 =?utf-8?B?eVh2emg5YXlVWFlHQkYzTFcyWFNjWjlUNGg2bHRycDMydVRpUzJDZTd1VXBD?=
 =?utf-8?B?eXlkS0ROYm1uV3YrUFVSRlM3d3pTcEYrWjZnYmEzT2ZxNE5FQng3aUl0Si9U?=
 =?utf-8?B?aVA3Z1JkQm5iSnIyVzZwOUZtR29pRU05MlJmWHpFZDhBWms0MG4vQ25zK1dP?=
 =?utf-8?B?NFlkVEt6UW54Sm9hT1NVRFArMEtkbU5YcWF6WFJTeXhEbkU5ZnBYVHUxTVFk?=
 =?utf-8?B?QS9raUd5cDdLRVF4NVZqaWJibHZzQUU0ZGJnaHVXTFFrYmN2cERZSnVZWFA3?=
 =?utf-8?B?TjlJUTZKMFMwNkZKK1ZWekNwRlZTaUlsNDh6SDR1OFJPYWZ6c3hBb1VPaVhW?=
 =?utf-8?B?Nzh5V2xvbGlLMjhNSzRzc20yUkY4Ym00VlJtRjdWeXF4S3cwZ2IwNmxKVkow?=
 =?utf-8?B?akFLTU5uUitDUkdFczNxQzkxSFlTZDlKSWNWZ2FHanBPbGtlb0hWUmxzZ2hp?=
 =?utf-8?B?VmNTUEFHQ0gvVytmaFo1Q3dhRVcyUncyUmFHeG43TktkRVFDZzJwTVo1bGIx?=
 =?utf-8?B?bTlHL1dCU3diY1hRckVhMTRaWkUxdFkvM2l1Y0RTdnM4N2lZcXN3ZkIzSkJ3?=
 =?utf-8?B?NE90cnZ1WWtUTXRGalJjcC95VDREYlp2NFh2K0pMbUtVa1pOM1hDMVBLYVBh?=
 =?utf-8?B?dmNEVDVzWmJ1Q0g3TVRvU2ROWEhNK3l2MnNFWjVIWUo2cHU0a3V0WVRCTEZj?=
 =?utf-8?B?NTAwZlg2WDdtUGFaK08wcHByNHRqcFBEcEpJMlcwTnBmM1A0dWttZkI5NTQy?=
 =?utf-8?B?V3FZbVBQTmVzSWhhRUwybmVFbjRHVWF1ejlySXdMMHBzR1VPcWZQeW9QVmVl?=
 =?utf-8?B?L0ZDUGIzY3lsU0dIREJVZGM2NzZvWGt2cmtGeEV4TFVtMk50UHIzeUxjUlRs?=
 =?utf-8?B?QmMzVUJRYnVBNkdYbUV6a1dvZ2M5RnIvUkhMTStOd1BEeUhnWnBMTjQ0dldq?=
 =?utf-8?B?OElFM08yb1JwNHdKWDVrQnlucFhhQWtQUUYyZlFyZy9oakdRbFNseDh3NDZW?=
 =?utf-8?B?aFBGUW1NcG81ME8ydHNad2JkaFZrQ2E2S0lmNkNKUnBuNlliR0pZU2EySmNH?=
 =?utf-8?B?cEZZdFdEOGhwM0ZNNVQ1VVZhWHNTRGdDbnVwMlR2NURRZzVhMlNYanVGTHFC?=
 =?utf-8?B?MjBHeFNSQ1YwUmRzb1M2VmJsZlVyY2VBaXdvblVVR3N5MDVBNjJob2xGWEpQ?=
 =?utf-8?B?TlNhM2Z0anpZR3JtKzV1RlloekpLaXdLOU0rYmVWcFlyRitQR1NJYkp6WWFx?=
 =?utf-8?B?VWZFRnJPaGgwK2czVktJVW5FMTJ5VEZ3eVFJOGl1TllHTUx6Sjk0M2R3VFhT?=
 =?utf-8?B?V3dscmZpbmdXeG1qWkFDOUFVZnZPeUFWcE1rWTgxTGJlVlU1WWl0UjRIeUxi?=
 =?utf-8?B?SWwxdVFkT29pVjJqSmE0cnZhbzVlMldrYUVCS0NhcDVxMkhhTHcvbzdlcUdV?=
 =?utf-8?B?R0Vwa0VMMm9YaG9rZGNrcXZMTEZUTzV1Mjlia1VJWEM2RTZUL2IrQkc4dXRF?=
 =?utf-8?B?d2lKNWNTbmpwTklsTHZPU2RBczZvanZ5R213TVVaMnJyZ1g0TW1Vamc0cUtX?=
 =?utf-8?B?RVA5anMxcjNwc1RjNHpDODRnWk5KUW5FMzhWSmRCSWg3YUliemZTbEYvazVS?=
 =?utf-8?B?NlRhZ2ZJNk53bDhObldKcGZiS0hFWTJRbmk0Zzh5REVvd2tBNGJzWjZwcmx1?=
 =?utf-8?B?bldBRGtkaGxodTRVaG1MK2xWbllYZlpPU1YxTXcvWG9rNGtreW9Gb0l4ZzJU?=
 =?utf-8?B?YSs2Z3VQQTQ2c3R0K28raGFhQW9SNnNHc0Mvdk1BTnRwbUJMN1h4RDdGelZr?=
 =?utf-8?B?ZGxuMmNOOVhLVUMyNnZmTEhzbXd5Vk1DS254My9zU0F0VlZnNWd5Zz09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca79e03b-e4d9-4b1d-2c04-08de5297d693
X-MS-Exchange-CrossTenant-AuthSource: DS2PR12MB9750.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2026 11:35:22.7757
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rgU1Ag1WYX8xWSaxUpGsJP8TGUhavVSsEAXoWKJXDSKEpQjw9uA7Sm4i+Pd/r8naK4vjlK315fftifr5vVDsLQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB7224
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_033530_466854_1FF546DA 
X-CRM114-Status: GOOD (  28.38  )
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

Ck9uIDA0LzEyLzIwMjUgMjE6MjcsIERpb2dvIEl2byB3cm90ZToKPiBUaGUgY3VycmVudCBpbXBs
ZW1lbnRhdGlvbiBvZiBVU0IyIHJvbGUgc3dpdGNoaW5nIG9uIFRlZ3JhIHJlbGllcyBvbgo+IHdo
aWNoZXZlciB0aGUgcHJldmlvdXMgVVNCIGNvbnRyb2xsZXIgZHJpdmVyIHdhcyB1c2luZyB0aGUg
UEhZIHRvIGZpcnN0Cj4gInlpZWxkIiBpdCBiYWNrIHRvIFVTQl9ST0xFX05PTkUgYmVmb3JlIHRo
ZSBuZXh0IGNvbnRyb2xsZXIgY29uZmlndXJlcwo+IGl0IGZvciB0aGUgbmV3IHJvbGUuIEhvd2V2
ZXIsIG5vIG1lY2hhbmlzbSB0byBndWFyYW50ZWUgdGhpcyBvcmRlcmluZwo+IHdhcyBpbXBsZW1l
bnRlZCwgYW5kIGN1cnJlbnRseSwgaW4gdGhlIGdlbmVyYWwgY2FzZSwgdGhlIGNvbmZpZ3VyYXRp
b24KPiBmdW5jdGlvbnMgdGVncmFfeGhjaV9pZF93b3JrKCkgYW5kIHRlZ3JhX3h1ZGNfdXNiX3Jv
bGVfc3dfd29yaygpIGVuZCB1cAo+IHJ1bm5pbmcgaW4gdGhlIHNhbWUgb3JkZXIgcmVnYXJkbGVz
cyBvZiB0aGUgdHJhbnNpdGlvbiBiZWluZyBIT1NULT5ERVZJQ0UKPiBvciBERVZJQ0UtPkhPU1Qs
IGxlYWRpbmcgdG8gb25lIG9mIHRoZXNlIHRyYW5zaXRpb25zIGVuZGluZyB1cCBpbiBhCj4gbm9u
LXdvcmtpbmcgc3RhdGUgZHVlIHRvIHRoZSBuZXcgY29uZmlndXJhdGlvbiBiZWluZyBjbG9iYmVy
ZWQgYnkgdGhlCj4gcHJldmlvdXMgY29udHJvbGxlciBkcml2ZXIgc2V0dGluZyBVU0JfUk9MRV9O
T05FIGFmdGVyIHRoZSBmYWN0Lgo+IAo+IEZpeCB0aGlzIGJ5IGludHJvZHVjaW5nIGEgaGVscGVy
IHRoYXQgd2FpdHMgZm9yIHRoZSBVU0IyIHBvcnTigJlzIGN1cnJlbnQKPiByb2xlIHRvIGJlY29t
ZSBVU0JfUk9MRV9OT05FIGFuZCBhZGQgaXQgaW4gdGhlIGNvbmZpZ3VyYXRpb24gZnVuY3Rpb25z
Cj4gYWJvdmUgYmVmb3JlIHNldHRpbmcgdGhlIHJvbGUgdG8gZWl0aGVyIFVTQl9ST0xFX0hPU1Qg
b3IKPiBVU0JfUk9MRV9ERVZJQ0UuIFRoZSBzcGVjaWZpYyBwYXJhbWV0ZXJzIG9mIHRoZSBoZWxw
ZXIgZnVuY3Rpb24gYXJlCj4gY2hvaWNlcyB0aGF0IHNlZW0gcmVhc29uYWJsZSBpbiBteSB0ZXN0
aW5nIGFuZCBoYXZlIG5vIG90aGVyIGJhc2lzLgo+IAo+IFRoaXMgd2FzIHRlc3RlZCBvbiBhIFRl
Z3JhMjEwIHBsYXRmb3JtIChTbWF1ZykuIEhvd2V2ZXIsIGR1ZSB0byB0aGUgc2ltaWxhcgo+IGFw
cHJvYWNoIGluIFRlZ3JhMTg2IGl0IGlzIGxpa2VseSB0aGF0IG5vdCBvbmx5IHRoaXMgcHJvYmxl
bSBleGlzdHMgdGhlcmUKPiBidXQgdGhhdCB0aGlzIHBhdGNoIGFsc28gZml4ZXMgaXQuCj4gCj4g
U2lnbmVkLW9mZi1ieTogRGlvZ28gSXZvIDxkaW9nby5pdm9AdGVjbmljby51bGlzYm9hLnB0Pgo+
IC0tLQo+ICAgZHJpdmVycy9waHkvdGVncmEveHVzYi5jICAgICAgICAgICAgfCAyMyArKysrKysr
KysrKysrKysrKysrKysrKwo+ICAgZHJpdmVycy91c2IvZ2FkZ2V0L3VkYy90ZWdyYS14dWRjLmMg
fCAgNCArKysrCj4gICBkcml2ZXJzL3VzYi9ob3N0L3hoY2ktdGVncmEuYyAgICAgICB8IDE1ICsr
KysrKysrKystLS0tLQo+ICAgaW5jbHVkZS9saW51eC9waHkvdGVncmEveHVzYi5oICAgICAgfCAg
MSArCj4gICA0IGZpbGVzIGNoYW5nZWQsIDM4IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3RlZ3JhL3h1c2IuYyBiL2RyaXZlcnMvcGh5
L3RlZ3JhL3h1c2IuYwo+IGluZGV4IGM4OWRmOTVhYTZjYS4uZTA1YzNmMmQxNDIxIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvcGh5L3RlZ3JhL3h1c2IuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3RlZ3Jh
L3h1c2IuYwo+IEBAIC03NDAsNiArNzQwLDI5IEBAIHN0YXRpYyB2b2lkIHRlZ3JhX3h1c2JfcGFy
c2VfdXNiX3JvbGVfZGVmYXVsdF9tb2RlKHN0cnVjdCB0ZWdyYV94dXNiX3BvcnQgKnBvcnQpCj4g
ICAJfQo+ICAgfQo+ICAgCj4gK2Jvb2wgdGVncmFfeHVzYl91c2IyX3BvcnRfd2FpdF9yb2xlX25v
bmUoc3RydWN0IHRlZ3JhX3h1c2JfcGFkY3RsICpwYWRjdGwsIGludCBpbmRleCkKPiArewo+ICsJ
c3RydWN0IHRlZ3JhX3h1c2JfdXNiMl9wb3J0ICp1c2IyID0gdGVncmFfeHVzYl9maW5kX3VzYjJf
cG9ydChwYWRjdGwsCj4gKwkJCQkJCQkJICAgICAgaW5kZXgpOwo+ICsJaW50IHJldHJpZXMgPSA1
Owo+ICsKPiArCWlmICghdXNiMikgewo+ICsJCWRldl9lcnIoJnVzYjItPmJhc2UuZGV2LCAibm8g
cG9ydCBmb3VuZCBmb3IgVVNCMiBsYW5lICV1XG4iLCBpbmRleCk7Cj4gKwkJcmV0dXJuIGZhbHNl
Owo+ICsJfQo+ICsKPiArCWRvIHsKPiArCQlpZiAodXNiMi0+cm9sZSA9PSBVU0JfUk9MRV9OT05F
KQo+ICsJCQlyZXR1cm4gdHJ1ZTsKPiArCj4gKwkJdXNsZWVwX3JhbmdlKDUwLCA2MCk7Cj4gKwl9
IHdoaWxlIChyZXRyaWVzLS0pOwo+ICsKPiArCWRldl9lcnIoJnVzYjItPmJhc2UuZGV2LCAidGlt
ZWQgb3V0IHdhaXRpbmcgZm9yIFVTQl9ST0xFX05PTkUiKTsKPiArCj4gKwlyZXR1cm4gZmFsc2U7
Cj4gK30KCgpUaGlzIHBhdGNoIGlzIGNhdXNpbmcgdGhlIGZvbGxvd2luZyBidWlsZCBlcnJvciB0
b2RheSB3aXRoIC1uZXh0IC4uLgoKICAgTU9EUE9TVCBNb2R1bGUuc3ltdmVycwpFUlJPUjogbW9k
cG9zdDogInRlZ3JhX3h1c2JfdXNiMl9wb3J0X3dhaXRfcm9sZV9ub25lIiAKW2RyaXZlcnMvdXNi
L2hvc3QveGhjaS10ZWdyYS5rb10gdW5kZWZpbmVkIQoKVGhlIGFib3ZlIGZ1bmN0aW9uIHN5bWJv
bCBuZWVkcyB0byBiZSBleHBvcnRlZC4KCkpvbgoKLS0gCm52cHVibGljCgoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
