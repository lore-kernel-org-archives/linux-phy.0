Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B48BCD342D
	for <linux-phy@archiver.kernel.org>; Tue,  3 Sep 2024 13:09:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c0OkQLppNnc5EguP3UvlXdgLORRw2/4WcY8fgmhX9vo=; b=OTY+K45XMRWjLv
	FxojFwEYUnNj3tPWS4akCGzC+OywuT2ExtCOSksXwrc/Uygaw0O6iP1e3TXdC+PpNvqAHXHVDMlGb
	nku+f2OTkOUFG2vG8kJ275WeqK1TRbdt17GMVARKE1LDuBc9Xj5wx4iPXcs7sRE5jaeeQ0njjtDYg
	BdQgDoMdT7YItD4ZDC0gJ1FwlaHhP2aO8q5Bl0o1OyI3/pQv8kzr9enaYzUPyQbXOIdmM4TWguh4t
	56SLbTrpwnjUK9FCxhx23HJrq2p/t8Z9lx3XVx1wy7VlRtLbivHPfIE/T8YHw7X35RJfZUzTgo8u5
	ECCZM09Kk0b2+hWQSWtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slTHW-00000000J7k-3TM0;
	Tue, 03 Sep 2024 13:09:14 +0000
Received: from mail-japaneastazlp170110002.outbound.protection.outlook.com ([2a01:111:f403:c405::2] helo=TYVP286CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slTHT-00000000J6R-42ss;
	Tue, 03 Sep 2024 13:09:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mCbnXwGvM3okxs162iV6y3zHzV+iLESgIpD6j2mPDOZiWPbgs2h5F2AtZmP6Hn8vqTebCTyXJsVO+RpuhN9gIQvwzf5/Cy7iAtMYmzcTFNLf4tz+4edFS23e5Og+jCAdSkcCrFXJqhTVzfzi8TEjQlfesWgQLYX2DgZ/GAUkzc7k5Jjwc0BF3/bEDLc1y474iuPKVlN7pmeiCpO3aabaLtm1rHbdnjnPFOGdKi3L7fNV+iTtjawcS5vGkWsabC2UxXWwBov5gOTH46sGrdg3bPy+gpb7NxhdRrmBAPOGRRo3Mtt7u1qUSeY9E2tOKMKwi3+XR6uNjDC7lZmJ9ljoUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=842DEPKmP5kIG5T94tqj9WGAimjQGxHQ3AcJcNBkX0w=;
 b=U6j67RtqWez3+xQ/v3DV8u6eGhMbTRpGvynHsis3Ig3fu1OQuDzdibI6sjCyKWIZ1CGJL4HULb9NNRDM7F57Lm0b0DqzfO7LKY9GMqs+Y39aRRE4ou8ifFQ8CIVBGkW+BQNq+MW5nVXnj3hW5TtQIjGEnVbLGCaBEtWmdiItO19APVNnUaaBZJYVvrzBYGzQu0QzYBk+fBy6X2t6fpaBnwNlXdOtFzd+kXTGCAzJLZqWsBzdOpMDR+LvKiJ+00Y3EzNnxhTQISQoIfz+X8K1rbAH8P45zEHGWmt7dFy3rV4UNAqULEoq8/8urvm6KlRVsa3hRTdMr5N5utJJAT9n/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=842DEPKmP5kIG5T94tqj9WGAimjQGxHQ3AcJcNBkX0w=;
 b=ZpzxxRpsCpTGLDsq/H3L6RQSvp99PFv01ALprtHo1xiOueaKmTn5BDOInaSLV72ITDnDJNmQcbxVD3CZCq/4vGQZDAtEWe6OWDkyxac17eWiotaFckFN1PL8dAR1NHphWsS+amA9bK9FS+/ddNongFmzJgk19rCgQe2r1UxF8nE=
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com (2603:1096:400:3d0::7)
 by OS0PR01MB5892.jpnprd01.prod.outlook.com (2603:1096:604:b2::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Tue, 3 Sep
 2024 13:09:01 +0000
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1]) by TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1%6]) with mapi id 15.20.7918.024; Tue, 3 Sep 2024
 13:09:01 +0000
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
Thread-Index: AQHa9KfrLpE8CCuWg0uaPyaAgZR3ArI+ZjUAgAEcCoCAAVgqEIADVdkwgAAP5ACAAACycIAABtQAgAAAhkCAABeagIAAAFcwgAFU0LCAADjlgIAAAKQQgAAJGICAAAE9UIAADyWwgAAHkoCAAADSkIAAB+2AgAABx5A=
Date: Tue, 3 Sep 2024 13:09:01 +0000
Message-ID: <TY3PR01MB11346FAC6022C81ED8B9B2DC386932@TY3PR01MB11346.jpnprd01.prod.outlook.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
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
 <TY3PR01MB1134689573A785E91A9041E1886932@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <5bcdc677-e61e-4312-a19b-57b4600685d3@tuxon.dev>
