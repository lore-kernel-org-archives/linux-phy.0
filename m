Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0289C7115C
	for <linux-phy@archiver.kernel.org>; Wed, 25 Jun 2025 12:17:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:To:Subject:Cc:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tK+VXIoa0HaJtJAy3KyqkBkJBMlJyk8oDY/65ogSjDA=; b=4KxsUUwJbboK8aaguK5K7Cihth
	ZW41whk2IcxxAmVt4LOzaM7TipOLaE+QBdWtuxb1xp6oeZFDo19TSDvEaqUUk6Z0wn4a2CpbHRD8x
	9jKhtl61u3/GH/1dANuR6Yx//LM4Awj5Vz60tR4ftwTr9tvm2Bti+bqtjekvTsDlfTYE/tc10n9zx
	AUKU3aMkcs80gXpO1eji0GKTy6+qlLFactGrAaLbscHaBWM0rjgvIAq+HjdL9XS6eP02l7hqT3K3+
	QX9vXw4qsjQnSfp11mLqaB+uASmr+XfMKeMKK31DTg0+YKmRAENv3wN5yOBhCJcgtWo8q+K2yq5tS
	oRAjEOzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUP41-00000008azj-2kE5;
	Wed, 25 Jun 2025 12:17:17 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUNeR-00000008MGF-03gB;
	Wed, 25 Jun 2025 10:46:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Transfer-Encoding
	:Content-Type:In-Reply-To:From:References:To:Subject:Cc:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=6GPayLFeyFy8AGSQx8pyFGX30ykYr+8hUzqZ3P9JXbE=; b=QRwEI1plJdhKd/NROOcp48FpC+
	rptAMhImfu7lHGD46+fPXdJim3QHd3Nwkpmaf4qxmVSrgTDLPD0FHT0/Cg2PhdH+vPgRbnwZgk8Ci
	XWDZcz95trUs8E9oWdBlTJowEqKRV7T/dfPevOLol4rkcTFQ3H3qDzBou25QB4OgyF5qiV2Qawc7U
	5J3adYNXN66mdUPhEWabzaWSb/nYg3bDAqMH4IBnwM54frl1+EZtxG3MGbPcohgs0y18o7xnlE6ke
	aXBQ1A3aR229hDX/nazQh18jsc3vI2BkWGYi3k1HHIHF6Kprfd3xaFkBXCbTGEA6kc767KiWPFpIF
	et+BfLug==;
Received: from mail-japaneastazlp170120005.outbound.protection.outlook.com ([2a01:111:f403:c405::5] helo=TYPPR03CU001.outbound.protection.outlook.com)
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUNeO-00000005nWd-0LLL;
	Wed, 25 Jun 2025 10:46:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z/cVZD6gzyIwtypCOXQkkw9s5n+GFOtbrS3SevyInf3XFbgGHKEKiM9HZClvWYa3O10n9D7ETXpuD9ZjdJGHWCKGiiK3PISWKJ2cLlF+BJQptNgQJ6dUBy4S/fAs8btNM8KHuwKcSC3+MoTdGGx4W61clHcBAZOTZ7NOYUi991wpsrff8iSc7QOfUM9FEKfnZwCTXkYzqES5BMM4b1Dm+8gJNbeKzEAm2GM9/pmTDzaKEEFGlUlQy7jXNsMvTWynoX1m61W/dB+w3ltXlX0NqRnHEJht2p/CXFKYKLimHIMN82aGL4XWm5J8AFHzoEh/WZOxxuUOsji19Li9OhCsIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6GPayLFeyFy8AGSQx8pyFGX30ykYr+8hUzqZ3P9JXbE=;
 b=QVNKoCq0/YvYLmuALkdEfTcSqQuTfGSPmggsfTByf+/49agovAoLMkiYJlnI+nwFuMj2NAwfZrVpxSh+9uQs6djQfUFSLpDovOC95qzPhNcO0REgiMOsm80mJeM65gqmxbPmxIeCo3FErQw3BXvudpzV7M0Csm9aVxJUcBmtBPjjUDN2drlbTdQcnKlKLEu7EgI0BnBf6rFX/nhSC8B1eF7s6LYXSdAdPo/z7UohSCxVAubpAe8kqmIZuCoRWD2Vk5Gn/VA1PQA8hZ+fc57UKBFwRQowlNSmasVlTTda61uPNqP4GDsT9Zx0p4VnmhZXMrTg8OuGHiHfs+Kj0BfBGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=linumiz.com; dmarc=pass action=none header.from=linumiz.com;
 dkim=pass header.d=linumiz.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=linumiz.com;
