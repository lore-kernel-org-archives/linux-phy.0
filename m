Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32F0BCAC5B0
	for <linux-phy@archiver.kernel.org>; Fri, 26 Sep 2025 03:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k4LzAGSmcKJk9e3CtvsyojcNJiq7Dqyl3v6WU0mQK+Y=; b=F7STzz0L+6j+PA
	p0B0UBRgK94MxJmTm6YJY8n4FUEsPmsoDIyXbsrAJWUbRZxfT0ithb4SPDUnWo4PfKpC3LXlmO1Kq
	tDRlTNjjPLNE8keF37mnAXg5TlLYpk9ECDZhTLGiHxsmRw6MnmDsMtpWdNJnZbWEIx2jPMesqD/Ew
	vkfD8vunZenxChsRO1/+aTFmeIvXdGp823sB9wSF9Izf5e7ddNu4dQv1RJSQIRzzfpp0VfhmcnCSn
	EMyBuoNejlD3qJ/Jg2hlL4wtpnDu5r4cLR8l05lWzKoNqU5Ck9Tj+1Ih6CKwIJj7IeRMUUJyTCdp4
	POaNUEq62sdkZiV7mAJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1zP1-0000000FTo6-3C8m;
	Fri, 26 Sep 2025 03:45:47 +0000
Received: from mail-japaneastazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c405::7] helo=TYDPR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1zOz-0000000FTkL-0cpI;
	Fri, 26 Sep 2025 03:45:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cjKOgq9Frq81YZ69GNSDxD1Vz5rUHZV1s5yAcLpueLMeTajmaNq4Etoook3oIRzcZLB39/a2w4Ky4jx3Wj47zm1ZvubaTjizJJIGXi6xJFgQKOqi+7I45coB57N4Nbn/bw0IxLvb7G3n5XxEoEu46LKeeJ6PCp0aEhxP9wTLP3DsS8LmzXJj03wJc0WhhmiN5CkcyUCyA82yXhUP/5MHiwk0+C2+KFGU6e2snL62VPDu9YQVD+lrjLFHZaQD1kYY8Ngt738xPdSLWNs44UkNWJWA4+z4bc8AzMN9vz3UYIOYfloFFJXHcNniXr/e1z06qigl8khbgdOJqauPBzbn1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uJijRBiuWKYOInnH/x9GHJ3uiNN7VVY9ZGXgMRjWxCc=;
 b=UWeWpnsNftUf9u0HPXJcwM//mlTqgdqkjGAAlvECLogOoCG3lZHQkXk/FBwW5vlb89ihaPgKnYwLDNxIvnqbHBYRdFEKqpgEdfycGSzq2qac0YV+nMzwYTXLtYDJW+Q/SHJhc0CenhT02qOXHa/HPX3T4gUds6Vl1tNMqOQyeNDSQ3+eihIXO/fJcMm/UiWvciAAE79sIE91yvaRqfz6DAzyKhnyQ+jtzQ2BVqWu+wy+lK+zpnc2DJozAEjb/shbi3TM3wSK3y5vRPpVqm3q+IXq4+eBtXuHfOeLAEvKzqwBpZHXs/SwaAGWOElvZ8KyHhH1wuPkkQDbhQVJuh58jQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aspeedtech.com; dmarc=pass action=none
 header.from=aspeedtech.com; dkim=pass header.d=aspeedtech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aspeedtech.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uJijRBiuWKYOInnH/x9GHJ3uiNN7VVY9ZGXgMRjWxCc=;
 b=UlJHf4gLCskKLk1EdV+P439Azk8vFyzlkF842HPTm9s8h9lyWJb5LHqTc78yrlzOiToiE/y+CCcN0yVK6+kh6nFHdT7/UyXeFsyraADqaik08YwUcRIH4jt+gdRgpQ3UdyXka9X2PmsViXFviWmmzVRXH7Jg+2S+DJsAnsbXFQHdqsB06/yBpn2h+AdM9xfOJ4cQfSxzSy45TeQJtAIGQtmOjLl72FB4n09n5YrF+EmbBW6rnetEJIqk1YydH1Uqgb7GydnyRWSD1+d8OIl+6S9kvTkBQ7uHRkEVfIOkCagd6Gn699im3Cjb2Rh3HS6RvbPjVUMgGG+fMHaCChzxCA==
