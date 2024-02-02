Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52659C47258
	for <linux-phy@archiver.kernel.org>; Fri,  2 Feb 2024 07:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NtQDijOPUh11qouZgZrWy6eXbcnwCn9PQun+YdxR37k=; b=UKzm3WENAfz6q3
	MCtitwSARWCbg00cslLcsoIe3KOtlEtWYJHDMCFzFQvMfqvIieQdvaGNEAkNl0TYxLhs4xcyyJVTJ
	A0fuF5zhADHdCFXzvj1xey1ACAb5aQatuqKoamuy37Pp7MIiCSFkcvuwAc8ROV5V56KlQ0M+Bqp4k
	i/EPVbtpQCwrkVoEtbsjDu/s4gWIl7SEVA0a1DXqLaWPEKsGFkt+FH8RchETPSi0Yc6G6z2eLuMfv
	jrxAX/3lsBrHes81L17P3e7m+SqtluqwEum37gDykMmO1tpsDMkQSx5EX+6qwdUXUMkP+6yN4OpOD
	T6uJTupFUD2x5WZ5kQ2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVnlb-0000000AYZc-4481;
	Fri, 02 Feb 2024 07:15:15 +0000
Received: from mx0a-0014ca01.pphosted.com ([208.84.65.235])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVnlY-0000000AYYD-3hlx
	for linux-phy@lists.infradead.org;
	Fri, 02 Feb 2024 07:15:14 +0000
Received: from pps.filterd (m0042385.ppops.net [127.0.0.1])
	by mx0a-0014ca01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 4121Z45T031728;
	Thu, 1 Feb 2024 23:14:59 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com; h=
	from:to:cc:subject:date:message-id:references:in-reply-to
	:content-type:content-transfer-encoding:mime-version; s=
	proofpoint; bh=h/Xm2O60ob9sIPF9tK4eX0LqkEnjrCzFgZzK0ZQmaS4=; b=f
	TSr6wtIpPdo7BsZgAYeLDSwMggK1xYDzTO9c6HnwoAqXo3Q6hRst8hyu1cOJ0sXt
	lyIqNNh2cZ3j6JoxDcOfC/vc5un968Hsz8MsBjOLf/WaKIh6MLMO4byqXy5k7+Qj
	QhyeeSW8/XiH4b6bSTGQvb05x5i13rwkll9K7CJvyNlV7yEAiq+LkyFG+wO4mq1Y
	mKu9dix4Am79bFxX7r+3a55GTCZoIWCwiGuL3L4zWY9HM4C3xjX4RWLO29uHhPkL
	VGxkSazz40YGX3lSQm6S7fqrgckGBLpdAsHjXDG/2S+26MWWC3SBc5ktS8wN2Itf
	NEUREzNpK2t3tcFWrZ/wQ==
Received: from byapr05cu005.outbound.protection.outlook.com (mail-westusazlp17011010.outbound.protection.outlook.com [40.93.1.10])
	by mx0a-0014ca01.pphosted.com (PPS) with ESMTPS id 3w0pv18rku-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 01 Feb 2024 23:14:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=POAGijm9N1XfjjchQGdHrjutaHRZH7ah4L2gd4bm1AHWEFQOutxmY0d6uxuIk5de5w3dtOg8LOq0V5i7T5rnSMNTVHd5EM6dzg2k2fYrpfedSVN/zT7mp69Y/i7H/gX+RZ2xNRAJtRV166uTJTMAJtvs8MjYdx/uxbGO0TRTDowgd5Gl/1zIZV28sgoZ2tYzsVouZDwrPtWKT3JoIirXtjwYelO6rdDe8TDXFascMXh/eXa2mX1teOdunJhInzJcKEAUXe/Pp7qTYsiljqTAGKFT7p3FcNV8zYecIBEcHc++5MZbzFHvNprC226AJOjjjNGRvA34Xs/V0NHtiDaoPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h/Xm2O60ob9sIPF9tK4eX0LqkEnjrCzFgZzK0ZQmaS4=;
 b=XirQZS7/CTT+Zujttfet8/B7NLiQ2hWhx8PuqWEG1YJ467LqFZF1f2u3YKvCeQwwUBwUtnV+qleRmGEmzeqUtN0fY7q4YpDI7o6Io2xRWDk5ihnIYqc8EWBhadQsi5p3R8OLLt8K1/sLKo4g/2nvNJHuciUgiXfLcTNRpsK16CpxV3HOHbU7Mcp7eNcDBaxKrIsj9Hi7Z7Hubr13L9iG8XUBjHA3KASV+42PsZx4ye2p5aw4eiCW/+uReo9aLPA/WQeJknIoQKPWT9tb43cKt84koPQtkI11J/IoOVO0sLJhpega01FN2cVCl9BbUq/Dz4Y0XYQMU+ruXo1uz+LOtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cadence.com; dmarc=pass action=none header.from=cadence.com;
 dkim=pass header.d=cadence.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h/Xm2O60ob9sIPF9tK4eX0LqkEnjrCzFgZzK0ZQmaS4=;
 b=Vu6slBKc7pkBS5HLZ5eX4urW7rDr6r5epVN9v/CT+lkaF6UJKCajRISK7j+Vw+P3gzKlizg2v8wa0FI55z2fstAjmmdT+qoXrgfmXLSLmztP1VCp0hVJcPT4L9RdjwpSgoWAtG6N64Sn1Powy2oEnJTr7VBZqRELSoh+Jn8q7Ss=
