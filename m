Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C45E3E77197
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jan 2025 08:17:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JY8pkpp9ynoQAMipH01Fb5wK2qNFbrYlXYiTHeFcnpA=; b=zUEqW8a0ankIrk
	Vy3LfbJaztvsobsgeFw1zDoUn88l7TosEVIbgaxF7ULrb4Tv+qPSU9/EPTvUYI+EGiVPYtWloLNRw
	V9l/Jsr/v4qhQ/8GtGz3VNg72NhZWsjZD4OLor6jOoD3vdgyj7uZrCua9/YXIbQNdnsR5CnwydhDw
	WGxCOHVzJhLHsPBkUX/iBUUL1MOhn2qLaxe1huoGKwwctGZ/uKgmuUADMmRvkM5JgU9YnexfInunY
	g9NMtUPp+ZJc8EoD1ycGK3OF2pVx6exRlNsB0BfK0tGKq/mwQuWAU/+VqdPnAHX9Jx73w0nLlVbph
	kW7BSAuSEI8ofPHoOYGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVnjB-0000000B9zG-0wMk;
	Thu, 09 Jan 2025 08:17:17 +0000
Received: from mail-bjschn02on20727.outbound.protection.partner.outlook.cn ([2406:e500:4440:2::727] helo=CHN02-BJS-obe.outbound.protection.partner.outlook.cn)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVnj7-0000000B9wh-3rNp
	for linux-phy@lists.infradead.org;
	Thu, 09 Jan 2025 08:17:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g4dwuxzNDUGZzs+lI45NQS5QxyCwigED3aeh1MjtBh7pt+b03squlp/4kUUcBlNzpJU075HGkC9g2pRYkTK1MKy9ogD9rZmST5j0NbfpmT877HDnOGIxU7xQY1pon6H6iLos67G9XgrGklfEWdMeaELk1A5yAcpvJDZz8GjGJuF/i6XlL1bqTvnqC9iv5xbmnGbSGvHeuRjPti5oO6PAzNR0AkjeLr10MkBb4RA0jZDsHhyTR60aaOcgQCEkUJP1ORB7U1xGNZew7Fx/xwPV7S/NbvtRIkbmMqzFjiR/8tgvGziwlvf5H8SahKtzbhWJqFcvjdgwHXo/z7G6QTPblA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lLy1oFnnAxoo3YxvD883HRN6BPY2ROriS3LEhYSQ93A=;
 b=ldOU1hw6mFyyGIKt+i4YMw/r2sh6hTE43ObwL0cS/smYaMWxSxrAMrT3uhBsQkhD2WlfzZwjDRROIQA65y0q0ixeyPiq92w4vYRk5zDGGNpCZ6S4l8Joc9fzuS63nQ1Y93+2sy+it4z5sL5lEqWSJo7X7L+ooh2osg8TBtsUxpRN6QFR/94dQGKwHVqyZMW55SbGQatSiMLzLXJvX1/bI4fjgD/rLYENY9YE+wcR7aJk2DR/+SpuuorwPP7EQ3J7Tsl80alA75gMwZJj6ZtUdzjIKuOrhGY8nHwxdHrLw5o7QwEOEaABYf7eCI8IxL5uRAXZrPUJsHxekzqUzJmNoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=starfivetech.com; dmarc=pass action=none
 header.from=starfivetech.com; dkim=pass header.d=starfivetech.com; arc=none
Received: from ZQ0PR01MB1302.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c550:1b::9) by ZQ0PR01MB1253.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c550:1b::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.12; Thu, 9 Jan
 2025 08:16:36 +0000
Received: from ZQ0PR01MB1302.CHNPR01.prod.partner.outlook.cn
 ([fe80::64c5:50d8:4f2c:59aa]) by
 ZQ0PR01MB1302.CHNPR01.prod.partner.outlook.cn ([fe80::64c5:50d8:4f2c:59aa%6])
 with mapi id 15.20.8335.011; Thu, 9 Jan 2025 08:16:36 +0000
