Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB6D8C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 11 Apr 2022 03:32:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CYuvYBq52LxhTCikCXaqi57vsLagC0oCa8bTcfKgIrA=; b=JJ9FyhQ9vpggN/
	A9ovGQdNVBgNgUz9r0WfB3/e9vpiTBM3vaOjGhJnzmY2mnewErvH1AAagaaFV7cpUZ/d0e/1MK5Wj
	1cfUm3GsHN4K/NbtsD4gyuf9oZM+yCT/GIMk46OnQVq2Ne1gTr7UTCrPzokhiwtoFPFkJ8s3r9rsb
	JUIEVoB7ji6myZMs3jxSbX36klRZwz+9cJL7c7ToMe1Eyak2TBN02hUBw20lz55MT+dcyNQ3XNXPC
	BrS43xkdLdjhe+ik0hxeE6EFaOJaMTmrv5X2sOiAdsvdHzWN+OldDbW6vN2jCtgcPWSPNlksOL+eG
	1ikLKP1XSIvjZuYsMxuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndknG-006U2O-7F; Mon, 11 Apr 2022 03:32:46 +0000
Received: from mail-db5eur03on0621.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::621]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndknD-006U0e-L1; Mon, 11 Apr 2022 03:32:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A6O0gGb62axTxrhpi729dEgijiRsUZ4t5lXHnYKdd+JebnhkPYIChks+Lavqv5H0FrQqDo8cN4Ve+2fCzGNpcmEi0Mwd2eTymfh++64n+AFYB0DqB3qxa6Dk+0Mk+ERfoQqEKp8CWiOYMFtFUDdGfqgVW899fpo8lTcjaknGx2io6crNTp0o+ipbnibi93XiHNWbPoUeGfKKWvlfliOfaT2gy67KhFXwrF9j+olOu3iiSpU77wEsVxe36X2wvtdWvBRQ/c8yfq1fJ3gHch4zVnAEQCzDyFGDu1UtRlDPGwYKiyJ/qggANP79qG95n1yp4Ahk1nq7OOaQZTIVIOVvkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AATn5WkBQB5pDvrvc8t0sduTZP4j3AUe1Y1LDnq8/nM=;
 b=bduwvV5lpl5JHEklN8I2I5Jz4zx0kToCHlgGSozBaf086VRB226ks2DSkNyEo8FI5Ck2NI0pSgdtDfrfHMHF9ElN2rroXRbw041fOoaaX90aRGgncFDoarWOy/TNDLAacBmOVcb8ZuvlPJ6OFzNpmOUeCB0T/6L+G26eCemihkcUjLe5DYvt5igrg8lin/izuCySnPlPxaVgf1MbJvRrj6nsMRudcMfcsEdIka/9344JhrS9fFNrBa2JWIGq+K2+8zdKVO4bOKLy5Qf5SwZu6qUTENJi/5CPuk7XLfEGVhrN59dETB60HTXnbEEQ1aw0lF9G3RLcIomlaXtxRIoJQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AATn5WkBQB5pDvrvc8t0sduTZP4j3AUe1Y1LDnq8/nM=;
 b=KoLk0MKr1TG892WpBWULVZ3TvP8J2m+cDRyCfUUo1nyCMEjzB5IFzA9PyZ+UgIyK7X5o1EABGC3DomG7HVsVupGIphTA4/3p8fGhA7jeiVCoUSD0tb5JaJClKc1Dij0cTKQ7nwgSxYt406tW9fjJOnWtiwGYzWVjhmUt4XIiEmE=
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com (2603:10a6:20b:42b::10)
 by HE1PR0401MB2665.eurprd04.prod.outlook.com (2603:10a6:3:7f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5144.29; Mon, 11 Apr
 2022 03:32:35 +0000
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::ecea:cb09:5ff2:1800]) by AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::ecea:cb09:5ff2:1800%4]) with mapi id 15.20.5144.029; Mon, 11 Apr 2022
 03:32:35 +0000
From: Hongxing Zhu <hongxing.zhu@nxp.com>
To: Lucas Stach <l.stach@pengutronix.de>, "tharvey@gateworks.com"
 <tharvey@gateworks.com>, Alexander Stein <alexander.stein@ew.tq-group.com>
