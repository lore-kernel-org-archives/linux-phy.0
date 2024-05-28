Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE4C8C25B74
	for <linux-phy@archiver.kernel.org>; Tue, 28 May 2024 01:33:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CiJCJ+u2SEhNlx36yM+VLfKhLzVV9+8lDmdJo4zlKHg=; b=tKP/32WX82CTBn
	aUw/0fZdrBIkO5CeiHrBgjDYb6f4qIdi8tokeF2JxkxsGFt/0cJd38+E7XKZGl58zifMCY3ChtoML
	rwTdzRjAuTjWRwQO1QQjvDYUGUO1+JjSDnWKZCXNyljCOp0ZPLTS3Lo2QzqNqwW+YWhvzjgNDRa2O
	tpF7TBM+93KOFOIenrtHJrZ7DyA27R5GHteUoucLji9UlyiPp+HrIXTtF0TNPm2LRhB9GTKTuq426
	wKb4Actt2RtvLqys1I/o3gpKkjF+GYuYSvoiQMWH6HC1ARPzyNdufq8ZmRbltYWhRDi4S0ySozGR0
	khyTuprnC2uzhbQz+yaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBliB-0000000GmYx-3dU5;
	Tue, 28 May 2024 01:33:11 +0000
Received: from mail-bjschn02on20701.outbound.protection.partner.outlook.cn ([2406:e500:4440:2::701] helo=CHN02-BJS-obe.outbound.protection.partner.outlook.cn)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBli8-0000000GmYU-0qc0
	for linux-phy@lists.infradead.org;
	Tue, 28 May 2024 01:33:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Kz7ZXsMAYRSU/MitAQ9gzyblRVGOfEuqeBMD32N0q4F5Eei1KlHoZF4+vhGmkZtRb3VUtRf9mI6DA4rsvpW/K+2i9EuTb2GFHQ033ztLAvsaeqkyFwbhRHKh0We1t4oTyejZKjeFu+qE6DLsgwqQd+YuN95kCPiaa79AgQ32yijo4jt0IfMmyt/33Q5QFdxB72Ykw00HKLSj5rB6Kzo5Kh+tNhul2W77ZFqEPPeDQFUatOJcdveimwbrvgckPDNT0zLfKPVpCXQjHyEKwt6/AtrGbab99SDeYMFIdQlS50CUUPEwlL/Cs51LaZm+ehAd3dwbP6NGhJy1SIBN0S8eWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KIMhgjZLwRzYs+9OBrULuqUBlLmu724YAkhdXayCyAU=;
 b=dS7MyGgRNCE2lnfatuXTlPkqE3FDvwMKf61x90n7giQ/8EvDPXmWs6fD4QZhDcXk0oraXiElDEawpChrMgVSqjKI5WE2u6j4LCckRcIOuWbuktlqbHuBvqfxrmYtmGYEengDsmKuz43ck67XVnKXG5Mrk972gW92uRmf9DRwCrNQyjsaA+IVJHpyPdx7VZSlJkkskvhKzV2R7ScH1HgCQ/kF63/sozFNj5hBccqRdWmQzHzeg8JmqaPgzUvAQ8g6AhZhOzyPboREVV+V4LcGI6xk3SRNk0XlsM8qfi72jCkkk63H/vuUoaqUaVoAx08mYsvzc1Zgr7wInjN2AMT1oA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=starfivetech.com; dmarc=pass action=none
 header.from=starfivetech.com; dkim=pass header.d=starfivetech.com; arc=none
Received: from SHXPR01MB0671.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c311:25::10) by SHXPR01MB0782.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c311:25::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.42; Tue, 28 May
 2024 01:32:50 +0000
Received: from SHXPR01MB0671.CHNPR01.prod.partner.outlook.cn
 ([fe80::418f:9f1c:7cfc:d62]) by SHXPR01MB0671.CHNPR01.prod.partner.outlook.cn
 ([fe80::418f:9f1c:7cfc:d62%4]) with mapi id 15.20.7472.044; Tue, 28 May 2024
 01:32:50 +0000
