Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97B89C5474C
	for <linux-phy@archiver.kernel.org>; Sat, 31 Aug 2024 05:14:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9yNTNZTCSxPsUgoqiMipMj0RORkOYPiMSzDqLutFa6Y=; b=NxTUb9423kdnal
	rFlHie2+YoQo9fJR7E2spNKMvVgbF+LX8B4ZZAwDvrZJcJW9j+L9f0I5xbuun5bzgOX81cBipV77w
	VORucAYDyR4U3jRAMAH4XZ6sUBWns56+kk3pZFXmlnVrnLByb1lZu1Hp3FSTlT8rda196uvMq10Le
	HXG1Xbae/Ljs3+k7onohcjg6W8IEvY7ikHlvkfBVhNX0Uph26zricM0zbmLr+jR9fpYtNLP+D0B5o
	DYSNQNu38F25xMHQ1yvUgBHm8Mxces8Ilq8SwC7/fgF/Huy19crqWBkYEpFsq8T1ZDgQNBXptdyvX
	UkWoo7P5u0cf5n2i1KZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skGRB-00000008aHA-0TJ2;
	Sat, 31 Aug 2024 05:14:13 +0000
Received: from mail-japaneastazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c405::1] helo=TY3P286CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skGR6-00000008aFe-0Ebd;
	Sat, 31 Aug 2024 05:14:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NqXEx558x8P5koDIjRvmqcs1d3g7CF9F+TAXIPDuSO5W0ZPXSCzYtkCXlQ4esZY+a2jmY4cXprEZf7xqL4CqDUsZYtLXSBvgdFZVzXGBaITfmjXxMZy133POQqse3Bp7+cSynUJFgrJGC7ctxG9i3LNIspoPR33M7VNQj+YHFm05NbeQbVl5w7M36l/9zMiQESbniDJKyzxh+70ISCJp90aQdSZPonsYDznKFrOTX8R306O+nH1NU8LC9fn0/b6nVsLGgAgS+NvYRXs3E9VMlfH48845ZT2FMRaxswmDEeZiWrh/p0VQJsFMHAw25GJeGRAV/ok2o8RW9U0NHsvPug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R5AIjk5NF+2Lk+wTugrXLvm7rfnYCz4Og0ydGMtueeM=;
 b=pCeWyDtxz5LiG8ZKtecFh+14KlEsDj8hBGwbbM/x0sAc9LS7Qi/Zws7SZ2QNSVAcRX8KOgYcbYULmGLfT32XmqmY/Vo6eSh/s6Ca5mVKUhhgigV2Qs9Kd+HppQhhiUWniqpvfqnw4mM8aCUfasjUpDlkR073Gc9+LpCQ0vvntdh+nxOAAVgN0SZUHoOQ9NPkPEBcUjPxeB47GW9a8ui8OUgp7F9l5R5ypxebesoqWOREwaqEL1iH1D4DWoeiHGC28699y6h5Dvy4h3igBKaASMV8P7aaVdpQK7Kv1MYyep/NxaWsMoJDLuGw0gfHMBMtaGvJXopY6LwhCh/V8inf+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R5AIjk5NF+2Lk+wTugrXLvm7rfnYCz4Og0ydGMtueeM=;
 b=PDojM8N855mqlKncbaFWMAbFWRT1+iBy6fBGbwsJBN9+cBKnEiXt/ofF8bxH1niaDAFl4vLMFAmGAtAWQ3swZloC7F+GaSu3kdLD+0jsgWnkb7MxBD+vSOl49YGKNhzzaaNIqHQ9d7BTzjWYgogsJlPs8mY5axGwW2JXSH/6shw=
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com (2603:1096:400:3d0::7)
 by OS3PR01MB6674.jpnprd01.prod.outlook.com (2603:1096:604:10c::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.21; Sat, 31 Aug
 2024 05:13:46 +0000
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1]) by TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1%6]) with mapi id 15.20.7918.020; Sat, 31 Aug 2024
 05:13:39 +0000
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
Thread-Index: AQHa9KfrLpE8CCuWg0uaPyaAgZR3ArI+ZjUAgAEcCoCAAVgqEA==
Date: Sat, 31 Aug 2024 05:13:38 +0000
Message-ID: <TY3PR01MB1134652F9587CFA0ADE851CA486902@TY3PR01MB11346.jpnprd01.prod.outlook.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <CAPDyKFrS4Dhd7DZa2zz=oPro1TiTJFix0awzzzp8Qatm-8Z2Ug@mail.gmail.com>
 <99bef301-9f6c-4797-b47e-c83e56dfbda9@tuxon.dev>
