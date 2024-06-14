Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69FFBC27C6E
	for <linux-phy@archiver.kernel.org>; Fri, 14 Jun 2024 05:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xng3zy9UnCPxm9dklnBz8YJdgnE8BqUuj7qgMS9rzC4=; b=RG8gxKtU/EdgQ+
	SeJwn4cwRh5zTL41GXE+lIy8ee2wpBZA1crOLsvyFhtw0GecJrsGafzUaulAcHwbxbkkPcMxObAsm
	gRNtUkwfFgZtBbmsR+5oWUOt13xOhUuKTqeKqzJk2SsiXCSZNfmxeLUd8Z6tj9opj0qGlz4f/kR4F
	Wqcxp2Lyu1mfZkhxOPrAj5R35upwE/5J/tn6zIaJHnswoTXZVeoJVv41O917shNQAdnQAt+tTFCa7
	QHjY0enJxRIAJlR3IcK5WFE4SDjvLwZ3wOrvslXVYWOIsSl558WDqBqxrzsCupzIfDge7sDQEgHpc
	BQY3Tx2txJq2DD3jAYTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHzIt-00000001Tmc-44c0;
	Fri, 14 Jun 2024 05:16:47 +0000
Received: from mail-co1nam11on20601.outbound.protection.outlook.com ([2a01:111:f403:2416::601] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHzIr-00000001Tle-1LcX;
	Fri, 14 Jun 2024 05:16:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QZ3OusTho5/rHoMkgRTXZ7/3zMUSm3Gend6n3T0RMqA/SglCg8RKSgJZdFFbHNRrvORlsjI5rHFses3fyJKXAiu3zMeP2fe8GfDk7OLZk2DnE2I78Xaan/8VUrrcTJfpMdAZSD2IfgXBlVOkqLAS+nvYj8Ebzxy+pCtkhLpE3HGxLvAHivH+D2Oda2z8uH+N8NXxYqp4LS+UabdUIaUt4UttR8/I43NQkbIrTMOEhOtgYAm9SyHu+fA9xzFdgS+kKh7YUeJwWMGaCf2tZP1PhSZxQ3haZi0wrPGMt5FvFfbIO2Wkj2Efvmh2YUGyQdJ25Dsfh7g9UvjiHlJLd7IMwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+av2u2YsQWHGce2DmU5Dr1ChP50JsPcsvChLMB4tnNU=;
 b=V9E1JDtRJa5OWdA2rYJ/fKwoA1Kql5NYma9u4x18e0nQ2s4WEBEL1HjtjrzJcAauN8RrA0yaISMg+PaI6rYm34jD0izm7n+PjTQuDLch7WaMv8d4vzyy27rlaKPKWYBYDCmcLW6z5Je+9L9nCTc55Q2BWtoFCz5DeKGurWbgdb0OdUAXuMEDwxhEEUPDiMGdV+kU7HRaZRSgAETSy56JNkkEpcuZkXGfvfh/B4aKxIwaygJ6b7hOWhh4vNCGuKaz1rNVTqSBae2ADKdaPvMnujRFUvX4iF5QPl+sHZT9yfoss7MQLQYy1uMR3ZN4pZkmVwZQYYBCGoke0R5/oYle9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+av2u2YsQWHGce2DmU5Dr1ChP50JsPcsvChLMB4tnNU=;
 b=EendjkDw26sA/M0LZwUjONTUttorIgs6c+qefsM8FBNMhyVVlClkjvcuL+EzEdqVtMRAHCS5FmzzjUk2qY5cu5HqcnE9/O/u9fDmeOUe9LEBS3KMCHCEqzY0YbC5kgCfQ/IWj4C9Z6+54Pd7cKSOXXn1GVFnUzKV6wkVS8g7iHA=
Received: from MN0PR12MB5953.namprd12.prod.outlook.com (2603:10b6:208:37c::15)
 by PH7PR12MB5830.namprd12.prod.outlook.com (2603:10b6:510:1d5::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.25; Fri, 14 Jun
 2024 05:16:34 +0000
Received: from MN0PR12MB5953.namprd12.prod.outlook.com
 ([fe80::6798:13c6:d7ba:e01c]) by MN0PR12MB5953.namprd12.prod.outlook.com
 ([fe80::6798:13c6:d7ba:e01c%6]) with mapi id 15.20.7677.019; Fri, 14 Jun 2024
 05:16:34 +0000
From: "Pandey, Radhey Shyam" <radhey.shyam.pandey@amd.com>
To: Sean Anderson <sean.anderson@linux.dev>, Laurent Pinchart
	<laurent.pinchart@ideasonboard.com>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>
CC: Vinod Koul <vkoul@kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "Simek, Michal" <michal.simek@amd.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Subject: RE: [PATCH v2 4/4] phy: zynqmp: Add debugfs support
Thread-Topic: [PATCH v2 4/4] phy: zynqmp: Add debugfs support
Thread-Index: AQJ83aedMQVFXzZR+sovobCavopdtgGvrfvSsHOmC7CAAGaQgIAA7UKw
Date: Fri, 14 Jun 2024 05:16:34 +0000
Message-ID: <MN0PR12MB595380A6FBC3B67B312E440CB7C22@MN0PR12MB5953.namprd12.prod.outlook.com>
References: <20240506170110.2874724-1-sean.anderson@linux.dev>
 <20240506170110.2874724-5-sean.anderson@linux.dev>
 <MN0PR12MB5953519A685A222CC603A2FEB7C12@MN0PR12MB5953.namprd12.prod.outlook.com>
 <8349516a-84bc-45bf-a84c-ff05d8f50bf7@linux.dev>
In-Reply-To: <8349516a-84bc-45bf-a84c-ff05d8f50bf7@linux.dev>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN0PR12MB5953:EE_|PH7PR12MB5830:EE_
x-ms-office365-filtering-correlation-id: 0b20bba0-781d-4af0-a918-08dc8c3128ef
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230035|376009|366011|1800799019|38070700013;
x-microsoft-antispam-message-info: =?utf-8?B?cDFFK3k4MkZHZlZuN3ZaMVEzSzFFMjByL1p1WGlUalpMZ0RydHJRcWJrb1p4?=
 =?utf-8?B?aUQ2aFFCZnpEdjBVY3VzUlBkWUp5SCtyTk1LV1VjOTRDemFmSnJ6SmZ1SkJy?=
 =?utf-8?B?ZS82cFl5SEdET0duWWFWakRzSTVkUGVHU0d6cXRXcEZKT2lvVWFYM0FnYTBL?=
 =?utf-8?B?aDgzcExvVkxQb3MrakFmQTRYaXphUWV6c2xPUmN0UFZOcFRYL0ZzUVVGUUpz?=
 =?utf-8?B?NVh1QVN2bENKd3lJR3VmVHJ5TU5tSmNPRk1nZlJtZnZ6SUZ0M2N5WlBRSWlj?=
 =?utf-8?B?UjR0K01vb05QZk16M3g2MGJOeFFzQmRmbDRpaXRKdnlibzRRY2poNkpib1o1?=
 =?utf-8?B?Q0tjSWxnM1JFSi92dUlsRmVmRlRsaitCVmE3SDJWaEZjN1p1TkR0Qlp4WkN5?=
 =?utf-8?B?bFR0TXkxZ3A1dnVKQmlTVEJtNWxzWGhjM2hYM25NcERpc2pxMnh1aDhUTS9Z?=
 =?utf-8?B?cURkNVhnSEFjYXpNNFR3Q1hoRERzZXdEUUhrVXFrS2p6NlNIZEVveUxWaG5Z?=
 =?utf-8?B?aXdTandBUEV3QzZOc01WeVZWMXN1ME9pVEY2QkVlcUNlSEZHSlp1NDJ6QXow?=
 =?utf-8?B?Y0lxOEl5Mnpqc1gxaVRGSkdFRWZCeW9EVm8wdVFKcDVVeExJK1doM1FsQ25s?=
 =?utf-8?B?UkJDdWtCY2RYa3RGbW9Lbk9ZUjdjUFgxMndMNWRTNXBMZC9FQnBaeTZNUjNJ?=
 =?utf-8?B?SVhnSFozeEVHZHU0UG5jaVJMZU9RVk5CZXRmMlJHZWNwZFJ6cUkyaWVWYk5n?=
 =?utf-8?B?djVPUUpXMURCUVZBbDIvZVl5aDQ0aDdQckVNRDN5ZHorMGFBNnRKUVdqU1R3?=
 =?utf-8?B?V1loWXNKZCtHMi8yQWVxRGVYL0tLekZ1aTVjZlR4S1FEYldaakJzT1poNHk4?=
 =?utf-8?B?bm0wSUhxYy9NTnF3U1Z0aFl1dFpYTWpod3llcUhHQ21RWTF4MFVuZUhEMTFF?=
 =?utf-8?B?UlU3QnJIZjlVdm1rOFQ4TjNUN05jeG5lR0JVZE41eUFJRVdmSFo0Vi9iT2Yw?=
 =?utf-8?B?Z3pjTHpRNTQ5M00zVU1pSkRCZjh1UVJWT1U2K0IxVHVzWnlXSXZxVzhNNmpE?=
 =?utf-8?B?QTdjM3BhcFlUcElROE5NMlFTSFFOc3ROVHBqSndpaHYvZnF4QjNCbityNkVC?=
 =?utf-8?B?aEMveHNqVkhqV212cUZYdkhCT1lzQzdQZlJoZkVxbUxBTDhoZ1l0YU1NbW8v?=
 =?utf-8?B?NXFRdUQwVGdOVXZaSHhodnl4TFl2Q2dOV2VmK1lVVGUwWURsK0JoME80d2t3?=
 =?utf-8?B?c2lqSXFrU1owa1dkNHBlK1M4aWJOV21qaWt1SG9VNTBJU1ZHclVSVHhtK29B?=
 =?utf-8?B?RmdBdWZpdFFZcnBvYU1oTStTQlUzTjU3a3ZtOUJyZ1NoZG9XS0xBQ2xrUnRY?=
 =?utf-8?B?c1F0czY0SkdpaVJnUTNjTFI5WGJnakZRNEV1ZTNjcDJHOU1BaWNaR3VpbEQ3?=
 =?utf-8?B?Rzd6NEJtTy8vWUFIMjNmWXJiUlo4SUdkeUp3YXpMMVNPdDluYVE2ZHpqa0tk?=
 =?utf-8?B?TmtUUEZDMG1OUjFad2xJWnh2R2NuQkFXdk8zL1BtWTRueGxxc3lkWGZJWXVo?=
 =?utf-8?B?VVlOVFRiaDcwWE55Q2dtM0JESEx4UXZCR29DRDd5M3dYdExMUUFwQUowL2pp?=
 =?utf-8?B?eDF3TnRodVZ2NExMVWFkeEk0RTY0Z2pOSTNrOXkvWWVqZnNXcnN5NDc2Zmdr?=
 =?utf-8?B?bkI4L2JFVWQzNUJOV0h6cFQ3RFM5YWRWYnJqWkVUVXF4bU9HNE1OeW1xSlJh?=
 =?utf-8?B?Wi9pbmcreFMxNFVhK2hXSVhEY0tvdnpLSFVKMUpYRk9kWmhCQzNjMkVFUmlL?=
 =?utf-8?Q?V6Nm2mc723AdyHl6uFsDTn+PlcQnQNmGqN6t8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN0PR12MB5953.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230035)(376009)(366011)(1800799019)(38070700013);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MzY3ejgzN0p4YXI5a3hmaGprODZyQnJndENFelJIWlZjWDdCZkhFVmJ1TVcz?=
 =?utf-8?B?d0J4K3BXYm5DMStyZWp2R2FPVmFHVGVzZlJ6VUMvbXlpQVRJQnRjZXRudzVE?=
 =?utf-8?B?ajJ1ai9IaFJMU1R0dUR6SktlL1NGSk8vWTNOUHpzYmh4c2NBMTZ5ZVJwd25l?=
 =?utf-8?B?Z3c5YnpTYUNpTzk3Qm9CNTJ5ZlpvL3JSVUl4dWhMZW10ZGNDbUFhcGt6T1NZ?=
 =?utf-8?B?dXZycGd1U1k2S3pVWWRPVHBFUXJsL0tLTGsxb2ZvM1FLQ3BwL0ZvTlIvU21D?=
 =?utf-8?B?dHdIbngwcFpkRytyYTI1em01QXltVjByMndUVnpqUWVlVGJEM003ZXk3ZlJ2?=
 =?utf-8?B?cEpTd3pBUkYwQlpKSkdvS2ZrL0xQdzBaREhsQzVzVkJXTExXRjFOTnJhOE1V?=
 =?utf-8?B?TFJXTE9jenN1dkVMTndLZkJnNU1Ic3lmb0NrQXk2NGx3bW81dGJoSk4zN28v?=
 =?utf-8?B?SDk5WTFsbWRzNy9RNkErVk9zUWxPYnFzbTRqWTBFTmRDWFNMM09kbHlldlZU?=
 =?utf-8?B?ei81cTZabWpEVy9zMGwrVTd3NWk4WjVsdC8vSFltWklieFkxMzFvcERLTWpE?=
 =?utf-8?B?S0VmT2tvVnkwdEErYndUa3d2ejA3UGtrVGpyQlRPM1Jqb0VFdTFEK2RydXhH?=
 =?utf-8?B?aTdwZTZlZk0rNGIvY3dtSnY4Mk5sRkpRSk1DRUxISDFNcnZJUnQyaUhkTUx5?=
 =?utf-8?B?UjNXdEt4QjIrSHRJSzFXT2o2aTdIQmVTM3YzM3ozYS8yZHZkRHprVzl0WHd3?=
 =?utf-8?B?WmE5WnBmaUhac2svR05kL2ZsK25vcElJTmMzcWNSSDNoNTI1bjdidHhLcWJ5?=
 =?utf-8?B?am9FRTNVN0NMWUw3V3pSLzc2ZlhPVW5oaUdJNHNtbUdDVlBLNDVFdXA5aTRh?=
 =?utf-8?B?NlpFeFFpYk0zMURQaDk3NGRkREM5ZkRIZ0FmOGUwaTJsMGNjK1NkQWttSHlh?=
 =?utf-8?B?cThTbFU0NWtGUjVONHVjYk1oWi9ZRXBSNGZVQ2VwL2Uzc1QxSWUyaTRVbFMw?=
 =?utf-8?B?aHVwcUlCbnhRcWdxeXpndnhOV0x3M0RpU2g3UXo1TG0yV09xZExjYVR1ajhS?=
 =?utf-8?B?QUpKeGEzWkFleDU0V0JteWZLMGtqbG14dk45Y1JheERJQnRiaU8xb1F2SEtv?=
 =?utf-8?B?V0Ixa2xvbWNyc1Z4ZzVTWDBVMnV0ZnpRZlI5M005SW1hRzhOUU11M3BlOGJT?=
 =?utf-8?B?UnRCQ2tlTkMxQlBnQ3EvdVBFTUFrd2dEbmFsQmwyYTZoZDRyZ3MzYlN3Mmtz?=
 =?utf-8?B?aFBqLzZNQzVRNDJScVJXZTJGV1hrOThHN3Z0cFVPRi81RUlBSnJLMGkzNldm?=
 =?utf-8?B?SEsyVDNzcjExYW9VNUVYbFhJMDlkR2Q5NENwU0ZYTjJtOExUV3AwdG1kVDFt?=
 =?utf-8?B?Y1RXQWdOL1VweEozZjZSYzhKWmJ5Z01ieWl6UHBUd3V4ak1obXFDNlVrY0ZZ?=
 =?utf-8?B?UmFCT3ljYzdaZVBDSkEvV2J5dHFUbXZ2ZURXRHVreVVieTU0L0NON3prSjNY?=
 =?utf-8?B?V09yck43OGRhK0JBM1dhdDFWUDBhblRvMnprKzlFR1MvL1VrRmV5dnA5L1NL?=
 =?utf-8?B?NXFrcHMxRXgxSXBuZ3IydkxqQktmTGR0bjVzVUxQOWxvTGEvTHhJZ1dMWW55?=
 =?utf-8?B?OU9KdUs4RTByMGJFaGdadmxEMzJ6Zk5NOVN3cXBJUTE2MzZUVCtVNk00NkFn?=
 =?utf-8?B?YU5vMEJWdzkzck1lMjhKcXN6UFpEdkVxaFlVbEU1QVhCYnlFeTFuZmZ0WC84?=
 =?utf-8?B?MGlRaDRpcXJSSDdPUHNWWUhDMkdjbHczWC8xaG92MmRVSDl5Z3NKd2hHYVV3?=
 =?utf-8?B?L3RPR3VQMi82eURtclhheU9xSHRMcUhxRVM3V3ZRV05kS25iYThUUUw3WWgz?=
 =?utf-8?B?TlRyMGxtZUFNS2pKNXhLaHBBWnZrU3ZWRmhsMVdURlZjam5VSURaVVN6WWlu?=
 =?utf-8?B?Q0xNNDVlblZHdFF0amYrSDVrRjNiNUxaYm5ZMi8xamlQYUVUVTAzYzhQcEd4?=
 =?utf-8?B?VzZ1ekVZNElMRE1vVUNKd3o2OCtsSWliZDEyQTdBc0Q0T0JwdEZCUWs0Wkh2?=
 =?utf-8?B?S2N6MzM3bmdHMDY0SnRIMU1haWFoRHlnWVZDdVFkVyswYnVxZG55azcxbit1?=
 =?utf-8?Q?BO58=3D?=
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN0PR12MB5953.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b20bba0-781d-4af0-a918-08dc8c3128ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2024 05:16:34.7825
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q8D3JKXoymw2nW1jC3aO8xbIqBUv5zu+IiILvrbwnJhyuMeEAxjMa1rCVZAlwiOB
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB5830
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_221645_502417_FFB05561 
X-CRM114-Status: GOOD (  26.25  )
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

> -----Original Message-----
> From: Sean Anderson <sean.anderson@linux.dev>
> Sent: Thursday, June 13, 2024 8:32 PM
> To: Pandey, Radhey Shyam <radhey.shyam.pandey@amd.com>; Laurent
> Pinchart <laurent.pinchart@ideasonboard.com>; linux-
> phy@lists.infradead.org
> Cc: Vinod Koul <vkoul@kernel.org>; linux-arm-kernel@lists.infradead.org;
> linux-kernel@vger.kernel.org; Simek, Michal <michal.simek@amd.com>;
> Kishon Vijay Abraham I <kishon@kernel.org>
> Subject: Re: [PATCH v2 4/4] phy: zynqmp: Add debugfs support
> 
> On 6/13/24 05:20, Pandey, Radhey Shyam wrote:
> >> -----Original Message-----
> >> From: Sean Anderson <sean.anderson@linux.dev>
> >> Sent: Monday, May 6, 2024 10:31 PM
> >> To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>; linux-
> >> phy@lists.infradead.org
> >> Cc: Vinod Koul <vkoul@kernel.org>; linux-arm-kernel@lists.infradead.org;
> >> linux-kernel@vger.kernel.org; Michal Simek <michal.simek@amd.com>;
> >> Kishon Vijay Abraham I <kishon@kernel.org>; Sean Anderson
> >> <sean.anderson@linux.dev>
> >> Subject: [PATCH v2 4/4] phy: zynqmp: Add debugfs support
> >>
> >> Add support for printing some basic status information to debugfs. This
> >> is helpful when debugging phy consumers to make sure they are
> configuring
> >> the phy appropriately.
> >>
> >> Signed-off-by: Sean Anderson <sean.anderson@linux.dev>
> >> ---
> >>
> >> Changes in v2:
> >> - Use debugfs_create_devm_seqfile
> >>
> >>  drivers/phy/xilinx/phy-zynqmp.c | 40
> >> +++++++++++++++++++++++++++++++++
> >>  1 file changed, 40 insertions(+)
> >>
> >> diff --git a/drivers/phy/xilinx/phy-zynqmp.c b/drivers/phy/xilinx/phy-
> >> zynqmp.c
> >> index b86fe2a249a8..2520c75a4a77 100644
> >> --- a/drivers/phy/xilinx/phy-zynqmp.c
> >> +++ b/drivers/phy/xilinx/phy-zynqmp.c
> >> @@ -13,6 +13,7 @@
> >>   */
> >>
> >>  #include <linux/clk.h>
> >> +#include <linux/debugfs.h>
> >>  #include <linux/delay.h>
> >>  #include <linux/io.h>
> >>  #include <linux/kernel.h>
> >> @@ -123,6 +124,15 @@
> >>  #define ICM_PROTOCOL_DP			0x4
> >>  #define ICM_PROTOCOL_SGMII		0x5
> >>
> >> +static const char *const xpsgtr_icm_str[] = {
> >> +	[ICM_PROTOCOL_PD] = "powered down",
> >
> > Protocol saying powered down seems confusing.
> > Should we say None or None(power down)?
> 
> Either works I guess. I'm just matching the define.

None seems fine - we can respin if there are no objections.
> 
> >> +	[ICM_PROTOCOL_PCIE] = "PCIe",
> >> +	[ICM_PROTOCOL_SATA] = "SATA",
> >> +	[ICM_PROTOCOL_USB] = "USB",
> >> +	[ICM_PROTOCOL_DP] = "DisplayPort",
> >> +	[ICM_PROTOCOL_SGMII] = "SGMII",
> >> +};
> >> +
> >>  /* Test Mode common reset control  parameters */
> >>  #define TM_CMN_RST			0x10018
> >>  #define TM_CMN_RST_EN			0x1
> >> @@ -788,6 +798,34 @@ static struct phy *xpsgtr_xlate(struct device *dev,
> >>  	return ERR_PTR(-EINVAL);
> >>  }
> >>
> >> +/*
> >> + * DebugFS
> >> + */
> >> +
> >> +static int xpsgtr_status_read(struct seq_file *seq, void *data)
> >> +{
> >> +	struct device *dev = seq->private;
> >> +	struct xpsgtr_phy *gtr_phy = dev_get_drvdata(dev);
> >> +	struct clk *clk;
> >> +	u32 pll_status;
> >> +
> >> +	mutex_lock(&gtr_phy->phy->mutex);
> >
> > Do we see any need for this lock? This function simply read hw register
> > /phy members and decodes it.
> 
> It's to protect against modifications to gtr_phy->refclk and ->instance.

Refclock and instance is assigned in xlate which is not protected by any
Lock.  Also xpsgtr_phy_init () uses a different gtr_mutex. So want
to understand this phy->mutex need.

> 
> These are accessed under lock elsewhere; this is not a fast path and I don't
> want to have to reason about the semantics when using a mutex is definitely
> correct.
> 
> --Sean
> 
> >> +	pll_status = xpsgtr_read_phy(gtr_phy, L0_PLL_STATUS_READ_1);
> >> +	clk = gtr_phy->dev->clk[gtr_phy->refclk];
> >> +
> >> +	seq_printf(seq, "Lane:            %u\n", gtr_phy->lane);
> >> +	seq_printf(seq, "Protocol:        %s\n",
> >> +		   xpsgtr_icm_str[gtr_phy->protocol]);
> >> +	seq_printf(seq, "Instance:        %u\n", gtr_phy->instance);
> >> +	seq_printf(seq, "Reference clock: %u (%pC)\n", gtr_phy->refclk, clk);
> >> +	seq_printf(seq, "Reference rate:  %lu\n", clk_get_rate(clk));
> >> +	seq_printf(seq, "PLL locked:      %s\n",
> >> +		   pll_status & PLL_STATUS_LOCKED ? "yes" : "no");
> >> +
> >> +	mutex_unlock(&gtr_phy->phy->mutex);
> >> +	return 0;
> >> +}
> >> +
> >>  /*
> >>   * Power Management
> >>   */
> >> @@ -937,6 +975,8 @@ static int xpsgtr_probe(struct platform_device
> *pdev)
> >>
> >>  		gtr_phy->phy = phy;
> >>  		phy_set_drvdata(phy, gtr_phy);
> >> +		debugfs_create_devm_seqfile(&phy->dev, "status", phy-
> >> >debugfs,
> >> +					    xpsgtr_status_read);
> >>  	}
> >>
> >>  	/* Register the PHY provider. */
> >> --
> >> 2.35.1.1320.gc452695387.dirty
> >

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
