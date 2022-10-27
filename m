Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D6B1ECAAA1
	for <linux-phy@archiver.kernel.org>; Thu, 27 Oct 2022 13:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S/oK5lo2TwXsEina9SqWVDOJezihJ7fN7CB8sawF2uo=; b=4+haX+nLu7v/wV
	S5qIqKZNxKjIqVR2K8mug0SOAm8zcOEUiT2IPNybP+9gjLJPjOtKVG9dezsmzqO94u+flJknX8qBG
	zq3r4A3yJ+jCLtWCcgDt5Xz6qCbpMttAkQJAL4FWT7ChB6CWVnRrd7tXgcIGDRAeb/EyFxekliiJZ
	hKR80qoWBVAFaZfzyxGZOh3gWmXBorf/KOsK79NihJ1INTXCjmUDEilKlzWTG7ONObnzXL47Opt+u
	v7rIQymbE5+7l1olQcaTMLuUY6aWIJy/LuiUtWcOwWA4jOkoX2qRye9RultpkGVMBoIuaN6ScE/OS
	e7qjM6VF38lSh/zC4P4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oo370-00Dbsw-OZ; Thu, 27 Oct 2022 13:39:58 +0000
Received: from mail-tycjpn01on2138.outbound.protection.outlook.com ([40.107.114.138] helo=JPN01-TYC-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oo33z-00Da1D-7p
	for linux-phy@lists.infradead.org; Thu, 27 Oct 2022 13:36:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RbpnslWKTKJxOSeah+dEOrBdRtoycJy2d9iYCXokg/E/LxYVkwjfgk0TnAEAwqu29gJEqdRS+2izokoONAIFRCYJa+kx+fyV2OTCM2R1rCQUpn7Due9kPcs1XNI3wpRS6ZJMhGnLJe2hncqNg3JOC5BQ4tjlnBqFrfCt9RgSG8UjT1SaGwkT0YWpBPAc0pYenJSPxYmRcMX6/FBwfzkp7xCvDuN6RnQl4w1xeMI1ER/oW7bFCejqboqwYYyfEwRsm+b66sEdkGXKE+7nKOPHRhelcaXIIpRfAPl/XvrvSlQwIDteqRhDIPE5o7Kw+7+J0/PpAJ3wDqYZ3I3p7UMmpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qCQH+6d9S55uq9Mn28A0Gu3oVpcA+RpxI+4qpVaQEFI=;
 b=k6vxOUTdzvQMxmKEeYy+Wxm+IWzUi2h1wRlE1FnCXcUjF5pH5oMALlZ2pJNSbdt9MEGtcLJ09TjWvsdMBvlZmMRpaPNqZ5VLGMyWaxreBjghQcJd7GQkkVqIAS8xjPPtfaFMxfWAo2BHOUOoNp+Rc+pSI8gPopwJu5iCXCidoP1C3lgt6w0eqbT0PiHLug/e1uspgbDNMajL1EVpUDJ71eOvQM2T4aTCMgUwjuZU6Nrn1MkVO9iMlDeZWn86Vuj1yRQ5cYrMCkU9UBtBOh/IyRow90W+pMcaRtVSMcoKl1P7fuC+Q5tKSNPdweE6Cv2ONo2pBlnubaAFuZEkExz2Rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qCQH+6d9S55uq9Mn28A0Gu3oVpcA+RpxI+4qpVaQEFI=;
 b=EcgK4rnmsGQtv7vYG1LIU0FPNDSI6rjxb6h0QdrXechMSuOdGAkIbIwwMnT6BIDz/IItKGm5d8sZ0/aW81PyRCpe90qJVW8+u1vMapiwPHvFzOYd/fZtRjU28ULjvebHiPhjcEFSx5JyhFyCwoYPrsMHxec0IE5wpnfZ/eYYH8Y=
Received: from TYBPR01MB5341.jpnprd01.prod.outlook.com
 (2603:1096:404:8028::13) by OSZPR01MB8355.jpnprd01.prod.outlook.com
 (2603:1096:604:16d::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.29; Thu, 27 Oct
 2022 13:36:46 +0000
Received: from TYBPR01MB5341.jpnprd01.prod.outlook.com
 ([fe80::e28a:8db5:ee6a:34a8]) by TYBPR01MB5341.jpnprd01.prod.outlook.com
 ([fe80::e28a:8db5:ee6a:34a8%7]) with mapi id 15.20.5746.028; Thu, 27 Oct 2022
 13:36:46 +0000
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, "kishon@kernel.org"
	<kishon@kernel.org>, "vkoul@kernel.org" <vkoul@kernel.org>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>
CC: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
Subject: RE: [PATCH v3 0/2] phy: renesas: Add Renesas Ethernet SERDES driver
 for R-Car S4-8
Thread-Topic: [PATCH v3 0/2] phy: renesas: Add Renesas Ethernet SERDES driver
 for R-Car S4-8
Thread-Index: AQHY6ggdieoRaSnymEC3zYQhHdikMa4iPbwQ
Date: Thu, 27 Oct 2022 13:36:46 +0000
Message-ID:  <TYBPR01MB5341594F19BDBF975365E129D8339@TYBPR01MB5341.jpnprd01.prod.outlook.com>
References: <20221027132907.2342830-1-yoshihiro.shimoda.uh@renesas.com>
In-Reply-To: <20221027132907.2342830-1-yoshihiro.shimoda.uh@renesas.com>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYBPR01MB5341:EE_|OSZPR01MB8355:EE_
x-ms-office365-filtering-correlation-id: 1964fe54-9bdf-45fd-289f-08dab8204b4d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  dXiSucWSjkehYevbmlzRrxx/n10quySxJMnX55jDInjHrmBKYaBSjdOEpLrmBZXO8WVY/n8qA4Hzmac1cwXuQ3kc1ZMfn24LRNvyAun68XORRNoxDc8db4M9kGK/SfnXtzWTooKIQ2zzNb370HCxncf2VFnEVM9eey9xmXtRy6/OoIuq3HnjV5sVpqtAH2kynGhUhi4AeO0QLur1UbJT/R+FWKBxzTywKEWZthmGvqgegUUTvR+uA7G7yPltJDuBf1yiFhVFFWLcFj9cVsxwhQLhdT+PTsy07HGuLUaJqNSBAzENNOXB8vQ7Z1Csgb1RWB7rJP+NAcstt9E8q1K/19D89SG0qyRxcOsCu4oQY/F1Mv9L9B6cX1vF7IPJ4jvD2Npq1j6KEUS9QzTI33P7yTxEdFsg0Cpl3vPLM+FCq0kMpl/DBxlQvvGZV8foBtyZZNVo26dGgJV8RvrFQgpxTCLQjyakA5q0sH5MAGng5MSWrtUcImU8kHki9hkUfVEtqH1lnQculVwbaD1KoTbw9dHL5AFqu97xjxYM5vTXkNrqo9Wmkf11JiJ/K9S0xwmE6OmyhzVpxdgl4kspluvd2nmJ2ujIMpNGs3fpmcZGp4pYUN/xwZ+ScFj627PvhNN9uLnrYQ7XmIer2iypKvLyImsVKoIhTj/XJu/4n2CZu/HVOcEfwlmJNOzfAGLqrsWU+uJJGUAnKDVQYZ1brb0DdnoWDWF8ylhZeScmbSNHCQIo/3ls3Id8skmCtRfFpyzLoUNzMwHE5q/vPa/eHO5qeg==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYBPR01MB5341.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(39860400002)(136003)(366004)(376002)(396003)(451199015)(33656002)(38070700005)(86362001)(66446008)(55016003)(41300700001)(9686003)(66476007)(4326008)(8676002)(7696005)(6506007)(64756008)(4744005)(52536014)(66556008)(5660300002)(8936002)(66946007)(71200400001)(478600001)(76116006)(110136005)(54906003)(316002)(122000001)(38100700002)(186003)(2906002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?us-ascii?Q?t9KfJ+nMP7cGNsuXrdaugXOQauWuwAuRrsymAa/gRlA8u8Ea3ouzkoDUSo1w?=
 =?us-ascii?Q?8yHSjuSjFkYoQAn1/w0rh5p2HeBSfsoOBHgZlpAyDIMOT+QAtkSc9PP5RXP7?=
 =?us-ascii?Q?/CLk7CmDpIhbBeQfy73xNB2Fo6enruag1iZjXzYKdtEp8ExE1wXZTbDIWvp5?=
 =?us-ascii?Q?UKh1yHT9VOfJp82U+tnG9AOSH6YsnxcrDOPdFj1GCBhvKJNiCwQGlxMy8JH2?=
 =?us-ascii?Q?lYOwWE8AAGO6tbBA8XTB4f0G5B8yeNgJihzaSARF+De70Dd1rnKb7DOJ8Hjh?=
 =?us-ascii?Q?bQXFNFItd+XGvoH2xaHaHYJk0QDpEakQSVHRT0PuMMxsBja6ssGq8kx7j6t3?=
 =?us-ascii?Q?FLt1qA5dEhfxbezIsHN48kPCERZux12QSGb4HceP6HlRT7x9uK6HqFZ95r5u?=
 =?us-ascii?Q?ry7mrf8T2pqMn/8DsGHeMgW7vWSGJPgqlkhbOc12DHMFk/6B6GHKoT1p4TSy?=
 =?us-ascii?Q?GEWQrL9copPLcMjJwqhZB369+yLqilkT1KWQTunNL6arDHCLBqmq7D/jSuGr?=
 =?us-ascii?Q?ac3p8R49+TtZcMSFY09C0oENY1ZBK6D+Lm5JawSMfYgv+tM2IIFsAqwtd31u?=
 =?us-ascii?Q?J3T4pk2lEO6t0fX2jTk+MkLAIJq/jSycI1qvKJVuj28m0u2K7ff+Qr4vZlhI?=
 =?us-ascii?Q?ScSq5O35Gi+mUzVXESTn8hPFGUXRlePFNfh9fJ+6gf9BAeYyQ9AZKkhGe6T7?=
 =?us-ascii?Q?9Fhp4GxL12bymo9IsF38Zbc7bqOHZEDkIlxndEH0eqj4Z6Tiee4zZRr2vDby?=
 =?us-ascii?Q?rpIGrt4m5MpRK+UpISB/B6tT2Ve+2Al7u2DcmflYn+GF/EbA4EafVZ/IKA9x?=
 =?us-ascii?Q?J2k9vtMsYNqAxcZcYbaHMcsc/J+OHpZ9La2GD2dG2/4r2VQo6W5LaQHXN+SK?=
 =?us-ascii?Q?3rVFLpZeH2efBPlMiJkKlKVdi3i4DcjYb9q2G/W1Xq6OCPVNnH6xi68zMW25?=
 =?us-ascii?Q?YMwV62dR+rrY4Pj0SElxVVsLGZL+o38WkBbMzAnteXpRTje3BMJ/EYk/v0bI?=
 =?us-ascii?Q?Z8cWawfF6KI48JRbJIAMLZQfHN8dcX34pbz3xo6RZjujkGQgiQnnyYnPwESF?=
 =?us-ascii?Q?s7C0GYDW/kXOmZrcszk0iWV2a7hNZ9KRZ8AfY3YZE2GlNGFfirYhxKvAobIb?=
 =?us-ascii?Q?LtTzJWP4VY/l03/Fn0dWgej+XgHzuf+WHGBgGZvNCRjKoMkeRU8tnTjVSubP?=
 =?us-ascii?Q?jf1FxXNc4ijNY0vesNJMB/ppb8KWLIltSqNe2v9WPuD3yzLa0nWDaG4VlY4M?=
 =?us-ascii?Q?aifz8gn9QbjUQIN4bjaILTKbnp4IDqhoQZ5zp6pizZfHi4SPferx6Q6EZpz3?=
 =?us-ascii?Q?AdrSLo8/bikYfUYCDibE7OTBV8duuGOZNkp6y2aiXz4s/30OIS3nJSaZb9Ff?=
 =?us-ascii?Q?5DMSwujGcQm0z1SvIIsK1V3yLgOYmYUcgT+DulSggdI7g69awZ2nmopm8Eqn?=
 =?us-ascii?Q?CHkZH3U435e4Wlaqb+x0kX+n1J9RmiiorEztFXjlldoKfZBX9GxogB6PJU+F?=
 =?us-ascii?Q?DFiWBBCgYSdkxWr1J1qqXmuLoHCdeEPL3khpWWz3zZvoQlZNqyXX3T1fKs2I?=
 =?us-ascii?Q?36LHUm7IybRDI8XyfRx7CRMTqIykT5+tWgwHO7OEI4PPRsA5KnZNzMbm4OAD?=
 =?us-ascii?Q?2ttMlgJeYretnipQjLFWBH1AEJERUh/vSYLTFVF1Z3uV38o7GZj5d3D5BM5W?=
 =?us-ascii?Q?u2eFCw=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYBPR01MB5341.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1964fe54-9bdf-45fd-289f-08dab8204b4d
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Oct 2022 13:36:46.7533
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wAnHkb2nfd3cTVG3OyaXEr0zaCX3qsZzh+SVKi/9MRRvYH6OjVzqgn9p2jUW5U6IE69kP2Xch9iSgEu74yqHEBxD4vJc5ltdiAZbyLy+vctDffAGP+gILK3TXdzH/g+q
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSZPR01MB8355
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_063651_727369_6474090F 
X-CRM114-Status: UNSURE (   7.43  )
X-CRM114-Notice: Please train this message.
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

Hi,

> From: Yoshihiro Shimoda, Sent: Thursday, October 27, 2022 10:29 PM
> 
> This patch series is based on next-20221027.
> Add support for R-Car S4-8 Etherent SERDES as a Generic PHY.

I'm sorry, I should have changed the email address of Kishon Vijay Abraham I.
So, I'll send this series soon.

Best regards,
Yoshihiro Shimoda


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
