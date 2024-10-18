Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEBC1D2FFED
	for <linux-phy@archiver.kernel.org>; Fri, 18 Oct 2024 10:48:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gAa7gXv4tq5J7IQl5bO8UzLGRMVTyzaYx5XOqz3YARo=; b=QWZo69SvGyAnCX
	yx8QvfniYEUk1zFFV5z6wWh81WxDb+eA0cfQ/QFU5U6rP9Ps5FCbT90U+O/6RnAOb3d8iIoBPGVWb
	Sigfvd3k39wqMDsyXpa9VykNtqYkVQ1+RZ9NBmbDK3RvSkV/5/SoBAAAOzujqI/6tba1SswVzPQ9x
	rhwyKvYqDEw1m7r2jhs5gxeUBR2ZxDT3Mi4p8HdbeAmNZUiq7OvxFSWBOFA8wvM+7aCUFsgDyXGRj
	ZwLXCJEa1qPZYE+58KD3fYvTZCbzKjjOKNWA8yp/e/z7C6SFMAkTOTrZYEiqwz/ENV4Bp5m0Zy+2H
	yj+VwCA0kQsPnkiNJ+Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1kX9-00000000Q71-2fAp;
	Fri, 18 Oct 2024 10:48:39 +0000
Received: from rcdn-iport-4.cisco.com ([173.37.86.75])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1kPC-00000000OjQ-37ky
	for linux-phy@lists.infradead.org;
	Fri, 18 Oct 2024 10:40:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=cisco.com; i=@cisco.com; l=846; q=dns/txt; s=iport;
  t=1729248026; x=1730457626;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=ro9fjkpkH3w/ouSHekn21o06mn2yyPD+5yp4HVkMA5k=;
  b=jUU2YZKYYNgWzBesCPaHIo1aybIIKa26v8nOo+ylMKc6oN9cbyuLS/nU
   sHLOLxjSSEc6UUcnl5FNSMpl0WF0YyWOLyzNdGjLfsuyZos0j5qvKLMII
   Csuvr5JFxcTB2gYu9VLficFN4K/0ua2DNWI1E2+amLsa5kNKY5oa4mpCr
   I=;
X-CSE-ConnectionGUID: i1jcOdPKSBWQW6WKVF5UHQ==
X-CSE-MsgGUID: INhAuFCJRvi2yTwKYyz/ZQ==
X-IPAS-Result: =?us-ascii?q?A0DTAABlOhJn/5D/Ja1aHAEBAQEBAQcBARIBAQQEAQFAJ?=
 =?us-ascii?q?YEXBgEBCwGBcVIHdIEehR2DTAOFLYhFMJ4UFIFqDwEBAQ0CRAQBAYUHAhaKD?=
 =?us-ascii?q?QImNQgOAQIEAQEBAQMCAwEBAQEBAQEBAQ0BAQUBAQECAQcFgQ4ThgiGWwEBA?=
 =?us-ascii?q?QMSERFFEAIBCA4KAgImAgICLxUQAgQOJ4JfgmUDAaNGAYFAAooqeoEygQHgH?=
 =?us-ascii?q?xiBAi4BiEsBgWyDfYR3JxuCDYE8C4JHMT6EKTGDRIJpBJIFhCNXD4JWg3UWi?=
 =?us-ascii?q?WKRPwlJexwDWSECEQFVExcLCQVoiE0KgxwpgUUmgQiDCIEzg3KBZwlhiEKBD?=
 =?us-ascii?q?IE+gVkBgzhKg0wcgU8FOAo/gk9qTjcCDQI3giSBAIJRgSUEBYM+fB1AAgELb?=
 =?us-ascii?q?T01CQsbBj2yc0GXb0mvIAoog3KhRAYPBC+DchONAZlGmHeodgIEAgQFAg8BA?=
 =?us-ascii?q?QaBaQM3gVlwFYMjURkPji0WFssMgTMCBwsBAQMJjhsBAQ?=
