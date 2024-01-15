Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92297C3DA79
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jan 2024 22:31:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ENpCLiCLMvAY/40gmeZG3h6vQ0u8cG5NHao8KRQBQxk=; b=U0EboiOHOrmaYxLLL+lj3M/dty
	YfpxY/QyqWqncFYOy/E6qFRTUAqjv2vZqOSY7QoI1lmHRBR2GfVWsRucMd1QYXRjodoIlS1haCNVK
	HOOEpb4M96XuKXbYARZVpd9Kieq/Y/2PBDH0zagUh0OqL4ZifgPbGluMtJYBaRrHoqKzEx0pLwlsV
	9jX2zifp0NCTjbzp3HpFddn5Bs3oWN8JIVQOzSajnZFqFYCHBy9QtaPeiotdFAhyRVnvh3Dnel7yD
	Etm4ytFn9WpBcY132eUnDifZX9JeXSMZZc/xiyDCOlNrk69VYvsmQZkiqpcg656k2guS+iEaK30oy
	rBpZsXkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPVUP-00AIkP-0V;
	Mon, 15 Jan 2024 22:31:29 +0000
Received: from mail-he1eur01on070a.outbound.protection.outlook.com ([2a01:111:f400:fe1e::70a] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPVUK-00AIjj-2a;
	Mon, 15 Jan 2024 22:31:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=neWrLDfLuZGYCCpfp6EalCwCPh5Y65lyVBE4mbffDzqIgKouvD86ypy39JexA4w3SCeXxt1EJdIGa/mwmU70BQ3UM3GnK0FuamagfFjKwBnoH5mFX43xKV3WsHQEORD3EnwtdIIwcUpxt5h19oVFoIaUXR9LqM/GrUqZiByWqqUHvUZqWeZlfQZWfbMWxiG8zuQHsOf0je2ayZ7N+gIq2sIFxr/INxKiI5NXeqb1JSiqsyJ/dI6P0CahK8yIZmbdFtuidUFlJxE9NI92QVn/13WkjXpaLoiTmxOzDBizWCoJa8+h1AqJyuxeiV523U0Zr6yml8VgRxnpnmlzhC6hng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+QTl0O/f2VIvEidNODRaEcebBWX0rCI4I68ZXLsxDWg=;
 b=l1kucPMhbqYmBn4XqaktP0mVjbnSSpVHHMS2WgcJDyTc/5s+p7hbGzP4p9NqrRtenAaDRI4G6hyDZNbRsBDPO4/mSCRLjrZT7VLRQioG3VWHs39FXLctg6mbMZaYP73x2TDwe2F6nVypRBsz9wkLes0FoIHfppr4m/6Sbl6LWTIj75cTgqUs5uejxH/6StUVZKFzH/mzNDdtT1C4OYXxmRTJUJsjIH00v5TZO59z+6WZlIx0uC8BT1Zw00r82h1Z/X2bJl5T7HdnpCKwpGuCCSO+T6chqxo8Oqs7N/U3ujr0Jdj1HursSs6GtryXJvGfxnhrbWKTYnias0H8VAhnog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+QTl0O/f2VIvEidNODRaEcebBWX0rCI4I68ZXLsxDWg=;
 b=GeILUdNQbFLUjKKBB/Rn/LszSnLBO+gzA4eXLBWIOWgOmuAUJ5BfFb4r3bHoJLEfETenPrlnp/YdoC6B8GhW72ejq1fr9m3xZ1bfgZXV0dRGNEYR7hAZW/vcCOrbQ688qBl6ezWJAWenmPPzaBEsZWU6WwhA0L8Pr1YLdH1SH3s=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axentia.se;
Received: from DU0PR02MB8500.eurprd02.prod.outlook.com (2603:10a6:10:3e3::8)
 by VI0PR02MB10535.eurprd02.prod.outlook.com (2603:10a6:800:1b8::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.26; Mon, 15 Jan
 2024 22:31:14 +0000
Received: from DU0PR02MB8500.eurprd02.prod.outlook.com
 ([fe80::4c56:a71b:d42d:11ba]) by DU0PR02MB8500.eurprd02.prod.outlook.com
 ([fe80::4c56:a71b:d42d:11ba%3]) with mapi id 15.20.7181.027; Mon, 15 Jan 2024
 22:31:13 +0000
Message-ID: <c147ae1b-87cc-52b1-4ec7-684d5e7cc5db@axentia.se>
Date: Mon, 15 Jan 2024 23:31:10 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 04/14] mux: mmio: Add resume support
To: Thomas Richard <thomas.richard@bootlin.com>,
 Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski
 <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Haojian Zhuang
 <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>,
 Janusz Krzysztofik <jmkrzyszt@gmail.com>, Andi Shyti
 <andi.shyti@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Tom Joseph <tjoseph@cadence.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-pci@vger.kernel.org, gregory.clement@bootlin.com,
 theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com, u-kumar1@ti.com
References: <20240102-j7200-pcie-s2r-v1-0-84e55da52400@bootlin.com>
 <20240102-j7200-pcie-s2r-v1-4-84e55da52400@bootlin.com>
Content-Language: sv-SE, en-US
From: Peter Rosin <peda@axentia.se>
In-Reply-To: <20240102-j7200-pcie-s2r-v1-4-84e55da52400@bootlin.com>
X-ClientProxiedBy: GV2PEPF00003830.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:144:1:0:5:0:1c) To DU0PR02MB8500.eurprd02.prod.outlook.com
 (2603:10a6:10:3e3::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR02MB8500:EE_|VI0PR02MB10535:EE_
X-MS-Office365-Filtering-Correlation-Id: cb70fa68-84d2-4963-b4ea-08dc1619ae6a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: m0YZiRNLMrMocaIoLNxIeq31qLvuGArwGzit5a6BX+g/ar4UZsvcHrkR3MwJ7GFlg45zVIJov+4newfnfZtLhiXkYZtxaqMpHOS1CBiWWhdMQvG31XQJIxGufhIFitfCEuhzmUVD24uSyYQ0jhttciOwJuIgCsLVwefv3+QAbomoa70Vv/DheJs6rra4Y520UD5DEzViENJP4ekZ/z5e78d7ncEj1zcrrS6HMyLVt/Jjurb8eGIlM2D5GATBy1eHNEgmJXtXYCbqdsapOeJFKPwBpuMmUbcJilDUV4I1y8+GQn1wVjBp7hFKuU3qEqAo+iq9Ug4uGHhQuk10kY9a9NWzAi7WUp/ztd1NXlZNg0WUCy9CK0PS7SuST6CE+423PbmRkHPqHZc015730a4xQQbz4vNEa3TGl5W0wd50E0YzkNAc4BuNphbx2+78sBOTWakd/sxU3Di/o17KHRIBSbmMTKfJaF+EPeY8fAYNrMkxqeaBnIUKfVw0PICphzamDQ5VuQ+SZV8+GPrTdbmjCg/pOOJuMPns6ix5i/ZC37kZumHPTrIJCsBgQ9PMmZNk8cMoPyD3u2g1tz1qTlbkv+YFd2TfPdUmcMw7edwpSEn6rXKE3fdgQdfBYHiOFKldL/6R/kk4riweqH4gWAecBBrjkL9pcVFGwxyHgpIYm20=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR02MB8500.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(396003)(346002)(39840400004)(366004)(136003)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(66574015)(83380400001)(2616005)(66946007)(38100700002)(8676002)(5660300002)(8936002)(6512007)(4326008)(41300700001)(7416002)(478600001)(26005)(6486002)(6506007)(921011)(66556008)(110136005)(66476007)(316002)(2906002)(36756003)(86362001)(31696002)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QnVGRlU3Z2E4K2VjVlVjcGpSbmxnVE41VWRSTzkzUTdGVXhzT0ExdDk5dSti?=
 =?utf-8?B?UW8zZi8zZlgrMDdZdGZ2TXpzN0Z3cnNuWkJPc21OK0Y1bjdvK0pQUElGZ2ZO?=
 =?utf-8?B?M3pGWjJKZFhJdHk5bm5RRVhORS9mVEE1aWpSSEdkd0R1WjM5dHVqLzBnZEZJ?=
 =?utf-8?B?NnRkQ2JtYTVFanpIcVpkSWx1QVJJd1JQMEptZUM4MHlVRitrYS8rK28rdzVj?=
 =?utf-8?B?ZUMrdVNDVWVEUzNZZzlyM2UxT1NDeE5XaXRFczNIc1E2U0RmbjBIaTBydnVN?=
 =?utf-8?B?Ty8zQ2QrUHJjbFZIRXVoOXVqNnVrYzh3eUZMQVowTEI3N0ZKVEhlRUswdytF?=
 =?utf-8?B?ZmlORzZTZnpwVXF6T3EwZTZwSXZreDR1dDBsaDJ2UDhycjlqcmp5b01heTdh?=
 =?utf-8?B?TUlNVWhKUjBIaUt4WnN0cFMvbW91cytGTDN3U09OaVpXQW9lTG0vd1pvaDBZ?=
 =?utf-8?B?Yi9TMEpEZWY1RGJ0ZlNkL0FJbS9YY3RBSTJIa3Y4cG1PMEQwQlBIM3RlUE9E?=
 =?utf-8?B?NUFMenRSVUM0UTNaNXBDRzIwN0QvL3U5RGtuU2Fpdzg2UDNvQUFuOHlNM2s5?=
 =?utf-8?B?Ukl4Tmo5TmZiOEdHcXJneXh1OTRKZFlQR3N2SnRlUGF1bWw2WGN5dWtoWStL?=
 =?utf-8?B?NE5qSEdvdmdvZXZYTllTTnVYSHFRUFhVSXl3RE1PWEFWTVZueVVYMFE1WmY3?=
 =?utf-8?B?c1BROWlsemhKWFVNTzRJUmhROEpvQXBzUDFDMWIwdEkweERwbVhiTUZmYXd4?=
 =?utf-8?B?eU5TVytXRW9sT3pYbFNPWVRod3FKdXI1dVAvT3VGMFJpSFh6Y3Brdk96aE8y?=
 =?utf-8?B?bkMrSE5kT1ZFcCtGUkphRkI3Qk9IVlp1dGkzRWFHdUo3N295eUE4VExvaFR0?=
 =?utf-8?B?WE5oMEpCVHI2WEN0OGV0cE1mRkVQVU9NRGFJc3kxaVZzQzVEYVFjQUJFL3p1?=
 =?utf-8?B?bEtZeG81QlZIbTRYTlZNL0N1QktrRTFSWTNPVWdNWnZNQXJFTVBuZ20zS0dj?=
 =?utf-8?B?WlZhR0pPYW44T24rc0xMbnRGUUJlN2JBUGMrRjcyYzlKaC9vU2oyOXZteWcy?=
 =?utf-8?B?QnF5OEt6WkhEdjhuTWlZN1pQWjh4Y2FNNU9jSzBuVTloTGRNRHUzQVc5UXFB?=
 =?utf-8?B?TENjeVMrMnlOY1Fic3haU056RDhGL3dUZVozL21EVzNDMVEvMlpCNWdheTV3?=
 =?utf-8?B?YkY4ZTFTbzNubzEwM2JZK3ZHMFZBeHgzQUlEWTZJOVBsODQrTFVPQlVQaEdQ?=
 =?utf-8?B?NDJZMW9pb002SEN6Z0sxak51Nklqb29iRldWNTJMeDd3cEpBNHhGdkovVHpw?=
 =?utf-8?B?dkVpOHEzQStyUXdlSjZQeC9razdqUEhSNUUyVU5rRkE2a3Uvb21NaDhRZmI1?=
 =?utf-8?B?U1Rpb1FTYjU5R3dxMU9TaHgyMVpaVDdyWnNuZDIwY1JPWmNSVGUxd2VyL2Zn?=
 =?utf-8?B?L2VmZnpsM0xSaVdXR2QxMHZJNHRxRmkvSjVXMk9iSGRRT2Zac2lReDZ6RDFr?=
 =?utf-8?B?WkRxQ2JUZkRLaHdGb1ltR0xGbG9Ua1RZMlpHd0g5SkRaTEt1QXlLQnNoTWo3?=
 =?utf-8?B?bk1XY2t2RWZOclZ5ZERmTVVyYlV5THVKeGI5Um9NdWdreFgybFlDQm5QM1hN?=
 =?utf-8?B?L3FkT1YwK0ttTVlJaTV3UFJLbVhaREtRTEFoWUk0Ry9PUEtQSnNQWEhKZDJF?=
 =?utf-8?B?dExkUVJKNFhQWGVQVHY0NDRLT2lvS1VFdTg5TEV2VFlDaUF6RkNmM3VoWlJF?=
 =?utf-8?B?MGsvMnFOR0lPM2R6eStTd1lzcFV1U1lDSGd1L1Z4dEJEWS9qc0hEMkkyWm1G?=
 =?utf-8?B?MGYyQ3k3THpXTGk5bko3bzQvVUZUMHpmZjB0blgvYUh0Q3lJb3QrRHJBaDBD?=
 =?utf-8?B?RXlSRDdlS1hDdDEvd21xODJndU1VTWtsT2Frb0MvRlFJL1ZVbDQvZkxUQUdM?=
 =?utf-8?B?SWhUTkdMU3JxUUR5Z1Z2NEk2QmYrVE9Zb3I1azMxUVF4QWdJWnZEUzJXbUtC?=
 =?utf-8?B?TkVkaGpyZ0JjWEUrN3U5SDNxc0M1a3U1QkdwZkM5UzVRK2xKTlZXQ3I1U1gz?=
 =?utf-8?B?UnNTTU9va240Q1kwSlpyNCtMTnBVRGVNSXYwV3ZsbEo4c0tmVDN4QnNlWXBv?=
 =?utf-8?Q?YfpAVvwRYTuzzv5K842jzkoRa?=
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: cb70fa68-84d2-4963-b4ea-08dc1619ae6a
X-MS-Exchange-CrossTenant-AuthSource: DU0PR02MB8500.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jan 2024 22:31:13.7393
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bhydkCJxfHzwjonOSyo0e3X3H5e+fm3TparmHQlrVViUiB56e5PPEalqtqJUTtec
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR02MB10535
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240115_143125_487630_EECFD170 
X-CRM114-Status: GOOD (  26.11  )
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

SGkhCgoyMDI0LTAxLTE1IGF0IDE3OjE0LCBUaG9tYXMgUmljaGFyZCB3cm90ZToKPiBGcm9tOiBU
aMOpbyBMZWJydW4gPHRoZW8ubGVicnVuQGJvb3RsaW4uY29tPgo+IAo+IEltcGxlbWVudCByZXN1
bWUgc3VwcG9ydAoKV2hhdCBBbmR5IHNhaWQsIGFuZCBwbGVhc2UgZG9uJ3Qgb21pdCBwdW5jdHVh
dGlvbi4gVHJ5IHRvIG1ha2UgaXQgYQpwbGVhc3VyZSB0byByZWFkIHlvdXIgcGF0Y2hlcyEKCj4g
Cj4gU2lnbmVkLW9mZi1ieTogVGjDqW8gTGVicnVuIDx0aGVvLmxlYnJ1bkBib290bGluLmNvbT4K
PiBTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgUmljaGFyZCA8dGhvbWFzLnJpY2hhcmRAYm9vdGxpbi5j
b20+Cj4gLS0tCj4gIGRyaXZlcnMvbXV4L21taW8uYyB8IDM0ICsrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDM0IGluc2VydGlvbnMoKykKPiAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9tdXgvbW1pby5jIGIvZHJpdmVycy9tdXgvbW1pby5jCj4gaW5k
ZXggZmQxZDEyMWE1ODRiLi5hYjRlZjE5NWZjMGQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tdXgv
bW1pby5jCj4gKysrIGIvZHJpdmVycy9tdXgvbW1pby5jCj4gQEAgLTEyNSwxMyArMTI1LDQ3IEBA
IHN0YXRpYyBpbnQgbXV4X21taW9fcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikK
PiAgCj4gIAltdXhfY2hpcC0+b3BzID0gJm11eF9tbWlvX29wczsKPiAgCj4gKwlkZXZfc2V0X2Ry
dmRhdGEoZGV2LCBtdXhfY2hpcCk7Cj4gKwo+ICAJcmV0dXJuIGRldm1fbXV4X2NoaXBfcmVnaXN0
ZXIoZGV2LCBtdXhfY2hpcCk7Cj4gIH0KPiAgCj4gKyNpZmRlZiBDT05GSUdfUE0KPiArc3RhdGlj
IGludCBtdXhfbW1pb19yZXN1bWVfbm9pcnEoc3RydWN0IGRldmljZSAqZGV2KQo+ICt7Cj4gKwlz
dHJ1Y3QgbXV4X2NoaXAgKm11eF9jaGlwID0gZGV2X2dldF9kcnZkYXRhKGRldik7Cj4gKwlpbnQg
Z2xvYmFsX3JldCA9IDA7Cj4gKwl1bnNpZ25lZCBpbnQgaTsKPiArCj4gKwlmb3IgKGkgPSAwOyBp
IDwgbXV4X2NoaXAtPmNvbnRyb2xsZXJzOyBpKyspIHsKPiArCQlzdHJ1Y3QgbXV4X2NvbnRyb2wg
Km11eCA9ICZtdXhfY2hpcC0+bXV4W2ldOwo+ICsJCWludCB2YWwgPSBtdXgtPmNhY2hlZF9zdGF0
ZTsKCllvdSBhcmUgbm90IHN1cHBvc2VkIHRvIGxvb2sgYXQgKG9yIGNoYW5nZSkgY2FjaGVkX3N0
YXRlIG91dHNpZGUgdGhlCm11eCBjb3JlLgoKPiArCQlpbnQgcmV0Owo+ICsKPiArCQlpZiAodmFs
ID09IE1VWF9JRExFX0FTX0lTKQoKVGhlIGNhY2hlZF9zdGF0ZSBjYW4gbmV2ZXIgYmUgTVVYX0lE
TEVfQVNfSVMuIFN1cmUsIGl0IGhhcHBlbnMgdG8gaGF2ZQp0aGUgc2FtZSBhY3R1YWwgdmFsdWUg
YXMgdGhlIGNvcnJlY3QgTVVYX0NBQ0hFX1VOS05PV04sIGJ1dCBhYnVzaW5nCnRoYXQgaXMgYWxs
IGtpbmRzIG9mIHdyb25nLgoKPiArCQkJY29udGludWU7Cj4gKwo+ICsJCXJldCA9IG11eF9tbWlv
X3NldChtdXgsIHZhbCk7Cj4gKwkJaWYgKHJldCkgewoKSWYgbXV4X21taW9fc2V0KCkgZmFpbHMs
IGNhY2hlZF9zdGF0ZSBlbmRzIHVwIHdyb25nIGFzIGl0IHNob3VsZCBiZSBzZXQKdG8gTVVYX0NB
Q0hFX1VOS05PV04gb24gZmFpbHVyZS4gTG93LWxldmVsIHN0dWZmIGxpa2UgdGhpcyBuZWVkcyB0
byBiZQpkb25lIGJ5IHRoZSBtdXggY29yZSwgb3IgdGhpbmdzIGJlY29tZXMgYSBtYWludGVuYW5j
ZSBoYXphcmQuLi4KClNvLCB0aGUgbWVhdCBvZiB0aGlzIGZ1bmN0aW9uIGJlbG9uZ3MgaW4gdGhl
IG11eCBjb3JlIHNpbmNlIG5vbmUgb2YKaXQgbG9va3MgbW1pbyBzcGVjaWZpYy4gSXQgY291bGQg
cHJvYmFibHkgYmUgbmFtZWQgbXV4X2NoaXBfcmVzdW1lKCkKb3Igc29tZXRoaW5nIHN1Y2guIFRo
YXQgbWFrZXMgaXQgc2ltcGxlIHRvIHVzZSB0aGUgY29ycmVjdCBjb25zdGFudCwKYW5kIHRoZSBt
dXhfY29udHJvbF9zZXQoKSBoZWxwZXIgbWFrZXMgaXQgZWFzeSB0byBnZXQgdGhlIGhhbmRsaW5n
IG9mCmNhY2hlZF9zdGF0ZSByaWdodC4KCkNoZWVycywKUGV0ZXIKCj4gKwkJCWRldl9lcnIoZGV2
LCAiY29udHJvbCAldTogZXJyb3IgcmVzdG9yaW5nIG11eDogJWRcbiIsIGksIHJldCk7Cj4gKwkJ
CWlmICghZ2xvYmFsX3JldCkKPiArCQkJCWdsb2JhbF9yZXQgPSByZXQ7Cj4gKwkJfQo+ICsJfQo+
ICsKPiArCXJldHVybiBnbG9iYWxfcmV0Owo+ICt9Cj4gKyNlbmRpZgo+ICsKPiArc3RhdGljIGNv
bnN0IHN0cnVjdCBkZXZfcG1fb3BzIG11eF9tbWlvX3BtX29wcyA9IHsKPiArCVNFVF9OT0lSUV9T
WVNURU1fU0xFRVBfUE1fT1BTKE5VTEwsIG11eF9tbWlvX3Jlc3VtZV9ub2lycSkKPiArfTsKPiAr
Cj4gIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIG11eF9tbWlvX2RyaXZlciA9IHsKPiAg
CS5kcml2ZXIgPSB7Cj4gIAkJLm5hbWUgPSAibW1pby1tdXgiLAo+ICAJCS5vZl9tYXRjaF90YWJs
ZQk9IG11eF9tbWlvX2R0X2lkcywKPiArCQkucG0gPSAmbXV4X21taW9fcG1fb3BzLAo+ICAJfSwK
PiAgCS5wcm9iZSA9IG11eF9tbWlvX3Byb2JlLAo+ICB9Owo+IAoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
