Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1353CC36014
	for <linux-phy@archiver.kernel.org>; Tue,  1 Apr 2025 07:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zqUoccE73lDIpNwV9N6LJlQbMMqHFpLt90RNMhh8gOM=; b=3WLS47wNbPE68Y
	JcewnEliL90sXG6BXmgpiBAEWS1H0xnQuMyCSPwV5nGsaisANXIr95rS1Gn3lfh5BMKsf8d2Z6BlV
	eZ4t9LVTBt3qywL32aJ1j3jjD+f5TcbcpQqYnmGnR9xm8nqCo9n14uj/ni65AmZQuRD5zdnrBpnHp
	orL84fcbnB1034D1HrF77mh4q9PN9jeYVoF+XTmkf3Pm62FjS/8kgSzJuTpvAbfRvJidgdIC/o2FJ
	EjoD8pgX30/deUmBsH+otTTFXK6Gf/lyQssPOpO7SSTyZfjgsmk180jfm225Av97M9clR0KQ6qTq1
	qVB9C+ljfwyQ5GtydHCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzW5G-00000002CPD-22LE;
	Tue, 01 Apr 2025 07:30:54 +0000
Received: from mail-mw2nam10on20606.outbound.protection.outlook.com ([2a01:111:f403:2412::606] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzW5D-00000002COM-13eg
	for linux-phy@lists.infradead.org;
	Tue, 01 Apr 2025 07:30:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tBk9tyJVwOc2tNjfOJFOw+Z5xkPE+IFiihhI/RZW2c9eYIqHgrRNcP+Mp4mUJZjIayxAlkM77AuQwNDX8Ix4m3a3or67wcN8i/bBXSVrNy/A8/y88efuugOKXhij/Sr4ALId8aocymYC/LeXqtx0sQg22YeyMmeIohrtiC8P+EO6KDXtTqD45ASitC9F1u1CCAU6rypTlrwzQuYscZMlysrenjWRHfXdJHmIeLNX2zg5/tyOQPJHHyvLNebISdvZdyEO3nhQEp4lx16PWu4hWTnhFyogtGViA9v3M4C1b+4pOHUHm9Ck8Nebhv2SiTEngcPphb60DU0vzqEwxfMxPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rtO8eX0LmEYPFOJVLo8WsUbgJCEz05S4nqWphcU43Es=;
 b=XA3uCIxwZ6DjjQxNh4IMNc3ZRc+J/ugvhT0nrg+zsfBJT+vDI+lZ7fYQzZN2pf+oweNHQDQAaZTpH9ZDBDNyvNTiZA8DeYPdmBp+TPdpwu5oMq6LHB/HNqAj+edKjgnJHm1rdxJcV3GuKXjRpRCboyibZ3WQHD0xlbgrB3Ui/Eoa3gtA+lKY7P8OrLq6GzywvqR176NIcm8+RjJU0I1arUf+F1e5Ru6t97h2UzMjyw9kwYcW9yHJu8dhzvMrYzXwT0uSTV4e1z1gGey2bFndaRhsKPVfEQPKHVs3fsfusVsSXCZ6qN37QE8ietLrCbvgCZfMyPh6WTfMt4wfYeL6jQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rtO8eX0LmEYPFOJVLo8WsUbgJCEz05S4nqWphcU43Es=;
 b=mfXuzOGfQHOLbPlha2H3ZvYDrAOyjhoU9ZX1j31Bve2i/qC/GuWX5+sn4c8jh9s73HJv6v4Sh1EfEjrek4pdE9ELEDoCi3SkJCRkKmojRZOdN0O00zCl39urbXCPgCEjGdreldPkteQsdGebzufvgDyAxIFrFlw8ia6Rny2oW9/yFkpMa3fQbhcyDOYEiB9FJS9fLqMDEo0Y4mTHmVaJwVRVot3kfqYbPaYtOU0ueI/Ut/zQAsW1Ma+ouMYhmoFalVU895+vGvsudQ/fKhLGKwMv693/AubW8hNfBnOcfn0c9kmRPZH7wjbuJ2+epyb8SKeUOXanCdstt0MC4W02Mw==
Received: from BL3PR12MB6474.namprd12.prod.outlook.com (2603:10b6:208:3ba::16)
 by PH8PR12MB6746.namprd12.prod.outlook.com (2603:10b6:510:1c1::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Tue, 1 Apr
 2025 07:30:44 +0000
Received: from BL3PR12MB6474.namprd12.prod.outlook.com
 ([fe80::6e55:f98:3698:8ce4]) by BL3PR12MB6474.namprd12.prod.outlook.com
 ([fe80::6e55:f98:3698:8ce4%2]) with mapi id 15.20.8534.048; Tue, 1 Apr 2025
 07:30:43 +0000
From: Wayne Chang <waynec@nvidia.com>
To: Thierry Reding <thierry.reding@gmail.com>
CC: Jon Hunter <jonathanh@nvidia.com>, Jui Chang Kuo <jckuo@nvidia.com>,
	"vkoul@kernel.org" <vkoul@kernel.org>, "kishon@kernel.org"
	<kishon@kernel.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "linux-tegra@vger.kernel.org"
	<linux-tegra@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "stable@vger.kernel.org"
	<stable@vger.kernel.org>
Subject: Re: [PATCH 1/1] phy: tegra: xusb: Use a bitmask for UTMI pad power
 state tracking
Thread-Topic: [PATCH 1/1] phy: tegra: xusb: Use a bitmask for UTMI pad power
 state tracking
Thread-Index: AQHblLN9A+bf76qItkunyVgUws1mpLN9jjsAgBD4UYA=
Date: Tue, 1 Apr 2025 07:30:43 +0000
Message-ID: <87b2a1a0-a3f3-491f-bc54-73631a5c2f0a@nvidia.com>
References: <20250314073348.3705373-1-waynec@nvidia.com>
 <rxr3a5gzlmb6z2x36bwiy6lprdbrjgiojyoqznybyzglpeor7b@gy43enunoxyx>
In-Reply-To: <rxr3a5gzlmb6z2x36bwiy6lprdbrjgiojyoqznybyzglpeor7b@gy43enunoxyx>
Accept-Language: en-US, zh-TW
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla Thunderbird
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL3PR12MB6474:EE_|PH8PR12MB6746:EE_
x-ms-office365-filtering-correlation-id: e09c176f-838d-4f1e-ef5c-08dd70ef1c9d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?R1hwSktBcW5JK0llWnVHUnYwNGFtM00wYm5PM0JxMkRXZXMxQTUzNzNLajk4?=
 =?utf-8?B?RnNwVjkvMDlPV3BMNFJadFk0eHp6UzlQaFlkWkVXOFArMVFZTnhzYXgyZHMv?=
 =?utf-8?B?OTNzc0tYcmVmVytJZGtSUGttWWpFZjNMWXFIZUp6ZkhiNWkyZHppNXJwM1k3?=
 =?utf-8?B?V1lUZEFiMTNtTU55MFBiNTdMT1krYXBuMGtFT2ttemJxWDcrWmp3Ty9pLzR6?=
 =?utf-8?B?NFR5VmkvNGg3VlYxQXYwWWpqMnFhdWVpK0t3Y21kTm5LY2ZQcE83eUN3dEVx?=
 =?utf-8?B?MXlqNGxMcjhZRXZxQUZ2c2VudUZ0T1ltekRKbktJbkxZVjU4M082V0JSTE90?=
 =?utf-8?B?WmczT3AvcDZxakEzNUI5ODRuM2JQUnJORnhtY0l5TXFUdHJxL0kwOS9OU1Vu?=
 =?utf-8?B?YWFrSjN5ZVFIOHFMTTdWYUFGcHlDR1FHajNjWldqTGtYdG9RSUJkN1AyWi9y?=
 =?utf-8?B?bmwwMERDVnNxTUwvdWtsY2sySlNlbEhFQVpkWmw3MGowemNKWk5nRkp0dzly?=
 =?utf-8?B?dG1iMVZLRGMyVGwydjNDaEVpd2JKMkVqQ1huQ3Azbm5ZTDl2OW9JREk2YUhO?=
 =?utf-8?B?S0NUdjlHd0h3Y09wUmVVMjJ5UUVFYkxya1dMQk83endvV25TZVovWVRhZVox?=
 =?utf-8?B?NmhodGp2OHcxeW51SUlRVkd3SytqNS9WcEVUc2podmUvVWxIdkQxemZhbzNh?=
 =?utf-8?B?VC80b21UNzhXMEpCY2FrMWM0VlRpMWVtWENQaGQ1NEt4UXdGQ1JyK3Yza01H?=
 =?utf-8?B?SVlIYWtmT1pHRlBZSkRFRlRLQmZLaGhISmRGbTRVMXV0SnRRaXFKWUFvamhI?=
 =?utf-8?B?TzZLdnlocnNRT1ZNN0lzN1dUdUJkajBXU2RNY3owbkRJZ0hzdXRqWFhWYnMw?=
 =?utf-8?B?ZExYdEpzZk1NcGExUmk5clpIWEl3ZVhaa0M4Ny9MUFJmMkJnYnJiM29iYS9N?=
 =?utf-8?B?Z1doSUJJdlNWcFFmb0ZEMC95WkdjWVFlUnc4YnFQWVVCYTFvT2kvU2dzaGMy?=
 =?utf-8?B?VTJzOGNQSXJlUnhMUC9iR1ZHK3lHY3VQWlRqaWdQREpWdUw3N21WRFIxOVlj?=
 =?utf-8?B?N2RuVXg1eHp0dCtXa3UvOFNlaEk1c2pMYkkzcU81TEd6NE1LZ0NoVVZHY3R4?=
 =?utf-8?B?NThNM1lhay81NVRrVitPSUI5cG9UZXNxTDVaSExURWN4Wm1Td0h1VGp6aStT?=
 =?utf-8?B?ZmpjTG40eHRMWThpSytRaUlXSmV6NnVqTlA0REV3V2NLUFcxdkJuTkVvcHEv?=
 =?utf-8?B?QjYzOGR0SG83aGcvK1ZOMjBrbVZxelhCcDE0YzFGL0NLVVV5R04zaW81dG4x?=
 =?utf-8?B?Y1YxSTFTUFFZQTRzVzVvbGZRM0hUTGNESU5PaEh3T3NCb3pEWFNZMWdaMlRR?=
 =?utf-8?B?V0ZRSEsrQ2JwSnBsa2JBUTdrTFpYM2k5Q0h6OXAyMmQ5aEQyN2xWNTZaekxi?=
 =?utf-8?B?Y0VQYmtiNU52Ly9IRUVsTndwa2IraVpJa1pvYzQ5cjhuTVBJOUs0Q294U0VD?=
 =?utf-8?B?WmJhbnR6cGVQc3ZqakxybGM2MDBVMGpCWkJESUJkeGhsb2lWMUxFa1V6UUJE?=
 =?utf-8?B?SlkvN2swcW9PTkhvY1VGVy8xanRTZktLRHRXMTdYcTVvT3A3bzdRZXl1c3dQ?=
 =?utf-8?B?T3BydjM4cVBreXljOVZvb1BsaTZ1NmxNUy85WU5aS0dwTWJCT283c2J3Nklz?=
 =?utf-8?B?MDlxNkg2R2JaWW5MNEJRNUhKcjFUSW00L0htN0NKVHdUeDBNWDE2UlNRckVy?=
 =?utf-8?B?Uk83NFA5RjhzbE9yTWkyUFk1ZkRsd1ZQd3p6K0Q1N283bjh4MXFGMkJ3T0hI?=
 =?utf-8?B?am9EWWdJQTBkcVJQOWlLbTI1TkVnS004Zjlzc2oxSFhqdklWRVZGU3lqNVpH?=
 =?utf-8?B?QzdXSXZFeG9jVHd0b2Q2bUswU2V4Rll3aWMzTnZuUzkrdFNmYXNpWDkxSEJD?=
 =?utf-8?Q?fE45gWeuY2r9xn2kgVxW7Trk46GUAPB9?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR12MB6474.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UDE0UTQxUGNEeEk3UkJwOXZSZitka0NpQVc0NUpmNE1YRU1DMUdQRlNDbkxH?=
 =?utf-8?B?d3JudnBwUlQrUFR4TkF3THRxVEtGWk8xQjQ0cWszTkdxUTR3WTJySUVpM3ZH?=
 =?utf-8?B?cXJBOUtkOFJPaCttZnViWjg0djRxQTNRQ3JlSCs3S1hjQVRnTW5MSTRSaVJF?=
 =?utf-8?B?TEdnZnJhbkE0WHlCL05KV1BLREt6eUhXWVFVZFY5SVFYZmVLcTBJK0xQSFlR?=
 =?utf-8?B?VVIzODBBQmY2MnhNNUFlTFVhQ25Qck9IWHRSaEo1aDM3TG1ML1dRRExpekdw?=
 =?utf-8?B?eXg4Nk9oMlJ4NmtzdEt1U1JtU1NNQzFBamlBdUd5a1VENGpUMUJVbndQMmJE?=
 =?utf-8?B?azJzTVZiWnNSV1BaeWlCZ1NuOW9UdXBiN09FR3ltMThWTlR1ZTJCRnI2eWJp?=
 =?utf-8?B?RGYyRlVZV2Qyb011SlFCeTl5OTZqQWtkVTc4ZkR6L2RheW42UkEwM0NxN2Mx?=
 =?utf-8?B?V3hDODc1RDlNWTYrc3M0Y1JCT3NiUDZ1cGVVOTh0aGVuY2Y5UExTdHVBYUVj?=
 =?utf-8?B?SmVCV0lLVW92Um4rTG9JbHk5ZHVPOFRuMUlNK25mbjR1N2JPaWFicUt2UEpr?=
 =?utf-8?B?a1JpSDZSVzl1MDJhTytKUXl3NUFhcWx5YUZNK3hLQ2p1Umt3UktzSVUwUU9I?=
 =?utf-8?B?UkJLVWRqVkJ1czhwL2NYblBUWkVlaHBtL0JtNmFCRXNJdy93U1diUUFobUwv?=
 =?utf-8?B?Rkx2WkYrdmZrZms4b0x2eGV3Z0xoeUl3OTgxejNFd3VRUEtXNFZtaVgrZlpI?=
 =?utf-8?B?T1hldDRjckxTZVFhcmppczNYUmk3VW9ZZ0x1UU5YeE1YYnE3UGZoZis1dXlk?=
 =?utf-8?B?S2N5UGxEWENzeEMzYy84a0UvNTQzM1RIYXNiZi9QUWxMd05QTjl1SStvYm1Q?=
 =?utf-8?B?L0NzNXl1d2o2VXRYR0ZZbXFqWVNFVkRQaWNyUXc3VHlPeVRHZFZXUk5GVjhP?=
 =?utf-8?B?YXRaVXc3eWZlbWg5VytORGUyU1VRdDR2Mzlzb0s2clVKaUhsUW1uTStPS2kx?=
 =?utf-8?B?WUxET2RGMTJsbStOem4vS29LSVByWVJZL29XVGM4alhnOStTN05YQjlITVkx?=
 =?utf-8?B?TElqcTEzaU5veWRWWEowSlg5UndjNmw0SUNQcTk1N2F6T29VUzZ1Z1F5dHJ1?=
 =?utf-8?B?Zy9LdnRRRGxJQWNYUDRkeHA0YzMzc1h3USsyMTRubnRQR1MrZXZ3NDdldTJu?=
 =?utf-8?B?WTlSTWFjWWFtZFdJQm1wcEh4T2JaZUM4OVpEZitiaVpIaUt1ZzQ3a3FUUnNL?=
 =?utf-8?B?enlaaVZLaXNHMXFiTEFkOHpheFoxakE4bUxzSlhWeXgyYUtQcDZYdVFFN2RB?=
 =?utf-8?B?M3E2WkZ1WGlWWTRPelpOVGtyL0xWNDgwMXE2bzZQbUVraGtJeGtOSkZuSkZo?=
 =?utf-8?B?dWo1c1kwbksxTlE5cHRUdFM5elRnQklyRDRYZ2MvS3pQdGY2S3M1NDF3RHdv?=
 =?utf-8?B?Um1NOGZHQ3lYSGNIa2R3RHBTQzE3ektnRXdqTCtNVU9zbVNCQVgxaFE2Y05Z?=
 =?utf-8?B?TFZYVXUxZ1lERS9QWTgwKythRHdoNmd0NXlLTVBiVlVHTmdFa3FIQlBTdzVk?=
 =?utf-8?B?eUducDhGS0czUlBEQjJMRzVHRm00ckg0UDVXZ2dXRzg0M1dxNnNXdlFUVkpO?=
 =?utf-8?B?TkpJUGQ4MkxFU090U3ZNSTQxSmxRTGZBRlBBRlJ1STFBcVhlakJoUk13SVFH?=
 =?utf-8?B?NGUzbUJpeXkvQVp6RDc5VzlJN0ZXYThBclYwRTY1NG11azBPS2ptdnA4MGxw?=
 =?utf-8?B?aFJWeXo5bFNBOE81eXJMWVMxT3FGZmQ3TUVpcVo2cFF3SGR3bTNNYXJOZG4y?=
 =?utf-8?B?NTVQM09tK0VwSzN6dWVqWFNHRmxodXU3bFhKSGRTUU8vYkx3NmozYkpvb2tR?=
 =?utf-8?B?d2tWeTlQMU1IUk9rQVgybGdpVjNGcjV3ZnZmblg2elhPWUNQTVVoaXVTNkJo?=
 =?utf-8?B?Zndaalh3S3FNdkFWcnJaKzVIbWVuRWxZTXpKSzVvWjNTZ1NXeHZabDhWMmtx?=
 =?utf-8?B?WGFFTGVpSlFUVkMwL3pHc0ZOVUhBNlU4cHZVZHZBdk1ONzZlQVU5aEFlMTB0?=
 =?utf-8?B?TnVNbDdScWxpNTBsekVSaTRXYW4yd0RaMGNwdEtGMlk0ZWtGNnh2OE1LQTM1?=
 =?utf-8?Q?qceIegnxg06H0fpD+mr7TOyH/?=
Content-ID: <E5B2BC026E8AF8499D0A8F3893003150@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL3PR12MB6474.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e09c176f-838d-4f1e-ef5c-08dd70ef1c9d
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2025 07:30:43.5997
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S2PMl0MBL9VN3UgPnybolCflHnOxBMTux+nT4/y/IG06rBhyzG7rvnBmozNI/aaEwrJhlCRqfx9xtsv04yJoUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR12MB6746
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_003051_606984_550EE0DF 
X-CRM114-Status: GOOD (  19.40  )
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

Hi Thierry,

Thanks for your review! I'll update in the next patchset.

thanks,
Wayne.

On 3/21/25 20:22, Thierry Reding wrote:
> On Fri, Mar 14, 2025 at 03:33:48PM +0800, Wayne Chang wrote:
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
>>    - The bias pad is powered on only when the mask is clear.
>>    - Each UTMI pad is powered on or down based on its corresponding bit
>>      in the mask, preventing redundant operations.
>>    - The overall power state of the shared bias pad is maintained
>>      correctly during suspend/resume cycles.
>>
>> Cc: stable@vger.kernel.org
>> Fixes: a30951d31b25 ("xhci: tegra: USB2 pad power controls")
>> Signed-off-by: Wayne Chang <waynec@nvidia.com>
>> ---
>>   drivers/phy/tegra/xusb-tegra186.c | 25 +++++++++++++++++--------
>>   1 file changed, 17 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/phy/tegra/xusb-tegra186.c b/drivers/phy/tegra/xusb-tegra186.c
>> index fae6242aa730..77bb27a34738 100644
>> --- a/drivers/phy/tegra/xusb-tegra186.c
>> +++ b/drivers/phy/tegra/xusb-tegra186.c
>> @@ -237,6 +237,8 @@
>>   #define   DATA0_VAL_PD				BIT(1)
>>   #define   USE_XUSB_AO				BIT(4)
>>   
>> +#define TEGRA_UTMI_PAD_MAX 4
>> +
>>   #define TEGRA186_LANE(_name, _offset, _shift, _mask, _type)		\
>>   	{								\
>>   		.name = _name,						\
>> @@ -269,7 +271,7 @@ struct tegra186_xusb_padctl {
>>   
>>   	/* UTMI bias and tracking */
>>   	struct clk *usb2_trk_clk;
>> -	unsigned int bias_pad_enable;
>> +	DECLARE_BITMAP(utmi_pad_enabled, TEGRA_UTMI_PAD_MAX);
>>   
>>   	/* padctl context */
>>   	struct tegra186_xusb_padctl_context context;
>> @@ -605,7 +607,7 @@ static void tegra186_utmi_bias_pad_power_on(struct tegra_xusb_padctl *padctl)
>>   
>>   	mutex_lock(&padctl->lock);
>>   
>> -	if (priv->bias_pad_enable++ > 0) {
>> +	if (!bitmap_empty(priv->utmi_pad_enabled, TEGRA_UTMI_PAD_MAX)) {
>>   		mutex_unlock(&padctl->lock);
>>   		return;
>>   	}
>> @@ -669,12 +671,7 @@ static void tegra186_utmi_bias_pad_power_off(struct tegra_xusb_padctl *padctl)
>>   
>>   	mutex_lock(&padctl->lock);
>>   
>> -	if (WARN_ON(priv->bias_pad_enable == 0)) {
>> -		mutex_unlock(&padctl->lock);
>> -		return;
>> -	}
>> -
>> -	if (--priv->bias_pad_enable > 0) {
>> +	if (!bitmap_empty(priv->utmi_pad_enabled, TEGRA_UTMI_PAD_MAX)) {
>>   		mutex_unlock(&padctl->lock);
>>   		return;
>>   	}
>> @@ -697,6 +694,7 @@ static void tegra186_utmi_pad_power_on(struct phy *phy)
>>   {
>>   	struct tegra_xusb_lane *lane = phy_get_drvdata(phy);
>>   	struct tegra_xusb_padctl *padctl = lane->pad->padctl;
>> +	struct tegra186_xusb_padctl *priv = to_tegra186_xusb_padctl(padctl);
>>   	struct tegra_xusb_usb2_port *port;
>>   	struct device *dev = padctl->dev;
>>   	unsigned int index = lane->index;
>> @@ -705,6 +703,9 @@ static void tegra186_utmi_pad_power_on(struct phy *phy)
>>   	if (!phy)
>>   		return;
>>   
>> +	if (test_bit(index, priv->utmi_pad_enabled))
>> +		return;
> Don't we need to take the padctl->lock mutex before this...
>
>> +
>>   	port = tegra_xusb_find_usb2_port(padctl, index);
>>   	if (!port) {
>>   		dev_err(dev, "no port found for USB2 lane %u\n", index);
>> @@ -724,18 +725,24 @@ static void tegra186_utmi_pad_power_on(struct phy *phy)
>>   	value = padctl_readl(padctl, XUSB_PADCTL_USB2_OTG_PADX_CTL1(index));
>>   	value &= ~USB2_OTG_PD_DR;
>>   	padctl_writel(padctl, value, XUSB_PADCTL_USB2_OTG_PADX_CTL1(index));
>> +
>> +	set_bit(index, priv->utmi_pad_enabled);
> ... and release it here? Otherwise we might end up testing, setting and/
> or clearing from two pads concurrently and loose consistency.
>
>>   }
>>   
>>   static void tegra186_utmi_pad_power_down(struct phy *phy)
>>   {
>>   	struct tegra_xusb_lane *lane = phy_get_drvdata(phy);
>>   	struct tegra_xusb_padctl *padctl = lane->pad->padctl;
>> +	struct tegra186_xusb_padctl *priv = to_tegra186_xusb_padctl(padctl);
>>   	unsigned int index = lane->index;
>>   	u32 value;
>>   
>>   	if (!phy)
>>   		return;
>>   
>> +	if (!test_bit(index, priv->utmi_pad_enabled))
>> +		return;
>> +
> Same here...
>
>>   	dev_dbg(padctl->dev, "power down UTMI pad %u\n", index);
>>   
>>   	value = padctl_readl(padctl, XUSB_PADCTL_USB2_OTG_PADX_CTL0(index));
>> @@ -748,6 +755,8 @@ static void tegra186_utmi_pad_power_down(struct phy *phy)
>>   
>>   	udelay(2);
>>   
>> +	clear_bit(index, priv->utmi_pad_enabled);
> and here.
>
> Thierry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
