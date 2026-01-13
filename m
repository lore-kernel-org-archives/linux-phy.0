Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A33DD2D111
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jan 2026 14:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nYUK4dyvHv9rxb07OekvUXljA8Lzd1eVfxIm+tQ9XEE=; b=bA0Uts4udLI28p19FbkTJrKR8X
	VQIuFv6iWNZdrV1djKts8bmRSlS489aCJFkZcIuOOC17+HFSwcEAHftLnEmJLssHi9h8f2Y0j/JuZ
	pXMT2HESvHLBAqQ7ZEwclzmWcKPVd45FpwU1QzlHT95xkRv+pRfQVAv8kHmy1K84aQ5xUcREJFbbJ
	bCoNvdd8uhlgJp2Rv7uL/0Fp021cmI3zBW19os4hLIBjYIhPaHqo++qJvqHL4N9Q4bVT4wNHsYA2z
	lB4vI8nu3l4B+tTnJCd4pjIZMWJ+p6WhZIr/TAQMVNafc2rOh5n/Fb/ub4g1Uujb+Cs8lqbgLnCKE
	NPq8UEDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vffbC-00000007HJl-14G5;
	Tue, 13 Jan 2026 14:42:22 +0000
Received: from mail-southcentralusazlp170130001.outbound.protection.outlook.com ([2a01:111:f403:c10c::1] helo=SA9PR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vffb9-00000007HJH-09hP
	for linux-phy@lists.infradead.org;
	Tue, 13 Jan 2026 14:42:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aNr3Qr19QiyQMhPBPp862kJ4t5Kn4YOp8iR1OlzDCbchn9FCIbpXhNzwSwuAxlr/olnzwwaZhWUdHCUUMxBpR7Z1hNnIMJ803IarWGAXt5HEMmoTxBZgmZOWfTzI1iH0TNpxmD5XEsz0j6YYlfLW5v5WGaUu3XDL9C39TwKbp+Ut1vFBDOY2gwy+bqwkyd5NSy3WUMoggdPpE6KRYYP+iJ+igjED17IvCsuJ8smfF1li/fWapLaUgtxHICr/lPAFYIOl9Szae8ihx8Hli630EXAFoYxX/kh8JRHKzrtbnm5YKB9teHYLiS1C9+peh2tnoyJ1R+/lDpklf1xPsUmH3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PQ5Da6zhuTfPmikOfQWtLKHoGPckaVXhvtnn7bhG9W0=;
 b=D34IFZpgS5xH7JgyeIMDwVz9nXLMP3WT8toJD70GDlJ5vnBzKHZgPerER3XrnGS+PXCrwyyRsqtYVbEqIOiZo+vpcOIG69UVMGlE2Ps0/ssPZ0YgAEWIAWwxEV1q49jZrIRTy5UdrlNKm9SL7fvRsiU38am1hJC78Pzmy6CY/9rA7P6bS/iA9BxPERq5JSiMJeaHV44nunbnC8MOJ359cvRlMYhNqtwmpzE0i7y195eYsqJhFaz4QCF6lY+848oU37rWxRdbnc7VhE+XuhO7MMFjsU1tLQoDXVi3guYmMU4q+6xmC9sEnu32Wnr3sQnvjNDV8FMBrJ+ZqbSwy6uEUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PQ5Da6zhuTfPmikOfQWtLKHoGPckaVXhvtnn7bhG9W0=;
 b=CAKazBOTQTiU1j4shH7kMTLCNSlGV0zDzEjdG+eZ/sNlgJnvJWtDTPNOTB5BWXSV1Ip9geJYDxN3FZSsbF8zAzWf1bXnOsA+Px9Sy7jJowcWe4LInwaH4mYsF7NYTVtRgtE5bfbCQhvGxyACNWQQah3AuSKJIdgR+sdX1/5aNbw9eZ7CgzmYjGv4ogF6s54IVpqvMUk1agmPgfcsPaJpJOGUJ+x3gCIKiyFBxmW5x2q5QcEC5CU3brCL1l20oPzWVPbyu9bx9OnIgNgH3LH9rYXsELJmWb3ODIgC7Ovkv6l7KDckunLdb/5hmMpPL5ne8Y/rC9lr7LH8+KOc7CosQQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS2PR12MB9750.namprd12.prod.outlook.com (2603:10b6:8:2b0::12)
 by SJ0PR12MB6943.namprd12.prod.outlook.com (2603:10b6:a03:44b::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Tue, 13 Jan
 2026 14:42:12 +0000
Received: from DS2PR12MB9750.namprd12.prod.outlook.com
 ([fe80::56a8:d6bf:e24c:b391]) by DS2PR12MB9750.namprd12.prod.outlook.com
 ([fe80::56a8:d6bf:e24c:b391%5]) with mapi id 15.20.9499.005; Tue, 13 Jan 2026
 14:42:12 +0000
Message-ID: <043663d0-d592-432b-8550-10669674d17a@nvidia.com>
Date: Tue, 13 Jan 2026 14:42:07 +0000
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] phy: tegra: xusb: Fix USB2 port regulator disable
 logic
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
 <20251204-diogo-tegra_phy-v1-2-51a2016d0be8@tecnico.ulisboa.pt>
 <c5450fc7-230e-4435-bd1d-3db4f1f6e736@nvidia.com>
 <54afff11-df9b-4c25-bd1d-8134196ce093@tecnico.ulisboa.pt>
From: Jon Hunter <jonathanh@nvidia.com>
Content-Language: en-US
In-Reply-To: <54afff11-df9b-4c25-bd1d-8134196ce093@tecnico.ulisboa.pt>
X-ClientProxiedBy: LO4P123CA0512.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:272::18) To DS2PR12MB9750.namprd12.prod.outlook.com
 (2603:10b6:8:2b0::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS2PR12MB9750:EE_|SJ0PR12MB6943:EE_
X-MS-Office365-Filtering-Correlation-Id: 3b121553-1843-423d-796d-08de52b1f004
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016|7053199007|921020;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?K2k2N3E3OE5SUUV4OEFzQnBYZnJFcDB6QUVLZFdyL04xUloxOUJYOTNWa1Zi?=
 =?utf-8?B?TXFFNzM4cWpjbWxCR2YyZG1rYnB0VEhXcnA2UTdMNlNhSCtvdGZpVGpxZ1NF?=
 =?utf-8?B?MWJMWUV1SFVSM3Izd3g2VGwzQ2FtYlNFN3ZZK0lsdWNPUWNGenBVWVJyRWY4?=
 =?utf-8?B?R3k3c3dIR2VvN1VWRXFxMEFIM0VsTThMYmhLZERMeDAwbmVhQU9acmcyWHFs?=
 =?utf-8?B?MnMvQi9WZDVQbkhVL2I5c1lYdnJPSnRPQTh3QmU0eGk4RVVmT2JvZGI4Wm9S?=
 =?utf-8?B?VmFvTk9IdjFNS2tHMGJtVGQxVXdiL1plTnl5bUJ3bkMrZTcrMDhBcU5jcERI?=
 =?utf-8?B?WWtqM1hWdTg0b21IbTUwbUs3UVI5d2xTVFAzUGdULytodE1NSW5rd0VZTWgy?=
 =?utf-8?B?ZTlSbTBmUDU2NEp4TWVLTFBHd0xCS09MQk40RG8zWVAzd3BTV2JYTGpPdEpG?=
 =?utf-8?B?eHo5cXVvQWQxTkFqc3I4NG1hcmN3bUxLOFdpMGYraXlrak1xVzZHZnFGOGxX?=
 =?utf-8?B?WGZRMlhvOUp6WTJXYm5HaHhORmJvN1dnSXJTSnBSTGRFdWRpb3V2a0pkVHhH?=
 =?utf-8?B?UFEzaHQ3NHRHSU9QdG5oTzcycVB3VnBzQ0QyZ2h6cmFBbTE2Y0VKQUtjL1ll?=
 =?utf-8?B?MlA3MEsrRU1KSmxNTWxUYzZ4V05LOVptdjQ1eHhOQllIdlJxRWFuWjQwRWZz?=
 =?utf-8?B?eTkweEVvZDE4eHNiYjhGaE5TamtvcVBDeHREM2hIa1FYYUtzVExHL1ZpNXJl?=
 =?utf-8?B?KzcrM3czYVRTSzJZNVlieG5yYUNtQXhBT0JEdkxrNHRUOXpvWHJtV3ZlVmNQ?=
 =?utf-8?B?ODFCQnR4Sk8xL0pUSjRFSDU2MUFPcURodGZWMEVjd0dxZXF2UEtTWVRHVzF1?=
 =?utf-8?B?SXpqaDJmRXBqcWtvT1kyaUl1a2VuNmhONEdFS1lEZnRNMFZiV2duNjlacGtE?=
 =?utf-8?B?Zm5DckhVb1ZBQllYTkxiZ0lyRzRUV1VVeFRYUkRJajdlRGNRRUZUcGhWcjBm?=
 =?utf-8?B?NWdsNndvMDZBNmRBdE9XaWhxek1Ca0pnb1NzNnFPS0NDTjVwWDc4cGFmeWdV?=
 =?utf-8?B?dldCbUpXdkVVNGY1Q29FMlJva3BkMm9WcXh6OXBGL1h3c09WT3BkeWl6WkJa?=
 =?utf-8?B?T0lIaFU0akJkOEdrSTdtTEZoRmIvck13YTMzR0hvQytJclNaMngwaGE3S2RD?=
 =?utf-8?B?eWpTWllOV1hIZHRkOTh6cVJLUGEwK2RsdHJOVlFzUEpRd0tyem91elJjM05i?=
 =?utf-8?B?Mmo4YlVuZS9jS1FXZXpaVUxhU1pUNEh3RDV4YUpUaW9yc0xIaG83QzJnd3FX?=
 =?utf-8?B?U09TVW16dzl3a0lGRHlZQmJteVdjTTBoZzdLOHZuR0JpVUt0QWJyNjV0SFZ4?=
 =?utf-8?B?Q29zRGMwdkFrc0tibCtTVVQrV2J0VVJMakhRaEM0bUNDeTFvNHB6b3RnWXV6?=
 =?utf-8?B?SUdLSEtYZ3RmRkttYkl1djY1WFNWNEdIK2wveTJUMnF2MlFONlJlM3B2WTJD?=
 =?utf-8?B?S2dZMVFGeTNBOFUzZnBFTFNrTy9GMWhMSnhVN2lmajM3TGc3bXlwU1g2SFMy?=
 =?utf-8?B?Yld1dzVoSDFCM2c0ekFGc3JtanFaZk9pM3F0Z1JUSUFTOXVGT1BERFZpNTJU?=
 =?utf-8?B?T3RFUHBKTEJHR212UldhOTQwZGlETGJ3clN4aEhWQWtKemRvbEUzcHEvU2xs?=
 =?utf-8?B?SjZidXBZK2ZtaVVlOVQvc09sTHMxcWtoZWkwVXpyamtjd0tuWXVHaGZkN2F1?=
 =?utf-8?B?cDA4K1pIZGJNNW5LQ29HZ3pyc2RTYTlHY3k4UFFQME1CMTV2Q3FtTUc1eXgx?=
 =?utf-8?B?SG1lalozWFhGL1prRjJMZzRjTFhUdnhWRmNWT01Bd1lrRU9zN1hkNlNQS3VP?=
 =?utf-8?B?ZmpTYWY5NC9nZ2xZd2o5aFZFV2dBSWJUclhUT3Q1OE5IcVRmdnBvWExiTjR4?=
 =?utf-8?B?dHZFZHhySC9BUWdQVE9WcXludTFoNEZzeWtDU0xCSWQ5VGV5akM3YVFYejlP?=
 =?utf-8?Q?jiWC1lR6CGXN7rXB40HhqmRj0XO9Xs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS2PR12MB9750.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(366016)(7053199007)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NGVvN281elgxVEtaVWh1b0x6eHZNZ1FSUDAyRWlrSXZPT0h6clVmUitUQ2M4?=
 =?utf-8?B?SEs3bURoYWpCdVBRampDZS9ORXFLVllFakNYRElPS0pMQm55TGRCNWEzc3Zw?=
 =?utf-8?B?NFRqWExlQmFtUE41ZFQrWmxUSlRaSmF1THVxM2FGVVhUTmoyMHM5OFZ6bzMv?=
 =?utf-8?B?cTYyR05kQjNOU1VhU1VNU3VpWTlmRWI4NUk2TitTTm1LWk9EMEYrVm0vR3kz?=
 =?utf-8?B?UW1oQktidG1LUXJtSVpmV2dZWExORU1ob1ZJZldielF3UjUybFo4QmJMZ0pQ?=
 =?utf-8?B?MDZoUVZEYy9RVWExZzBwZXlFdUkxOERwOHM0QlBpR0NHaUZyZldYdVFnMUxB?=
 =?utf-8?B?QnV6SCtxZmVaOHptazF2YmZadmg4ZkYrQjJPcllrMW8yYTd0MVF0R2o3OGJq?=
 =?utf-8?B?SFBMNXdGc25BRGs3WkRnWnlXTGszRWF5U01PTkttRFpUTlpZMUNZTnYrdUV0?=
 =?utf-8?B?V0FhRkNZMjhZVVVySDdPT2lhYUdzcURXMHdHZGpTbnhvRi80SkNXczN0TW9U?=
 =?utf-8?B?bStDTUFxbzNpWm01Vmc3ckRpYkpsOE1mKytkL2YvdzE1K29IN0l0L1dUZ2hH?=
 =?utf-8?B?NHJTemUwdlIzM3lxSGVOR3hrUUVCcWlwdHhGS1J1STlWVDFySkJNNGdtcG5w?=
 =?utf-8?B?UzJmRGlCRGEzUWRCMUJSVmxyV2ZDV0Rmd3BiVU1lNGVVdGc1NlprNUVMT3JJ?=
 =?utf-8?B?enR6Ti9nYkw0dUNxZTd3VWZUQk8wVHVpeFYvdDhhdnZRSWdpZkRpWkNKQ1R3?=
 =?utf-8?B?YkVBTjV3R2p3N0dXSEttQUZGL01HM1pXYUxmZjdUVENmb2NIVU8wUEhRNU50?=
 =?utf-8?B?ZjhLemZPem5PY3dqaFY1MlRvUWhFTjRpK3RXTHorbHNmY29OQ0V0WThQVTZa?=
 =?utf-8?B?RlBhNkdOWFM2UC84T3k1UmNCTXJSN2gvaE52T3JLRForTjhkcTY5WG9XZ1Qw?=
 =?utf-8?B?R2lCajlpTUdpOUtjZExWeXJvZVR6ZTJlN0plTHlXQk1yYzNtTzJQSkM4eERT?=
 =?utf-8?B?TFZncm1DQW0rV2JvUHBpb3dJRlNRYlh6RGk1aTV1MUl3Mk13SXJqaGxaSVUw?=
 =?utf-8?B?V1VuYjI4aXBUVmk5VnRhbjRWQktSRTFzTjg0MDh0ZlF3Nk1RY3FDeWhiR0s3?=
 =?utf-8?B?L0IzVVNRN2ZLcWFXNHNISTcza0x1ZkJtUFNZWlVUdlMrUDF1UStGcDNmSXRa?=
 =?utf-8?B?dzBqWkgvVzZjZ1hJekhLWGpzV25SMHJJWUk0N01SMzJ1ZlNvZDVxb3NRSkRG?=
 =?utf-8?B?dmdEbk5SMEtaaVZjVFhuTktIcEgrYWNwcExUcWJXNzJnbVdaODFTQTl4Z1p0?=
 =?utf-8?B?Nng1ekV6bkdkOEhIWGRMRjhGWGZzWm5yR2w3eC9Qd2Y5ZUthRlduL1gwYUZs?=
 =?utf-8?B?aWJ3WmFmWlJWeStNVG5FSTFscnNNWktRb1VWeTNmY0JvclN5OHJpeUdyejdY?=
 =?utf-8?B?cWNUbVZMQnAwWGx2dit5TWtuaWxHNFVEeVBDUTQ5U2FkempCY0lNMjBqS1Ix?=
 =?utf-8?B?aWhhTVJvUGQvY2xYZThrcFRTSmRsVmdpSFdRMENLeUl3eEV2V3NnUDRvOUYz?=
 =?utf-8?B?V3RSUmpHRDM0bU9qbWFLQk9QNXBLenlwZ3VtMXF3UC91Y2cvcWE5TW5KaExp?=
 =?utf-8?B?N0lhcEFlMFBSVlRoZnRoKzJ6QitiTEhNOTloNHQxemkxdHBqbEdhSXBmaXUx?=
 =?utf-8?B?K2dLSE5nZWxjRURZSlNnQWZlL2ZuMWtIZXhLUCtDOFZKZndWTm02U3dpV0FX?=
 =?utf-8?B?bnRwdWorbmgvVms5cXg2N0hBT1Fnd0NUbGhmeEk5UWk2L0hGSE9zU3h3KzRp?=
 =?utf-8?B?bC9Kd3owQTV6dmlQMmdjR3l4YS9pcThDNUp1d1lrVGd1bXcvbVg4aGRxTjly?=
 =?utf-8?B?NWR3QUFrOGptcjZGT3VGYm1ReXltRlpoRDJ5cmVERXVuU1VQTyttSVZ2Q1ov?=
 =?utf-8?B?ckR2RjZ2dDlMelB3dG11clhPOTNINWNXbzVYd1JIcUZoa3ZRaVIwWnZsUUdK?=
 =?utf-8?B?Tm1vZ0VhRlhyUGVRMFRkZkxCY3k2ZC9PVTN5N1N5ZXlXbFpVZ3RCZGJGT1ky?=
 =?utf-8?B?M3dUZTh1QVdYOVY5UzFtL0M3b1JEaGJLSnZ0U3dtZnpKRWtEaHlZZjZZNzU1?=
 =?utf-8?B?ZWtwOXRxQzBSK3p4Mm1zclpTNFRlaFlCUXpLUFlHc2c1bE1JOHJnK3ZIMVBu?=
 =?utf-8?B?bHVmZ1RnQVY1QzhpUkdhUlJKSVBmZklhVFF1SGFFOXZUZm14Y29wNk0zYVR6?=
 =?utf-8?B?QmFnT1ExTHVZdTJvWEtLV2x0VDdPS2RYd2RSOFM1QVdrcHFRYmgrSFJ4aTAr?=
 =?utf-8?B?d2VkM0tEeGdiMVNCdlNlUjJUcTJGNXBFYTV1R3Rqc0picjZiT1ZqUT09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b121553-1843-423d-796d-08de52b1f004
X-MS-Exchange-CrossTenant-AuthSource: DS2PR12MB9750.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2026 14:42:12.4850
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 59waTxhK1CmksUhHN6koZ7wuYE2cd5e5e1aiwKSFi8qjWp7ADeApq2TBnIRzhHdX6lOpCFxqSG1qxCSUdVY+wg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB6943
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_064219_085127_706B5C27 
X-CRM114-Status: GOOD (  22.38  )
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

Ck9uIDEzLzAxLzIwMjYgMTM6NTksIERpb2dvIEl2byB3cm90ZToKPiAKPiAKPiBPbiAxLzEzLzI2
IDEyOjAxLCBKb24gSHVudGVyIHdyb3RlOgo+Pgo+PiBPbiAwNC8xMi8yMDI1IDIxOjI3LCBEaW9n
byBJdm8gd3JvdGU6Cj4+PiBUaGUgVVNCMiBQSFkgbW9kZSBoYW5kbGluZyBvbiBUZWdyYTIxMCBp
bmNvcnJlY3RseSByZWxpZWQgb24KPj4+IHJlZ3VsYXRvcl9pc19lbmFibGVkKCkgd2hlbiBkZXRl
cm1pbmluZyB3aGV0aGVyIHRoZSBWQlVTIHN1cHBseSBzaG91bGQKPj4+IGJlIGRpc2FibGVkIGR1
cmluZyByb2xlIGNoYW5nZXMuIFRoaXMgaXMgYmVjYXVzZSByZWd1bGF0b3JfaXNfZW5hYmxlZCgp
Cj4+PiByZXBvcnRzIGV4YWN0bHkgd2hhdCBpcyBzdGF0ZXMgYW5kIG5vdCBpZiB0aGVyZSBpcyBh
biB1bmJhbGFuY2VkIG51bWJlcgo+Pj4gb2YgY2FsbHMgYmV0d2VlbiByZWd1bGF0b3JfZW5hYmxl
KCkgYW5kIHJlZ3VsYXRvcl9kaXNhYmxlKCkuIEZvcgo+Pj4gZXhhbXBsZSwgcmVndWxhdG9yX2lz
X2VuYWJsZWQoKSBhbHdheXMgcmVwb3J0cyB0cnVlIG9uIGEgZml4ZWQtcmVndWxhdG9yCj4+PiB3
aXRoIG5vIGVuYWJsZSBncGlvLCB3aGljaCBpcyB0aGUgY2FzZSBvbiB0aGUgUGl4ZWwgQy4KPj4+
Cj4+PiBUaGlzIHRoZW4gbGVhZHMgdG8gdGhlIFBIWSBkcml2ZXIgd3JvbmdmdWxseSBjYWxsaW5n
IHJlZ3VsYXRvcl9kaXNhYmxlKCkKPj4+IHdoZW4gdHJhbnNpdGlvbmluZyBmcm9tIFVTQl9ST0xF
X0RFVklDRSB0byBVU0JfUk9MRV9OT05FIHNpbmNlIHRoZSAKPj4+IGRyaXZlcgo+Pj4gZGlkIG5v
dCBwcmV2aW91c2x5IGNhbGwgdGhlIGNvcnJlc3BvbmRpbmcgcmVndWxhdG9yX2VuYWJsZSgpLgo+
Pj4KPj4+IEZpeCB0aGlzIGJ5IGtlZXBpbmcgdHJhY2sgb2YgdGhlIGN1cnJlbnQgcm9sZSBhbmQg
dXBkYXRpbmcgdGhlIGxvZ2ljIHRvCj4+PiBkaXNhYmxlIHRoZSByZWd1bGF0b3Igb25seSB3aGVu
IHRoZSBwcmV2aW91cyByb2xlIHdhcyBVU0JfUk9MRV9IT1NULgo+Pj4KPj4+IFdoaWxlIGF0IGl0
IGZpeCBhIHNtYWxsIHR5cG8gaW4gYSBjb21tZW50Lgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IERp
b2dvIEl2byA8ZGlvZ28uaXZvQHRlY25pY28udWxpc2JvYS5wdD4KPj4+IC0tLQo+Pj4gwqAgZHJp
dmVycy9waHkvdGVncmEveHVzYi10ZWdyYTIxMC5jIHwgNSArKystLQo+Pj4gwqAgZHJpdmVycy9w
aHkvdGVncmEveHVzYi5owqDCoMKgwqDCoMKgwqDCoMKgIHwgMSArCj4+PiDCoCAyIGZpbGVzIGNo
YW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9waHkvdGVncmEveHVzYi10ZWdyYTIxMC5jIGIvZHJpdmVycy9waHkvdGVncmEv
IAo+Pj4geHVzYi10ZWdyYTIxMC5jCj4+PiBpbmRleCAzNDA5OTI0NDk4ZTkuLjYzYWQ1N2Q5NTUx
NCAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvcGh5L3RlZ3JhL3h1c2ItdGVncmEyMTAuYwo+Pj4g
KysrIGIvZHJpdmVycy9waHkvdGVncmEveHVzYi10ZWdyYTIxMC5jCj4+PiBAQCAtMTkzNCw5ICsx
OTM0LDkgQEAgc3RhdGljIGludCB0ZWdyYTIxMF91c2IyX3BoeV9zZXRfbW9kZShzdHJ1Y3QgCj4+
PiBwaHkgKnBoeSwgZW51bSBwaHlfbW9kZSBtb2RlLAo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgLyoKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBXaGVuIHBvcnQgaXMg
cGVyaXBoZXJhbCBvbmx5IG9yIHJvbGUgdHJhbnNpdGlvbnMgdG8KPj4+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgKiBVU0JfUk9MRV9OT05FIGZyb20gVVNCX1JPTEVfREVWSUNFLCByZWd1
bGF0b3IgaXMgbm90Cj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICogYmUgZW5hYmxlZC4K
Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBlbmFibGVkLgo+Pj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAqLwo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKHJlZ3Vs
YXRvcl9pc19lbmFibGVkKHBvcnQtPnN1cHBseSkpCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBpZiAocG9ydC0+cm9sZSA9PSBVU0JfUk9MRV9IT1NUKQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCByZWd1bGF0b3JfZGlzYWJsZShwb3J0LT5zdXBwbHkpOwo+Pj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdGVncmEyMTBfeHVzYl9wYWRjdGxfaWRfb3ZlcnJpZGUo
cGFkY3RsLCBmYWxzZSk7Cj4+PiBAQCAtMTk0NCw2ICsxOTQ0LDcgQEAgc3RhdGljIGludCB0ZWdy
YTIxMF91c2IyX3BoeV9zZXRfbW9kZShzdHJ1Y3QgCj4+PiBwaHkgKnBoeSwgZW51bSBwaHlfbW9k
ZSBtb2RlLAo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIH0KPj4+IMKgwqDCoMKgwqAgfQo+Pj4gK8Kg
wqDCoCBwb3J0LT5yb2xlID0gc3VibW9kZTsKPj4+IMKgwqDCoMKgwqAgbXV0ZXhfdW5sb2NrKCZw
YWRjdGwtPmxvY2spOwo+Pj4gwqDCoMKgwqDCoCByZXR1cm4gZXJyOwo+Pj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvcGh5L3RlZ3JhL3h1c2IuaCBiL2RyaXZlcnMvcGh5L3RlZ3JhL3h1c2IuaAo+Pj4g
aW5kZXggZDJiNWY5NTY1MTMyLi4yNzNhZjE0N2RmZDMgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJz
L3BoeS90ZWdyYS94dXNiLmgKPj4+ICsrKyBiL2RyaXZlcnMvcGh5L3RlZ3JhL3h1c2IuaAo+Pj4g
QEAgLTMxNyw2ICszMTcsNyBAQCBzdHJ1Y3QgdGVncmFfeHVzYl91c2IyX3BvcnQgewo+Pj4gwqDC
oMKgwqDCoCBlbnVtIHVzYl9kcl9tb2RlIG1vZGU7Cj4+PiDCoMKgwqDCoMKgIGJvb2wgaW50ZXJu
YWw7Cj4+PiDCoMKgwqDCoMKgIGludCB1c2IzX3BvcnRfZmFrZTsKPj4+ICvCoMKgwqAgZW51bSB1
c2Jfcm9sZSByb2xlOwo+Pj4gwqAgfTsKPj4KPj4KPj4gQSBzaW1pbGFyIGZpeCB3YXMgbWFkZSB0
byB0aGUgVGVncmExODYgY29kZSBieSBjb21taXQgY2VmYzFjYWVlOWRkIAo+PiAoInBoeTogdGVn
cmE6IHh1c2I6IEZpeCB1bmJhbGFuY2VkIHJlZ3VsYXRvciBkaXNhYmxlIGluIFVUTUkgUEhZIAo+
PiBtb2RlIikuIEFsdGhvdWdoIHRoZSBhYm92ZSBsb29rcyBzaW1wbGVyLCBJIGFtIHdvbmRlcmlu
ZyBpZiB3ZSBzaG91bGQgCj4+IG1ha2UgYSBzaW1pbGFyIGNoYW5nZSB0byB0aGUgVGVncmEyMTAg
Y29kZSBzbyB0aGF0IHRoZXkgYm90aCBhcmUgCj4+IGltcGxlbWVudGVkIGluIHRoZSBzYW1lIHdh
eT8KPiAKPiBMb29raW5nIGF0IGNlZmMxY2FlZTlkZCBteSBhcHByb2FjaCBsZWFkcyB0byBsZXNz
IGNoYW5nZXMgYnV0IEkgZG8gYWdyZWUKPiB0aGF0IHN0YW5kYXJkaXphdGlvbiBiZW5lZml0cyB1
cyBoZXJlLiBIb3dldmVyIGluIHRoYXQgY2FzZSBJIHRoaW5rIHdlCj4gY2FuIHRha2UgaXQgYSBz
dGVwIGZ1cnRoZXIgYW5kIGFjdHVhbGx5IGp1c3QgaGF2ZSBhIHNpbmdsZSBmdW5jdGlvbgo+IHRl
Z3JhX3h1c2JfcGFkY3RsX2lkX292ZXJyaWRlKCkgKGFuZCBsaWtld2lzZSBmb3IgdmJ1c19vdmVy
cmlkZSgpIGFuZAo+IHNldF9tb2RlKCkpIHNpbmNlIHRoZXkgYWxsIHNlZW0gdG8gZG8gdGhlIHNh
bWUgdGhpbmcgaW4gYm90aCBwbGF0Zm9ybXMuCgpZZXMgSSB0aGluayB0aGF0IHdvdWxkIGJlIGZp
bmUuIEkgY2FuJ3Qgc2F5IEkgaGF2ZSBsb29rZWQgYXQgdGhhdCBpbiAKZGV0YWlsIGJ1dCB0aGF0
IHdvdWxkIHNlZW0gbGlrZSB0aGUgbG9naWNhbCB3YXkgdG8gZ28uCgpKb24KCi0tIApudnB1Ymxp
YwoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
