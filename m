Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82A24CD3420
	for <linux-phy@archiver.kernel.org>; Tue,  3 Sep 2024 12:39:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7MxxUpR5h78/f4uiRFmC6Lsd8weefT5wbR7DNop/U/I=; b=Ix2ubQNFjAdEVP
	A4+uJaavsnL1rGNYTbvUQfNpgQR/YHw4hMjvC2QSytg0NmEukhHQugwd7imwLskzOquj0HAJNfLQr
	B27ZpfGSAusxv8QPJ2k2z+wSVfOTt2sQUa+KRfYUJAQw1wOt1fX3kA5Bu9zloltZXQTyxveJpheyg
	gvNd8qwbe2+3MWU7diluy6qQIknXRpuPVqMI+YfsRR//v0jwwOCtxfwYvlO7uQLplWKzqJTyBft1t
	SEtvT0Gvc7jVaqLYFIIlT0NPJm2V7Qp60t4VUkQ7W7B7/7gsHt7Ta2GtKp6LHwyQjwyJRs/y1oAxt
	mpxmikKuNFcsEoHwrE/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slSot-00000000C5i-0IMt;
	Tue, 03 Sep 2024 12:39:39 +0000
Received: from mail-japaneastazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c405::1] helo=TY3P286CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slSnT-00000000Bd4-0qxU;
	Tue, 03 Sep 2024 12:38:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jNWkzRNsPf6km3jHgheEl0rzIBdsYFhJeysPd6P+2RxW2ILntjKNTxszQDmfG1SutCsM9HtwbxfdM+bx6zMScdgKZOtT9wytvU1Fe3+Wad4Y0LOUVMT8vvf7tqOtWafOgToPlhFm/7YeuJaFUJv2dbWH/kseIQdxGRsKJolBdaz77zvFRQJaROaL/4xoqGmW+uPSgog/WVRLutuXjpP4n6F+b8RbxhfLhLYhQjvF+K79cGzlWwlgqKpfN2dzwlpI7QHs8CLbNTRz9cFuqG2TUiJje9I3l9UIy/nrHOiZCH7IZNXKo6mEVHEzbzJabRZs4Og+8E95peaegwdKUOWbMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KPzAwWHMwaNHJgLjeAV3HoFB7O4Df+WlnqDZUdd6mUQ=;
 b=Xd/xks3NfyCEgmN4Uj0P4ixKFNGs9X7L5ExVlaUnh2/p8g5grqM2qpu+mKYXXa9ULeBNUPKJkINHPuxkPVWxKqUYzw94fUvtFfulZjgC8HMyNxLQeq00P1LQq3GpN/wHpUQlaUaDObEN6lrqLqHdqjkRk1gR3T3yS/bWUjD+9l4v8HnqVbutJRr/JXpdFM3Z595KTVzAMLqB+XXvXOhVZ9RZUHEm8Q2nDnbfzk5TtKs7HrNj8p9qn0t/JAVZIIBEoh6e/q3sfwRWRYN8gzY4rbv1R/BRYV0zdyHaTycd1IdD41gtE9f4RbAiCcrvxnXprz7yJcu4RCxH4EFpm0RkSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KPzAwWHMwaNHJgLjeAV3HoFB7O4Df+WlnqDZUdd6mUQ=;
 b=ryWwZyiu2UM+XjuKT+qme3mitY7MGMiJfjxNNRUHTDGLVKB3zAazmnmb0oD+i0yks6x4LkVYnnOinoY8+4GZznKrTwNIsz3jlLB59N4+U+NpK+yqPR9jdqMEhjBfMs55PVjzyo4Sv76xfNjyR7DvfllPNk5eXKyIU0j+Sdtsk8s=
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com (2603:1096:400:3d0::7)
 by TYYPR01MB12842.jpnprd01.prod.outlook.com (2603:1096:405:15c::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Tue, 3 Sep
 2024 12:37:58 +0000
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1]) by TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1%6]) with mapi id 15.20.7918.024; Tue, 3 Sep 2024
 12:37:58 +0000
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Claudiu.Beznea <claudiu.beznea@tuxon.dev>, Ulf Hansson
	<ulf.hansson@linaro.org>
