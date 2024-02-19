Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B819C48BC3
	for <linux-phy@archiver.kernel.org>; Mon, 19 Feb 2024 21:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K7YXZB3mxBmNpWDGF3TYbv1RBM0JQgh+M1heMvOkGHA=; b=0lbk08YUElZbmnGVz+XtJhSpMB
	wfHshJOVN4MniV+/jV1ZEAz/vKaGQ5lZpwcPsp42hhoabRRoB74uzboOtWByqMVG2loa7xFYsxOm8
	pl1gHY5KLvP2q4QV9CbHgd5nE5Mb+67VIvFGf4/0/Al/LunvShx8eTBGdjq0e7aMRBANqI8ami7py
	vYKsKYnY/pTzDO25mKT4yTg/+39QB68PP5/H03L3iNF2wRaTk54Cnzp0U6R2Ecaf16mG8dNgIUKcm
	6dkLGyWb9aMHFiC2WWevDkK4q3d6Ix5bjRsYujM0rxtHrb33whV6wj1SQtF2A3/8U2cMSaRgGR4ko
	tmnVLLAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcBXP-0000000CIcZ-3KuU;
	Mon, 19 Feb 2024 21:50:59 +0000
Received: from mail-sgaapc01olkn2082a.outbound.protection.outlook.com ([2a01:111:f400:feab::82a] helo=APC01-SG2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcBXN-0000000CIbz-1hGF
	for linux-phy@lists.infradead.org;
	Mon, 19 Feb 2024 21:50:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iyx4M0H9gbTXS3atkND51PnYm5h5LJduRdXPcl7amJPLlwk8uQuLjlCYkxoIvm0SKtkZmVUpkx1uRNSi43rXWKMehYKvp7Gb4+aA9Weblf3mILj4RzUs84Qzf+8xjDT98HK1+VcOwNO+wxtzhWCGxidWECH6dsY7ylDNDhUUn1Rk6wU+DB1NplRBn1FBrwqAdpZpppoyPyCJgOhiA/O9sbmPMPNIO8BrFFj8QIaU5alH2bJ97+vpAj04yxsgcJuQJ0NmCZIzQIwLUavo9DMQce4eIa98BZjarFxIxhHlZWq3/Qr14xOTKegnV/Rf1OxLgCvnM5aq6RsosBGvvqP1Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=By5MkCWqyBiHcBdXgEds4u9M9zEjayZi4CicGLkWL88=;
 b=fo5VBGb8xPJVdCd8eezOUp95ylHP+7VjhGgIbFHBPkvtjRZA1sKPwzoOwTx7fgYjhBIaW1IW+Fe+JqJgOWqh/Ax+es8z4/IqWwPlMjD/tsr5MHz0b7VTaUNK0mr0EVllfl3cA/a1NkdIJTRYv19AdE4RlzZ06yTazJCv6FEFQYlimpaVG0dOlfSbAfJr9+EMe04ebGEQwHfFebhMgz0Ff8tWMnQLjIJbQwluj3+JG0E6UupVUk7/RcTSvnzElEFVj/ynwVwZKvk2Uu9fRnjPNs0rfMR70gjd4QkEYko9mT+f6+tLPzDAMiaF37Q1l/3ii2voGSRFY4wcAMPQDoW3cQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=By5MkCWqyBiHcBdXgEds4u9M9zEjayZi4CicGLkWL88=;
 b=LUCI5z1zfbPudCe+QQlB0GuDU8Q+eIFBwTes1genm3Z0kWSuoJ2RDrlM0LQgfKwnewtDFC41tiBi0NlTxEVhIV2pyWfzHcWghxi7YnJFtiwDjF6NRdYCQPMuWom2Jbgk3LY/udpsQcP4GFT3FCimkVLph20Turt2frPLqm49TEVcJN5oGr+DtX9wGQYTFOw9npSX1DLXywWofgYhgUsO2ocKW5kUzjHv/o3DlN+NV+sQQplw3KwWahuQbiyhjyVzdECjZeLyUDUtd2kLUoT4Ykz9mSYMbvTYG8qeva87q0iem8a57FW6O7e2qKDA6oNzA0kUxeMgbdbrJ7hZLm8KAQ==
Received: from SEZPR06MB6959.apcprd06.prod.outlook.com (2603:1096:101:1ed::14)
 by KL1PR06MB5993.apcprd06.prod.outlook.com (2603:1096:820:d1::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.34; Mon, 19 Feb
 2024 21:50:44 +0000
Received: from SEZPR06MB6959.apcprd06.prod.outlook.com
 ([fe80::53da:a8a:83cb:b9ad]) by SEZPR06MB6959.apcprd06.prod.outlook.com
 ([fe80::53da:a8a:83cb:b9ad%4]) with mapi id 15.20.7292.036; Mon, 19 Feb 2024
 21:50:44 +0000
Message-ID: <SEZPR06MB6959B7D4949E1D81FB57052796512@SEZPR06MB6959.apcprd06.prod.outlook.com>
Date: Tue, 20 Feb 2024 05:50:44 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v3 1/5] dt-bindings: phy: hisi-inno-usb2: convert to
 YAML
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Jiancheng Xue <xuejiancheng@hisilicon.com>, Shawn Guo
 <shawn.guo@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 David Yang <mmyangfl@gmail.com>
References: <20240220-inno-phy-v3-0-893cdf8633b4@outlook.com>
 <20240220-inno-phy-v3-1-893cdf8633b4@outlook.com>
 <1ed26e53-9f92-47a8-857d-777da512ee12@linaro.org>
 <SEZPR06MB69599A79CA066DAEC73BCEF796512@SEZPR06MB6959.apcprd06.prod.outlook.com>
 <5169eb03-a27f-4948-a175-50bba4e78f06@linaro.org>
From: Yang Xiwen <forbidden405@outlook.com>
In-Reply-To: <5169eb03-a27f-4948-a175-50bba4e78f06@linaro.org>
X-TMN: [/zHoDaL0V6AcoWzVBPo/uIWm7sZz8EwbDxjAODJB8Nw9VQAllEPnvXMN6GhRvCoqyCprnnYmO84=]
X-ClientProxiedBy: TY2PR0101CA0027.apcprd01.prod.exchangelabs.com
 (2603:1096:404:8000::13) To SEZPR06MB6959.apcprd06.prod.outlook.com
 (2603:1096:101:1ed::14)
X-Microsoft-Original-Message-ID: <3ee9c669-e5e2-4c8f-8989-c72bdce5dac4@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SEZPR06MB6959:EE_|KL1PR06MB5993:EE_
X-MS-Office365-Filtering-Correlation-Id: a7197071-411f-4c69-fe81-08dc3194d310
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Vsf3H3JZqv+h5jYFOcAT50Ix+XeUNkxcsVpjKNPAFBSjF3E612v53DKs5wfp3Dl5ho7KTILxnLIeZXEYce4WLja0Wk1MqSRkxmiO196W38sCJcRevYdKFi3KZZ1cf8uTC7KkILiQbZNo6yC0VP6Cza49ACfNPP+m1H0Vfu1sFiCmTW7TUYUhuaO2Y00SnXBdFjYgAnh9Lv3peUooII4fJQUiyU2kkB/cVCYPjcddwIUw2pK5FsrxfvfML2vyehKvIw3LKw3qfMFkzJZdYR4/dnCwTV6ebK+A2gYLFWa/WROP7JLwKz5HHQnJ5cqVd/O1Mug2sdDHe6ky6FKsGUJC+uzq4z5tmASO9/6SZfQVOT9nFyM8vyZBJSlwTiPgBg5hMN19RtwPqlpxh8JmYV9Sjm/jHGJAlIu5n7pMpm6m0Jmz6G7bjwx38gFLWu7mS6Pf7vuL4Do5cKKb0ccesxNxpD0fTsThPW1zgdWfDQo0Bip6UED2Z+op8wdAW3Q3OgwSd6pdGJJeI82ALIxeo9K0W81+v2wCihlPTXXKe4174kU04eDwKckhnI8doKYiFOCq
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aHNHSm1qSjlPcWRxdGE5Y0ZYVUlNYUJrb0VTViszeGN4S3Vmdis1S0Fud0ZM?=
 =?utf-8?B?OGs0bUlSaWRsbFEyWmhTbXF5WEdVM0tBUmxRRld5aUhNMUtrRVYycUpwcnEz?=
 =?utf-8?B?ck1KRWNUV2JWc0NpWHBxUlVyOU4rVlh5b0lhOXFJMnVGNnpqbEV5WWxJMFJx?=
 =?utf-8?B?TWZ5ZW9aME4rN09iajJ0THpBZTJIa1lVMFd0MnNQZThRNnY1VE9hN09xbVkz?=
 =?utf-8?B?WDdIYmkzYjJwZlFESnMvSHVFdXRnUTc2bEwrb1M2dmJRU2VjcGg5TUo5WURs?=
 =?utf-8?B?dlo3TEFQVU1vTHl3UlJ3dmx3U3pJa3RDM0czczZNaHdnU1hoK0UwT1lacjBZ?=
 =?utf-8?B?UkVaZFBxZ1pJeUJ1c0F6RnU5d2hwc2dXaDVuN3JxSm9OQXl0M1VEWkt2N2lE?=
 =?utf-8?B?M0g5SDV2S3dwWlYvTHRzVEFvQ3VSa2k2a05obW5DQU9za0xLTm9UQm9RNng4?=
 =?utf-8?B?YlZsOVkzOTQxZkEwUUNQRUlFNUlOcTEwZXYyejVJYjdEMy9LU0plRGNsTmY1?=
 =?utf-8?B?ak16UUJRQWxVd0gyQ0V1Y0NXaE9NY2tjUWI5Mm1SL2ZkeWlldGo0OGtBS2Vh?=
 =?utf-8?B?aDZTREs5WkpCVDRWdjNjcExLVEpsK1kyNTcwQ2ZENzN0bzcrWGhlRUVuY2hX?=
 =?utf-8?B?eTB3UDJMVmdSZXBJQjd0SHhxK3puV2EvWmhMaitCR1FBM1BobzBGOEFOZnhR?=
 =?utf-8?B?MXhlVTJCWjYyRzdSVGZDLzhZZjdBeStRWWJ0S0t6UDV1M2htemswK3BuNDBr?=
 =?utf-8?B?dk1ac2M3enA5bGY1RmcxUTdTell0eG8zbE5vUE03VDN1TWtrTlVuNXlsZm4w?=
 =?utf-8?B?RVcxV1hUR3c4K0oyUFYyOHQyNExVbHV0KzlBTXh5d0x4UktjT3pPbXo5S2ht?=
 =?utf-8?B?K2IyYitISHZQRUM5cU1oYmVhN0h4dXVycTByT1cyOEVXa2xnalZwN1JWSmZO?=
 =?utf-8?B?a1JORFQ0Q2VBNW5GRTNGTDB6VlRIeEVGSGxSV3NhcG9NM3kyMm05NXBKQ3dt?=
 =?utf-8?B?WUJTaEhjaGVnS1RNYVdNb1pLSWZjcWhIR3ZFemlNeTR0VUhOQmxYMWszMk5u?=
 =?utf-8?B?bWRGL2FLdTlTakJHOURwUVRsaklJZGVuTTJpaHFWMnJJaGExTjkvNm9SYTVi?=
 =?utf-8?B?VzJPc3ZQVlk0ZzlnbmJIMEV0TDcrVURQYU9abW1Ga2RUc3lrTEFZQTJZbFV5?=
 =?utf-8?B?SEh0VldFY2U2MWFEbXVrODZ3NlNxZnJSR2U1Q2RpU29jZXF4THBEZWF2L1ly?=
 =?utf-8?B?S05raEk1TWVIRnkwU0pGNXcrSGVnbmgrajMzcjdBUlFEejNxam5Mc2trbzZo?=
 =?utf-8?B?NTlOaENiNGJ2Z25tWkhiaStmVzgwZ3dlQy9oTDFLSVp1cWQyK0pxZm9kM2di?=
 =?utf-8?B?NGs2QUQ1dGdlaXhoVm1GZ1NFcU5Vb0pkbktjdk94ZHpsRWRSQlMxcnR4Zzho?=
 =?utf-8?B?a2FRYmFuRk1jakZ6V3NwY3Z1eG9uOEpPN3FlQXRMellXOXFhNlcvd2NIdW94?=
 =?utf-8?B?SlZuYzRHMVEzWUVuMFdnYXB4bXZuam9ORWJ2N0dkOHM1M0MyRWNvK2J2TURQ?=
 =?utf-8?B?cWZhSURUZXBEZXUwS3RBMzViN0s2T2Y5L1kxY1dLZzZtbi8zbTNhaDBPdGhv?=
 =?utf-8?B?amVNdGZaL0dURzUrZFJoTm9nSFk4MmF3STZrUTltYTlQZGZjTXBUT2plZi92?=
 =?utf-8?B?bnZXQ0FjMGt5bGxobEdCVkRSKzNoUDhsOCtOVTBtMXF4T04rZjlNMHUreU9t?=
 =?utf-8?Q?hvT3IZ3F2cWyCjWyoCFozVkGXo78SyCT+//kayo?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7197071-411f-4c69-fe81-08dc3194d310
X-MS-Exchange-CrossTenant-AuthSource: SEZPR06MB6959.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2024 21:50:44.7007
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR06MB5993
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_135057_485786_DCFE76E1 
X-CRM114-Status: GOOD (  10.77  )
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

On 2/20/2024 5:36 AM, Krzysztof Kozlowski wrote:
> On 19/02/2024 22:33, Yang Xiwen wrote:
>> On 2/20/2024 5:30 AM, Krzysztof Kozlowski wrote:
>>> On 19/02/2024 22:27, Yang Xiwen via B4 Relay wrote:
>>>> From: Yang Xiwen <forbidden405@outlook.com>
>>>>
>>>> Add missing compatible "hisilicon,hi3798mv100-usb2-phy" to compatible
>>>> list due to prior driver change.
>>>>
>>>> Also rename to hisilicon,inno-usb2-phy.yaml and add this name to
>>>> compatible lists.
>>>>
>>>> Fixes: 3940ffc65492 ("phy: hisilicon: Add inno-usb2-phy driver for Hi3798MV100")
>>> I don't understand what is the bug being fixed here. Binding being in
>>> TXT is not a bug.
>> This commit adds the compatible "hisilicon,hi3798mv100-usb2-phy" to the
>> driver, but binding change is left alone.
> Then this patch is not a correct fix. It does something else then adding
> missing compatible. Remember that one commit is one logical change.
Okay, that's fine. I'll break them into 2 patches.
>
> Best regards,
> Krzysztof
>

-- 
Regards,
Yang Xiwen


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
