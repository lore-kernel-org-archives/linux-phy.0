Return-Path: <SRS0=CyPL=LR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C085C48BE5
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jun 2021 08:02:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4D954611BF
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jun 2021 08:02:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4D954611BF
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=renesas.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Hc01pRdhDj6PYrjclktX+bDHG5EcHs00/ep4oQYqUw=; b=XCaSdd69YE09iw
	L5FYnGpZ//ifc3pYXpye/3xf/EhoyjB/pdO0VCBem91Zb45R/m5ZvpzFDq7x4e01FbVuoscLevOdD
	UheUMBrNW/XSbWnF/OGz6CS/W5R9aXmnt4VjSLWYnplG/o5vc+51D+nghGSyZonMbcYf3rd2gXA74
	EA2QrBSbSjZuFB7UhHkk5QkTgIyfFqb89iuTfKB3IPbKmuVFsJ89EQj+UEbYwfl/iHoICI+3gF4W+
	Xk+DjbBORgyw2BVvRFZ20a+lXIUmobq9XgHjtWCWY3KEnUeZ6Dm0dFn0bQmY0h/q0SRuqyVHbx1S8
	LT5V5/nPKVX0SkACNhiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvxqG-009tJp-RE; Wed, 23 Jun 2021 08:02:36 +0000