CC: "vkoul@kernel.org" <vkoul@kernel.org>, "kishon@kernel.org"
	<kishon@kernel.org>, "robh@kernel.org" <robh@kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "conor+dt@kernel.org"
	<conor+dt@kernel.org>, "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
	"geert+renesas@glider.be" <geert+renesas@glider.be>, "magnus.damm@gmail.com"
	<magnus.damm@gmail.com>, "gregkh@linuxfoundation.org"
	<gregkh@linuxfoundation.org>, "mturquette@baylibre.com"
	<mturquette@baylibre.com>, "sboyd@kernel.org" <sboyd@kernel.org>, Yoshihiro
 Shimoda <yoshihiro.shimoda.uh@renesas.com>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-renesas-soc@vger.kernel.org"
	<linux-renesas-soc@vger.kernel.org>, "linux-usb@vger.kernel.org"
	<linux-usb@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-clk@vger.kernel.org"
	<linux-clk@vger.kernel.org>, "linux-pm@vger.kernel.org"
	<linux-pm@vger.kernel.org>, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: RE: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
Thread-Topic: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
Thread-Index: AQHa9KfrLpE8CCuWg0uaPyaAgZR3ArI+ZjUAgAEcCoCAAVgqEIADVdkwgAAP5ACAAACycIAABtQAgAAAhkCAABeagIAAAFcwgAFU0LCAADjlgIAAAKQQgAAJGICAAAE9UIAADyWwgAAHkoCAAADSkA==
Date: Tue, 3 Sep 2024 12:37:58 +0000
Message-ID: <TY3PR01MB1134689573A785E91A9041E1886932@TY3PR01MB11346.jpnprd01.prod.outlook.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <TY3PR01MB113467275C519B729FCAB1ACB86922@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <5556d176-cca7-492c-ba21-48256d5d6338@tuxon.dev>
 <TY3PR01MB113464D53083F4C8A5DBBA36586922@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <590a4fb2-24b2-432b-92db-534c5a52ed0b@tuxon.dev>
 <TY3PR01MB11346505565B81AD2894E035586922@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <35dc7414-f5bd-4ed4-bfa1-f723f4f0078c@tuxon.dev>
 <TY3PR01MB11346A4814F83FE296A1DED8886922@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <TY3PR01MB1134648BF51F1B52BFE34DD6D86932@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <fbfa9179-2f52-429f-8b69-f7f4064e796b@tuxon.dev>
 <TYCPR01MB11332EF1A8D064C491D8F261286932@TYCPR01MB11332.jpnprd01.prod.outlook.com>
 <f7c57e76-b890-491f-880d-62d060b7b31e@tuxon.dev>
 <TYCPR01MB11332BE2EDB318950B9C7B54C86932@TYCPR01MB11332.jpnprd01.prod.outlook.com>
 <TY3PR01MB113469FC8A9F49D9B1FA432FD86932@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <0b73544b-0253-43b9-b631-6578b48eaca8@tuxon.dev>
