Return-Path: <SRS0=o6wI=O7=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7299DC433EF
	for <linux-phy@archiver.kernel.org>; Mon, 11 Oct 2021 06:50:39 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2AC4260C41
	for <linux-phy@archiver.kernel.org>; Mon, 11 Oct 2021 06:50:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2AC4260C41
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=cadence.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UGVpY4SMNxnnw/OxBwjcvZF5sDtD716P/y/14J/8iJY=; b=DDj07QESRdgqY8
	9u/9n2HjhpZH25NyTDDigIhtIXzY05R7aGbD/W+TMihlv62F/uuSEPuq0BqFeaWheiLF68a2Cc5gr
	WdxOuHmLaHVsVaJaK80f23Bg3PeAfSQd+BzNlHicix4MIT5/Xu+hLGrx8c2ykMjHRm8u65v8bmulz
	+3pTuk235F0aw7JIZzEf8PwjXOGAez/a7GJZNDu10hFlQGBsZHn/MeN9gDjQnz64J4QrYEDkmZzqH
	nICrCO90Yjw/Vjcz74YxRhMwapAjDYOdrYv0TmXQpBMA+nZhd/jxzL7fjeaSbJnRK/Y5OsU4e+pw9
	T0ZfoF+8lHj4oxkbl84Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mZp8w-007z9y-N0; Mon, 11 Oct 2021 06:50:38 +0000
Received: from mx0a-0014ca01.pphosted.com ([208.84.65.235])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mZp8u-007z8p-0I
 for linux-phy@lists.infradead.org; Mon, 11 Oct 2021 06:50:37 +0000
Received: from pps.filterd (m0042385.ppops.net [127.0.0.1])
 by mx0a-0014ca01.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 19B55hqk013078; 
 Sun, 10 Oct 2021 23:50:32 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=proofpoint;
 bh=wvwhvktZ4oUvg2xNLcn7P07o6pFEXt0Z+P3ayPIJuw8=;
 b=PM6HlXRLUDrwtDII2sSMudRYxmuxyI85sggL78tRxUX1E6n8LF4K1vVmts9lzxtSKync
 50U3fhMvpBFzw2xxkUE/ISAQZLFu9gZvkVFYJlZqzqrth/+Qwt9xUfeoTnwtvHwKxnVH
 58KbbR2qPhm4gcmGkEjodx3R5jJzOSbhkofMvr5cLqSFl6/ofcLPXVXsW2PtkJkYMVRS
 F4WRQ20hW+eQB3Bv9TFVabaNdSdwcdhI4T1JVQB/h6IO7sw0uD4C7mUFjQW6j25Vxmlb
 ohVgKcHO6PChzCuFnNYuXpTOcWpzcvdNw0HG57F6H6mNieaQ7Bwnpia44oMZQ8787VG3 Ng== 