Received: from TYZPR06MB6935.apcprd06.prod.outlook.com (2603:1096:405:3c::9)
 by SEYPR06MB5062.apcprd06.prod.outlook.com (2603:1096:101:53::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.30; Wed, 25 Jun
 2025 10:46:35 +0000
Received: from TYZPR06MB6935.apcprd06.prod.outlook.com
 ([fe80::9e42:3253:9a2e:b565]) by TYZPR06MB6935.apcprd06.prod.outlook.com
 ([fe80::9e42:3253:9a2e:b565%7]) with mapi id 15.20.8857.026; Wed, 25 Jun 2025
 10:46:35 +0000
Message-ID: <802387ec-31a9-446c-8f90-c81a7345410f@linumiz.com>
Date: Wed, 25 Jun 2025 16:16:29 +0530
User-Agent: Mozilla Thunderbird
Cc: parthiban@linumiz.com, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Michael Turquette
 <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Linus Walleij <linus.walleij@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, iommu@lists.linux.dev,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 10/22] pinctrl: sunxi: add missed lvds pins for a100/a133
To: Paul Kocialkowski <paulk@sys-base.io>
References: <20241227-a133-display-support-v1-0-13b52f71fb14@linumiz.com>
 <20241227-a133-display-support-v1-10-13b52f71fb14@linumiz.com>
 <aFu3fAMa8KPwjPbX@shepard> <9c3ea5fb-a045-46bd-9753-26ffa67fe1bc@linumiz.com>
 <aFvLO6GUY6NezkcF@shepard>