In-Reply-To: <0b73544b-0253-43b9-b631-6578b48eaca8@tuxon.dev>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY3PR01MB11346:EE_|TYYPR01MB12842:EE_
x-ms-office365-filtering-correlation-id: 20cf7c8f-2a0e-4d6d-733e-08dccc153dda
x-ld-processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?cmphRVFUaGJrT2pmS0NCVjRjWUVueFZhTUFOWFlpczg3UkdUY3l6RGRBbjgz?=
 =?utf-8?B?d1Y2L2tyVkd5TzRhYkRiSlByOTVNa3ZhY1ZGcmwrZDlaMURlbmUrc2xLTk1x?=
 =?utf-8?B?Mndad2I0ckRrRi9kdkQvZ1E4ejgwcFdOaWZKaVZEY25KcGZNR2JsM2g3TXkz?=
 =?utf-8?B?RmNLQk9YK1YwSHdab1FlUHdmVDhSZ3Z1UUEyaS9Ib3RRWkdLd2FwNjZvaS9k?=
 =?utf-8?B?enRUM3c0dXEyekN1NzJSV09yWGhMRjM5KzlXSUtrc2NrK243aHlTMS9LeThU?=
 =?utf-8?B?VHNvYktZOG95c1VkVE9sUVBBWEtlam9keFVsY00vSVU4THovZnVma1o2SkhQ?=
 =?utf-8?B?U1FvYzk2akxkMDl5c3VSdlk5WkdDUVhTaFR0WU51SFBpd3RzOWlMVVFRZjBP?=
 =?utf-8?B?dnd6WGkwR1RwZFlIa2UyYnNXNnp0MUxMbldNaGlKaGRmZnN0YnF0Nkh2NWZB?=
 =?utf-8?B?emJHVm1UVHlFaUV5K0lGQmRwck1SMkU3SmlhTTBLKzAwaDZzZ1V6NWlTcVFL?=
 =?utf-8?B?cHZwdVBKYmo3TU9KL2gvU2VOdzFHT0lXcXFaWUw1S0U5Um9DdkZ3bXlGeE1y?=
 =?utf-8?B?NXd0YjNzRHN6YWFlUDA4d1pFT2I0cHJySHVWTzJrRzVWZ2pZc0YybnNBRHZt?=
 =?utf-8?B?c0R1Wk5DVUJxRXdZd2lyMmFHVkk3Z2RKWlk4L1RVclFHRXk1YWIvUDhLQlJD?=
 =?utf-8?B?MVI2SmxFWjdkMExack50aFJCVlV2VWhsNWJJWUp5UTFpTTdvV0dQUHNTd3o0?=
 =?utf-8?B?MEJya2tBSE1RcEQwTmRudndVQldBSFZzR3hFMkJMVUw1OUV0UUk2bG9CdFZH?=
 =?utf-8?B?bE1kNjhGb3d1dDd0U01SUDkyU1pJTzZzd2k0ZzRNN2tOb3VldXlhUTVVMGNO?=
 =?utf-8?B?bk9KZnNFYThxcVl0dDlzSGdScFVyYXBpV3g5aWFFN3lTZE8zeHdjaHhXWmdO?=
 =?utf-8?B?ZGl2aTU2TXJXRVVnMXdhRU5uUFNPRVRyeEQrcGNrNm4xV29YbGh2WUF6ajVH?=
 =?utf-8?B?S3JJWEVWOXVjdlpiVTE0RDlNNlpvNS85MnZIeUpiV2d0WWJEVTd4MEhObVNt?=
 =?utf-8?B?SlhWZ0VNMTA2K3ZSSDI2OXFLeVVaSytVSDJyR1BKUVpTSk9kNmdaV1lkVlFm?=
 =?utf-8?B?c2ZUY3dwanZzYVRWTjN3VHRLYTBSdkk0RU9UWUZNbTA3VjNYWG15VUZ5emRX?=
 =?utf-8?B?VWhUS3BRQ0NJOFBDcWJ1a1lCR01CbTdXNnU3alNEZlBydm5hYXo4eFRJb2VM?=
 =?utf-8?B?VmFlZWVET2JjSXBpVGRYRWJLVnZYY1ZUU0txMXNLTS9TZ21zNDB3dWFZTkpH?=
 =?utf-8?B?bUJTSGs0U01IcFBKbWRjOWRkUzBIdDd0cnJXdGFQcmEyUXpTUFFjbDBPWHBx?=
 =?utf-8?B?eFhMbmhZOENjbTRwMEdxNUMveGM1WlVXZTBHeTdaOW5NNndGd2UrNkhxdG0r?=
 =?utf-8?B?TUVUbWpBZzBBdVB5YW1tUUNzRE9yMDI3bi9WRTNkUzAyRnVRbDZKZ1VPMU14?=
 =?utf-8?B?MkNmZWFQdk1Pa0R3YU9CUlRnTFE0cGFRTHNyeXJ6SnZMdlFWR3VMVDAzeXFm?=
 =?utf-8?B?SVovQ0pMZnFHT1ExdW5qdGZnL24xNy9pYTRmQUJlSmd1UUVVbkwzU0xqejJV?=
 =?utf-8?B?LzBBZytyckFaaGxITG91OXB5NUlSNFl1elBvU2FsVTNxa2U2UmpPUXpGT2Qz?=
 =?utf-8?B?dlpybTJJa29sZ0UzL3hmU2UyUTNrb3p5NWxBenRYMkk1eThnQU1aUjdsM2NB?=
 =?utf-8?B?YS91WWM4UGNRZDd5UEh0MmtGWnZVTTR3ZDFTY0REWGJmSEZyVm9pS0Q4Y0Zl?=
 =?utf-8?B?TGsrUWhQYzZYazRnQWV6c0NTVkNzb3o1WXNUVmUvUU03TkszdmZpcThLOHVr?=
 =?utf-8?B?Y28reWZzcE9RcVVVcURndXFjUzBsNlgva1o2RjcwSTFLelE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY3PR01MB11346.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZHkzOUdmSWorVmtCRDl1MXBGRzBiQnpFYUdLb2JBQkRPNFZTeitVNXdrVWls?=
 =?utf-8?B?ZzN2b1dUcStBbFE3MExJUjJOMjZBVzU1M1ArcllaWjJiTGFOMjNOQ1BpT2w5?=
 =?utf-8?B?UHFaL1pDb2luODFSMk9NZS9BMnI3RElLM09KckpDOVB1T0Z4eWxzNVJGdG1m?=
 =?utf-8?B?dnhSY2ZSUEZBeHFtZjlSczFRTFBwTER4d3FucmV5elNsUDBRNkhzV2xVb2Z5?=
 =?utf-8?B?RlVxdW8rUWtSTWZUMGJZVkxwVmNKMThVLzNzajRiSEVFSUpMZEdWN2JCVm5x?=
 =?utf-8?B?dHlLUytkYmZ4OG14L3RFN3FuWVQwR210L2MwbkdIMGZrZkxGeEQrWWhEVlh5?=
 =?utf-8?B?TmtvdnpCZEIwUFNlRWxIQlV0dG13OE1yNlN6SVczY0lYRXc0WXUwWnUzNmp3?=
 =?utf-8?B?eTdiWlZsL09uM2tQenlIekM3bjZmYkl0QjJ3MDdKOTdwNS9pY0VRNVpFL2Rs?=
 =?utf-8?B?V2Z2WFhzYXF5OUdNT0N3YmNrMy90TXROMVNnOFhSby9IWllKTmFxUDF3YlUx?=
 =?utf-8?B?TUs3am8zNUJMb2dNNEZWOHEyMXhZNjhxeVVGRjBxWER5ekZpcWF5RitnNi9Z?=
 =?utf-8?B?dFlsRTY3YWhmeVVZcnFWM1hhM3pUa2VsVTVmZUVVM0JBb1FxeHZ2eFB1andQ?=
 =?utf-8?B?UUhXRlNBU3lSSjUxcTd2R3J6Q3dlM3FoN3V0MElqa0J3WVhOdmlMbjg1aG0z?=
 =?utf-8?B?bXFRZmNwb0M4YzFRMmQ2ZFdyamtCVWNhaHhnZXh2Z3UrWEE2L2t0L3hOa1cz?=
 =?utf-8?B?T3A1ZDRvRDQrTmpqTnY2eWNveGhkWDZtd0x4NUc2YlZzTHMrUVNHVE8rQUh0?=
 =?utf-8?B?RkVOZXljazRZZnpzNG5qcDlaaW14QUhWYUxDQ3dacGJYTEQ5cE80ZjcxZUND?=
 =?utf-8?B?dzBjR1RWeWZQMmQ0Z29DZkZ2ZVVSQzh4VWQwVitBc0cyVitXdTVxVGZOdFJS?=
 =?utf-8?B?TXh1VXhFZnlRbnFwSWM5eXlpNGF1dTQ1dWxTZkpRcGdyNWc3OUVabUF5VjVn?=
 =?utf-8?B?Zm1TMUNBbExpM05EbXk5V1lzMC9NamNQV2tyc2V2SXpEQWd4UW9LTUxsVGxU?=
 =?utf-8?B?MEdvVmc2dUZaYjJYM1VPck1iUXhRc28zNS95aDI3U1BCaXFwak5jdjdvUlRX?=
 =?utf-8?B?SzBBZWZzS0gyTlhzYk1iL2hjZWY4TUFpa1ZzeTNGV1ZKWTA1QmRmdUluV2NQ?=
 =?utf-8?B?SXRpbXgzdTA5azk3MiszVlBPTWQ1Qmh4K0c4azBUT3hIL2x2cGh3K0pBT1d4?=
 =?utf-8?B?elhvRDFudFJYSzdLb21PZ3ZtQkZVbjZIOXVPM3NGRHUzVzE2Z1kwN3ZDNzRD?=
 =?utf-8?B?bFg4VDg5RlFHVjQwcnlnVmN6Z3cwVEpYV0tqeUt0MENBZnU1bEg0YW9ydUEx?=
 =?utf-8?B?MGlXQThzeUR5WFF6ZnNMMThYWXBrTjRXTmdWYU9LVjJsbTJOS2kzTUhuRkFn?=
 =?utf-8?B?emx2eUQxUmpCajVaRUE4LzNxS3VWdmt0eFduaTNhSGFMbVFxMk92K3QrMytK?=
 =?utf-8?B?dHMyVHE5TWZyQVFpenNNQ1RDY2EvTnFTSDZuWm82RHFscFRFVkJkbWowNENQ?=
 =?utf-8?B?L0psVVVGRXdSSmRhTHFVTU1hQUZSU0Y3MVlTUFdGZGppVnFhZi84NlQ5dkJL?=
 =?utf-8?B?OUt1Wk5TSkJKV2ZSeGxxWjU3Yi9zQnZQQnlWTjdKd3Z0WU9NMjNMQ3Raanhr?=
 =?utf-8?B?NWxoK2lhZ3N4TldvdU9xa2F1QmE4Q1V1c3FNNmlibkMvMThUWUlZN0YzZlFh?=
 =?utf-8?B?WURSbWNUenZGN00ySUlrd0xIdXd3WEVEcFh1Y1poc3FWbW9CbG1PcC9YYVRY?=
 =?utf-8?B?MHE3bEFYS0NMQTRsU1Ftd254UDZ0YTh3QUlIZ2I5Sk4rWnI1WXpYQ3BGUWxW?=
 =?utf-8?B?L0JodllCdmMyRnJZVXNoOEhZdXphZTh0c0I0YXhnQjFqWnJwV0JZSC8wRjNa?=
 =?utf-8?B?TEYwSGhzeHlJYkhtVW81L2lhcWV2aVpqaGFnSmd0OGJPY3FEWnYyVWtGNXBo?=
 =?utf-8?B?NmtPSU5wbUJNNVpLbThTNmFsL0QrYUQrbmx6YUNJUzhtYWZjVDYzT1oxRUgx?=
 =?utf-8?B?a3Fna1R2Um9YcjQ5cjdaYjdpaktLSE9pWC96Q3pFU3N2Zmt3S1BrUGRIaEx0?=
 =?utf-8?B?eHBNOSs4cmM2QTZEU2FjeW1jdzNGV2MzcUxvZ0MzRGpnYW5Ba2xHZ0ZQeko0?=
 =?utf-8?B?bGc9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY3PR01MB11346.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20cf7c8f-2a0e-4d6d-733e-08dccc153dda
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2024 12:37:58.3746
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NkpQdjiSYarQeyaRr9GkQ2t1FvQpeyH+NgDWbr50xCpIZ+LZR8EaH7M6fjnaq0r0jjE6TagbdX+fgUy3Os1N3h+DmmQasPoNrxisYW7LRIA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYYPR01MB12842
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_053811_607099_C2947ECB 
X-CRM114-Status: GOOD (  16.18  )
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



