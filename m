Return-Path: <SRS0=BRk1=PN=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFD8C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 25 Oct 2021 07:26:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5F45160FBF
	for <linux-phy@archiver.kernel.org>; Mon, 25 Oct 2021 07:26:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5F45160FBF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=nxp.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uqcGlKAIDqRl64OvetJy2HuehtnFzjDRRTYIrCX1nYw=; b=aFpf57ZFKoPgKY
	ibg2KdYtygjt7ZQV/uxQFjYsT3Y4fP/bKPthTAe+U2OcQnjR4HNIxlma7T5dvKY6WyvtDvTPN3uWn
	iFo1TW2HofKKM9HNmDswC3+4vR2jHFK87ST2Kq00g4MrAXWHNXQbTq8mUZx9AwZRjdW38nI7ZicNR
	xwNhFW2YKF5WBjjaR2GnaoC1sRGAW9vyNLIA8KU4pRE8H32fhqlCbuLIOgkxh/1G+sX8j5uhxWL2e
	QqQXeKecx2rQo8mrxbskSTYBl8XoJhBjgssG9BghymPPyfI9Gui+G1ygxKMJUApM5ilWVipQqkZLf
	h4Ztc5iCXn58lxIPQ6Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1meuNa-00Fc61-CR; Mon, 25 Oct 2021 07:26:46 +0000
Received: from mail-am6eur05on2081.outbound.protection.outlook.com
 ([40.107.22.81] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1meuKk-00FbCD-UT; Mon, 25 Oct 2021 07:23:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j/CGhYrcZ08hQiugSdVl41EPzWH/lZtrvtmPKKranh/KxT8YvQeIyi4ygbvQrabp1a3OvnTOcEIpuPHSRVelDlHBxLHD2yS5OTNa6GCUf3jM68iL3NFA0NLid9Llr4yg23S1aSuKB0aoOHhD73JWkprr23yfRlTht3Jg9npUL3LTIjBvG7ADKJPKiwRscoOqxDZnn3y4LpKAo/hP98PMXpNOz1Z+eXCUvtbwbk/infGc4mKVjMWpC0jxqGrSQkOjHC7rXplQ/Dcr8RWHLlXZQLGdnA5ZWOBpZASlLDfHMeZM5YesAbEsZtVjGjH/KcMIgfOrCjPThLWYiiMJp634VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1O6huxb050myhED3tyLZl7FCFYq1NkzQS41Dh78b5Po=;
 b=kBSo+ret2m3x+7TnfINuvrysKai463g9QUmNvCpHRzwOBgrijaHaCXVfU8cS8O4ni4RsioVEQtMx2Ycbq8HKAwyiUJk49ucJpVYbk7wwLUUVI9QRM3mTRAdu8b7Sx54Ecws7puM8CJMDip3SKQi0gaJUAz07IYNdFsxrpCY4KyNTcbhQpRnwaFm5dBAjr3P4C4X1eHUT4MUoNBb1Nf1y5yzAnY/c5FtiFFOEb3pUSbXLXzaM0oYX/qSBX2UkZFk5K/488v/797TJeyD8PRZRgxyR6ybWIv9xJExJ5ADsX3/0s+Z3C2JaEbViGb0mWFY2a20tUWFQt2h8Bhz4Cc0/oA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1O6huxb050myhED3tyLZl7FCFYq1NkzQS41Dh78b5Po=;
 b=qIhp0rVVmUOuKGjhN43DwpZmGgpQ/WXRli0tHNZDakuUMcUmVt2HNGngri3wT3Oq+3HqwU8RL4OScufyhXC/Rg1l8JxJgAmFO5aLVKKwS/D+AzuYZhqDssq3jIV255jy6uaWbwNHVpp86M+nLywrEveoQDPanK+owO5+4Wpwbp8=
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com (2603:10a6:20b:42b::10)
 by AS8PR04MB8945.eurprd04.prod.outlook.com (2603:10a6:20b:42c::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.16; Mon, 25 Oct
 2021 07:23:47 +0000
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::b059:46c6:685b:e0fc]) by AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::b059:46c6:685b:e0fc%4]) with mapi id 15.20.4628.020; Mon, 25 Oct 2021
 07:23:47 +0000