IronPort-PHdr: A9a23:NRxXnBAvKPMn1OU6DLrBUyQVXRdPi9zP1kY98JErjfdJaqu8usmkN
 03E7vIrh1jMDs3X6PNB3vLfqLuoGXcB7pCIrG0YfdRSWgUEh8Qbk01oAMOMBUDhav+/Ryc7B
 89FElRi+hmG
IronPort-Data: A9a23:FBP/K6JozY5CzSggFE+Rh5QlxSXFcZb7ZxGr2PjKsXjdYENS1zZVx
 mcdW2COa6rcYmXzKNokO4i28xtV7MXUm95qTQId+CA2RRqmiyZq6fd1j6vUF3nPRiEWZBs/t
 63yUvGZcYZpCCWa/k79WlTYhSEU/bmSQbbhA/LzNCl0RAt1IA8skhsLd9QR2uaEuvDnRVrU0
 T/Oi5eHYgP8g2ckaj58B5+r8XuDgtyj4Fv0gXRmDRx7lAe2v2UYCpsZOZawIxPQKqFIHvS3T
 vr017qw+GXU5X8FUrtJRZ6iLyXm6paLVeS/oiI+t5qK23CulQRuukoPD8fwXG8M49m/c3+d/
 /0W3XC4YV9B0qQhA43xWTEAe811FfUuFLMqvRFTvOTLp3AqfUcAzN1vVUM9GoEg2d1dPlhxq
 8M7Fh5QUzC60rfeLLKTEoGAh+w5J8XteYdasXZ6wHSBUrAtQIvIROPB4towMDUY358VW62BI
 ZBENHw2MEiojx5nYj/7DLo0g+63nGvudRVTqUmeouw85G27IAlZiuewboONIYDTLSlTtme+p
 kvb0U/bOA8bbs2j1hm042DrtNaayEsXX6pXTtVU7MVChFyV23xWEB0HfV+6uuWizE+4VchWJ
 0Ed9mwpt6dayaCwZsP2Uxv9pDuPuQQRHoIPVeY78wqKjKHT5m51G1Q5c9KIU/R/3OceTj0x3
 VjPlNTsbQGDepXMIZ5B3t94dQ+PBBU=
IronPort-HdrOrdr: A9a23:jFf0vKDzfk+nLlnlHejQsseALOsnbusQ8zAXPh9KOH9om52j9/
 xGws576fatskduZJhBo7y90KnpewK7yXbsibNhc4tKLzOWyVdAS7sSrLcKogeQVBEWmdQtr5
 uIH5IObOEYSGIK8voSgzPIU+rIouP3jZxA7N22pxwCPGMaDp2IrT0JdjpzeXcGPTWucKBJb6
 Z0kfA33wZIF05nCfhTL0N1LNTrlpngrr6jSxgAABIs9QmJih2VyJOSKXKl9yZbeQlihZM5/0
 b4syGR3MieWveApSP05iv21dB7idHhwtxMCIinkc4OMAjhjQ6uecBIR6CClCpdmpDs1H8a1P
 335zswNcV67H3cOkuvpwH25gXm2DEyr1f/1F6jh2f5q8CRfkN+NyMBv/McTvLq0TtngDhO6t
 MT44tfjesOMfr0plW72zEPbWAwqqP7mwt5rQdZtQ0ubWJXUs4ikWVYxjIXLH/FdxiKtLzO14
 JVfZzhzecTflWAY3/DuG5zhNSqQ3QoBx+DBlMPo8qPzlFt7TpEJmYjtYQid007hdkAYogB4/
 6BPrVjlblIQMNTZaVhBP0ZSc/yDmDWWxrDPG+bPFyiTcg8Sj7wgo+y5K9w6PCheZQOwpd3kJ
 PdUElAvWp3f071E8WB0JBC7xiISmSgWjbmzN1Y+vFCy/DBbauuNTfGREElksOmrflaCsrHW+
 yrMJYTGPPnJXuGI/cB4+Q/YeglFZAzarxjhj9gYSP6niviEPyfitDm
