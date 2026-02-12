Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4358EEDF057
	for <linux-phy@archiver.kernel.org>; Thu, 12 Feb 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EdXaKaojH5tQotZXjBKK+8bkTyPkLoYkXnSd+ObLXJM=; b=gWtQ0mrr4TqsR8MFw+CVRfjZSV
	3A0UksMUsDBh5i++y/Cgw53S1HxIYGSLVjarqiFApj4GzfyK5XqLZc7/6V6i+VxxaoVHyPGlyPgpH
	p3JtcdTmClfTw211M0mCBe4ZRh1Aedrlq2WcunrWkmwofkR46IwHQHeslZ7s1Ecvccmu40GH2D3Lf
	yp3Yqw6V7HM26TsC658GP5dTcUndcutRh3WWVIlukw6ErQ1OL8UoOBzephJc+jc6fm3M4vq3DDW0C
	QvfiFnWTiOId20W+qPlYdsXi3m1YDqTfQt7Ghw6k4Qwn0xppfia8A0tHGqq8QHFoqgaHlQ+6MHAfy
	MRa9Siqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqS5o-00000001l43-2GDV;
	Thu, 12 Feb 2026 08:30:32 +0000
Received: from mx08-0057a101.pphosted.com ([185.183.31.45])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqS5l-00000001l3Z-2aqM
	for linux-phy@lists.infradead.org;
	Thu, 12 Feb 2026 08:30:31 +0000
Received: from pps.filterd (m0214196.ppops.net [127.0.0.1])
	by mx07-0057a101.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61C5kRak3781351;
	Thu, 12 Feb 2026 09:30:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=westermo.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=270620241; bh=
	xVdA5RUvy7Kah+MIKaRWVk85q7I5Kqr2py/97NkVPg8=; b=PqqOnzd38E1bi02t
	eBkPAe4exNDUK1K/PjRnaDsi6cRnFcfZ0bQa6iEOokPiwpdlahZTPfVOMqvCOEZI
	zNvS/MpYsahQRYJHDR0V67wmC+y9aJBFwDbQ6tO1HuJA1UuDyL+DL28/ktxbXufL
	Gy00IwC1ZaVe0gPPSBRxA4NT4SzxncCsmaG8hOfWYbdEx9yKm7NOuHENs2gWrRBd
	7lP199FH/xmljVLBjmxKRul6PCSHidsrhS70cl73b6ennr0G7Dp9DtKeA6GsWmB4
	6cWJB5ni/g3JWiLChK4s8AM3dAmV9986/jk0LnYwOxxeU5ugkE6hjK6RqSZX2zmC
	tR7G6Q==