From: Richard Zhu <hongxing.zhu@nxp.com>
To: "tharvey@gateworks.com" <tharvey@gateworks.com>
CC: Lucas Stach <l.stach@pengutronix.de>, Kishon Vijay Abraham I
 <kishon@ti.com>, "vkoul@kernel.org" <vkoul@kernel.org>, Rob Herring
 <robh@kernel.org>, "galak@kernel.crashing.org" <galak@kernel.crashing.org>,
 Shawn Guo <shawnguo@kernel.org>, "linux-phy@lists.infradead.org"
 <linux-phy@lists.infradead.org>, Device Tree Mailing List
 <devicetree@vger.kernel.org>, Linux ARM Mailing List
 <linux-arm-kernel@lists.infradead.org>, open list
 <linux-kernel@vger.kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>
Subject: RE: [PATCH v3 0/9] add the imx8m pcie phy driver and imx8mm pcie
 support
Thread-Topic: [PATCH v3 0/9] add the imx8m pcie phy driver and imx8mm pcie
 support
Thread-Index: AQHXwf8T9WRZIWT4CUunBVSnJ63L4qvZhp6ggAD4IYCAAKk/cIABRTmAgABCoVCAAPyvgIAAhMLwgAEGQACAAA+SAIADuD4QgABZ2ZA=
Date: Mon, 25 Oct 2021 07:23:47 +0000
Message-ID: <AS8PR04MB867620E1A1E940275CD38B528C839@AS8PR04MB8676.eurprd04.prod.outlook.com>
References: <1634028078-2387-1-git-send-email-hongxing.zhu@nxp.com>
 <CAJ+vNU2b-=T_gTsRBvdF7SRUZopEFOU_Np8mEJn8bOpn5b5FaA@mail.gmail.com>
 <AS8PR04MB8676B2AC24E2769D47A1ED478CBD9@AS8PR04MB8676.eurprd04.prod.outlook.com>
 <CAJ+vNU2AitmxCyam5FArmxAD41QUU=5CF_0JZhm+uzdkRbr7kw@mail.gmail.com>
 <AS8PR04MB8676840D7EDD56D10F9471288CBE9@AS8PR04MB8676.eurprd04.prod.outlook.com>
 <CAJ+vNU2GU5=mM5+2Yg9gAuU0RSdJHWEU_+ykmz-qUWfsOnRJ8g@mail.gmail.com>
 <AS8PR04MB867624A8A5B6AE27D6A9160F8CBF9@AS8PR04MB8676.eurprd04.prod.outlook.com>
 <CAJ+vNU1Si_bv0_2j5AU-v_1QtUGqwU_4u=NksAVFFXXkkNC1Sw@mail.gmail.com>
 <AS8PR04MB8676D9FFB6506A09D104E32A8C809@AS8PR04MB8676.eurprd04.prod.outlook.com>
 <CAJ+vNU0cLd7oex5uUyJenqs229gsgZe_Vpu3uyKGw1=B+Uu5YQ@mail.gmail.com>
 <CAJ+vNU0wcQtrKh5W7UZknEiV2o7MKLV90CCrJqGGw=x_VYwMGg@mail.gmail.com>
 <AS8PR04MB867697878533A37B72D7E4AA8C839@AS8PR04MB8676.eurprd04.prod.outlook.com>