X-Talos-CUID: =?us-ascii?q?9a23=3Ayr1f9mpakbQj0sTXo1wcMGfmUcF8cHb6wE/zGGW?=
 =?us-ascii?q?HMFk3d56rZwKt2Joxxg=3D=3D?=
X-Talos-MUID: =?us-ascii?q?9a23=3A5faEUgz0mKeNRs1sSD730UY8yXeaqIWICGkQv74?=
 =?us-ascii?q?kgdeFbz1MJBSsnSbwcLZyfw=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
Received: from rcdn-l-core-07.cisco.com ([173.37.255.144])
  by rcdn-iport-4.cisco.com with ESMTP/TLS/TLS_AES_256_GCM_SHA384; 18 Oct 2024 10:40:16 +0000
Received: from rcdn-opgw-5.cisco.com (rcdn-opgw-5.cisco.com [72.163.7.169])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by rcdn-l-core-07.cisco.com (Postfix) with ESMTPS id 9AD5F18000229
	for <linux-phy@lists.infradead.org>; Fri, 18 Oct 2024 10:40:16 +0000 (GMT)
X-CSE-ConnectionGUID: d0+3tD45QVmm060mgv3j2A==
X-CSE-MsgGUID: VftqmyFdTX26iEY1r4dt2Q==
Authentication-Results: rcdn-opgw-5.cisco.com; dkim=pass (signature verified) header.i=@cisco.com
X-IronPort-AV: E=Sophos;i="6.11,213,1725321600"; 
   d="scan'208";a="18461572"
Received: from mail-dm6nam04lp2048.outbound.protection.outlook.com (HELO NAM04-DM6-obe.outbound.protection.outlook.com) ([104.47.73.48])
  by rcdn-opgw-5.cisco.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Oct 2024 10:40:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PPsc3Qpe1LH04cVOxn/9yBsSqZametb4V+daz3CNWEMT8hURFC1wu7m5VfUa19CWI/S6nhM7NcPiUX+ke1pYy5obu+zRku0peB/AG6ow81gzEOhGaaAHhHCipvxC0Jdudczs7s9bMglOSLoZYl3fA3vGCrU2XtKQIn+OaMzLm11ZuxD190Dch7+F32bs/GK4Hk1eVFqB2W/k/VrFp9ZKb4Eq+Jm/ZZRys6yVRkQkJNmtnK+0k7+11axHTz9NkkfSipyvyXa8mFz1mJLjeLlN34SB7SKKjpFMXZexvri8Gybah4V6Ix47Rn2gdSk5IPP1hYMk7qSZaHo8fXnTLgtKMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ro9fjkpkH3w/ouSHekn21o06mn2yyPD+5yp4HVkMA5k=;
 b=rjwtskyjxhhb+//yXeXz3iFFx3Zm3GVtDvsI3qTuo5TaoSX3AqO59n8Q8M+XMkF/vS5qEaJ1jp4qaQgGW4BLux+CAREDWXnq7SRGx4JkraOOd6dpd9BhJeu50ErldhCZ4Et5A1oH0KCIIjfv5oWEK9L6I8ALZgMXTFJxeXgxrVpxuwU5u97IiE34tTJLDHul6jwHppbKRgbsJYB6dVJEQ4t9FEELETwddlfFw6u5DKtJ1nVODiDPQ24FZ1ki/qADG+WFeG4UV9LlGSkOY0TKSk8Cr+6gjz4JyEbMMEiryI39BXtMNEYlrVX6/bOkh/vW/FjwrdlvUT/K/K4X8mk+0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