CC: Philipp Zabel <p.zabel@pengutronix.de>, "bhelgaas@google.com"
 <bhelgaas@google.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob
 Herring <robh@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Vinod Koul
 <vkoul@kernel.org>, "linux-phy@lists.infradead.org"
 <linux-phy@lists.infradead.org>, Device Tree Mailing List
 <devicetree@vger.kernel.org>, "linux-pci@vger.kernel.org"
 <linux-pci@vger.kernel.org>, Linux ARM Mailing List
 <linux-arm-kernel@lists.infradead.org>, open list
 <linux-kernel@vger.kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>
Subject: RE: [PATCH v2 0/7] Add the iMX8MP PCIe support
Thread-Topic: [PATCH v2 0/7] Add the iMX8MP PCIe support
Thread-Index: AQHYMgQJVjtpqun8b0KM+ThJT0OxrazlG8MAgABHu+CAAHlZgIAEZttw
Date: Mon, 11 Apr 2022 03:32:34 +0000
Message-ID: <AS8PR04MB867606A1E2E45A0C0A1525A48CEA9@AS8PR04MB8676.eurprd04.prod.outlook.com>
References: <1646644054-24421-1-git-send-email-hongxing.zhu@nxp.com>
 <CAJ+vNU0McZxj_74DC0wCUyHq-NaT14URnvUP+kvudz7YLQq7fg@mail.gmail.com>
 <AS8PR04MB86766041887E97E22B0AC8C48CE99@AS8PR04MB8676.eurprd04.prod.outlook.com>
 <4f8f93c51fedc84d94534e962bc7c68c4a4e5616.camel@pengutronix.de>