In-Reply-To: <AS8PR04MB867697878533A37B72D7E4AA8C839@AS8PR04MB8676.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7f76db8f-2d27-448b-6635-08d9978862cd
x-ms-traffictypediagnostic: AS8PR04MB8945:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <AS8PR04MB8945AD17F9DD516B483790578C839@AS8PR04MB8945.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IRdP/2otnl1zKnF+p4EniA1H+tXoyYaoxbE5fNI1k0Sk0k70CwMcXQeXpMCHYHT/vMVKNpfTt1iCqJp6wnE7uCHuKHHIfSQLWZSq5USadNYPqBraEHIdHaf5JoHH4H6RYWIKqGf3Qyi2I15P1Uh97G9nP3xVOoFOuMd6ivKk9svXw5iJEDKiClxoYwEEULEm/JCnd/ATaE1uNql+b2+tT79FQPDJ/qEbGA3+mRTw98Rohmd+MHWKxbjNtHL5YIfuLvhItYBlxEFOJ0/95zAkVtlKLGf5oLXFqjKlNlL9cxaUzal8mI9cUg8cOsWBEcsRsnAFSxSghOz8bs4ZT9PxA6vqpJ0mtX+byrSzM581Nqxdqw+CaPjl6vlccffGTQD8lqnSxUrJCohZH9X9/10tbtP2HCVQYkJpuPR5wddHqod4Cfw2HJ/gnzpBqiiPB2MlZcwagq1EAm2zPx7n1YPsipnmEqVhM0xhMtHaYAb+nQPgSKD04z78W5VwPCSzXwpmS9ERiIBqGbIUCleS7gm2QBYtC1SbJMEgo/1rLjxSO0PjXDNMYp26QO/4XO5B2TBEZDXAMT+2+mz1K9TmEh8cBYKs8YMRvLBRXppK92q7V2l8w6eFznttcmCku4D+CJ33VSwY+yEJ/beZ/E12CZ2oA+nwb48rnMn4Oedx57yc8ErzVCjeDudI+y1iUGGENn4fSiUfnlcE2CgPbnMX7l302JCS/tqykU+XX9FDJ3TroxE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR04MB8676.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(2906002)(122000001)(54906003)(5660300002)(52536014)(66446008)(66946007)(64756008)(66556008)(8936002)(66476007)(38070700005)(86362001)(186003)(55016002)(7696005)(9686003)(508600001)(8676002)(71200400001)(2940100002)(83380400001)(38100700002)(6506007)(33656002)(26005)(7416002)(76116006)(6916009)(4326008)(316002)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MVhleTFxQ1l4a1VpeUtka2kzTE9YNUh0U3FhTXpwbWY2SUpBWXJBdnozQ0FZ?=
 =?utf-8?B?aFdmUzJOT2NmWGVlOU5FTmxpM1h4eGdMRXdaZzRPUjMxU3VySDJ0NGNFWVh1?=
 =?utf-8?B?MHdqaWh3aVgvNzNaTW1BZ0NtNUkrYTlheHV4VmJ6N1AzWU51dElEd0FndnNU?=
 =?utf-8?B?ZUFFd2U5SEdraGpVR3lUY3ZCak1Tc0RMakRCZFhQM1M4UjY3aENueFJqMTFZ?=
 =?utf-8?B?UFFld3lnMjlTeHBHUmtnakJrR2Q4d3ByK2l5TGE2RStKaW84MldidkhxenlH?=
 =?utf-8?B?VExFK3FQZDBUMVAvNjRKbjQwMFpzVTlRcnNKWmJhOFpjQTMydkZUc0lZYWxB?=
 =?utf-8?B?dUtDbnB0ZnZNOWRKeFZ0OFFuUGRBdjNJY2J3VHVIM0VieEk1VklTYTcxenJm?=
 =?utf-8?B?RHFMcDJaY3ZialdmMkRNSlFiS0tZTHhHZDg0WktWRGVydGRENy9qdUZQY1hx?=
 =?utf-8?B?dENleDVXbnpHclhqc05SZFFqeE00TVNzOE9NS2tRdjEwMUJIeGZxQk9WSnVa?=
 =?utf-8?B?TmwzU0FIY1VMYk1OTTFoSGc2ekYxUVk0K1BndVE5WFdSL0E3cExyR2NTdU1H?=
 =?utf-8?B?UWhiWDNEeHlZbzM3cUVicWIrQmo1b1QwY0pLWWhRRy9QcjdYWGpzcXdZOTJW?=
 =?utf-8?B?U3lNajV1VmNIbkE4dEx4MXM2VGd1b0FSb0p1QkNTNFdYMGVyc1VFYXhqdE92?=
 =?utf-8?B?alRsaUlxUHVRenU3UzBKRWRiY01OKzV3ckNDVDVwbEU4ajF6NE44ZXVJejNh?=
 =?utf-8?B?YkRaSUVUVVp0aEpXYTh5emRCeXY5SHBvblVwbERPYTlLVnprUXYvNnMrcEJT?=
 =?utf-8?B?SWxLM3hDdnFlN1NWL1dTcFdydXFaNGFxRlFHNmx2eXd1aWpIRnZJeFFjNjhW?=
 =?utf-8?B?bW9oMlZCMXBkajRrNzEwa0Q3MDZOQ0Q3K0VBckQ0UnUwRWFvWEExT2N0cVV6?=
 =?utf-8?B?T2lrL0JnZW5pTllWOFA2eWIzd3lWR1RaWHJuN1VER1NlMGt2NWloVVJER2Nq?=
 =?utf-8?B?MUxsTDlFbks1aHZQZTlIMjBqNUVtWmRGYTJ1ZExXdlF3bnF1c3NuUXpjVE9E?=
 =?utf-8?B?SEdjeFJsWUhGVG85M280YmlZdURsbkozVU9hSWtYMHlCSThVbG52T1NuT3Zs?=
 =?utf-8?B?VXI0UUJvNlk2MkNnenRMVlg4SytnQWdLd1RScDZPZmhNU3ZTTzFhNFBYOEVV?=
 =?utf-8?B?STVFRHVDYS9BN052dGYycDRHZ3J6eHgvTEs4MUNmL2FiMGF6dlRxRXRVRWNX?=
 =?utf-8?B?N3V4WDJGYkVEY1FWNGxXY2hrdkJYbTZLZWVEcmN3Rm9rZCt2NGlUeXo1UWM2?=
 =?utf-8?B?Z1hMQlcvL2NJUmtQK3BhZ2xwdDBvOUNVQUg1TGgzYW5pQnJML1Z5TTNrYTcy?=
 =?utf-8?B?ZklpSUl4ckY5YW9wQkZzYlBNRDk1Z3QwdVI1SkNGVWltV09ROFVFQjYxeitn?=
 =?utf-8?B?V1JNcXFpcUczK3JDQWZCZ2VaQktPdER4U2dGZE9mTjExSmlPcG9tZ2tkM0Mx?=
 =?utf-8?B?cithNWY2RlJuMnJHaUJJcjBkUkRrcXVUclJobTFiNlVGWmw2RWU2NTVUVkhy?=
 =?utf-8?B?MXJoUUlSbXh2YklMR0dqamgzTDhOZ0l0NmdpaTViSVY4OGY3SVVYV3kxV09W?=
 =?utf-8?B?Q3BXN3ozZG9ncG5aandlNWNnSGxTaDIvdnVoNjgzeXN2cVBzdWFoclFmUGd0?=
 =?utf-8?B?bnRsdTYvTnkzTlBQbGpkU2MwaE9qRDZTT0d0RFZhaE00dlJFQmJLZjZMTEZH?=
 =?utf-8?B?S3NkRTZTRkNmcCtxaXRwdU9MMmxnWFAzdjZDRmNVN1IxUlhrY3BheVZDVmRy?=
 =?utf-8?B?TGJ0bWQwRjI1YWtkWGdER3c0dVYxVGJsQW9HTlNuK2FhdjU4NmZXbkNzVkxp?=
 =?utf-8?B?VHNnTW9ncGhuSUZtOWRkZFFJa2NYdzdJZHZKcU5xOFBYUFB4cnhwRC9aR2Nj?=
 =?utf-8?B?S2lMdTF5SE0xMDQ1YTBEOW90bjJpelkxUmQzemhoek93MU43KzJvRS93Q2Nn?=
 =?utf-8?B?bmlscUV3eG5Sd0VjVWZ6MXkrUDFHeUhkMmdlYzdCQU1MK3pIZTlFc1dtTDA2?=
 =?utf-8?B?dHZBcS9pRjRwSG1pRFZOZVhhQyt5K0JHS25tb3p1NzR3N3dETStjR3BuUFBy?=
 =?utf-8?B?VThIRlc4NEtlT0lVRkZPT2hVRkc1bGtJdGV1MHBYMTZUNjVlMTdPRWxrUVZO?=
 =?utf-8?B?UkE9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8676.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f76db8f-2d27-448b-6635-08d9978862cd
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2021 07:23:47.7903 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K9P1sujez+Zf9rDlGSusMkNm7NuZTAf9MHOIWvxx4d0/9ikuFJTyKSqFu2K0noSOKfHvJ5ZFhWN6KjOGM4tlww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8945
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211025_002351_308766_8960810A 
X-CRM114-Status: GOOD (  47.95  )
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