Received: from as8pr04cu009.outbound.protection.outlook.com (mail-westeuropeazon11021139.outbound.protection.outlook.com [52.101.70.139])
	by mx07-0057a101.pphosted.com (PPS) with ESMTPS id 4c6asvc9uu-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Thu, 12 Feb 2026 09:30:25 +0100 (CET)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hqUuc+iBfIHJStzE+/d1NQH5XVWEuXeRgKYiHWYjuUgVrccKsvZLrLIvEW8rSLI5zSz7zbCGXH5hVdFf0LzWq541duufiM1Bpi255UPaRopJPc8crpQaj5AVcR71LOxBVpgSy/D36LxBPaIdYkrBns9REd3tZfd2TqNO4IvSn0NNl6rLhhp54zVOSx+wHC8SVwFxYFvOyqW3OzIh7T/o6FTtgvQkHksiNoNMRgP8xLCBbOpHUSAWnqz5UjsRgp1uWhCUciCzEuVYEZHZ40su5mfn+Qim7UvrsNV68pP0xaD1nARlgeI4YfUn2vlFLqOVbOtX6IEYrI+gZ/nA3LSNMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xVdA5RUvy7Kah+MIKaRWVk85q7I5Kqr2py/97NkVPg8=;
 b=IcCTV6J/MmPtlne7wi7bh8WCr+6nNsjuhaEzjkQTN1dErliUTDgix94VhxFdtIflZ2Vz1FuOLJiEviHOW9eQ71GL+O5nRAInrznrZoZIpGpuuzUzjxmB4pzaqcwkVm+e9JimkN0h4sjXltLKMORAP2zAuoY+i7yi6B4Iqb1pDlKcwymLi+9tcYBgnihLAPXTrSIZ2TxRHOYL65H5O063lCT3ZSEcemFzyQEMPl9lGE0DGps21lYJBNUeo+SYZdv7RZ/R2GNsz9UnDAorIUGzGRMpieNbERzSVOl1HR5IjHChBUaV8ub+ipHfhbS2TwYs4vcTh687R7dc+JoUVNadHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=westermo.com; dmarc=pass action=none header.from=westermo.com;
 dkim=pass header.d=westermo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beijerelectronicsab.onmicrosoft.com;
 s=selector1-beijerelectronicsab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xVdA5RUvy7Kah+MIKaRWVk85q7I5Kqr2py/97NkVPg8=;
 b=RRPUaSiV6U+r7NscZqzzqARUIbXdtlhHqM4zoG2KU+s1PYYYEsFkFQexDlpV1n04Q0hrLTzxYNq99d6gKmBQwlx3kU5kxGu4pTf+xq+giK33vjUzOYicIeqSEP8NO/7wcarwOUtIOQd0dHO0+c/KQ9HBZf9vCnSSCeHfWErpK18=
Received: from DU0P192MB2856.EURP192.PROD.OUTLOOK.COM (2603:10a6:10:5a2::5) by
 DU2PPF8BD387DFB.EURP192.PROD.OUTLOOK.COM (2603:10a6:18:3::996) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.19; Thu, 12 Feb 2026 08:30:22 +0000
Received: from DU0P192MB2856.EURP192.PROD.OUTLOOK.COM
 ([fe80::665e:738f:4813:7ea0]) by DU0P192MB2856.EURP192.PROD.OUTLOOK.COM
 ([fe80::665e:738f:4813:7ea0%6]) with mapi id 15.20.9611.008; Thu, 12 Feb 2026
 08:30:22 +0000
Message-ID: <17191401-6ace-4896-a433-2cf9004ee80c@westermo.com>
Date: Thu, 12 Feb 2026 09:30:20 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: Lynx 10G SerDes Driver on my kernel
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: Sean Anderson <sean.anderson@seco.com>,
        "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
References: <20251202162919.ow53dn7c3x2lguqr@skbuf>
 <a1dc8a14-56f2-4082-8081-0e29e2dbe35c@westermo.com>
 <20251203122601.72cwwpsp6loqpkpj@skbuf>
 <4287097e-a906-438f-b3a1-33e374477367@westermo.com>
 <20251203180022.adhggfqgfj4wsoqi@skbuf>
 <2f74aaae-1dc1-4657-9436-1f445d28ad66@westermo.com>
 <20251204193415.d5zymxgziweiepgy@skbuf>
 <72afdc4f-3f6d-4f2e-b054-ff3f2f8d5851@westermo.com>
 <20251205124423.gddjli3jtqlvkrkv@skbuf>
 <1e508f4e-d9a7-4e06-8308-e2d67099e927@westermo.com>
 <20260208134211.3vsgebmvh7yhee5c@skbuf>