From: Changhuang Liang <changhuang.liang@starfivetech.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
CC: Keith Zhao <keith.zhao@starfivetech.com>, Dan Carpenter
	<dan.carpenter@linaro.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: =?gb2312?B?u9i4tDogW1BBVENIXSBwaHk6IHN0YXJmaXZlOiBqaDcxMTAtZHBoeS10eDog?=
 =?gb2312?B?QWRkIG1pc3NpbmcgY2xrX2Rpc2FibGVfdW5wcmVwYXJlKCk=?=
Thread-Topic: [PATCH] phy: starfive: jh7110-dphy-tx: Add missing
 clk_disable_unprepare()
Thread-Index: AQHbK2dbf6ZMT/Qe502Vhy11iwj3HbMOhlGA
Date: Thu, 9 Jan 2025 08:16:36 +0000
Message-ID: <ZQ0PR01MB13026A8A255C794C4C340EF0F213A@ZQ0PR01MB1302.CHNPR01.prod.partner.outlook.cn>
References: <20241031073428.266942-1-changhuang.liang@starfivetech.com>
In-Reply-To: <20241031073428.266942-1-changhuang.liang@starfivetech.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=starfivetech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: ZQ0PR01MB1302:EE_|ZQ0PR01MB1253:EE_
x-ms-office365-filtering-correlation-id: d652d41a-3763-46dc-55f7-08dd3085efad
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;ARA:13230040|366016|41320700013|1800799024|38070700018;
x-microsoft-antispam-message-info: b6Vps69qipAogfpT5sH4DD9nWxlmjG3PUwatL0pKbIjPsr24LQJpTttkhOSn8gwiecEd8OdEXUe1+2Jdyc3NqBQD6QkjIP11Sc+HqkVKrkEyy20jdvZZ+D8LMq+4S+d9Nm9FLS14BaxHZMkknsoXnOd90XxjoShJ1ScMSlB3Qp6XpeXmtEXnJIkYLyLsW/nLa5qSN94oO/0pIo7M1tKfOg+9aah0S80n1mue2HE4vnSLCezIVeSNYZopxjM9PXJtCYG3ULQkgK9QWXvJJ/Gb+yeH9Yrblcu2CrupTSliZVKJ5AUaEaaOOOQa3B/9cCblcbTos4fOQcV50JoXgqN+w4utQmz4OCNIodwklIAHkwduN7+X0+doiqRDb1ut09LaKh9mTtr2xTR5t9i6YyIvBThiOiF7UMJf+KEoP9T1Yhppbfm4T5UJFbhfQ9f9Ge6qgYZ9H56/s5kqea4s6zB2jhUUs1TGOjbP5WiDD2DV4q+jslaf/4OMGt1xcUiAZ+6oLuSTSl4gVU7N3ZZMfu2QtITzydudTj7QfcV0L7kqM/jsR/ANbD1BuJsoQMpygTVDkcBazGtU7OUKXmm79cUlxw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:zh-cn;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ZQ0PR01MB1302.CHNPR01.prod.partner.outlook.cn;PTR:;CAT:NONE;SFS:(13230040)(366016)(41320700013)(1800799024)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?gb2312?B?Y29iTlJYQ2JESWM4NUg5V0Z2TCtiSlh6RjhvN3hrWk9aSmVpaUFKL2I5RUtm?=
 =?gb2312?B?VjlUKzVBVmtQZmxiK0lveUNyUTNpWWJsVlRuWEs1ZTV3clptNnI1UVZabitU?=
 =?gb2312?B?QTFSZXR4SklmRUc1YWJDVHhyZE11VGFYaVV0ZjBtclQ1UnBVdlVWZXQ3Z0xz?=
 =?gb2312?B?ZXdoSCtVN1dFUHBWVXQ1QXIxaWZQNlp6WkVvOHVMYlZJVDJKaExHQXJJZk5I?=
 =?gb2312?B?dE9xVUNjeldWRXFmNm5ZN3dBMlltVlQ5djhiTTlUbkFycVFicTFNM1U4OWFn?=
 =?gb2312?B?WVlWdkhuTXhDQndDS3JER2tTNGpQcDJjZnNlLytVR1dVUXAyU3BMMEpZSFlt?=
 =?gb2312?B?bThEN1pPajhzck11SmdFZHcwa1NwcWJYY3pVQkhjME0ydW44L3p2Z0x3MTVR?=
 =?gb2312?B?blpmVFJrNlNRdllwSXRxUjRKVzFrdk9qYzlydzI2NHd3R3U2V20wblYrMUpI?=
 =?gb2312?B?dzU1bW5KN2pYQ1VhYTIxNERxeUFQUDN4MktWeHYrTCtQdk9UYmdmdzdMTHNP?=
 =?gb2312?B?TXI4emtCWUVCTVJIZmpzODk2U2MwbUN5WmRpQW9vYklmTW9GdEVGaStKSFJ2?=
 =?gb2312?B?QmdFYVpWR0U5TnNKR0tuaGUzckt0YndDc1B4TTNuQ0tNM1VmNFk5Q2Z1S3FS?=
 =?gb2312?B?dWlUVGN0SUhOUXhlcHpVTkZKaUtDZU5yTlYxMHViWis2eEFMS3JvMllyVHFC?=
 =?gb2312?B?SUt5SmE0am0rK1RYRVBzNDRITVJkVzhZSzcwWWtlWEwrTThKdnhQYVhMR05N?=
 =?gb2312?B?YlVmT2szVEdtSUVZcWxRWXBvOTJsWlNRZ0Y5MWN3MXFtSmJPWjdBcUlnWXBo?=
 =?gb2312?B?OTllUy8xSTNuMUlMRWx2Mm84aTJOdDVxcjZaTFZuR3o0aXFnNmlCNXVXNDZG?=
 =?gb2312?B?UFpzWVVZNVNWbE9DQjJhZ3FKYlo1d0NqTzdOS1FLYzdHNjVRS081VGtCZUtv?=
 =?gb2312?B?UkRwc2ZkQ1VmVVJnaWh3WmVsMkdBWFdSdWcyeGtLNlN3ck9kSWZ5a1BjMytS?=
 =?gb2312?B?QkNDTXFFTXpkMU5PTWF0aGkrdVBjQitrKzZkeDZmWCtoNUl4REc5d2Z4TU0r?=
 =?gb2312?B?c0xLR21nK3QxUnJGL1dIdnNZc1poUUlNbnJQZDI1UXVnSDIxOXBuZjE0b0pS?=
 =?gb2312?B?V29jb0UzNEZhY0FmbXNjZUJnSHZqcDFodlBSYXNqQk5DYWtoVWVHNjYxVWE3?=
 =?gb2312?B?VFhzaDFIS0dxNkduWE8xTUFoTVk5OGhmTlZaMjB5YzVIcFpFWDQrakRSbTRo?=
 =?gb2312?B?dXhvVHhKb0VKeHFTY3ZESURUd04rMzNaZkZtbE05K0xYRXJPRHFBZm4xRWZx?=
 =?gb2312?B?RWZiWFFieS8xaEU2UGpuWFpnRmFEUEZhYkd2TGNJdDdxN1RFOG9CclVocTJX?=
 =?gb2312?B?V252dkZmS3J2SWVMeHNJcGpWdDJQbVFzejdIOXJhY3pJUUJITTNTVTJhMG5s?=
 =?gb2312?B?ZXo4cFNuZnA3ZjhPWGg1bVRyUXEvRnFkVjl0NDBPYSthbnFNbkcyOVplNTQ2?=
 =?gb2312?B?MmYzcjJwU1VJMmxkelBwSmlJQzAwUEhaY0p3M2hMeHN0OWVLQ0dNM1pOU2ZH?=
 =?gb2312?B?bXJNMkpBZ2FFN21ZMG1aUk1WTFNFb3p1MEY4dkNoRzNzZXF0V1dkZFN4ZUw4?=
 =?gb2312?B?MXdYVSs2OTBkMWZZdjgvb3hyTGMwWVZkNHJOVDRlTU9lN2dMdGlrWllRbUcr?=
 =?gb2312?B?YTZpcnkrYTRndWZQSElSRmYvWjBuSDRsbGF1YmloWm1XUSs5ZFYyWDFJSEJJ?=
 =?gb2312?B?TkpIS0FUbWpPOEZDa2hqR0Q0M2hvQmR6czhJaVJOTzB6a2drUi8rL3JJdHNn?=
 =?gb2312?B?VFdoUXdWWHRZM3FIb0k4ZnlkbWNFVUlrenR0TlZtV0tpcnl1cnNjTFJoZk5z?=
 =?gb2312?B?Ujg3QU1EcHYza2E1TnFsbnJTL2hQZGI5NElmUGRIM0JWNnNDd01JeHJFTTNx?=
 =?gb2312?B?QUl5bUltRVV2VGZSd25MR2NxcW9KeDI3ZEVRd1RPaC9iUVczQU04S1ZhUVdW?=
 =?gb2312?B?dUxmQXpiZE9zRG5Zc0QrTThZem5sQmFKY2tuTjNhN3oxSWdZcWpKb1YyTnBV?=
 =?gb2312?B?MkxQclJEbWpXZ0lVall1dDlEc0wvUnovWE85amluNHZycExOV0llbEhJY1hh?=
 =?gb2312?B?bHRnbkRCdUYwNW8xVlJmTERONDZmbVg5a0dLQ3RyQWJmRjFIbCtJbWY3cVBS?=
 =?gb2312?B?M3c9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: starfivetech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: ZQ0PR01MB1302.CHNPR01.prod.partner.outlook.cn