In-Reply-To: <5bcdc677-e61e-4312-a19b-57b4600685d3@tuxon.dev>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY3PR01MB11346:EE_|OS0PR01MB5892:EE_
x-ms-office365-filtering-correlation-id: c9bfb451-7a66-47d2-ecc4-08dccc199413
x-ld-processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|7416014|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?cVA4Mkh6WUVmaUhlWXQraTVIcVR6RFgwSFVmS2ZuQnE1Qm5VUXBZNUZ6aUNJ?=
 =?utf-8?B?TXAzSGtxd3Y1c3VEb2tBdGhtN3VZMWRsY0EzNzVGeE80ZmNLb3diQXVzTW12?=
 =?utf-8?B?Qi9YYXhkZEtYbnA2UlEwai9iY0hTTzZsOGZKQllUc1BhL3QzUHZzUThvektL?=
 =?utf-8?B?dklJeWFmRU1WL3lWd1pEeVE1QjlrTFFVWUVTOWpaVVo0c2JqdFZ5MVpUa05J?=
 =?utf-8?B?SmFUV3BnWU1XWDdZSkcwL3dVTk13YUl0UU5wRjdXbWZtcjcvVlpLSkZONmxG?=
 =?utf-8?B?OVhRUEZXdXM1bVRDT1QrZEtRelJYWUM4VkFOQ3hYeHVkaFdHOHgxSzVvNm9j?=
 =?utf-8?B?ejlRa0l0aGMxSGZpa3g5WXExV1UyY0lNU2krdjJ6MDlpZXY2Ny9QN0c5TTkr?=
 =?utf-8?B?WE5Va1plOS9xd2Z1UmdYREsybjV4c2JDU284VFFrLzBkaUZBSk4vY2R3YUhC?=
 =?utf-8?B?UXBuRlR2Q2dKVjB0ODM2eE81NzEra0xCL1IrMU53WWcxUVplbjVQeXNmd0t4?=
 =?utf-8?B?czh4V2Z5aFptalJldUtmZEVFWmhoZzd2eEtUcXBrc2dMaEdaKzBKdTd3VWZ1?=
 =?utf-8?B?OXIzN2RQZ3NpVlRJcDc0MFhYZ25FT3ViQXJrSzB3bjFieXJ2SWI2SDRyTXRt?=
 =?utf-8?B?aDUrZUNLMEkycGh4eUJPQmpwZUw1c09BNFpyKytoVWJTVWlhU3RTOVFydE54?=
 =?utf-8?B?Y01xZUFqN1grd0pnNU15Mk1jVDFLZVZNNGcraDFDc1prVFRmMnk0UHVacTFa?=
 =?utf-8?B?ZVRKcFJmVEFwZlFRNWJsbW9YZmg0ZEFsMDRGL3NiOHE0TmRLT0VPN0tsUE44?=
 =?utf-8?B?clBIenBLY3pLNExrbkgvTXVaOVRwRUlhdEdOU0xBYk9Dc1lQSEVibSsveGxs?=
 =?utf-8?B?d3NNdGhrQ0srMkhwVjhRRDdlVlkyOUlDY2NtdjIwTjZMUUlRTSs4aHFPZnBx?=
 =?utf-8?B?MjRpc1REdzlnaEdnOURoL25KWlk3WnR0cGE1SDBzbFhveFQ1VEpGL0lJVTBL?=
 =?utf-8?B?ODVZVE92VVlIWStMWE04aGlCei80aCtGL2huRnNVWkdOd3pzK29RZXFMdCtp?=
 =?utf-8?B?cEs5aVlHd24rZ0hmZXcwZ0tMSHFsY2FQUFJYUGQxNWpEVUV5dTExeW84dTZ5?=
 =?utf-8?B?bUREemZBT2RrUGppRmhHNzlQNUdjMHUwOGRvdnBZZXg0eE1uS2ZYRkNrd3Fq?=
 =?utf-8?B?SitQZFhaTHpqL1diWjhKRXk1WlBoMGFsOXV3M1dWc1JWbVJDaTVwQVdBVjEv?=
 =?utf-8?B?SHprNTUwUmVqQVc5emhlVGdNWm04RUpMMm85UHFQWTdTUnVaWlo0cUd6L3BO?=
 =?utf-8?B?ekJ1NU5OVW4zMzNqejJWdkMwcDZVQzlpcUM0Mi9xSGNiTWRTQzhpeEEwcEh1?=
 =?utf-8?B?RExwNEVOSWlrdkNuZ1M4VVhEb3p5OENCMEtzZk9Dd1NhMVZERHZrTDRMWVcv?=
 =?utf-8?B?ajRtdE1jcko0S2FRYmtrT1hLM0lHenI5QzIvMkI0aGZlVmh6bXJKdFVpRWpt?=
 =?utf-8?B?VWFWL2FlRG4yeVFIYS96dk14L0luYXhzSGk1TEtuLzFDcG5FWTcvU2ZTaktj?=
 =?utf-8?B?NjNqZXgrd1Nyd1EzR2h2alYxQjdmbEJtamFpbTJQK3JqTXh4ZlczMW0rOVBR?=
 =?utf-8?B?OGcrTU5qRlRVeExlblUwMFFreXFvS2dMUHhqemZvNUxkR01KWVk0RUMvaUwx?=
 =?utf-8?B?eVRYZ2ZYNmRocUwwdmNhTGN2eVZYSW1RM05wMGxBSytCZFRSUE9wS2RrL3ND?=
 =?utf-8?B?aXd3dmp1d3FxcFZpTHZaTHpCZk53RlpxUlJNV2RZeEFvdkhadVdSck1OSytr?=
 =?utf-8?B?OUlQSzQ3UGRjMTl1NC9HMmMxZUVhUWJDYkNaaFlLaXFpWlFWSHYzSXlGZm5k?=
 =?utf-8?B?YXIvek92QWpaeVJESWZkYWhzYWVsMU5xUDVkVHE5eDZnWGc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY3PR01MB11346.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(7416014)(376014)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q0JrellyWlJnQkFydXM1N2tMZGVjN3NSalNCV0dMVXZvS1U0aWp0UlpnUyt1?=
 =?utf-8?B?NGtERDRoNHFaampUaUU0VWY2b0xoK2FaSEt2SEUwOGxJOXhoV2NEakluQWZt?=
 =?utf-8?B?VDF3RVdxU2tiUVFGcUpPU1A5ck1yNUkvR2xhRlVGOTQ5eUpiMWVtaFJpWkxD?=
 =?utf-8?B?cHRxNzVKL3hOdkdwc3ZRdzBCL0VJd1hzR3N5UzFiZWcwRHJOcXdKY3BaMUFY?=
 =?utf-8?B?MUM0K0lUekkxbVl2dlNwdy9TVEVqYnAxcm9neTl3RnczMm8yTTRGY05oNWZs?=
 =?utf-8?B?NU5wQ2hyV2dyUFBMNmtVY1kyMWFvZ09oOCtKMmtKZzFDMDU0M29wSlBHQ1or?=
 =?utf-8?B?TlZoQ2Jkb3l3azNkZUE4ZExEWktYSjBsNEdkaVFoZ1dPM2lSUlNzWnIzTGpB?=
 =?utf-8?B?RHl4TUJhMk9GYWpLQWQvYzR3TWlETndQTzBBTTBYOTU1bFcvSHB5ZjB6UlBw?=
 =?utf-8?B?T3dGSjR6aTE0OXJ4b2hYUnp1UWtkaVlYSmdqcGYzTlZ4TW5hR2tMcVlHL0dE?=
 =?utf-8?B?d3ZJQVQxaWtESlRQa0hUV0hUWCsrUms2WldyYVFyOXF3WmphcGdtMmppV0hZ?=
 =?utf-8?B?aDJQK3JZT2t3WFFla2pwamxsVzlMblUzTytLejNVRXVqVFY1WkswMFpnRDJG?=
 =?utf-8?B?eGhEWFV5dERBd1lMWi9Kd3Y1YVlkblpCTzlIZVdERXl5ODdZK0daM04zR3Yy?=
 =?utf-8?B?S0N1c1BIVjBSM0FmRnhoaVhaRmFqdVBtSHpWbnh2RkMvUEZhT1pxNGd3WkY0?=
 =?utf-8?B?VFl3UlN4TktJazZuNmFLMVFVZ3dkczJwUmt2WnQvQWg3aUgvNlU5RlhVY0RV?=
 =?utf-8?B?emVybm9FM2RQSFdmR3J1OFpGQXZxZlJDTXgwa0tqdlFVOCtnSWVoZk1DUHlL?=
 =?utf-8?B?ZWNBT1pCK3N5cWVQRHh1aU1lSzYvak9uL1luU2pJVXZXMk02R0hXcDlDbzk1?=
 =?utf-8?B?ekxoeC9nZGltb1VXS0VrclJGZHVWdHBjL3ZXc1F6aGpaOVpKL2txY1JSSHp4?=
 =?utf-8?B?Wi94aHpnM3gxVVF0SVV1S1hCZnNxNjR6aW91YXFKWUc0UTdNNHFrQ2hYOVd5?=
 =?utf-8?B?OUV4YTI0VnhONThIS1FUSEJQczRGR1FDd2d2ZzhPVVdHSGx4NlUxRkZzK1Nj?=
 =?utf-8?B?bHJ1Q2ltdTJHTnArQ2xKNjIyYjZPUTNYYXQyOFhYWUg5VzZnNWdHd0JjZW9Z?=
 =?utf-8?B?QXd1WGxjMzVFb21TOWF6bWJ2V1pjL0JHNW1sTUt5d3NITFRBM1B1VlhCc0Yw?=
 =?utf-8?B?UHVUc09BWFF5MWFndG9DNEFUblUrNmwwWFdhQWtWOWZmRkVvQWNZS3VNRytw?=
 =?utf-8?B?M1Y5aDZ0RFU0Rms2VmFoYkhYd3FHUGpVK1NOMXBtOS85OGxFMytmclJZOTRt?=
 =?utf-8?B?NE53QURrY0cxUnoyVFVIaldOZ0lSRzFYZDllOVUwSEVNK1BoMHpJV2lEd1Fx?=
 =?utf-8?B?MjdHL1ZsSkMra1NlMWxRbzFpd3RkdytXOTZuMkY3bXpWbVd6SHMzbkhSbVVH?=
 =?utf-8?B?M1doUlBxZHR2bWk4VytPdHlpdXhXcnBuM3p3eHRmNWwzang2bmpkbjNVUnpl?=
 =?utf-8?B?bXhrKys5VDg2bXdtNS9QU1EzY2s0NnQyM0RPZmc5dTJvT2d5bUxPdmp5Umcw?=
 =?utf-8?B?SWkycjM4SlZsSEFaa1RwTjRQMDlyQk5La0E3Um11RHlkNzY2SUtUTDlOQjUy?=
 =?utf-8?B?N2o0NjdncXZxa0U1RExHdEIwdHdKbVhSM2ttQkY0Z0FyYjdNNGd1RVFWZ0xv?=
 =?utf-8?B?R3FseFpNYkY2RXNRNWkyNWhvelZaamdJcm5jNUhOczJTNndnd3BTdDNyaEIx?=
 =?utf-8?B?YnNEWVhDYkxDV0FqRmcrbndkVmU5NWErMzhRejFGbWlUT3A3cFNjQzQ0ZWZF?=
 =?utf-8?B?UmVlY29yNGl4YmpWb2JjT0EzSW5tNU9iQ01OV2xRcFpKMTZObzY1QVRNVVVk?=
 =?utf-8?B?TlB5cUxkVXM4L0VZM0F1YWp5ZXRWREpxZ2NTK29CRlF1MkRBYkgwNldMSlJk?=
 =?utf-8?B?dXZwQXAvQVJ4MFhNK0FBNHYveGJiYndiamNGdmRnWEtjdGFuWkdhUFpCcjFZ?=
 =?utf-8?B?WVpJUU5uaEcvNzZaZC9CVExOYVI1WHlWeG16UTVWdWtXQUpPMHlCckt1L05h?=
 =?utf-8?B?VElHeFlEU3pHSFN5Z2ptOXhPZGZ5MTVoODhDNE1za3FZaEUzRXhxSGI3QmNu?=
 =?utf-8?B?TlE9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY3PR01MB11346.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c9bfb451-7a66-47d2-ecc4-08dccc199413
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2024 13:09:01.0307
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g07xhPNGLA3m4oHfPEvg2v5ojOuIXeuZhAalN0eBcQ6V48S76M1xYOC2NEoTYZvpWKXV7FhCqSApQOycaZt7KcBIl/c3XG3ROb1y5YSIFTo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS0PR01MB5892
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_060912_358732_2AA29068 
X-CRM114-Status: GOOD (  12.07  )
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

