Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10189D2D0E2
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jan 2026 11:56:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BvqXsghwdpzLnOuqVpViQ5yT3ScDGy3aY5aG+ybstMc=; b=IW//3EbGBy2umy9sDAtY7m3W+V
	JXc7LCbpvcrorDbF3MvWwkedBXRLsB3UrvJ9eCiSYzIxq/xG0b4k5XMMz2AhDrlxTe4ccn0/45Z6p
	HrL2569cBVwByxdkifsnK8qVTBk+AvYXzaJMom12hPokL4nOSGuG5Hep5lxHtllqc96UeOHknPGS8
	ABqGTF84JBu3x2ofsVdaSZtL0gICKF0HkUR3tnL87lkS+Rcv8jHSqabmTsGMEd8uW575IVXcRMvcm
	ORznLBaxNWkjvEWK5cTcgsUVFRqUK8MGnXrF85nuBKKNES78muy/mH9On8MnqTFM8bRYurdYKDQIp
	3Waw5GGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfd0l-000000072yh-0wHV;
	Tue, 13 Jan 2026 11:56:35 +0000
Received: from mail-westus2azon11012039.outbound.protection.outlook.com ([52.101.48.39] helo=MW6PR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfd0i-000000072xx-4BD0
	for linux-phy@lists.infradead.org;
	Tue, 13 Jan 2026 11:56:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ewl54fCqa8Yca/hYzPK3AEYXtnKkGwgraRohaymxO/KbwVhISVlv++CsZuKqhRK1iGXpMCm+mFhB7lYgeG4GVYY9srwufLenA3p05qWAmKjpXEbzhpsGVUkvmFW1Nploeknvv4R9gFBJjvxhjop9XgtcFOora+N6HsD5JNcnCwvVMk2y5buAGzR73F/vel0l06s9cBEbPsCJQmhlSkMYy3x/fIYExKMnJf8keVvIDovlo+oByXx4sVuqZWX+/i7bkRZwaXbZYfZletpiEJNZXDu4QA/qrZzyItUw8qPhRt6+sx8AU8lRGYZgJNlv5tgj6M4rmtrJiUs2BknCPgoptg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Pycj8gyC3JVy1MX4RWRUYAbyFWosXJzddL30ysFPrtk=;
 b=Nirr5QDICOeKh5ZxU6W/kgaX6JjQQHINJzOJlFAG+0QZBsJfpvUNFTnp654Dfa35OuA+xoADbqfjlCHYBF5ro71fx7dj/X0HJdnrbyKZaZa007wvUXGDhkfs38hdD/Vin6+3XRDcq4qiEUf53cOnCgURMNNouLVnyndIoGrzDPMmkZl8ULVXQ+pvmYkr02Ezio9p1ZY4ZP8rBcKkZYrJSUuNEHMcwhO78Q/A4cGtJLilRyEfoXvTSZHe2pbrqU6Mjw11kjy+G4+Jb5mH4gu+b+DI72L4YolaU6y9WncDLEu/FT2aYbnND+0lVzjxregEh8yeSZ6B695EHN9CrFLWKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Pycj8gyC3JVy1MX4RWRUYAbyFWosXJzddL30ysFPrtk=;
 b=Ts0725ujzrR1GM/gCe7EoKGYHGl4y0zjOEGmaD6vxJS+yzYyQwe7HIAAaKt0RURt4edfN5IjCPLOqkDbvtt/Fstp3JuqkCCfVxCFamFbeAzI7zuuBR/SvHDnJN4yr63LKqR5lNKA7HH75HIMLAiF/ZWzcit8F70ZJklclPSXopMeoSLxpyaM42x9b8gmsdijJwVngzjA6nfuq1X0lVNTB+wsG8BYk9QRDCXpuEO5eI59tsdtZwYBaRo0b2aplAB2c23lYvxEUk4q/giuj0/fwjJkeDIw+zzferyDeFkxZksrXX33NwLZn2NvFiuG6nlGhz3feDKeX7dA2B/JtqN46Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS2PR12MB9750.namprd12.prod.outlook.com (2603:10b6:8:2b0::12)
 by LV8PR12MB9206.namprd12.prod.outlook.com (2603:10b6:408:186::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Tue, 13 Jan
 2026 11:56:24 +0000
Received: from DS2PR12MB9750.namprd12.prod.outlook.com
 ([fe80::56a8:d6bf:e24c:b391]) by DS2PR12MB9750.namprd12.prod.outlook.com
 ([fe80::56a8:d6bf:e24c:b391%5]) with mapi id 15.20.9499.005; Tue, 13 Jan 2026
 11:56:24 +0000
Message-ID: <86cd3ff0-1609-44cb-911c-f0e97652ca1b@nvidia.com>
Date: Tue, 13 Jan 2026 11:56:18 +0000
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
X-ClientProxiedBy: LO3P123CA0026.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:388::6) To DS2PR12MB9750.namprd12.prod.outlook.com
 (2603:10b6:8:2b0::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS2PR12MB9750:EE_|LV8PR12MB9206:EE_
X-MS-Office365-Filtering-Correlation-Id: 306ccda2-99e5-4edd-9660-08de529ac66a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|7416014|1800799024|7053199007|921020;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MjdJb08xQy9yOTRaVFVONDdUbFlZK2thOHZ5bEhmcWJGY1NjeTNaZmFvQ2I2?=
 =?utf-8?B?QlBCbUFQUGlGbHdRVmt3bEQrL3cvSHQvYXgvSnRCZGZiaDArNjRlVlNDV2JG?=
 =?utf-8?B?dzRlSG4weDE1ajhWZkV5SmhUdTlUSVVwS1ZXU3FMTEhjbXFpUCtrRGp2Sk4r?=
 =?utf-8?B?eTF3dDd5Y21jc1ZJalN5RTZrSy8yRmJXd1JyRW1KOFZ5WnA1eTZzMnBjdmxY?=
 =?utf-8?B?Q1RqaUt1YTdlVXRkZ1BpWE9DU21ZMFhtMU1vSVkxS3hIaHF4bWVuVDBSK3U0?=
 =?utf-8?B?dDNwUkw3emJ2bDhNaVJlZ0twVTlRb1NlbGtUakhTMmdDNkFpUjZqMHZWckxY?=
 =?utf-8?B?SllUdUp0Q0lQWmhlRjVlWUwxWmtqSUhibm00Skp5a3ZPZVhXNW50cGFlWVBF?=
 =?utf-8?B?d3lsVXRGZ1hsaUY4bVZRV21NZjd5SjllczVEUGQzSStLdDJKZ0JtSm5hY3Mw?=
 =?utf-8?B?eEVlb2o1ZW1BYnR1bC9PWGNzUkhqU0NmRTZSVUdaRURDNGdzakNpUldVL3Za?=
 =?utf-8?B?TVhUejV6NkMrUDRram5qajBXVEVyeHhXM2liWEpFM3IwQ0xkdzAzN0VBU096?=
 =?utf-8?B?R1BTNWYzVjYyMytGZU54cHhSRmVhd0N1LzV1RXMrWVNVL0xJL1pvMDlPcnFS?=
 =?utf-8?B?TXp3UnBNTnpSZGNEMUhMeEQwNWp6dDBUMFVNanB0MXdVci9IZWx2ZldWaG9G?=
 =?utf-8?B?Sjl5NEhMWnZQbGdURVo3amNlMkxZclhkWHR4OFdiazRKR1lUeFlhT0FSYzZv?=
 =?utf-8?B?VnF1M1VzTkl0VE01ejVySmF3M0dnRk5WdW1YMkdyNGhxZFc1c252TFlReVJp?=
 =?utf-8?B?a0xzWHF4MHpGM2ZOZFI2SnQ2cit2OWlZazZjWE5Ycys1YisxUC92dlhtdHBS?=
 =?utf-8?B?OFhVZDNucURueFl4SGNscTg3ME05MHNtOFFlQWVVc25GOGJ2WnpUc0llOFJk?=
 =?utf-8?B?WjJyVU9UTytrU285dzcrNFRTZ1draTdnd2gwcjZUc21selUwQ1lEZ1NVN005?=
 =?utf-8?B?TGZJU0JoVVdTMmtqT0kyNjMzd0hrK01tTS8vWkdDT3FRQ1UxUTJLVitwM0Vl?=
 =?utf-8?B?Q3lTMHBRc1JQazhwNEYyNzBOL1ZhNGt6RDEyY3RScmRLM1NjYm1tWHI0NFp0?=
 =?utf-8?B?QnJjRGVrWGtZM2pwR0M3WVlCcWRQcGlFV3lvMFNOdmc2RnJoMU0yemhaWHNt?=
 =?utf-8?B?Ynp5TVhkdnhxQkdSNVdUcll0QVhTNjRpaGdLYkt5alh4dkFQSzUvMllFZmU1?=
 =?utf-8?B?M0xwSmRjTi9IRGp0bXhlSmdRc3M3dUNpSWJwNWxaZjZ2Y3Z0RU80SVFiTnM5?=
 =?utf-8?B?blZRTHkwZFZQR2gza2dkalU2N0JGRittemVvbDdlaUpFNWRZeElaYmNicVpI?=
 =?utf-8?B?RUN3dVVhTG5wSmR0VEM5ZkIrVlhSWVpuaEVlR1VXYU5qdGNTZm1CeHhCZWVP?=
 =?utf-8?B?bk01YzV2c0dHUjcwUUcyL05PbDZXSnQzd3hGK3RwSzhPTkUxMjRCSVJlazVs?=
 =?utf-8?B?ZTZPUnlHalQ2cDJ0NUh3UEI2cVFoNVhHVzZOVWlmczZVTGNqSzFKMXBCK0hI?=
 =?utf-8?B?djFIY3dJekE1bW9aNHZ6TWFNNzVjbCtyWDlMeXNTSjVnS21JaDFhNTNneHdZ?=
 =?utf-8?B?MVlETDVGZEFlVllKZXJaM2E4M0xDWC90dUE2MDVaZkRnQWRJQXN2RmR2Umdi?=
 =?utf-8?B?NXRqQit0WWhOb3ZXeWEzYkR1NWE5SDRPZUJhakVRNk5ramE5WkRGeHgwQm1W?=
 =?utf-8?B?eHdnZ1lDaFRiMDMwZTNvZmNmckg5L01DNU5XMjNUSk5kSW9WZXNrRzdSbFNo?=
 =?utf-8?B?QjJ2OWFNdVRIUEZ4N3VXRzRpNDhJRUpXam9ZSExRS0hpSnBFL2JRV2twSS9t?=
 =?utf-8?B?aGRZb1hFb3JadjZGa1JpLzB3b1lRdnpiUkYvNUZVOEhiaHo1QUlNcmRYcEcw?=
 =?utf-8?B?SCtTcHVVYmRHV1dVdWZtRysrR2dLTnFwWUVtYjkvdmc4UkZNbHhBQ3BpcUNx?=
 =?utf-8?Q?sg/8R+W4yqvw9o3ns+lG+d6Yl76Xig=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS2PR12MB9750.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(1800799024)(7053199007)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QnVNbkMzd3VsMUwzUDZySlN6NkFVMzk1bW9hSnUwNkh0WU02ZjJXc2FNNzFZ?=
 =?utf-8?B?U2oyU2pYTnlhZCtDc0tnWFBZWWNhQjVGbHF0TnVQaEQvZ3ovNXBxQStJSjRL?=
 =?utf-8?B?bFVVaWU1L2ppVnNpTFlEWnN0ZmdvWUlVMTB5dEIzWDIzZ1ZQMUJhMmRpdEtM?=
 =?utf-8?B?UmZVOVhveVUwU0ZSQmxNaUo3ZXIwRW5Ta2pXYXJMUCtLTHdUUStNYlZwSzdD?=
 =?utf-8?B?bFFjODhNNkZ5ZWltcGlTQnlJcmllNnRoeXI1aG9sRmJPQ0t1ZTZ4U3NEMDRt?=
 =?utf-8?B?eFhpVWFjdHpDd3hNU3Fqd2xrb3JNRU9CY1I1ZTlCb0taNGpVMjFuS2tJRGNV?=
 =?utf-8?B?UVNlejN0U2VudVRXWWhOZzNyaldVa0VNZWJDbEQvaHBkZlBCMUorOCt4UWlC?=
 =?utf-8?B?Q25qejBqU3BFL3ErZFkrMVBubTRVemszL25nbVIvSU1UVTdRVzhHdFlKSWhx?=
 =?utf-8?B?VkxENHk5YmRubEVyVFhZcmdsM3Z6ZEZ2NDFQMEZ6cVlwVWdNckVibEJKbEpJ?=
 =?utf-8?B?NDI3b20rcC85VG9HRzVucXo5YlRlSDBmRWhtNjFzSlRLbUEvNW8xNTVra0I0?=
 =?utf-8?B?dVl6U2ZFalU4YW96c3FKdXBoWTE5R01TdXhjaWZnY2pvcitKT296bk1tNUtZ?=
 =?utf-8?B?T3NDN0hwVFpFSnRZVVJ5UWtrbW94SERNU285MnFPc1ZicUl2TTFDMWlpSDBt?=
 =?utf-8?B?Q2VCMm5EZHlVSzdGRVluVlU0UTUzT01sam9Jb2Y5VlNVbHJhNUV3M0t6WUwy?=
 =?utf-8?B?bExDSXVFNmpuRVQ0clpBOGZDOTREbW5GYkM5aVpEbHB3TkY3cXJIaXcxd29P?=
 =?utf-8?B?RHNsWHpyeDF0M0VQaUp6Y0sreGVlY1JENzc0ZVFrR3ZmdEN0QW44VlloUTJB?=
 =?utf-8?B?OWY4aGkxMGxBWmUxcko0dmZGTmlRSldaUFFnZXh5OVV5WnJLeDhWZFVYQmw3?=
 =?utf-8?B?QjdOZmxOUG9NMUhMUFVIbW1xdFFPdnBrQ2QzYnBKUTdJcnkrM0pwOFowMWpP?=
 =?utf-8?B?ZmJmYjNIWlNBNVdicmlMZWVIK3BvRUdvd2ozd1o0QXo5bWtkMEJsUFdWR2p1?=
 =?utf-8?B?T0VnS3V5S1B6OUdycFZKRkVMVDJ0azFidXhtWmpnMTYwbURZdkpxMCtJeW5T?=
 =?utf-8?B?VWZQdTlrM0VMLzAzbENCVXVnYjRuWktCcS9IVWFRc0lPNjROUGhYL1lWRTdm?=
 =?utf-8?B?T2VhVUowQ2d6WStGN0dUdDVQbXBuWXNrN1BwUC81eWxhSE5zaVhkUm5BamRt?=
 =?utf-8?B?R2xkcWNEVmVEWXl2Mmczckt6Qi9IRGpheHE3UVp3Z2pqUE5LUk44VmtId2Jp?=
 =?utf-8?B?OHBtdmVzS0g4NVg1ME5vRkpxTkFlVzl0aUI3ajJTUGR0OGZMUW40cE1NSWNP?=
 =?utf-8?B?WFNLOFErdmJHZkxycGM0VWxpMmI3bEFFUTJ4dXo3Z1p2cWxWN3k0V3BIYW9j?=
 =?utf-8?B?NTVycjllUTVwcUwzOUNxdThqMWUva3kwUmgwNkdPeU5tTGtsNW5sa1AyNG8y?=
 =?utf-8?B?ZnYzWEVsclZZc0k3UmRLU0lPVlRjLzRpUi9tMmpFUHJOWWJuVWtTSnoxbUxI?=
 =?utf-8?B?cDVtbVV5S3NuOFV3bGd3RXhGeGpYamF3VGJhVnhrWStVUThxTGRWbmEwL1VF?=
 =?utf-8?B?SjYvSnpKMmxibC9lalhldnpITFU5aDNBVUtsaGtyWlR3QVUzS1FNVHhobEY4?=
 =?utf-8?B?cnBXb1MyWWl3S0srUENmU3Exb1JSODdOaUhrTkFLVVdhd0N6SUZ5dGRUVkhL?=
 =?utf-8?B?VDR1YldueTB0ZTVhb0w4dm1VMnUxc0NZTHF2TjAySXl1NGRRZFFZMFdDd3dN?=
 =?utf-8?B?UE4vUmt5eW5HMm5vejh4b1ZzQ1lnbktaM2c3UXZFUzRraVkxcDlDZjkxallR?=
 =?utf-8?B?Mm9SUXU4YXdUclBQUHdKcHZQV3NHc3A2cG1sMExWeHBiOEc0RFlrRFI3b2lQ?=
 =?utf-8?B?WDBNZEt1U1puVjdPNWVRZlJ4ZHNweEtWL0FCTWVnR1RKdVhqV0xUcFRPemZv?=
 =?utf-8?B?M1FEVTEvR2FCc0dkODloQXp3VzkvZFo3K01neklvUlhlMjBZU2JkWTRuRnEw?=
 =?utf-8?B?L29manNUcTFMeWZBQngvR2NqQlFGZXJ4WkRTd0h5c3ZuM1ZoUnFwanc4bld0?=
 =?utf-8?B?M2RlOEhoZGNLSjkxaFlsaE5vUHhYRVVLL3NtUnNMV3BCSVJnOEJ3UlFYVHRT?=
 =?utf-8?B?MUVxL1c1N3NTcm5wYkZLU1p1bm5pdVdsMVNrU0RGbTdnMnFjMU9EdE4wek44?=
 =?utf-8?B?amZYMW9XeHBBdW5SU05DaDJDcHF5d1l3UG1yK1dxUUtBNEpDN1dYK3Q2Tzlu?=
 =?utf-8?B?SkpFVnV3Slk3TlpLcXhZKzZCQlhTQWp1TjNLYU5wNTkxUWtualVrdz09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 306ccda2-99e5-4edd-9660-08de529ac66a
X-MS-Exchange-CrossTenant-AuthSource: DS2PR12MB9750.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2026 11:56:24.2384
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eY2xWhE9nrwBaakIA72ymGq+DfmDaQ1XU3+3ZogoqUUbhLvgtujyzOgyVJ+BnBeEScA/9yrNkuGh14864nUnfw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR12MB9206
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_035633_062067_8C15F0B5 
X-CRM114-Status: GOOD (  31.72  )
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
aW5nIGFuZCBoYXZlIG5vIG90aGVyIGJhc2lzLgoKVGhpcyBpcyBubyBpbmZvcm1hdGlvbiBoZXJl
IGFib3V0IHdoeSA2ICogNTAvNjB1cyBpcyBkZWVtZWQgdG8gYmUgCnN1ZmZpY2llbnQ/IE1heSBi
ZSBpdCBpcywgYnV0IGEgY29tbWVudCB3b3VsZCBiZSBuaWNlLgoKPiBUaGlzIHdhcyB0ZXN0ZWQg
b24gYSBUZWdyYTIxMCBwbGF0Zm9ybSAoU21hdWcpLiBIb3dldmVyLCBkdWUgdG8gdGhlIHNpbWls
YXIKPiBhcHByb2FjaCBpbiBUZWdyYTE4NiBpdCBpcyBsaWtlbHkgdGhhdCBub3Qgb25seSB0aGlz
IHByb2JsZW0gZXhpc3RzIHRoZXJlCj4gYnV0IHRoYXQgdGhpcyBwYXRjaCBhbHNvIGZpeGVzIGl0
Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IERpb2dvIEl2byA8ZGlvZ28uaXZvQHRlY25pY28udWxpc2Jv
YS5wdD4KPiAtLS0KPiAgIGRyaXZlcnMvcGh5L3RlZ3JhL3h1c2IuYyAgICAgICAgICAgIHwgMjMg
KysrKysrKysrKysrKysrKysrKysrKysKPiAgIGRyaXZlcnMvdXNiL2dhZGdldC91ZGMvdGVncmEt
eHVkYy5jIHwgIDQgKysrKwo+ICAgZHJpdmVycy91c2IvaG9zdC94aGNpLXRlZ3JhLmMgICAgICAg
fCAxNSArKysrKysrKysrLS0tLS0KPiAgIGluY2x1ZGUvbGludXgvcGh5L3RlZ3JhL3h1c2IuaCAg
ICAgIHwgIDEgKwo+ICAgNCBmaWxlcyBjaGFuZ2VkLCAzOCBpbnNlcnRpb25zKCspLCA1IGRlbGV0
aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS90ZWdyYS94dXNiLmMgYi9kcml2
ZXJzL3BoeS90ZWdyYS94dXNiLmMKPiBpbmRleCBjODlkZjk1YWE2Y2EuLmUwNWMzZjJkMTQyMSAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS90ZWdyYS94dXNiLmMKPiArKysgYi9kcml2ZXJzL3Bo
eS90ZWdyYS94dXNiLmMKPiBAQCAtNzQwLDYgKzc0MCwyOSBAQCBzdGF0aWMgdm9pZCB0ZWdyYV94
dXNiX3BhcnNlX3VzYl9yb2xlX2RlZmF1bHRfbW9kZShzdHJ1Y3QgdGVncmFfeHVzYl9wb3J0ICpw
b3J0KQo+ICAgCX0KPiAgIH0KPiAgIAo+ICtib29sIHRlZ3JhX3h1c2JfdXNiMl9wb3J0X3dhaXRf
cm9sZV9ub25lKHN0cnVjdCB0ZWdyYV94dXNiX3BhZGN0bCAqcGFkY3RsLCBpbnQgaW5kZXgpCj4g
K3sKPiArCXN0cnVjdCB0ZWdyYV94dXNiX3VzYjJfcG9ydCAqdXNiMiA9IHRlZ3JhX3h1c2JfZmlu
ZF91c2IyX3BvcnQocGFkY3RsLAo+ICsJCQkJCQkJCSAgICAgIGluZGV4KTsKPiArCWludCByZXRy
aWVzID0gNTsKPiArCj4gKwlpZiAoIXVzYjIpIHsKPiArCQlkZXZfZXJyKCZ1c2IyLT5iYXNlLmRl
diwgIm5vIHBvcnQgZm91bmQgZm9yIFVTQjIgbGFuZSAldVxuIiwgaW5kZXgpOwoKVGhpcyBhcHBl
YXJzIHRvIGJlIGEgYnVnLiBJZiAhdXNiMiB0aGVuIGRlcmVmZXJlbmNlIHVzYjItPmJhc2UgYW55
d2F5LgoKCj4gKwkJcmV0dXJuIGZhbHNlOwo+ICsJfQo+ICsKPiArCWRvIHsKPiArCQlpZiAodXNi
Mi0+cm9sZSA9PSBVU0JfUk9MRV9OT05FKQo+ICsJCQlyZXR1cm4gdHJ1ZTsKPiArCj4gKwkJdXNs
ZWVwX3JhbmdlKDUwLCA2MCk7Cj4gKwl9IHdoaWxlIChyZXRyaWVzLS0pOwo+ICsKPiArCWRldl9l
cnIoJnVzYjItPmJhc2UuZGV2LCAidGltZWQgb3V0IHdhaXRpbmcgZm9yIFVTQl9ST0xFX05PTkUi
KTsKPiArCj4gKwlyZXR1cm4gZmFsc2U7Cj4gK30KPiArCj4gICBzdGF0aWMgaW50IHRlZ3JhX3h1
c2JfdXNiMl9wb3J0X3BhcnNlX2R0KHN0cnVjdCB0ZWdyYV94dXNiX3VzYjJfcG9ydCAqdXNiMikK
PiAgIHsKPiAgIAlzdHJ1Y3QgdGVncmFfeHVzYl9wb3J0ICpwb3J0ID0gJnVzYjItPmJhc2U7Cj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvdXNiL2dhZGdldC91ZGMvdGVncmEteHVkYy5jIGIvZHJpdmVy
cy91c2IvZ2FkZ2V0L3VkYy90ZWdyYS14dWRjLmMKPiBpbmRleCAwYzM4ZmMzN2I2ZTYuLjcyZDcy
NTY1OWU1ZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3VzYi9nYWRnZXQvdWRjL3RlZ3JhLXh1ZGMu
Ywo+ICsrKyBiL2RyaXZlcnMvdXNiL2dhZGdldC91ZGMvdGVncmEteHVkYy5jCj4gQEAgLTY5OCw4
ICs2OTgsMTIgQEAgc3RhdGljIHZvaWQgdGVncmFfeHVkY19yZXN0b3JlX3BvcnRfc3BlZWQoc3Ry
dWN0IHRlZ3JhX3h1ZGMgKnh1ZGMpCj4gICAKPiAgIHN0YXRpYyB2b2lkIHRlZ3JhX3h1ZGNfZGV2
aWNlX21vZGVfb24oc3RydWN0IHRlZ3JhX3h1ZGMgKnh1ZGMpCj4gICB7Cj4gKwlpbnQgcG9ydCA9
IHRlZ3JhX3h1c2JfcGFkY3RsX2dldF9wb3J0X251bWJlcih4dWRjLT5jdXJyX3V0bWlfcGh5KTsK
PiAgIAlpbnQgZXJyOwo+ICAgCj4gKwlpZiAoIXRlZ3JhX3h1c2JfdXNiMl9wb3J0X3dhaXRfcm9s
ZV9ub25lKHh1ZGMtPnBhZGN0bCwgcG9ydCkpCj4gKwkJcmV0dXJuOwo+ICsKPiAgIAlwbV9ydW50
aW1lX2dldF9zeW5jKHh1ZGMtPmRldik7Cj4gICAKPiAgIAl0ZWdyYV9waHlfeHVzYl91dG1pX3Bh
ZF9wb3dlcl9vbih4dWRjLT5jdXJyX3V0bWlfcGh5KTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy91
c2IvaG9zdC94aGNpLXRlZ3JhLmMgYi9kcml2ZXJzL3VzYi9ob3N0L3hoY2ktdGVncmEuYwo+IGlu
ZGV4IDljNjlmY2NkYzZlOC4uOTk0NDU5MzE2NmEzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdXNi
L2hvc3QveGhjaS10ZWdyYS5jCj4gKysrIGIvZHJpdmVycy91c2IvaG9zdC94aGNpLXRlZ3JhLmMK
PiBAQCAtMTM1MiwxOCArMTM1MiwyMyBAQCBzdGF0aWMgdm9pZCB0ZWdyYV94aGNpX2lkX3dvcmso
c3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQo+ICAgCXN0cnVjdCB0ZWdyYV94dXNiX21ib3hfbXNn
IG1zZzsKPiAgIAlzdHJ1Y3QgcGh5ICpwaHkgPSB0ZWdyYV94dXNiX2dldF9waHkodGVncmEsICJ1
c2IyIiwKPiAgIAkJCQkJCSAgICB0ZWdyYS0+b3RnX3VzYjJfcG9ydCk7Cj4gKwllbnVtIHVzYl9y
b2xlIHJvbGUgPSBVU0JfUk9MRV9OT05FOwo+ICAgCXUzMiBzdGF0dXM7Cj4gICAJaW50IHJldDsK
PiAgIAo+ICAgCWRldl9kYmcodGVncmEtPmRldiwgImhvc3QgbW9kZSAlc1xuIiwgc3RyX29uX29m
Zih0ZWdyYS0+aG9zdF9tb2RlKSk7Cj4gICAKPiAtCW11dGV4X2xvY2soJnRlZ3JhLT5sb2NrKTsK
PiAgIAoKRXh0cmEgYmxhbmsgbGluZSBoZXJlLgoKPiAtCWlmICh0ZWdyYS0+aG9zdF9tb2RlKQo+
IC0JCXBoeV9zZXRfbW9kZV9leHQocGh5LCBQSFlfTU9ERV9VU0JfT1RHLCBVU0JfUk9MRV9IT1NU
KTsKPiAtCWVsc2UKPiAtCQlwaHlfc2V0X21vZGVfZXh0KHBoeSwgUEhZX01PREVfVVNCX09URywg
VVNCX1JPTEVfTk9ORSk7Cj4gKwlpZiAodGVncmEtPmhvc3RfbW9kZSkgewo+ICsJCWlmICghdGVn
cmFfeHVzYl91c2IyX3BvcnRfd2FpdF9yb2xlX25vbmUodGVncmEtPnBhZGN0bCwKPiArCQkJCQkJ
CSB0ZWdyYS0+b3RnX3VzYjJfcG9ydCkpCj4gKwkJCXJldHVybjsKPiAgIAo+ICsJCXJvbGUgPSBV
U0JfUk9MRV9IT1NUOwo+ICsJfQo+ICsKPiArCW11dGV4X2xvY2soJnRlZ3JhLT5sb2NrKTsKPiAr
CXBoeV9zZXRfbW9kZV9leHQocGh5LCBQSFlfTU9ERV9VU0JfT1RHLCByb2xlKTsKPiAgIAltdXRl
eF91bmxvY2soJnRlZ3JhLT5sb2NrKTsKCkkgYW0gdHJ5aW5nIHRvIHVuZGVyc3RhbmQgd2h5IHlv
dSBvcHRlZCB0byBpbXBsZW1lbnQgaXQgdGhpcyB3YXkgYXJvdW5kIAphbmQgbm90IGFkZCB0aGUg
d2FpdCBsb29wIGFmdGVyIHNldHRpbmcgdG8gdGhlIG1vZGUgdG8gVVNCX1JPTEVfTk9ORSBpbiAK
dGhlIG9yaWdpbmFsIGNvZGUgYWxsIHdpdGhpbiB0aGUgY29udGV4dCBvZiB0aGUgbXV0ZXg/CgpU
aGFua3MKSm9uCgotLSAKbnZwdWJsaWMKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