Received: from nam11-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam11lp2176.outbound.protection.outlook.com [104.47.57.176])
 by mx0a-0014ca01.pphosted.com with ESMTP id 3bkwk5tas2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sun, 10 Oct 2021 23:50:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dVBQhS5rbiO1DNJ5SwyaRP4r9t5UyxGQFfmO2wqM1LufboQeb3NB6HXprlQqT/RSYlUAMbomtgGTFiXcDA52rmRNHHYYPTj51tdzqNvEGSWF/TQeN0dV3lDC+aTGTDLiog9mn4WGl3O2gkEWOgLiGSCO2UsD4tSOioY/7REaRvc24bdd5OeOejlPGkWvaqhytC1c6zHI425A0dUzegLI+KYEbJ43DJFrGwp/S7sZ/YQQOGBKpH6Xq8amjT20hgKnpseEaHGlgWke+Wdh+dPrvM2AyeVvhg1FghUiMIMt0CiQmiIZgP55hZa8RU9qVDN86wnY5uAWZ1UPqEreogXmCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wvwhvktZ4oUvg2xNLcn7P07o6pFEXt0Z+P3ayPIJuw8=;
 b=TsTySAfOQMbBxK8Juv7R/qjx46speDE43fpyGxp7dH8Cb4KWEyZP0XXWJgMuCWVafL0fgnvpTx/SBMge/XXVZuS1UhTdyV52DHjtuNIcmyUX0xLn5TCQtcC+vvzCJRvEdy6NGFEnVtbG8TSxtHm0VRYUBa2OAp/kbK0aeor/M3RlC7tyCFbzohLsHv/3POHfUJg8YxhGpHPvf5BXhxN0nugeYgiphhPcw1PgJo/Ij12ywnw7TzhOCk2emTwGf6EjI3dIoxXxgM8hD3GZAmP6gkPoQ+rtiGK9esQEWhw0JwHXhmBzt8V8X/nVmpzWaRjgI3M3Wn8wtDz3bm4TfKR96A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cadence.com; dmarc=pass action=none header.from=cadence.com;
 dkim=pass header.d=cadence.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wvwhvktZ4oUvg2xNLcn7P07o6pFEXt0Z+P3ayPIJuw8=;
 b=e+vpf4XLQRB4alw3K7hBJcBKv9Oos8eGHcb8RqOppGOXy2RpdOksc4Ws7LfZ4LcC9NTrF1HVcS6turnySeo3vVMkse7sxdy6xKCHAF3Z2/RxyJtipzfUM9gvOyurI0CelJAL2KbFCuHEutXIjzP5MREfyGlaA/UnsOUupqQjb/U=
