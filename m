Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCF6DC48BC3
	for <linux-phy@archiver.kernel.org>; Sat, 17 Feb 2024 13:46:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yAOtpwBB1N7MrBCXYWqMGzItVo7A9u5QNOzMsUjGhlU=; b=y33V7LYz/cQiv/Oke0bcV1FfFV
	gMcV5dWH2VrCf6OD9fodsyUxS+/yRjeCNxmJDc2CUtcZiBBG3yReFKqvhkf/BkeROKiT8I5WVWW0N
	SM/gwLImk+mSLbnf47L1v67AuFmhMz0/E6Fff6w9D27RbpeWj/7eCV5VJ1Q8D+a41yk53JEh0WqY6
	e7aRw/VB/yAHLbxzCbD5QLKwx+A2kf5cIIL+zD5OUbsD10CYlqTKhLrrLk+OAiGORvSzXq3oMP6bH
	afzrtjM+dKCKLhSnlfbnoQBpT8/9gZg3Em8sZadRdQUIyDO0mHRm3TvloSMr1DtenYGGHsaQAmdlh
	DcEyFi/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbL1g-00000005lhQ-1sDj;
	Sat, 17 Feb 2024 13:46:44 +0000
Received: from mail-sgaapc01olkn20821.outbound.protection.outlook.com ([2a01:111:f400:feab::821] helo=APC01-SG2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbL1e-00000005lg1-158j
	for linux-phy@lists.infradead.org;
	Sat, 17 Feb 2024 13:46:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ewG9ewkW0kOENqpGnv8j8o1mjV0+coUCS6S2PN4yXVMXTSBkN+g+3CjHFz47cECdoAatNnTB44ybTcPL7a/cO9/OC+wyRv8oKfNuBgSSjLP/MUL+zp7aGwwlDqcfcEwB7XOdXwhXMJHUtjRPuegFhANbZzcOYilqTXqUYhCE12t0yHi7MTKIHxN4BuPgaLaKRa5x79HVyoo3zL4J6XFRPlBJcHIpjOgZ37Zrn5DeUK9mnljQGAQtLSvQ2gKYyK904fDT2q08l0vmqQ1n+SFypF0dMuMFtS/ucG1CWafOXphhh5CnGKKJhF8jRsd4w3D6TpcQitOEL908bOeWqfm/Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bD7x1ZE+ecHpnA3Zc+yVQ1ZNQhRtdRrO9T0COkxdbKw=;
 b=Um/2Ulsfl1DNe691TgFOFlj6aCtE9iVC5c5kzHxNuzWiBQ7geKjpBE+81/zD+yX0Kn0GmecjHLa++GLqLzF6pyg5vuNKImziEo7G5QMnUW98l00d+pCfFA5+G6JKr9PsfIIz6gYQWacg9zpVpz2EHn66t4Z4KwS+IzD2cPqooOMjcyTe0sEIrsPkHkMMSdhXy5sTNjc4yyxvMMo73qZvu1mORz6/xM5esAihkmI+a+Zb3mjp8IRf420z28iyF2s5nk/mwLi3bzzyv9WVpO1U/eUwzoxUmGw0xcPrlhB8tPqO3LAUiLJxA82iV9vfq1kCCFbnH01vhvNUyKnDb4JXVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bD7x1ZE+ecHpnA3Zc+yVQ1ZNQhRtdRrO9T0COkxdbKw=;
 b=Mle11lROGRQWrkUIIykrVO5SYO9KERLE+OM+YzC9p7dopbufhUeT0b8jScQjQ2BQHaYctncDcsWSsz04eRvbAE+wgNfG7A4INulrzcwUK+RTJ9V/oPR8U+/p7FfUcuaaUwj8FGcaXLPNjGJad+/kHa6vnCavKlvTZfqKdHwl/INg22ATQ6csVUsfGRC/1+Nt+/Wf3S/6UBPpK/XJ+8l8lhu0riiyCp7zLML9LlvbmMoGujeKVltdh/UsOAro3DTHLYGISrP6PW+TOOA5GIcUTGhR4k+oTLBQfHppHfJ+5R7tLW1HW/ph6TNYjItyhEhrJkv+lPdAEIFxep7y+fOaKA==
Received: from SEZPR06MB6959.apcprd06.prod.outlook.com (2603:1096:101:1ed::14)
 by JH0PR06MB7054.apcprd06.prod.outlook.com (2603:1096:990:68::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.31; Sat, 17 Feb
 2024 13:46:25 +0000
Received: from SEZPR06MB6959.apcprd06.prod.outlook.com
 ([fe80::9a6b:d813:8f4b:cba1]) by SEZPR06MB6959.apcprd06.prod.outlook.com
 ([fe80::9a6b:d813:8f4b:cba1%4]) with mapi id 15.20.7292.029; Sat, 17 Feb 2024
 13:46:25 +0000
Message-ID: <SEZPR06MB695993BA7C54A2D5B19AAB7496532@SEZPR06MB6959.apcprd06.prod.outlook.com>
Date: Sat, 17 Feb 2024 21:46:16 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 1/4] dt-binding: phy: hisi-inno-usb2: convert to YAML
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Jiancheng Xue <xuejiancheng@hisilicon.com>,
 Pengcheng Li <lpc.li@hisilicon.com>, Shawn Guo <shawn.guo@linaro.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 David Yang <mmyangfl@gmail.com>
References: <20240216-inno-phy-v1-0-1ab912f0533f@outlook.com>
 <20240216-inno-phy-v1-1-1ab912f0533f@outlook.com>
 <63b3eff6-49eb-46f3-a6d9-878eddf6de53@linaro.org>
 <SEZPR06MB69593B898A42192D134B01A896532@SEZPR06MB6959.apcprd06.prod.outlook.com>
 <dfecd473-dcc1-4977-901d-6c7bb615bc97@linaro.org>
 <SEZPR06MB695983231D04A2E1947AF61896532@SEZPR06MB6959.apcprd06.prod.outlook.com>
 <712f8904-4b63-4a3b-8135-f17f41bbb501@linaro.org>
From: Yang Xiwen <forbidden405@outlook.com>
In-Reply-To: <712f8904-4b63-4a3b-8135-f17f41bbb501@linaro.org>
X-TMN: [W9Cymd93jNzxM7u/a0GCK9wMfWBb62jTER71+AFnrpggTEObRGbHPgNW0PxpXgYGfGWRVlggkAw=]
X-ClientProxiedBy: TYCP286CA0254.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:456::8) To SEZPR06MB6959.apcprd06.prod.outlook.com
 (2603:1096:101:1ed::14)