Received: from CY5PR11MB6367.namprd11.prod.outlook.com (2603:10b6:930:39::13)
 by SA3PR11MB7527.namprd11.prod.outlook.com (2603:10b6:806:314::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.17; Fri, 18 Oct
 2024 10:40:14 +0000
Received: from CY5PR11MB6367.namprd11.prod.outlook.com
 ([fe80::a96b:f32a:2d2c:c7b1]) by CY5PR11MB6367.namprd11.prod.outlook.com
 ([fe80::a96b:f32a:2d2c:c7b1%4]) with mapi id 15.20.8069.020; Fri, 18 Oct 2024
 10:40:14 +0000
From: "Bartosz Wawrzyniak -X (bwawrzyn - GLOBALLOGIC INC at Cisco)"
	<bwawrzyn@cisco.com>
To: Vinod Koul <vkoul@kernel.org>
CC: Kishon Vijay Abraham I <kishon@kernel.org>, Swapnil Jakhade
	<sjakhade@cadence.com>, Aswath Govindraju <a-govindraju@ti.com>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"xe-linux-external(mailer list)" <xe-linux-external@cisco.com>, "Daniel
 Walker (danielwa)" <danielwa@cisco.com>, "Bartosz Stania -X (sbartosz -
 GLOBALLOGIC INC at Cisco)" <sbartosz@cisco.com>
Subject: Re: [PATCH v2] phy: cadence: Sierra: Fix offset of DEQ open eye
 algorithm control register
Thread-Topic: [PATCH v2] phy: cadence: Sierra: Fix offset of DEQ open eye
 algorithm control register
Thread-Index: AQHbGaUCINkyft+830Oqn0+qPmJsW7KLFrSAgAFKO4A=
Date: Fri, 18 Oct 2024 10:40:14 +0000
Message-ID: <06c52602-9f70-4412-8d1c-9247b20215e8@cisco.com>
References: <ZwN+8xpOl4+Ggaha@vaman>
 <20241008171000.2665935-1-bwawrzyn@cisco.com> <ZxEmCWsViATsffE/@vaman>
In-Reply-To: <ZxEmCWsViATsffE/@vaman>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, OOF, AutoReply
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6367:EE_|SA3PR11MB7527:EE_
x-ms-office365-filtering-correlation-id: f2ded47c-7682-475e-6b75-08dcef614007
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?TTVtVVRyMDArWUxPWXQwdXB5ek9McE8xeTVLUm5HVHIwOWxMQWNVSlNiYkVU?=
 =?utf-8?B?a0RqUmgwMWZoNjNiNnVETVBkWkpRVnhScjZIR0pqWTZSZUxDWGxLWitYNVhq?=
 =?utf-8?B?MlNSRnpzYlpRZVB4WlNlaE5IK3FuQnIxMisxVVRwRlIwWnpPUFFqeURmY0Ev?=
 =?utf-8?B?KytSZmRkN1FRTDBVeUZaSmlWZEtXdmVaNFBodHIxeUtDQkJGeTN1eGY1ZUdC?=
 =?utf-8?B?MVpReks1bjRKdmpOUVp0Z2ZTZ3FaZDRyYWFXdHA4QXJBcHdLcXlORjNKVTFF?=
 =?utf-8?B?S2ZXZXRmQ1plbU84R3ovNkI2b2lKT0tUak1zV3RWT2liZ3JQcVZMeU5EeHBW?=
 =?utf-8?B?L25tMUlkcEdsRmN0QjZVT1c2aVpOUjU4SXhtQ05DR2J1S3QwcFdST21Rb1h0?=
 =?utf-8?B?aGNEL1dOUjJxTnR4eVlhTXB6SFkwVUdsdUcwdVJYY0JtQnJGTnpyWm5OQ3g0?=
 =?utf-8?B?aiswM0VJYkJsclFOSXFudkJSeTZic2liTi9FREM3YVlZTmtrbkI5MTJVUloz?=
 =?utf-8?B?VXpVRDZoSzcwb0NXdGlqNEY0MDEzQXNyaTRIS1dzcHQxUFNRZTNXc05pN25Z?=
 =?utf-8?B?UlpTMXowbHRIR0UvZHZPekcrUmZoSHBuY1JzSzlwajQ0Vm1mZGtHVW1QOVc5?=
 =?utf-8?B?NzFWK2NJRUErVDRpZHZ6Sld4M2NJdVlkaUlWckppdVhKL2huenY3M3d0aUJz?=
 =?utf-8?B?MUF0TWozVjlzWFVwVjAwbnNtaVdNK0xvdEhPVExKV2taYWVTWWVrNk9zVW9N?=
 =?utf-8?B?VGtuYzVKRWl3OTU1VzM0M3piUjIzSUwyS01uRmpPd0JxbVFmdlRrZGpoRkxy?=
 =?utf-8?B?dXBxTm5zamwyWEZNVS8zRmM1ZFdUeVc5WjhSR0tzWkloUmhTQlgwd0dreE5k?=
 =?utf-8?B?RzBRM1BDbU9qQkRBclhjSGo3SEtqVlk5UGFXWVBHNHVEUW9JWmVHV1NLeEFU?=
 =?utf-8?B?VEk1UTM1dUdhZlhid2o0ZkxxVWpIeitGd0ZhdTR3MnhvOWVpYld4d2RlUEVX?=
 =?utf-8?B?Q2hCWTFPT0RMRlNleWgvd3hLU0pZTzlUdkxrcTF1YnZPYVZ5MjJlVVRHanU1?=
 =?utf-8?B?MFVXNlhrSjdvSVBhbDZmMUlmdXFRQ0g4QmtyNnlrQ3hkVTMvbElKN3lIdnE1?=
 =?utf-8?B?R3p3QW91SVVTMi8zSDcwNEZLZ25xYmJ6TXEzNTArZmVlV2h6ZFJybU12aHZ2?=
 =?utf-8?B?bnRiZzQ4Z0NpcTdVS1UwZGhhN3dwUFo5Z2twT0tFY0lhdTJUSE4wTVg4Zno0?=
 =?utf-8?B?K1pEZDlKMzhUdXJQWkJGTyt3SUkzVGVaUkpPRm5QbnVlN1NybitsZDFJVklU?=
 =?utf-8?B?WTdWRDIvamFOUjZqVnVqNkVuZFQ3N0xJNHMrdmgwWnpaaUhOZXJ5WndLYlds?=
 =?utf-8?B?aGhZbzI1NlpmaFIxM1UyUjQ2S29VWFVkdit6VnppR2R3WFJnZm1IRk5PVUFu?=
 =?utf-8?B?Q3hxNUc3bGlmNkVWWW42M3J2L0xML1NmZGRINmVUblVnWFpMdGlPa2FEeE95?=
 =?utf-8?B?MmowbXF4QVN6N1pDdlNaM0ZLVWkxMkZjazFJdmQxVFpGVE1ZVXJkby9McHVG?=
 =?utf-8?B?VmtNN05leGJxU09uNUdGN3YwNy9vMndGd3FMLzViRmMxZnVCMFYvNVRzcVdv?=
 =?utf-8?B?SXRhQ3dtc3V5NHBvSklyUHEyNGlrUHJibEZmaWdyUTlQb3pUMjYxQ1JSMnlu?=
 =?utf-8?B?VktZendkd3ZPdEtTQXYyT3JRaDl4MTMwZ2Izb2prRXFEWGhwWmJGSGdiU0lW?=
 =?utf-8?B?dmhwaFROUERNbjJQcXdvbTB2OW5mR3hUbFd4eXJLc0Z0ZEhSc3M3WnpsRVF4?=
 =?utf-8?Q?XtMZjRxXqXuczYPDd8m2uP6w+nykFuS2DpiS0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY5PR11MB6367.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OTRlMm4zQTJWbTUzUUdIMnJSS1FYV0thVWlBNnoycWlWZEx4VGhXam9MVXhn?=
 =?utf-8?B?a1lSN245bkNMSjBpblVVVDZRdnd0bE1MVVNlTU9PQ0U0TGtpTnBGcUhPVWZ3?=
 =?utf-8?B?MVBJNXJHcUM3VjdINUVPUFlxNU1KT1Jib01yWU02VS9EUzNNbkh2bkV6cGdQ?=
 =?utf-8?B?WE9OMVNEZkw2b0xnbVJvaDNhSHRjVENmVTdQeXJoMk1EekErMFZ1c0tqNzJ3?=
 =?utf-8?B?R2pleHcvNHNRckNQU0l0UnYyMlNuSnVJYWFyRVVvZVorcVUrbGtrS05DRUFJ?=
 =?utf-8?B?d2FYT2F1bkpJbjllb2VxT0RHdUZvZDNEWDlLcWpSa3ZPUy9OSlBBck9vRlhq?=
 =?utf-8?B?cW1qUjBKdFdDNFp4dVVzdk55Y0J5RmdFWVRnMCtyZ05aT2o2VXN2UVFYM0RM?=
 =?utf-8?B?SHhaNU1RcjhBbGJZTGNIRUdFR0ZvL0Y5WEpsdlVGTFg0R2I0S3daSW5SbWhT?=
 =?utf-8?B?bTlzQXJUQ0Zuc0VTblludUlWQTV5R0Z0Nk92WGdweXhHK2ZmbllVcW16N2pw?=
 =?utf-8?B?UHFVL1FjcTBBNXJ1czR6K0VyWDIva2FuMXNvbjdsMTdzc2ZGV1lyRnI0UXVT?=
 =?utf-8?B?dDZrSDFMZ2JEUlB4ZVZvQ2swY29VSllTN2oxYks4ZDRtc3QvTUgvV2RKSUFD?=
 =?utf-8?B?VUdEdEl5dXNNWmhTOXBHdDhhSGV5ZG1wYXVkQ1NwTWhKb3RMdUlwVzBOcUxJ?=
 =?utf-8?B?OUhDS1R6MjV4cmZGR0ZSUlNmcVc1SkJsdFlkeXFsem1OSWpxYUtKRXNuSUM5?=
 =?utf-8?B?dDJLUTY5RUtMQ1d4TzdRT0RVT1VGbUVmY2FhZVJnSU9XbXRYSHhnYUZGSm5T?=
 =?utf-8?B?N0RVa0puTEgvMzJEbVl6eW1sQ2xUQ1pMMlhid0FBWlQzSVQzUmdxRGhLbmFh?=
 =?utf-8?B?YzNLVUYyOFROTlM3b2VVS0Z2aTRORGhkSDh4bS9UOExGWXYzN0dNZUcrcEkv?=
 =?utf-8?B?RUpUanlGYThnQ0MvZVkyenBjVGpsYkVvU1ZQVXF4NVRXT0Z6czZRWG5ZWGV1?=
 =?utf-8?B?UDE1TjZMbllSckU4cDN2SWhZTzZkRHUwNmxyWW80TjdpWkpyTGJ6YlNDWUJw?=
 =?utf-8?B?clVjK0FIUTVEaXVBY3NRSGlnNEFNM1RBSlpITklKTEV6d2c3UEFMQTA5dW5U?=
 =?utf-8?B?YW1ycW9pT3g2dzl1R3pYYVF0bU9kZDhYbGlrSk9zZ0p3Yzl1MjFxSVNDdmNq?=
 =?utf-8?B?VEExR0RlTWVpK2hZTkVHOWd1TURqT0Eybm9kcVVjaWpnVFhNMHl3OXJXN2h1?=
 =?utf-8?B?cFdYdDlVVjV2Z0VzMU44WndoVlNaT1hWYUlMOG8zRWdwd24vRDRGeHFrUnor?=
 =?utf-8?B?UkVhck5lb0dNdXQrWkp1M3lpZi90TzRJNW8zRXpHc1Q0c1pVcTJQRXVJTW9y?=
 =?utf-8?B?UU5sQ0JPNG5Cb253KzM3cE8vbXViZ0dQbFpXTXc0dU5YSFhkSDVqNTFUeklr?=
 =?utf-8?B?VUFzWDZ4eWtvd1JHTTNJeWdLSnZHVW1vdVA3c1ZscXZoS0pJTWp2Q0hzaEdi?=
 =?utf-8?B?M2ExbjRjSFpKdXVETlcrNDg2RUNJM1UrOHZQV1AwcGh0WFV0UXYrWkg1ZFJO?=
 =?utf-8?B?eFRVMDB6OWJDeGFqS21STFM5RzRUSzZKRkt1VlVVNWVqYjdHMWZYdG5JSW01?=
 =?utf-8?B?ekxXeXAyQXFVS1d6cCtzWWsrUW1nK2J6WkdiNmJkT2RNREkwTnBTcU1EbTlD?=
 =?utf-8?B?ZWFCK3VzWnlVakwvOWY0MWVUSUdnaDFtdTdPTWNENnVwcW1HM2gvRWdXNkxN?=
 =?utf-8?B?cGtJbXdBUnBpUWlTOGdlNzIzNHRoNk5uclhYWFp3VTl6dVpmdkpwMUMweWJm?=
 =?utf-8?B?N0ZERWhNMURSeGY3Q0pQL2hMdnNudTJUenhZNnR3UEZFSzMvOHR4czZPSjhr?=
 =?utf-8?B?SlFoa1NpSVpIbkYxcmtCNGcyTnlET1FZZ0RUTE4yTVNBM3JZR3RtdVIzK3NO?=
 =?utf-8?B?eDhMdytkVm9wM0tCVmJNRUZTdlR2dnhHT3F5ME55OTRpTzhxcTl2MXJlRkt4?=
 =?utf-8?B?ZHZ1d0V2eHFrcDRPMEVEclJBYit3bGZjeTE5eE5GTkhKM1oyY202Q2lITXJR?=
 =?utf-8?B?Ty9Zb042aElDVXJ6b3N3TVZhOEF6UmZZRlQ5T1N2eWYzcFZYWTdPSTdiekJV?=
 =?utf-8?Q?W5/kTow52Vtga5YnuJwtXb8jh?=
Content-ID: <FC5A597C928AEF448A2D3A696BC0F573@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: cisco.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f2ded47c-7682-475e-6b75-08dcef614007
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2024 10:40:14.4466
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: njYeNZVyH8NycK7Vw2tcTohALsv3g5MtcYRaj73JpK/iRJUEj0VfmrLW37ire5UKdQepHC1yBsqIEuqzYEqF3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7527
X-Outbound-SMTP-Client: 72.163.7.169, rcdn-opgw-5.cisco.com
X-Outbound-Node: rcdn-l-core-07.cisco.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_034027_011690_0768D2F2 
X-CRM114-Status: GOOD (  12.96  )
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

On 10/17/2024 4:58 PM, Vinod Koul wrote:
> On 08-10-24, 17:09, Bartosz Wawrzyniak wrote:
>> Fix the value of SIERRA_DEQ_OPENEYE_CTRL_PREG and add a definition for
>> SIERRA_DEQ_TAU_EPIOFFSET_MODE_PREG. This fixes the SGMII single link
>> register configuration.
> This does not apply for me on phy/fixes
>
> Can you please rebase and resend
>
Hi Vinod,
It seems that the V1 patch was already applied on the phy/fix branch 
(2d0f973).
This is okay, as in V2, I just removed the empty line from the commit 
message, which I think you also did when you applied V1.
So, V2 can be dropped.

--

Bartek

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