In-Reply-To: <99bef301-9f6c-4797-b47e-c83e56dfbda9@tuxon.dev>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY3PR01MB11346:EE_|OS3PR01MB6674:EE_
x-ms-office365-filtering-correlation-id: 3928cf53-0d7c-4972-d837-08dcc97bac69
x-ld-processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?UGFyOWIydkd3aU9HR3d0SWlLdUE5M1VuSU9paFJSZEtOdmY1TE42S0cvTUR3?=
 =?utf-8?B?ZisxT3J0U08wRzIvS216M0txTksvbWRwNVdicWd5WkV3LzFzd1VRY3Vic2lL?=
 =?utf-8?B?UE9rLy96cWFINjd2RzlBTUY3Wkl4ZXpucHJpMDc2c1VEbldEM3hmKzk2Mjdq?=
 =?utf-8?B?NDc3SHg4N0VWZHBYWC9LZ1VZalFNU2VNSFNHalFYelM0ak5pei9DM29vSVJP?=
 =?utf-8?B?T1hFSGJpeHI5bzhodlRiK0lTbWlSUGN1Y25EelYrbXZ5OGhveHUvZlkwcHJp?=
 =?utf-8?B?aS80ZnFpREdwTzRhTVpRSWp1MEU4QjU4UWlEYXdydm12K2k0cTMzTjExRzl1?=
 =?utf-8?B?WkVaU09YQzlWNUovKzRvVnRIdUJ3TW8wTjBUT291TzZnM1ZFU1ZQTzZTL0or?=
 =?utf-8?B?RXFXVzRFM3RvRG1aTTBvTVBnT0g3azY1T2NXNmJ2cWRCZmVxcm12d2RDbGMx?=
 =?utf-8?B?Zk5PS3BZcE1pWlplN0liSUFpZDNOc3M0R0g2TGx6ZUFHZlBuZ2Vpa0J5dGxi?=
 =?utf-8?B?a21ST3d6K1k2SG9HaHpaaVQ2QXBETk1XaTBxY0Q0SitUczUzZ2xsbGRoVmNQ?=
 =?utf-8?B?Qy9oZk5UcXhYcWVMSWNRK3ZtWFdndUY0YzQ0dEpxdm84Z3VVbVlReTV2eDYr?=
 =?utf-8?B?ZXlQcHhoVHBOSFJ1bW1pTWFPL3R0N0dIZzFCZWxxbi9ERC9FcktlZzFwYk1k?=
 =?utf-8?B?cUVRVWxjMTFmRGRydmxaUVdUKzYxSi9SNEdCaURlNVZVcXhic1R5L2wzdE5N?=
 =?utf-8?B?L2V3OFpUaEZtUmh0UldHVE5IK3Mwbit5QjlEeVNNVi9kS21JWEt6dEl5VFZP?=
 =?utf-8?B?cUtYYWZucW1SaHFlUzZZMlN2R1hSdXUySTZiNGJIK0NaeEhFdldTVlJWWmh2?=
 =?utf-8?B?LzREWno2Y0xlSzJaUWJlalM0Yk04cVZTRkdTUXAxM0M3bXM3TWhxMWpNVVQr?=
 =?utf-8?B?YzdmQlJhR01Ma3h6Qlp3TGxlQU9yQkxKZzZ6b1VBV3dhMTlsUGVDVlpDT25u?=
 =?utf-8?B?MkFDdWQrYVpKRlZ3NVhKU3l4VklqUnlQR0pubmF3YldxZHVUMDBRakwyMXpQ?=
 =?utf-8?B?bjFPeC9UY1Q4eXI3OS9EaW53dCtBa01Zdlk5LzFzN0RCSDlKU1JNNFdoWU9I?=
 =?utf-8?B?TTV3ZE5XZC9TenpKVjlMQ0dJd0YzS3hWMW5HOThoYmFncDBLR3FzWkp1NWJT?=
 =?utf-8?B?aHgrdGtNUUg5c21Sd2NDMXNCRVBzazhxeXRuS1crbkFyREdTSFNCbWRhVDFa?=
 =?utf-8?B?bFBNZjM2VUNZN1NVckE1ekQ3TnZBdzQvNGxMSkl2OFBlNS85Y2N5QkhoZHNo?=
 =?utf-8?B?cE43aWdKWWpYeXBwbXVldFRzUXNVaG8xSitWU2FKb05LT1lwdE5xcG15VFVM?=
 =?utf-8?B?VEVDUW5rYisxZlA3OUxvMDVWUmxJbnoxUU1ZUmRqVTdWNTV2SVdPUVp0OHRK?=
 =?utf-8?B?dmtGQTJwTzY2VGJpQzdGZjRVdFdrVnR6RWNSK1gwTnNURHVPdnJ5VVlRZFZR?=
 =?utf-8?B?WEorSkNGR3hBc09wSkNaNU9wcXJsWGo0VjNXN1FpczJDa0Z0Sm44akJOOHBm?=
 =?utf-8?B?U08vb0k5Z2tFMGc5L3RQa0pPQS83aGVsUm1ENVZtRnhMbGVsS0Z2N0dOd2py?=
 =?utf-8?B?WjRmNTRVdlFxdjdmM2dDL0ZjV3BUT0VhMXpORlA3ZFhFeGJtMUJQQVVsbkV6?=
 =?utf-8?B?UXRWY3ZXS0hacC9xR2NrK255NWR0MXB2Z0o3T1BIUXFrbGR2SlYzbWkvLytZ?=
 =?utf-8?B?WGwxZDVQSHRTUFYzazljdHNINU9uci84K0xLNkljNUErczRjVER1bUF1RWNL?=
 =?utf-8?B?VGFSV3FFVTE5cWpGT1FZcnp0WHBSOVAydU9kMy91d2h5RDJWeUE4ZS82ank2?=
 =?utf-8?B?alVkWkYzSWN6d2JORklLaGhWOFhieHZqc1g1Z2xKdFY0aUE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY3PR01MB11346.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q2FVL05ycWEvS2FhRUJqa1o2TkNjcG5FRVU4Z1B0ZTJOL29lUUlPT3Z6NkFv?=
 =?utf-8?B?VDRaZjEwWExob0Voa2t0QnFJMzBYNTUrcnl6N0t6L0hEWkpjWjloa1JiYzZq?=
 =?utf-8?B?U0ZBYWdET3VPL2h6SjZCSDZ6VHAvTnFCeG5oTW5pSU0rYTBMSTlzY1RwZzNm?=
 =?utf-8?B?RkkvdGdRVWFPMmgzdEcveG5vWit6elA2b0cxNkRQVzlkRDZKUHVMMlE1T3FB?=
 =?utf-8?B?OGVCMzhzSElRTVRSZU1NREVha3g1eUtBZEtzT2FoU0FYR2FoaFZmNy9zRFIx?=
 =?utf-8?B?TWhLS0VZcGxlNWRzdEtKaWNVdlVMRmx3d1VnMEJzNHkydkVJZUE5bG5DM1RN?=
 =?utf-8?B?RkRjTU5SVFQ0RlBVR2VvblhhOHlZZG82MGZVdUZJMTJXazR2VFM5NnNqTFhU?=
 =?utf-8?B?M0duL1plbzhvTkdYRFI0b2xHd1JSbDMyQmNBT3BSOExrcnMrQ2JXMTVjV2xF?=
 =?utf-8?B?bEZ4WjJua1hIdGR3elJyNHJuVE5VM2I0ZUFrRzlqWjZLYWJpTXlLWWpCL0xq?=
 =?utf-8?B?a055SHJkQ1NjVnc4Mldvc2xHaUxQLzF0TGFHcElNKy9FbkV0S3hhQTBWdHdo?=
 =?utf-8?B?VitRbWgxb01NV2QrV3FvK0cvWGhxVmFWYUVsRUpvZDhab2pUWmJYaGZTc0hz?=
 =?utf-8?B?ejZpbWNMQ0Yxd3I2TTBPeE0rZ3h0YmpFOG15Nm1GSi9ueFhnSUVhNDJTQ0p5?=
 =?utf-8?B?WStCdHBiRUVuRnZEWFdValc2QnFQZ3Q4RURWM0M3VzBBZlUwMHVSWW9PR2xw?=
 =?utf-8?B?NXYrWlp4S2ZwcHYzTEZDMVVjZUlyaUNTdThwMXBwMU9yK2xWcjB4Q1FiTVRM?=
 =?utf-8?B?c0wwZUpqZEQ3ZlJmbW5yK3RTaHY5RW9WNmZlZkFNemdDQnVEU3BGZm02TE9k?=
 =?utf-8?B?WXhQRWRubVptaG84ZmV0M3dUUXpyMFg4cEx5d3I1RUJaUzJObm9FbmRzM0ZG?=
 =?utf-8?B?MEtzOHR4dFdud0g5RDJua2NIMjhpalFFYlh3UDJYckU1RVFDYWNtZFNqbWFP?=
 =?utf-8?B?S2ZIcUhKVXN6L1FxQWhFV2RKQlhZZk1DdjBDYi9nL3dXYkQ2T08yeEJuMW1t?=
 =?utf-8?B?V3dhb1JVNy8xNkYvVFlHMENNa05zV3F0Y2RsSldBVkR3SGhTVVpIbk9vcDhE?=
 =?utf-8?B?bmZwa2ZzNktqNzdGcHlMd3BMMCtmVU9YSWVrZFd1QmJlS3JyNlJLc1g2ekRC?=
 =?utf-8?B?OGRZUURXc1hrOTFKQlJNWlRWaVBnYlE1RXUrNTJTd2dYNGQ5LzVmVFl0RHJP?=
 =?utf-8?B?S3hodXo5L0p4QXJySzNMdEd2RHNqcHBjSmpaSU56Qm1TRmdGcXdNbHhZQTVh?=
 =?utf-8?B?eDdQOTdDZ0pBY3lPL1lvWEY0ZE9URm5OOUQ0Z1F6WXJBSmpSK2pxUmxoTjdF?=
 =?utf-8?B?V3R0T3d2dnhrRlQrMDBsVUNvUVZhOHVpRjFnNGlQL2xFWjNDVEY5QmdCdVJO?=
 =?utf-8?B?K2ZQbWpuV0JTU0lDUkNvdlBMeVMvUEdCdGpSc3VYL2FMTnh1RDBZa1Y4UHJn?=
 =?utf-8?B?dCs2ZjVmRFVSN3lvOHpFNE5JVDhWREROTWJHOGluM0doaGNSUFRCcGs1S1pa?=
 =?utf-8?B?aC8vL3A5Wkp0eVo0Q0Q1aE1XRHBlUzkrMnBkRnV2dkFldXduMUd5VmVhcUhE?=
 =?utf-8?B?cksxY2lQZTZaaXJPM3hJRWwyZit3dWdKLzJkelJOcldVUzRTalVaWEZjY1gr?=
 =?utf-8?B?NHR4MUladnR3SURMSmF3dVhoMmRTRi8yVFptb3VJb01mMCtTakpiRUQrc2lq?=
 =?utf-8?B?Q1lydllWYWJRZjRFakVCVlBkYlBiTDdXamkwaEU1cEZtalVFcjRzUXdVUVlz?=
 =?utf-8?B?UmFwbWRkZTFKazM4U2Q4OXBjcFVPcEdPcTBYTjNLdkltYXNjUHJvMlM0TmVY?=
 =?utf-8?B?eEFEMmk1N050QWVoQkU1d1FkWVFiTnBRM0VLWWtWU1h6aXRDQldOWUJTRUY4?=
 =?utf-8?B?U2hWMkZLQ29pM0ZNY01oajhxdFhKWEN5K1N6TldBcGY1NG1CUngwSlkvYllU?=
 =?utf-8?B?MWpibVhOc3RxS3RodWUwdWh0amJWamZ0Qjk0RHJ0RDJRK2hHNWVmN0FoM0cw?=
 =?utf-8?B?V205Ym5nK25jcXc0S3pzK3YrK2RPdERUbEFlT21rbFVIUFo5YWlmZ3hOTTA3?=
 =?utf-8?B?QlpGMzA3eVUyWHNMY1o2bWs0UEFjU3RZdC9acGx0UDBteGNuN1h4Zk00SzVr?=
 =?utf-8?B?VFE9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY3PR01MB11346.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3928cf53-0d7c-4972-d837-08dcc97bac69
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Aug 2024 05:13:39.0164
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WG4dz2F+O1cXHlgJmUP5/U29sq7esH7yx6PdC5SIXcA0pC151ol9RTQ+X++95n8qPqySTaQhsgLFC8nSG868CnK+ITxTNJXLdX85VIWY8W0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS3PR01MB6674
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_221408_638648_1DEE14F2 
X-CRM114-Status: GOOD (  31.34  )
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
> Sent: Friday, August 30, 2024 9:23 AM
> Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
> 
> Hi, Ulf,
> 
> On 29.08.2024 18:26, Ulf Hansson wrote:
> > On Thu, 22 Aug 2024 at 17:28, Claudiu <claudiu.beznea@tuxon.dev> wrote:
> >>
> >> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >>
> >> Hi,
> >>
> >> Series adds initial USB support for the Renesas RZ/G3S SoC.
> >>
> >> Series is split as follows:
> >>
> >> - patch 01/16           - add clock reset and power domain support for USB
> >> - patch 02-04/16        - add reset control support for a USB signal
> >>                           that need to be controlled before/after
> >>                           the power to USB area is turned on/off.
> >>
> >>                           Philipp, Ulf, Geert, all,
> >>
> >>                           I detailed my approach for this in patch
> >>                           04/16, please have a look and let me know
> >>                           your input.
> >
> > I have looked briefly. Your suggested approach may work, but I have a
> > few thoughts, see below.
> >
> > If I understand correctly, it is the consumer driver for the device
> > that is attached to the USB power domain that becomes responsible for
> > asserting/de-asserting this new signal. Right?
> 
> Right!
> 
> >
> > In this regard, please note that the consumer driver doesn't really
> > know when the power domain really gets powered-on/off. Calling
> > pm_runtime_get|put*() is dealing with the reference counting. For
> > example, a call to pm_runtime_get*() just makes sure that the PM
> > domain gets-or-remains powered-on. Could this be a problem from the
> > reset-signal point of view?
> 
> It should be safe. From the HW manual I understand the hardware block is something like the following:
> 
> 
>                   USB area
>          +-------------------------+
>          |                         |
>          | PHY --->USB controller  |
> SYSC --> |  ^                      |
>          |  |                      |
>          | PHY reset               |
>          +-------------------------+

