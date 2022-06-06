Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 213AAC43334
	for <linux-phy@archiver.kernel.org>; Mon,  6 Jun 2022 01:57:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OCtgcJoh9tKAHPQIVcm+fZD7huKk0yLCY9RdOQM7PNc=; b=oJ1RdBZeNjpnYo
	EQIgTP/Ke5PvGA5+N593I21qS/I5aW0Vhtj0Fjy+RVn4aZYDyzrpAXdFAf+7zfB+k3OyITIKHcnqw
	H9bdkiambNGq2VesffLxCvenqbOWAEuJjDme0Vgl9tepPxZq05QrSiObcgOwpqFMSBSRXvsFs8jw0
	6zAbEchPgg3uaTdG/haup/X2AevGRVAnDLySnbVD116WbvawC+IELa+uLwZ5DnbPafnZ8LUO/dAjQ
	QIYADgHd0YMSKDrND7O8ZUH1Kfv/rhKlywYfR8zihz213cEGhqQANzjsRXaeG1cAakSnzMUZOoWpN
	hbtbgUNq9aRVHOnX6Lbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ny1zu-00GUPo-FX; Mon, 06 Jun 2022 01:57:38 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ny1zr-00GUOp-E4
	for linux-phy@lists.infradead.org; Mon, 06 Jun 2022 01:57:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1654480653; x=1686016653;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=nqiSADf83bJJnn5ZeAVwv/l7anfapOzjc+MpfoYsJrE=;
  b=qa8PQ0I6W4c/979ZLHAhAhqy9PeYtyc7yxW5/CrhyF1NDlg5MI4T1KvW
   dqEgOnnnWKb6D4XfnJOjlG9AYYW7B0MZEL4kUxmlZommdEbHRdxqoxeWl
   8V43W8qo6P80n9ktZbI1Q6lFAiziC0HGp9Qhi23B6TUm5VwjxROY7If9s
   MgNr3Qu+uIOfn+fbColtdajU+2tBjyx8mATt39nBZ240RxPXzZxqn7kgw
   TjwWrEiHRTm+rdIrPS4zQfhL0A/7keamYY2JtrJ/VQ4f7wtw1/f8W0E7H
   dHpDkatVsC/J3DnFmLFfASAyHFV/pt8GKXPP89M2zzE/NJgXKwoNonkBZ
   g==;
X-IronPort-AV: E=Sophos;i="5.91,280,1647273600"; 
   d="scan'208";a="202330938"
Received: from mail-dm6nam10lp2106.outbound.protection.outlook.com (HELO NAM10-DM6-obe.outbound.protection.outlook.com) ([104.47.58.106])
  by ob1.hgst.iphmx.com with ESMTP; 06 Jun 2022 09:57:31 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hPR0FLmlM1RpqM/WNRUgm2PEqx8hwDD7vyPCgIe53YigcflEIuQI2pjFj+bGlgkMru63/eubt98acR9jBKA0jb0d0xRM9Irq4SO1KqiDbtflmi6XUJjOzk0nX0mgnUUYEt07BNTv1oSOuh5SgfpxkUNclJuaAv7Nazn1hl1ugICZEvO4t3tQtM13jgyEYpNyq/ovBZ4h5LYaXanSCU0InlcwHToKjDqgvWLZlyALAgG0Eo0SFlmo784at454EwK+QlIO+iCd6Y/fSpf1lslEoPGPepYTQD9XI6MlFjUcLTIphgkY9HxckwSlB7VMhscpz5KAzN5JplYfhZvgwNgcBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nqiSADf83bJJnn5ZeAVwv/l7anfapOzjc+MpfoYsJrE=;
 b=aFuz7CxkYKpibXAguizp9Sxyk1SggzBBccHX5ElyrLiDTF19mQO5PPHpZ5zmhcXu0TYuLTFc3sSeXVBwEm9sziKw0LGdkZ5UWy/lFOnDy8cR+xDS0kTyDsZmPY53JMYPbR6kjqALtaJ1BYIpvjBYwgvKYwltw0mVqe7OzrEIC9nnARYgEgFiAqAHmCldX1tQYiJ8J9pneHGDco4AWWIen+XKBc4g79CiQAVVvzXRtOcQ7ugZOkN2vtAwyZ/XzeN8JjpSoN40BnaGTR6HWiVflKZ5Cu2/jsId3viliCBcgR+FEGmH6IrQU5xmJrNwF06dyLP/4V+ga0vST9xK9FYLkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nqiSADf83bJJnn5ZeAVwv/l7anfapOzjc+MpfoYsJrE=;
 b=Lovcz3U/VRyLzGmzxPAJ2D5OwzPMRQvrGixmXV3a1+LwAXURJNmomdaSdoYHIEalOFuJ6vftBL2CjAG8mTlB19IfdC08VTH4F6VtiOWm0/dBf7IBaScrNm8gFL31jCuM80MzKHmpPTP5LVY1Z99e4gUD83147rFc/rJdy2h7Bhk=