Content-Language: en-US
From: Parthiban <parthiban@linumiz.com>
Organization: Linumiz
In-Reply-To: <aFvLO6GUY6NezkcF@shepard>
X-ClientProxiedBy: MAXP287CA0019.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::28) To TYZPR06MB6935.apcprd06.prod.outlook.com
 (2603:1096:405:3c::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYZPR06MB6935:EE_|SEYPR06MB5062:EE_
X-MS-Office365-Filtering-Correlation-Id: 087bdfa2-66d1-4c7c-9a24-08ddb3d58e21
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?STJlZXVuMFdLTURsVnpYRHhWMmNOMnMxNitLMkZZUnRONUhWYVVIWVV1elE5?=
 =?utf-8?B?eUdOMmdiZ0QzNmtjYmwwY2JjMjRlR0pRSTJGSUxUWW9jdG02bGViUHVPbVEr?=
 =?utf-8?B?d1pBeFVENGFTRWxLR1dJdVZGUjRIZ3pFWDZTelBGNHJJS1RYNkd0Mmg2Tys0?=
 =?utf-8?B?STk2SmxMWnlhSmxDenVJS2V0R2dPclZrcElnQlpFM0lBdnZuV1dXT0hKTHlM?=
 =?utf-8?B?NC9tazF1NGNsWjlvZ3RtcDRuQ0VqWGx4Z1R0Y2FRVXROMEx5Wi95dXE1L0RI?=
 =?utf-8?B?eFBDalBTWHFKWjg4ejdhaWVTNXJPQmlTWHl2NWdibktjbExEaTl1TW1KY3FP?=
 =?utf-8?B?MnBkV3cwcHRkbnJXeGx6QmRjOTZQSmJUVXMwbUhQYS9RZmppanZMVTMrSG9w?=
 =?utf-8?B?OTVtWjd4WUtsSkxTejRqSEkrL0NKWVJHQjhWVkJUUTA2TnV1ZUI2U0VCSmtt?=
 =?utf-8?B?VW95Nmg4d1B3TkgzbFdFM28xZXd4SEdtcmcvU2JralZ0UkVDNyt2czBDNWs1?=
 =?utf-8?B?NnliTmNPM3hvYTFzTmdseC9wekUya0pETnFqcnAvbkhxNWJFU3hRZTlGVC9B?=
 =?utf-8?B?cGJTaFdhaitWcVZLY3hsN2VsYkNzY013ZkY2WnUweDRibGtFODRrekpOSVlw?=
 =?utf-8?B?T0YxRTVWK3NoSTl5eGxXNGNrdjhtOHltV3pTRy9xdHdpeVlSMEVXQmpxelNu?=
 =?utf-8?B?aFk3cnhsU3FLQXRJaDNoOFdVakV0WWZERXJ0ZUYrS3JwK28wUnpHRll0aHgz?=
 =?utf-8?B?Y04wZDFaTHNlODdmQnRoZk5tSk1kbWN2Uk5hZVRzandpUnlHWVdFYWswWmVo?=
 =?utf-8?B?d25yZzNpV3JwdEdjQ1NaRDhwVzMrNTZzYys4VXdvRVdXdGZqbDVSczAzL0Va?=
 =?utf-8?B?ckIvTlF6N3hwNFBhWUZubEFDMGplaVJ3L2E5SVQzbDFiNmpvNGJya2pHcVBD?=
 =?utf-8?B?dE9CWkJGWUFpNWNyR3daZGtwWGwwOG5rUklLSU1NQ2VLejhXWERZK29Cc3RW?=
 =?utf-8?B?YmFqL0wrbHkwSytLMzhKSEVKRlVObTd5N0YvZUhOU0FDT3NPMXlwWTJlUUkr?=
 =?utf-8?B?dCtFeGwrMHZhTXlnNzJsZFVIWVM4YURvMzdUNzJXT1JYQm1wVHk5WnVROWM0?=
 =?utf-8?B?YkpFR01RQWNUbWV1Si9HelVEUDRHOW9VNXQyM2dYTVhCYzVzSWROcTRyY2o0?=
 =?utf-8?B?cGlHQ2d4WnhBODYxaFV2b3J5U1MzN3ZKbFlkdkNuRGZDdUFOVUlXWGFMNEhh?=
 =?utf-8?B?UXlWQzZKMFdCTVQvckhmeDlZaU1raHBySXh5N3NLeE9YbUFzZG1BdEQ5Ti9n?=
 =?utf-8?B?NE84YTRmUW82QmN1OStpY2wrdUlJbmpqNytiYTFyVjRNNW1pNGJyeng0WkxQ?=
 =?utf-8?B?bTcvalJwajZESDR3dWRLNkNIV1BPck8yS0E0WHVKTGxZL1NRemozb2I0Vnd6?=
 =?utf-8?B?RzJFLzRac3FjMkp2TWJvdDRiQUtUMVJvbHlyUkJtTURveXFQVkRnSGJsbnZt?=
 =?utf-8?B?YzZQYTBkSjJieHIwQXEvRERVTURFZ0RPWWxyay82MmxPNGs4MXR4eWMvbTJU?=
 =?utf-8?B?RkUwREZrbHl1SXdqVXFZUDN5bU92K0dXZEpkMWoyZHk2UTlMV3ZqVXZpTjAy?=
 =?utf-8?B?QUdFS1owQXN0ZGVsQmN5MlpZOUhuVUxraDBwWFF4RUo3eDFkaHlyeHVSbFJM?=
 =?utf-8?B?aTI3emltRmJHRFVhRzZzWUt5eDFTY2VQOE41MnpxS3hLTlFXcmU2ZzZHdzkr?=
 =?utf-8?B?R1Ixam16bXhJZFF1bXFtT2tkV29taVFvMVJDQ1d2YTlxdzl4bVpMVTQ1QUN2?=
 =?utf-8?Q?/ClRGQWA7rCvPOznI5ahRSFc8pwNI2etKYmFU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR06MB6935.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(7416014)(376014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YUpNaWlYV1hIWXM4SU5jRGl6NVBsOGRWalNsTEpYTVFJaUlSMW9NWXQzcTNF?=
 =?utf-8?B?NTJRMm9FM0VNQzBsb1R5eUdhbitPMXNJdHBDNUpYM1oreEJ0bHdLU3hRZnFm?=
 =?utf-8?B?M1ZIN2lzQ3hLTnEybFlScDZuaE9HZnpiR1B2UnRJc3FZZ2g4VU9ubVlqVTRV?=
 =?utf-8?B?ZitYdHRLK01oOWY2ZGlJdjVxK1F3d3hrTjYyVldMZ2hLOUk0bkZkNzBUYjR4?=
 =?utf-8?B?WXkrTG0wSkRFSm84eFBkbFhqWXpzYnZVREhYY1dYalQrVG1sWkFCeHFvMXJI?=
 =?utf-8?B?QTFYTTlPODN6K3ZXL2FWU2k5bi96OW0xV2U0RjhQbVpjN0JiYUNHMzhHVDhs?=
 =?utf-8?B?L1U5a1JFdEd5Rk9BeURFY1g0c01SaUxRTUYyNFdoT1BER0VTcFZhT2lSeGlI?=
 =?utf-8?B?ODBnNk1jZ1UzU1lBRkpzd2lwMzB2Z0ovU1NpdGwyNUVqVUdVV1VKVldiQmdz?=
 =?utf-8?B?WXp0eHlNc3NzY002aGUrWTkxeHV1SWgyQUdaMWsvY210ZDE0cVg1V29UR1dh?=
 =?utf-8?B?MkJKd01XS2Y1SVZOdTQxYTZvZ2hDbHJoczRoSk1scThWT3lWUXVTR1d0RjRN?=
 =?utf-8?B?RFFtb09waDRBbkRPQzBtMGNJUzJJS1NJZTlSalY2M3lHUjNzb2c3TW5idnRX?=
 =?utf-8?B?SDg2M2J5bTFIRHpPYnJwdjRNS2hnVUVEYzhhbFM2Z3JEV29JUFNhNmdKOGk1?=
 =?utf-8?B?Y1lvK3VZdi9FclZYckg1dXdIQjZFbmdUTzNFSDZqT2RyT09Ycjd5ZXhsTG9u?=
 =?utf-8?B?QWpXN3orRGFGaFo5SUJrWWpaTnVuNXE5dGdNVGU2Zm5LYmdiVzh1TVh0bFkv?=
 =?utf-8?B?aTNMaTh3alJpNURuWWZoa1MxWFFmSm9qdnIyRWU0aTR3Wjc5Um9aTmRnUFZL?=
 =?utf-8?B?ZmU5a3FrU3BKUWlhNFR0aldkN1p0Vk5QTEJmK0N6YWtoa2R5VGMra1Y4Zi85?=
 =?utf-8?B?Yk1zL21BT2NDTFZBMWREcG54WkFnZm04TThZdG9RNkFuSGtHL2FWU3ExT3pE?=
 =?utf-8?B?YWI0NThYSy9Mb0hFWmlML0R1OGdnVEhkQnVTTHk4TWxQQXA5UVBSVktiOFZs?=
 =?utf-8?B?VStYNFJaWWZ5V2hLckZYMVFJbm81VEhHb2lBbCtKTlNtRVRUY24wcGMwWldI?=
 =?utf-8?B?QzhQcFBiQjNNank1SDVpZU0yeGhHZEpZZUcycHM4b2V3RS9mMHpkMEE3MWIz?=
 =?utf-8?B?aGFTVGpBUVVjU2J5ZnJreHpWSkpoMzJjdXR1ODlsTW5hRUFGdWI1N1hJYTdZ?=
 =?utf-8?B?Z25VNm53TE54VDM0Z1JGaEt5UTFsTnJIQzZZdDZxL1l4aDZtbjFVajkxZXZY?=
 =?utf-8?B?eUk3OTdWWEJOME8zWlA1eEZ4RVhaV1VLTHUwMlNrUTlCbm5ZL25ZdmJvd2Fu?=
 =?utf-8?B?NklKZEplaEJ2LzdKTmZ4TGFnbGR4ZElSOVk3TlJyelovUkk5ejFPa05VVnFv?=
 =?utf-8?B?NWUzRXFHdC92bnR0d2U0MXI2WnhDWXUwSzBYc0tHT2ovY1RXQXVwWWMvUnJt?=
 =?utf-8?B?OC9TWTZZNmhIVGlGTFB6bENyMDlxQVhsNG50VUVTallrS1VhV28wZGk0SG9E?=
 =?utf-8?B?MnZUZDNuUm1GaHo1cHAzQmlpWEVCajZ1MDF4cnhOUWpOMHJjbm1qQ0NJVnJW?=
 =?utf-8?B?RWxRd0ZlZ1NZdHNJMDFEcjRRREJGMThySkVUMHRNY1JoOVN1V3RyNVYzdXQx?=
 =?utf-8?B?bk05ZnkvV29PRWRiTXpSRE9xMEttWXNERmdSLzRTRFArUUZIKzNvdVpCNDda?=
 =?utf-8?B?clhEMSs0V0tVN1VodXFOd2pHckFVbDRBZ3NFMnZQMVgxbmVwNVdzcWdNRzNC?=
 =?utf-8?B?a2M0RkNveGdqK3JIS0NkN1NvOWp5ZTZYWXRQV2ljelhHdVN6Mko1cC9hTi9P?=
 =?utf-8?B?cmV3QXQ4TWpyNUl3VUpkWk1wUktDQjNMWk80MEpKUmg1cGtJSW12ZkJIQnBh?=
 =?utf-8?B?dFk5UmpHcmV6VnpHbVdwTHhGakZpK3pGdUxhazdHNkRPRXFacTJHcUxkVW1U?=
 =?utf-8?B?N25SSDZnNTd3RUJRZlNlQ3hteW1FTjFYV1Nva2VuVm84UUFMZFFsOEM2WU1S?=
 =?utf-8?B?c2ZrNElHVWV3c1BvdnFKU05lUUVBRXE2QURKTVBGVjNLd1RrRVNnTU5BbldK?=
 =?utf-8?B?MEZaQ2hMdDhCWE1RaGY2OEtVVWRwakUxTEVUSisrNnBhdGV1MktHNG1weS9T?=
 =?utf-8?B?QVE9PQ==?=
X-OriginatorOrg: linumiz.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 087bdfa2-66d1-4c7c-9a24-08ddb3d58e21
X-MS-Exchange-CrossTenant-AuthSource: TYZPR06MB6935.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2025 10:46:35.1483
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 808466aa-232a-41f4-ac23-289e3a6840d4
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EdyE+TkmcnlPXJyo7pqdIAvrDYVw+CpHAN2cbK1FkxO6rx0gb60N/wA8VCHQBWdWr3i5DusjEIjTe8Vinpkvog==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR06MB5062
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_114644_432773_9A735E7B 
X-CRM114-Status: GOOD (  14.16  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Ck9uIDYvMjUvMjUgMzo0MSBQTSwgUGF1bCBLb2NpYWxrb3dza2kgd3JvdGU6Cj4gT24gV2VkIDI1
IEp1biAyNSwgMTU6MDYsIFBhcnRoaWJhbiB3cm90ZToKPj4KPj4gT24gNi8yNS8yNSAyOjE2IFBN
LCBQYXVsIEtvY2lhbGtvd3NraSB3cm90ZToKPj4+IEhpIGFuZCB0aGFua3MgZm9yIHlvdXIgd29y
ayEKPj4+Cj4+PiBPbiBGcmkgMjcgRGVjIDI0LCAxNjozNywgUGFydGhpYmFuIE5hbGxhdGhhbWJp
IHdyb3RlOgo+Pj4+IGx2ZHMsIGxjZCwgZHNpIGFsbCBzaGFyZXMgdGhlIHNhbWUgR1BJTyBEIGJh
bmsgYW5kIGx2ZHMwCj4+Pj4gZGF0YSAzIGxpbmVzIGFuZCBsdmRzMSBwaW5zIGFyZSBtaXNzZWQs
IGFkZCB0aGVtLgo+Pj4gV291bGQgaXQgYWxzbyBtYWtlIHNlbnNlIHRvIHN1Ym1pdCBkZXZpY2Ut
dHJlZSBwaW4gZGVmaW5pdGlvbnMgaGVyZT8KPj4KPj4gdGhpcyBwYXRjaCBpcyBhbHJlYWR5IG1l
cmdlZC4gCj4+IGdpdCBzaG93IC0tc3RhdCBjZWY0ZjFiNWJhOTlhOTY0Y2Q2ZGQyNDhiYjM3MzUy
MDU3M2M5NzJmCj4+IGNvbW1pdCBjZWY0ZjFiNWJhOTlhOTY0Y2Q2ZGQyNDhiYjM3MzUyMDU3M2M5
NzJmCj4+IEF1dGhvcjogUGFydGhpYmFuIE5hbGxhdGhhbWJpIDxwYXJ0aGliYW5AbGludW1pei5j
b20+Cj4+IERhdGU6ICAgRnJpIERlYyAyNyAxNjozNzo1NyAyMDI0ICswNTMwCj4+Cj4+ICAgICBw
aW5jdHJsOiBzdW54aTogYWRkIG1pc3NlZCBsdmRzIHBpbnMgZm9yIGExMDAvYTEzMwo+PiAgICAg
Cj4+ICAgICBsdmRzLCBsY2QsIGRzaSBhbGwgc2hhcmVzIHRoZSBzYW1lIEdQSU8gRCBiYW5rIGFu
ZCBsdmRzMAo+PiAgICAgZGF0YSAzIGxpbmVzIGFuZCBsdmRzMSBwaW5zIGFyZSBtaXNzZWQsIGFk
ZCB0aGVtLgo+PiAgICAgCj4+ICAgICBTaWduZWQtb2ZmLWJ5OiBQYXJ0aGliYW4gTmFsbGF0aGFt
YmkgPHBhcnRoaWJhbkBsaW51bWl6LmNvbT4KPj4gICAgIExpbms6IGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnLzIwMjQxMjI3LWExMzMtZGlzcGxheS1zdXBwb3J0LXYxLTEwLTEzYjUyZjcxZmIxNEBs
aW51bWl6LmNvbQo+PiAgICAgU2lnbmVkLW9mZi1ieTogTGludXMgV2FsbGVpaiA8bGludXMud2Fs
bGVpakBsaW5hcm8ub3JnPgo+Pgo+PiAgZHJpdmVycy9waW5jdHJsL3N1bnhpL3BpbmN0cmwtc3Vu
NTBpLWExMDAuYyB8IDEyICsrKysrKysrKysrKwo+PiAgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2Vy
dGlvbnMoKykKPj4KPj4gRG8geW91IG1lYW4gdGhlIGNvbnN1bWVyL2JvYXJkIGRldmljZXRyZWUg
Y2hhbmdlcz8KPiAKPiBJIG1lYW4gdGhlIHBpbiBkZWZpbml0aW9ucyBmb3IgbHZkcyBpbiB0aGUg
c3VuNTBpLWExMDAuZHRzaSBkZXZpY2UtdHJlZS4KPiAKPiBCdXQgbWF5YmUgeW91IHdhbnRlZCB0
byBzdWJtaXQgdGhvc2UgYWZ0ZXIgdGhlIGJpbmRpbmdzL2RyaXZlciBjaGFuZ2VzIGFyZQo+IG1l
cmdlZD8KCiAgICAgICAgICAgICAgICBwaW86IHBpbmN0cmxAMzAwYjAwMCB7CiAgICAgICAgICAg
ICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjUwaS1hMTAwLXBpbmN0cmwi
OwogICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MHgwMzAwYjAwMCAweDQwMD47CiAgICAg
ICAgICAgICAgICAgICAgICAgIGludGVycnVwdHMgPSA8R0lDX1NQSSA1NCBJUlFfVFlQRV9MRVZF
TF9ISUdIPiwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxHSUNfU1BJIDU1
IElSUV9UWVBFX0xFVkVMX0hJR0g+LAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgPEdJQ19TUEkgNTYgSVJRX1RZUEVfTEVWRUxfSElHSD4sCiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICA8R0lDX1NQSSA1NyBJUlFfVFlQRV9MRVZFTF9ISUdIPiwKICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxHSUNfU1BJIDU4IElSUV9UWVBFX0xFVkVM
X0hJR0g+LAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPEdJQ19TUEkgNTkg
SVJRX1RZUEVfTEVWRUxfSElHSD4sCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICA8R0lDX1NQSSA2MCBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKICAgICAgICAgICAgICAgICAgICAg
ICAgY2xvY2tzID0gPCZjY3UgQ0xLX0FQQjE+LCA8JmRjeG8yNE0+LCA8Jm9zYzMyaz47CiAgICAg
ICAgICAgICAgICAgICAgICAgIGNsb2NrLW5hbWVzID0gImFwYiIsICJob3NjIiwgImxvc2MiOwog
ICAgICAgICAgICAgICAgICAgICAgICBncGlvLWNvbnRyb2xsZXI7CiAgICAgICAgICAgICAgICAg
ICAgICAgICNncGlvLWNlbGxzID0gPDM+OwogICAgICAgICAgICAgICAgICAgICAgICBpbnRlcnJ1
cHQtY29udHJvbGxlcjsKICAgICAgICAgICAgICAgICAgICAgICAgI2ludGVycnVwdC1jZWxscyA9
IDwzPjsKICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgIGxj
ZF9sdmRzMF9waW5zOiBsY2QtbHZkczAtcGlucyB7CiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgcGlucyA9ICJQRDAiLCAiUEQxIiwgIlBEMiIsICJQRDMiLCAiUEQ0IiwKICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJQRDUiLCAiUEQ2IiwgIlBENyIsICJQRDgi
LCAiUEQ5IjsKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBmdW5jdGlvbiA9ICJsdmRz
MCI7CiAgICAgICAgICAgICAgICAgICAgICAgIH07CiAgICAgICAgICAgICAgICAgICAgICAgIAog
ICAgICAgICAgICAgICAgICAgICAgICBsY2RfbHZkczFfcGluczogbGNkLWx2ZHMxLXBpbnMgewog
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBpbnMgPSAiUEQxMCIsICJQRDExIiwgIlBE
MTIiLCAiUEQxMyIsICJQRDE0IiwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICJQRDE1IiwgIlBEMTYiLCAiUEQxNyIsICJQRDE4IiwgIlBEMTkiOwogICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGZ1bmN0aW9uID0gImx2ZHMxIjsKICAgICAgICAgICAgICAgICAg
ICAgICAgfTsKICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAg
IGRzaTBfcGluczogZHNpMC1waW5zIHsKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBw
aW5zID0gIlBEMCIsICJQRDEiLCAiUEQyIiwgIlBEMyIsICJQRDQiLAogICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIlBENSIsICJQRDYiLCAiUEQ3IiwgIlBEOCIsICJQRDki
OwogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGZ1bmN0aW9uID0gImRzaTAiOwogICAg
ICAgICAgICAgICAgICAgICAgICB9OwoKICAgICAgICAgICAgICAgICAgICAgICAgbW1jMF9waW5z
OiBtbWMwLXBpbnMgewogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBpbnMgPSAiUEYw
IiwgIlBGMSIsICJQRjIiLCAiUEYzIiwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIlBGNCIsICJQRjUiOwogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGZ1bmN0
aW9uID0gIm1tYzAiOwogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGRyaXZlLXN0cmVu
Z3RoID0gPDMwPjsKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBiaWFzLXB1bGwtdXA7
CiAgICAgICAgICAgICAgICAgICAgICAgIH07CgpJdCBnb3QgbWlzc2VkIHdoZW4gbXkgZW1haWwg
c2VydmVyIHJlZnVzZWQgdG8gc2VuZCBhbGwgdGhlIHBhdGNoZXMuCkkgd2lsbCBzZW5kIHRoZSBy
ZXZpc2VkIGZ1bGwgcGF0Y2ggc2VyaWVzIGFmdGVyIGZpeGluZyB0aGUgY29tbWVudHMuCkFueXdh
eXMgYWJvdmUgYXJlIHRoZSBwaW4gZGVmaW5pdGlvbnMuCgpUaGFua3MsClBhcnRoaWJhbgpodHRw
czovL2xpbnVtaXouY29tCmh0dHBzOi8vd3d3LmxpbmtlZGluLmNvbS9jb21wYW55L2xpbnVtaXoK
CkxpbnVtaXogR21iSApBbSBIb2hlbiBSb3R0IDksIDM3MTcwLCBVc2xhcgpSZWdpc3Rlcmdlcmlj
aHQ6IEFtdHNnZXJpY2h0IEfDtnR0aW5nZW4sIEhSQiAyMDc4NDAKR2VzY2jDpGZ0c2bDvGhyZXI6
IE1hZGFuIFJhaiBNb2hhbnJhagoKPiAKPiBDaGVlcnMsCj4gCj4gUGF1bAo+IAoKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