Received: from mail-eopbgr1410099.outbound.protection.outlook.com
 ([40.107.141.99] helo=JPN01-OS2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvxqC-009tI4-Ox
 for linux-phy@lists.infradead.org; Wed, 23 Jun 2021 08:02:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eGOAGRgx0uTH0dG+M9ndCeJtyDgBjieHJR6YzAiKuhPO2jISfUjxWJ0AnQgtENMz9GUbQZj80OcTpUrzRK3nYQTYp/tZXoQmmrC11P7yfpudMeyCkCaESdWCt5n6Tsyxeg4rt3Vgpoh8KxuamO6YMBG5TUGPGEsnv6BJ/fR9x3bn5xMsl0HKOmLQr5u2g7XNMJIHrZZLIJq8AeYEbI1/gIfz/LThUulx8yRoQSnvFRwRRW5R52Adjfmr1mUfixfS1YLw7EJDT+H0CVLo89oD3WJz7C2zTOefwVEiaLvGqXShtsQetj8WWkQ5il3nHQAvFmK/SgHkqTxdNc582CnksA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1SdmGdNz76of6CI0dciZ/EUCnjh9ivPMPAxX8ARDbRc=;
 b=AL4WX+hZ0SLBogL0BkbaaMDO5ZNi0mHtFAe0Mm6F+QM5pImMgIvz6ouLfjjzAGOJAcj7uKjGcCRsdNOqRtNBkaY0e9CgkX7Whdb/jf45llxiEKqOZrLo/droi7s6uDKQ9wz8LbfLq0zg+Dd67ko5CwH8Em+AFDgIW9MyRqiPzMHFM9jYBkB3HAjigeLLpN7B4OKUXGTl+JTVQdAkY+o7/vDNo5HXyYnx8YvwZqQnJe7KciQZOJivJTwo7uD/LUfDkCbJFZQLGlYj5lnjk5qEXeK8YBlap+zDrUsKWp1EhGI+EieCTfLDGtFWNbYuyd5mWmj3w8CgtUXAg4F99e8ncQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1SdmGdNz76of6CI0dciZ/EUCnjh9ivPMPAxX8ARDbRc=;
 b=pGXz/4ckOFZOI3Gj9vG4sBvFjsBoPjrPYV04FkbFm5g1WbJlyO/Kq2q1mlheIRXPxUEHNoyAqWrfGtsgIErSI/4r0T6fc5EYNB0aCOS1cwA7G1BJd2+XVOuXhjl6KEqUiIKsWbtPc7Hzy1JkwBso3KON1QbfvzJ5FgHFMwGtd6o=
Received: from TY2PR01MB3692.jpnprd01.prod.outlook.com (2603:1096:404:d5::22)
 by TYAPR01MB5611.jpnprd01.prod.outlook.com (2603:1096:404:8052::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.21; Wed, 23 Jun
 2021 08:02:28 +0000
Received: from TY2PR01MB3692.jpnprd01.prod.outlook.com
 ([fe80::4c5d:66ee:883a:72a5]) by TY2PR01MB3692.jpnprd01.prod.outlook.com
 ([fe80::4c5d:66ee:883a:72a5%6]) with mapi id 15.20.4242.024; Wed, 23 Jun 2021
 08:02:28 +0000
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: Biju Das <biju.das.jz@bp.renesas.com>
CC: Biju Das <biju.das.jz@bp.renesas.com>, Kishon Vijay Abraham I
 <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, Geert
 Uytterhoeven <geert+renesas@glider.be>, Chris Paterson
 <Chris.Paterson2@renesas.com>, Biju Das <biju.das@bp.renesas.com>, Prabhakar
 Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: RE: [PATCH v2 10/11] phy: renesas: phy-rcar-gen3-usb2: Add OTG
 support for RZ/G2L
Thread-Topic: [PATCH v2 10/11] phy: renesas: phy-rcar-gen3-usb2: Add OTG
 support for RZ/G2L
Thread-Index: AQHXZoFzMLd0tBacEkKq+oksmDKkQqshLxKg
Date: Wed, 23 Jun 2021 08:02:28 +0000
Message-ID: <TY2PR01MB369203283E466150FD9E1DD0D8089@TY2PR01MB3692.jpnprd01.prod.outlook.com>
References: <20210621093943.12143-1-biju.das.jz@bp.renesas.com>
 <20210621093943.12143-11-biju.das.jz@bp.renesas.com>
In-Reply-To: <20210621093943.12143-11-biju.das.jz@bp.renesas.com>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: bp.renesas.com; dkim=none (message not signed)
 header.d=none; bp.renesas.com; dmarc=none action=none header.from=renesas.com; 
x-originating-ip: [124.210.22.195]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7f2d2af2-b6c2-4d5b-21c4-08d9361d3ed5
x-ms-traffictypediagnostic: TYAPR01MB5611:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <TYAPR01MB561146E1670EF5F2140F5658D8089@TYAPR01MB5611.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fwUuPpbyLuzWk58N5gyMLzmBckBTDOzisIwU5luLf3vhvSm1IsAu3LU+C97YPzCCUbMhAK4p5rvOLimGmb7wlQRZt6Ss7vYjr8ebsmWM/Ly52Sfrc2yzdVvOexDqd/P6tpKTxneVO302F6RQlDxWxiI16nKkgbKKFMBgYieVe/kJP0/BBudrXMCtItaG7CLc1hSwSp0dHUJsDIIVixNBaKuwr+eAiA/qjP/1o347C6OAixwN4zE+FNA2Jg7mUmkox2XCPTcRGwAoObk0CfVQBQCzu6lXOOQ+LqpE3i4uPQ21KWNiqIf/69JaKZkjWzNlLjFjylzhYvzfnLjUjYPwJ6/I24wdtiQjN197/Ajn81CQderOkK+UPjM7Te8LoxulhelY0iFOKTZhs0hgdg210bwhweZAdJKCfx5/Am7bTWdDGk17qrMj4plaZ7fbEi6kBvkDxHPJfOgJQuCyygadR4rcmwhqgsxIiWdDFdryk8Ni+pDbmmYG/4TFsKHIGv3FTaU8Sem0LomifXPGvXfUPhia6PbDhWErlKQfeEx31EoCOSWVzOG9hJ7eIltoMR5jsz3AVg2v+8qgvdqL/Wx8P3fadpzQsNI3nvMT/wXjN4dhdSk2Yz0Z7SgnCbizauyS4oK1VDpuNpUPPYB0RM06wg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:TY2PR01MB3692.jpnprd01.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(346002)(136003)(396003)(39860400002)(366004)(5660300002)(122000001)(2906002)(38100700002)(64756008)(6506007)(76116006)(52536014)(66556008)(66946007)(66476007)(66446008)(8676002)(316002)(8936002)(83380400001)(9686003)(26005)(107886003)(6862004)(7696005)(4326008)(54906003)(86362001)(71200400001)(33656002)(478600001)(55016002)(186003)(55236004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lZJr7S1pea66uuN4K77htYQL9wRu1lu9iUEm5oIhWO6QKa4MEupyOTc9WaEo?=
 =?us-ascii?Q?NIGCkNACvoWdh+QCwnWiyVKz82lzb+TtI/jX3NQjPL7Mp7ZMBYTcnu2sbcfv?=
 =?us-ascii?Q?cne1FTdLFSDj6GdvDLAWEqEv+6IpXGtLSzA9UGY9u8ioZxGnfL/AqhZ4Pt9W?=
 =?us-ascii?Q?vCRJqg5PJ2UF5I5iXML2oXW/GGvjjDuUazUNUkemser2ZhwI+PfBcIiKkdUs?=
 =?us-ascii?Q?4/2Ah1vziKuypf1BT04P4YTypndfyFyDiFHqx79rO636HniEQ0+AIjb9Q7A/?=
 =?us-ascii?Q?1+t4xFQZ198c2atBGeHcMbfgAJpbP4go42mXxl4KzF25GF8qZEjqKEpz9OmH?=
 =?us-ascii?Q?Vr5QXv7DxbMuPNkE2XNRJYJLU7niQo0GWIwc0bznRYqg74ro0nZYhHwoiupj?=
 =?us-ascii?Q?jRWWqzVKHdAzpXTJ/u/d5gqOOZPL9Djtzg46+mMm4WXcuhnTmcvmVszJTpCB?=
 =?us-ascii?Q?Y6w8ZpzUElp8obJtt8Y5z/iYwAKoqVtrHYT0dnD93co/3jS4HkURPcrXVx87?=
 =?us-ascii?Q?BBJp5SFNFY+QNVCSxQxub22Q66KLlURH7N2fxI4wDYRij9Yp/ByUk17CQD7F?=
 =?us-ascii?Q?JfZXksMKt6dSqzJSiF18DwwE4uliYjTRV2yICZqd9jTAE0LX+sZfYySVDj4T?=
 =?us-ascii?Q?/7QsfqZkIex5NPzlumh5Ggs1jNDABiamDA95EXJnB8kMFa+ppN/v9rVoZe7X?=
 =?us-ascii?Q?VELkrvRPdCQJoSDqnZDl3wttQmJlz0lABK4P8yeOVYPZeislcfv2T1Ns4KEh?=
 =?us-ascii?Q?6xXcA1amg9xGfM3Wr4FolYxL92YESz5+67wapsVb+YZyhIbKMYW16bWn3r9I?=
 =?us-ascii?Q?bd92y5YYtupNIWY9+EZd+WGyvuhkk+NYnxDLDEliXM5T7mcME1Y7qI+6TZGH?=
 =?us-ascii?Q?nkNcT8knSuSZhBLR/jlE/bOLtvcetzOoNXfdM0BiSPyOgv+c8yD+SQ0EcreY?=
 =?us-ascii?Q?0pyS/c7F37ure18AMT9AMT/NcVQy2ZZzsJw4wLVpVrtJHgp0pqp1kNAinPSM?=
 =?us-ascii?Q?CTpfcICieyu9SZ7pPqpIDGyZUdIIwBFU87Rm0ZrP6WIjeVomiaBwHysUywj6?=
 =?us-ascii?Q?jLPWcKnjH2T58d0sEYbu979UeS/L7POacl3ublQ3bKsb9bNFV7+h2XNaWsLp?=
 =?us-ascii?Q?ohI/ex9TcmfPjhLjbt1nlttPMILMbTyzMn0XlOJDeC6m7qu4jd5dqxezT7K5?=
 =?us-ascii?Q?V9XC7rTsVWVXAfGJZZhseuIkIiXjsUiptgNlKZLba+bHiQEhOf8VmWPWwzV+?=
 =?us-ascii?Q?9qXbFAVXcqxEB9fT22UGJ4JWOzNq/3XEZ8QZmY/sopeEBafREGIr9l8FSQgL?=
 =?us-ascii?Q?T5tcrtyZqjd6A8ySsPUKJX+N?=
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY2PR01MB3692.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f2d2af2-b6c2-4d5b-21c4-08d9361d3ed5
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2021 08:02:28.4493 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zjR5C1oy+izpUi4SEUruWF/IKdqQ7sBGFdIXwvfjVX9yv8uOGpW4azX3OEn8yScHM6Xw51VRW4btrG+MlXjHLllNXBMI5HlVGsNix6sbwVoRruVAq7A/e91TZ44JK3dt
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB5611
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210623_010232_857118_5BB03400 
X-CRM114-Status: GOOD (  15.16  )
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

Hi Biju-san,

Thank you for the patch!

> From: Biju Das, Sent: Monday, June 21, 2021 6:40 PM
> 
> This patch adds OTG support for RZ/G2L SoC.
> 
> RZ/G2L USB2.0 phy is compatible with rcar gen3, but it uses
> line ctrl register for OTG_ID pin changes. Apart from this
> it uses a different OTG-BC interrupt bit for device recognition.
> 
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  drivers/phy/renesas/phy-rcar-gen3-usb2.c | 63 ++++++++++++++++++------
>  1 file changed, 48 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> index fbc55232120e..aff0749be65d 100644
> --- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> +++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
<snip>
> @@ -627,6 +653,7 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
>  	if (IS_ERR(channel->base))
>  		return PTR_ERR(channel->base);
> 
> +	channel->obint_enable_bits = USB2_OBINT_SESSVLDCHG | USB2_OBINT_IDDIGCHG;

Please use USB2_OBINT_BITS instead of USB2_OBINT_SESSVLDCHG | USB2_OBINT_IDDIGCHG.

Sorry, I thought we needed more update when I sent an email before,
but I have this comment only now.

Best regards,
Yoshihiro Shimoda


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