> -----Original Message-----
> From: claudiu beznea <claudiu.beznea@tuxon.dev>
> Sent: Tuesday, September 3, 2024 1:26 PM
> To: Biju Das <biju.das.jz@bp.renesas.com>; Ulf Hansson <ulf.hansson@linaro.org>
> Cc: vkoul@kernel.org; kishon@kernel.org; robh@kernel.org; krzk+dt@kernel.org; conor+dt@kernel.org;
> p.zabel@pengutronix.de; geert+renesas@glider.be; magnus.damm@gmail.com; gregkh@linuxfoundation.org;
> mturquette@baylibre.com; sboyd@kernel.org; Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>;
> linux-phy@lists.infradead.org; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-
> renesas-soc@vger.kernel.org; linux-usb@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> clk@vger.kernel.org; linux-pm@vger.kernel.org; Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
> 
> 
> 
> On 03.09.2024 15:00, Biju Das wrote:
> >
> >
> >> -----Original Message-----
> >> From: Biju Das <biju.das.jz@bp.renesas.com>
> >> Sent: Tuesday, September 3, 2024 12:07 PM
> >> To: Claudiu.Beznea <claudiu.beznea@tuxon.dev>; Ulf Hansson
> >> <ulf.hansson@linaro.org>
> >> Cc: vkoul@kernel.org; kishon@kernel.org; robh@kernel.org;
> >> krzk+dt@kernel.org; conor+dt@kernel.org; p.zabel@pengutronix.de;
> >> geert+renesas@glider.be; magnus.damm@gmail.com;
> >> gregkh@linuxfoundation.org; mturquette@baylibre.com;
> >> sboyd@kernel.org; Yoshihiro Shimoda
> >> <yoshihiro.shimoda.uh@renesas.com>;
> >> linux-phy@lists.infradead.org; devicetree@vger.kernel.org;
> >> linux-kernel@vger.kernel.org; linux- renesas-soc@vger.kernel.org;
> >> linux-usb@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> >> linux- clk@vger.kernel.org; linux-pm@vger.kernel.org; Claudiu Beznea
> >> <claudiu.beznea.uj@bp.renesas.com>
> >> Subject: RE: [PATCH 00/16] Add initial USB support for the Renesas
> >> RZ/G3S SoC
> >>
> >> Hi Claudiu,
> >>
> >>> -----Original Message-----
> >>> From: claudiu beznea <claudiu.beznea@tuxon.dev>
> >>> Sent: Tuesday, September 3, 2024 12:00 PM
> >>> Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas
> >>> RZ/G3S SoC
> >>>
> >>>
> >>>
> >>> On 03.09.2024 13:31, Biju Das wrote:
> >>>>>> During boot clr USB PWR READY signal in TF-A.
> >>>>>> STR case, suspend set USB PWR READY signal in TF-A.
> >>>>>> STR case, resume clr USB PWR READY signal in TF-A.
> >>>>> As I said previously, it can be done in different ways. My point
> >>>>> was to let Linux set what it needs for all it's devices to work. I
> >>>>> think the way to go forward is a
> >>> maintainer decision.
> >>>>
> >>>> I agree, there can be n number of solution for a problem.
> >>>>
> >>>> Since you modelled system state signal (USB PWRRDY) as reset
> >>>> control signal, it is reset/DT maintainer's decision to say the
> >>>> final word whether this signal fits in reset
> >>> system framework or not?
> >>>
> >>> I was thinking:
> >>> 1/ Geert would be the best to say if he considers it OK to handle this
> >>>    in Linux
> >>
> >> I agree Geert is the right person for taking SYSTEM decisions, since
> >> the signal is used only during state transitions (Table 41.6.4 AWO to
> >> ALL_ON and 41.6.3 ALL_ON to AWO)
> >
> > One more info, as per [1], this USB PWRRDY signal setting to be before Linux kernel boots.
> 
> The "controlled by" column mentions CA-55 on PWRRDY signal control line and it is b/w steps "DDR exits
> from retention mode" and  "clock start settings for system bus and peripheral modules". AFAICT, after
> DDR exists retention mode Linux is ready to run.