Content-Language: en-US
From: Tanjeff Moos <Tanjeff.Moos@westermo.com>
In-Reply-To: <20260208134211.3vsgebmvh7yhee5c@skbuf>
X-ClientProxiedBy: GV3PEPF00003681.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::3a1) To DU0P192MB2856.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:10:5a2::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0P192MB2856:EE_|DU2PPF8BD387DFB:EE_
X-MS-Office365-Filtering-Correlation-Id: 7ad3a85f-235a-43df-0fdb-08de6a10f6c6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VVpkbWJkNnAzRzFISS9Vd0JJYVYvMUt3TXFKZUgrRjJOMC9jc1ZVWTJwQVJH?=
 =?utf-8?B?N3dvY1VzTzhETXJNN1h5bTgxUUQ3cDJnRUQ5TEU3b3hGcDNEaEVKVFNMeXp5?=
 =?utf-8?B?eDQxaUNpMkpCdkE0VUlIcnBkSFB6d3BZMXJPN2tRWjFlell6NjRkVFBWTFl6?=
 =?utf-8?B?NVREVm96S0o5Ukpqb0phRHhPbnh4QXhORHdSQ2VEM3VFbHpTVWhFcGdUaU1K?=
 =?utf-8?B?L3J5eEF0TFlQR09IZDJQSjBnb00xdFFIMEJNZjRTaTN3eG5XS1JycnR0QnVu?=
 =?utf-8?B?T2RFTWtKUHQ1TkxqRmRudUd5WWhKQ3ZFRU50RDNWSDAwRStyNkIzRCtKR0E4?=
 =?utf-8?B?OVQvbjA4UXAxVCtNSHNuTkRnMEc1NWlMblpCM1hwTWdVaCtPNTI0STdQTjg3?=
 =?utf-8?B?b1YxQ3hOWTR1RXp0YnlvVDZBendrcDZNbm1laml1K21SQ3djc0RRMFVsMjRR?=
 =?utf-8?B?S3haUWErcUdBTm5pU2ppU21nSWRtcFdxblBuSFZ6Wm9WcE5sYmNOQzZ1WGlP?=
 =?utf-8?B?bjZwLzdaWGZFcTNhV0VDZi8zeE1TSEN2K2ljQnJvSzNHNE5lV0NlVGw5a2dJ?=
 =?utf-8?B?QlFRT0lEOGVHRDl5V3dwUVJkelZZbERjb3dLS1U4VG90a2sxT0N1Y09UT1B5?=
 =?utf-8?B?Q1Fsd1R3cERDcXk0ZXhHSUJBYklVZGQ4OXFSeWViYTNPUHU5K0NRclV3WDFq?=
 =?utf-8?B?UlNYZmYzeGhYRjJaZzFnVnY5SG5aVktYNldmOWZDbFNTRmZqbHliaUlBWHNH?=
 =?utf-8?B?TzZGcUt5QkUxSHNhVjRQaEt0cmxzZ04zSTZKbG5BaUlzQlZmR2tZRmtabURu?=
 =?utf-8?B?SzRVZEhtNlRxanNnbnhicWJUZDNLdUppbEEzZlhjNDFiVkZ3Mkt6a3pGclV1?=
 =?utf-8?B?bDRlQUdDbCt0dmZxYlFvY3Rncklqc0ZvYlZSNkkvb09maGZYWVhsUGNOMmh0?=
 =?utf-8?B?Nlh4NHlGT2xjVTBmalZYQytUTjZvRitTYjMzejM4NFIybkpsWWRSREdkMVdZ?=
 =?utf-8?B?dTB1VkMzL0J1K3BQVXA5WXRiS0FMTC9JSTNvYjhZM3NHc0pISGtmVkhSVDlI?=
 =?utf-8?B?RlQ0c2FrbjY4VEdMTFQ2VUpWcGlZNm9BRUJSTlo3THFUckFIWTZ4RkVNYm9m?=
 =?utf-8?B?SG9IdGYrN3U1VWYwWE83Z3Z4SkNzamVlTElyaTdzMTI2Rm0wdEgvaFJndG5I?=
 =?utf-8?B?S1FKMDVsbnpXTUEvNkxTbU11cHhhQ29hWDU3SUxKYUE3b2RBeXEycjdPV1FX?=
 =?utf-8?B?VmRRbEw5SkQ4VUJudjYzYlJsU0E0YzZyTmhTYk1vWEZYMnM1VHhDNDJZeUdT?=
 =?utf-8?B?SWZITmN1SWxNcU5oNFUwd1p3a1U5U1R0NFpwcUdBYll2U3J2M2tMckZ3NTNV?=
 =?utf-8?B?OTlldDZvRWZWOGNRaFB3T3pOTDRjVTJUc3d0V0xwUkF5NXlJQ0RLTER0VTEv?=
 =?utf-8?B?bnJiK3gyYnErUHNtci96RU1TT2p1R1Z1Q2JBUm55R2IzMktqK2dXakQ0cldH?=
 =?utf-8?B?VFd4R1ZYYUtzSG1RckRRSTlWSHhIc25qSk5BVUFDWEY2dzNzMElSMlFIWHhZ?=
 =?utf-8?B?WWgxV1RESkJhQkpwUW9LazFUMW5waTVybi9wbWd0YlgyYUZkeW9Na05FZTls?=
 =?utf-8?B?NVRTbzBMZ0Y0TW9VMFBlbm9xWU45dkdXZktuZU5Jd2JJYTAxRVcrNU50dk11?=
 =?utf-8?B?M1lzRjR4cFlDbENWS2FSampraVI3bG1uYkhiUHlPbWJPdmRsanBJSGE0c3R0?=
 =?utf-8?B?VEQyTXk2MkRKSzJBMngrcjlldXlRaE45NlpsUkRieEZlZDBtR2c4NU16YXpW?=
 =?utf-8?B?ZEFXeUdWbXpNWHViWmdMYUtkbWpMTHFMVXQzUVJkWjRYOFhwdTE1S2FnUm8z?=
 =?utf-8?B?YUpNVFRnbndtV0J5ZGFCRys4TmZUTTRYQlBRK2NucGoxVmM5UnJsSkFNcUs3?=
 =?utf-8?B?bXQyalM5RDlkVTVvc3ZISlB0RHZwWVJnaFlNVW9SVENIczhyd25oYTJoYmIv?=
 =?utf-8?B?MGhaN3JCUDBXcVpEUFZYOW5aalFiS1BneXNzUFZHODBLekhpR3Q4UzE3VFg3?=
 =?utf-8?B?NVZkSVB2K1V0UEFqeTl0SWNvOXVBYlBNVkt3b2Fjck1TZ2NvZTJLRkZxUGsw?=
 =?utf-8?Q?2j2ITgEDbTp7r4y74fKU8z6f7?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0P192MB2856.EURP192.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UFUvWlhmOFVtbTd2Qi9POHVGZ09hK3RFUEducFBSTjkra3o1bUJ1V2R1R1U2?=
 =?utf-8?B?eVlMdk1KM0IrN1pFQUcySGVSR3BqYmh5SE9ob1pDU2V0b2dWVHVTM294UmVm?=
 =?utf-8?B?N0kwaHY3bStWUitxajNadHJkTnRocmE5V2JpZm5yeTJuc1p6TmxVTFZLeXJ5?=
 =?utf-8?B?akM5N1RhK0s3NENic1I2T2laM0MyK1NjWUVZZ3pGQnV5aEdHcWl2ZWZ4NFNM?=
 =?utf-8?B?VkphRTk4ZU1wZUJGOEdDRW80bVZ1dGRLMkk5QUpjcXMvbm1nWEtDSU5lR1BL?=
 =?utf-8?B?MC95djBWV1BaWjFmL01LUVNFQWkrbi9kRTlSZmNsdmEyNDIzU3NCN3pEMVIr?=
 =?utf-8?B?blRnMWhDSTBDZ0N4WG5wSkdwL0dRdjJOY3dGWXdodmZYZ2Q4NElOZ0wwQTJ2?=
 =?utf-8?B?YXlHcFN6clJodGp1OE10QWs4NkdNQml4Skd3bGJ2U0JQMU1kTUZBcWlBL3lw?=
 =?utf-8?B?N2tFRHZZV1F0RGJqVnFGcTd0d0pBYjIyb1BmWDkwNVY3MVFNeE0xbm14MXhO?=
 =?utf-8?B?K25aUlJwbVluaVRMQW5lY0FUU05Xa3liWXQ0YU8yOUk1dmE2aTMrbGQ1Tzh0?=
 =?utf-8?B?anBTK1FMb0JiZXpuaUx5b2pBdVB0Zm9Xc1Rna0tTZVRlN0tGbjBYNFJXMlFr?=
 =?utf-8?B?MFdydm5peUd4cFY1WGpIVE5CUDZCU2FZUDJ0dU5ybWcxdTcxVVh1elBKT0hw?=
 =?utf-8?B?emp3RVltQmptU3k0ZlBhd0tCVHpxSkM4d25CcFZ1cXhORVJlUlE3dkg5d2Rz?=
 =?utf-8?B?SHIyWU1pTTd2SE1GV0ZjVDUzYUxyZDRzenQ2dDRNQkFaOXA3NUgyVXYrRHpt?=
 =?utf-8?B?U05YaGY2cWhZeEVNUlp5cVNFcmhEeVliMzJkRXEwV2h6eU5xY3hhUmlqNFNr?=
 =?utf-8?B?THlmVG9OYUg2Q3hhWHZESXlCMTJMVkdMUldLMUF2VlMzNlZ3VkhGVWZyOGJG?=
 =?utf-8?B?L081WFVlUDkvZDZ6QlZoT2I5MFlqTkYvZ0pxM1ROVWxKcHQ2YnB0RWNKUEpH?=
 =?utf-8?B?WXlqWTc5Q3M2RUR5VmVhVmlyS1Y2bnhOdEZ6a2QvRWdoNi9ncmx5MHQvZFFi?=
 =?utf-8?B?QmlnaE5PMVlBUFRkbldEYkE1QmdQUiswTmdhTGFlNkRhQnFpSGFvRDdNVEFM?=
 =?utf-8?B?c3RNTFg1KzB2ai9OSGNIdkswbFkySllDRE1hQWxGTXc4RjBGVnlaUGFvRlBE?=
 =?utf-8?B?ZDJSTDN6SVd2M0FBZTZBNHdLU21mNjhyZzZIcytZUTY0ckpwbk1yeWxBaEx6?=
 =?utf-8?B?THdzQXJlY016YmxZa1g2MFNycVRTVGRMdkFFWDd0Z1hTVDg4TzJrd1p3bXVK?=
 =?utf-8?B?UjVWSXVhN3hVc2xqd3ZGVm85ZnlkVFNoaE1VeUNqVmlqdW53aG9lRzVDczZJ?=
 =?utf-8?B?ZEhXd1RiVG1mZFR5SUJ6WEdFaWl2ejVMN3o1WVZPaVZLVW1TK3JNVTZLaFFR?=
 =?utf-8?B?dFJmaWRiUlZEOU9LSk9LSHFPcFh3QzA4WjJMOVpvVWVXaDh0U1ZXVVBtdWo2?=
 =?utf-8?B?TXY0N3NMVDd5TDFTcFFQN29oeHVTZWNGbEU1ODc2bDJ4MzZzWDFIaEEvc2dB?=
 =?utf-8?B?d1lIb0xscjlXVDlraHdIUlZzOUlwSHZVZUpyNVF6eWg1aHBBT01MRUlSS3lu?=
 =?utf-8?B?NGdlQnVqSmNYZVlqY0J6SURoTGg4YitKYlROVHJ1a0dWdGl4ck8vUjBGbEVX?=
 =?utf-8?B?UUFxVUJNNjZzNjk4SWdjV1ltVE9pdXh2enJPVjNTa0pyVjVlWEowSElIb2ZR?=
 =?utf-8?B?QXdJbVZFRjF6Z09VZkVLemRkVEhST0NNWmRPVEVuUDduMVc4Uk1ERTZpeXZw?=
 =?utf-8?B?a0RsT2t6czJnaXRRdjcxS3NyNlBTTmhLdWJONFZPV0pJbTJvOS9udzhlMTVV?=
 =?utf-8?B?ZHA3eHpzRGNKUkxnR2FGUHdOUW4zYmZTUmV3Sm1ETGwrd1dDRXlJVHJCdjBQ?=
 =?utf-8?B?OHNjNTV2dGtibjdabEZ1dFBsSTZUZktxdk43Q1ZSL3E1SzBqU0VXa1Vka2lM?=
 =?utf-8?B?bHFMMUgwWTFmOUhqQm0rYWZnaGxGcCs4VFdHNHFBaW9XNW43dGd1eEUxWktj?=
 =?utf-8?B?dTNnWDVoTEFCbEJoUDFSS2V6YjR5T1NlSzVJZDV0Q3hWZ0Q2eDFab2lKTyta?=
 =?utf-8?B?MG9nL2NjSXlJUHhZbGtIMmh2ZnV0b3ljWVBoYUpvbUxPUjFBMWJSM28xMkF5?=
 =?utf-8?B?d3JtdkpwZ3U2ZE53K0hpYXBoRGlFNERCVU02d0VlMDA1VW5keXNYay9hL28z?=
 =?utf-8?B?UFNGd2k3RkN4SXY2M2FtMERJN21rK1QwQW1VbWJhTFBYVXZjWjRCWk9xWVRP?=
 =?utf-8?B?SHIwS2k4VWRnSlN4ZHA2Rk00MS92d1FjWVQyMlYvNnZUVUY2b25UZz09?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: hYZpotmwa+t1L9mGaJv7QUaRbV4n1S1xd6B4xxCiAa5pk8ka1tiHhYYU6gCseWAbsDEEHUugby5z0PJpng2ZRd2qV+riYLoJJznQmldU2hJtdX9LYMd3z75ifacw4PGM+2Dr21AOsMy369umEEoewOridJdFAbAdM8kLTq91RW4Vm1UbY76ksXWBP5Pb3eticSHcg21SkIBt4iQpKBlMlu9k1lZhgHkAmwju6gMSp+CyWdUTiLkX9Am6WYwen6uS3S2BIDLuz6CPewSjE4i3KBgb9sm609LakOppISSO5vjDi6hIxxg2PZxPK8+rsXlbftkNqSU3nyzsmu5G3JClOBmXp+NTL/4Wb0mqAw3jbDJLoSZE7qBUdWlnFuzSZb1SWTDIjgNqouM2bNa2YnhJas+ra4VPosDxQfdiEAwbdnc0ZR/YslOBhPaLlyh9DvouS8+ez1mXaqxfbR5Hau/h4CaZwyjbR8Yd1evM07AMb91A6udAPA0vkyxJvPuKI9LT5oBSMiwVvNfx3l4pX3ShB2ZU7mhjmk0nec/UyNwxeHr7byMcDr9aCg9wBrSNRsUxZ8VUMP8VZDI+deSiVsw5cz36YdMDUizq5g12C+Iup/L27fdYvxRH1hkdX7H9RbuO