Received: from PH8PR07MB9512.namprd07.prod.outlook.com (2603:10b6:510:228::13)
 by DM6PR07MB6969.namprd07.prod.outlook.com (2603:10b6:5:1ea::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.24; Fri, 2 Feb
 2024 07:14:56 +0000
Received: from PH8PR07MB9512.namprd07.prod.outlook.com
 ([fe80::9879:3a31:5e67:38]) by PH8PR07MB9512.namprd07.prod.outlook.com
 ([fe80::9879:3a31:5e67:38%4]) with mapi id 15.20.7249.027; Fri, 2 Feb 2024
 07:14:56 +0000
From: Swapnil Kashinath Jakhade <sjakhade@cadence.com>
To: "vkoul@kernel.org" <vkoul@kernel.org>,
        "kishon@kernel.org"
	<kishon@kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
        "conor+dt@kernel.org" <conor+dt@kernel.org>,
        "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>,
        "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>,
        "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>
CC: Milind Parab <mparab@cadence.com>,
        "rogerq@kernel.org"
	<rogerq@kernel.org>,
        "s-vadapalli@ti.com" <s-vadapalli@ti.com>
Subject: RE: [PATCH v4 0/5] PHY: Add support for dual refclk configurations in
 Cadence Torrent PHY driver
Thread-Topic: [PATCH v4 0/5] PHY: Add support for dual refclk configurations
 in Cadence Torrent PHY driver
Thread-Index: AQHaPxJE0stSc5FwfUSMCrJWMh3uFLD20EIQ
Date: Fri, 2 Feb 2024 07:14:56 +0000
Message-ID: <PH8PR07MB9512A5DEE4A7EFBFB7C5FE53C5422@PH8PR07MB9512.namprd07.prod.outlook.com>
References: <20240104133013.2911035-1-sjakhade@cadence.com>
In-Reply-To: <20240104133013.2911035-1-sjakhade@cadence.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcc2pha2hhZGVcYXBwZGF0YVxyb2FtaW5nXDA5ZDg0OWI2LTMyZDMtNGE0MC04NWVlLTZiODRiYTI5ZTM1Ylxtc2dzXG1zZy1jMWNiNDI3Yy1jMTlhLTExZWUtYmMwOC1jYzk2ZTViNzM1MWFcYW1lLXRlc3RcYzFjYjQyN2UtYzE5YS0xMWVlLWJjMDgtY2M5NmU1YjczNTFhYm9keS50eHQiIHN6PSI0ODA0IiB0PSIxMzM1MTMzMTY5MjU2NzQwNjMiIGg9IkpqT2JzTXVZUTN0OU5jMElRQVAybWZGcy9oQT0iIGlkPSIiIGJsPSIwIiBibz0iMSIvPjwvbWV0YT4=
x-dg-rorf: true
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR07MB9512:EE_|DM6PR07MB6969:EE_
x-ms-office365-filtering-correlation-id: ed9e8745-e74d-4a46-1d04-08dc23bea8bb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: X9II7cTUullzc1Ilo8MYpHjI38jS3fAHk0Nm9VUlcM/LN7+QRkGaboDqq4gcnuPlT64A9vsafnCw94GVST0Ch3+AOK0OdXWOFyDESLI9xW/DcZk5F32MtoRtXea+O5mOdY2mRPY9Guj4AMDd7faSL9UXRA3i4LeDPOgXSYV5KfOyGXgqGcvwjteD1qJ9MPNC2s6gPTVezZ791fRySddRomSzifW5RzO04QopnqJBmUlEJQ69LU1N9AvdFU22NIkkNPz44BaGUngXbiFN2mvtlRp4qJl17OPHvgg+80ClKwLlOiw7xh973G1N8zAxWXhw1QailkqPTdcu101smVgce4C9SYJ2ONgD2QmzhGMchPGK5Ona2M48DSnRMF6e8EA5YA9AfVQQEkimgUwIWs295e3yU7LLi6R9OxZiMfmuyw7QDLyZ2+587KbnGraftvAmdcR+NkJZDfmbR2QVvzFcqsdb88Y8M1L4Cc9U6SOvyuufx2ZAwlMnDhTiKIPiON1+Zz2DuKXB31/Fx8cRrTsajLz1lG1lLssJqOPaSW6CAV9ZJJcQGAC5+VxgB1WMdk4eT6CsaTE5u5dRROcKgavuxt4mPs8/DIW2GM+XKC2deDE=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH8PR07MB9512.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(39860400002)(396003)(366004)(136003)(346002)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(33656002)(83380400001)(41300700001)(122000001)(110136005)(53546011)(9686003)(26005)(38100700002)(5660300002)(7416002)(4326008)(52536014)(966005)(66946007)(8936002)(66476007)(8676002)(54906003)(7696005)(6506007)(2906002)(478600001)(316002)(76116006)(66446008)(71200400001)(64756008)(66556008)(38070700009)(86362001)(55016003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CrYbWW4+JjLVRqHUx4TmU/AtnTOeYq57rjB7TnG5HfVptUBqv7fuIZZQDjoT?=
 =?us-ascii?Q?kPEEXb0NlRMiR27E5hY/8/dcBlWAgYy9K4Ci4haOfeYEGqLWHLTrAkaZpThs?=
 =?us-ascii?Q?jYJX9caINnJ/ic0TnYIH05qQErJooHafcV3R2I/eff0F785cQYWsCsPTwdtG?=
 =?us-ascii?Q?zdWdQ6Y2xpvsLgvYgNA/7DuYvyL/Ly1iBBZjWTF6ZNIC+1mtzch0nxOPWD5n?=
 =?us-ascii?Q?LmVM6kQJ61gAdJu3z79fC/WDSyR7jonMKwg+5c81laRUZc0Jn6yxnmHDER2A?=
 =?us-ascii?Q?5RGU/tx4m3yhsClT9AkBP3wpoLRgfhFqDiMmQ7nu7RjKha3bBYxHD5/UtJW7?=
 =?us-ascii?Q?XfbZkaIz15Ynt7DVOGLlDhyysVC9AvitoXbPnNt5FKpOE9Sih8AF6E8Ytsar?=
 =?us-ascii?Q?kp5QDJ3QB3zsgGLV65CiiqGwXpNqeM0Ojn3HBmuCp40iBjiiED1ZD7nQ/ae2?=
 =?us-ascii?Q?zMTWfpY7VOL5Voefbl7C5vk5e3PnRhecUxYZO2TSq4v5tzgBVJp+e4tBL9gM?=
 =?us-ascii?Q?U4vi2uKZiuqfoXmWzIpvPuo3H84wFbjP2oEuFiBTv/zZQ27iYFtr5saKQoD3?=
 =?us-ascii?Q?r9y4OVht5OBjNVsV3vvLSRsVazpwVpqU4EmDmrRIntZcyoReflIVc1vY51eh?=
 =?us-ascii?Q?xnXhnISYIAOrIdUdJURpFsClBlh5Mklb/GZ+bRnS+dXESPQTsYQN41RmhwEe?=
 =?us-ascii?Q?/5zja2JjMmIndDmQPeIECevXFxudb47BCXmOJ3HxKC2GQPNZJEbRVB0iX9s9?=
 =?us-ascii?Q?w/z52rNqID8KK1Pc3ObP8COtihxEe4jfi95aeo/4U5DHbrW3xbiEu6e9Q6Dq?=
 =?us-ascii?Q?bNtAhUCHm2HV90UOiUidq+6zBkIykKJcCcjsXQeX0ENdCyKiqVCas9jxfvv0?=
 =?us-ascii?Q?t7SGhZUU7ctghxh+VhrpUdQ2cj1qhLqeNqKF3+F2hXDdieO7L7BLtT/JMmlv?=
 =?us-ascii?Q?6BlTsomQraq47MjntucJz9BxOUua7BPTRN0RoMzHNChdkRP1XbnXyghUza8F?=
 =?us-ascii?Q?6cauOZojpeCtT8xA72iSnTGF7EVIvOtUeJMEp0RW116Qb8WKVvxDp0DployW?=
 =?us-ascii?Q?kHXnxJ40uze92jnHwY2dvS7wzCJygdb73v6BRDP7MaPWH3VQi2JnpspsmJZH?=
 =?us-ascii?Q?e+Pn8hgISikyAaaAWyE/kTRSwMpw2szTmLmG2JoBAciWv+OPjoqAJuVthwwc?=
 =?us-ascii?Q?ZBycjFFa2eHqprci5gaBqD6CHnLSEZE5Gd2qhZUzubwe2FdTIIV4b1zblWq5?=
 =?us-ascii?Q?jX/CHhlMS9XBW5S0R7CP9wVK8F/rKYFJRN5V1XopHtJ762qSUkxysPkBVfNe?=
 =?us-ascii?Q?rmk0mMZJ7M7GUVsZBh/xhhZ1MDQnPSkqjBqBfy5yZcr8i1X/VPhGPHUtHI72?=
 =?us-ascii?Q?nwmuFkkFWGteM2fxPjClO5U5F5lxBgmzzBLPjTTzvY+PPx1KQ4CGnAuxvhhW?=
 =?us-ascii?Q?XKB1BjHml5tkSIqVF8rSxbndKLkQvNkj0mk+E+5lTcfa8YGYQvzvLagoT3zN?=
 =?us-ascii?Q?Wip7fAVwZjPVEiPYQA0WLQB5bTFwj0lX0E5tM0GuOggLfc0+OGs2R26VRcEX?=
 =?us-ascii?Q?ZahM3s4fYr0nRdUMlixNm65PrIwG+yJg7Q8mJNfR?=
MIME-Version: 1.0
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR07MB9512.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed9e8745-e74d-4a46-1d04-08dc23bea8bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2024 07:14:56.0958
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Hev4d151Plri1VoP7T8cb/BvdpzPHJhsWtv2B8LTy4XIkbbznSBleVt9k0dxIqtDxtzuSOom8iBJ8G20PjM7qtq4NCkFW6cyc5U+C0r/CIk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR07MB6969
X-Proofpoint-ORIG-GUID: oazyf1b8djKUCDAGsUwxrT8dLiRcOTTn
X-Proofpoint-GUID: oazyf1b8djKUCDAGsUwxrT8dLiRcOTTn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-02_01,2024-01-31_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check score=0 suspectscore=0
 bulkscore=0 lowpriorityscore=0 malwarescore=0 spamscore=0 mlxscore=0
 adultscore=0 mlxlogscore=999 impostorscore=0 phishscore=0 clxscore=1011
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2401310000 definitions=main-2402020052
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_231513_069992_88BB6D42 
X-CRM114-Status: GOOD (  17.93  )
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

Hi Vinod,

> -----Original Message-----
> From: Swapnil Jakhade <sjakhade@cadence.com>
> Sent: Thursday, January 4, 2024 7:00 PM
> To: vkoul@kernel.org; kishon@kernel.org; robh+dt@kernel.org;
> krzysztof.kozlowski+dt@linaro.org; conor+dt@kernel.org; linux-
> phy@lists.infradead.org; linux-kernel@vger.kernel.org;
> devicetree@vger.kernel.org
> Cc: Milind Parab <mparab@cadence.com>; Swapnil Kashinath Jakhade
> <sjakhade@cadence.com>; rogerq@kernel.org; s-vadapalli@ti.com
> Subject: [PATCH v4 0/5] PHY: Add support for dual refclk configurations in
> Cadence Torrent PHY driver
> 
> This patch series extends Torrent PHY driver functionality to support dual input
> reference clocks.
> 
> It also adds support for following multilink configurations:
> - PCIe(100MHz) + USXGMII(156.25MHz)
> - USXGMII(156.25MHz) + SGMII/QSGMII(100MHz)
> 
> The changes have been validated on TI J721E and J7200 platforms.
> 
> v1 of the patch series can be found at [1].
> 
> Version History:
> 
> v4:
>    - Fixed error handling in patch 2/5 as per review comments for v3
>    - Added Acked-by and Reviewed-by tags
> 
> v3:
>    - Updated clock description in DT documentation
>    - Added Acked-by from Conor
> 
> v2:
>    - Rename refclk1 to pll1_refclk in bindings and in driver
>    - Simplify clock-names as suggested by Rob
> 
> [1] https://lore.kernel.org/linux-phy/20230724150002.5645-1-
> sjakhade@cadence.com/
> 
> Swapnil Jakhade (5):
>   dt-bindings: phy: cadence-torrent: Add optional input reference clock
>     for PLL1
>   phy: cadence-torrent: Add PCIe(100MHz) + USXGMII(156.25MHz) multilink
>     configuration
>   phy: cadence-torrent: Add USXGMII(156.25MHz) + SGMII/QSGMII(100MHz)
>     multilink configuration
>   dt-bindings: phy: cadence-torrent: Add a separate compatible for TI
>     J7200
>   phy: cadence-torrent: Add USXGMII(156.25MHz) + SGMII/QSGMII(100MHz)
>     multilink config for TI J7200
> 
>  .../bindings/phy/phy-cadence-torrent.yaml     |  11 +-
>  drivers/phy/cadence/phy-cadence-torrent.c     | 720 +++++++++++++++++-
>  2 files changed, 719 insertions(+), 12 deletions(-)
> 
> --

Could you please consider reviewing and merging this series?

Thanks & regards,
Swapnil

> 2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