Received: from DM8PR04MB8037.namprd04.prod.outlook.com (2603:10b6:8:f::6) by
 BYAPR04MB5224.namprd04.prod.outlook.com (2603:10b6:a03:cb::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5314.12; Mon, 6 Jun 2022 01:57:30 +0000
Received: from DM8PR04MB8037.namprd04.prod.outlook.com
 ([fe80::39dc:d3d:686a:9e7]) by DM8PR04MB8037.namprd04.prod.outlook.com
 ([fe80::39dc:d3d:686a:9e7%3]) with mapi id 15.20.5314.015; Mon, 6 Jun 2022
 01:57:30 +0000
From: Shinichiro Kawasaki <shinichiro.kawasaki@wdc.com>
To: =?iso-8859-1?Q?Marek_Beh=FAn?= <kabel@kernel.org>
CC: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"pali@kernel.org" <pali@kernel.org>, Damien Le Moal <Damien.LeMoal@wdc.com>
Subject: Re: ARMADA espressobin SATA drive detection failure
Thread-Topic: ARMADA espressobin SATA drive detection failure
Thread-Index: AQHYdOvSBcLBZWQYIUC8b9MlWQLEfK05A6YAgAikEQA=
Date: Mon, 6 Jun 2022 01:57:30 +0000
Message-ID: <20220606015730.edjega3sb2vgjupy@shindev>
References: <20220531124159.3e4lgn2v462irbtz@shindev>
 <20220531160012.1e7e1b48@dellmb>
In-Reply-To: <20220531160012.1e7e1b48@dellmb>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wdc.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a6e2621f-2f59-4ade-2ac2-08da475fea63
x-ms-traffictypediagnostic: BYAPR04MB5224:EE_
x-microsoft-antispam-prvs:  <BYAPR04MB5224F3B101BA2F8A639AA8ABEDA29@BYAPR04MB5224.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  2f2o7aI/ZFPH3eW68x/fQvA1faypBwkZJd8AwIKjTMDhJF8g/FDX/3ctwSS0BzQ2XWgqNkA9XBw+daCMfm6IE89ymwwtmTDSynBspLW4ufeHYgCDxDgde9y/WXkupFE/fTtZetjvtGSgxcxLtUF97uqp/QRfV8lNgOC/kTP7T9HyKLk8m4tuSrFWgtnqEg41TA4sR00tzPF6cONhlLRslSz7f0ob6aj1o2HXImH1B2X5UV99vN47LpmoLH0H6CwKoI/1qyEh7d5/17fQkXY5TqvLvkQWHbUcIWqaidh9HTS8dEpVaZzk+nhUvzDr6aDmViBTK2n1cBDH/PVIrxUWWd9tKwy1tAsuDf1m6kiNEBbq1EM4Ea7jWwpQE4sLLfGb/v2YSNRYU2P44AN5m/eNIe++fRrXsTNJHIOoD2culJng7J/15e4u0EFxZNeGw4KPa3UsCJSaPdkJIa6/LWoYPBCpZjZ0JgU0CiBc9eVRTcuXiFksSvSgFwLmYXCUPsIV5EVsxUDuDX1/IzL6G+tQAaP9rQmDPJ4RK+hAS7oihP5Rfuzhg4ik+Xuix/Dt+43z5Xksm5gMG17Hginxp2k6nGj0ku4Li3GtztSPX5EEU+GfeVabHmjGFEXD4/lfEbfual2DwHiPgJN1Tb0kvEHhpMJQCRzGaPuAw4giK18AQLqTyC/6hfogluMbaC7USQPoxCGND3A1n5WtC3It1iDwTg==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM8PR04MB8037.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(7916004)(366004)(508600001)(33716001)(6486002)(1076003)(2906002)(9686003)(6512007)(26005)(8936002)(38100700002)(5660300002)(83380400001)(86362001)(122000001)(91956017)(38070700005)(64756008)(66946007)(8676002)(4326008)(66446008)(66476007)(76116006)(66556008)(82960400001)(54906003)(316002)(6916009)(6506007)(71200400001)(186003)(4744005)(44832011);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?iso-8859-1?Q?3CMWqDUn/vwwc5/r7LoxLynqZfeJd51bsil9ZGmykNaSm6XwjzTwVMB+sf?=
 =?iso-8859-1?Q?kf0SMRmaSNrdRlFRRKrX0Vxcc+sgg30Z/y43knH6Lur0N2pl8U00KXIrH1?=
 =?iso-8859-1?Q?0YaYnwLGPNcGEYKVJ0ckcQYD+9RwRZg2tzmgHDkiwcD/4G9c+LuHrHMYZb?=
 =?iso-8859-1?Q?mIJRn3XNX2rODY+vNFqCzyK2EKNOHolJ0fMAp+S0wqVyrN/DOoGUBlJHL6?=
 =?iso-8859-1?Q?lHSsWbk6MpzCC8b92deXd2w613PMsO0EmwhML/Nay/NmX+UpHf7unufHZ3?=
 =?iso-8859-1?Q?XbDi3yTXDIXxSzJ1Ic/lJ6d1gXF5j5U5tyXg/7bIoMQDouw7N7nePeWVuH?=
 =?iso-8859-1?Q?r4AVZttLqDuX+AlszEzTgT+DdjxcVa3YUgmv8qr/oSv2e5Q29vUFMzFJk5?=
 =?iso-8859-1?Q?vCULmQrTCOmPNOhNREKm0R2Cxt78NQWze3LQZoX1dI3V/Cmu31Weu/Dj2n?=
 =?iso-8859-1?Q?jdE4GW03xJCBjVADrxPkCQGnz4krt5WpSJIN233RFc0c3VUtUo8gbUvgFf?=
 =?iso-8859-1?Q?DAIiBmGgpeA22b3soGyp3v8JHeDbWM6jgZ6GmgU+5+DnJ1hYixQss/I25+?=
 =?iso-8859-1?Q?EljLLNQjt8G5de8ySw0w1fQAFmtuqIrXP2lYYFN5ETmy8PA1+6axD1MgID?=
 =?iso-8859-1?Q?igVia1LtuYvjsjXnXvBJDvzr057nv+kWFgNrGGH2iL4MH3Ohw5eEBZXPbC?=
 =?iso-8859-1?Q?Vnhujh1UGTot+T8u0q+Xc2hDamm2TLtvnudwQTCEBQLxOVV25uNAxVw+dZ?=
 =?iso-8859-1?Q?TiLe8wirYGMqOAGy3+7hFf64GlWm+y8NJX6y8IFif3/w3jpme5zXHxOIHh?=
 =?iso-8859-1?Q?AS59akZorD0F7hi7LJn7F3hdmZD1nhDFTkPD29k+I8rNhQgcGclCxtIC18?=
 =?iso-8859-1?Q?qPzJfqCDW/PeA4XsmMAByDAem9HwTt3c2tGudOCLeg4cTzpQJQjh/Mko4S?=
 =?iso-8859-1?Q?Mfuum19zDxeMFsSSof9cpMhROnmso5aDGYTTXkhZon5qJY/Hut6TAskqeQ?=
 =?iso-8859-1?Q?BDHwMQ8767CDi8qNJqLIJd0nEU3Y9BiT9mRZgPuT/p9X/TJuw2P7YhJn2N?=
 =?iso-8859-1?Q?Ni5ItGh6Mkzk8wUVJrfuoGf0DBMpuiSrp5JxbI6y2/5MifdVTTrk/J6T9r?=
 =?iso-8859-1?Q?E8VM2CKzOABbZLaii9Fwu5dDSLg1JF900ZCEOuMqCNmSVpnWw9lmuLMJ3D?=
 =?iso-8859-1?Q?wOM5aX5HPG8x7dsVfM6A43tvbwhuGuv4BLW90y7xdDnzarLnVhX1HFZDzf?=
 =?iso-8859-1?Q?fS+t8sasugOHj652gxL9p/6XjHVqDlwqPXH7E7PMf5kO6nHo6SGHLvwITx?=
 =?iso-8859-1?Q?RPr5lP3wK6KIwyfFlbsrxs//fxCoHVU3buFCkwx/hz2X3bOXaSYPweQAPl?=
 =?iso-8859-1?Q?vIuPJ9wxiRyyYRBbCsSTph401rqdK+ehNYmAUJcOn3bMHwH3H2UfDjC9/M?=
 =?iso-8859-1?Q?29DiXmjaAn1vuWesT4AaGR1+t64bJfmv/qX3DIXjrEbWu6YeQauocDmhEb?=
 =?iso-8859-1?Q?MIqTc2HDrzwq1DobORyRMLcibx94PygCnLq6Zrm8oE9YUytR+M72u/ADEz?=
 =?iso-8859-1?Q?41aYQd+8LSf3OP5NiQWRz/odtylPRb72h7mBbEAKIkU35ot7UCn3G1QvWC?=
 =?iso-8859-1?Q?IhW25bKgNSPd2IvJ+adr3IuTa+t6TVF4hpXKo+yabzBwigo0vMv2nWvveH?=
 =?iso-8859-1?Q?2nFtw38+smsPyZ72vGf3gNn7D+sCVcL+olGd0+NTfdKVI1KaiBFKalEhVP?=
 =?iso-8859-1?Q?jaGAw15xkw2ePybxPb+USQu4rT6qWefjUoctQButsvPjqdp+MTFxHLgJFd?=
 =?iso-8859-1?Q?hjWLdstJ4ctmTxSHAYWVp18oaGPtlv2IWDWKGk9irlIZW9pXF8iv?=
Content-ID: <17C7D1B10362C84FAD0F7329DE95F9C2@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR04MB8037.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6e2621f-2f59-4ade-2ac2-08da475fea63
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2022 01:57:30.5554
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JJ/rWCW0GKt7TAAeQYRy2sqXx+CLrvyOBabJ5Ym8HGuIRLwMLomFg/3riLTOc9am8TB0HbBVUZtz2iDKfaTavDn31Lmgl0EG2q/13MKwfW4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5224
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220605_185735_797105_EF83FF37 
X-CRM114-Status: GOOD (  13.36  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On May 31, 2022 / 16:00, Marek Beh=FAn wrote:
> On Tue, 31 May 2022 12:41:59 +0000
> Shinichiro Kawasaki <shinichiro.kawasaki@wdc.com> wrote:
> =

> > Hello Pali, Marek,
> > =

> > I have an ARMADA espressobin board, and I'm setting up SATA drive test
> > environment on it. Using that board, I observe that SATA drives are not
> > detected after merging two commits [1]. They were merged in the kernel =
at
> > v5.18-rc1. With v5.17 kernel, the SATA drives were successfully detecte=
d.
> > Reverting the commits from v5.18, SATA drives can be detected.

[...]

> Weird, I tested this. I am taking my Espressobin and will look into
> this tomorrow.
> Marek

Marek, thanks. I can do some experiments with my board. If such an action h=
elps,
please let me know.

-- =

Shin'ichiro Kawasaki
-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