How USB PWRRDY signal is connected to USB? 

USB block consists of PHY control, PHY, USB HOST and USB OTG Controller IPs.

Is it connected to top level block or connected to each IP's for turning off the USB region power?

? Or Just PHY (HW manual mentions for AWO, the USB PWRRDY signal->USB PHY PWRRDY signal control)? 

If the USBPWRRDY signal is connected across modules with this reset signal approach
then you may need to update bindings [1] with that reset signal

[1] https://patchwork.kernel.org/project/linux-renesas-soc/patch/20240822152801.602318-12-claudiu.beznea.uj@bp.renesas.com/
 

Cheers,
Biju

> 
> Where:
> - SYSC is the system controller that controls the new signal for which
>   I'm requesting opinions in this series
> - PHY reset: is the block controlling the PHYs
> - PHY: is the block controlling the USB PHYs
> - USB controller: is the USB controller
> 
> Currently, I passed the SYSC signal handling to the PHY reset driver; w/o PHY reset the rest of the
> USB logic cannot work (neither PHY block nor USB controller).
> 
> Currently, the PHY reset driver call pm_runtime_resume_and_get() in probe and pm_runtime_put() in
> remove. The struct reset_control_ops::{assert, deassert} only set specific bits in registers (no
> pm_runtime* calls).
> 
> The PHY driver is taking its PHY reset in probe and release it in remove().
> With this approach the newly introduced SYSC signal will be de-asserted/asserted only in the PHY reset
> probe/remove (either if it is handled though PM domain or reset control signal).
> 
> If the SYSC signal would be passed to all the blocks in the USB area (and it would be handled though
> PM domains) it should be no problem either, AFAICT, because of reference counting the
> pm_runtime_get|put*() is taking care of. As the PHY reset is the root node the in the devices node
> tree for USB the reference counting should work, too (I may miss something though, please correct me
> if I'm wrong).
> 
> If the SYSC signal would be handled though a reset control driver (as proposed in this series) and we
> want to pass this reference to all the blocks in the USB area then we can request the reset signal as
> shared and, AFAIK, this is also reference counted. The devices node tree should help with the order,
> too, if I'm not wrong.
> 
> Thank you for looking at this,
> Claudiu Beznea
> 
> >
> > [...]
> >
> > Kind regards
> > Uffe
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