Received: from DM6PR07MB6154.namprd07.prod.outlook.com (2603:10b6:5:17e::20)
 by DM6PR07MB5370.namprd07.prod.outlook.com (2603:10b6:5:45::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.22; Mon, 11 Oct
 2021 06:50:30 +0000
Received: from DM6PR07MB6154.namprd07.prod.outlook.com
 ([fe80::e453:f454:9058:598e]) by DM6PR07MB6154.namprd07.prod.outlook.com
 ([fe80::e453:f454:9058:598e%6]) with mapi id 15.20.4587.026; Mon, 11 Oct 2021
 06:50:30 +0000
From: Swapnil Kashinath Jakhade <sjakhade@cadence.com>
To: Aswath Govindraju <a-govindraju@ti.com>, "vkoul@kernel.org"
 <vkoul@kernel.org>, "kishon@ti.com" <kishon@ti.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
CC: Milind Parab <mparab@cadence.com>, "lokeshvutla@ti.com"
 <lokeshvutla@ti.com>
Subject: RE: [PATCH v2 00/15] PHY: Add support for multilink configurations in
 Cadence Sierra PHY driver
Thread-Topic: [PATCH v2 00/15] PHY: Add support for multilink configurations
 in Cadence Sierra PHY driver
Thread-Index: AQHXpK0vf/++FvVsJ0eafISJtjn/3aulPymAgChPEMA=
Date: Mon, 11 Oct 2021 06:50:30 +0000
Message-ID: <DM6PR07MB6154EFBCCAB7ED1BEACAE1CEC5B59@DM6PR07MB6154.namprd07.prod.outlook.com>
References: <20210908122930.10224-1-sjakhade@cadence.com>
 <23a8f4d9-3467-1cf5-eec7-a4d33fe03458@ti.com>
In-Reply-To: <23a8f4d9-3467-1cf5-eec7-a4d33fe03458@ti.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcc2pha2hhZGVcYXBwZGF0YVxyb2FtaW5nXDA5ZDg0OWI2LTMyZDMtNGE0MC04NWVlLTZiODRiYTI5ZTM1Ylxtc2dzXG1zZy04MmNhYjk3OS0yYTVmLTExZWMtODU4NC1jOGY3NTA0NDIyZDhcYW1lLXRlc3RcODJjYWI5N2ItMmE1Zi0xMWVjLTg1ODQtYzhmNzUwNDQyMmQ4Ym9keS50eHQiIHN6PSIzMDk2IiB0PSIxMzI3ODQwODYyNTYzNDUxMDQiIGg9ImdEVXBKN1J6Q3kydjlXclRkQVFYK2tONGFlUT0iIGlkPSIiIGJsPSIwIiBibz0iMSIvPjwvbWV0YT4=
x-dg-rorf: true
authentication-results: ti.com; dkim=none (message not signed)
 header.d=none;ti.com; dmarc=none action=none header.from=cadence.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0d1c8177-4b0f-474a-d26e-08d98c836a81
x-ms-traffictypediagnostic: DM6PR07MB5370:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR07MB5370DF380CA31B20647B4B33C5B59@DM6PR07MB5370.namprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dU/eyxUUiHla2BdxbGnqJQpyJ5fx7JgtH0p6bCJMVTtTs4pFBBOEih8M6dDslcd2KTWh3G/vAN/EJ/Te5khoMkuMpCWtej+pVdMKh2nPXiQsJCYqzSuUBUN/sRO8/iy9siukEpAURuTl7zAWZgMVts6TKWbR7bUtj5opNT7stiFtpj9zMuZBHmJAUeIzDfZVNKKu/ZMu7Abt24jvnKqGhH5PgoHsHiQP9s0ncNvkspw4IAxoLqa12Cv1j4NquallArZBSZrRLX7F6gj3f7fzSvv14GpzbL9QeaK/eMXWU1HOFnUxpfATw+GbZIIjHjecPO0bHljn4WztWqjknREm4cEWgvFUQVqSvzO8T1Ez1ftkgjMJBwezZrMhS3Vb6MGOFEIWSZcIIMRi6WjusMhSU2TCg8IGSz2VsL+YauueKyrGCtE1uj6ZZkooc/EORBVuw61NNvCnuatQ+P1xj7zTvkNnSiMb7bxWnb6U7l6FTfiUs7eSrwsoNyyvRQFbVzMSyoGbURjoRdk+8i6+Shc9/1epVQqTu2dwHbGwi7VYu71cg9x3dw2YWUpMkwRwf17e4iQBQWJDoN0By1ENAAWlLugp5+cMRJWMqqeodJMYWtlOLi7jlHAklxql2wL0AGXb4iTyPLXg2U/qEBSEiRKl85ZWrzU8PLhDIjRJHSVvIuvqHZzgXV1uw8/JR/CZBLMA6/Q8hKwzYuXUOCGjANAXi01ZyBC8dx/7WzIQ+Ke+zUBeA+JY1hEb+Au2fjDs2rNg
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR07MB6154.namprd07.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(36092001)(6506007)(53546011)(5660300002)(66446008)(64756008)(66556008)(38070700005)(66476007)(110136005)(66946007)(54906003)(2906002)(508600001)(71200400001)(26005)(38100700002)(316002)(76116006)(55016002)(9686003)(186003)(86362001)(7696005)(8676002)(52536014)(122000001)(4326008)(8936002)(33656002)(83380400001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N3pRMEdEYi85MkxERXBIaFRyM1d3WU5wckJldEMzTFpFeEREdVNJV2xLRldv?=
 =?utf-8?B?TktyR3orNnJBQnBJNCtXWnh3YUE3T0g1U3JTSlRLamNvMFIxZm1VbVI4ampm?=
 =?utf-8?B?cnl3dExiN1VRZTJJNjRhTXQ3Z1JaSEREd2kvWEF1RTFRdlQzNGRsTmZpUm0r?=
 =?utf-8?B?cTcxNHlsWTVhSG5kRlNXWUc1ak8wQ1VvbHRIa0tGN1Exd3FSZmlRcDBrb1ZQ?=
 =?utf-8?B?OEhxMkYzdUxZc2o5ai9oSStoT0dBZzZ5ZERGOXg2NTBSM3dJYzdjTnplaUlk?=
 =?utf-8?B?bmJoSTZLazJPZkhIOGwwdGFGVjk2Z3k3d0UxU0w3Ym5mZk1NL1YwQnM3T1ZX?=
 =?utf-8?B?a3Y0NWhFRGFYazZiQXhNUHoySHdHUjhxS2lpK1hXVWtJRVphdGNDeUdSYXY3?=
 =?utf-8?B?VHJVaWphZnI4OWNOQ1h2RDU1cUFEMXIvS2lPZnplVmxXWWJFRzhpWGJqQ3p0?=
 =?utf-8?B?cGxzcFNqVzFLd3ZUK3BmVTAzRXlxWi85cnhEUzFkRkRQUTF1c3RYSi9ZZWRV?=
 =?utf-8?B?R0E1QmhJQkRQaGJOYlFvSW0yQ0tkVTlvS2tlM3BKdm9aMm9wY0pOVW03SWxD?=
 =?utf-8?B?elFkOTM2NHlOZVNuMVZUL3paWld0akVjM1dMdW1GckFSL1BxOGYyMGJNcWpo?=
 =?utf-8?B?NWhVOEk3WEY1cU1jNXZUMGtFQ2tDNHdqdC90NDRyZS9ZN1YwOWIzTHloTjc3?=
 =?utf-8?B?SEtaWm5LMTFqNVVKbG5kTTB0RWZyemhmT3dwTzM5L291c0hFUk5YVDlERWNt?=
 =?utf-8?B?VzlnMG95c3dXZTVSVkVLdFF5RDl3V3V1RTU1dW9CaDVZQ3c2UTI1YkFyUWF5?=
 =?utf-8?B?SDFadUNRSkhiTWN6bHMyQWxIQTJ5VWk1YVM0dDUwQkRaZ2VTd1lES3F2ZXEw?=
 =?utf-8?B?OSt2VXVyYUJDR0tzYVYvTEErM0xwdUNKR3NQSXhIWTNLM0E0eWJ6SDByUXB5?=
 =?utf-8?B?djhHcVh1ZVFDNFl5L3BxUnFzLyt1cnBKbGhWZ0JDZVgvSkJQTkhrejFRdzRL?=
 =?utf-8?B?WS94bno1VVh6emlrUEg2TXJHdENEcWxJclc0WElsSUhBOHFpdTdtbnF1dUs0?=
 =?utf-8?B?cGNuclJIRXZ4SVJDT0lESlNhcTA2TnV2dURTVjVpbVorNWxCdXA2MWE5K3Z2?=
 =?utf-8?B?blZjbTVmUlNBdVdZczdjOThiRjNsbll0WnhiNk4wZVVET2ppWmJwMHErZGUr?=
 =?utf-8?B?b2N0azhrVldML285S2gyZ1lwbllJK0FTeXRkQkIwMTR4VDhkQWwwV3MxQTlR?=
 =?utf-8?B?eGI3eXZxQWJrb3B1SXowdlBNVGxVbGVOZUorckp6cEtpWjlyWGtpQzFaRkRH?=
 =?utf-8?B?ZDFxMFZrT1RQU1dsd084cVlscExQOUVvWWJValZFWVdWVEVkanFqWTRsNzh5?=
 =?utf-8?B?SVhsOENOMGhpMGlVbCt2Y1RjVGZCb3h6UGltT1NWNkxWWXBBa3J4SUQvR0xR?=
 =?utf-8?B?dXluayttUFNPQm9YR0VmVEppNC84ejM3N3lhY0M1VXJYUHNxNWNobFZDUGVG?=
 =?utf-8?B?OENZTmo5WjF3OTV4YnFpN1RQTGoxZmViTFBVMmJ1blYvWmxEdUlTd0w3Q2pl?=
 =?utf-8?B?U0dzMlBOTEhVMHlXazdNaUNQMlQxY3g2eEowVHdoMW1MVGJnb2o5OG9MN3VZ?=
 =?utf-8?B?SnZDVkF3QldxdkxaNWpBWjRqMitoUlU3MXZubkZ5cEV6N1dtdU5QVXpJb09p?=
 =?utf-8?B?Q1Z1ZFJWRy9tTHJlTTVJZjdXNHJXak9OSnJNZGtKNzAwQUVWTWZmd01QeVNk?=
 =?utf-8?Q?5iGYw80Kzssf+WHMuOZ6ArZDxx85OU5Juc479Bq?=
MIME-Version: 1.0
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR07MB6154.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d1c8177-4b0f-474a-d26e-08d98c836a81
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2021 06:50:30.4133 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IoVhT3IJA4d/GAn4L7Ni2g9krurubC+sjMXi1DMnSng1NirkwXDmZEWyVPrWnisrNjGtO6QLlXr9b9z4qxW3A3SsJLNUx4ymrL9tG1dj+rU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR07MB5370
X-Proofpoint-GUID: _23ybT7zjvRqF1B-osKhsoiMLW_L0HS1
X-Proofpoint-ORIG-GUID: _23ybT7zjvRqF1B-osKhsoiMLW_L0HS1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-10-11_02,2021-10-07_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check
 score=0 phishscore=0
 impostorscore=0 lowpriorityscore=0 suspectscore=0 clxscore=1011
 malwarescore=0 mlxlogscore=999 priorityscore=1501 mlxscore=0 bulkscore=0
 spamscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109230001 definitions=main-2110110038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211010_235036_362442_AC2DC212 
X-CRM114-Status: GOOD (  28.36  )
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
> From: Aswath Govindraju <a-govindraju@ti.com>
> Sent: Wednesday, September 15, 2021 8:44 PM
> To: Swapnil Kashinath Jakhade <sjakhade@cadence.com>;
> vkoul@kernel.org; kishon@ti.com; robh+dt@kernel.org;
> p.zabel@pengutronix.de; linux-phy@lists.infradead.org; linux-
> kernel@vger.kernel.org; devicetree@vger.kernel.org
> Cc: Milind Parab <mparab@cadence.com>; lokeshvutla@ti.com
> Subject: Re: [PATCH v2 00/15] PHY: Add support for multilink configurations
> in Cadence Sierra PHY driver
> 
> EXTERNAL MAIL
> 
> 
> 
> On 08/09/21 5:59 pm, Swapnil Jakhade wrote:
> > Cadence Sierra PHY is a multiprotocol PHY supporting different
> > multilink PHY configurations. This patch series extends functionality
> > of Sierra PHY driver by adding features like support for multilink
> > multiprotocol configurations, derived reference clock etc.
> >
> > The changes have been validated on TI J721E platform.
> >
> > Version History:
> >
> > v2:
> >    - Added a new patch 3/15 to rename the SSC macros for dt-bindings
> >      to use generic names. These macros are not yet used in any DTS file.
> >
> > Swapnil Jakhade (15):
> >   phy: cadence: Sierra: Use of_device_get_match_data() to get driver
> >     data
> >   phy: cadence: Sierra: Prepare driver to add support for multilink
> >     configurations
> >   dt-bindings: phy: cadence-torrent: Rename SSC macros to use generic
> >     names
> >   dt-bindings: phy: cadence-sierra: Add binding to specify SSC mode
> >   phy: cadence: Sierra: Add support to get SSC type from device tree
> >   phy: cadence: Sierra: Rename some regmap variables to be in sync with
> >     Sierra documentation
> >   phy: cadence: Sierra: Add PHY PCS common register configurations
> >   phy: cadence: Sierra: Check cmn_ready assertion during PHY power on
> >   phy: cadence: Sierra: Check PIPE mode PHY status to be ready for
> >     operation
> >   phy: cadence: Sierra: Update single link PCIe register configuration
> >   phy: cadence: Sierra: Fix to get correct parent for mux clocks
> >   phy: cadence: Sierra: Add support for PHY multilink configurations
> >   phy: cadence: Sierra: Add PCIe + QSGMII PHY multilink configuration
> >   dt-bindings: phy: cadence-sierra: Add clock ID for derived reference
> >     clock
> >   phy: cadence: Sierra: Add support for derived reference clock output
> >
> 
> for the complete series,
> 
> Reviewed-by: Aswath Govindraju <a-govindraju@ti.com>
> 
> Thanks,
> Aswath
> 

Could you please consider merging this series if looks okay.

Thanks & regards,
Swapnil

> >  .../bindings/phy/phy-cadence-sierra.yaml      |    9 +
> >  .../bindings/phy/phy-cadence-torrent.yaml     |    4 +-
> >  drivers/phy/cadence/phy-cadence-sierra.c      | 1299 +++++++++++++++--
> >  include/dt-bindings/phy/phy-cadence.h         |    9 +-
> >  4 files changed, 1226 insertions(+), 95 deletions(-)
> >

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