Hi Claudiu,

> -----Original Message-----
> From: claudiu beznea <claudiu.beznea@tuxon.dev>
> Sent: Tuesday, September 3, 2024 1:57 PM
-
> clk@vger.kernel.org; linux-pm@vger.kernel.org; Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
> 
> 
> 
> On 03.09.2024 15:37, Biju Das wrote:
> >
> >
> >> -----Original Message-----
> >> From: claudiu beznea <claudiu.beznea@tuxon.dev>
> >> Sent: Tuesday, September 3, 2024 1:26 PM
> >> To: Biju Das <biju.das.jz@bp.renesas.com>; Ulf Hansson
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
> >> Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas
> >> RZ/G3S SoC
> >>
> >>
> >>
> >> On 03.09.2024 15:00, Biju Das wrote:
> >>>
> >>>
> >>>> -----Original Message-----
> >>>> From: Biju Das <biju.das.jz@bp.renesas.com>
> >>>> Sent: Tuesday, September 3, 2024 12:07 PM
> >>>> To: Claudiu.Beznea <claudiu.beznea@tuxon.dev>; Ulf Hansson
> >>>> <ulf.hansson@linaro.org>
> >>>> Cc: vkoul@kernel.org; kishon@kernel.org; robh@kernel.org;
> >>>> krzk+dt@kernel.org; conor+dt@kernel.org; p.zabel@pengutronix.de;
> >>>> geert+renesas@glider.be; magnus.damm@gmail.com;
> >>>> gregkh@linuxfoundation.org; mturquette@baylibre.com;
> >>>> sboyd@kernel.org; Yoshihiro Shimoda
> >>>> <yoshihiro.shimoda.uh@renesas.com>;
> >>>> linux-phy@lists.infradead.org; devicetree@vger.kernel.org;
> >>>> linux-kernel@vger.kernel.org; linux- renesas-soc@vger.kernel.org;
> >>>> linux-usb@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> >>>> linux- clk@vger.kernel.org; linux-pm@vger.kernel.org; Claudiu
> >>>> Beznea <claudiu.beznea.uj@bp.renesas.com>
> >>>> Subject: RE: [PATCH 00/16] Add initial USB support for the Renesas
> >>>> RZ/G3S SoC
> >>>>
> >>>> Hi Claudiu,
> >>>>
> >>>>> -----Original Message-----
> >>>>> From: claudiu beznea <claudiu.beznea@tuxon.dev>
> >>>>> Sent: Tuesday, September 3, 2024 12:00 PM
> >>>>> Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas
> >>>>> RZ/G3S SoC
> >>>>>
> >>>>>
> >>>>>
> >>>>> On 03.09.2024 13:31, Biju Das wrote:
> >>>>>>>> During boot clr USB PWR READY signal in TF-A.
> >>>>>>>> STR case, suspend set USB PWR READY signal in TF-A.
> >>>>>>>> STR case, resume clr USB PWR READY signal in TF-A.
> >>>>>>> As I said previously, it can be done in different ways. My point
> >>>>>>> was to let Linux set what it needs for all it's devices to work.
> >>>>>>> I think the way to go forward is a
> >>>>> maintainer decision.
> >>>>>>
> >>>>>> I agree, there can be n number of solution for a problem.
> >>>>>>
> >>>>>> Since you modelled system state signal (USB PWRRDY) as reset
> >>>>>> control signal, it is reset/DT maintainer's decision to say the
> >>>>>> final word whether this signal fits in reset
> >>>>> system framework or not?
> >>>>>
> >>>>> I was thinking:
> >>>>> 1/ Geert would be the best to say if he considers it OK to handle this
> >>>>>    in Linux
> >>>>
> >>>> I agree Geert is the right person for taking SYSTEM decisions,
> >>>> since the signal is used only during state transitions (Table
> >>>> 41.6.4 AWO to ALL_ON and 41.6.3 ALL_ON to AWO)
> >>>
> >>> One more info, as per [1], this USB PWRRDY signal setting to be before Linux kernel boots.
> >>
> >> The "controlled by" column mentions CA-55 on PWRRDY signal control
> >> line and it is b/w steps "DDR exits from retention mode" and  "clock
> >> start settings for system bus and peripheral modules". AFAICT, after DDR exists retention mode
> Linux is ready to run.
> >
> > DDR retention exit happens in TF-A and it jumps into reset code where it executes BL2 in TF_A. Bl2
> checks for warm or cold reset.
> > If it is warm reset, it sets required minimal clocks/resets and pass
> > the control to linux by calling the SMC callback handler. Which in turn calls resume(step 11-->14)
> path.
> 
> Is this from HW manual or some specific documentation? I'm referring at "resume" == "steps 11-->14"
> 
> >
> > Step 8, Cortex-A55 Exit from DDR retention mode (when using) Setting
> > for exiting form DDR retention mode Step 9, Cortex-A55 USB PHY PWRRDY
> > signal control (if use USB) SYS_USB_PWRRDY Step 10, Cortex-A55 PCIe
> > RST_RSM_B signal control (if use PCIe) SYS_PCIE_RST_RSM_B
> 
> Note *if use*: how does the TF-A know if USB/PCIe is used by Linux? The documentation mention to set
> it *if use*. Same note is on ALL_ON to VBATT transition documentation (namely "if using USB", "if
> using PCIe"). If TF-A will do this it should set this signals unconditionally. It will not be
> something wrong though. We don't know at the moment what this involves in terms of power consumption,
> if it means something...

You mean, you modelled this as reset signal just to reduce power consumption by calling runtime PM
calls to turn on/off this signal??

Does will it have any system stability issue as hardware manual says to do it at very early stage
before starting any clocks/resets?? Have you checked with hardware team?

Cheers,
Biju
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
