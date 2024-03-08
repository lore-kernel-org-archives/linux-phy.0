Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7C6EC54E4A
	for <linux-phy@archiver.kernel.org>; Fri,  8 Mar 2024 09:01:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MrBl4+FUNY6oj0OI5AthnxEqpiSWqnk7d3nxNZew3Qg=; b=uGDcs/ViCvR/jAFu2gWIIdrUEW
	/Rh2lkMC6lTFqKO1zox/1Fwr1Zx9J58+Ylw2eW2FWDU9erda1uLSg3BfOlFvafmB0HDIUJDrnGHq+
	Wr61xay6YsiZQ07ah7TV4BNdabw6kmh+7F2aLhCcWWlPE5Pq/rI3lqdPPG1vTI2GqqHa9fAIoIv5z
	s9i0rLNETGqV5GpWiOkQ+IDyqL7Dl3pgud/aWt4nN0Qe3EvSLbnijakHOZD7zlWzK+Q31nbLnopUa
	toHf75uoVc7yvybdBAQOiuyqJ34+PqQbvcSJ4MJKUJmkeYNFFoE1FSWr+O/etPMD/OXaGjuhw4Bt8
	WJZyDfeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riW6r-00000008Tpt-0SOW;
	Fri, 08 Mar 2024 09:01:45 +0000