X-OriginatorOrg: westermo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ad3a85f-235a-43df-0fdb-08de6a10f6c6
X-MS-Exchange-CrossTenant-AuthSource: DU0P192MB2856.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2026 08:30:22.6484
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4b2e9b91-de77-4ca7-8130-c80faee67059
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X6Fsvjop144v0GIM/slGWdVXXFcyZn5bb33FwIkoGJDA/+0vFC65gcltxee1qfP6IeGC0FEtwq+wdAAN+piSgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PPF8BD387DFB
X-MS-Exchange-CrossPremises-AuthSource: DU0P192MB2856.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossPremises-AuthAs: Internal
X-MS-Exchange-CrossPremises-AuthMechanism: 14
X-MS-Exchange-CrossPremises-Mapi-Admin-Submission: 
X-MS-Exchange-CrossPremises-MessageSource: StoreDriver
X-MS-Exchange-CrossPremises-BCC: 
X-MS-Exchange-CrossPremises-OriginalClientIPAddress: 104.151.95.196
X-MS-Exchange-CrossPremises-TransportTrafficType: Email
X-MS-Exchange-CrossPremises-Antispam-ScanContext: DIR:Originating;SFV:NSPM;SKIP:0;
X-MS-Exchange-CrossPremises-SCL: 1
X-MS-Exchange-CrossPremises-Processed-By-Journaling: Journal Agent
X-OrganizationHeadersPreserved: DU2PPF8BD387DFB.EURP192.PROD.OUTLOOK.COM
X-Proofpoint-GUID: 6PEz2uE43J6QEt5IV8rs39oKYQI_rxWM
X-Proofpoint-ORIG-GUID: 6PEz2uE43J6QEt5IV8rs39oKYQI_rxWM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDA2MiBTYWx0ZWRfX6p0MDQSEXvBr
 TOlmAnaA2/kdEJMdchgutk+S6KSYK5WqntXPSlRrU1W9wKbsIKrpUpoEFsIRxDfSuxfamNhjL/o
 2jbsglyFU0NecND3bjEjzLHrOgZFoolxVXA7pQbNwl94noNjnB+6et08ugV7ceWFmn3vAMouEUK
 /eHeWI6mIei+jMiUQWW4U9R9X1R/7lzvPcOkuy9c4UyOi7GXWdjsYWTTG8jFm0djA5RyhZ5mjvB
 1VLdEzlDDxLEoii8Zoi4vvDXhM4ljtusXHdi/TK+Ij2b7uFKcAJGHYcXNSP+Adc7MqJwOiUgjWG
 O2MrQONbUWh7uvSCuzEtJb7Da0IzjL/Fovp/4JYK53WDFpq91u86oR4cm1ah4GosAx3DKG+G9Al
 9kGro5oXQT0gIfJycIWNIPPgMiDn9W8fltr6XFUQqzSR64y7lds+LfIbOb1L0mWVvuhumsY7rzD
 GvS1Grg/NPG7t61ZJzg==