X-Microsoft-Original-Message-ID: <95ed61ca-38ba-4fa3-85c9-3219029edd86@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SEZPR06MB6959:EE_|JH0PR06MB7054:EE_
X-MS-Office365-Filtering-Correlation-Id: e6fbe64e-63fb-406a-f3b2-08dc2fbed53e
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hlDwM0zymNECVKF855XsazTtOBrA37vTylM5GI2x7h8Cz+NqGNHIGL+UZO4uD/qSmHFixyVfwUeHexSmISRaHGe7yJd8Jp5C0Z7QDrXS6IxA4qyCtmjs+Z8y6RvNjTMAK4ls27JJt5OVGFyiyRUZhnBYwkbKOOnsrtUYs6wYFvw+Pr+y5PrTOGWWx/xMdafLtZmAd9ikAKmtRHah3QDhNBjBtp1j1ztvA6bV0vl6HBpkoWjfkOELlAXCekH/TG0UynmCs7MpGun+1g/qU/SUEu6D8OjHRBgKrcpyi51JKZxiVG1gBG1yEKyn/qo8rA+I5tF30SImsSv8MS6anOwj4qxvWCjVMjpeLVoV2pitOOF97SLGSq54BLn9WyLtAL+Z5app7/SMaATSTY5L7QeFfgF7N9ATYt5VFWiwI6omp2ot0QN6fQq7CViICmgJtXUYFHoKSI5sUYemUiJQ/ElrBepTM+NnJGVQVSAFKlMFOs+Mf1lwaKF4OhyrYTFiN9o4331U0bsA5hVbZ0X5hdCtYAASG1lIp+p9kf+ZMgqURVqJ5k2Lu2zMBrPiADd+uCuu
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cmFNT3VHVWxNeDd5SjJac0FBVVdHQjBRM3dpam1mdE5ydWJZakFuYXhSd1E4?=
 =?utf-8?B?dXJ4Qjk2eFN1Z3dsRFU4Q3h6UG1KVG9WdVVPNEtCT08vclc5Y0t6Z3RwYjds?=
 =?utf-8?B?Mk9uYXhNb1dRaHdoVU0yUWdERWhIUXE1ckczOVNFWXA2TTdxQWJYbGJHSExE?=
 =?utf-8?B?Ry8xNk1DU00xUWRKeGNzMFBlN3B5L1oxcHY1RHBUNGhBbkNjcFhEeWhZMTE1?=
 =?utf-8?B?dTZjQTQ5WndUWWZwRG9vYnl2c2FuTDB0RlBjZVAzdkg0VEpPT1hzN1E5amxU?=
 =?utf-8?B?NHFIVTJ3Z3NabEVLZ3p3Wm1JRldPMDlnajhmVUhpdmY4L29ZWXZHWC9iaXUz?=
 =?utf-8?B?TzNTK2FSaFBlcFVybWlUMGppb2M1WTZUL2gySVh0VmpGZW9KS2xscGs0NDVZ?=
 =?utf-8?B?dVd1L2Z5QUNWN2NpUEoyaHo5MGtWNWtKSEJCZVNMclozeS9uYmt5ODRxcmZZ?=
 =?utf-8?B?TnRXT1IrZjU4STRYWklnaVVjdzBNblczajkwWVdXNDNpeDZUdm1nNXh4Y21J?=
 =?utf-8?B?c2NnajBqZnYzOGkwR3ZLWnZseW1uRUVhTDhIaFhZUXFTbjZGSXFtRk8xaUVV?=
 =?utf-8?B?VzFkL2ZoY0JTS0hwUklkaWhvQWpQM0c3MW43eHhoQVowKzlqdTk1WVF4T0JF?=
 =?utf-8?B?aUt2b2hrRHlCSWgxQlhqbVNvTGEvTmFXc3lRSzlhc1BQSzFyVkRlcHVFNEhN?=
 =?utf-8?B?NFgwZjVITnd1d2ZScWxBK0ErRU54V3gyZHhBY3cyV3NEWDdsS1NaYjhRMUlX?=
 =?utf-8?B?a09kQlBhcnZrMzBmeHphMzdtVmZRMnN0UitIUUgyTytVT0NNK05NbTc3Rkwx?=
 =?utf-8?B?NzlTKzFGcFFoSmNkaTh6RFJIaU55ZHFYMlo3ZFliNlJiVjJIT1pRajRKWjBj?=
 =?utf-8?B?cUFPcVZGUEtENjNDYW5pY0JMZ1VkU1I1bWxURE82cEdXUHVBeWJCT0RCWGRk?=
 =?utf-8?B?dERaL3lOVXpBZG9oVWFTTWczcHc5NjRFb2taUnZPK013eXpOTXVnUm8veHhP?=
 =?utf-8?B?U1VMNXZNZjZ0bFlKd1pTdEdidUpZcWJBaWtsWk1RbEJabGdESXp4UVMydlBi?=
 =?utf-8?B?NHBnaFMzY2ljUDIvNS9jaldiU2htQlp2NGRnbWw4Qmc3Y0s4aEFLeGlheTBL?=
 =?utf-8?B?YkN5bDRIdjJGeGR0dWxTMlZ0bFJRVnZ6Z3VuUWQ5YThwdGxpVWZyN0Q2M0FW?=
 =?utf-8?B?NE8wNTh2dTRSVXJDeDJLL0NzTCtneXhxNFZKOC9TSmN4ZVVMcnpZOGtvM1Zl?=
 =?utf-8?B?dXBGRWUySU1PUm95WG1kcnEwUk5ka2dWSkdETXVabXl3MDlad0xHdXhBZ0l5?=
 =?utf-8?B?blNoaTIvanVXeFNkRFVlZDd1NmlaRkw2MVhkNDQ1U1hZSmpOMHQ4WFl6M0RU?=
 =?utf-8?B?NFFyZFBXSlZ5a2NPbUVBV0thd2ZPWjV1U3NEWEl1TEtJL3k0NVQwK0sxaE5E?=
 =?utf-8?B?Q1NaM2JDU2Q4TlYxZnhjam4zby9LcDhaSXFTMnY5U3pFUGlod2lza2FNd2ho?=
 =?utf-8?B?c2ZUZFhON0ZyZGY1QWdmL3pzakRBZkhKaTZmRFUwT3dlQmV5OHJLbTVTQ0tT?=
 =?utf-8?B?SVQxMEtldTVWei9ieHJaM3JzRXJkaE96VzliWVdCbjRvZkIyL3F2UEdLZjBz?=
 =?utf-8?B?Qk1BTy9nYnBsYTJXN3VmdnNpOUhPejR4eFY5WGs0dVpJQUZDTk5wRVRMMEpV?=
 =?utf-8?B?TzFPRHl4azh3TXRicnpkcGNnZFNJbndVekZUMWl4OVBxWE4zbGtKbG1Wd0tE?=
 =?utf-8?Q?XJure9WWX3hW5MWPNfzkcNvPNqvYbjRQt956uJQ?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6fbe64e-63fb-406a-f3b2-08dc2fbed53e
