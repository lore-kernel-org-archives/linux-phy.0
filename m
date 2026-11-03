Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E99606A32C
	for <linux-phy@archiver.kernel.org>; Tue,  3 Nov 2026 07:49:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=IjhSzthp
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=57WbXet9uj7PcniVk9+YZ1SzYaxuFzkZyo0mvlc1z3U=; b=IjhSzthpYpAbqLJfEyBmS8rwxr
	JbIpcCNgl+08WReFkNMk3NpfpIhJcHEvPzXg4UftvJvl6zMJ75WJKnU0G4S4iI9ZA6brf5w4jwUjl
	UhzPeY3edpOJEe4IbZKPc4MhsEYcWBCzo4V4cXUM0dKrc8qwb+u6wY1BXFeHIUgCGIcL6+QaU81BQ
	b0YV5m8odN3256YZlG5wLmAWhQZYYpK2sPGjrjU7pJ5Wd3C3h8DZatYhXQOkrPK+GeXWDeodwfc28
	dt3ILUpfY5VzRytkCaaf6LAEBqSheA0m2K95mMZfrXcaCmklTareWemn6w6zv85gRy9SJX4CKrDbw
	XSbp+Ydg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO9Gt-00000001R1t-256v;
	Tue, 03 Nov 2026 07:49:31 +0000