Snipped...

> > > > > > > My boards do not use CLKREQ# so I do not have that defined
> > > > > > > in pinmux and I found that if I add
> > > > > > > MX8MM_IOMUXC_I2C4_SCL_PCIE1_CLKREQ_B
> > > > > PCIe
> > > > > > > works on my board but this isn't a solution just a
> > > > > > > work-around (I have boards that use the only two possible
> > > > > > > pins for CLKREQ as other
> > > > > features).
> > > > > > >
> > > > > > > Similarly you will find on the imx8mm-evk if you comment out
> > > > > > > the CLKREQ (which isn't required) the imx8mmevk will end up
> > > > > > > hanging like my
> > > > > boards:
> > > > > > [Richard Zhu] Hi Tim:
> > > > > > Regarding the SPEC, the CLKREQ# is mandatory required, and
> > > > > > should be
> > > > > configured as an open drain, active low signal.
> > > > > > And this signal should be driven low by the PCIe M.2 device to
> > > > > > request the
> > > > > REF clock be available(active low).
> > > > > > So, there is such kind of CLKREQ# pin definition on i.MX8MM
> > > > > > EVK
> > board.
> > > > > >
> > > > > > Anyway, I think the external OSC circuit should be always
> > > > > > running if there is
> > > > > no CLKREQ# on your HW board design.
> > > > > >
> > > > >
> > > > > The way I understand it is CLKREQ# allows the host to disable
> > > > > the REFCLK when not needed for power savings so it would seem
> > > > > optional to implement that and if not implemented should be left
> > > > > unconnected on
> > the card.
> > > > >
> > > > [Richard Zhu] No, not that way. Regarding the SPEC, this signal is
> > mandatory required.
> > > > Especially for the L1ss usages. This signal would be OD(open
> > > > drain), bi-directional, and might be driven low/high by RC or EP
> > > > automatically if
> > L1ss modes are enabled.
> > > > You can make reference to the
> > > > "ECN_L1_PM_Substates_with_CLKREQ_31_May_2013_Rev10a", or the
> > chapter 5.5 L1 PM Substates of "PCI Express Base Specification, Rev.
> > 4.0 Version 1.0".
> > > >
> > >
> > > CLKREQ is only mandatory if you wish to support clock power
> > > management. Many boards with a PCI host controller do not support
> > > this.
> [Richard Zhu] Okay, understood.
> 
> > >
> > > > > > > diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> > > > > > > b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> > > > > > > index 5ce43daa0c8b..f0023b48f475 100644
> > > > > > > --- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> > > > > > > +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> > > > > > > @@ -448,7 +448,9 @@
> > > > > > >
> > > > > > >         pinctrl_pcie0: pcie0grp {
> > > > > > >                 fsl,pins = <
> > > > > > > +/*
> > > > > > >
> > > > > > > MX8MM_IOMUXC_I2C4_SCL_PCIE1_CLKREQ_B    0x61
> > > > > > > +*/
> > > > > > >
> > > > > MX8MM_IOMUXC_SAI2_RXFS_GPIO4_IO21
> > > > > > > 0x41
> > > > > > >                 >;
> > > > > > >         };
> > > > > > >
> > > > > > > I have PCIe working with a driver that I ported from NXP's
> > > > > > > kernel which differs from your driver in that the PCIe PHY
> > > > > > > is not abstracted to its own driver so I think this has
> > > > > > > something to do with the order in which the phy is reset or
> initialized?
> > > > > > > The configuration of
> > > > > gpr14 bits looks correct to me.
> > > > > > [Richard Zhu] The CLKREQ# PIN definition shouldn't be masked.
> > > > > > In the NXP's local BSP kernel, I just force CLKREQ# low to
> > > > > > level up the HW
> > > > > compatibility.
> > > > > > That's might the reason why the PCIe works on your HW board
> > > > > > although the
> > > > > CLKREQ# PIN is not defined.
> > > > > > This method is a little rude and violate the SPEC, and not
> > > > > > recommended
> > > > > although it levels up the HW compatibility.
> > > > > > So I drop this method in this series.
> > > > > >
> > > > >
> > > > > Sorry, I don't understand what you are saying here. Is there a
> > > > > change you are going to make to v4 that will make this work for
> > > > > the evk and my boards? What is that change exactly?
> > > > [Richard Zhu] No. What I said above is that the CLKREQ# is forced
> > > > to be low in NXP local BSP kernel. I guess this might be the
> > > > reason why your
> > board works.
> > > >
> > > > BIT11 and BIT10 of IOMUXC_GPR14 can be used to force the CLKREQ#
> > > > to
> > be low.
> > > > Set CLKREQ_OVERRIDE_EN(bit10) 1b1, then write one zero to
> > CLKREQ_OVERRIDE(bit11).
> > > >
> > >
> > > Ok, that makes sense. Those bits are not explained well in the
> > > IMX8MMRM. As my board's external REFCLK is always enabled that must
> > > gate the clock internally to the host controller block.
> > >
> > > I can confirm that asserting those GPR14 bits does resolve my issue:
> > >
> > > #define IMX8MM_GPR_PCIE_CLKREQ_OVERRIDE_VAL    BIT(11)
> > > #define IMX8MM_GPR_PCIE_CLKREQ_OVERRIDE_EN     BIT(10)
> > >
> > >        /*
> > >         * for boards that do not connect CLKREQ#,
> > >         * override CLKREQ# and drive it low internally
> > >         */
> > >        regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
> > >
> > IMX8MM_GPR_PCIE_CLKREQ_OVERRIDE_VAL, 0);
> > >        regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
> > >
> > IMX8MM_GPR_PCIE_CLKREQ_OVERRIDE_EN, 1);
> [Richard Zhu] regmap bits operations should manipulate according bits.
> The BIT(10) and BIT(11) should be touched actually.
> 
> > >
> > > Should this be added as a 'fsl,clkreq-unsupported' flag that needs
> > > to be set true to implement the above code?
> > >
> >
> > Richard,
> >
> > Sorry - spoke too soon. My test was flawed as I still was pinmuxing
> > CLKREQ in my dt to work around the issue and after removed the above
> > did not resolve my issue. The setting of OVERRIDE_EN was wrong above
> > (should not be set to '1' but BIT(10) instead) but this code already
> > exists in imx6_pcie_enable_ref_clk and is used for IMX8MM per your
> > patch so this is not the issue.
> >
> > What makes my board work is to clear GPR14 bit9 (like the NXP kernel
> > does) so I don't think this bit does what we think it does (select
> > between internal and ext clk). I think setting it enables clock gating via
> CLKREQ#.
> >
> > This also points out that perhaps the CLKREQ_OVERRIDE logic should be
> > moved to the new phy driver for IMX8MM.
> [Richard Zhu] It sounds reasonable to consider to force the CLKREQ# to be
> low.
> I will think about that and add this in later v5 patch-set if nobody has different
> concerns.
> Thanks.
[Richard Zhu] Hi Tim:
As you mentioned above, the CLKREQ# GPIO PIN is not used for PCIe on your board, right?
" (I have boards that use the only two possible pins for CLKREQ as other features)"

Did the override configuration of the clkreq# will bring unexpected results for other features on your board?

BR
Richard 

> 
> BR
> Richard
> 
> >
> > Best regards,
> >
> > Tim
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