X-MS-Exchange-CrossTenant-AuthSource: SEZPR06MB6959.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2024 13:46:24.9135
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JH0PR06MB7054
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240217_054642_411597_293D12B3 
X-CRM114-Status: GOOD (  16.12  )
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

T24gMi8xNy8yMDI0IDk6MzkgUE0sIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gT24gMTcv
MDIvMjAyNCAxMTo1NCwgWWFuZyBYaXdlbiB3cm90ZToKPj4gT24gMi8xNy8yMDI0IDY6MjkgUE0s
IEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4+PiBPbiAxNy8wMi8yMDI0IDExOjI0LCBZYW5n
IFhpd2VuIHdyb3RlOgo+Pj4KPj4+Pj4+ICsKPj4+Pj4+ICtleGFtcGxlczoKPj4+Pj4+ICsgIC0g
fAo+Pj4+Pj4gKyAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvY2xvY2svaGlzdGItY2xvY2suaD4K
Pj4+Pj4+ICsKPj4+Pj4+ICsgICAgcGVyaXBoZXJhbC1jb250cm9sbGVyQDhhMjAwMDAgewo+Pj4+
Pj4gKyAgICAgICAgY29tcGF0aWJsZSA9ICJoaXNpbGljb24saGkzNzk4Y3YyMDAtcGVyaWN0cmwi
LCAic3lzY29uIiwgInNpbXBsZS1tZmQiOwo+Pj4+Pj4gKyAgICAgICAgcmVnID0gPDB4OGEyMDAw
MCAweDEwMDA+Owo+Pj4+Pj4gKyAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4+Pj4+PiAr
ICAgICAgICAjc2l6ZS1jZWxscyA9IDwxPjsKPj4+Pj4+ICsgICAgICAgIHJhbmdlcyA9IDwweDAg
MHg4YTIwMDAwIDB4MTAwMD47Cj4+Pj4+IERyb3AgdGhlIG5vZGUsIG5vdCByZWxhdGVkIHRvIHRo
aXMgYmluZGluZy4gSWYgdGhpcyBiaW5kaW5nIGlzIHN1cHBvc2VkCj4+Pj4+IHRvIGJlIHBhcnQg
b2Ygb3RoZXIgZGV2aWNlIGluIGNhc2Ugb2YgTUZEIGRldmljZXMgb3Igc29tZSB0aWdodGx5Cj4+
Pj4+IGNvdXBsZWQgb25lcywgdGhlbiBjb3VsZCBiZSBpbmNsdWRlZCBpbiB0aGUgZXhhbXBsZSB0
aGVyZS4KPj4+PiBGb3IgQ1YyMDAsIHRoaXMgYmluZGluZyBpcyBzdXBwb3NlZCB0byBiZSBhbHdh
eXMgaW5zaWRlIHRoZSBwZXJpY3RybAo+Pj4+IGRldmljZS4gVGhlIFBIWSBhZGRyZXNzIHNwYWNl
IGFyZSBhY2Nlc3NlZCBmcm9tIGEgYnVzIGltcGxlbWVudGVkIGJ5Cj4+Pj4gcGVyaWN0cmwuCj4+
PiBFdmVyeSBub2RlIGlzIHN1cHBvc2VzIHRvIGJlIHNvbWV3aGVyZSBpbiBzb21ldGhpbmcsIHNv
IHdpdGggdGhpcyBsb2dpYwo+Pj4geW91IHdvdWxkIHN0YXJ0IGZyb20gc29jQC4gV2hhdCdzIHdy
b25nIGluIHB1dHRpbmcgaXQgaW4gcGFyZW50IHNjaGVtYT8KPj4gV2hlbiB0aGUgcG9ydHMgcmVn
IHByb3BlcnR5IG9ubHkgaGFzIGFuIGR1bW15IGFkZHJlc3MgKG5vIHNpemUpLCBpdCBtdXN0Cj4+
IGJlIGluc2lkZSB0aGUgcGVyaWN0cmwgbm9kZSwgYWNjZXNzZWQgZnJvbSB0aGUgYnVzIGltcGxl
bWVudGVkIGJ5IHBlcmljdHJsLgo+Pgo+PiBCdXQgd2hlbiB0aGUgcG9ydHMgaGFzIGl0cyBvd24g
TU1JTyBhZGRyZXNzIHNwYWNlIChtdjIwMCksIGl0IHNob3VsZCBiZQo+PiBsb2NhdGVkIHVuZGVy
IGEgc2ltcGxlLWJ1cyBub2RlIGluc3RlYWQuCj4+Cj4+IFNvIGl0J3MgZWl0aGVyOgo+Pgo+PiBw
ZXJpY3RybEA4YTIwMDAwIHsKPj4KPj4gICDCoMKgwqAgdXNiMi1waHlAMTIwOiB7Cj4+Cj4+ICAg
wqDCoMKgIMKgwqDCoCByZWcgPSA8MHgxMjAgMHg0PjsgLy8gdGhpcyBpcyB0aGUgcmVnaXN0ZXIg
dGhhdCBjb250cm9scyB3cml0ZXMKPj4gYW5kIHJlYWRzIHRvIHRoZSBwaHksIGltcGxlbWVudGVk
IGJ5IHBlcmljdHJsLiAoanVzdCBsaWtlIFNQSS9JMkMpCj4+Cj4+ICAgwqDCoMKgIMKgwqDCoCBw
aHlAMDogewo+Pgo+PiAgIMKgwqDCoCDCoMKgwqAgwqDCoMKgIHJlZyA9IDwwPjsgLy8gdGhlIHJl
ZyBpcyB1c2VkIGFzIGFuIGluZGV4Cj4+Cj4+ICAgwqDCoMKgIMKgwqDCoCB9Owo+Pgo+PiAgIMKg
wqDCoCB9Owo+Pgo+PiB9Owo+Pgo+PiBvcjoKPj4KPj4gc29jQDAgewo+Pgo+PiAgIMKgwqDCoCB1
c2IyLXBoeUBmOTg2NTAwMCB7IC8vIE1NSU8KPj4KPj4gICDCoMKgwqAgwqDCoMKgIHJlZyA9IDww
eGY5ODY1MDAwIDB4MTAwMD4KPj4KPj4gICDCoMKgwqAgwqDCoMKgIHBvcnQwQDAgewo+Pgo+PiAg
IMKgwqDCoCDCoMKgwqAgwqDCoMKgIHJlZyA9IDwweDAgMHg0MDA+OyAvLyB1c2VkIGFzIE1NSU8g
YWRkcmVzcyBzcGFjZQo+Pgo+PiAgIMKgwqDCoCDCoMKgwqAgfTsKPj4KPj4gICDCoMKgwqAgfTsK
Pj4KPj4gfTsKPj4KPj4gU28gaGVyZSBpcyB3aHkgaSBpbmNsdWRlIHBlcmljdHJsIG5vZGUgaW4g
dGhlIGV4YW1wbGUuIElmIHRoZSBwb3J0cyBhcmUKPj4gbm90IG1taW8sIHRoZSBwaHkgbXVzdCBi
ZSB1bmRlciBhIHBlcmljdHJsIG5vZGUuIE9yIGlmIHRoZSBwb3J0cyBoYXMgaXRzCj4+IG93biBh
ZGRyZXNzIHNwYWNlLCBpdCBzaG91bGQgbm90IGJlIHVuZGVyIGEgcGVyaWN0cmwgbm9kZSwgYnV0
IHJhdGhlciBhbgo+PiBzaW1wbGUtYnVzIG5vZGUuCj4gSSBkb24ndCB1bmRlcnN0YW5kIHdoeSB5
b3Uga2VlcCBpbnNpc3RpbmcgYW5kIGRpc2N1c3NpbmcgdGhpcy4gWW91IGFyZQo+IGFkZGluZyBv
dGhlciBjb21wYXRpYmxlcyB0byB0aGlzIHNjaGVtYSBleGFtcGxlLCB3aGljaCB1c3VhbGx5IHdl
IHRyeSB0bwo+IGF2b2lkLiBZb3UgZW50aXJlbHkgaWdub3JlZCBteSBjb21tZW50IGFib3ZlIGFu
ZCBwYXN0ZWQgRFRTIHdoaWNoIGlzIG5vCj4gcmVsYXRlZCB0byB0aGUgdG9waWMgd2UgZGlzY3Vz
cyBoZXJlLiBJIGRpZCBub3QgcXVlc3Rpb24gd2hldGhlciB0aGlzCj4gY2FuIGJlIG9yIGNhbm5v
dCBiZSBpbiBzb21lIG5vZGUuCm9rYXksIEkgY2FuIHJlbW92ZSB0aGUgcGFyZW50IG5vZGUgaWYg
aXQncyBwcmVmZXJyZWQuIFRoaXMgaXMgc2ltcGx5IHRoZSAKbW9zdCB1c3VhbCBleGFtcGxlIHRo
YXQgZXhpc3RzIGluIHJlYWwgZHRzLgo+Cj4gQmVzdCByZWdhcmRzLAo+IEtyenlzenRvZgo+Cgot
LSAKUmVnYXJkcywKWWFuZyBYaXdlbgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
