Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70022D2D11B
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jan 2026 14:48:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=crPjX/sFW7k22hZiB3vS/c0E0d6jvDdeZdtnr5ygQXM=; b=vilCpDbgLzMGMbdo5c04gf2rAl
	0c0e+knLBld7JeFsA9HeROpIueNB47FCQZRDpq7r7W4C5GfOIFJx2NufY6T2vbOF7cCOk2jU90zh0
	O32HqgEMK9PlQLAAhwL3CvH+H0tYf4PVkvatfqo0o5sXqJ0efRGpTJBa/12/tPBmfxrzddZSlY3jX
	F8N+Ph83ZQ7eo3TSzqtfjmBCjZVmfkhsVkvk1DAQUY5gXfF2aa5WzIkV6CHZjY/WWk8yOQ59wv2hw
	ib+lft21f+zQbgn/Tg+Kt8i1/VUJPe29JBZ6FqJtwTARKhzjTyb+rvAO9JeAHUIZZwWv2G2myrbQj
	tds3BL4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vffhQ-00000007Hwb-40Xf;
	Tue, 13 Jan 2026 14:48:48 +0000
Received: from mail-westcentralusazlp170100005.outbound.protection.outlook.com ([2a01:111:f403:c112::5] helo=CY7PR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vffhO-00000007Hvw-41vl
	for linux-phy@lists.infradead.org;
	Tue, 13 Jan 2026 14:48:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q9IM5L/3kQ+p8dDgz/OqspvAu/y7RGlONMqn9ibY4OQWPtyyBvCTCUIuUC7z2IPEg27HgIzCbEj7piKQiEUGZGqGd9zO28+kaylu2LKHNPCc7vyuY7WOtJQf4N8ljRI4I4K5Yt5AA75+KIchUaWVYBQVkb5jWYymYPyAZIPBJH7RZr1O3uqiTA+DUG0Ms7V1mYRfYHZcwIPWTp6s7YBtZePaWcL5mDNO8OgE88FBOpQjro3IotrnAoFmKRdOR8vA5FftO18wp1Z6LmMulfsaTCq3DiLc0qPuhzdasCUpsqLHyRZFuc/IiHJr5C1tsgrpjXDgNkhejRhQjM6wv3OnpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FANrG9/sGCu0jg/MH/U0Bu+9ErjM2YcMoYeRhyKdmig=;
 b=WHnG3eZePyuVleP3TDpxdMFxw1FW7aQGu+GIKI26kdRWmyne20vbTZGubf1vLdvNLcirUX9+zXHJJQMnqDIjTpT377GwTwvsj7fqqg4Hj++CmIfFiyUCKxa4MII59oRFtXEyDHejziRta8Kqp36OBrf3Ux8o426MhKnh/fBq74x4ykgZVvshIYIQFIL7F/A2BphbXOeUzn3/EESO7QSXiCgn1KfQs+UwlBf+u60o0Gw+wV/ES8k9BitZadVvvxpmtMaljbI3LAlg/d7fpDhIavYZFEkLFk71B67/An83LRmzJ0adDcIWm2dZKDnkm0uHM0JYe+y6nEZk+1I9ivss7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FANrG9/sGCu0jg/MH/U0Bu+9ErjM2YcMoYeRhyKdmig=;
 b=N/8fEwCfGKXhYRLRpA6nkRieEWlGn+tfD9U+wWfi6sF7LSTh15BGc/VAEMFntUeAe8QoD/VNjJ+s6B8J9mjXvtBaToQoFxtSdsH+Lmnm2t4q7lzGSyONhU8W/fucU5Td06lVfzr1pGyCtjNTiaz6xrzSQi64ZKBQCT8fRPoK7qV1qcAoi0IPLKdJOWjxvLwVQwtYOW2TsJnHruVA02oGhcaHoR89n/TTOyBoa0vD7gWgQFsgqsi/pS6sl4OWk6tZDi5befhuhZ0zO2uw1Z9eu8lcO0Mpn2Yl8o7yK9q4fvFM4h6DzaPi+HwxnAUiYleHBFBvXF5Yk476pJyI3GOPyA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS2PR12MB9750.namprd12.prod.outlook.com (2603:10b6:8:2b0::12)
 by SJ0PR12MB6943.namprd12.prod.outlook.com (2603:10b6:a03:44b::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Tue, 13 Jan
 2026 14:48:40 +0000
Received: from DS2PR12MB9750.namprd12.prod.outlook.com
 ([fe80::56a8:d6bf:e24c:b391]) by DS2PR12MB9750.namprd12.prod.outlook.com
 ([fe80::56a8:d6bf:e24c:b391%5]) with mapi id 15.20.9499.005; Tue, 13 Jan 2026
 14:48:40 +0000
Message-ID: <703a470d-87fc-4580-a743-952e422984d4@nvidia.com>
Date: Tue, 13 Jan 2026 14:48:36 +0000
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
 <86cd3ff0-1609-44cb-911c-f0e97652ca1b@nvidia.com>
 <ae36f759-e889-4371-8c08-b8ffd1b69250@tecnico.ulisboa.pt>
From: Jon Hunter <jonathanh@nvidia.com>
Content-Language: en-US
In-Reply-To: <ae36f759-e889-4371-8c08-b8ffd1b69250@tecnico.ulisboa.pt>
X-ClientProxiedBy: CH0PR13CA0033.namprd13.prod.outlook.com
 (2603:10b6:610:b2::8) To DS2PR12MB9750.namprd12.prod.outlook.com
 (2603:10b6:8:2b0::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS2PR12MB9750:EE_|SJ0PR12MB6943:EE_
X-MS-Office365-Filtering-Correlation-Id: 89f26695-c5ea-4f3f-b594-08de52b2d77f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016|7053199007|921020;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NHkraG1zQXl5Q09KMll1OVdPN3FrSXdXSENSbE40K3BmaUpYdzR1UGxKc0cz?=
 =?utf-8?B?VDdoUlZuUTJNYXdnWFVpcCtEOWtic3NYRDdTUjF6a29kcGlmTFgxYWliTmxu?=
 =?utf-8?B?dFRacUtXaWRZcTJIV0dmOGJGSEJiVkpZR2RENFpLM1pQUVIxVjJpVFAvak95?=
 =?utf-8?B?cE1DVW53QXJuUDVobGZBNTNpQnFBdDd0bWdVRGoyME94NzN5ZW1XU3VRQ0lG?=
 =?utf-8?B?cFR6amRwa3FHOHJtVW52TlNYRVh0OW9TQ0tkV0RuSnErclRuTGcvMFh2cU5K?=
 =?utf-8?B?R05MMmxQd1FkUStqRzhQMUFBM0lIbjdZNTFha3pwK21pcFZzSE9IQUN0emNq?=
 =?utf-8?B?N0lVemh3TW56TkhxZm9HbXZEeXJkcE02a2NBU3I0eWh6SkxIeUdRaktQWHVm?=
 =?utf-8?B?RkFseFlGZUcyaVJ2ZHN5d2dnYWdrS2V5ZjZyS1p0bk1uejBjektzbkhsR1BE?=
 =?utf-8?B?cmF6bTVxdlMwQlk1Q1dla1FHWUtpRDY0QVhXbXMxaDVMVG96SU1nN1JPclJD?=
 =?utf-8?B?NTZsOFBmY3NZSXVPMkJaZVo2a09hT2M0ZkN4S2p5ZkFhUU1JRlRuRVhHd2x2?=
 =?utf-8?B?RTF2dWM3UHN0eEZaSmlVRko2Zm1LakFRYzl5N1JwMEh6M2JuOUQ2UXl4UzVo?=
 =?utf-8?B?Y3BPdmFsU2x6ZVZJT3VjS3hlT29tOUt5bkZDTmliS3Nrc1VmSHR3L3Vwb0M2?=
 =?utf-8?B?ayt1SXY5cFYxcHpnUXIxOW1vc0IzTkVnTEpoODBheVZKRTdyODJsR0hiWUtJ?=
 =?utf-8?B?OURxNXoyZ1JDWG8wRzl1emNEN0J1N2wySjZkbTZ5aUdNTkZkSVo1T0YycTNL?=
 =?utf-8?B?Q09Zam11dkhnR250U2NzVVNZeWQ1aW1sMnVUMC9HT0ptVTdoVVkzR25BZFl5?=
 =?utf-8?B?ZWJoY1R5S3NDTXdReFByQld1bVVkU0FMMjNXb25CWjN3YnNDNU82ZHRqbG5E?=
 =?utf-8?B?WVJ6T0h0Tm5WVkZ6ZmNGMHF6NzBmYzVQVVBNdlJicUQ1VFNRYmJzenB5aGdn?=
 =?utf-8?B?Y0RWNVFaN1pOQlpwdU0vdE0xbDcwTC9HQVp6SWZSeEhXZTNncnlEckg2MVg4?=
 =?utf-8?B?OFpoVjdzRmhRSHlrdStBZHdnbytTbm1nTVE4dG1kQkgxbWFDUWhFRnFoeE5D?=
 =?utf-8?B?ZndNVGZ0WXUzY3o0Q2J2OWpQSlNOY0hJYS85Rk5ETkh0alBsVU5yUUQvU0kw?=
 =?utf-8?B?VE5tSVI5Rk9RTnVPUnNOeEF1ZXk3RXlxMW9DRURPNWptV2ppejVuVGRDWG1G?=
 =?utf-8?B?cThVOEllcHNhNUlwZlNXM3dycDFLczV0S05aRTBVT1NMY3g4cjUxemNlWG1C?=
 =?utf-8?B?OWNWQzYrWmdZNDZuZFdlS2FlOHA2V0Q0N0ZlaEFhUnlGUFZOQUlET0ZkMzg4?=
 =?utf-8?B?YVUxRjY3c3VJa1dOOFU2VndXNXdMTGppYnY1Vko1eWZjN2liOXVvSGlPUDI1?=
 =?utf-8?B?MVIvZmdXOUVrL3RMMXZKcGFzelhCVm1pbVQ0L0NsZ04rNjFMUEI4ZXIwbzBk?=
 =?utf-8?B?SE91cWZBbVVTaHQ2TmFTai84bEZWYktwVmVNQjZmVTNiaU14VU9qdDRuYUxi?=
 =?utf-8?B?d1U5UExZWkd1SlBuZmpqWG93U2J0NjVhcWpVMlVGaHJlNENOTDFMOGx5NkdB?=
 =?utf-8?B?Mmp2NlBzZ1Jwc1pFYVVCTEZDd3d5ejI4ZHRxMUZ1eFZHbkROcG1FL0gxcGtp?=
 =?utf-8?B?K1V2cnBGMjcxZ2RBd1lWK2JjTEVwMWtTQ09ybFhTT0FweVBHRzlyNWwrdlVF?=
 =?utf-8?B?bVUwb09haVJLOG40UGFuNDdDZEVWNjFkOFZCUk41WFVQNjRlMTJ2TG9HMHpE?=
 =?utf-8?B?c05UZkg4bzRhUE5MbnYyRlE4UGV1MWQ4aWJ5a3RwdThHSzJOSVV4YktaQzd0?=
 =?utf-8?B?U1laQ3phaHFYYzBRZDBGSnBCNzA4WU5BQlM0T3pJTGtVR1lORkdJRkNTWmpl?=
 =?utf-8?B?Ym5LQ2l3K3ZHZFhNZWVCclJUV1NDSWpmNWI3M0FKZnp5OW5RdVNacDgyVUNG?=
 =?utf-8?Q?94j2jKOeY114nsvVKBpiw/0ltgWUK0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS2PR12MB9750.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(366016)(7053199007)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S2svQk9VeHV1dWpJYmFBYUxnT2d1cE9zb2MvaUh2ajlTR0lFWkdOZnRTMUJJ?=
 =?utf-8?B?OEk3MEFqVXB5QU00Rk1FNnhrcjgxenJQSlRnSmJwSU5Fako4b2Q4aHFvaHJj?=
 =?utf-8?B?MHhLNDNzZHlBMmx2RURUcDJKSWJSRWZmM1BRK1ZaT1hudXp6a1VsdVVUUnJr?=
 =?utf-8?B?azJxcTlVRmZOOWl1Z2ozM0JudVlrWXFlWWJzSXRFaHNYVUR4UTlpUEZqTzYv?=
 =?utf-8?B?dlVZRVplZlVWQVNnSHZ2QVFtNDVpaWc0cEcwY0YvbnBmd3kwZ1U5d3hLK0Qy?=
 =?utf-8?B?emh1WDVPWU5wVGY0emhOUFBUSVJxSmtBSkdxUnUreDBmeW9nbWJRRGlpRnNm?=
 =?utf-8?B?b0l6OVlXcEErK0kra0JDVVdsM2RSOFl4L0hiZU9BakFNOXdveXE5bEZOeGJU?=
 =?utf-8?B?c3Zkb2xVZEg5bUg0Nzh2c2lJZzlEbytXcGh2c3k4NUFQVUxWSHkrTzJxOXNl?=
 =?utf-8?B?eW90TlRybFdjYjdQcTJENGVIVmFNd3pkMVk4RnFvSGtSNlJxcmRJLzJvN01h?=
 =?utf-8?B?eG9HV2YzSFZMSTZ5YU1OZjRZZExmZFhuNG4rYlZxTlV0MGN6ZUlRNVREb2FC?=
 =?utf-8?B?ekFnbjRJN3ZqdENjYisxZDA2aXF3Nm5ndUREampVMkp5OEkzTk1rdHhjT1Y3?=
 =?utf-8?B?RDFZbURFdnZQSms3UW9TNW1yMjNkNkFLeXB3c05UUmd2UGxEZ2lzMGRGdjVV?=
 =?utf-8?B?T1gxZDQ5Tko5YUNkUTI3SHVCanUrRnROZnYxYWp2SHF4S2kzRGNubmFzUjhO?=
 =?utf-8?B?cURHUWpCRmxxaXFGRFNUNndMTmlodHA4MEZFUmpxY2FlUU96Y3o0Slg4TDYx?=
 =?utf-8?B?eW0yR2I0dzYzM3NSR0U5Ry9IVXhoRTBMUm16WkRXeFY4SGoxdWRNTVdWZVVy?=
 =?utf-8?B?aDkzdW5QNGxyVXVvYlNJejh0L3ZYMUd5UVl3TERLNmRBOHMrUHg3M1FYeW0v?=
 =?utf-8?B?a283WHYrdVlwc0JNVXJ0TWZlRFNiZTRzZEZ1TlJzeFhPdk9rcTlXemJubWtG?=
 =?utf-8?B?L3Y3MThvY2VvdDhkdG5ZYy8rMzRtTDhoNDMzcnIzTXlNTm1ZQXdoZzE3MTlH?=
 =?utf-8?B?ZHZvOWtyc2dYVXpqeWZhTnlhL2NpZ1ZxSjE0YlRTbDFXSE9COXk0K2pyV0U3?=
 =?utf-8?B?eGllK0s2Yi9saVcxc2Z5ck12eVJ5ZXc3NjI2OWFxOXJjTFpqWk5OUUNwNWkx?=
 =?utf-8?B?SFVIeFFNellZYlFvRUsxMlVzNTROOHFDNmdaVHdPM3ZwR3JLVXU2aGgzdkIz?=
 =?utf-8?B?eDBiQnNIR0dLaHdjWGFBaTQzK0NRb3Z2c0luYVU5c2lXcHNrVVRZazBGeDc4?=
 =?utf-8?B?R2k4RkFrL0lHdUt0bUx4bVZMdlQ3NDJzUHlXMC96RUc4M29Qc0NYTW1BVjQw?=
 =?utf-8?B?dlBuTlUrVS96c3NibHFDTndORFJqUGhyNlI3UWVUSlkxTXlyb2FDK0VMMVM1?=
 =?utf-8?B?YTZqRTJabCs0aWxiVnZXZEViVTRjZFgxVUpmMFlUWjFpWnMrZklSVWdZZkhQ?=
 =?utf-8?B?ZjRmRE0za0toS0pTZzRGWko3ZXhKeWU5cElWVkJxNEhqUGhCblNJd2JYZ2pr?=
 =?utf-8?B?NmRiZnpPb253QnhWeEhXZWVOM1FNMVdRSGxKRVQxaVdvZ2hjTDFCSDhWNUEv?=
 =?utf-8?B?REwveUxJQk52L3RhR0NReXJKWUZpT0Fxc0dFS3l6aW5UakFDcGxmcmt3ZHZX?=
 =?utf-8?B?RXd2eTRUMDJyMEN1THc5UXM2WGtXUVdFNCttd2VuNDBTOFpyMW94RklPVVVN?=
 =?utf-8?B?WG9vSmpvaW1yeVFmS0JSazE4OHJ0alpNd0o1UFo0WWYyTEI5b0NrZ3pEdVNC?=
 =?utf-8?B?V3l2UWlmZnZCa0pqakhMQzh6SjBXRFA4blRRMnQyS3JFRFV2clZ0cmJVOXpJ?=
 =?utf-8?B?eFVFc245OVJRdnV2M2h1QVFkb09VRWJyYk5wV1ZXZS92bTFnb0RhdVNtcjNp?=
 =?utf-8?B?M0pQTmVwZ0kzR1IwK1hUUUxONTdoMlQ2bXY0ZnVPM3JEQUlGVnIwVlBGeXRX?=
 =?utf-8?B?TnQ4MFVPSDcyZXJKcWNBeThscEdvOHJVOUJCVUlZdW1EZi9rdFd5VkhzaDdY?=
 =?utf-8?B?cXZiV0lnSVUrRGVuc3BRbk5ENnlRUXQ3aVF2UXhlZC9qUFdmUTFDNUJ0cVp6?=
 =?utf-8?B?dVBKbXpicFhFZnhiQUREQVVWbEY2VnpXQXhaa09vZnUvbWVwTkNUdlVNMmJw?=
 =?utf-8?B?cVRRRHZSR1ZwdHVkTkdhd1JZUS85RW5WcXloN3NjTlpCaXdFWEF1eEdud3pW?=
 =?utf-8?B?QW5ZeFBGSDgwdU9HTHNKNEkyM2RHckl0S2ZvMTdwbDZkM2V0QTBoRk5UdGZm?=
 =?utf-8?B?VXBFZzBwc0kwSFQyUFhoeUMxd21BVGxNRENTV1FuVEs4WVpPUlpyZz09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 89f26695-c5ea-4f3f-b594-08de52b2d77f
X-MS-Exchange-CrossTenant-AuthSource: DS2PR12MB9750.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2026 14:48:40.7153
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mtY/EOVxJ/LaGG4Jdj1F4g2TPEA+G3L7xDoR9xIKjiyTfa+Ax2zFTMK9arGE41GZjyOCgVHIDFIb7JnypZJwmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB6943
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_064847_045200_6A49D155 
X-CRM114-Status: GOOD (  20.75  )
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

Ck9uIDEzLzAxLzIwMjYgMTQ6MDUsIERpb2dvIEl2byB3cm90ZToKPiAKPiAKPiBPbiAxLzEzLzI2
IDExOjU2LCBKb24gSHVudGVyIHdyb3RlOgo+Pgo+PiBPbiAwNC8xMi8yMDI1IDIxOjI3LCBEaW9n
byBJdm8gd3JvdGU6Cj4+PiBUaGUgY3VycmVudCBpbXBsZW1lbnRhdGlvbiBvZiBVU0IyIHJvbGUg
c3dpdGNoaW5nIG9uIFRlZ3JhIHJlbGllcyBvbgo+Pj4gd2hpY2hldmVyIHRoZSBwcmV2aW91cyBV
U0IgY29udHJvbGxlciBkcml2ZXIgd2FzIHVzaW5nIHRoZSBQSFkgdG8gZmlyc3QKPj4+ICJ5aWVs
ZCIgaXQgYmFjayB0byBVU0JfUk9MRV9OT05FIGJlZm9yZSB0aGUgbmV4dCBjb250cm9sbGVyIGNv
bmZpZ3VyZXMKPj4+IGl0IGZvciB0aGUgbmV3IHJvbGUuIEhvd2V2ZXIsIG5vIG1lY2hhbmlzbSB0
byBndWFyYW50ZWUgdGhpcyBvcmRlcmluZwo+Pj4gd2FzIGltcGxlbWVudGVkLCBhbmQgY3VycmVu
dGx5LCBpbiB0aGUgZ2VuZXJhbCBjYXNlLCB0aGUgY29uZmlndXJhdGlvbgo+Pj4gZnVuY3Rpb25z
IHRlZ3JhX3hoY2lfaWRfd29yaygpIGFuZCB0ZWdyYV94dWRjX3VzYl9yb2xlX3N3X3dvcmsoKSBl
bmQgdXAKPj4+IHJ1bm5pbmcgaW4gdGhlIHNhbWUgb3JkZXIgcmVnYXJkbGVzcyBvZiB0aGUgdHJh
bnNpdGlvbiBiZWluZyBIT1NULSAKPj4+ID5ERVZJQ0UKPj4+IG9yIERFVklDRS0+SE9TVCwgbGVh
ZGluZyB0byBvbmUgb2YgdGhlc2UgdHJhbnNpdGlvbnMgZW5kaW5nIHVwIGluIGEKPj4+IG5vbi13
b3JraW5nIHN0YXRlIGR1ZSB0byB0aGUgbmV3IGNvbmZpZ3VyYXRpb24gYmVpbmcgY2xvYmJlcmVk
IGJ5IHRoZQo+Pj4gcHJldmlvdXMgY29udHJvbGxlciBkcml2ZXIgc2V0dGluZyBVU0JfUk9MRV9O
T05FIGFmdGVyIHRoZSBmYWN0Lgo+Pj4KPj4+IEZpeCB0aGlzIGJ5IGludHJvZHVjaW5nIGEgaGVs
cGVyIHRoYXQgd2FpdHMgZm9yIHRoZSBVU0IyIHBvcnTigJlzIGN1cnJlbnQKPj4+IHJvbGUgdG8g
YmVjb21lIFVTQl9ST0xFX05PTkUgYW5kIGFkZCBpdCBpbiB0aGUgY29uZmlndXJhdGlvbiBmdW5j
dGlvbnMKPj4+IGFib3ZlIGJlZm9yZSBzZXR0aW5nIHRoZSByb2xlIHRvIGVpdGhlciBVU0JfUk9M
RV9IT1NUIG9yCj4+PiBVU0JfUk9MRV9ERVZJQ0UuIFRoZSBzcGVjaWZpYyBwYXJhbWV0ZXJzIG9m
IHRoZSBoZWxwZXIgZnVuY3Rpb24gYXJlCj4+PiBjaG9pY2VzIHRoYXQgc2VlbSByZWFzb25hYmxl
IGluIG15IHRlc3RpbmcgYW5kIGhhdmUgbm8gb3RoZXIgYmFzaXMuCj4+Cj4+IFRoaXMgaXMgbm8g
aW5mb3JtYXRpb24gaGVyZSBhYm91dCB3aHkgNiAqIDUwLzYwdXMgaXMgZGVlbWVkIHRvIGJlIAo+
PiBzdWZmaWNpZW50PyBNYXkgYmUgaXQgaXMsIGJ1dCBhIGNvbW1lbnQgd291bGQgYmUgbmljZS4K
Pj4KPj4+IFRoaXMgd2FzIHRlc3RlZCBvbiBhIFRlZ3JhMjEwIHBsYXRmb3JtIChTbWF1ZykuIEhv
d2V2ZXIsIGR1ZSB0byB0aGUgCj4+PiBzaW1pbGFyCj4+PiBhcHByb2FjaCBpbiBUZWdyYTE4NiBp
dCBpcyBsaWtlbHkgdGhhdCBub3Qgb25seSB0aGlzIHByb2JsZW0gZXhpc3RzIAo+Pj4gdGhlcmUK
Pj4+IGJ1dCB0aGF0IHRoaXMgcGF0Y2ggYWxzbyBmaXhlcyBpdC4KPj4+Cj4+PiBTaWduZWQtb2Zm
LWJ5OiBEaW9nbyBJdm8gPGRpb2dvLml2b0B0ZWNuaWNvLnVsaXNib2EucHQ+Cj4+PiAtLS0KPj4+
IMKgIGRyaXZlcnMvcGh5L3RlZ3JhL3h1c2IuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAyMyAr
KysrKysrKysrKysrKysrKysrKysrKwo+Pj4gwqAgZHJpdmVycy91c2IvZ2FkZ2V0L3VkYy90ZWdy
YS14dWRjLmMgfMKgIDQgKysrKwo+Pj4gwqAgZHJpdmVycy91c2IvaG9zdC94aGNpLXRlZ3JhLmPC
oMKgwqDCoMKgwqAgfCAxNSArKysrKysrKysrLS0tLS0KPj4+IMKgIGluY2x1ZGUvbGludXgvcGh5
L3RlZ3JhL3h1c2IuaMKgwqDCoMKgwqAgfMKgIDEgKwo+Pj4gwqAgNCBmaWxlcyBjaGFuZ2VkLCAz
OCBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3BoeS90ZWdyYS94dXNiLmMgYi9kcml2ZXJzL3BoeS90ZWdyYS94dXNiLmMKPj4+IGluZGV4
IGM4OWRmOTVhYTZjYS4uZTA1YzNmMmQxNDIxIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9waHkv
dGVncmEveHVzYi5jCj4+PiArKysgYi9kcml2ZXJzL3BoeS90ZWdyYS94dXNiLmMKPj4+IEBAIC03
NDAsNiArNzQwLDI5IEBAIHN0YXRpYyB2b2lkIAo+Pj4gdGVncmFfeHVzYl9wYXJzZV91c2Jfcm9s
ZV9kZWZhdWx0X21vZGUoc3RydWN0IHRlZ3JhX3h1c2JfcG9ydCAqcG9ydCkKPj4+IMKgwqDCoMKg
wqAgfQo+Pj4gwqAgfQo+Pj4gK2Jvb2wgdGVncmFfeHVzYl91c2IyX3BvcnRfd2FpdF9yb2xlX25v
bmUoc3RydWN0IHRlZ3JhX3h1c2JfcGFkY3RsIAo+Pj4gKnBhZGN0bCwgaW50IGluZGV4KQo+Pj4g
K3sKPj4+ICvCoMKgwqAgc3RydWN0IHRlZ3JhX3h1c2JfdXNiMl9wb3J0ICp1c2IyID0gCj4+PiB0
ZWdyYV94dXNiX2ZpbmRfdXNiMl9wb3J0KHBhZGN0bCwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBp
bmRleCk7Cj4+PiArwqDCoMKgIGludCByZXRyaWVzID0gNTsKPj4+ICsKPj4+ICvCoMKgwqAgaWYg
KCF1c2IyKSB7Cj4+PiArwqDCoMKgwqDCoMKgwqAgZGV2X2VycigmdXNiMi0+YmFzZS5kZXYsICJu
byBwb3J0IGZvdW5kIGZvciBVU0IyIGxhbmUgJXVcbiIsIAo+Pj4gaW5kZXgpOwo+Pgo+PiBUaGlz
IGFwcGVhcnMgdG8gYmUgYSBidWcuIElmICF1c2IyIHRoZW4gZGVyZWZlcmVuY2UgdXNiMi0+YmFz
ZSBhbnl3YXkuCj4gCj4gSXQgaXMgYSBidWcsIHdpbGwgZml4IGluIHYyLgo+IAo+Pj4gK8KgwqDC
oMKgwqDCoMKgIHJldHVybiBmYWxzZTsKPj4+ICvCoMKgwqAgfQo+Pj4gKwo+Pj4gK8KgwqDCoCBk
byB7Cj4+PiArwqDCoMKgwqDCoMKgwqAgaWYgKHVzYjItPnJvbGUgPT0gVVNCX1JPTEVfTk9ORSkK
Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiB0cnVlOwo+Pj4gKwo+Pj4gK8KgwqDC
oMKgwqDCoMKgIHVzbGVlcF9yYW5nZSg1MCwgNjApOwo+Pj4gK8KgwqDCoCB9IHdoaWxlIChyZXRy
aWVzLS0pOwo+Pj4gKwo+Pj4gK8KgwqDCoCBkZXZfZXJyKCZ1c2IyLT5iYXNlLmRldiwgInRpbWVk
IG91dCB3YWl0aW5nIGZvciBVU0JfUk9MRV9OT05FIik7Cj4+PiArCj4+PiArwqDCoMKgIHJldHVy
biBmYWxzZTsKPj4+ICt9Cj4+PiArCj4+PiDCoCBzdGF0aWMgaW50IHRlZ3JhX3h1c2JfdXNiMl9w
b3J0X3BhcnNlX2R0KHN0cnVjdCAKPj4+IHRlZ3JhX3h1c2JfdXNiMl9wb3J0ICp1c2IyKQo+Pj4g
wqAgewo+Pj4gwqDCoMKgwqDCoCBzdHJ1Y3QgdGVncmFfeHVzYl9wb3J0ICpwb3J0ID0gJnVzYjIt
PmJhc2U7Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy91c2IvZ2FkZ2V0L3VkYy90ZWdyYS14dWRj
LmMgYi9kcml2ZXJzL3VzYi8gCj4+PiBnYWRnZXQvIHVkYy90ZWdyYS14dWRjLmMKPj4+IGluZGV4
IDBjMzhmYzM3YjZlNi4uNzJkNzI1NjU5ZTVmIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy91c2Iv
Z2FkZ2V0L3VkYy90ZWdyYS14dWRjLmMKPj4+ICsrKyBiL2RyaXZlcnMvdXNiL2dhZGdldC91ZGMv
dGVncmEteHVkYy5jCj4+PiBAQCAtNjk4LDggKzY5OCwxMiBAQCBzdGF0aWMgdm9pZCB0ZWdyYV94
dWRjX3Jlc3RvcmVfcG9ydF9zcGVlZChzdHJ1Y3QgCj4+PiB0ZWdyYV94dWRjICp4dWRjKQo+Pj4g
wqAgc3RhdGljIHZvaWQgdGVncmFfeHVkY19kZXZpY2VfbW9kZV9vbihzdHJ1Y3QgdGVncmFfeHVk
YyAqeHVkYykKPj4+IMKgIHsKPj4+ICvCoMKgwqAgaW50IHBvcnQgPSB0ZWdyYV94dXNiX3BhZGN0
bF9nZXRfcG9ydF9udW1iZXIoeHVkYy0+Y3Vycl91dG1pX3BoeSk7Cj4+PiDCoMKgwqDCoMKgIGlu
dCBlcnI7Cj4+PiArwqDCoMKgIGlmICghdGVncmFfeHVzYl91c2IyX3BvcnRfd2FpdF9yb2xlX25v
bmUoeHVkYy0+cGFkY3RsLCBwb3J0KSkKPj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm47Cj4+PiAr
Cj4+PiDCoMKgwqDCoMKgIHBtX3J1bnRpbWVfZ2V0X3N5bmMoeHVkYy0+ZGV2KTsKPj4+IMKgwqDC
oMKgwqAgdGVncmFfcGh5X3h1c2JfdXRtaV9wYWRfcG93ZXJfb24oeHVkYy0+Y3Vycl91dG1pX3Bo
eSk7Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy91c2IvaG9zdC94aGNpLXRlZ3JhLmMgYi9kcml2
ZXJzL3VzYi9ob3N0L3hoY2ktIAo+Pj4gdGVncmEuYwo+Pj4gaW5kZXggOWM2OWZjY2RjNmU4Li45
OTQ0NTkzMTY2YTMgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL3VzYi9ob3N0L3hoY2ktdGVncmEu
Ywo+Pj4gKysrIGIvZHJpdmVycy91c2IvaG9zdC94aGNpLXRlZ3JhLmMKPj4+IEBAIC0xMzUyLDE4
ICsxMzUyLDIzIEBAIHN0YXRpYyB2b2lkIHRlZ3JhX3hoY2lfaWRfd29yayhzdHJ1Y3QgCj4+PiB3
b3JrX3N0cnVjdCAqd29yaykKPj4+IMKgwqDCoMKgwqAgc3RydWN0IHRlZ3JhX3h1c2JfbWJveF9t
c2cgbXNnOwo+Pj4gwqDCoMKgwqDCoCBzdHJ1Y3QgcGh5ICpwaHkgPSB0ZWdyYV94dXNiX2dldF9w
aHkodGVncmEsICJ1c2IyIiwKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdGVncmEtPm90Z191c2IyX3BvcnQpOwo+Pj4gK8KgwqDC
oCBlbnVtIHVzYl9yb2xlIHJvbGUgPSBVU0JfUk9MRV9OT05FOwo+Pj4gwqDCoMKgwqDCoCB1MzIg
c3RhdHVzOwo+Pj4gwqDCoMKgwqDCoCBpbnQgcmV0Owo+Pj4gwqDCoMKgwqDCoCBkZXZfZGJnKHRl
Z3JhLT5kZXYsICJob3N0IG1vZGUgJXNcbiIsIHN0cl9vbl9vZmYodGVncmEtIAo+Pj4gPmhvc3Rf
bW9kZSkpOwo+Pj4gLcKgwqDCoCBtdXRleF9sb2NrKCZ0ZWdyYS0+bG9jayk7Cj4+Cj4+IEV4dHJh
IGJsYW5rIGxpbmUgaGVyZS4KPiAKPiBXaWxsIGZpeCBpbiB2Mi4KPiAKPj4+IC3CoMKgwqAgaWYg
KHRlZ3JhLT5ob3N0X21vZGUpCj4+PiAtwqDCoMKgwqDCoMKgwqAgcGh5X3NldF9tb2RlX2V4dChw
aHksIFBIWV9NT0RFX1VTQl9PVEcsIFVTQl9ST0xFX0hPU1QpOwo+Pj4gLcKgwqDCoCBlbHNlCj4+
PiAtwqDCoMKgwqDCoMKgwqAgcGh5X3NldF9tb2RlX2V4dChwaHksIFBIWV9NT0RFX1VTQl9PVEcs
IFVTQl9ST0xFX05PTkUpOwo+Pj4gK8KgwqDCoCBpZiAodGVncmEtPmhvc3RfbW9kZSkgewo+Pj4g
K8KgwqDCoMKgwqDCoMKgIGlmICghdGVncmFfeHVzYl91c2IyX3BvcnRfd2FpdF9yb2xlX25vbmUo
dGVncmEtPnBhZGN0bCwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB0ZWdyYS0+b3RnX3VzYjJfcG9ydCkpCj4+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCByZXR1cm47Cj4+PiArwqDCoMKgwqDCoMKgwqAgcm9sZSA9IFVTQl9ST0xF
X0hPU1Q7Cj4+PiArwqDCoMKgIH0KPj4+ICsKPj4+ICvCoMKgwqAgbXV0ZXhfbG9jaygmdGVncmEt
PmxvY2spOwo+Pj4gK8KgwqDCoCBwaHlfc2V0X21vZGVfZXh0KHBoeSwgUEhZX01PREVfVVNCX09U
Rywgcm9sZSk7Cj4+PiDCoMKgwqDCoMKgIG11dGV4X3VubG9jaygmdGVncmEtPmxvY2spOwo+Pgo+
PiBJIGFtIHRyeWluZyB0byB1bmRlcnN0YW5kIHdoeSB5b3Ugb3B0ZWQgdG8gaW1wbGVtZW50IGl0
IHRoaXMgd2F5IAo+PiBhcm91bmQgYW5kIG5vdCBhZGQgdGhlIHdhaXQgbG9vcCBhZnRlciBzZXR0
aW5nIHRvIHRoZSBtb2RlIHRvIAo+PiBVU0JfUk9MRV9OT05FIGluIHRoZSBvcmlnaW5hbCBjb2Rl
IGFsbCB3aXRoaW4gdGhlIGNvbnRleHQgb2YgdGhlIG11dGV4Pwo+IAo+IEkgZGlkIHRoYXQgdG8g
bWluaW1pemUgdGhlIGFtb3VudCBvZiB0aW1lIHdlIHdhaXQgd2hpbGUgaG9sZGluZyB0aGUKPiBt
dXRleCwgYXMgd2UgY2FuIG5vdyBwb3NzaWJseSB3YWl0IGEgc2lnbmlmaWNhbnQgYW1vdW50IG9m
IHRpbWUgZm9yIHRoZQo+IHJvbGUgc3dpdGNoLiBJcyB0aGlzIGFuIHVubmVjY2Vzc2FyeSBvcHRp
bWl6YXRpb24/CgpEbyB5b3UgbWVhbiBpdCB3aWxsIGJlIGxvbmdlciB0aGFuIGEgZmV3IDEwMHVz
PwoKSm9uCgotLSAKbnZwdWJsaWMKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