DDR retention exit happens in TF-A and it jumps into reset code where it executes BL2 in TF_A. Bl2 checks for warm or cold reset.
If it is warm reset, it sets required minimal clocks/resets and pass the control to linux by calling the
SMC callback handler. Which in turn calls resume(step 11-->14) path.

Step 8, Cortex-A55 Exit from DDR retention mode (when using) Setting for exiting form DDR retention mode
Step 9, Cortex-A55 USB PHY PWRRDY signal control (if use USB) SYS_USB_PWRRDY
Step 10, Cortex-A55 PCIe RST_RSM_B signal control (if use PCIe) SYS_PCIE_RST_RSM_B
Step 11, Cortex-A55 Clock start setting for system bus and desired peripheral modules in PD_ISOVCC CPG_CLKON_***ep 
(***: GIC600, MHU, SDHI, USB, ETH, DDR, PCI,AXI_COM_BUS, PERI_COM, AXI_TZCDDR,
OTFDE_DDR)
Step 12, Cortex-A55 Release reset setting for system bus and desired peripheral modules in PD_ISOVCC CPG_RST_***
(***: GIC600, MHU, SDHI, USB, ETH, DDR, PCI, AXI_COM_BUS, PERI_COM, AXI_TZCDDR,OTFDE_DDR)
Step 13, Cortex-A55 Release MSTOP bit for system bus and desired peripheral modules in PD_ISOVCC CPG_BUS_***_MSTOP
(***: ACPU, PERI_COM, PERI_DDR, TZCDDR),
CPG_MHU_MSTOP.
Step14) Cortex-A55 Clock start setting and reset release setting for Cortex-M33_FPU (if use Cortex-M33_FPU)
CPG_CLKON_CM33, CPG_RST_CM33

Cheers,
Biju
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