From: Changhuang Liang <changhuang.liang@starfivetech.com>
To: "linux@treblig.org" <linux@treblig.org>, Jack Zhu
	<jack.zhu@starfivetech.com>, "vkoul@kernel.org" <vkoul@kernel.org>
CC: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: =?gb2312?B?u9i4tDogW1BBVENIXSBwaHk6IHN0YXJmaXZlOiByZW1vdmUgdW51c2VkIHN0?=
 =?gb2312?Q?ruct_'regval'?=
Thread-Topic: [PATCH] phy: starfive: remove unused struct 'regval'
Thread-Index: AQHasHjPwuIIMyXX2Ee9tZUl3vTcP7Gr3FuA
Date: Tue, 28 May 2024 01:32:50 +0000
Message-ID: <SHXPR01MB0671A9DCC71EF7E39172A7B3F2F12@SHXPR01MB0671.CHNPR01.prod.partner.outlook.cn>
References: <20240527205937.165325-1-linux@treblig.org>
In-Reply-To: <20240527205937.165325-1-linux@treblig.org>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=starfivetech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SHXPR01MB0671:EE_|SHXPR01MB0782:EE_
x-ms-office365-filtering-correlation-id: 16c691f4-ccca-4e39-0aa2-08dc7eb6168b
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;ARA:13230031|1800799015|366007|41320700004|38070700009;
x-microsoft-antispam-message-info: svry0Bj1Bv5y6IKvfv08W4aR193st2t9JspM5eAGDnw28o6szZt3V+HqA9pFK0hMelxA/qZ/NFpMBQBD2tj0Sxsu7v+3P0T6DWWr7DSew69sqHW4098KlRssuCdvs2is55t1q9BSgUwDT1AcuzHkTQnvi12CBaCxnh4Z4QYj6opqeHqGSuN13Ctx3NSm0kl1H9kAbf5EkWy3uVPHUXnpYSHPcK6wsrPrWBpir7RAAaDjN+50Z9Sw3rQKVqsNFhWymMabD9Dk5YL95Dnz5YShtdpIVuzet3vH9WrfOdV9eArjxH6RECCN5HOoHDNdDEwQ+nE2IinWsjpTQ4K4RP5G3SL5Q99+8kCbFWTnikr/KBg0s4F4/sf363vpLaIkM/WyVImuh7FJSD0WySrg6k+tzt552/VZ2D/dA203xAofSqWBUXwY/NewtU8mXAZvRegkZoFC6kyoqK+1x5vZ20G+ftzaKJxbkwhSQgjmhqrWSyzvLVTGlPtfgyF43ifUCF3XvRnpjq+DtfvhB8uQJAzgGqd7yVx7eIuVlk4ZkqiSFPBEdBCdLJS2pweJ3p8cC92hXDrL4gZ1ZG+yCIun3G0cq9+5bVA0kHWl67modM9SSoUIXhnyeZxOEsG/crFKRdPW
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:zh-cn;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SHXPR01MB0671.CHNPR01.prod.partner.outlook.cn;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(366007)(41320700004)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?gb2312?B?NTIxNDlkQUZ4UnRDcjhoREQvR0VoWjlMZlhwenpTeGNjS3JucDVzVktncDkx?=
 =?gb2312?B?QjlReXFGSFZiRk9YR05GQlVvcG5ZUDlSdXpSTUlXRE9lenBUMjY2b3VzS1Ju?=
 =?gb2312?B?WDYwU2VlYWJvWUJ5MmkyeFpwNlphM2JlMWxCRWxiQ20xUEhsMW5aL2pEejhO?=
 =?gb2312?B?NHNNRURjWGQyTENIZlFqYmd6RFgrZGtsN0NjS0dROU94aEtBcmd4WmlLNmUx?=
 =?gb2312?B?SitFVW8yenoyOENHWFllVHJmL1oyWXp3NE5IUVpuV09maGlyRkFFSmlDa3Rh?=
 =?gb2312?B?RTluSUlwUWFSS1MwS0psVmg0NjNvUXMvUTE3bkgwbjJuaTk5V3F1SXR6V0pz?=
 =?gb2312?B?emxwenJrYmJMZlBNdjBuR256S0xubjJNVk5GNjhvZmUvRjk5czdqUEV0bERH?=
 =?gb2312?B?bzhBMmsxYWFUSWQwY0pxSUZZdXl1U2tlN2xqZFR5SFMwM251MThLR2xBWFhH?=
 =?gb2312?B?bC9RUWlCaHBFYkQ1cE9oSnVpRHU2T3hFWW9RV2pHZ3FITVprZ1l3czAwL1FW?=
 =?gb2312?B?ZTcwUk1sbUhFRE5WbDN5VE1haHV2dzI3ZWtqSFc2UWxRbmZrNFJIZjYyU1FV?=
 =?gb2312?B?a2FhY28wNzNsMWRveUU3a2M2RlhKMVFZYzRKSzczZWd0R2JTUGJWczR1Vmc1?=
 =?gb2312?B?b1FyV1ZHQ3dYWG9lNGpKbWNjeFdMdU5LQ3ludVljaGhBeVdKT3BsZmhlaGlL?=
 =?gb2312?B?a2VPMVdMQU90Y2xGTUJra3VTcEtMMG94djl5S2taVUdBOGNvSWlOZjZ6WmNI?=
 =?gb2312?B?L0N5blB0NkhWZGtETTJadUlRZVpPQ0Y3OHl1RkhEVDV6NGQ2d3NONVhkY0Nn?=
 =?gb2312?B?MXdhODZ5Uml2cnVWcldIOFpzMUtIaGcrRTRqN0xTK0ltSmRyS0VoMm0zK1p0?=
 =?gb2312?B?c3oyM2tYV3RJb3RUc25PYnh6QzJpYVRJU1lSVEtmaWxtTVZDMnZ2WE1BZ2NM?=
 =?gb2312?B?MXdFZGhnV0ROU2w4aktxUll5ZUw4K3RNK0hWQmZxU21GY2pOYUtXd29YUXQ1?=
 =?gb2312?B?N0dkVUhOekxFdzMxdElzTFFFMnVOdU84Y3VOVzRudUowYVd0WVJHUS8xL2Fu?=
 =?gb2312?B?YUNpMkE0L3J4TFViWFZqd0ZpTmExdWtmV2grV3lWUTVTOW9aWCtacUt4eSs4?=
 =?gb2312?B?eXkzd1QvaG4rc3IydnNXb2NNRXdqeG8vQ0l4bU1iSjJiQVFjYVgzSElmZ29W?=
 =?gb2312?B?WFJpaWVNcEhaUW9MMkY4d3ZEQmxmNFVnZEhPYXNES3JXQm8wZS9rMkliSWN4?=
 =?gb2312?B?UHdjaUFjSEJpWmhobWkzekxjTHpSOVZZaEtSd0tmbzFtMWxjVGZXcFpQRU1D?=
 =?gb2312?B?bUhXZEVRblFBMTNWNWhJZ0FuZXJGZUo5UUJBSXRHMzRLcmQyUmRyKy9MQWRj?=
 =?gb2312?B?anU2b0I0TzBlWmRCVHg4eUdSWkMwZkUzSkI4UDdTSlMwM0ttRU9ZYkdMU0JV?=
 =?gb2312?B?YXk2UkR2TFBJVjFOemJMbktDajJjWHVyQ1Y2Sm95WlFBWVBpZEZiaXFXd3Zh?=
 =?gb2312?B?WmF2UmMwL0NxbVJnRjZYVnV6cW5tY3FUVnViTTFGcmRzaHBWQ0FhS2NTTktD?=
 =?gb2312?B?Y2hEZHV1QmFpWVUvZ2ZFbGkzWHN1UFlBdEpGSWIxR1hqSGt0d0pPYXRIWW9Q?=
 =?gb2312?B?aUZnSGdJWjlyRmFuT1p0a1M4MjF0cUF5WjJ0RE92NzlRUFlFTkhlb3BXMTI5?=
 =?gb2312?B?d2RBdzVQUUphVlZpVjF1U3MvaVFDb0ZycnJwVlpaSHlyUWV5OG5ITzZHM0Er?=
 =?gb2312?B?UlhESE1ET1pQU3Z6ZUlRQUdoL1VKaCt3VXYydDl1cFVzSTJUVDNFVVk5Ukd3?=
 =?gb2312?B?RzRGVklhd2UxWXB0eVRQdjNCUkUrd0lnOXI4WEgzSkFmNkQ5UmQyeFFSUU1L?=
 =?gb2312?B?Q1NlOXBPeFhlbjRWdUdaU3ZwNjNaOGovQ2ZVZDB3N2VQTmxMdjU4VlNpZE9M?=
 =?gb2312?B?a3BaVG05b3ROMEVyZWhpUmFZcElvTWFoRVVYOVhoQ3Z3TzNOcktoMzRvZlNl?=
 =?gb2312?B?VGs0S24yZUd4ZWVCQnhBZUU5WnhCWm02UGtrL3RpcDFyWE11RmpIaVNwTmlR?=
 =?gb2312?B?N3lQL2txNXZqSHo5Z3NSZHFJRGpnSXAxMGErOEwvNStqRVNlbmVhdW9GZUtU?=
 =?gb2312?B?Mnlhc3BFdzgxZFN5RVJwaTNoYmVzNndyUVhtenNUWHpsRzh2V00vYmdGU2g1?=
 =?gb2312?B?QXc9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: starfivetech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SHXPR01MB0671.CHNPR01.prod.partner.outlook.cn