Received: from mail-bn8nam11on20600.outbound.protection.outlook.com ([2a01:111:f403:2414::600] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riW6n-00000008To2-19V7;
	Fri, 08 Mar 2024 09:01:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GFVd/HzeR+/XHB+P4Ppt3drYSTKLs7/Gq/T+cHqH6CKSGwTY6XPCU6b+wnplWwlhLNs+tdrfT563U0W7N6eChKZmgezgOK3WMowkKr4nSfVNQbAtBu4reEQkKoVvN86b16tzokxiPq7N9n1z0Wey8GF3th/xsJDnFxiJ8AzmXe4LmQ7751bWqZ4GPFi3JxZcfd5C6QYMgLosqwZ5uiXPEOa0jgz8bCLpQMRYKbOc4mGRLOpNvG63qaUQ4x0Jj8pS6uWpGvTzMxyMZdlG3uVPlmTrH0duz49qZSkP+m4k1TI017KoMCJx51caN0Ij5EG0D4KtrwzjzH0fmV2ZhmgeQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OjW74Z3zLsbkMTuA+lXX8g9s6pKxxeu5qjvwCrJ0BOs=;
 b=Ufg1sXETqoTJaOW4wrPrJE4uUIiSzTyD8ku7emqPkg5fb/vhKir2VMvSAbgSEuDFdEVlj7WAlK6xscy6VhlZdmfOAVKdX9CAr9dzsDhQhyRfP+WG416Wk4YmrEscy4mG7Bj9RVqRbW/LtlwIMCAMhED1Bm9zR7GsAJMTNOolb39Mv94PhdsljatWP2PtG2E/sFMOzU506BZzs6b0YVAu27z1mhWm7qxumJZtJilaGNMM9tBcKBzGAVVwbsUFkmIzegF6OxcXA21ID2tckDosj8DJghs/V4LkBesU4XbQLn2k7NpS51SJlLFtc0UJUKu1zdoRgDx7XhI+cN2qG9FYTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OjW74Z3zLsbkMTuA+lXX8g9s6pKxxeu5qjvwCrJ0BOs=;
 b=lIBNDMs57y6UIQbQUOJtM4Sj9e2yCDRiqEMJ9fGdfBHjwaSsUCPVm1VByyNvB9NnIGL24MyVsIe1+wvFHFJnqbiB64j1xVIq1azBRLQ9NtYiRNnGj3ymhYiCOL57hVE7msSUBaPDFV1lN0Ay7G5nCt2XiaGschZn4vQ/eruA5aE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from SJ2PR12MB8109.namprd12.prod.outlook.com (2603:10b6:a03:4f5::8)
 by IA1PR12MB7614.namprd12.prod.outlook.com (2603:10b6:208:429::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.24; Fri, 8 Mar
 2024 09:01:36 +0000
Received: from SJ2PR12MB8109.namprd12.prod.outlook.com
 ([fe80::6622:ec76:9367:3907]) by SJ2PR12MB8109.namprd12.prod.outlook.com
 ([fe80::6622:ec76:9367:3907%2]) with mapi id 15.20.7362.024; Fri, 8 Mar 2024
 09:01:36 +0000
Message-ID: <efd45d3a-9f8d-4a37-af80-3ed2392cbc7d@amd.com>
Date: Fri, 8 Mar 2024 10:01:23 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: xilinx: Convert to platform remove callback
 returning void
Content-Language: en-US
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de
References: <57a3338a1cec683ac84d48e00dbf197e15ee5481.1709886922.git.u.kleine-koenig@pengutronix.de>
From: Michal Simek <michal.simek@amd.com>
Autocrypt: addr=michal.simek@amd.com; keydata=
 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
 3i3l5DA=
In-Reply-To: <57a3338a1cec683ac84d48e00dbf197e15ee5481.1709886922.git.u.kleine-koenig@pengutronix.de>
X-ClientProxiedBy: VE1PR03CA0031.eurprd03.prod.outlook.com
 (2603:10a6:803:118::20) To SJ2PR12MB8109.namprd12.prod.outlook.com
 (2603:10b6:a03:4f5::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ2PR12MB8109:EE_|IA1PR12MB7614:EE_
X-MS-Office365-Filtering-Correlation-Id: c6b9531e-84b5-4bea-9dea-08dc3f4e5bcf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 54ZKytzQDAjIs0H4dhgPQoyI7BiGfra1jAhdUgjzNbcCQCzytDhL1lUct/PvbmKRRFJcemvzm1BVPoGN15/RJQoe+1ALmPa/v+5Y07iTAaDO/4JXbywyD4AFDYOQ7LKzHiOV0+78tnk09esQJLtJtWHYOKHLDpQnmsCswNexX0R3QHyhtE4kWxEtJ8e+CqdFUQ0iwuSL3r69W/FrPVa7M/TlxXtfaTTRmqOv0QkQYs9DjAkzlQ/pMKbNQRfCT/zCAdHIGJEneBrdG6bxRMRn8MIlXA60w5SIa076w1gauwY0xiHlndtyHmBfLrVRm7ORLwCDRDrIRh/CKWZEEwDnV2yh3O/lD2NE5SqJPttmO9+quSf8tlM2/oDxm2iWwf8L+KUQhDDTkKRSHclnRhzZ5QmJY/CC+LM6iALfBtaPeUpz6Cokd3FOVKYmF3jHjGR4cjuy6WbFoDj5J2fqpmNHQOcBiI5vc82FStbVnJ+pRraI9UxM+VfzY6wrE8p16PdJN2lZuAe3Ttjb8oIIcCDDCEWvRtWNvkUjxQgZlcROrSfGwLSH1ohSlUvgx+JCdN8KZajyjAf5wBGnWYjxr69CMtoGieksSOZIgYy4PPz9mzprAS2TViM0aUznc9rtAAOKscHb57JVaU/Qjp75xADC25YLwONv9si9hjkE3bhJIMw=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ2PR12MB8109.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WG5oeitYbVM1WU5FQkF1VUlIODg3eGxNN3l2NEx6NVIxUG1lb1lxdExCUmhn?=
 =?utf-8?B?Y3lLUlAvVyttL0pKNEtrQmtCSTlwMCtMWmR5ODBOT3VXMytEdHJuWXdBcVhs?=
 =?utf-8?B?RkU2TGFTQy96SXVsK2RaSmVEQVJUUDlkaWhQMzZDSG1DbjFIRCtSZ3JFQ3Bk?=
 =?utf-8?B?SStDaEN2TUI4ZWU3MXpMK2FwN2h5UWNhLzhDNzVLYjM2OTNCVkZSdkZKZmhK?=
 =?utf-8?B?cEVHMUtJRWVUZktFUU9LTFdmRitOVkxWSXFVWEdNMXFZSFYxNHdmTzY5ZnVT?=
 =?utf-8?B?T2NyUHZGQ0ZSa0tJN044QzlzK2x2M2RobVpPMzNoZWhjTEFCUnRhWXZqbXJ0?=
 =?utf-8?B?ZG1hb1ZBZjJvbGVaS0Q1dldSc3J0KzBnTjhiVzg1RTR2dnk5ellrTTZUNnRF?=
 =?utf-8?B?azRKaWhneFBlc2h5eGRrdmo1b3FXRXd1OE15Z0h6bVlUbzJwL1FRdWwweVlN?=
 =?utf-8?B?MjFnamZaN2I4UXRvT2d4bm5HTjQzbHZPM3c0OXExSUJLd1dsWVF5a0l3TkVu?=
 =?utf-8?B?SHUrdDl5UG9SR1hFaDdZUVNxdlFHVHEyRldRaCtJVTNkSXd6Y2NyRXlYSTUy?=
 =?utf-8?B?dzNGWXdlUmdpM3RGV2RSK3NyZ2lycGRtdjNSVGlSb1BxQXA5RUkwRFR0NGRo?=
 =?utf-8?B?S1ZCblh6ZkE0RisvS0xGdVl2YjljVDdEalFjRHU0QXRFQXRSdWFDeFBFa09N?=
 =?utf-8?B?NXVoZEVGL2hHT0NoTFBhTVFVaXZoaXZrQ0ZtTEtqbkErN3QxWVZLQkZDaDVT?=
 =?utf-8?B?WGV2cDY2ZUNMYTdka0FlRmZycjNhdlpTdW5GTTdLSDVibGZWclFYejhYL1p4?=
 =?utf-8?B?b1paMi9MSDhuS2VGN2t1V0hLcHB5Qk9jS2c5U0tpeEFiZitydFFSYmpBN0NU?=
 =?utf-8?B?KzZpQVFmRExoSjlqYXFMcmo0aWpJVXRnaW9mcWc4WXk3ZG43MklBU0VJc0lQ?=
 =?utf-8?B?MEdoSmZWYVNZNnJjYTZpSEo2WW9ORXdqWlIwTUNUaWZEM2k4RXRybGxMMTJm?=
 =?utf-8?B?M3VpZ2c5WG55UkQyWXdtckpvUFQrTHJ5OE9nQ1BEUitTKzZTbXp1OS9JcVpS?=
 =?utf-8?B?ajRObC9wVXRoRGdMSXBEbmhGYjAwNTFzSjNBUlNuMHpHRzBsM1FGMTBnNWli?=
 =?utf-8?B?cGFoaExZbEtXcDV1SWtBVTVwL01jWUxwamgvQUdwck00V0VCZGx4VkdPd2p4?=
 =?utf-8?B?Ti9VamNXM3RyWDlWWkVQMy9ZRFVqcmtaTWtDVk8zVEllMCtPcVl0Yzg5eU83?=
 =?utf-8?B?QkFpVm5TczFoelZtRFpZQndtalg2VG1lMGJjeU9jbGRxb3VJcTNXQUNoR1ha?=
 =?utf-8?B?OFAzWVF0SW5xY095NHd3RytaTnA2UllMWlUvTHNXaWtCNGFqbXVUWFJ6cGFE?=
 =?utf-8?B?eUhLb3JJM3B4eWJjVHhJcDlpb0JkT2FYTXFnMGxRdDNCalZtMXBWaHVHWVUx?=
 =?utf-8?B?S1lBSSt6bzZUaDFLODI3M0tjSURVUmxUYVlUUXJDQmlRaEdLV3RhUFZVOEJn?=
 =?utf-8?B?aFFLTTZOUWJXMis1RHFUOG5RQ0kwSXR5VVNhODFUZmtGTVl5Snh3V3FQdEx3?=
 =?utf-8?B?REQ4ZkdGa1puaHRMQWQ0d0VzR24rTXVqb3NyVHNzcStFKzJyQzcwU3dseVE1?=
 =?utf-8?B?TXlLcWRLdElGQUp3VGtGeTl5NUtRazNTWUtQNnpEL0c0WVRuV0ZLT3lkMGhF?=
 =?utf-8?B?THVSckVoRUZwais1RTdtbFoyNEUzRm9PY1hZOXg2UWRpWEw4L3ZxL3FkRUJH?=
 =?utf-8?B?Undud2t4T3hqaVUzZ0VVMXhSei9pV0hsYitzN09UNDEwQVQzOS81ZGdvSXVr?=
 =?utf-8?B?eU9pQTdSQ1d0UnVtTExlNjRqUi9TUHJQRFQxTkllelJRdWtJaFUyaEh6VGVk?=
 =?utf-8?B?SVljcmdBQjZjdXZQR0Q4WXVoaTQxZDAvVDJ2NWljSncwNjVnZGk3UXZrN1k0?=
 =?utf-8?B?VXNlbE9tMEdEclZkNHNJdmxVUWxCaFRzVTZkSmNYWksvMlk2d0M4bHhsczRW?=
 =?utf-8?B?MWhLa3BNWFRLOWhqTis3a2FIbXQzMlBSc1lmMHFraTg4Q3NBejA4WmswM0R4?=
 =?utf-8?B?SWEwM3B3eGV4bG52QUxlNTRnUHU4Z0dpcEhZZUV4VGtqMCs5QXNXZC9xcnBY?=
 =?utf-8?Q?3FTxm0bOBe/tKAusJ2yLQc36D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c6b9531e-84b5-4bea-9dea-08dc3f4e5bcf
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR12MB8109.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2024 09:01:36.2746
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gC4A5NGxiHAgb62k6FGb2Vafq7AfMN+h43G5Deb3US67UBcCJBPE2++U0v/pYTQH
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB7614
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_010141_384627_B84126E1 
X-CRM114-Status: GOOD (  23.13  )
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

CgpPbiAzLzgvMjQgMDk6NTEsIFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOgo+IFRoZSAucmVtb3Zl
KCkgY2FsbGJhY2sgZm9yIGEgcGxhdGZvcm0gZHJpdmVyIHJldHVybnMgYW4gaW50IHdoaWNoIG1h
a2VzCj4gbWFueSBkcml2ZXIgYXV0aG9ycyB3cm9uZ2x5IGFzc3VtZSBpdCdzIHBvc3NpYmxlIHRv
IGRvIGVycm9yIGhhbmRsaW5nIGJ5Cj4gcmV0dXJuaW5nIGFuIGVycm9yIGNvZGUuIEhvd2V2ZXIg
dGhlIHZhbHVlIHJldHVybmVkIGlzIGlnbm9yZWQgKGFwYXJ0Cj4gZnJvbSBlbWl0dGluZyBhIHdh
cm5pbmcpIGFuZCB0aGlzIHR5cGljYWxseSByZXN1bHRzIGluIHJlc291cmNlIGxlYWtzLgo+IAo+
IFRvIGltcHJvdmUgaGVyZSB0aGVyZSBpcyBhIHF1ZXN0IHRvIG1ha2UgdGhlIHJlbW92ZSBjYWxs
YmFjayByZXR1cm4KPiB2b2lkLiBJbiB0aGUgZmlyc3Qgc3RlcCBvZiB0aGlzIHF1ZXN0IGFsbCBk
cml2ZXJzIGFyZSBjb252ZXJ0ZWQgdG8KPiAucmVtb3ZlX25ldygpLCB3aGljaCBhbHJlYWR5IHJl
dHVybnMgdm9pZC4gRXZlbnR1YWxseSBhZnRlciBhbGwgZHJpdmVycwo+IGFyZSBjb252ZXJ0ZWQs
IC5yZW1vdmVfbmV3KCkgd2lsbCBiZSByZW5hbWVkIHRvIC5yZW1vdmUoKS4KPiAKPiBUcml2aWFs
bHkgY29udmVydCB0aGlzIGRyaXZlciBmcm9tIGFsd2F5cyByZXR1cm5pbmcgemVybyBpbiB0aGUg
cmVtb3ZlCj4gY2FsbGJhY2sgdG8gdGhlIHZvaWQgcmV0dXJuaW5nIHZhcmlhbnQuCj4gCj4gU2ln
bmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25p
eC5kZT4KPiAtLS0KPiAgIGRyaXZlcnMvcGh5L3hpbGlueC9waHktenlucW1wLmMgfCA2ICsrLS0t
LQo+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkveGlsaW54L3BoeS16eW5xbXAuYyBiL2RyaXZlcnMv
cGh5L3hpbGlueC9waHktenlucW1wLmMKPiBpbmRleCBmNzJjNTI1N2Q3MTIuLmRjODMxOWJkYTQz
ZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS94aWxpbngvcGh5LXp5bnFtcC5jCj4gKysrIGIv
ZHJpdmVycy9waHkveGlsaW54L3BoeS16eW5xbXAuYwo+IEBAIC05OTUsMTUgKzk5NSwxMyBAQCBz
dGF0aWMgaW50IHhwc2d0cl9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAg
CXJldHVybiAwOwo+ICAgfQo+ICAgCj4gLXN0YXRpYyBpbnQgeHBzZ3RyX3JlbW92ZShzdHJ1Y3Qg
cGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICtzdGF0aWMgdm9pZCB4cHNndHJfcmVtb3ZlKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gICB7Cj4gICAJc3RydWN0IHhwc2d0cl9kZXYgKmd0
cl9kZXYgPSBwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2KTsKPiAgIAo+ICAgCXBtX3J1bnRpbWVf
ZGlzYWJsZShndHJfZGV2LT5kZXYpOwo+ICAgCXBtX3J1bnRpbWVfcHV0X25vaWRsZShndHJfZGV2
LT5kZXYpOwo+ICAgCXBtX3J1bnRpbWVfc2V0X3N1c3BlbmRlZChndHJfZGV2LT5kZXYpOwo+IC0K
PiAtCXJldHVybiAwOwo+ICAgfQo+ICAgCj4gICBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2Rldmlj
ZV9pZCB4cHNndHJfb2ZfbWF0Y2hbXSA9IHsKPiBAQCAtMTAxNSw3ICsxMDEzLDcgQEAgTU9EVUxF
X0RFVklDRV9UQUJMRShvZiwgeHBzZ3RyX29mX21hdGNoKTsKPiAgIAo+ICAgc3RhdGljIHN0cnVj
dCBwbGF0Zm9ybV9kcml2ZXIgeHBzZ3RyX2RyaXZlciA9IHsKPiAgIAkucHJvYmUgPSB4cHNndHJf
cHJvYmUsCj4gLQkucmVtb3ZlCT0geHBzZ3RyX3JlbW92ZSwKPiArCS5yZW1vdmVfbmV3ID0geHBz
Z3RyX3JlbW92ZSwKPiAgIAkuZHJpdmVyID0gewo+ICAgCQkubmFtZSA9ICJ4aWxpbngtcHNndHIi
LAo+ICAgCQkub2ZfbWF0Y2hfdGFibGUJPSB4cHNndHJfb2ZfbWF0Y2gsCj4gCj4gYmFzZS1jb21t
aXQ6IDhmZmM4YjFiYmQ1MDVlMjdlMmM4NDM5ZDMyNmI2MDU5YzkwNmM5ZGQKCkFja2VkLWJ5OiBN
aWNoYWwgU2ltZWsgPG1pY2hhbC5zaW1la0BhbWQuY29tPgoKVGhhbmtzLApNaWNoYWwKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
