Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46512606D804
	for <linux-phy@archiver.kernel.org>; Thu,  5 Nov 2026 01:18:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=TxYYVad3
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=bqZvj1o+kaxwG5DTvaOTeZPqLeAoNhLrUnM/T/Z6Kio=; b=TxYYVad3SqP1DXuLT66zKTl5Ub
	0HzHXuRePELA7uTE7f6SxVpcycrkUBTgTGZIUg5B/duv1Am74psFyEr2hK1PvYmuWpydluIuwOzsM
	W7Rs6+XEGvFSg/H3yhhAx2wYmx/8sQZvujPBXjJzlYcskH9ZSOeWOUUjcGUmCDJhKiySN/bEQb8vJ
	nU6Tbl22/c8UFlVABHh7JwLcwHCOsz1lmDmJQ6E35kPeKEbsauPzwOUbys0MHieC6sW/rx66mqpyh
	KAWZYXDs5VdonOwINTIlQ3+z7+N++IfwAhH88ur+sdzKRkUYK3TQ9PLK6IEWG5tTxxX0f+NinN/SD
	Oszb3+1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOm7b-00000007RvN-02yU;
	Thu, 05 Nov 2026 01:18:31 +0000
Received: from mail-koreacentralazlp170130006.outbound.protection.outlook.com ([2a01:111:f403:c40f::6] helo=SEYPR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOm7T-00000007RpZ-3nm3;
	Thu, 05 Nov 2026 01:18:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qrD2MZi4rP1LLmpGMhWgadmNQ8lNSdAFrRK+0FRGUqwz7n/o+Rgt3+zn8qkQzsST+zxgV3tV4+a3ub8uIc2B7zqT0sbFhvZXG+bvf4UsGE5pMCFHyYR+BtQgp5+0GHM5gdCpJhdOWrFOhgCGJ3OyCHMc4TxfG2I/IeMQVCDTg7lx8n3vKCFunmJgORPk29/NUqbSCQNtUIQzZzh/i+qIFS2xRyjPNl6PkSLFYUUl2Vv2oGq1wKPmHvT+E4Y829nGnIG4AFCtj3IaoSarnr6FRzRbupPu3SbUy0adpJQVDiFbz+Sjc7WKkkW/0CBnqJ89u1J0QZ49Ve1iKxsMxks5Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r6r/Fw4gq5zIVoMRqfCnewtLCS23T/dKDpI3OiP/Y/c=;
 b=XVyNf04699pEuqUzfWguYSfuOYWbzY3fXJIUHHifrSd7Q2c500wjvKT1EqmI01PuhOxrHjuGMFHF+sy8e1yxsc7oGJtlxdFXKH4LVoeVcrgSF7mSwpM9dtrrBokXmbDj/rAdYsH0qHxsKjvVjjxdCrifhQcoHRHg8wKu/IA9PAMbL0WrqKA7Rn84e8QyimNFrVOR/GKQbTPe8wJmmJPDy8uO/1/X9kw/sU3OjGq4QJ68IFE6lcQCGdG25crHpWIvuOcbuk5r4Ha2/QlXW/RVEGBceLxrezdNXXhN7TZf+9142SVF7WAMoZakNqOmeWTMhfyreh7M28WZ4TGsD3H9kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cixtech.com; dmarc=pass action=none header.from=cixtech.com;
 dkim=pass header.d=cixtech.com; arc=none
Received: from PSAPR06MB4439.apcprd06.prod.outlook.com (2603:1096:301:80::7)
 by TYSPR06MB6921.apcprd06.prod.outlook.com (2603:1096:400:468::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.592.8; Thu, 5 Nov 2026
 01:18:00 +0000
Received: from PSAPR06MB4439.apcprd06.prod.outlook.com
 ([fe80::c772:e1f:2c48:f9ac]) by PSAPR06MB4439.apcprd06.prod.outlook.com
 ([fe80::c772:e1f:2c48:f9ac%3]) with mapi id 15.21.0592.007; Thu, 5 Nov 2026
 01:18:00 +0000
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
	=?utf-8?B?SG9uZ2xpYW5nIFlhbmcgKOadqOWuj+S6rik=?=
	<hongliang.yang@cixtech.com>, Conor Dooley <conor@kernel.org>
Subject: [PATCH v6 2/3] phy: cix: Add CIX Sky1 USB3 PHY driver
Thread-Topic: [PATCH v6 2/3] phy: cix: Add CIX Sky1 USB3 PHY driver
Thread-Index: AQHdbMN/SlPgKKOtpUK5J+Wm2Job4g==
Date: Thu, 5 Nov 2026 01:18:00 +0000
Message-ID: <20261105011751.4058411-3-hongliang.yang@cixtech.com>
References: <20261105011751.4058411-1-hongliang.yang@cixtech.com>
In-Reply-To: <20261105011751.4058411-1-hongliang.yang@cixtech.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mx.microsoft.com 1; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cixtech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PSAPR06MB4439:EE_|TYSPR06MB6921:EE_
x-ms-office365-filtering-correlation-id: 06d94f23-0c50-4415-f0d8-08df3adaa1fe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|23010399003|366016|6133799003|10067099003|18002099003|261102123227099003|22082099003|261102130727099003|56012099006|38070700021|261021121427099003|261022075727099003|261026121527099003|261026140227099003|261009223027099003|261028144727099003|261022105027099003;
x-microsoft-antispam-message-info: X+A97kBi+Xh1uaQt79Mkg/wXcm+uwP6HhohrSzx6KQ4y2i/cyHvKD7oBysAEleLiIfdn3lMkP89XAV3tUyfon/jgIft0zhmUm6EP7FwSn2m+unkg505UPstDol65+kdzgtVWj66AAAA0j2JaIY22inFlGSLUL6My/7bQ/yAtRNwWWczsq1K69FbwKyuvQOG3maeI6nqh/NBssIyezmT5ca6u0SpSTaFWl7lCkMzf74A726tZK7mMnBXhBlgNCoXO2Kwq49FNptMzulzGsacGtHFvU/aIKeZ2NuXG2rLTcc66Pt5HDg58BvfK7pq0xI67lg04uamK2d6HqVtvw+jXC/TVDl/XhprmXWvPju6YDlSHjhsL5B0FtZPVTLmAomt9Knv/FLfgB6EjDnQepWZnxscjXMWXvVm26qWdU5gMavbf/u60a2XSsZRqaTlM5ZcYMd+Rv9AazpjQQvLbrXC5fCQrqgaRn7exT84LChXgxRWccmbcAtZD5uoBbv+BCm+I18R/ZjD/O8md5djrl9lPTpH596D7r2hU4dcx80EzepttEaClduL/gZ4gEjkACUiIYITvBengNnvSPzVeo/x5U43C6IMXXL9wvvf524vMjRX3eTCsljGBtOuuo2pyJKxyPD9I8MROS8f1Cjc8Fwv+jFcbbfwRCTBzWs8X211CHV2Av26GylSP0XO+aEeFFW0B+zp679Y9caLWO1Tv7sZn22pW7IAXL/HY3t9IHYPvFUs=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PSAPR06MB4439.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(23010399003)(366016)(6133799003)(10067099003)(18002099003)(261102123227099003)(22082099003)(261102130727099003)(56012099006)(38070700021)(261021121427099003)(261022075727099003)(261026121527099003)(261026140227099003)(261009223027099003)(261028144727099003)(261022105027099003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NWxobVJZMGJSVUErWDU1cnQ2MjNMSGRhajdDVnVaSXpYYk5xdXYzUXEzdVU5?=
 =?utf-8?B?T1ErMjdOVU5IdUVmVVkra0kwblBrTDNuNHdlc2Y2Ky9JZWtHbTNnbVF4UFFo?=
 =?utf-8?B?Tk9BK3F6VmUwNGVQa21WejVUalovbGMvb3EzUlY4NHZTdU1qU2tkaExMYVlF?=
 =?utf-8?B?TTBHNEU1dmFSTFBXQ25zcUNLVUtnc1JYR0J1dWZZQnI3ODljbms5OHZyd2o1?=
 =?utf-8?B?NTFXQ1IzNmlQTWhaQWZ3dVNBNGE3VVV5SW1MOElOSGdnSDdRdml6SHdZQXdl?=
 =?utf-8?B?cXhjbDl3VWJUVGZoMG5ueFZMeUZhakhocUlwUnIvTkpsdlRSa3NWSDY0UzdF?=
 =?utf-8?B?RGNrTVdVbWpSTGVwcTR1V2ZkNHdqdVppMDY4U05YNmJ1REN4SHlpWEVrVVFx?=
 =?utf-8?B?b3MreDJjRmdySDFKbmZjRVlhNTZjTCtpREVsRDQ4cjhrUVpScTZxZUwrL3RM?=
 =?utf-8?B?eUxneWlZWEsrekoyMzhuVlpKQm1uK0F4UDVXVk0ybTVnSnlvVDB0OEcwK0ha?=
 =?utf-8?B?OFc5dTJtSXJ6RGF6bStmczByZTNPVXkzRHpiMDhDYmkwcmVpVmhhTFQwYklt?=
 =?utf-8?B?WThaYTNMTHdBYmgrYXJVaHlkTWlpN2NmQks1Sjk1OGFIVWJoWDBhK0lXaEs5?=
 =?utf-8?B?NHpnK3QzZTZJcWFCNTZraW02V09kYUlmTllPNXM0QTVjdXIwWGRoQzgrNUYw?=
 =?utf-8?B?M2NLOSs2UWJ6dmFwbUtPTDRXRklPVHYxbC90TTArbFlUcE1mc0hsZmlFeFpW?=
 =?utf-8?B?VGozRE5nUkxISjUrRVlsZmZOZlA5YXBlNUw0d3duZzZ5VlhVdTVUbHhvNTZ3?=
 =?utf-8?B?NXRUdmRlVzNnVE1YaFl2UkVkcjhMR0daVWx5RWdvbGR1MU41bVc3bjRrcG9n?=
 =?utf-8?B?RlJvUWcrVEF2djJDZlh6TjlXTStWUlRxQ0xGbFBxMW1odmJjVXR4M1dpUUdn?=
 =?utf-8?B?b1RFdDV5MCtNMjBVSmYvQlZSamczdS9TSzhPYm9oanFtZm5vcThxUjJGMk9C?=
 =?utf-8?B?Y0tPMDRab2tsNlhxU0poWURMZ3dBWEt3RHIvLzl6U1JhaE5GSFhFcERFaWFt?=
 =?utf-8?B?bklkYlhMU3kyUWlIZWh2TzdmdStOUjYwSTR2MzkvNCs0UnBtTXpZYTI5Yzkr?=
 =?utf-8?B?cUxpY3RHZTdhc3RrTk1TNWxzTnYwRXk5S1pkUTU4c1FtVDVwS1B1bFhycU1F?=
 =?utf-8?B?MGZtMzRCL1A3NkNUT1NGYjY1YWtxVlVsTVhKVzNiaW9lM2JtTzF6VmVucXd5?=
 =?utf-8?B?clpXM1owWktyL3ZIVnMxWld5WXZ3YjFxa0ZFZGg2SXNyZEI1NnpMdndhRlZy?=
 =?utf-8?B?SHFnOVUxdWk4ajIzS3dDZXpjc1NnaWFldEFnVVVsamtQY3BUcUl4TmxHSWhP?=
 =?utf-8?B?ZlNuRVIvUEtpOTlpL2lDV3hodkdTSG9adTU2RWFXekNvbzhNdHNyVHYyajdS?=
 =?utf-8?B?NEdHN2dITkhnTStkOHNLVnJSbk5uWDVmRkhRLzBWM3FUbHZoM0ZhRE44L3N1?=
 =?utf-8?B?MEx6NmZjbmdHa0JlVUtud1ZON3ZMVFA4RHRLcHQra2Z6L041SVNUNWtKT0hk?=
 =?utf-8?B?RnhuVnpUekE2dUJSL0RDQ2FmTzJTMDl5UEVZVEJUVUg5RVo2WkJXcVNOR1V1?=
 =?utf-8?B?TmpWdGRPcjA1UDBzWWZPdXdJaHFQRGZKeXdlVTcwN01BdTg0UFpjWkFWa0lw?=
 =?utf-8?B?cFRJQjl4aDExNjUyVnBLYWJLL0ZocW4yN1FiWHVYRno3YXllVk4yQmI1SU9P?=
 =?utf-8?B?cm5CRHBsc21tdEtsKzlkR0dnL1NranFWaHU1WlBXK2tHdVE3bkZjcHNmZDFF?=
 =?utf-8?B?bVZySmdJUWRIZnpFbUQ3M09DemF4R1NzWitsV2NEQXd6dVJYZ1I1WmRYeHdJ?=
 =?utf-8?B?eXVTWkdsUW9GN0UzL25QOENrY0cxaTQ3ZmtGS2ZIMkdlTXFTWm1vL2ZURnpq?=
 =?utf-8?B?ckFpOTAzb1RiMnNWWlJud3d0eVVFbVVBazRQWkRwVXZ2OEFML3RrNWhHUGZX?=
 =?utf-8?B?RjJSSEZkK3FSa2NPZnJkNHdndXJtcys3bVRJekJXcHU5aFVmWFYrdTd2aDFx?=
 =?utf-8?B?bVBHSDQrajdEMVd3Z2dVRmIzVEhFSlFTTUNCWDVibGFucEY3R1RrNElnY3B3?=
 =?utf-8?B?cnptWkExV0hQamE1bWl0L3FYcnJQdGxoYnJ4eGdCTEJhQ1pRZ3VDd0tzWEFP?=
 =?utf-8?B?UXpsREQzUG5kNTZKRm5ueWswc0JMeWU2UDlVRmNVTkFNSTAvdDBqcXB2cy9R?=
 =?utf-8?B?OGg4SThzMDd0UzlLZWRkRGFycUQ4eG5ML1h3VFZjWDJ6TlBEN0V0VHdYdmIr?=
 =?utf-8?B?MGJmQ2dkME9GWmtuZVJ4R3lTQS9BSStyM2xvOGdJZW5ORmZoUFZKV0duRDl1?=
 =?utf-8?Q?t4CfrhCIleEIfSu0=3D?=
Content-ID: <71A54DC64C7D734D8F93BC79B28D0EE2@apcprd06.prod.outlook.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PSAPR06MB4439.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06d94f23-0c50-4415-f0d8-08df3adaa1fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2026 01:18:00.4974
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cBF4jXBcj5zsOecnsGC633Lo0E7+1SrRczScVApuWVv6/WR+szB3VMhnRo0Wt2ouLlQs7FFkqCgOHnPERpjRXKljiXeb1kh8QDkuv0crAQQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYSPR06MB6921
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261104_171824_092460_C79E0D10 
X-CRM114-Status: GOOD (  17.54  )
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
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Add PHY driver for the USB3 PHY found on CIX Sky1 SoCs. The driver
handles initialization, reset, and clock management for the
multi-port USB3 PHY.

The PHY block drives both USB3 lanes, so a single PHY instance is
exported and its init/exit calls are reference counted, allowing both
controllers to share it.

Signed-off-by: Hongliang Yang <hongliang.yang@cixtech.com>
Reviewed-by: Conor Dooley <conor@kernel.org>
---
Changes in v6:
- Select REGMAP, the driver initializes the PHY registers through
  regmap.
- Use dev_err_probe() for the reset, clock and regmap acquisition
  failures.
- Export a single PHY instance instead of one PHY per usb-port child
  node; the block drives both lanes and both consumers share it.
---
 drivers/phy/Kconfig             |   1 +
 drivers/phy/Makefile            |   1 +
 drivers/phy/cix/Kconfig         |  21 ++
 drivers/phy/cix/Makefile        |   6 +
 drivers/phy/cix/phy-cix-usb3.c  | 404 ++++++++++++++++++++++++++++++++
 drivers/phy/cix/phy-cix-usbdp.h | 289 +++++++++++++++++++++++
 6 files changed, 722 insertions(+)
 create mode 100644 drivers/phy/cix/Kconfig
 create mode 100644 drivers/phy/cix/Makefile
 create mode 100644 drivers/phy/cix/phy-cix-usb3.c
 create mode 100644 drivers/phy/cix/phy-cix-usbdp.h

diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
index 105fbe408aa2..876e5857634c 100644
--- a/drivers/phy/Kconfig
+++ b/drivers/phy/Kconfig
@@ -176,6 +176,7 @@ source "drivers/phy/axiado/Kconfig"
 source "drivers/phy/broadcom/Kconfig"
 source "drivers/phy/cadence/Kconfig"
 source "drivers/phy/canaan/Kconfig"
+source "drivers/phy/cix/Kconfig"
 source "drivers/phy/eswin/Kconfig"
 source "drivers/phy/freescale/Kconfig"
 source "drivers/phy/hisilicon/Kconfig"
diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
index c6dd02003bbe..5a31c5df1746 100644
--- a/drivers/phy/Makefile
+++ b/drivers/phy/Makefile
@@ -28,6 +28,7 @@ obj-$(CONFIG_GENERIC_PHY)		+= allwinner/	\
 					   broadcom/	\
 					   cadence/	\
 					   canaan/	\
+					   cix/		\
 					   eswin/	\
 					   freescale/	\
 					   hisilicon/	\
diff --git a/drivers/phy/cix/Kconfig b/drivers/phy/cix/Kconfig
new file mode 100644
index 000000000000..5b5e632557db
--- /dev/null
+++ b/drivers/phy/cix/Kconfig
@@ -0,0 +1,21 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# Phy drivers for Cix PHYs
+#
+
+if ARCH_CIX || COMPILE_TEST
+
+config PHY_CIX_USB3
+	tristate "Cix USB3 PHY Driver"
+	depends on OF && HAS_IOMEM
+	select GENERIC_PHY
+	select REGMAP
+	help
+	  Enable this to support the CIX USB3 PHY for TYPEA Connection.
+
+	  This driver provides initialization and power management for
+	  the USB3 PHY found on CIX Sky1 SoCs.
+
+	  If unsure, say N.
+
+endif # ARCH_CIX || COMPILE_TEST
diff --git a/drivers/phy/cix/Makefile b/drivers/phy/cix/Makefile
new file mode 100644
index 000000000000..b46b1059b2ab
--- /dev/null
+++ b/drivers/phy/cix/Makefile
@@ -0,0 +1,6 @@
+# SPDX-License-Identifier: GPL-2.0
+#
+# Makefile for the Cix phy drivers.
+#
+
+obj-$(CONFIG_PHY_CIX_USB3)	+= phy-cix-usb3.o
diff --git a/drivers/phy/cix/phy-cix-usb3.c b/drivers/phy/cix/phy-cix-usb3.c
new file mode 100644
index 000000000000..bc1a27eb75f5
--- /dev/null
+++ b/drivers/phy/cix/phy-cix-usb3.c
@@ -0,0 +1,404 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * phy driver for cdn_sd0803_t7g_typea
+ *
+ * Author: Hongliang Yang <hongliang.yang@cixtech.com>
+ */
+
+#include <linux/clk.h>
+#include <linux/io.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/mutex.h>
+#include <linux/of.h>
+#include <linux/property.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+#include <linux/reset.h>
+#include "phy-cix-usbdp.h"
+
+struct cix_u3phy;
+
+struct cix_u3phy_cfg {
+	int (*u3phy_init)(struct cix_u3phy *u3phy);
+	int (*u3phy_exit)(struct cix_u3phy *u3phy);
+};
+
+/*
+ * Cadence SD0803 Type-A USB3 PHY initialization sequence for the CIX
+ * Sky1 SoC, taken from the vendor-provided PHY register programming
+ * sequence for this SoC.
+ */
+static const struct reg_sequence sky1_u3phy_conf[] = {
+	{CMN_SSM_BIAS_TMR,                  0x0018},
+	{CMN_PLLSM0_PLLPRE_TMR,             0x0030},
+	{CMN_PLLSM0_PLLLOCK_TMR,            0x00f0},
+	{CMN_PLLSM1_PLLPRE_TMR,             0x0030},
+	{CMN_PLLSM1_PLLLOCK_TMR,            0x00f0},
+	{CMN_BGCAL_INIT_TMR,                0x0078},
+	{CMN_BGCAL_ITER_TMR,                0x0078},
+	{CMN_IBCAL_INIT_TMR,                0x0018},
+	{CMN_TXPUCAL_INIT_TMR,              0x001d},
+	{CMN_TXPDCAL_INIT_TMR,              0x001d},
+	{CMN_RXCAL_INIT_TMR,                0x02d0},
+	{CMN_SD_CAL_PLLCNT_START,           0x0137},
+	{RX_SDCAL0_INIT_TMR_LANE0,          0x0018},
+	{RX_SDCAL0_INIT_TMR_LANE1,          0x0018},
+	{RX_SDCAL0_ITER_TMR_LANE0,          0x0078},
+	{RX_SDCAL0_ITER_TMR_LANE1,          0x0078},
+	{RX_SDCAL1_INIT_TMR_LANE0,          0x0018},
+	{RX_SDCAL1_INIT_TMR_LANE1,          0x0018},
+	{RX_SDCAL1_ITER_TMR_LANE0,          0x0078},
+	{RX_SDCAL1_ITER_TMR_LANE1,          0x0078},
+	{TX_RCVDET_ST_TMR_LANE0,            0x0960},
+	{TX_RCVDET_ST_TMR_LANE1,            0x0960},
+
+	{PHY_PLL_CFG_0803,                  0x0000},
+	{CMN_PDIAG_PLL0_CLK_SEL_M0,         0x8600},
+	{XCVR_DIAG_HSCLK_SEL_LANE0,         0x0000},
+	{XCVR_DIAG_HSCLK_SEL_LANE1,         0x0000},
+	{XCVR_DIAG_HSCLK_DIV_LANE0,         0x0001},
+	{XCVR_DIAG_HSCLK_DIV_LANE1,         0x0001},
+	{XCVR_DIAG_PLLDRC_CTRL_LANE0,       0x0041},
+	{XCVR_DIAG_PLLDRC_CTRL_LANE1,       0x0041},
+	{CMN_PLL0_DSM_DIAG_M0,              0x0004},
+	{CMN_PLL1_DSM_DIAG_M0,              0x0004},
+	{CMN_PDIAG_PLL1_ITRIM_M0,           0x003f},
+	{CMN_PDIAG_PLL0_CP_PADJ_M0,         0x0b17},
+	{CMN_PDIAG_PLL1_CP_PADJ_M0,         0x0b17},
+	{CMN_PDIAG_PLL0_CP_IADJ_M0,         0x0e01},
+	{CMN_PDIAG_PLL1_CP_IADJ_M0,         0x0e01},
+	{CMN_PDIAG_PLL0_FILT_PADJ_M0,       0x0d05},
+	{CMN_PDIAG_PLL1_FILT_PADJ_M0,       0x0d05},
+	{CMN_PLL0_INTDIV_M0,                0x01a0},
+	{CMN_PLL1_INTDIV_M0,                0x01a0},
+	{CMN_PLL0_FRACDIVL_M0,              0xaaab},
+	{CMN_PLL1_FRACDIVL_M0,              0xaaab},
+	{CMN_PLL0_FRACDIVH_M0,              0x0002},
+	{CMN_PLL1_FRACDIVH_M0,              0x0002},
+	{CMN_PLL0_HIGH_THR_M0,              0x0116},
+	{CMN_PLL1_HIGH_THR_M0,              0x0116},
+	{CMN_PDIAG_PLL0_CTRL_M0,            0x1002},
+	{CMN_PDIAG_PLL1_CTRL_M0,            0x1002},
+	{CMN_PLL0_SS_CTRL1_M0,		    0x0001}, /* SSC enabled */
+	{CMN_PLL0_VCOCAL_INIT_TMR,          0x00f0},
+	{CMN_PLL1_VCOCAL_INIT_TMR,          0x00f0},
+	{CMN_PLL0_VCOCAL_ITER_TMR,          0x0004},
+	{CMN_PLL1_VCOCAL_ITER_TMR,          0x0004},
+	{CMN_PLL0_VCOCAL_REFTIM_START,      0x02f8},
+	{CMN_PLL1_VCOCAL_REFTIM_START,      0x02f8},
+	{CMN_PLL0_VCOCAL_PLLCNT_START,      0x02f8},
+	{CMN_PLL1_VCOCAL_PLLCNT_START,      0x02f8},
+	{CMN_PLL0_VCOCAL_TCTRL,             0x0003},
+	{CMN_PLL1_VCOCAL_TCTRL,             0x0003},
+	{CMN_PLL0_LOCK_REFCNT_START,        0x00bf},
+	{CMN_PLL1_LOCK_REFCNT_START,        0x00bf},
+	{CMN_PLL0_LOCK_PLLCNT_START,        0x00bf},
+	{CMN_PLL1_LOCK_PLLCNT_START,        0x00bf},
+	{CMN_PLL0_LOCK_PLLCNT_THR,          0x0003},
+	{CMN_PLL1_LOCK_PLLCNT_THR,          0x0003},
+	{PHY_PIPE_USB3_GEN2_PRE_CFG0_0803,  0x0a0a},
+	{PHY_PIPE_USB3_GEN2_POST_CFG0_0803, 0x1000},
+	{PHY_PIPE_USB3_GEN2_POST_CFG1_0803, 0x0010},
+	{CMN_CDIAG_CDB_PWRI_OVRD,           0x8200},
+	{CMN_CDIAG_XCVRC_PWRI_OVRD,         0x8200},
+	{TX_PSC_A0_LANE0,                   0x02ff},
+	{TX_PSC_A0_LANE1,                   0x02ff},
+	{TX_PSC_A1_LANE0,                   0x06af},
+	{TX_PSC_A1_LANE1,                   0x06af},
+	{TX_PSC_A2_LANE0,                   0x06ae},
+	{TX_PSC_A2_LANE1,                   0x06ae},
+	{TX_PSC_A3_LANE0,                   0x06ae},
+	{TX_PSC_A3_LANE1,                   0x06ae},
+	{RX_PSC_A0_LANE0,                   0x0d1d},
+	{RX_PSC_A0_LANE1,                   0x0d1d},
+	{RX_PSC_A1_LANE0,                   0x0d1d},
+	{RX_PSC_A1_LANE1,                   0x0d1d},
+	{RX_PSC_A2_LANE0,                   0x0d00},
+	{RX_PSC_A2_LANE1,                   0x0d00},
+	{RX_PSC_A3_LANE0,                   0x0500},
+	{RX_PSC_A3_LANE1,                   0x0500},
+	{TX_TXCC_CTRL_LANE0,                0x2a82},
+	{TX_TXCC_CTRL_LANE1,                0x2a82},
+	{TX_TXCC_CPOST_MULT_01_LANE0,       0x0014},
+	{TX_TXCC_CPOST_MULT_01_LANE1,       0x0014},
+	{TX_TXCC_MGNFS_MULT_000_LANE0,      0x0002},
+	{TX_TXCC_MGNFS_MULT_000_LANE1,      0x0002},
+	{RX_SIGDET_HL_FILT_TMR_LANE0,       0x0013},
+	{RX_SIGDET_HL_FILT_TMR_LANE1,       0x0013},
+	{RX_REE_GCSM1_CTRL_LANE0,           0x0000},
+	{RX_REE_GCSM1_CTRL_LANE1,           0x0000},
+	{RX_REE_ATTEN_THR_LANE0,            0x0c02},
+	{RX_REE_ATTEN_THR_LANE1,            0x0c02},
+	{RX_REE_SMGM_CTRL1_LANE0,           0x0330},
+	{RX_REE_SMGM_CTRL1_LANE1,           0x0330},
+	{RX_REE_SMGM_CTRL2_LANE0,           0x0300},
+	{RX_REE_SMGM_CTRL2_LANE1,           0x0300},
+	{XCVR_DIAG_PSC_OVRD_LANE0,          0x0003},
+	{XCVR_DIAG_PSC_OVRD_LANE1,          0x0003},
+	{RX_DIAG_SIGDET_TUNE_LANE0,         0x1004},
+	{RX_DIAG_SIGDET_TUNE_LANE1,         0x1004},
+	{RX_DIAG_NQST_CTRL_LANE0,           0x00f9},
+	{RX_DIAG_NQST_CTRL_LANE1,           0x00f9},
+	{RX_DIAG_DFE_AMP_TUNE_2_LANE0,      0x0c01},
+	{RX_DIAG_DFE_AMP_TUNE_2_LANE1,      0x0c01},
+	{RX_DIAG_DFE_AMP_TUNE_3_LANE0,      0x0002},
+	{RX_DIAG_DFE_AMP_TUNE_3_LANE1,      0x0002},
+	{RX_DIAG_PI_CAP_LANE0,              0x0000},
+	{RX_DIAG_PI_CAP_LANE1,              0x0000},
+	{RX_DIAG_PI_RATE_LANE0,             0x0031},
+	{RX_DIAG_PI_RATE_LANE1,             0x0031},
+	{RX_CDRLF_CNFG_LANE0,               0x018c},
+	{RX_CDRLF_CNFG_LANE1,               0x018c},
+	{RX_CDRLF_CNFG3_LANE0,              0x0003},
+	{RX_CDRLF_CNFG3_LANE1,              0x0003}
+};
+
+struct cix_u3phy {
+	struct device *dev;
+	void __iomem *base;
+	struct regmap *phy_regmap;
+	struct reset_control *preset;
+	struct reset_control *reset;
+	struct clk *apb_clk;
+	struct clk *ref_clk;
+	struct mutex mutex; /* mutex to protect access to individual PHYs */
+	bool init;
+	int init_count;
+	const struct cix_u3phy_cfg *cfg;
+};
+
+static int sky1_u3phy_exit(struct cix_u3phy *u3phy)
+{
+	if (WARN_ON(!u3phy->init_count))
+		return -EINVAL;
+
+	u3phy->init_count--;
+	if (u3phy->init && u3phy->init_count == 0) {
+		reset_control_assert(u3phy->reset);
+		reset_control_assert(u3phy->preset);
+		clk_disable_unprepare(u3phy->ref_clk);
+		clk_disable_unprepare(u3phy->apb_clk);
+		u3phy->init = false;
+	}
+	return 0;
+}
+
+static int sky1_u3phy_init(struct cix_u3phy *u3phy)
+{
+	int ret;
+
+	if (!u3phy->init) {
+		/* usb rcsu reset is default deassert */
+		reset_control_assert(u3phy->reset);
+		reset_control_assert(u3phy->preset);
+		ret = clk_prepare_enable(u3phy->apb_clk);
+		if (ret) {
+			dev_err(u3phy->dev, "Failed to prepare_enable u3phy apb clock\n");
+			return ret;
+		}
+		ret = clk_prepare_enable(u3phy->ref_clk);
+		if (ret) {
+			dev_err(u3phy->dev, "Failed to prepare_enable u3phy ref clock\n");
+			goto disable_apb_clk;
+		}
+		reset_control_deassert(u3phy->preset);
+		ret = regmap_multi_reg_write(u3phy->phy_regmap, sky1_u3phy_conf,
+					     ARRAY_SIZE(sky1_u3phy_conf));
+		if (ret) {
+			dev_err(u3phy->dev, "Failed to write the reg sequence\n");
+			goto assert_reset_preset;
+		}
+		u3phy->init = true;
+		reset_control_deassert(u3phy->reset);
+	}
+	u3phy->init_count++;
+	return 0;
+
+assert_reset_preset:
+	reset_control_assert(u3phy->preset);
+	reset_control_assert(u3phy->reset);
+	clk_disable_unprepare(u3phy->ref_clk);
+disable_apb_clk:
+	clk_disable_unprepare(u3phy->apb_clk);
+	return ret;
+}
+
+static const struct cix_u3phy_cfg sky1_u3phy_cfg = {
+	.u3phy_init = sky1_u3phy_init,
+	.u3phy_exit = sky1_u3phy_exit
+};
+
+static int u3phy_regmap_write(void *context, unsigned int reg, unsigned int val)
+{
+	struct cix_u3phy *u3phy = context;
+	u32 offset = reg << 2;
+
+	writel(val, u3phy->base + offset);
+	return 0;
+}
+
+static int u3phy_regmap_read(void *context, unsigned int reg, unsigned int *val)
+{
+	struct cix_u3phy *u3phy = context;
+	u32 offset = reg << 2;
+
+	*val = readl(u3phy->base + offset);
+	return 0;
+}
+
+static const struct regmap_config cix_u3phy_regmap_cfg = {
+	.reg_bits = 32,
+	.reg_stride = 1,
+	.val_bits = 16,
+	.fast_io = true,
+	.reg_write = u3phy_regmap_write,
+	.reg_read = u3phy_regmap_read,
+};
+
+static int cix_usb3_phy_power_on(struct cix_u3phy *u3phy)
+{
+	int ret;
+	const struct cix_u3phy_cfg *phy_cfgs = u3phy->cfg;
+
+	if (phy_cfgs->u3phy_init) {
+		ret = phy_cfgs->u3phy_init(u3phy);
+		if (ret) {
+			dev_err(u3phy->dev, "failed to init udphy\n");
+			return ret;
+		}
+	}
+	return 0;
+}
+
+static int cix_usb3_phy_power_off(struct cix_u3phy *u3phy)
+{
+	int ret;
+	const struct cix_u3phy_cfg *phy_cfgs = u3phy->cfg;
+
+	if (phy_cfgs->u3phy_exit) {
+		ret = phy_cfgs->u3phy_exit(u3phy);
+		if (ret) {
+			dev_err(u3phy->dev, "failed to exit udphy\n");
+			return ret;
+		}
+	}
+	return 0;
+}
+
+static int cix_u3phy_init(struct phy *phy)
+{
+	struct cix_u3phy *u3phy = phy_get_drvdata(phy);
+	int ret = 0;
+
+	mutex_lock(&u3phy->mutex);
+	ret = cix_usb3_phy_power_on(u3phy);
+	mutex_unlock(&u3phy->mutex);
+	return ret;
+}
+
+static int cix_u3phy_exit(struct phy *phy)
+{
+	struct cix_u3phy *u3phy = phy_get_drvdata(phy);
+	int ret = 0;
+
+	mutex_lock(&u3phy->mutex);
+	ret = cix_usb3_phy_power_off(u3phy);
+	mutex_unlock(&u3phy->mutex);
+	return ret;
+}
+
+static const struct phy_ops cix_u3phy_ops = {
+	.init		= cix_u3phy_init,
+	.exit		= cix_u3phy_exit,
+	.owner		= THIS_MODULE,
+};
+
+static int cix_u3phy_probe(struct platform_device *pdev)
+{
+	struct cix_u3phy *u3phy;
+	struct device *dev = &pdev->dev;
+	struct phy_provider *phy_provider;
+	struct device_node *np = dev->of_node;
+	struct phy *phy;
+	int ret;
+
+	u3phy = devm_kzalloc(dev, sizeof(*u3phy), GFP_KERNEL);
+	if (!u3phy)
+		return -ENOMEM;
+	u3phy->dev = dev;
+	u3phy->cfg = device_get_match_data(dev);
+	if (!u3phy->cfg) {
+		dev_err(dev, "no OF data can be matched with %pOF node\n", np);
+		return -ENODEV;
+	}
+	u3phy->reset = devm_reset_control_get_exclusive(dev, "core");
+	if (IS_ERR(u3phy->reset))
+		return dev_err_probe(dev, PTR_ERR(u3phy->reset),
+				     "failed to get core reset\n");
+	u3phy->preset = devm_reset_control_get_exclusive(dev, "apb");
+	if (IS_ERR(u3phy->preset))
+		return dev_err_probe(dev, PTR_ERR(u3phy->preset),
+				     "failed to get APB reset\n");
+	u3phy->apb_clk = devm_clk_get(dev, "apb");
+	if (IS_ERR(u3phy->apb_clk))
+		return dev_err_probe(dev, PTR_ERR(u3phy->apb_clk),
+				     "failed to get APB clock\n");
+	u3phy->ref_clk = devm_clk_get(dev, "ref");
+	if (IS_ERR(u3phy->ref_clk))
+		return dev_err_probe(dev, PTR_ERR(u3phy->ref_clk),
+				     "failed to get reference clock\n");
+	u3phy->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(u3phy->base))
+		return PTR_ERR(u3phy->base);
+	u3phy->phy_regmap = devm_regmap_init(dev, NULL, u3phy, &cix_u3phy_regmap_cfg);
+	if (IS_ERR(u3phy->phy_regmap))
+		return dev_err_probe(dev, PTR_ERR(u3phy->phy_regmap),
+				     "failed to init PHY regmap\n");
+	ret = devm_mutex_init(dev, &u3phy->mutex);
+	if (ret)
+		return ret;
+	/*
+	 * The PHY block drives both USB3 lanes and both controllers share
+	 * the same initialization sequence, so a single PHY instance is
+	 * exported and its init/exit calls are reference counted.
+	 */
+	phy = devm_phy_create(dev, NULL, &cix_u3phy_ops);
+	if (IS_ERR(phy))
+		return dev_err_probe(dev, PTR_ERR(phy), "failed to create phy\n");
+	phy_set_drvdata(phy, u3phy);
+
+	/* keep the PHY in reset until a consumer calls phy_init() */
+	reset_control_assert(u3phy->reset);
+	reset_control_assert(u3phy->preset);
+
+	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
+	if (IS_ERR(phy_provider))
+		return dev_err_probe(dev, PTR_ERR(phy_provider),
+				     "failed to register phy provider\n");
+	return 0;
+}
+
+static const struct of_device_id cix_u3phy_dt_match[] = {
+	{
+		.compatible = "cix,sky1-usb3-phy",
+		.data = &sky1_u3phy_cfg
+	},
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, cix_u3phy_dt_match);
+
+static struct platform_driver cix_usb3_phy_driver = {
+	.probe		= cix_u3phy_probe,
+	.driver		= {
+		.name	= "cix-usb3-phy",
+		.of_match_table = cix_u3phy_dt_match,
+	},
+};
+
+module_platform_driver(cix_usb3_phy_driver);
+
+MODULE_AUTHOR("Hongliang Yang <hongliang.yang@cixtech.com>");
+MODULE_DESCRIPTION("Cix USB3 Only PHY driver");
+MODULE_LICENSE("GPL");
diff --git a/drivers/phy/cix/phy-cix-usbdp.h b/drivers/phy/cix/phy-cix-usbdp.h
new file mode 100644
index 000000000000..af88fc112a3e
--- /dev/null
+++ b/drivers/phy/cix/phy-cix-usbdp.h
@@ -0,0 +1,289 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef _PHY_CIX_USBDP_H
+#define _PHY_CIX_USBDP_H
+
+#define CMN_SSM_BIAS_TMR             0x0022
+#define CMN_PLLSM0_PLLPRE_TMR        0x002a
+#define CMN_PLLSM0_PLLLOCK_TMR       0x002c
+#define CMN_PLLSM1_PLLPRE_TMR        0x0032
+#define CMN_PLLSM1_PLLLOCK_TMR       0x0034
+#define CMN_BGCAL_INIT_TMR           0x0064
+#define CMN_BGCAL_ITER_TMR           0x0065
+#define CMN_IBCAL_INIT_TMR           0x0074
+#define CMN_PLL0_SS_CTRL1_M0         0x0098
+#define CMN_PLL0_SS_CTRL2_M0         0x0099
+#define CMN_PLL0_SS_CTRL3_M0         0x009a
+#define CMN_PLL0_SS_CTRL4_M0         0x009b
+#define CMN_PLL1_SS_CTRL1_M0         0x00d8
+#define CMN_PLL1_SS_CTRL2_M0         0x00d9
+#define CMN_PLL1_SS_CTRL3_M0         0x00da
+#define CMN_PLL1_SS_CTRL4_M0         0x00db
+#define CMN_TXPUCAL_INIT_TMR         0x0104
+#define CMN_TXPDCAL_INIT_TMR         0x010c
+#define CMN_RXCAL_INIT_TMR           0x0114
+#define CMN_SD_CAL_PLLCNT_START      0x0128
+#define CMN_PDIAG_PLL1_ITRIM_M0      0x01c3
+#define CMN_DIAG_GPANA_0             0x01f0
+
+#define RX_SDCAL0_INIT_TMR_LANE0     0x8044
+#define RX_SDCAL0_INIT_TMR_LANE1     0x8244
+#define RX_SDCAL0_INIT_TMR_LANE2     0x8444
+#define RX_SDCAL0_INIT_TMR_LANE3     0x8644
+
+#define RX_SDCAL0_ITER_TMR_LANE0     0x8045
+#define RX_SDCAL0_ITER_TMR_LANE1     0x8245
+#define RX_SDCAL0_ITER_TMR_LANE2     0x8445
+#define RX_SDCAL0_ITER_TMR_LANE3     0x8645
+
+#define RX_SDCAL1_INIT_TMR_LANE0     0x804c
+#define RX_SDCAL1_INIT_TMR_LANE1     0x824c
+#define RX_SDCAL1_INIT_TMR_LANE2     0x844c
+#define RX_SDCAL1_INIT_TMR_LANE3     0x864c
+
+#define RX_SDCAL1_ITER_TMR_LANE0     0x804d
+#define RX_SDCAL1_ITER_TMR_LANE1     0x824d
+#define RX_SDCAL1_ITER_TMR_LANE2     0x844d
+#define RX_SDCAL1_ITER_TMR_LANE3     0x864d
+
+#define TX_RCVDET_ST_TMR_LANE0       0x4123
+#define TX_RCVDET_ST_TMR_LANE1       0x4323
+#define TX_RCVDET_ST_TMR_LANE2       0x4523
+#define TX_RCVDET_ST_TMR_LANE3       0x4723
+
+#define CMN_PDIAG_PLL0_CLK_SEL_M0    0x01a1
+#define CMN_PDIAG_PLL1_CLK_SEL_M0    0x01c1
+
+#define XCVR_DIAG_HSCLK_SEL_LANE0    0x40e6
+#define XCVR_DIAG_HSCLK_SEL_LANE1    0x42e6
+#define XCVR_DIAG_HSCLK_SEL_LANE2    0x44e6
+#define XCVR_DIAG_HSCLK_SEL_LANE3    0x46e6
+
+#define XCVR_DIAG_HSCLK_DIV_LANE0    0x40e7
+#define XCVR_DIAG_HSCLK_DIV_LANE1    0x42e7
+#define XCVR_DIAG_HSCLK_DIV_LANE2    0x44e7
+#define XCVR_DIAG_HSCLK_DIV_LANE3    0x46e7
+
+#define XCVR_DIAG_PLLDRC_CTRL_LANE0  0x40e5
+#define XCVR_DIAG_PLLDRC_CTRL_LANE1  0x42e5
+#define XCVR_DIAG_PLLDRC_CTRL_LANE2  0x44e5
+#define XCVR_DIAG_PLLDRC_CTRL_LANE3  0x46e5
+
+#define XCVR_DIAG_BIDI_CTRL_LANE0    0x40ea
+#define XCVR_DIAG_BIDI_CTRL_LANE1    0x42ea
+#define XCVR_DIAG_BIDI_CTRL_LANE2    0x44ea
+#define XCVR_DIAG_BIDI_CTRL_LANE3    0x46ea
+
+#define CMN_PLL0_DSM_DIAG_M0         0x0094
+#define CMN_PLL1_DSM_DIAG_M0         0x00d4
+#define CMN_PDIAG_PLL0_CP_PADJ_M0    0x01a4
+#define CMN_PDIAG_PLL1_CP_PADJ_M0    0x01c4
+
+#define CMN_PDIAG_PLL0_CP_IADJ_M0    0x01a5
+#define CMN_PDIAG_PLL1_CP_IADJ_M0    0x01c5
+#define CMN_PDIAG_PLL0_FILT_PADJ_M0  0x01a6
+#define CMN_PDIAG_PLL1_FILT_PADJ_M0  0x01c6
+
+#define CMN_PLL0_INTDIV_M0           0x0090
+#define CMN_PLL1_INTDIV_M0           0x00d0
+#define CMN_PLL0_FRACDIVL_M0         0x0091
+#define CMN_PLL1_FRACDIVL_M0         0x00d1
+
+#define CMN_PLL0_FRACDIVH_M0         0x0092
+#define CMN_PLL1_FRACDIVH_M0         0x00d2
+#define CMN_PLL0_HIGH_THR_M0         0x0093
+#define CMN_PLL1_HIGH_THR_M0         0x00d3
+
+#define CMN_PDIAG_PLL0_CTRL_M0       0x01a0
+#define CMN_PDIAG_PLL1_CTRL_M0       0x01c0
+
+#define CMN_PLL0_VCOCAL_TCTRL        0x0082
+#define CMN_PLL1_VCOCAL_TCTRL        0x00c2
+
+#define CMN_PLL0_VCOCAL_INIT_TMR     0x0084
+#define CMN_PLL1_VCOCAL_INIT_TMR     0x00c4
+
+#define CMN_PLL0_VCOCAL_ITER_TMR     0x0085
+#define CMN_PLL1_VCOCAL_ITER_TMR     0x00c5
+
+#define CMN_PLL0_VCOCAL_REFTIM_START 0x0086
+#define CMN_PLL1_VCOCAL_REFTIM_START 0x00c6
+
+#define CMN_PLL0_VCOCAL_PLLCNT_START 0x0088
+#define CMN_PLL1_VCOCAL_PLLCNT_START 0x00c8
+
+#define CMN_PLL0_LOCK_REFCNT_START   0x009c
+#define CMN_PLL1_LOCK_REFCNT_START   0x00dc
+
+#define CMN_PLL0_LOCK_PLLCNT_START   0x009e
+#define CMN_PLL1_LOCK_PLLCNT_START   0x00de
+
+#define CMN_PLL0_LOCK_PLLCNT_THR     0x009f
+#define CMN_PLL1_LOCK_PLLCNT_THR     0x00df
+
+#define PHY_PMA_LANE_MAP             0xc010
+#define PHY_LANE_OFF_CTRL            0xc011
+
+#define PHY_PIPE_USB3_GEN2_PRE_CFG0  0xc018
+#define PHY_PIPE_USB3_GEN2_POST_CFG0 0xc01a
+#define PHY_PIPE_USB3_GEN2_POST_CFG1 0xc01b
+
+#define CMN_CDIAG_CDB_PWRI_OVRD      0x0041
+#define CMN_CDIAG_XCVRC_PWRI_OVRD    0x0047
+
+#define TX_PSC_A0_LANE0              0x4100
+#define TX_PSC_A0_LANE1              0x4300
+#define TX_PSC_A0_LANE2              0x4500
+#define TX_PSC_A0_LANE3              0x4700
+
+#define TX_PSC_A1_LANE0              0x4101
+#define TX_PSC_A1_LANE1              0x4301
+#define TX_PSC_A1_LANE3              0x4701
+
+#define TX_PSC_A2_LANE0              0x4102
+#define TX_PSC_A2_LANE1              0x4302
+#define TX_PSC_A2_LANE2              0x4502
+#define TX_PSC_A2_LANE3              0x4702
+
+#define TX_PSC_A3_LANE0              0x4103
+#define TX_PSC_A3_LANE1              0x4303
+#define TX_PSC_A3_LANE2              0x4503
+#define TX_PSC_A3_LANE3              0x4703
+
+#define RX_PSC_A0_LANE0              0x8000
+#define RX_PSC_A0_LANE1              0x8200
+#define RX_PSC_A0_LANE2              0x8400
+#define RX_PSC_A0_LANE3              0x8600
+
+#define RX_PSC_A1_LANE0              0x8001
+#define RX_PSC_A1_LANE1              0x8201
+#define RX_PSC_A1_LANE2              0x8401
+
+#define RX_PSC_A2_LANE0              0x8002
+#define RX_PSC_A2_LANE1              0x8202
+#define RX_PSC_A2_LANE2              0x8402
+#define RX_PSC_A2_LANE3              0x8602
+
+#define RX_PSC_A3_LANE0              0x8003
+#define RX_PSC_A3_LANE1              0x8203
+#define RX_PSC_A3_LANE2              0x8403
+#define RX_PSC_A3_LANE3              0x8603
+
+#define RX_PSC_CAL_LANE0             0x8006
+#define RX_PSC_CAL_LANE1             0x8206
+#define RX_PSC_CAL_LANE2             0x8406
+#define RX_PSC_CAL_LANE3             0x8606
+
+#define TX_TXCC_CTRL_LANE0           0x4040
+#define TX_TXCC_CTRL_LANE1           0x4240
+#define TX_TXCC_CTRL_LANE2           0x4440
+#define TX_TXCC_CTRL_LANE3           0x4640
+
+#define TX_TXCC_CPOST_MULT_00_LANE0  0x404c
+#define TX_TXCC_CPOST_MULT_00_LANE1  0x424c
+#define TX_TXCC_CPOST_MULT_00_LANE2  0x444c
+#define TX_TXCC_CPOST_MULT_00_LANE3  0x464c
+
+#define TX_TXCC_CPOST_MULT_01_LANE0  0x404d
+#define TX_TXCC_CPOST_MULT_01_LANE1  0x424d
+#define TX_TXCC_CPOST_MULT_01_LANE3  0x464d
+
+#define TX_TXCC_MGNFS_MULT_000_LANE0 0x4050
+#define TX_TXCC_MGNFS_MULT_000_LANE1 0x4250
+#define TX_TXCC_MGNFS_MULT_000_LANE2 0x4450
+#define TX_TXCC_MGNFS_MULT_000_LANE3 0x4650
+
+#define TX_DIAG_ACYA_LANE0           0x41E7
+#define TX_DIAG_ACYA_LANE1           0x43E7
+#define TX_DIAG_ACYA_LANE2           0x45E7
+#define TX_DIAG_ACYA_LANE3           0x47E7
+
+#define DRV_DIAG_TX_DRV_LANE0        0x40c6
+#define DRV_DIAG_TX_DRV_LANE1        0x42c6
+#define DRV_DIAG_TX_DRV_LANE2        0x44c6
+#define DRV_DIAG_TX_DRV_LANE3        0x46c6
+
+#define RX_SIGDET_HL_FILT_TMR_LANE0  0x8090
+#define RX_SIGDET_HL_FILT_TMR_LANE1  0x8290
+#define RX_SIGDET_HL_FILT_TMR_LANE2  0x8490
+
+#define RX_REE_GCSM1_CTRL_LANE0      0x8108
+#define RX_REE_GCSM1_CTRL_LANE1      0x8308
+#define RX_REE_GCSM1_CTRL_LANE2      0x8508
+#define RX_REE_GCSM1_CTRL_LANE3      0x8708
+
+#define RX_REE_GCSM2_CTRL_LANE0      0x8110
+#define RX_REE_GCSM2_CTRL_LANE1      0x8310
+#define RX_REE_GCSM2_CTRL_LANE2      0x8510
+#define RX_REE_GCSM2_CTRL_LANE3      0x8710
+
+#define RX_REE_PERGCSM_CTRL_LANE0    0x8118
+#define RX_REE_PERGCSM_CTRL_LANE1    0x8318
+#define RX_REE_PERGCSM_CTRL_LANE2    0x8518
+#define RX_REE_PERGCSM_CTRL_LANE3    0x8718
+
+#define RX_REE_ATTEN_THR_LANE0       0x8149
+#define RX_REE_ATTEN_THR_LANE1       0x8349
+#define RX_REE_ATTEN_THR_LANE2       0x8549
+
+#define RX_REE_SMGM_CTRL1_LANE0      0x8177
+#define RX_REE_SMGM_CTRL1_LANE1      0x8377
+#define RX_REE_SMGM_CTRL1_LANE2      0x8577
+
+#define RX_REE_SMGM_CTRL2_LANE0      0x8178
+#define RX_REE_SMGM_CTRL2_LANE1      0x8378
+#define RX_REE_SMGM_CTRL2_LANE2      0x8578
+
+#define XCVR_DIAG_PSC_OVRD_LANE0     0x40eb
+#define XCVR_DIAG_PSC_OVRD_LANE1     0x42eb
+#define XCVR_DIAG_PSC_OVRD_LANE2     0x44eb
+
+#define RX_DIAG_SIGDET_TUNE_LANE0    0x81e8
+#define RX_DIAG_SIGDET_TUNE_LANE1    0x83e8
+#define RX_DIAG_SIGDET_TUNE_LANE2    0x85e8
+
+#define RX_DIAG_NQST_CTRL_LANE0      0x81e5
+#define RX_DIAG_NQST_CTRL_LANE1      0x83e5
+#define RX_DIAG_NQST_CTRL_LANE2      0x85e5
+
+#define RX_DIAG_DFE_AMP_TUNE_2_LANE0 0x81e2
+#define RX_DIAG_DFE_AMP_TUNE_2_LANE1 0x83e2
+#define RX_DIAG_DFE_AMP_TUNE_2_LANE2 0x85e2
+
+#define RX_DIAG_DFE_AMP_TUNE_3_LANE0 0x81e3
+#define RX_DIAG_DFE_AMP_TUNE_3_LANE1 0x83e3
+#define RX_DIAG_DFE_AMP_TUNE_3_LANE2 0x85e3
+
+#define RX_DIAG_PI_CAP_LANE0         0x81f5
+#define RX_DIAG_PI_CAP_LANE1         0x83f5
+#define RX_DIAG_PI_CAP_LANE2         0x85f5
+
+#define RX_DIAG_PI_RATE_LANE0        0x81f4
+#define RX_DIAG_PI_RATE_LANE1        0x83f4
+#define RX_DIAG_PI_RATE_LANE2        0x85f4
+
+#define RX_DIAG_ACYA_LANE0           0x81ff
+#define RX_DIAG_ACYA_LANE3           0x87ff
+
+#define RX_CDRLF_CNFG_LANE0          0x8080
+#define RX_CDRLF_CNFG_LANE1          0x8280
+#define RX_CDRLF_CNFG_LANE2          0x8480
+
+#define RX_CDRLF_CNFG3_LANE0         0x8082
+#define RX_CDRLF_CNFG3_LANE1         0x8282
+#define RX_CDRLF_CNFG3_LANE2         0x8482
+
+#define PHY_PMA_PLL_CTRL             0xe003
+
+#define PHY_PMA_ISO_PLL_CTRL0        0xe005
+#define PHY_PMA_ISO_PLL_CTRL1        0xe006
+
+/* Bits */
+
+#define PHY_PLL_CFG_0803              0xC00E
+/* 0803 phy register */
+#define PHY_PIPE_USB3_GEN2_PRE_CFG0_0803	0xc01c
+#define PHY_PIPE_USB3_GEN2_POST_CFG0_0803	0xc01e
+#define PHY_PIPE_USB3_GEN2_POST_CFG1_0803	0xc01f
+
+#endif
-- 
2.54.0
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
