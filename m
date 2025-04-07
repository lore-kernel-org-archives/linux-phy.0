Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACD1FC36010
	for <linux-phy@archiver.kernel.org>; Mon,  7 Apr 2025 09:28:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Ah1opRT0/nn3fMP7qV/uzwcGeWHZqyyV+rmIhRbey4=; b=QeX42wE8/auyCx
	bTTLQuKVqQ1Pdcl7X1dArkFpI/hbXI2Yd3zJ9ncUQiv2Jdfl9SwEGC5gCVtzVp61YUArBA4eKw74Q
	tWjuoKhvyoh0tzSq7ECsaZ22HMg9DbcvBofACwgcmMfgs8MooicR97PMC03OYjdwMbwEvSYlPtaJq
	tkL0xaAajIawE9pz/NT11kWd0l7IzOWx28CeG2w+xWE0sxVBOD2hhiNlbwNrLHkXSLiN9mN1EZWXz
	EVup9hbqDgSkmubq0OCOdVtGFYKaMVXiqfdNmWIr/0SA8Z6g5Ei7YVLgo9bCzcXNNI43x5wc9JiiD
	xFARFof5520lxUozZa6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1ilt-0000000HC44-16ry;
	Mon, 07 Apr 2025 09:28:01 +0000
Received: from mail-bn8nam11on2060e.outbound.protection.outlook.com ([2a01:111:f403:2414::60e] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1ilq-0000000HC3N-1676
	for linux-phy@lists.infradead.org;
	Mon, 07 Apr 2025 09:27:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ygX07TTz2XRYZuUUzjtx486VipESg6qEzsuK0Y7cgBmIAL78AallmuyyXy3IOcNQ1JUbYq/b8BK8Z3DyIgEmQYG1Lp57jONDavSIPD9RQlblLZnHk3Seson0zhJv9sSqIlMYz4LWpGuYC3UIqr0Ew/hnpJ/zd0bRp3CRM2PFLPkc6YmstPYnaZhSVRmH/P5Np2Hnq6P8ahdxWHAH/z4d8/jS9lXNsq8+KEn2H4yAzFPDUMTY4FGWj2SMirdQvf0IrJRjcISTGA2JNcHPAo9ZmNIxj1Nd98qbdLH59jZs6xSiVOyIM1kLl11sqfMmTSLCBO/WbxAHzMJdElnyZuycBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qTzBNzyAK7U/413q/Ke9/hb7xbk85iTKunsDSrXSk2o=;
 b=EOJ76oujjojHmtv57x1TikAPPXh05wiy3Aw/pXXKrYVT84l0ru7L8a3P73DVyt1HoVQGbY7iCm4Nbz76iG3Wwz/DsCHLXx4ETTg0rEPb9Fk2NB8ggpZVYRWcriZ8rO4kL1dRdcy7/UD7EdivqgCdNdEyvGRXkuveDQRYLe2XfRgkwwVMTyxkexL6R7DW4/aVbcpkn8opMSbrz/ZM/VZ424s7X56VmJF9vPzsbCBLN/WB9g4/YNxcJEdJVAWZkAGjHe4aAnKy8I/0HWYpC21b4imm4DlwZC7qD2cB+2Si8Xw4N5Z37kspMHf+Efm9F3gttvoyl4M+ocWEUg1fh+a0Yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qTzBNzyAK7U/413q/Ke9/hb7xbk85iTKunsDSrXSk2o=;
 b=Beio4NFexooW6T/kxuWupkVi5YsczjvOxiyUJBeY8WezVm9R4/S1S4n0grWeqHM7t3GutzprkdYjCrRTS13/KsDK0xlCTLqAmkfS0ZDpCIr6pe46M4VjlYR91nq4Nu40AJbOc2bgQFgV2/CVtkPcxfE1KuDEmKPCDZO21fVuxFC+FuF2EiXQmJsiXwNWVqXsDv8UyixoncJgw4bXN+ElO9H427j74eU0ErcYYEAUThsnOQahF+f3oRTNtM3JKB2guv1uWP8HnYq0Hs+mi+sgG8ZojqNl6q8sue1+wcvlXwh6bOUKS/iNfAXLdCUryegvItAqT5qa8UUX+Fsx+IDh6w==
Received: from BL3PR12MB6474.namprd12.prod.outlook.com (2603:10b6:208:3ba::16)
 by PH7PR12MB7138.namprd12.prod.outlook.com (2603:10b6:510:1ee::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.31; Mon, 7 Apr
 2025 09:27:52 +0000
Received: from BL3PR12MB6474.namprd12.prod.outlook.com
 ([fe80::6e55:f98:3698:8ce4]) by BL3PR12MB6474.namprd12.prod.outlook.com
 ([fe80::6e55:f98:3698:8ce4%5]) with mapi id 15.20.8583.045; Mon, 7 Apr 2025
 09:27:51 +0000
From: Wayne Chang <waynec@nvidia.com>
To: Jon Hunter <jonathanh@nvidia.com>, "thierry.reding@gmail.com"
	<thierry.reding@gmail.com>, Jui Chang Kuo <jckuo@nvidia.com>,
	"vkoul@kernel.org" <vkoul@kernel.org>, "kishon@kernel.org"
	<kishon@kernel.org>
CC: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: Re: [PATCH v2 1/1] phy: tegra: xusb: Use a bitmask for UTMI pad power
 state tracking
Thread-Topic: [PATCH v2 1/1] phy: tegra: xusb: Use a bitmask for UTMI pad
 power state tracking
Thread-Index: AQHbouYm8h3sM+TM5EC3FEm2DwDFiLOOjggAgAlq1oA=
Date: Mon, 7 Apr 2025 09:27:51 +0000
Message-ID: <7e7decc3-0abf-4b3a-91c6-46fb31b42a36@nvidia.com>
References: <20250401091143.2621353-1-waynec@nvidia.com>
 <a713c180-60fa-43f5-9ffa-5c348c8d538f@nvidia.com>
In-Reply-To: <a713c180-60fa-43f5-9ffa-5c348c8d538f@nvidia.com>
Accept-Language: en-US, zh-TW
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla Thunderbird
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL3PR12MB6474:EE_|PH7PR12MB7138:EE_
x-ms-office365-filtering-correlation-id: ab16e60e-92e8-4c47-6bde-08dd75b6784d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?TFhOSWcwK2FUMmJwbzlTWnJIMXZrMXErdk4vMWZNT2ZFV2MvMXA3Z3JRUEpp?=
 =?utf-8?B?Y0E1VW9ZVUhNdzdHZG9UVXFxSFZoYWVwTWNVMTRpRFJrbTZkdHRhRVY3S1VJ?=
 =?utf-8?B?TzBmSFlWd3VId3BQTXVNcUFTTytvaEk1NWN4TjQ3NHN6OTdiaUJlSVNhZjRj?=
 =?utf-8?B?VE1JcldnMVJjc0l5U1haZmRGdVpWY2xRWDlnOGd2WmdYWjU5eml3ZGZla2xC?=
 =?utf-8?B?VUtMUkZHSVNveGV2UXIzT0c2cm5LYmVoeHF3NUpJSGRlMEFzMFhRUGowa1ZR?=
 =?utf-8?B?UXprV2VoU0VoMHl1blo1VmxmVkxxd3NGYkE0OWNCWlpWOTJJWE9xSFovZm5K?=
 =?utf-8?B?ODY1T1RKcTc5b25sUkFzb1dnQVhnZEVFKzJZTDNiczI4c2ZOQ1NyRUpubnNi?=
 =?utf-8?B?elhLYitoRTNHSlF4cnF3UmRzVTlRbXVId0dSRDR1a2tXaHgyam0wYTFEVGRt?=
 =?utf-8?B?RTZGUWQxeVpFOWZDc1V6TmZZbGR6d0NYNENpNEpkV0RWdGxIcG9wY01JQSto?=
 =?utf-8?B?b0Raa3NKdXpEQnMvRnBjbW9uTmg1eW1md0F6SWgrcERoT1JibDlWMkNrSTFB?=
 =?utf-8?B?WC85M3VDbGZ4YzJlWmhkUUZHdmsybHE1NTdZcjJOYlo5K0Z6ZkNra2o2dHZw?=
 =?utf-8?B?L1BJL2dlUG5qK0N1aUJxaGJxN002VDB2MTU3ZE5Wb3EzRk1UbFZDNVdnMzFz?=
 =?utf-8?B?eGZyY1YySjRJY1Bla3RuZ2VCU3FLNXowNE5BcWkycFAxK2dkbzVhR2dnZW1L?=
 =?utf-8?B?U0VYbnhKMEFiVHZ6TVNzd1EzTHZxSWd1SEdlUTd4TUMvTnNEUlVMbGNTNnRm?=
 =?utf-8?B?Y2Uvb3ZIdHpHNThYYUlrWUNtT2xmUEtOTEVCZml4aVRYUzk1VHNGR0ROVmRL?=
 =?utf-8?B?bEJ2bDl6MXhiNHpOL25kOVY5N0VjdHA3aEozYm81OGxlcmdDU2N6V0poWW1m?=
 =?utf-8?B?V1pDN0RmSkNCUFlYb3BwaEtqajZoY1dzRFlyekpKc1pmdXFjZDdvWGRyd0hD?=
 =?utf-8?B?NWR4TWUrZ0VTQlZtbjBTN3RLUXhJRHcyMHRTWC9BcENrS1k0dkhnWU5QZGxE?=
 =?utf-8?B?U2ozcjJzMnBUTVR5ZkE0ZmtFSXpRRFU1R3dmV3VuU2RjUGhkcUlZL2c0T0tT?=
 =?utf-8?B?STVnRmxsS3BJcFZCb1ZaRjRtbXhERjg2c2JmNHA3eWJNWGc1YnZLVUJzMDFj?=
 =?utf-8?B?TGdUVERHOVppOXFkc2tVQUJINEFpeXVhdTVjUzdEdGltUkp3REhiK05vZTN6?=
 =?utf-8?B?SlZ2ZnFSc0Q1eDE0SVVwMW5TcE9WMEVTa2V1cURPWFMxTDA1VUdvZ29yWkZy?=
 =?utf-8?B?KzNrTEFDTy9pZmdBOHk3ZDc2SkRjdHZjR1BQelZiczk5TUVJdmw4bTdwcE9a?=
 =?utf-8?B?KzI0S1hYdE05ZzlIMC8xaTljRHg1Skp5eC9xZ3I3WVZDSW1SeTFQbDIyNmpK?=
 =?utf-8?B?Q0dJdlZmZjdTRlpqQ05NMkZ3Z0Z4bm5UOXFCOStxNll0akdydVFmTzJhdHZ6?=
 =?utf-8?B?VXZPY2ZmZEVwa0ZkcWsrcGdJV0dGc1QxYlQvaW92djdhS1ZuOXZrMzhBeVdz?=
 =?utf-8?B?NnlNeXpwdmVjUlpJR2ZJRmU5NTVnWUxjV1RsaXE1bGlQN0Q1eTF4MnhpOWln?=
 =?utf-8?B?WmFxKzJZZ0tzVUZXbElLWWREL1ZzNHk5OXgzZ0NDcEtrRS9hNE9ZajRUemZX?=
 =?utf-8?B?OGxFeVJXbnFxRHh1VitNOGxJU3djNEMxYkErRnJlS3g4cVQyY2VJS1YxaTU5?=
 =?utf-8?B?WFNWY21SaDdIeC9oOU5ONWp1dVRUVnNRaHUrWmg3MWhLWFlUb095L2NaaWlQ?=
 =?utf-8?B?MEQwZG5pSm1LU3kwbDZ5ZTBRSmlJTlVVU1RZRTNseG1LaGhsaXdPYU5sRmNF?=
 =?utf-8?B?dmtpYThvTEtYTXIxR3QxOUNNcUxaS0htaHhxNjNEOUQ5S2c2b0NFbmtlVTEr?=
 =?utf-8?Q?xBI9MpBprDhI2ikNe+AX4llxUad8bY26?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR12MB6474.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ekwwUUxUeVE2NC91RXJXY0JORnF1UEp4a1F5UmJ0SzE1S0ozaUdFaUhRQ0Zx?=
 =?utf-8?B?KzdlQ0UyS1Evbk9aT3gxR1JIdlpBaGhPTm8yT0F1ZDAwdHlzQWRtZEpVVk9z?=
 =?utf-8?B?Rm9RcjVPY0swaXBFcXh6RVh0NEYxS280ZVR3SXd2U3puWGJDdnUraGh4b29G?=
 =?utf-8?B?VnVTMFdqekZFejJucmt6Q0VTY2hCZ0t6cGNkM1A2b2piU3FMZGZvSzhFd1gx?=
 =?utf-8?B?RExZd2VSaGIvdlJXamVnTUxucnUwQ25xakxaZ3AvMDczMmhMdDJiV3RqclhY?=
 =?utf-8?B?VkM1d3gxUGtNNFdCRG1HOUJLRTFpTDVuTnZISGd5aXhVZmJVWGg0Q2JhZSt0?=
 =?utf-8?B?TTZxSFZoWXpuNUdrVXo1dkp3dTJ5aHRZZVNzdHBqK0pIcWlHQXVnV0w3eVJV?=
 =?utf-8?B?aEpJTFlYTU13R21RaWVTdjRFWmNQM1FKNkVRb3g0WWpnZVh3blA2emlSenNu?=
 =?utf-8?B?NWlKQnVHaDFySC9kVldPUXFnRGl3YTZlVUxTbGlDeFRjR3dBRWNVcnpCaFRW?=
 =?utf-8?B?TVcrSzZ4Sks4dlNyMVRaNjBsMVFpWEdvTE1TSS9maU5iL3NFRHMzWjdobm9r?=
 =?utf-8?B?UVpCbnpaSjdyTU0vY1BhMzJBSGlGSTFwZXZDWTQ1SmViTGpNYStKZ1pROVJT?=
 =?utf-8?B?WGxySU1kenFxZE1zODk5Z1NlNVY2V3BUc0VVK05MLy90aWVRNW81QVpwWDVj?=
 =?utf-8?B?RHd6WjdjckF3aHpnUGw2Yjd6VGNsZUZoR2p2RGxpY1dCZDg0dWVaS0NsZzBP?=
 =?utf-8?B?bDIya3EvU1hWM3lVTzJZbjFzRUc5MjhNS0lZQlcwbEZtZ3pBOUhkaUVoNEly?=
 =?utf-8?B?cWhXNndYQWZucXNva2lacGV0NjhXQ0E1Q3VaQ00xdUg1NmdaRmtzMytwRm1M?=
 =?utf-8?B?SXFQNDFGSFJsYXdTSmgySHNEZzl4TklxVGEwUlEzN2lNQ2RUZng3RHg5NDZk?=
 =?utf-8?B?ZTNWaXhRb0pPREVJcWlONk1nNmdSbU85c25md1VDVmp4Y1h1YmRaSndBbzB4?=
 =?utf-8?B?T1hMRXhPQ1Q1bUdXQ2c2d2Q2R2kzYm5DenlWeG5uZi84aFpWS1lSNnd6Ny9Y?=
 =?utf-8?B?dXNhRmZPTHRjbHZIQ1JhU0dVekRLZnkybGFDMFp4ZG1Dd2l2RXZqaWpscEY3?=
 =?utf-8?B?NllNNjF0VW53bytlWWl1T0V0UFlYK2hDSHlYTjl1ZU5jZm52aEJqVFh4TTdj?=
 =?utf-8?B?UlhxM0dHSVB2eVBSQWt1YXk1SS9qT2Z5WThqT28wdWxzMDBvNWlnQXJvWTZx?=
 =?utf-8?B?REZWcExTam1EWVo5UUpYTVg1UWdDTjZ6NEtwKzB4YmFXRkZVc1VqWjgzL1Vo?=
 =?utf-8?B?YTBIS1R5MVNzREQ3ajRFY2YycTd5emJtYThtK090SVJ1MXdmSFZjRUt6aVp6?=
 =?utf-8?B?QWR3anNDZ0IvRjZyN2pTd3JXL0s5Um1UazdXazZWSmpwdnpZaUhFeUJWaFR2?=
 =?utf-8?B?dHFJWnI1ZjBGc2VjVjFVZE44YlJKZmd4VTV4WEtYekRhNVN5WDhYTTBidXZq?=
 =?utf-8?B?Y0FpcmRlZU5aZEd3VXkxY1lsSWlRQ3JiTXFNOGFWZ3NlOHdKQXVWK1NGTEpF?=
 =?utf-8?B?ZFZibnhjUTdKaFNTVkpOeTYydGlLcWVYOER1TXlRcTIwUHE0djBKa3Y3NWo2?=
 =?utf-8?B?UDNTbjRidmRmaHNiYlE3MEdtYzZiay9OM1FiU3YzMkhhc1IwT1JVSnBncXhr?=
 =?utf-8?B?dmZoL3lIOVpXNzdSZzlyVWhHRkk5MVBkV2tFcFZVeVRsdG4xeUgxaWorS1dY?=
 =?utf-8?B?Y0h1UXRicjJ4Z3huVWtqZm5lRlBMZzVSQ2JteXc0VzlJTEVFME5QQnJSVDcy?=
 =?utf-8?B?OG1YU2FWSXNMdnRjc3hLRE5hTTlXVjFWNlZHRzJWQUJIeFhZTytTd0tSQ0Fu?=
 =?utf-8?B?eGJXK0NMVnBtUmRKTlVaRHMzbHEwNWE0UDZvbjNrenJTcGNjSWRWNHZ5MlBJ?=
 =?utf-8?B?Z2MweHJja2dVdGdaYjJqd1JabTViZEcxZXdKWGtIR0kvUmMyblJmMmtvRUl5?=
 =?utf-8?B?VEFQSGZhMVhXenB1TFlMUlB1VEUyTjh0a2RhTjAraytQS0ZaTm11YlBERkw0?=
 =?utf-8?B?L1RPVWlzUG9UL1BHUk42RzBpaEZDOFFuYUZ0STJKWE5OZVVmSWNGVE1TY3ha?=
 =?utf-8?Q?FPMpaIL65UTHIlf7mBJ3Jvy6Y?=
Content-ID: <95E510402B67054785E23ADEF608F70C@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL3PR12MB6474.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab16e60e-92e8-4c47-6bde-08dd75b6784d
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2025 09:27:51.9113
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uVz4YUJtSPDF540e7Z08ch+YVfxZj2cfXheFLVt9AQDIIgpeWZsEymRE8sBc4KeY+xVzxNR1KmMqSQaHEEr3bA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB7138
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_022758_400274_061F2BFF 
X-CRM114-Status: GOOD (  22.10  )
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

Hi Jonathan,

On 4/1/25 17:39, Jon Hunter wrote:
> Hi Wayne,
>
> On 01/04/2025 10:11, Wayne Chang wrote:
>> The current implementation uses bias_pad_enable as a reference count to
>> manage the shared bias pad for all UTMI PHYs. However, during system
>> suspension with connected USB devices, multiple power-down requests for
>> the UTMI pad result in a mismatch in the reference count, which in turn
>> produces warnings such as:
>>
>> [  237.762967] WARNING: CPU: 10 PID: 1618 at tegra186_utmi_pad_power_down+0x160/0x170
>> [  237.763103] Call trace:
>> [  237.763104]  tegra186_utmi_pad_power_down+0x160/0x170
>> [  237.763107]  tegra186_utmi_phy_power_off+0x10/0x30
>> [  237.763110]  phy_power_off+0x48/0x100
>> [  237.763113]  tegra_xusb_enter_elpg+0x204/0x500
>> [  237.763119]  tegra_xusb_suspend+0x48/0x140
>> [  237.763122]  platform_pm_suspend+0x2c/0xb0
>> [  237.763125]  dpm_run_callback.isra.0+0x20/0xa0
>> [  237.763127]  __device_suspend+0x118/0x330
>> [  237.763129]  dpm_suspend+0x10c/0x1f0
>> [  237.763130]  dpm_suspend_start+0x88/0xb0
>> [  237.763132]  suspend_devices_and_enter+0x120/0x500
>> [  237.763135]  pm_suspend+0x1ec/0x270
>>
>> The root cause was traced back to the dynamic power-down changes
>> introduced in commit a30951d31b25 ("xhci: tegra: USB2 pad power controls"),
>> where the UTMI pad was being powered down without verifying its current
>> state. This unbalanced behavior led to discrepancies in the reference
>> count.
>>
>> To rectify this issue, this patch replaces the single reference counter
>> with a bitmask, renamed to utmi_pad_enabled. Each bit in the mask
>> corresponds to one of the four USB2 PHYs, allowing us to track each pad's
>> enablement status individually.
>>
>> With this change:
>>     - The bias pad is powered on only when the mask is clear.
>>     - Each UTMI pad is powered on or down based on its corresponding bit
>>       in the mask, preventing redundant operations.
>>     - The overall power state of the shared bias pad is maintained
>>       correctly during suspend/resume cycles.
> It might be worth mentioning here that ...
>
> "- The mutex used to prevent races when the UTMI pads are enabled/
>      disabled is moved from the tegra186_utmi_bias_pad_power_on/off
>      functions to the parent functions tegra186_utmi_pad_power_on/down to
>      ensure that are no races when updating the bitmask."

Thanks for the review. I'll update in the next patchset.

>
>> Cc: stable@vger.kernel.org
>> Fixes: a30951d31b25 ("xhci: tegra: USB2 pad power controls")
>> Signed-off-by: Wayne Chang <waynec@nvidia.com>
>> ---
>> V1 -> V2: holding the padctl->lock to protect shared bitmask
> I see you mentioned it here, but the changelog should also indicate that
> this has changed.
OK. Sure.
>
>>    drivers/phy/tegra/xusb-tegra186.c | 44 +++++++++++++++++++------------
>>    1 file changed, 27 insertions(+), 17 deletions(-)
>>
>> diff --git a/drivers/phy/tegra/xusb-tegra186.c b/drivers/phy/tegra/xusb-tegra186.c
>> index fae6242aa730..cc7b8a6a999f 100644
>> --- a/drivers/phy/tegra/xusb-tegra186.c
>> +++ b/drivers/phy/tegra/xusb-tegra186.c
>> @@ -237,6 +237,8 @@
>>    #define   DATA0_VAL_PD				BIT(1)
>>    #define   USE_XUSB_AO				BIT(4)
>>    
>> +#define TEGRA_UTMI_PAD_MAX 4
>> +
>>    #define TEGRA186_LANE(_name, _offset, _shift, _mask, _type)		\
>>    	{								\
>>    		.name = _name,						\
>> @@ -269,7 +271,7 @@ struct tegra186_xusb_padctl {
>>    
>>    	/* UTMI bias and tracking */
>>    	struct clk *usb2_trk_clk;
>> -	unsigned int bias_pad_enable;
>> +	DECLARE_BITMAP(utmi_pad_enabled, TEGRA_UTMI_PAD_MAX);
>>    
>>    	/* padctl context */
>>    	struct tegra186_xusb_padctl_context context;
>> @@ -603,12 +605,8 @@ static void tegra186_utmi_bias_pad_power_on(struct tegra_xusb_padctl *padctl)
>>    	u32 value;
>>    	int err;
>>    
>> -	mutex_lock(&padctl->lock);
>> -
>> -	if (priv->bias_pad_enable++ > 0) {
>> -		mutex_unlock(&padctl->lock);
>> +	if (!bitmap_empty(priv->utmi_pad_enabled, TEGRA_UTMI_PAD_MAX))
>>    		return;
>> -	}
>>    
>>    	err = clk_prepare_enable(priv->usb2_trk_clk);
>>    	if (err < 0)
>> @@ -667,17 +665,8 @@ static void tegra186_utmi_bias_pad_power_off(struct tegra_xusb_padctl *padctl)
>>    	struct tegra186_xusb_padctl *priv = to_tegra186_xusb_padctl(padctl);
>>    	u32 value;
>>    
>> -	mutex_lock(&padctl->lock);
>> -
>> -	if (WARN_ON(priv->bias_pad_enable == 0)) {
>> -		mutex_unlock(&padctl->lock);
>> -		return;
>> -	}
>> -
>> -	if (--priv->bias_pad_enable > 0) {
>> -		mutex_unlock(&padctl->lock);
>> +	if (!bitmap_empty(priv->utmi_pad_enabled, TEGRA_UTMI_PAD_MAX))
>>    		return;
>> -	}
>>    
>>    	value = padctl_readl(padctl, XUSB_PADCTL_USB2_BIAS_PAD_CTL1);
>>    	value |= USB2_PD_TRK;
>> @@ -690,13 +679,13 @@ static void tegra186_utmi_bias_pad_power_off(struct tegra_xusb_padctl *padctl)
>>    		clk_disable_unprepare(priv->usb2_trk_clk);
>>    	}
>>    
>> -	mutex_unlock(&padctl->lock);
>>    }
>>    
>>    static void tegra186_utmi_pad_power_on(struct phy *phy)
>>    {
>>    	struct tegra_xusb_lane *lane = phy_get_drvdata(phy);
>>    	struct tegra_xusb_padctl *padctl = lane->pad->padctl;
>> +	struct tegra186_xusb_padctl *priv = to_tegra186_xusb_padctl(padctl);
>>    	struct tegra_xusb_usb2_port *port;
>>    	struct device *dev = padctl->dev;
>>    	unsigned int index = lane->index;
>> @@ -705,9 +694,16 @@ static void tegra186_utmi_pad_power_on(struct phy *phy)
>>    	if (!phy)
>>    		return;
>>    
>> +	mutex_lock(&padctl->lock);
>> +	if (test_bit(index, priv->utmi_pad_enabled)) {
>> +		mutex_unlock(&padctl->lock);
>> +		return;
>> +	}
>> +
>>    	port = tegra_xusb_find_usb2_port(padctl, index);
>>    	if (!port) {
>>    		dev_err(dev, "no port found for USB2 lane %u\n", index);
>> +		mutex_unlock(&padctl->lock);
>>    		return;
>>    	}
>>    
>> @@ -724,18 +720,28 @@ static void tegra186_utmi_pad_power_on(struct phy *phy)
>>    	value = padctl_readl(padctl, XUSB_PADCTL_USB2_OTG_PADX_CTL1(index));
>>    	value &= ~USB2_OTG_PD_DR;
>>    	padctl_writel(padctl, value, XUSB_PADCTL_USB2_OTG_PADX_CTL1(index));
>> +
>> +	set_bit(index, priv->utmi_pad_enabled);
>> +	mutex_unlock(&padctl->lock);
>>    }
>>    
>>    static void tegra186_utmi_pad_power_down(struct phy *phy)
>>    {
>>    	struct tegra_xusb_lane *lane = phy_get_drvdata(phy);
>>    	struct tegra_xusb_padctl *padctl = lane->pad->padctl;
>> +	struct tegra186_xusb_padctl *priv = to_tegra186_xusb_padctl(padctl);
>>    	unsigned int index = lane->index;
>>    	u32 value;
>>    
>>    	if (!phy)
>>    		return;
>>    
>> +	mutex_lock(&padctl->lock);
>> +	if (!test_bit(index, priv->utmi_pad_enabled)) {
>> +		mutex_unlock(&padctl->lock);
>> +		return;
>> +	}
>> +
>>    	dev_dbg(padctl->dev, "power down UTMI pad %u\n", index);
>>    
>>    	value = padctl_readl(padctl, XUSB_PADCTL_USB2_OTG_PADX_CTL0(index));
>> @@ -748,7 +754,11 @@ static void tegra186_utmi_pad_power_down(struct phy *phy)
>>    
>>    	udelay(2);
>>    
>> +	clear_bit(index, priv->utmi_pad_enabled);
>> +
>>    	tegra186_utmi_bias_pad_power_off(padctl);
>> +
>
> It seems more natural to clear the bitmask after disabling the bias
> power. I guess this is protected by the mutex and so should not matter.

We need the bitmask to be updated before disabling the bias pad, as 
we're using it to determine the status of the UTMI pads. This helps us 
decide whether it's safe to power down the bias pad or not.

>
> Jon
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