In-Reply-To: <4f8f93c51fedc84d94534e962bc7c68c4a4e5616.camel@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3f78401c-fd0e-48e9-168e-08da1b6beb79
x-ms-traffictypediagnostic: HE1PR0401MB2665:EE_
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <HE1PR0401MB2665DE8C7C9B824C7F83291C8CEA9@HE1PR0401MB2665.eurprd04.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9yp3G5pKDe4dDo3NuFIGhgLaqwCYAOTg5k9RiPvxaqYfTvYW8T7DifT6N5BvX6bmKMpMPvOXqhaIBGA/UpSeZ9Ru6Nyxr5i6e/Vjo8YDVqoUu+Vasgrent2onzkbxVqIeqA7AjwwAjoFZg+RZXdQSBnPc8+DkVs3Gq6vZB4d7BNOTHmbOfYZ8kMERY9Fnjz6tQihAfJzgUBgT+zrekE3cHYU3ppsLZ1kA05TieJbxNjD7om2+nSonBqsoc3Letj1jOSqLV6u1jaalxK8UWGOr7XIhuuToeyYtZHmwrKiVry4z1P0UaE4add2OSj1+VVr7nv4OWvrchUkZn0DL/ZzqxUGcgqGrs2OIKrTu/AlbjLky9NTHYWSUls96nHL88SAAvto31BlX6TA1KARJowc4rQnZLz5VV+bNTT0DyHduRPXMhxCfuppNTb8bLgfUsWf4PqBe9B9RhnW+BqJ8B5fTAXTDWONhNNBNUpTkqUhW/WzUNGh1jPsUZhVI7fPvuWLZQ6MWVoNY/NNpYRVmQewTnvpgMrqRsMZqde+bVI+PBatqPNf1CRnM8t4aQ7bq7wTOhFg/0TPkzHS/Rs2QzKFikf62j72Q1Ovb8Er9o2/K7yoayQM5bO2iYaibRbAjtFb0UombPdnhtJl/ey1W9L7yIsjJPpWUoyxMG0yB1/BBB/UAXRtOlJOT9SPoljKcslCwjk+cdvluj+92I4+faAVapP9KAZ+mLeCzxyOo/3DVog=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR04MB8676.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(66556008)(64756008)(66446008)(66476007)(66946007)(52536014)(5660300002)(44832011)(8676002)(76116006)(83380400001)(54906003)(316002)(7416002)(110136005)(122000001)(8936002)(4326008)(508600001)(33656002)(86362001)(38070700005)(38100700002)(2906002)(55016003)(53546011)(6506007)(9686003)(7696005)(26005)(71200400001)(186003)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MVBTVzVYc2hiK2hDblMraDBnSGpXVk1LTjMwTzBOdUQxS3pWMExEUUxYN2xl?=
 =?utf-8?B?dDVMR3RnNi9Uei9iVmdUOXQ3S3IzYktRZThNb3pvZlI2N0lEajhURnFVNDdO?=
 =?utf-8?B?eWtvZFhaTjE5VmtCWFZ2OXpxdUtyVWp2UXBqd0gyaW4zcnhCMTBCUFNuWnds?=
 =?utf-8?B?eFdqRGhVKy9SN2duMXppRVFqdE9WVEZ6VUYxbTZpT1UrbWxBN3VvMlN4RDY3?=
 =?utf-8?B?NWp1RVZueXdyWVh4MTV3cFNkVzArUmJ3U1d3MklUejJoUHlhcXRHSHF6cFQ3?=
 =?utf-8?B?ODJOalNuODkvNjloQkpiTVJPS2RTNDI5c1ZCSC8vM1V5c3UyV1h4b2dMYVVE?=
 =?utf-8?B?bWw3ZUpKaHdpWVJKNHpWUGFzRDdpWG9yUjMwZjRGVUE1bXU1eW52aDRLSVFa?=
 =?utf-8?B?SkU0cTZDZjFjU1lNUUNpTTJZZndXSjB2eXMwQnVPKytzWFNCQ09pNlNrY1Nm?=
 =?utf-8?B?eGVMc0N3SGZGVUp0R1hhQjNHWnRDb1d0WXpzMU83dFVUak1yQTlqWVNZclA2?=
 =?utf-8?B?MWJOTFhqME5EU3BJZWhMUk80ZjBUV2dibzQwOHRTZWsyTERBRTdXdnMwVkEx?=
 =?utf-8?B?NjRRQVpBK2pndENPM0lSOU9iUGl1eFpieStYb3E3TUJsWUg5N3NueHA3UVNN?=
 =?utf-8?B?ZitwZTR4RTdLcEJaNUEyNjhOK056dVZMQlhGdWxlSU1wMHI5WitNekcrcTgr?=
 =?utf-8?B?azdyOUFCTzRBV2VzcUdENmFBZmZ3V0lnUEFZdWY3OHJFNExNdWNVSWMrVzI3?=
 =?utf-8?B?aHFuTjRqSisyY3ZVYUpsNHJCbm5vV3JBOGNTL0w2Rkx4TFQwdG51VHZ3RHlu?=
 =?utf-8?B?RGdGaEJGd1AzTkxsS3hwd2hwd0ZYT0huTFBBWFpxbWEvRi95UWpXZ1g3T250?=
 =?utf-8?B?MU9mamI3OEpmMUFySU1HdWpnZEh5a3JINFVxOG4zYWFKbFJ0YktubE1kRTh5?=
 =?utf-8?B?NDZLVVljUXNuN1g1M3o4Y2Z5TFUySVg5ejdJWHkzcU9UMnBGaThtRFNtL1Ru?=
 =?utf-8?B?c0FReVJuS0lGb3h1RlZpZ1dEUmNqVlhNKy9YNTFNODdKN2MwRUFsb3d5cm04?=
 =?utf-8?B?S1RBZFdUVHN0WGE0R01rOHkwQXp0WDVQWk5wakJhMWJxdUdHNVZ1c1FxYXBR?=
 =?utf-8?B?cldYTGZQeER2MEVpLzFJdGVNUEFBVktrclI0b2hrSHdiRGhicXdLbDF5SG15?=
 =?utf-8?B?a0FKWWxqY3duRGltK2dHa2dyWUNpL1lOUndtWklnS1pSd25sdytxVUpiLzRL?=
 =?utf-8?B?R0RKMEFzR1BLMnZVeUN6VjNuaW9McTFEWUczR1J5M0xKRUlSQWpNYlliNVAw?=
 =?utf-8?B?am5SdmhtaG5nb2s0VmFVYmJmRUJyb0gzZXZacVozWjBKM1lIdjVjVFYrcEtu?=
 =?utf-8?B?WGg2cmY1bFJtOTZHWnpuMG9MUGs4WUJWbnlhR1oyOEZ0UFluWVJKUGcraEpQ?=
 =?utf-8?B?VHhySWRVRTZXTS9KWmxjUzBZcFp5dFdWWERtVVRaUkw2emwvdkRLMjE5NlRU?=
 =?utf-8?B?N0dHT3FXMmFBV0tTMUxwejJiUlpVL0FQb1VqMklpVWszM1ljZ0lUVlp6b3RD?=
 =?utf-8?B?QTVTNzhiRFQ5VlU5ekJtMFlsOS9FZUgyYTgyRXRGZVBzNTFENEtid3lEaDhq?=
 =?utf-8?B?SWpNOVVhcWFHeG9MMGRoTFE3OVR0eEQyM2RQbCsvc3NpTnNHNFI4c2R5V2tD?=
 =?utf-8?B?SmVJQThRMXk3ZUlwU1pBc1huckY5VlZBaXZzU1JTQlhISjkzcEdxQTVQRnNO?=
 =?utf-8?B?aGJabFI3NUJIV1NOSllFbUlualF3Vkh1RnFJdFVKbVhxTTVxRFZ0S0pDbGJl?=
 =?utf-8?B?VWM2ZmoxeHlURkhiTFVkUWJ1VUxvMjdoMFJsQ1JMY01od2x3T0xBcjF0c3ZV?=
 =?utf-8?B?MmhvNXRyeDc2T20zK2huSHo3NTZJY2V6T21BVisvYmhPQ0Ztc2J6ZzlGeE1B?=
 =?utf-8?B?V1FUV01UdU9NNjNtQXV0SjZKZGpWUUFHemZHUi9QQ2lvY2VtNDZZeFUvZEkx?=
 =?utf-8?B?alg2bnVaMEVIbkdtc1BTMVlQK2k1cko4UUxtRFU3SWRYZEJJNGlPYXhtS05p?=
 =?utf-8?B?dnpBTThlY0d2UkM0OTYyWklncGZ6L0MrVUNtbkFCWDlxUit4VVFyU2w0VzJ1?=
 =?utf-8?B?OUEycGRFTFA3YWNZdDRyMlVnTU9XNEFhRzUrdys0T3JNbFFualFFeFBDNjZV?=
 =?utf-8?B?dkQwa0cwQkhkSXRTU2wwbW1Sd1A5Vy9Ua3V4aVg5TnNaQVMrYnR2NE41NWdK?=
 =?utf-8?B?QVplc2xMUk5yMjVHeTRTWnNHODF4TWZycFlNSFhvS2VSTnUyQ3UrbitLcmxX?=
 =?utf-8?B?ZjREL1E4NUU1bzN2UWdYZCtac3dBRXJnZFZVc1l6cmoxbE5DQzRyQT09?=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8676.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f78401c-fd0e-48e9-168e-08da1b6beb79
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Apr 2022 03:32:35.0660 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KtTdsZ2mB/RhwA1QWIEd64PrK3gn+vn8ouErRWe9v5UjpNZej2QknxAgTlVxb10/IIa0LYtP7Umrrri8Dx2x+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0401MB2665
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220410_203243_951607_4AA751B5 
X-CRM114-Status: GOOD (  30.92  )
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBMdWNhcyBTdGFjaCA8bC5zdGFj
aEBwZW5ndXRyb25peC5kZT4NCj4gU2VudDogMjAyMuW5tDTmnIg45pelIDE2OjEzDQo+IFRvOiBI
b25neGluZyBaaHUgPGhvbmd4aW5nLnpodUBueHAuY29tPjsgdGhhcnZleUBnYXRld29ya3MuY29t
Ow0KPiBBbGV4YW5kZXIgU3RlaW4gPGFsZXhhbmRlci5zdGVpbkBldy50cS1ncm91cC5jb20+DQo+
IENjOiBQaGlsaXBwIFphYmVsIDxwLnphYmVsQHBlbmd1dHJvbml4LmRlPjsgYmhlbGdhYXNAZ29v
Z2xlLmNvbTsgTG9yZW56bw0KPiBQaWVyYWxpc2kgPGxvcmVuem8ucGllcmFsaXNpQGFybS5jb20+
OyBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPjsgU2hhd24NCj4gR3VvIDxzaGF3bmd1b0Br
ZXJuZWwub3JnPjsgVmlub2QgS291bCA8dmtvdWxAa2VybmVsLm9yZz47DQo+IGxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnOyBEZXZpY2UgVHJlZSBNYWlsaW5nIExpc3QNCj4gPGRldmljZXRy
ZWVAdmdlci5rZXJuZWwub3JnPjsgbGludXgtcGNpQHZnZXIua2VybmVsLm9yZzsgTGludXggQVJN
IE1haWxpbmcNCj4gTGlzdCA8bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnPjsg
b3BlbiBsaXN0DQo+IDxsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnPjsgU2FzY2hhIEhhdWVy
IDxrZXJuZWxAcGVuZ3V0cm9uaXguZGU+Ow0KPiBkbC1saW51eC1pbXggPGxpbnV4LWlteEBueHAu
Y29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIHYyIDAvN10gQWRkIHRoZSBpTVg4TVAgUENJZSBz
dXBwb3J0DQo+IA0KPiBBbSBGcmVpdGFnLCBkZW0gMDguMDQuMjAyMiB1bSAwMzoxNCArMDAwMCBz
Y2hyaWViIEhvbmd4aW5nIFpodToNCj4gPiA+DQo+IFsuLi5dDQo+ID4gPiBSaWNoYXJkLA0KPiA+
ID4NCj4gPiA+IFRoYW5rcyBmb3Igd29ya2luZyBvbiB0aGlzIQ0KPiA+ID4NCj4gPiA+IERvIHlv
dSBwbGFuIG9uIHN1Ym1pdHRpbmcgYW5vdGhlciB2ZXJzaW9uIHNvb24/IEkndmUgdHJpZWQgdG8g
dGVzdA0KPiA+ID4gdGhpcyB3aXRoIGFuIGlteDhtcCBib2FyZCBJJ20gYnJpbmdpbmcgdXAgYW5k
IHdoaWxlIHRoZSBob3N0DQo+ID4gPiBjb250cm9sbGVyIGVudW1lcmF0ZXMgSSBmYWlsIHRvIGdl
dCBhIGxpbmsgdG8gYSBkZXZpY2UuIEl0J3MgdmVyeQ0KPiA+ID4gbGlrZWx5IEkgYW0gbWlzc2lu
ZyBzb21ldGhpbmcgYXMgdGhpcyBzZXJpZXMgZGVwZW5kcyBvbiB0aGUgSU1YOE1QIGJsay1jdHJs
DQo+IGFuZCBncGMgc2VyaWVzIHdoaWNoIEkgYWxzbyBjYW4ndCBjbGVhbmx5IGFwcGx5Lg0KPiA+
ID4gTHVjYXMganVzdCBzdWJtaXR0ZWQgYSAnY29uc29saWRhdGVkIGkuTVg4TVAgSFNJTy9NRURJ
QS9IRE1JDQo+ID4gPiBibGstY3RybCBzZXJpZXMnIFsxXSB5ZXQgSSBjYW4ndCBmaW5kIGEgcmVw
by9icmFuY2ggdGhhdCBhcHBsaWVzIHRvIGVpdGhlci4NCj4gPiA+DQo+ID4gPiBQZXJoYXBzIHlv
dSBoYXZlIGEgZ2l0IHJlcG8gc29tZXdoZXJlIEkgY2FuIGxvb2sgYXQgd2hpbGUgd2Ugd2FpdA0K
PiA+ID4gZm9yIGlteDhtcCBibGstY3RsL2dwYyB0byBzZXR0bGUgYW5kIHlvdSB0byBzdWJtaXQg
YSB2Mz8NCj4gPiBIaSBUaW06DQo+ID4gVGhhbmtzIGZvciB5b3VyIGtpbmRseSBoZWxwIHRvIGRv
IHRoZSB0ZXN0cy4NCj4gPiBJIGhhZCBsaXN0ZWQgdGhlIGRlcGVuZGVuY2llcyBpbiB0aGUgY292
ZXItbGV0dGVyIGxvZy4NCj4gPiBBbGV4YW5kZXIgYW5kIEkgdXNlZCB0byB0ZXN0IHRoaXMgc2Vy
aWVzIGNvbW1pdHMgYmFzZWQgb24gdGhlIFY1LjE3IGtlcm5lbC4NCj4gPg0KPiA+IEx1Y2FzIGhh
ZCBwcm92aWRlZCBzb21lIHJldmlldyBjb21tZW50cyBhbmQgc3VnZ2VzdGlvbnMgYWJvdXQgdGhl
IFBMTA0KPiA+IGJpdHMNCj4gPiDCoG1hbmlwdWxhdGlvbnMgb2YgSFNJT01JWCBpbiBpLk1YOE1Q
IFBDSWUgUEhZIGRyaXZlciAjMyBvZiB0aGlzIHNlcmllcy4NCj4gPiBBbmQgaGUgc3VnZ2VzdGVk
IHRvIGxldCB0aGUgSFNJT01JWCBibGstY3RybCBtYWtlIHRoaXMgUExMIGFzIGEgcmVhbA0KPiA+
IGNsb2NrLA0KPiA+IMKgYW5kIHVzZWQgYnkgaS5NWDhNUCBQQ0llIFBIWSBkcml2ZXIgbGF0ZXIu
DQo+ID4NCj4gPiBBbHRob3VnaCBJIGhhdmUgc29tZSBjb25mdXNpb25zLCBpdCdzIGJldHRlciBs
ZXQncyB3YXRpbmcgZm9yIHRoZQ0KPiA+IGJsay1jdHJsIHNldHRsZSBkb3duIGFuZCBnZXQgY2xl
YXIgZGlzY3Vzc2lvbiB3aXRoIEx1Y2FzIGxhdGVyLg0KPiA+IEhvdyBkbyB5b3UgdGhpbmsgYWJv
dXQgdGhhdD8NCj4gDQo+IEp1c3QgdG8gbGV0IHlvdSBrbm93IG15IHBsYW5zOiBJIHdhcyBxdWl0
ZSBidXN5IHdpdGggZ2V0dGluZyB0aGUgaS5NWDhNUA0KPiBIRE1JIHBhcnQgdG8gd29yay4gTm93
IHRoYXQgdGhpcyBpcyBhdCBsZWFzdCBpbiBhIHN0YXRlIHdoZXJlIGl0IGNhbiBjb2xsZWN0DQo+
IHNvbWUgZmVlZGJhY2sgZnJvbSB1cHN0cmVhbSBJIGhhdmUgc29tZSB0aW1lIHRvIGNpcmNsZSBi
YWNrIHRvIHRoaXMgdG9waWMuIEkNCj4gY2FuJ3QgY29tbWl0IHRvIGRvIGl0IGltbWVkaWF0ZWx5
LCBidXQgSSdsbCBnZXQgYXJvdW5kIHRvIGxvb2tpbmcgYXQgdGhlIFBDSWUNCj4gc2VyaWVzIGEg
Yml0IG1vcmUgaW4tZGVwdGggYW5kIGFwcGx5IG15IEhTSU8gUExMIHN1Z2dlc3Rpb24gdG8gdGhl
IGJsay1jdHJsDQo+IGRyaXZlciBkdXJpbmcgdGhlIG5leHQgd2Vlay4NCg0KSGkgTHVjYXM6DQpU
aGFua3MgZm9yIHlvdXIgaGVscGZ1bCByZXBseS4NCkkga25vdyB0aGF0IHlvdSdyZSBidXN5IHdp
dGggdGhlIGJsay1jdHJsIHNldHRsZSBkb3duIG5vdywgYW5kIGhhZCBleHBsYWluZWQgdG8NClRp
bS4NCg0KQmVzdCBSZWdhcmRzDQpSaWNoYXJkIFpodQ0KDQo+IA0KPiBSZWdhcmRzLA0KPiBMdWNh
cw0KDQotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