X-MS-Exchange-CrossTenant-Network-Message-Id: d652d41a-3763-46dc-55f7-08dd3085efad
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2025 08:16:36.5985
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 06fe3fa3-1221-43d3-861b-5a4ee687a85c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ucf+Fm3pF9YT+zAXOtAu4HTjUYU40BUDlvTQeyhv3lJ28e5BiXts4j+EmtI9x5LKtvUufRfBtocHb8PNFi0p9jkhm5BACOp5cJzxBIkktC5IWemTN++likDuOJAMZUxf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ZQ0PR01MB1253
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_001713_954725_31528964 
X-CRM114-Status: GOOD (  13.08  )
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

Hi, Vinod

Could you help to review this patch? Thanks for your timer.

> Once the reset_control_deassert() fails, we need to run the missing
> clk_disable_unprepare() before return in stf_dphy_init().
> 
> Fixes: d3ab79553308 ("phy: starfive: Add mipi dphy tx support")
> Reported-by: kernel test robot <lkp@intel.com>
> Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> Closes: https://lore.kernel.org/r/202410310715.duo3ShR4-lkp@intel.com/
> Signed-off-by: Changhuang Liang <changhuang.liang@starfivetech.com>
> ---
>  drivers/phy/starfive/phy-jh7110-dphy-tx.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/phy/starfive/phy-jh7110-dphy-tx.c
> b/drivers/phy/starfive/phy-jh7110-dphy-tx.c
> index c64d1c91b130..7b59496983d2 100644
> --- a/drivers/phy/starfive/phy-jh7110-dphy-tx.c
> +++ b/drivers/phy/starfive/phy-jh7110-dphy-tx.c
> @@ -330,6 +330,7 @@ static int stf_dphy_init(struct phy *phy)
> 
>  	ret = reset_control_deassert(dphy->sys_rst);
>  	if (ret) {
> +		clk_disable_unprepare(dphy->txesc_clk);
>  		dev_err(dphy->dev, "Failed to deassert sys_rst\n");
>  		return ret;
>  	}
> --
> 2.25.1

Best Regards,
Changhuang

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
