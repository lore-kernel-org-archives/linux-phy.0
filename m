Return-Path: <SRS0=EqQx=LP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53379C48BE5
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 06:52:05 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EFB096115A
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 06:52:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EFB096115A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bp.renesas.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oSi37d7c77zIiMhDR7x1BERWk7/Y1J6r+GXnZVsLWtw=; b=SQBgezXlJK6Ggg
	ptOndVtVSea3j4qwAWLbAhuO7CvOkwcTy49Bm+uzTkh5TQYLwlY7k0Uwflda4U6IvmWeqdBk2aIlR
	jDnuN5/NWhGjghTa/MPgj844fiyMH7mQ5sMDN5XruH2b9T66SZefueQ59XXi62nCLmDnSbhstCnaT
	XacaLuSREZCD/wc6yzJ8DAu592aa+0YV2/RV3ePZFXmXAvjpFuIE+70ESY+sLTqb/Nc/ahb/Ou+xx
	hTvwa/jrvlcrhqnd6HiywFb/lBqChMnODWgvS6C5y/KTwyFBVD7F5VTrtVyR09mNd7e2sZt7oDYwl
	rybfzH38EAeqTcpeLSXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvDmu-002PiD-G8; Mon, 21 Jun 2021 06:52:04 +0000
Received: from mail-eopbgr1410132.outbound.protection.outlook.com
 ([40.107.141.132] helo=JPN01-OS2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvDms-002PhM-5E
 for linux-phy@lists.infradead.org; Mon, 21 Jun 2021 06:52:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oJdXg2x/YRIpAoTrU24DYMPTZic6Yh/sIbXZg/qo7Yj62cjHXQ5yhDmEtm7mvqvvGc7ZALAdUnUzbRZqWKSgbE82eZLbCmxdTjXeUe2jUWqSehjBbfjjSyqEIzfwTdQWDMzEFxryqgGxktJESlizbfEpfLU6EhGsTsMuKTWgpZil+wbhPw45T0TCV7QIaLcFEptV1DdANjqiyg6hHmSkNFF/sSfWRxmbS1MhXI0w1y7HGc1Etrbv7gJP7UGDWBIvTX3TfQlrsk0kfPx9FGQ7Sp5wc9r3XGuRzPZ12U2AEICCbC4h1NjWeWiTgW9pfD7FwWWclmahf4irskezGRLZFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4+PjeYuHx/OPBFa7lG5SqTWb7MyCNvbEXlirCxpQ3z0=;
 b=Q8WKQXG2DK1quguUlA/nZ0rmSxvPVFQLU6c9ShWVQRQNYNG2zxPsbhv5DJrdHzlbiGJIC0pHPC8T7nw+bAwzu5hd2JK8NEd8BvH1eNd4FwrdDlJaA33ucgHgwcKPFBV3uqahVi1j/EcEhig2pIkZ8IF1JQM24NCZ6s2UAbtqpjbVaeQe6Bv84mSdv1niRRGAWxFo+kHlC7ROJKaqGV9rtBPLULqfI6fqL0g3bBiu9++8aNd6rVMKuFBa8iaQN/rQUht/MePsUaH4X64phe1hwV8olRDTdOFrtFJfszfey/+JTgX+UMQ00pyJbBI/pz5MQ8UqcHA/s0ap779ud/nlTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4+PjeYuHx/OPBFa7lG5SqTWb7MyCNvbEXlirCxpQ3z0=;
 b=kKXV3Xutez0iB/8gQSkvoOMNfSfv7E/WcngvDE1T6A1n0OkgNGqmCIKj8PLmbG/mAf5oHSQIVFNXmwwJAN4vJDo+kThyRvHrBqaHWQGPbdaitpvi/mZoImOeFR916y5zFP+GGi+MzKaHbj20D8fCPr0UYWaNyu6G0YKbZwPJVX0=
Received: from OS0PR01MB5922.jpnprd01.prod.outlook.com (2603:1096:604:bb::5)
 by OSAPR01MB3298.jpnprd01.prod.outlook.com (2603:1096:604:5d::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.21; Mon, 21 Jun
 2021 06:51:55 +0000
Received: from OS0PR01MB5922.jpnprd01.prod.outlook.com
 ([fe80::b834:5e50:2ce8:9ae0]) by OS0PR01MB5922.jpnprd01.prod.outlook.com
 ([fe80::b834:5e50:2ce8:9ae0%3]) with mapi id 15.20.4242.023; Mon, 21 Jun 2021
 06:51:55 +0000
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Vinod Koul <vkoul@kernel.org>
CC: Kishon Vijay Abraham I <kishon@ti.com>, "linux-phy@lists.infradead.org"
 <linux-phy@lists.infradead.org>, Geert Uytterhoeven
 <geert+renesas@glider.be>, Chris Paterson <Chris.Paterson2@renesas.com>, Biju
 Das <biju.das@bp.renesas.com>, Prabhakar Mahadev Lad
 <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
Subject: RE: [PATCH 3/6] phy: renesas: Add RZ/G2L usb phy control driver
Thread-Topic: [PATCH 3/6] phy: renesas: Add RZ/G2L usb phy control driver
Thread-Index: AQHXXsg+0Hn6baZgBke1a3QXZhR4E6sd6fqAgAAr+pA=
Date: Mon, 21 Jun 2021 06:51:55 +0000
Message-ID: <OS0PR01MB592274EF688BD78B501119AC860A9@OS0PR01MB5922.jpnprd01.prod.outlook.com>
References: <20210611134642.24029-1-biju.das.jz@bp.renesas.com>
 <20210611134642.24029-4-biju.das.jz@bp.renesas.com>
 <YNAR4XKMLHsdWzbM@vkoul-mobl>
In-Reply-To: <YNAR4XKMLHsdWzbM@vkoul-mobl>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=bp.renesas.com;
x-originating-ip: [193.141.219.20]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4bf68158-3fc6-4324-5c3b-08d934810ef9
x-ms-traffictypediagnostic: OSAPR01MB3298:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <OSAPR01MB3298F96C91F8E8DBB048D435860A9@OSAPR01MB3298.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zWMbbmFNagz6QhU8cQP7E7p2Ankdd4udSo9+PgccbeIQD/JT/4F9foPXwS9k6se/0eSAyl7eRm2l0yMohcWtAKoDoSylIbBbMMRP7uM7PULh3RiEMlyFo8osFuXgT4z8nb2kBIaWUxf1UmvomZihTqVCIgk+iMEDNOC27EUaCkcckh7nDGsZo0s9KQdyakAwOQOxGrNyfsMezecXWL2wQP4wJydN19jMOrGB8Vw3n8SfqzxJb17v1ZJQT3Y7MyCxGpyQVEH3ivW62XWWHHwfX/KRSnrH16M+0a7tLgGJYaEZ5oK0j6STD9w3VPmjmdDeHAmqc6OgoEKTDQJf4U1rcj13CvDsdyYVwinOWNxKRzKCEjl7L16yC7Zya3Q/6kjltBoGd3NjnKH9HzuJUQ+RzE8enMdhlZPpCk1NwpUHkvYwE/XVbXoy7U2/7COM1DwdAkNShpprKaDVs2GzUcfLBpqS2AN/CxTquERF6qhitod4wwV2BORxxCvW2J9bbYcu31idqyG00JJFgZzd1Lmm7oVd3tcXGLLsgBq+hqmAEjsRTFmC2UxkA7BiOHpsBN/7vjedSWdpRe4KOjZNfgEjdmo2O+pQrIcB0I7gUWiyGFk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:OS0PR01MB5922.jpnprd01.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(396003)(136003)(376002)(366004)(39860400002)(478600001)(54906003)(8676002)(9686003)(38100700002)(316002)(186003)(71200400001)(55016002)(122000001)(26005)(8936002)(86362001)(2906002)(66556008)(66946007)(66476007)(66446008)(64756008)(76116006)(5660300002)(33656002)(6506007)(52536014)(7696005)(53546011)(6916009)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qDql3KQ0aet+POHYzeaJjGAP6zCEcl6K3ggdtQ5cYO7nwqJIYl+6hAVivj0E?=
 =?us-ascii?Q?AgKwdEBv5sgCzePmhx0JmQPe5/qf+KUroaqZXwcLD+36b306VQFBT2pOTMRt?=
 =?us-ascii?Q?UipZNVGQTlFBMbdGPuzajKYe6u4Z2FCMFuE4yLb/DT6RAqxHqot9j5/svDfU?=
 =?us-ascii?Q?gpgDxXnlvkjlMSC1cItOJFTriWcZWdtYvREGxcCUq1YIfJJQF5vgdXtrYzKP?=
 =?us-ascii?Q?Y9Q6PuGj2lenqtZS3dSp7m7dQGjAW9eAW4qFi0LCi7hjYHT/rofaR7a90Vtm?=
 =?us-ascii?Q?tpoys6luSHPoXPXUIsLER1n36+AJtfMoxt4gxVE+aBjCbwnxfZTVOVbMbMFz?=
 =?us-ascii?Q?c+O9LXH+wzZRUyMSRPTa7ByhjHw7V7ZI59kSTRF1eCIY8/rG1hbsxI7BOLLU?=
 =?us-ascii?Q?96hYcU2ngj5M1arHfKfiimmWxgIZnucwjLvBUbIaJKpR333BWUqIGqMj15qd?=
 =?us-ascii?Q?Sk/z6mx0DhPdvaoZDX9ONebr0aQUZppmIoEetomu3X39Mwah0ATHA+oH7EFp?=
 =?us-ascii?Q?amkKt8apfV96kgcQa//wl7nkMU8y4XDAT5LDx41jDbnGA9J95IPfleWFKJUu?=
 =?us-ascii?Q?b9gfDLVbRpVp1PlSPXbGGnRR0MfMJZshcwrCP17C0dCC01wNgRWrvETjk7l+?=
 =?us-ascii?Q?NbQSnDGiuoLaYi2w7t8diVmlHC/aAc3FmemjoBL6ux61aIcFRXpVhrWb+0Nt?=
 =?us-ascii?Q?1x+dAh2IbVF6ehIdaJJEc1PdqSDgjnvUplUcUeX9xVke3OuIUPdwXk0Y3AQ4?=
 =?us-ascii?Q?RqaC9o/9OkE6v9NsUvAhYEElNR/Xee/kTYNX8R8WvbGcW2Y9LnqUSPdFTAKY?=
 =?us-ascii?Q?fugaZUw7pVTEQggKto/JpDS0wvPO1YcSeGU4aNSFSKQc7vw7Vu3tOOSb95Bv?=
 =?us-ascii?Q?FLwOAqfcxEcdlj2wBSMlvHQIW53PV2Ztc1gYoJBP3CW4pIMEpfK2iSdYeBPJ?=
 =?us-ascii?Q?dn2g/ka9ePbyjF54NEXFaHK/GLvM9W7ajeqPlW7o9SAFu4qMztQhcwKk24Vm?=
 =?us-ascii?Q?M3quqY205AiI4PfD31PAXgjSdUh4dNOAG/SSBwy7XqGTik/kxSVaKKmhNkrC?=
 =?us-ascii?Q?E/4fYjScbW40W8lQqn6nIvLfq9LuxAao0ZXENmNrj0PXwPZtBUxYwd81L4RF?=
 =?us-ascii?Q?JapS4egvYdYZt6eWC8d0unBpLwe3/Y4bV/fsKuoIUQVhSjghjf0yofWWJj0V?=
 =?us-ascii?Q?/8bW2gaugxqpmi13SKOqk+8NjLJgHCPLwYte4DTiPg3EN3DeTKZf8jE4PblF?=
 =?us-ascii?Q?gJTb9p3w+sSGh+h63ek+OnH7hR4up+GEXEEnwf2p1Sf2f9WAepxr5gRaXRJF?=
 =?us-ascii?Q?Ldl79+en+5p5o9A0cicEmKip?=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OS0PR01MB5922.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4bf68158-3fc6-4324-5c3b-08d934810ef9
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2021 06:51:55.4581 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M0llXl5M0u/I2SeuAZyJqG4bEfex9NgUItNlclRQzcz1vqW4w4LKorLactn2JHGEdccUhro11AYu+z6zdLmvRi3FtzSr9J0kfNbUgU/YO5I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSAPR01MB3298
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210620_235202_250522_7FCB43A4 
X-CRM114-Status: GOOD (  13.90  )
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

Thanks for the feedback.

> Subject: Re: [PATCH 3/6] phy: renesas: Add RZ/G2L usb phy control driver
> 
> On 11-06-21, 14:46, Biju Das wrote:
> > +static int rzg2l_usbphycontrol_probe(struct platform_device *pdev) {
> > +	struct device *dev = &pdev->dev;
> > +	struct rzg2l_usbphycontrol_drv *drv;
> > +	struct phy_provider *provider;
> > +	u32 val;
> > +	int n;
> > +
> > +	if (!dev->of_node) {
> > +		dev_err(dev, "device tree not found\n");
> > +		return -EINVAL;
> > +	}
> 
> why do you think this would happen?

Not needed. Will take out.

> 
> > +
> > +	drv = devm_kzalloc(dev, sizeof(*drv), GFP_KERNEL);
> > +	if (!drv)
> > +		return -ENOMEM;
> > +
> > +	drv->base = devm_platform_ioremap_resource(pdev, 0);
> > +	if (IS_ERR(drv->base))
> > +		return PTR_ERR(drv->base);
> > +
> > +	for (n = 0; n < NUM_PORTS; n++) {
> > +		struct rzg2l_phyctrl *phy = &drv->phyctrl[n];
> > +
> > +		phy->phy = devm_phy_create(dev, NULL, &rzg2l_usbphyctrl_ops);
> > +		if (IS_ERR(phy->phy)) {
> > +			dev_err(dev, "Failed to create USBPHY Control\n");
> > +			return PTR_ERR(phy->phy);
> > +		}
> > +
> > +		if (n == 1)
> > +			phy->phy_reset_port_mask = PHY_RESET_PORT2;
> 
> this looks inverted, should this logically not be:
Agreed. Will change this in v2.

>                 if (n == 0)
>                         phy->phy_reset_port_mask = PHY_RESET_PORT1; ?
> 
> > +		else
> > +			phy->phy_reset_port_mask = PHY_RESET_PORT1;
> > +
> > +		phy->drv = drv;
> > +		phy_set_drvdata(phy->phy, phy);
> > +	};
> > +
> > +	provider = devm_of_phy_provider_register(dev,
> > +						 rzg2l_usbphycontrol_xlate);
> 
> single line pls
OK.

Regards,
Biju

> 
> --
> ~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
