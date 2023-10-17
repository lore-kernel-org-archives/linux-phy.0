Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42824CDB465
	for <linux-phy@archiver.kernel.org>; Tue, 17 Oct 2023 03:33:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+oyfPIjtn1uEOGrn+2XWAFVMf5BHldpYlp42orWvY9I=; b=bYDNIT+nRSczRI
	qEEXIFLZ+A1dNJ/YWDizMyCAkZPZPgT+3Tu2U7Cgx6AaBPY812L9c3S11zwJybEpgay1XXPICdZdJ
	74Obq935cY67sEvrcBVY6YGewTyn61FmoCywx2DmhXE2k276yjS/0zmzKY0bMUJbB8l6m03Tm/JXf
	51wkb3M3CNxQfWTtkSX55uuCh3akGH7kN2a5usZiJJmyDrBlTLKauyhSNc0k1k2MmS0IHVFkT7kCw
	RezCCQPuT7d2/gsod+LbVYQrajTeze4DdNDlJ93Jcvf+8bWRV+/sXiShl4R+0MabtElT6Cw3Cfyyy
	jAl7fxmvrmnxmU5vSR2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsapa-00B9Bg-2b;
	Tue, 17 Oct 2023 03:33:18 +0000
Received: from mail-db3eur04on062d.outbound.protection.outlook.com ([2a01:111:f400:fe0c::62d] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsapW-00B9AW-1x;
	Tue, 17 Oct 2023 03:33:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dzalXh8xKcS1XZsOsBo/Gg+98lTlYROoDwKFLB+FL+gQVMOOzrsI/T/6kaBD+awWpA08jd5J59x85jGyUbGpWZ9dyxCq8HXLkNVm4a0ZT8Vy+JTp2guvkdFP1zNLHSI8EPxuX2tLFOWxbbBjOm7EYAETTzVVDpV5AYYWPkCk18Mv2iOoWDLwKaMZTUiGXba0CYmMgA0FrcSGnEIwAqEK/gmailJ4DuIG+S5TRxvhu1EMw8m61b4IrO67ksjIQdzLn/9cDzptOJCkeC2gRylKWaktgq+TN9DEL7DbSs4MoJU4+xlZGAgJrazxzl8KabldFZ+4k239/k39RDdi6jrhCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zgC+uwDROnKznwkmFR02/eOIFqIF0nkPaN0Hsdiegbg=;
 b=aRVN0YiRqqUev0mWVRUZO7+p70rfhKipwshAdPLpmJec9c9zzfUfab2BvI/glkc52rAc4wNqzFWSWVTP3AcOCzPh2atUADBtcMpshmi8rd0WtpbKKObssOCnh3tZRLmamyWVykvEnWr9v/yCXtUbmUGkjs5+FG3Na95UHkLNXyQqjdbTKqQ7J0Yufom1pqivxX9WRS6ilJNm3Q6tZqQqreRqutCCoA4529QaIynEjZ4J8UwmEC9mL3GCzKQ+whSRF24D9T9rOPHS2bQuX63pf4nxNaefRQCKC/j7abFSyrwEBtLfqP+mnMSbpA/QljxeAus+d8IQ4yanxC/NWsxG/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zgC+uwDROnKznwkmFR02/eOIFqIF0nkPaN0Hsdiegbg=;
 b=h8/b0t/fXACt8jNDG2u9gW1fo/2eW2QPxuyUejBIlcgwKYGJPLnwcXLzapx5QLfCKgEiyM9f4nuM3HlUjGv0EcrGVZcmiYT5Z1YBZdj5/DoDvA/zhi+vayk4TAJke85ZnKresHaPdZWMUkCmj4kMyQrZNCH7kmKovaF51BxMbD4=
Received: from PAXPR04MB9448.eurprd04.prod.outlook.com (2603:10a6:102:2b1::21)
 by DB8PR04MB6924.eurprd04.prod.outlook.com (2603:10a6:10:11e::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.35; Tue, 17 Oct
 2023 03:17:53 +0000
Received: from PAXPR04MB9448.eurprd04.prod.outlook.com
 ([fe80::3b23:7c3d:fd28:c3f2]) by PAXPR04MB9448.eurprd04.prod.outlook.com
 ([fe80::3b23:7c3d:fd28:c3f2%7]) with mapi id 15.20.6863.043; Tue, 17 Oct 2023
 03:17:53 +0000
From: Sandor Yu <sandor.yu@nxp.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, "dmitry.baryshkov@linaro.org"
	<dmitry.baryshkov@linaro.org>, "andrzej.hajda@intel.com"
	<andrzej.hajda@intel.com>, "neil.armstrong@linaro.org"
	<neil.armstrong@linaro.org>, "Laurent.pinchart@ideasonboard.com"
	<Laurent.pinchart@ideasonboard.com>, "jonas@kwiboo.se" <jonas@kwiboo.se>,
	"jernej.skrabec@gmail.com" <jernej.skrabec@gmail.com>, "airlied@gmail.com"
	<airlied@gmail.com>, "daniel@ffwll.ch" <daniel@ffwll.ch>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
	<s.hauer@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
	"vkoul@kernel.org" <vkoul@kernel.org>, "dri-devel@lists.freedesktop.org"
	<dri-devel@lists.freedesktop.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>
CC: "kernel@pengutronix.de" <kernel@pengutronix.de>, dl-linux-imx
	<linux-imx@nxp.com>, Oliver Brown <oliver.brown@nxp.com>,
	"alexander.stein@ew.tq-group.com" <alexander.stein@ew.tq-group.com>,
	"sam@ravnborg.org" <sam@ravnborg.org>
Subject: RE: [EXT] Re: [PATCH v10 4/7] drm: bridge: Cadence: Add MHDP8501
 DP/HDMI driver
Thread-Topic: [EXT] Re: [PATCH v10 4/7] drm: bridge: Cadence: Add MHDP8501
 DP/HDMI driver
Thread-Index: AQHZ/YCkvljU4iEKsk25DqYpOSNnO7BMVLkAgAEA+zA=
Date: Tue, 17 Oct 2023 03:17:53 +0000
Message-ID: <PAXPR04MB944874BAA4CD7EC8152C0602F4D6A@PAXPR04MB9448.eurprd04.prod.outlook.com>
References: <cover.1697162990.git.Sandor.yu@nxp.com>
 <037c61d582df78a3309a5672ac66b9e74b396ddd.1697162990.git.Sandor.yu@nxp.com>
 <b20bba75-e646-4c16-a4aa-7085291cfb1f@kernel.org>
In-Reply-To: <b20bba75-e646-4c16-a4aa-7085291cfb1f@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAXPR04MB9448:EE_|DB8PR04MB6924:EE_
x-ms-office365-filtering-correlation-id: 6de3d8b7-ac9e-4140-595c-08dbcebfa6f1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ldgdePwxBb5ka8JbESaO36n02H6t4Siw1FMehE4UwhwT2gJ4od5YQ9BQS6N4pSXzGNzkGmH8hZtDSFgPH5kysmASf18JsuUij+ypDcPj7SzaRnQMkYrfYW5iXCbsxuv0bZK4PpjkEIgbUZNH2pDdZHdz6FviWgkzcAFn2GmSIg3pb4f/MHhVQH3pYTq8oB7/4vR1bmGFXuBD7+qzQkfFmg/WSATjdW6SIbFncxN5iBkW6LZOni2qEEM/BqnaL+WSPfVlDqgTn1EpMheiX2fgcGNrDwx2sZ3YWNwd1/gksrxi8ufOyp+toKz/DeKUVlYh1ojBb5nYGN+w3OFi3JiL3LIfF1qZHNVz2iYgaQ/Vij1ZpdxlwUKeK8urhB7UzBjr+qtSQu55URbknAvU0Y6H6X30MiFMMQPxIzTlA8YFE+1lRu45w9GN417WOat5bStUUibL/XJJIIG0pbHNr0SQrTeGwwTbTDUK9A5Yi8ihJFHd3xSQflnpsVZ0Lct2dkitk5TI43gm+LobDubHPZafXwvBpLgjseDUc2Y1aKxpeUl6+Jcw4B3QYyClvLhgV+2cq+YhwMYZchr/Zz8aBkGOsPq5Tt0fHYPgMWPW15PGafbdYin0DsTQtA39AGaPX2iCq9duL4IXynbq0hjDJ37XcQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB9448.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(376002)(39860400002)(366004)(136003)(346002)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(55016003)(316002)(4744005)(7416002)(66476007)(64756008)(76116006)(110136005)(66556008)(8676002)(66446008)(4326008)(54906003)(66946007)(8936002)(52536014)(6506007)(53546011)(9686003)(41300700001)(44832011)(5660300002)(478600001)(2906002)(7696005)(71200400001)(122000001)(38100700002)(921005)(38070700005)(33656002)(86362001)(26005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dlhNSDNUbUNRZEdvVFBPOGlhcnVJNFBLbzFSeG5sYWdTcDlGa0tDelBhZkpD?=
 =?utf-8?B?czU0enFZcGdIZ1VKTHFUVzJyZnhkWktGSmNVS1BwbktSSVVNTVRjaGdYWmpv?=
 =?utf-8?B?ZitGcVcrcFdhWTd1WXExR2liZHBEWStIaTFlMmNRU3RyZHVYYnI4M29NQVBl?=
 =?utf-8?B?eWh4OUxEbmZJL0t6ak5vOU5IdkE0L0N1anZuMWlMU3pxK3c2TWtOT1hyRFhv?=
 =?utf-8?B?RFh2c3h3RzhyZUFqQmJxby9iOXZsbnEzTkFzTmhRc2RXRU1jR0ZXNDlWVC9B?=
 =?utf-8?B?cHVHMU9xTGhTSEszNUliVnpJNlZLMG1LSVhWcnFQdDF6VTVlQ1ZlZEtkbTdZ?=
 =?utf-8?B?NTJDQnNEZFRYR2lQejQxY1FuSFVKcGMwelFtYXBSSmJHSldsd0JlU0l3dGR1?=
 =?utf-8?B?T3NQSHVHaFZMdjgvMHhSSWdBejl4VWdlYzNkT1RJUE5hYWdZQnlnNmtmRWdU?=
 =?utf-8?B?aDMyWlVsZzhsdytMcjFNZi8xcHJ6S2lRWGJIOXVHeUVQS0F2Y1J4TDc4T1Fx?=
 =?utf-8?B?WWpWWDhselllbDhrVFB2VlRPdzZCSXFWVHV1WkFTMkxYNVlRS0IzSUdpdFoy?=
 =?utf-8?B?LzcyWFpwNUNubU1Zd0tOTHg1REtVZWJkaHd1RzdFQXRGL1hubFVib1ZvTlVC?=
 =?utf-8?B?NE12RnR1M0dKcGxPWFBGOXBIcldhZ25nTkR5RlYwNUdEcTI0ZTFEbnEwd0lW?=
 =?utf-8?B?aHoxWk5VR0xDT09RMDZabmpsdlZaYkFkc0E5NWo2UndOclc4eHNxRmZCNnJv?=
 =?utf-8?B?OWs0bjh0c2drSk5zMFJDZkErblRlYklwZ0FWOXc3aHk1MTl0YjF0S3htV1hY?=
 =?utf-8?B?aXBaaTJkSVlaNm5LTjd2Tm1ldnhVZzdJb3ZQWXU2QXppWFVhWWo4ZEFheWJO?=
 =?utf-8?B?YWxncDUyNHlWdmdiUjJYY25UUkppeU5jNkNUbEpxRHA4cFdXWEdoTDM5aWUr?=
 =?utf-8?B?cklyRCtlNjZKeVpXN1hoRXhjbHpTY2ZEQ2pzTWtvQTZXeVhLV1lFTXJBRHlH?=
 =?utf-8?B?cGhRRURIL0RTUVRSemczQ1RBQzVZWU5ZaVBIVjlpUVhEWmxKRWhJU0Y5QUp2?=
 =?utf-8?B?WXloUXYxMS9ITE9YZE9xVUgwdkpvM3NRcjJKb3NrelN0ZmtVYldEd2dmRUJX?=
 =?utf-8?B?TmtEQUExT2syUFRZbWhIaWJITU1zRFQ3N2c0TDZsbk44Wm5hdGdoZEJRWXMv?=
 =?utf-8?B?UXZ1aWV6WmxoZU1ScnFOcmxCejRJMTl0UnJxbTA4aUZOZ1BVdDZZT21BZXl3?=
 =?utf-8?B?dkowV0x2SDhFdUgwN3VKTy9hQ1NIS25zWjJzbkg3Zkh1VVNSUDZDRDNLMkFW?=
 =?utf-8?B?S25BTXRXLzJmMFdUMFRhME9rcTFsQThiTndUTjdtbDA2VUcvbDBqa2YvS2J4?=
 =?utf-8?B?SXdGTlRtSWk3R05TT3hrRTk0UVc3VzN1a2cyOGRheDVTSDc1QmNESmZxWVNQ?=
 =?utf-8?B?UEhiZ3g3TUtMNmt1NFhKM3ZrcjUwWGpQN2hQK0dVQkRUdjB0NkV2b1A5NnQw?=
 =?utf-8?B?MEU0N1JZTWVZLzlMZ1dOY05zTHlRd2Ryd01JR3AyZ3czWmRYbWE1SXQ3eVFE?=
 =?utf-8?B?VmhQYXZuWm9uZ2lZRlY5eWhqUHRFTWRCSXd0dVlTZGJtVjUzaVFvQzVHY29B?=
 =?utf-8?B?amRRRTdPZWpKM2FTNisycGY3R1JGYVBGNFRPVlhiUW1rOW44ZThaU1pBYkxR?=
 =?utf-8?B?dVc0Y3MvNndHQ2EwMUpMaWN5MEsrckhGcEkvenZWYTY2UTNZRm42akd0VGZz?=
 =?utf-8?B?OFhkRzVYeDh1SVhqV25wczA2OHJIMlgycmRuSmM4WUhNSVdsaXgyc3FSeVpm?=
 =?utf-8?B?Ulp3RHVSYWtZSmsvY2taaG9EejBjaytFdkM2Z2ZNYXFyTldqeEE0YURwQjdF?=
 =?utf-8?B?czJMS1J4VEJWSG9Ea2drbE1wbDhjR2lBN2hXZEdDOWREZkJwMC9IVHRUVHJC?=
 =?utf-8?B?cndGYmk0V0htSWgrMW42a3l1Z3hYbE84TFNNZ09VS1MrdVlwb3BKWDlLWkt4?=
 =?utf-8?B?ak0zY0NsNzQ5TGp0bE5teCtqUk1KcGc3M3BlV2RYWTFvMitaUnprZnRxR2RB?=
 =?utf-8?B?T0JyNEFtb3ZLdDVFTkJkWkxPN1dlN3FlMGV3RytGeGVndXJSYjQyQTgyVXVW?=
 =?utf-8?Q?IbRY=3D?=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB9448.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6de3d8b7-ac9e-4140-595c-08dbcebfa6f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2023 03:17:53.7797
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DKmYATyqfiA7gmeBwqUWUsWzT7QsfUKR4OCJifXxX+OOGOzACpYP2CKGEVppqdbZXARjp1uVX5VsriF3bEghsA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6924
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231016_203314_668766_D4C1D797 
X-CRM114-Status: GOOD (  15.79  )
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


> 
> On 13/10/2023 05:24, Sandor Yu wrote:
> > Add a new DRM DisplayPort and HDMI bridge driver for Candence
> MHDP8501
> > used in i.MX8MQ SOC. MHDP8501 could support HDMI or DisplayPort
> > standards according embedded Firmware running in the uCPU.
> 
> ...
> 
> > +
> > +static struct platform_driver cdns_mhdp8501_driver = {
> > +     .probe = cdns_mhdp8501_probe,
> > +     .remove = cdns_mhdp8501_remove,
> > +     .driver = {
> > +             .name = "cdns-mhdp8501",
> > +             .of_match_table = cdns_mhdp8501_dt_ids,
> > +     },
> > +};
> > +
> > +module_platform_driver(cdns_mhdp8501_driver);
> > +
> > +MODULE_AUTHOR("Sandor Yu <sandor.yu@nxp.com>");
> > +MODULE_DESCRIPTION("Cadence MHDP8501 bridge driver");
> > +MODULE_LICENSE("GPL"); MODULE_ALIAS("platform:cdns-mhdp8501");
> 
> You should not need MODULE_ALIAS() in normal cases. If you need it, usually
> it means your device ID table is wrong.
> 
> This applies everywhere, to all your patches.
> 
Thanks, I will remove them from my patch set.

B.R
Sandor

> Best regards,
> Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