X-Authority-Analysis: v=2.4 cv=J+inLQnS c=1 sm=1 tr=0 ts=698d8fa1 cx=c_pps
 a=K3VCbZqGYQZPD/uH5KJ2Qw==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=8gLI3H-aZtYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=IpzHyhw8AAAA:20 a=wi5R4RQz1JXJUGOMg4QA:9 a=QEXdDO2ut3YA:10
 a=zZCYzV9kfG8A:10 a=bA3UWDv6hWIuX7UZL3qL:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_003029_959086_C1ECE384 
X-CRM114-Status: UNSURE (   6.79  )
X-CRM114-Notice: Please train this message.
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Am 08.02.26 um 14:42 schrieb Vladimir Oltean:
> In LF I've moved the phy_init()
> https://github.com/nxp-qoriq/linux/blob/lf-6.12.y/drivers/net/pcs/pcs-lynx.c#L563
> and phy_power_on()
> https://github.com/nxp-qoriq/linux/blob/lf-6.12.y/drivers/net/pcs/pcs-lynx.c#L435
> to the Lynx PCS driver to simplify MAC drivers a little bit, since they
> all have to go through the same steps (the Lynx PCS is present in dpaa1,
> dpaa2, enetc, felix switch).
Found it, thanks. I missed this code while porting.

Meanwhile I can confirm that all speeds work now, from 100M to 10G. The 
lynx-10g driver switches between sgmii and 10-BaseR on my "fast" 
devices. On my "slow" devices it properly switches between sgmii and 
2500-BaseX. All works well, thank you for your extensive support on that!

Kind regards, Tanjeff


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