Received: from mail-japaneastazlp170120005.outbound.protection.outlook.com ([2a01:111:f403:c405::5] helo=TYPPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO9Go-00000001R0y-3gsf;
	Tue, 03 Nov 2026 07:49:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WzvkOa3yTuqCt9z1F/cB2qPjsKxDFf+TICeS1YtJlmAyuXoyYBt6sblKyy72zwMdN0EsZla2oKkvrHycHDKQWXZOOXyjQr/9PBjDC1+snUfTOuKRnOjHHreeg2B2WzRplNEwx0QHpI+jG5njeBEaqxTSb9ykFL4QjtaxMQwfg7WcVe0AFHAxGkB5sGyFPcg+6VyaaCSZMam2iTLS7DhBZLpjO3p7m5lJPM8esMQAY1cna/F1yqxZFG/J+/pmaJoHvMgngSsiSA2+ZruFECBp21NG4aZv4+XuumKRm5inTMAudmM/ooRsNqBrmkmxuQ6jyA4JkYBfZsUx62VoTuu53w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8Sdb3Oh83ke8g4NDq3WeYH4ZIe9aL6Of7p5TxejTa4g=;
 b=wDwS7hOZWZkmJksDMrB7GLHtIg7qy0d6Q8Yb+e0+gR/AIg4t8C2MS54tW3oqATVGNlaCsE0U/NCGO1ZE71yea/20fxyUkECFY6jZ6dDIqLAna8N44Lp0EHWBmf1XUayv4eWtiH2HlwetJ2qglU22bFtl24erJoh5osl3gVCGxr49l5uP5nGlW/4HEyZ5fvCkPdQyAci2oJ9wtR4Cl1Ib8ELk67AIkVCwyj5LmY5j14PlsWyfM+8ey66g1FTSrorxZ5uHFQQn8wxpdaGhDShE52o9Hti+eHPI3UVQBwfGeGMGAfBT8m2WmhBgSQor1Fjjh1V8ljLLaCMK9jnScaqM1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cixtech.com; dmarc=pass action=none header.from=cixtech.com;
 dkim=pass header.d=cixtech.com; arc=none
Received: from PSAPR06MB4439.apcprd06.prod.outlook.com (2603:1096:301:80::7)
 by KUZPR06MB8941.apcprd06.prod.outlook.com (2603:1096:d10:86::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.592.8; Tue, 3 Nov 2026
 07:49:19 +0000
Received: from PSAPR06MB4439.apcprd06.prod.outlook.com
 ([fe80::c772:e1f:2c48:f9ac]) by PSAPR06MB4439.apcprd06.prod.outlook.com
 ([fe80::c772:e1f:2c48:f9ac%3]) with mapi id 15.21.0592.007; Tue, 3 Nov 2026
 07:49:18 +0000
From: =?utf-8?B?SG9uZ2xpYW5nIFlhbmcgKOadqOWuj+S6rik=?=
	<hongliang.yang@cixtech.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	=?utf-8?B?R2FyeSBZYW5nICjmnajmlrDkvJ8p?= <Gary.Yang@cixtech.com>,
	=?utf-8?B?RnVnYW5nIER1YW4gKOauteWvjOWImik=?= <fugang.duan@cixtech.com>
CC: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, cix-kernel-upstream
	<cix-kernel-upstream@cixtech.com>,
	=?utf-8?B?SG9uZ2xpYW5nIFlhbmcgKOadqOWuj+S6rik=?= <hongliang.yang@cixtech.com>
Subject: [PATCH v5 0/3] phy: Add CIX Sky1 USB3 PHY support
Thread-Topic: [PATCH v5 0/3] phy: Add CIX Sky1 USB3 PHY support
Thread-Index: AQHda2fUEIC+2qfBzU6J0hJFrTBzHQ==
Date: Tue, 3 Nov 2026 07:49:17 +0000
Message-ID: <20261103074913.1971025-1-hongliang.yang@cixtech.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mx.microsoft.com 1; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cixtech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PSAPR06MB4439:EE_|KUZPR06MB8941:EE_
x-ms-office365-filtering-correlation-id: cf94f365-4824-453b-59fe-08df397ef6dc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|23010399003|7416014|376014|38070700021|261102124527099003|56012099006|261009223027099003|261028144727099003|261026121527099003|261022075727099003|261022105027099003|261026140227099003|261021121427099003|10067099003|18002099003|261102123227099003|6133799003|3023799007;
x-microsoft-antispam-message-info: mGrU2mxEqTaIoDmWBSZrhV1H4YHEJ1Eo5wP6ghR7oS27R9onRFDZbQUQO8vu//GeREQlcK6gpK3oZ50v03xvj5+699OCZ2Gjlc35SaSqCfWovSm1XFt7EUdKGY4tQ9xSI7FOHPuurx4gW+y3eTd8mjkwvPY3R0A1IZm/8pRUx6Z4penEoWFvRx4RQqaJeO8lJcyg6IFW5Tf1/1ZJUYwTqS2Frug9ywgFz+UykBWVUBr2i6VVLTc39bxXRh3KuJxIjw6jsoHMYiY0udFAeEq3udRSGWnDZraYr/xHwa3TF5XOxuw/7t//G0oUYShKZFElGBvr4TJdMM06MmQTi2+b7Ki1uHzLU96wxephj1FMzHZq0QGEuDewtRTx6Fz6U7QuhHVGMskPSWcsOsLtG8+S36ecAhzDNS3TGe7YhVeRsMRPj/KxYddPhtHmizPfOnAkH9P9yGFIFInlEF+0V/kStVoM0NPgy1/uiypN6IbwXJRbxvBmAWjVFtEPOvUwW2OUji8oz1vtBTkRuV1xbzpWBPD2YMDo44boJNMtEB8TKnZYba+l0jQUc/hq5TuVOtdqRUAz4+7nVbUGdvxe097vmemA/IAGBCh5FW70TlpEUlwxmQHEpIohHKj3yzuECB3cJnXR2qVltOzcyyvlE1Rh2e41p3Q7a1Hq88yGj7nYM5BLfayJgzocEgbsj3+Qe3KvBWg5vv2wKR7klmpbQFlJC26D4+qcTvVXlC5oUMkH0g8=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PSAPR06MB4439.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(23010399003)(7416014)(376014)(38070700021)(261102124527099003)(56012099006)(261009223027099003)(261028144727099003)(261026121527099003)(261022075727099003)(261022105027099003)(261026140227099003)(261021121427099003)(10067099003)(18002099003)(261102123227099003)(6133799003)(3023799007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NWM3cGFGNGorVzFPdzRrNWd4VzBidVFLd2JJeEUvZ1lwaXRjWVYrc2t2Y2JE?=
 =?utf-8?B?OGFCbWR3MU5aRExWS1FVQkpXcVJRamc1Vk9NS0wvSHU3bVdDRlB2UXVDQmsr?=
 =?utf-8?B?dVJYUlJDOUxucUhZcWU5NFZocytTWE1kM0VUb3lIT01FZW1INCs1cmtGY0ti?=
 =?utf-8?B?Y3h4V1Y0cHVrMjV4ZGF3SEdnUXhkOVFsZGt6RXpUcVRQeVB5NUNCZUFIekxG?=
 =?utf-8?B?UlMxQ2VISEpHVGNjcnUrNEtWeW1oZzRhSkQ1dThZM2U3NWJIclFzOFlTUnhL?=
 =?utf-8?B?cHFERTJIMmZzTTNTNWt4RlFKSGxTV0svMGlQRHdPUXg4NTZSbzd6TVF6REc1?=
 =?utf-8?B?OUQ4Q3ErN2pyRFMwejVadWNLaEhoWjB0SHFMalN3NGg1ZnF5SUtpdlplZjlV?=
 =?utf-8?B?VFJIQkxhaFdWZFUrcDBCZE9oQnFkdE84Y2xWVlA0TGJJQnlhcVoxOVRtMTBj?=
 =?utf-8?B?MTFjS3lsK1hnWHN3UEhxbkNHbmYrUXBWS2Z2aWxwTVp2WDhaRVIxY01xWlJ6?=
 =?utf-8?B?UDVLUWVWVWtyMWtZanMxOWF5dUJuWTlvU3E2UXlMaGdBREg5WFRhMStjYnVq?=
 =?utf-8?B?ZUNsTkM1cVh6bVFnbkNWVi90Z04wYjJWcm83VFhwVW9sQ3UydU5IZno2a3VO?=
 =?utf-8?B?WDljK281MFZDM3hrWGhWNGE4bFZTY2pOOUUrbkVFR3ZLNzE4REFnVU5tckhu?=
 =?utf-8?B?bjlKL2N6VGtEcDhiRFBkSlBxaSsyVUk2SjRoTDRSdmI2ck9YSlI3bWgwb3JZ?=
 =?utf-8?B?ejJ2czd5WUdhb1ZaQklWaFZQNGV1RThlN1FjeTBSYkZwTmhsZEo2SytjMUh2?=
 =?utf-8?B?WUpOc1ltZFd0YVlyYmtTYURULzZjUjZvK3R6ckJQRnZnY2RxUEczL3ZVYUVi?=
 =?utf-8?B?R1orZVZndTNxZmNqMk1CMHdiQ3NKTDVYejNJNTFWODc5YjduQnBXZW1WWCtr?=
 =?utf-8?B?U2dwVDgyeWFqaEVzbXZtaGNYSXV1UU1ZUmpvYzhXUlFDdHlHVUo1aVhDRGFT?=
 =?utf-8?B?UUpmdEFicHN1RmZneUVzNmxCNXhrNDBSY0JSdEdzN2hVbnIwRmZFMEpMYWpi?=
 =?utf-8?B?WWN6akdnR2FnZ2NsajA2dHJxZFdESFllclZFRGpWVThBWGxyUFFFRlRPek5r?=
 =?utf-8?B?b21Oemo5V1J0RVF3VGU1MGgwTVBCaXY1UERLaC9McXMvcGo4ekdIUU5CaHcv?=
 =?utf-8?B?WFZBU0tFbXNrUHN4SDhRUXpRcWRVRGZ3NXhnNS9qeXhITHU5MmRxTkdwMXVj?=
 =?utf-8?B?Q0N5R2FSTVN1VkY5RkE3UDZvekpkRFd5cE9rSGtRVUdnRFVyQVNBQVJSeHp1?=
 =?utf-8?B?aisvU3pFSnJVT2h5Ny9Sa3pTOWZySWlnamhIeXVrbnNsMzIzWWpOeFBXU3FK?=
 =?utf-8?B?c2VKK1hqcGVQKzl4RkJmWENKNnlGeXlUOXlndS9yR05jN1k2UFcrTk0wcXBW?=
 =?utf-8?B?a1FSRFBnekQyZUROdU1HN21MRTV4RU1tTHpxalVjK0s5Sml1dFhSUnYvYkR0?=
 =?utf-8?B?Q0NDb0RldGVIUnZQYzg5N1ZoeXlWTTR6Y0xUUTROWlcvS0s4bGtvLzhhMFQv?=
 =?utf-8?B?WnJKZ2tKR2xpaUU4K21pSGdrbWJKaHpGVlR4dUUwYVJNOHFPcXoycnZpRTMr?=
 =?utf-8?B?Sk9RdDgvVStZYU9GdkNuRmp2THRpc01jZWNDaWRnU3BlZzY0VXhTQml5RXVr?=
 =?utf-8?B?Yk5YcVZaMEk3amZIYkJVS2EvaXQ4NFVMUWtxUU0rM3BsR1NheHdEaEVCR2Vp?=
 =?utf-8?B?czNHcW94MEhCT1lEVXpGajNxbkdGREVVaDN0NEluM29ndWxwVnVHNHkwWHI1?=
 =?utf-8?B?U0xxK3A3MkxpbHBIYjdnNUxKTVhoTGRIZHdVMXBGTW1jK1I2TFl4UGN6S2xY?=
 =?utf-8?B?S0wzSUl4VFdMQWhSWDJvZG02Ny9qdUN3T3hkMkFualU5Nk5RUVA0b1hLZE5T?=
 =?utf-8?B?SHBuZ2VIRVdVdFdCQzcrU2w2SVBFK1lHUTJGOFEvZGJsTlc3OWNXd1NzWUZT?=
 =?utf-8?B?WWlvL3hLSDhrNkx6NkF5RW5JRkVDN3JJOE9GNmxPREhaMzFNc0VkdXJKeVB0?=
 =?utf-8?B?UkQzTnJVcVVhbmZUQitvb3pPZ2R3dTZ5bWxpWWRqYktmaWhxOTJuTkFwRGRM?=
 =?utf-8?B?MXRhWUpKS0VWa041YWhXK3RDK29KTCs1SkZqcjhrZ0lLb1hCaEVHZGJGMUVu?=
 =?utf-8?B?WTVXd2tjbUJ3anR4Um5yQ1lvYmEvVnU1cmhZM3k3d3VGSDFPZGxtTDZVUnVR?=
 =?utf-8?B?Nk12VWhNRUxnWXN5NndHTXQySFlRcnFVNzRnN0V1ak9pWkt6VG13WWh0cHZQ?=
 =?utf-8?B?anVBaEJOWVhzNTI0dUFuM0RWa2VHVDdqemJEMk10VmZLU3VhMG93bUNrdWMv?=
 =?utf-8?Q?9Bq0z0os0+ATg6/U=3D?=
Content-ID: <C4106413FE51994CA832D241C9644777@apcprd06.prod.outlook.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PSAPR06MB4439.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf94f365-4824-453b-59fe-08df397ef6dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2026 07:49:17.9734
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u4nD5cCdMmUCUW2ov9/PQBivN9q7NHKkrSxZizyBmFzZtjV/8VjibLYkk+yiMNbXRgdx+LY1km6ty1ZIm0Kl4P1Fsf3PKmyTz0fqn/It5Iw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KUZPR06MB8941
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_234926_965924_9656C623 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

This series adds support for the USB3 PHY integrated in the CIX Sky1
SoC.

Patch 1 adds the device tree binding, patch 2 the PHY driver, and
patch 3 the SoC node plus the board enablement.

The PHY provides the SuperSpeed lanes for the Cadence USBSSP
controllers of the SoC. The block is multi-port: one instance is
exposed per controller port, and each instance handles its own reset
and clock management and the PIPE/PLL initialisation sequence.

Tested on Radxa Orion O6 (Sky1) together with the USBSSP controller
series: the PHY probes for both ports and USB 3.x devices enumerate at
SuperSpeed.

The controller device tree nodes use the PHY phandles added here; the
USBSSP controller series is posted separately.

The series applies on top of v7.4-rc1.

Changes since v4:
- Added the MAINTAINERS entries for the binding and the driver
  directory.
- Documented the origin of the PHY initialization sequence.
- Return -ENODEV instead of -EINVAL when the OF match data is missing.
- Use dev_err_probe() when creating the child PHYs.
- Dropped the unused dev_set_drvdata() call.
- Guarded against underflow in sky1_u3phy_exit().
- Fixed the #size-cells property order and removed the unused phy.h
  include and the redundant status properties of the PHY port nodes.

Hongliang Yang (3):
  dt-bindings: phy: Add CIX Sky1 USB3 PHY
  phy: cix: Add CIX Sky1 USB3 PHY driver
  arm64: dts: cix: Add USB3 PHY nodes for Sky1

 .../bindings/phy/cix,sky1-usb3-phy.yaml       | 107 +++++
 MAINTAINERS                                   |   2 +
 arch/arm64/boot/dts/cix/sky1-orion-o6.dts     |   4 +
 arch/arm64/boot/dts/cix/sky1.dtsi             |  25 ++
 drivers/phy/Kconfig                           |   1 +
 drivers/phy/Makefile                          |   1 +
 drivers/phy/cix/Kconfig                       |  20 +
 drivers/phy/cix/Makefile                      |   6 +
 drivers/phy/cix/phy-cix-usb3.c                | 418 ++++++++++++++++++
 drivers/phy/cix/phy-cix-usbdp.h               | 289 ++++++++++++
 10 files changed, 873 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/cix,sky1-usb3-phy.yaml
 create mode 100644 drivers/phy/cix/Kconfig
 create mode 100644 drivers/phy/cix/Makefile
 create mode 100644 drivers/phy/cix/phy-cix-usb3.c
 create mode 100644 drivers/phy/cix/phy-cix-usbdp.h


base-commit: 6628e7d4c6b25c8d18f1345e3a20d21829aae7e4
-- 
2.54.0
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