X-MS-Exchange-CrossTenant-Network-Message-Id: 16c691f4-ccca-4e39-0aa2-08dc7eb6168b
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2024 01:32:50.7032
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 06fe3fa3-1221-43d3-861b-5a4ee687a85c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bN6uAdhcmZR5qRKo5TnABF0aloR1INxsN6QReshAOHK51cdRc/ksUdXulV1ZY203YAuYIMTia6vOYf+QqZzM8X6tHQwEzUizb7Bw/z2HJVys5mtxgyQe5ZJHYTBQR8+a
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SHXPR01MB0782
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_183308_339524_0BAD73CE 
X-CRM114-Status: GOOD (  10.50  )
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



> From: "Dr. David Alan Gilbert" <linux@treblig.org>
> 
> 'regval' is unused since the original
> commit f8aa660841bc ("phy: starfive: Add mipi dphy rx support").
> 
> Remove it.
> 
> Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>

Reviewed-by: Changhuang Liang <changhuang.liang@starfivetech.com>

> ---
>  drivers/phy/starfive/phy-jh7110-dphy-rx.c | 5 -----
>  1 file changed, 5 deletions(-)
> 
> diff --git a/drivers/phy/starfive/phy-jh7110-dphy-rx.c
> b/drivers/phy/starfive/phy-jh7110-dphy-rx.c
> index 037a9e0263cd..0b039e1f71c5 100644
> --- a/drivers/phy/starfive/phy-jh7110-dphy-rx.c
> +++ b/drivers/phy/starfive/phy-jh7110-dphy-rx.c
> @@ -46,11 +46,6 @@
> 
>  #define STF_MAP_LANES_NUM			6
> 
> -struct regval {
> -	u32 addr;
> -	u32 val;
> -};
> -
>  struct stf_dphy_info {
>  	/**
>  	 * @maps:
> --
> 2.45.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