Received: from SEYPR06MB5134.apcprd06.prod.outlook.com (2603:1096:101:5a::12)
 by TYSPR06MB6337.apcprd06.prod.outlook.com (2603:1096:400:42b::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.10; Fri, 26 Sep
 2025 03:45:24 +0000
Received: from SEYPR06MB5134.apcprd06.prod.outlook.com
 ([fe80::6b58:6014:be6e:2f28]) by SEYPR06MB5134.apcprd06.prod.outlook.com
 ([fe80::6b58:6014:be6e:2f28%6]) with mapi id 15.20.9137.018; Fri, 26 Sep 2025
 03:45:24 +0000
From: Jacky Chou <jacky_chou@aspeedtech.com>
To: Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>
CC: "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"bhelgaas@google.com" <bhelgaas@google.com>, "lpieralisi@kernel.org"
	<lpieralisi@kernel.org>, "kwilczynski@kernel.org" <kwilczynski@kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "conor+dt@kernel.org"
	<conor+dt@kernel.org>, "joel@jms.id.au" <joel@jms.id.au>,
	"andrew@codeconstruct.com.au" <andrew@codeconstruct.com.au>,
	"vkoul@kernel.org" <vkoul@kernel.org>, "kishon@kernel.org"
	<kishon@kernel.org>, "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
	"p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
	"linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "openbmc@lists.ozlabs.org"
	<openbmc@lists.ozlabs.org>, "linux-gpio@vger.kernel.org"
	<linux-gpio@vger.kernel.org>
Subject: [PATCH v3 03/10] dt-bindings: PCI: Add ASPEED PCIe RC support
Thread-Topic: [PATCH v3 03/10] dt-bindings: PCI: Add ASPEED PCIe RC support
Thread-Index: AQHcGwWW5d3OP3gN0EOH5yEQdLB1CbSAZn+AgAOtPwCAIORWoA==
Date: Fri, 26 Sep 2025 03:45:24 +0000
Message-ID: <SEYPR06MB51346F1C14DF4F44BD6AD4A69D1EA@SEYPR06MB5134.apcprd06.prod.outlook.com>
References: <20250901055922.1553550-1-jacky_chou@aspeedtech.com>
 <20250901055922.1553550-4-jacky_chou@aspeedtech.com>
 <20250902211221.GA1179675-robh@kernel.org>
 <xg5avkbsoux7rw7dg67bhf7rupgr66nzak27y2jmcerrqhlb4u@l63vz3jaie2g>
In-Reply-To: <xg5avkbsoux7rw7dg67bhf7rupgr66nzak27y2jmcerrqhlb4u@l63vz3jaie2g>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aspeedtech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SEYPR06MB5134:EE_|TYSPR06MB6337:EE_
x-ms-office365-filtering-correlation-id: 3ccf1300-7bc6-4d8d-c0a1-08ddfcaf200b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7416014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?SkVudGRIQUtuM3lHUUp2SUpIdVZ2bStwODIwNEFERU5BTTA3TVBWQndWdnlH?=
 =?utf-8?B?V1lFUHBYRlJ3eFhrYW5sRDlJZVh1UGpxc1pMclp4VmVWTzRkR3lqZE1zVXF3?=
 =?utf-8?B?VDVobUo1RXVJUjJ1dlFyQzNpbUJzdGxwUGZ0YkZ6SmNCVWN0Q0wwa0xiNHpW?=
 =?utf-8?B?SlMzWFRLZWhzLzZFbTlhYzRRU0ljbGJwT3J3V2IvRGpkL2hUcHZxVGpBb0ZD?=
 =?utf-8?B?WUdhb092MC9LN0M3RkNINjFRT0I5TmJSdnRWNGJVakJJTXVRT3lJcHFkK3c3?=
 =?utf-8?B?UXN0QzNIcHA3N2p4MkRRaTRQdkk1SkFOa1p0NjN6cjgvYytHRFhUV1JVWlRP?=
 =?utf-8?B?d3FzNHlUZEZFeDJ6S1dhK1d1eTJkNGhaR1MwL0krOWJxY1o5cEtsOU5ST3A1?=
 =?utf-8?B?b3lqQjJpbnlrQ0xLdGlVMlZhZmNtbUlmallzNDNDT2s1bTllYmZ0K3oyMmk5?=
 =?utf-8?B?WnRZUmU0QzVuZms5V1Z5NWdnZytHTlZRdkI3V1V2VkJUeGpwZ0tmWmhTajRx?=
 =?utf-8?B?aWZBZ3VCamh4dUhadk03VFZqRDJUQUE5VEI2aVhNb2ZWb0l1Wnl5NUpWQjdO?=
 =?utf-8?B?YUFqMW1QMU9MSEc0OFdhK3JObExFbnNqQnh5czlZM3dvNlJIbmZUTDExcUJm?=
 =?utf-8?B?OWo0dVc4R0FSbWRqcHlXWnRsdWFlMzBsTWJBUUdOTjRJZmRCb01nVDhidG4y?=
 =?utf-8?B?WDJuSGp1RjRkKzBtRmlaR2JzV1d2OUJOUFVjbXBqbUVMZFgva0h6VHRGVTVO?=
 =?utf-8?B?SnM5RHRQbHZlL1BTOWExTFgrZVV2a1NCTFdtcUZnKzdyejJCcUVySXVJbWVr?=
 =?utf-8?B?T0l3dC9mWU1EWkc3UjJ2N1JnRTcrYTlmUkRrMll5blJtNzRhdXB3RGZUVGNF?=
 =?utf-8?B?RXBZMDd3ZTlMMkh6Q3NJOUUrKys4QWdTWnpSaEpscGVXMVBiYTRmSTIrNVc1?=
 =?utf-8?B?enR1aWE1MnVDemROVVh6Y0RLbjdpTEJwNno5bDJOOHhYc3UxSS94N0lDVG5Q?=
 =?utf-8?B?NG52L0dkOFVaZGtmdHBjUEJROEpxdUlGMVZzdWczM3VRY2FFR1Vpbk5lS0JG?=
 =?utf-8?B?cTYwUFZTMVAvUlNYZmFJeDFwZlBZWXpYUWxCbUFpQ0RvblZ5bHM1V3dyRVg1?=
 =?utf-8?B?a0RISWo3eWg1bTJ5RW1LSUtlUVp6eCs0OXMvbHN0OTJ1amJRZ0xyaWF2VWo3?=
 =?utf-8?B?Sk9mc2RNS2d2TGVDUGQzTHNlZnFmUUU0VUZQOGFpRnpBRnZDdGdoL1FrNmRs?=
 =?utf-8?B?eGROYVI0L3FSSm5zWGsrbXY4bWJrWGJsdUZFZXB2cDJ4RVdkSG9pM0hYKzVq?=
 =?utf-8?B?VVRDWi9zbXFCeHBISlJLTUMzOUdVWTFJQURJTUtOZDZTYkN2dkNqcGlVTUVL?=
 =?utf-8?B?MlNra2NWK0hKUzNEV0R4WXFUZEVKYmJBbE1zdUZCWTFhWWtkQlFEaXBmK2pI?=
 =?utf-8?B?NjNEQ2R6M3pCcWFWY2RHSHZyNXJITEwxaGZEejlQNnNqby9wVnU3Nzg3K0F2?=
 =?utf-8?B?cjh2S3JZTXlvY21jL1ZOZ2dlZmM5dzhOTUkyZEUwZU9yRkd4MHNhanJUZE1F?=
 =?utf-8?B?MjFHNXZkU0h1ZHdENXFnajhHeE4zNFA4UWxjYUY4RDRwMGlkYlZrbmJzdkJa?=
 =?utf-8?B?SU40Y05XZFloMFE3cklISG9Lc2xLNWxvckpMck8wSmE3UnhNZnc5SkVoMmRU?=
 =?utf-8?B?bU1COGF5VElJK2RxcE85QlJsWHVwaTRTODBPeTZ5bFZLeDhNcHdnY1h6N3pQ?=
 =?utf-8?B?dVhLRjNsTGZpc21zckFmVlJhVWYyamdHeEpGT3hkNlBDclpLNzhuUzUvUTVq?=
 =?utf-8?B?Q1EvN2IrdEpnWEpYRFVUbk9kQXQ3MmE5bDc0K3JOVElEeStPTXp1bko4K2JC?=
 =?utf-8?B?Z2NVZmNvV09BTlRnMENuSWozTHNWVEwyNmFaYmZ6SVVHZnJib2MwMXdFL2pI?=
 =?utf-8?B?TUdNWEhwNHlKUVFyRWpKdFZpNUJxSmMxaDF5eUM4enI3YjZ2WHpTZGMrYW10?=
 =?utf-8?B?Rm5Lc3FsbDdwM00wRExyS25nbFNrUEE0amZzVjdaUU5ibjlwMEFlYVUwd25K?=
 =?utf-8?Q?ppzARc?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:zh-tw;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEYPR06MB5134.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(7416014)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RlhSWlBQdU1Dc1EwNHlHMER2T1ltK0phNERydWwxNUJKS01LMVFRVGkxdjFj?=
 =?utf-8?B?SThDalNTMFBLaWpCZ2hsa0RCa1E2N2dzRG5zMG9XdDliVXMvaXNSZ3IxZE1v?=
 =?utf-8?B?TmxIdGJKRFlKL1JldGUxdThONWNNNTh1QUp3aEI2ZTNaby9rRGY5RVZBK2Yw?=
 =?utf-8?B?bnNabEtKTXg1Rnp1QW5vZmIwL3FRS2ttcDI3MXhTMDhVUkdMS3dQVzRmWUFx?=
 =?utf-8?B?YVBCNFMwRUpFQ1hMaEdhK0dkQUJFWnljNFhWb3BsYXRwd0YyNzUvRWQwSWlv?=
 =?utf-8?B?UEZ0MDN3T1Uvc2xyYVlhRXBNdlBKMC96b3dWelFVSVNOVTZUSGpzZndhRVR2?=
 =?utf-8?B?SG1oVjRlT3RRVWR3b2g3ZjExSEtRanRoVk1MRWdlQzlzTzk5U1RGR0JRWE9R?=
 =?utf-8?B?dDh6bWhnSStIZjJpYTNoVm5wZmhZYVl2U3ROVzJUNDkreXU0VGdtWndGL25M?=
 =?utf-8?B?ajd5alZQc0I2cXludERVd0JKU2V5dHVXKzdtZlNqaEcvSmRoamlUUWVmTkNO?=
 =?utf-8?B?LzBrVE5EdHdMUVNCTmMwR0NjK1ZRRlhKcXcyU2JuTEtxNWprWjhXRExnbnd6?=
 =?utf-8?B?V08rSVhLLzRGT1daMytkWXJVTytUeXJyUG56Sy9CRE9Uc1dwcW1LWEh0NzVU?=
 =?utf-8?B?Y3B0Q0RQcWdBL0FjOGhPRm15THlOVllQSnZyUE52dGhKSDVhdlkyK2xUc0l6?=
 =?utf-8?B?OGdVM0dGdHVYZlpZbVVXVjYrRWs1SnRPQzA4WktFRStIYWxVcXRSOTBmSzUv?=
 =?utf-8?B?bEZGeTJyaVVHNGdIVklUZFNLUEFsd2FuUlROR0dWcDR1K01mbk9GTlpkSTBG?=
 =?utf-8?B?eDJXSzZoaithVEZ3NEIyY1BIeVVtMGVYWERwY3c3MVBSZVgySzVtYW4waFZS?=
 =?utf-8?B?UW9HMklERVNNdzVBa1ZIZ080S0xpYVhzd3dVRmxOY3FmVFhYOEQ0MDRvMEdI?=
 =?utf-8?B?dnJ1eUpibkc5VWJrYmZoeUNGa0ZpM01WUmxEQXR0VzlLRHFycVFRZm1UOHN3?=
 =?utf-8?B?UFErbGJrUC9sMDA5MjB3Qko3MDlXcFBJWHdwT1VUcU1QbENnank0ZGhESE5Z?=
 =?utf-8?B?YVFrSS9JYnV4RlJqeU5RUk5KZHJiUExhVGxYL0lielAwRkd5ODZadDYza2Fn?=
 =?utf-8?B?aVRTU3RSS0Rmd1FaUDFYbEo2bGlPNC8ybSt3WFhGcmRscldDWU0xNlE3Qzc3?=
 =?utf-8?B?b2s0TE4zd01qcXBsSnpCcmVyNEhLdWVuQ1ZIaFNvQnV6Z2JkTFZTU0xGYXFi?=
 =?utf-8?B?NkQ5RUhtNkk2bUZ2dWhramJTY1VpamRLY1AzeUM1UVFuOWxOdWF5K1NaNklI?=
 =?utf-8?B?QTFLMjFtYzVCclh2RGk2OXhKUE1hRXUrYVdXczAzdjJrQ3JGUFBJVm5wRzRU?=
 =?utf-8?B?UVRETi9KQ0VhZVRmWTNJN3FMcWVMaXFUdi8vWGlWZWY0UUxJc0FOb2FxRGJT?=
 =?utf-8?B?VXpadUlZZVhUT3V6TS82VHkzSmlHUTNkbDlPOWFoK3RrSEpKdWtYa3E2TVVk?=
 =?utf-8?B?dU1oOHZ2TjlnN3BrZFl6bXh1L1dmWUJJdUxyUUZnZ1o5TzdqVXIyQnUrQVdT?=
 =?utf-8?B?dzRsZ3ZDUUIwNlI5TVJITHYwQ1hSOU4rR2dnU045L3hHZXZxbkRrcU1uelBS?=
 =?utf-8?B?dnFZNG1GL2tJVCs4VUVwVEJUb2N1a1B1SUFSUFJmL0N0MDZDQ0Vxd3FCeVcz?=
 =?utf-8?B?REF3R2t1b2F0NnYzVC9WbUVDWCtwRE0vdGdyaXJ2YVZvZGo4ZjBpL0VWWmxZ?=
 =?utf-8?B?dXp3MUVVM1FmRFUycFBUaDZzYkRNK2FjU29BeGljSHhhTEtndkFSaTBaVXY4?=
 =?utf-8?B?bU5NM3ovOUdtZVo0VSt6aDV6S3dOKytGLzhFVTFCOVlEcHZTck1CeGtrZ1ZI?=
 =?utf-8?B?YUtBcXBnM1E4WGFqS0lpdUpQSFFBYm02VlF0QWtmSmtyKzBZNEtTcnE3TDN0?=
 =?utf-8?B?UXFQaW5GTWo0M2tmV0RhS1NoTzhUOUE2ZVVNNUdzUzV3UFFrcm1QbmJKTUtp?=
 =?utf-8?B?L2xqS3JBemp3NEZ5TEZUSlNabHZoZkhEdXU3elRRbExvM25LbFRMRG1lKy96?=
 =?utf-8?B?VENyYlpHNDFtNGJaRnNuWlpreTMyQU9pZE9LUU5YNHc3OEhxRS9YUUhYemVG?=
 =?utf-8?Q?5njIJIpq/qMotCu77IB6Y18ft?=
MIME-Version: 1.0
X-OriginatorOrg: aspeedtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SEYPR06MB5134.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ccf1300-7bc6-4d8d-c0a1-08ddfcaf200b
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2025 03:45:24.3067
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43d4aa98-e35b-4575-8939-080e90d5a249
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s/nSNUeRCNCVa6uDaIg4+2M01g1KpnX1HpQLQV7bB6g1Dt0csw6SvpZcd1+ETS17t0MSQxFr/HklSd1DYCJDdNbqg259UUZJzeS3wcIF1JE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYSPR06MB6337
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_204545_286224_CC04D25A 
X-CRM114-Status: GOOD (  15.38  )
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

Hi Mani

Thank you for your reply.

> > > +
> > > +  aspeed,pciecfg:
> > > +    $ref: /schemas/types.yaml#/definitions/phandle
> > > +    description:
> > > +      Phandle to the ASPEED PCIe configuration syscon node.
> > > +      This reference allows the PCIe controller to access
> > > +      SoC-specific PCIe configuration registers. There are the others
> > > +      functions such PCIe RC and PCIe EP will use this common register
> > > +      to configure the SoC interfaces.
> > > +
> 
> So these config registers are part of the PCIe domain? Is so, accessing them as
> syscon is wrong. You should configure the registers directly from the RC and EP
> controller drivers.
> 

Yes, it is part of the PCIe domain, but some drivers will use the common registers, if
I do not use syscon, how do I add the register range to node?
Use the "reg" property in all pcie node?

> > > +  interrupt-controller:
> > > +    description: Interrupt controller node for handling legacy PCI
> interrupts.
> 
> s/legacy PCI interrupts/INTx
> 

Agreed

> > > +    type: object
> > > +    properties:
> > > +      '#address-cells':
> > > +        const: 0
> > > +      '#interrupt-cells':
> > > +        const: 1
> > > +      interrupt-controller: true
> > > +
> > > +    required:
> > > +      - '#address-cells'
> > > +      - '#interrupt-cells'
> > > +      - interrupt-controller
> > > +
> > > +    additionalProperties: false
> > > +
> > > +allOf:
> > > +  - $ref: /schemas/pci/pci-host-bridge.yaml#
> > > +  - $ref: /schemas/interrupt-controller/msi-controller.yaml#
> > > +  - if:
> > > +      properties:
> > > +        compatible:
> > > +          contains:
> > > +            const: aspeed,ast2600-pcie
> > > +    then:
> > > +      required:
> > > +        - aspeed,ahbc
> > > +    else:
> > > +      properties:
> > > +        aspeed,ahbc: false
> > > +  - if:
> > > +      properties:
> > > +        compatible:
> > > +          contains:
> > > +            const: aspeed,ast2700-pcie
> > > +    then:
> > > +      required:
> > > +        - aspeed,pciecfg
> > > +    else:
> > > +      properties:
> > > +        aspeed,pciecfg: false
> > > +
> > > +required:
> > > +  - reg
> > > +  - interrupts
> > > +  - bus-range
> > > +  - ranges
> > > +  - resets
> > > +  - reset-names
> > > +  - msi-parent
> > > +  - msi-controller
> > > +  - interrupt-map-mask
> > > +  - interrupt-map
> > > +  - interrupt-controller
> > > +
> > > +unevaluatedProperties: false
> > > +
> > > +examples:
> > > +  - |
> > > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > > +    #include <dt-bindings/clock/ast2600-clock.h>
> > > +
> > > +    apb {
> > > +      #address-cells = <1>;
> > > +      #size-cells = <1>;
> >
> > No need to show this node.
> >

Agreed.

> > > +
> > > +      pcie0: pcie@1e770000 {
> > > +        compatible = "aspeed,ast2600-pcie";
> > > +        device_type = "pci";
> > > +        reg = <0x1e770000 0x100>;
> > > +        linux,pci-domain = <0>;
> > > +        #address-cells = <3>;
> > > +        #size-cells = <2>;
> > > +        interrupts = <GIC_SPI 168 IRQ_TYPE_LEVEL_HIGH>;
> > > +        bus-range = <0x80 0xff>;
> 
> Why bus number starts from 128?
> 

On AST2600, the root bus must start from 128. It is fixed on design.

> > > +
> > > +        ranges = <0x01000000 0x0 0x00018000 0x00018000 0x0
> 0x00008000
> > > +            0x02000000 0x0 0x70000000 0x70000000 0x0
> 0x10000000>;
> > > +
> > > +        status = "disabled";
> >
> > Examples should be enabled. Drop.
> >
> > > +
> > > +        resets = <&syscon ASPEED_RESET_H2X>;
> > > +        reset-names = "h2x";
> > > +
> > > +        #interrupt-cells = <1>;
> > > +        msi-parent = <&pcie0>;
> >
> > There shouldn't be any need to point to yourself.
> >

Agreed.

> > > +        msi-controller;
> > > +
> > > +        aspeed,ahbc = <&ahbc>;
> > > +
> > > +        interrupt-map-mask = <0 0 0 7>;
> > > +        interrupt-map = <0 0 0 1 &pcie_intc0 0>,
> > > +                        <0 0 0 2 &pcie_intc0 1>,
> > > +                        <0 0 0 3 &pcie_intc0 2>,
> > > +                        <0 0 0 4 &pcie_intc0 3>;
> > > +        pcie_intc0: interrupt-controller {
> > > +          interrupt-controller;
> > > +          #address-cells = <0>;
> > > +          #interrupt-cells = <1>;
> > > +        };
> > > +
> > > +        pcie@8,0 {
> > > +          reg = <0x804000 0 0 0 0>;
> 
> Why the device number starts from 8?
> 
> If there are platform specific reasons behind this numbering scheme, it should
> be mentioned in the description.
> 

Same as above. On AST2600, the device number of root port must be 8.
Will add this information in the description in next version.

Thanks,

Jacky

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
