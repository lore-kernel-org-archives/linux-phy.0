Return-Path: <SRS0=p6f2=OM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3E7E9C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 22 Sep 2021 08:24:23 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 005806120C
	for <linux-phy@archiver.kernel.org>; Wed, 22 Sep 2021 08:24:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 005806120C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=nxp.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ez0JbgB3F7fxZiiRtefJEMkoPu9kzm/ftqI2CRMmnI=; b=e3n5GVp6eOil9o
	S0oi8Rf7VX52YUAQpJuOQbR5ye7G7BRTm6qaxCL6prqf79e21GeeVJHol1WvVykSON5sTcYwNiM4t
	0KyiALY2sn4oR4XBZcmQ6gGcR8k74WaCKKFf5We+/HN7tSgZPSJ8Krpp/siVG5+UR57vZpfmWPBfi
	fdC/yXyyAjUCWyL5mcRQ4ezZWEkHxVUy71Zb2ndVweAGnXhP2QBlMtQ+A28A0Cvsr4j29ufEIYU93
	s5QiIm1RS9HvTupxSYHEiO1yhAR247NE+dqtIxt6Lu506MmGatqwSor4QvqodvQYWUn7UB0xj+5Jc
	SmNDdqdwu/tvtA7JuKig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSxYE-007SX1-Fi; Wed, 22 Sep 2021 08:24:22 +0000
Received: from mail-eopbgr150055.outbound.protection.outlook.com
 ([40.107.15.55] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSxYA-007SUn-Lv; Wed, 22 Sep 2021 08:24:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MnG+HbP5sBobDdefEQrIYWFcmL0pRJ3yCwCyVWSETIHdrNQSldg00VUFi8SCSw2FVaznIgKW4Ge45U8IOmRzz75noiIvW5Vw0dm8wWIVsOMoHj+szIxKc0sbrT2FFzH4gMciNnLOpu6zRl4jXgZOrWGVycsDGfJbSaMXEOMHvaqJvTpIRB8Rr/rCkAkJmgxow0aMEhvSdEctnaov84fQAFnpV9XNnegnvCLZUUWBh7AA5h16BXC7kkqt85g4TmRrl8HesZ9TYKryR1nrDxBkSp+DLeVStEroGr3CzMvElVIE4ovo3/nBzAZWQdHOxkYZzqFMLugiSZn0KN9xaqgzGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=4Ub/QkMPhTRTOVfiEoL9rLrv3y0uBo3yJpqaYKHvCY0=;
 b=dM/UWvo22AtglILBUv30qLoFSQhEyc+vkXp9AZ21rmEw3fRCQx4wS8kDC6DHv2DWAUJs9gALgBd35z5g1SVQfgud+T8aZKFTiia9rYaoOK7CzRtjBTcw2FzynKZsBUuDQbHn/p3FWIb77zCmZ7dTCnHUW2eA6ZExUjI8o4pG/nThhVYWSaH9uwocCI0dUf35jpZe6NyI8o5z3wxyfcOqbQu7261pTMkJV2w0EyGrgYBRsVH87TyeREbLROKlR6RNzpdCKgr9H89heZ0aqPpZPoHpWUCn8gY3BVw7gwHAVeQkA/FsEp8D9b7tBWx4kumMRBsI14ZjHxFJD9NBcggVYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4Ub/QkMPhTRTOVfiEoL9rLrv3y0uBo3yJpqaYKHvCY0=;
 b=ZI/NnNKM7utzWPPQhyL6/0uqnmkMHHXGc8h1OH83BCjAT5n4RrZvMraKbIK5NrzTQ5vRxp8lZbG/VJoi2u46Crw2oJFbL+bkZftVVIVwEjSP/ZgM9hXOT2Xe6FU/3LVb3XeAYMpNyrZGh1j+aL9CS4xa/y1L6IRwT88BgWk46+Q=
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com (2603:10a6:20b:42b::10)
 by AS8PR04MB8963.eurprd04.prod.outlook.com (2603:10a6:20b:42e::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.13; Wed, 22 Sep
 2021 08:24:13 +0000
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::c5ef:f538:c3e0:c4c2]) by AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::c5ef:f538:c3e0:c4c2%9]) with mapi id 15.20.4544.013; Wed, 22 Sep 2021
 08:24:12 +0000
From: Richard Zhu <hongxing.zhu@nxp.com>
To: Rob Herring <robh@kernel.org>
CC: dl-linux-imx <linux-imx@nxp.com>, "linux-phy@lists.infradead.org"
 <linux-phy@lists.infradead.org>, "l.stach@pengutronix.de"
 <l.stach@pengutronix.de>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "kishon@ti.com" <kishon@ti.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "galak@kernel.crashing.org"
 <galak@kernel.crashing.org>
Subject: RE: [PATCH 2/4] dt-bindings: phy: add imx8 pcie phy driver support
Thread-Topic: [PATCH 2/4] dt-bindings: phy: add imx8 pcie phy driver support
Thread-Index: AQHXq29WYi5TvLUXCEy2ibvpD6GB8auoozgAgAcWY/A=
Date: Wed, 22 Sep 2021 08:24:12 +0000
Message-ID: <AS8PR04MB867606786A72563C6A6746508CA29@AS8PR04MB8676.eurprd04.prod.outlook.com>
References: <1631845863-24249-1-git-send-email-hongxing.zhu@nxp.com>
 <1631845863-24249-3-git-send-email-hongxing.zhu@nxp.com>
 <1631908134.299718.2025325.nullmailer@robh.at.kernel.org>
In-Reply-To: <1631908134.299718.2025325.nullmailer@robh.at.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3299fae6-5846-432c-806f-08d97da25be0
x-ms-traffictypediagnostic: AS8PR04MB8963:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AS8PR04MB89630990F74FCF314ACDD3008CA29@AS8PR04MB8963.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mycO+GVy/2oUfY6NBTjZm6GDcy2rraIMpzsr6dORgQZp+us2Vc8W68u5V/+cnE1DppIozrcRz7iIVuWuEy1ZAvPQIACJZ4cEVqFQNMV6o+VdLKr0BHkGgacEPbqfVUCUnEI6VLp9T2vyJe7VUqpUjWN2v63MfHchV6xxQbi4ihsd8vFuIrAdqrs8ed/0VJ+ZI+gfd6KGYqGs4rkHMSoHv/vvtoDJWFV4Bu9Q9zbD28kYf265fJ7KkrZK15XNUtLSeydTnBivkMx3ypZx80J+KCLQtktmfDybw+Kp0iwXP7Bdbxb0SKN+j/hpNARflLrXz/4nQXU6oXxNB/wKjT+o+dAi0jnfnKpcPtqRXXsLYdTxLm/YefnAC6Ovq0p4r6xy2dQnL0bK8h7vCpvJyxrkehe49ZaukqaYfrnCV62QpY0VIQSiarXL+IdmoarXL6u6d/k0zZ1fFojOLJPdhc9/nAGIVuFXSwGvOBUrSzaizssXYsUIHU91ni9JwZnOOnABDcV5TcvvpRJDc6QTwIg2cyFdAeeW2GW8FZyKdHaigyAMwtNn5fB9PKyjHGyDkiMkKy3n/dudOzQhUMMTAPPrrOoeXKiCSAALgLni08WB5pBpjrId1E3KMoi9HOhxR0Fud7tVR0Fi9U93JzQX3v/VeITb0zy/OvB7eNST6BM0CWKSqD+WHDQzo7a/zwUfBidFt6LMc9Fp8XYWMeY+RVUChBmNYNesye+uFSnF4P/jzAgxg7bedqG1ub0gf0cLYnilhM855oY0qjGIF/b+mSq6Sm7PAS+IhTpMx+h/lLjLlMBCBfHs/pOcs2eAO8FTngaB2ttaIK8rsP+I+i1okorPlQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR04MB8676.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(33656002)(55016002)(186003)(66476007)(5660300002)(66556008)(122000001)(9686003)(53546011)(86362001)(6506007)(2906002)(966005)(64756008)(52536014)(8676002)(6916009)(66946007)(38100700002)(66446008)(71200400001)(8936002)(83380400001)(7696005)(7416002)(54906003)(508600001)(38070700005)(26005)(4326008)(45080400002)(316002)(76116006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4kEcWQ4djeEP8QPJ4x/Ys2pGIKJotDwKwHS6D+sKfYOR7UPfduFVEIed76OQ?=
 =?us-ascii?Q?44cfH4caSG/UzgpZE/wCljjuvI8dKpiRaF50pQnfrbCSlWU8QShi73GBUn7M?=
 =?us-ascii?Q?TqUgaLlT0b7OaQjxJb+LRil16itOto5dorPktW8/Cl0UvkYHZSwjWKDFJA3d?=
 =?us-ascii?Q?IrxNw8UKxK4/KAB32IQ63j5g6bSRn8YNS7q7vlSdB86QZIXbj/nwPF5VZqRP?=
 =?us-ascii?Q?IwuBLnsn0nr3LQJqrgZKtqseDkWhXRB+SSZrM4oWWafcq6krZCRLxdIJxb64?=
 =?us-ascii?Q?iXMV6BD7XifbVRYAbUbQHDAc/ayYLzBnb8zytZ3gsL+eg1tHHwvU1cvpCGIH?=
 =?us-ascii?Q?W5GO+eHPlY2PbfwSbw5hC6aBsuCllAp9amo3OnYOnP52E1E8LG9v8wjMNwIP?=
 =?us-ascii?Q?YifNN4m+rorNFGaos3dfCto7ggOf5dO6hJlsAsHK+bF1Yiqxd1A6X41llf8s?=
 =?us-ascii?Q?pV7RJr6B697yIDVa/zh/MxzzQqHXWZWz/G7A+wj4ynDn/pe9OwjwsbTFUnoB?=
 =?us-ascii?Q?Vp1T91VMXS0Lc7vw7+33h2e5DORbJnatAvvKbYOK3RO7woHZPSbdo4smo3Js?=
 =?us-ascii?Q?eFF6YMv4jP9W0jn/38kPBpYICnDZlZIW8LlOLc6ZRc8mwYgF7A18eh56YNOq?=
 =?us-ascii?Q?dpJPeeEAYpV3IX3OKhQ+/w8aJRdXl4HxZgvO0NLZkU6kokrotQIxNjOpvY5a?=
 =?us-ascii?Q?u1NY0CheZ6sABhS1DSnDS5cfn3OTXszDiAhJpLCSs8iMYcFMBPYB8UYIx31i?=
 =?us-ascii?Q?/O/SgbB7LL4NgSK+atFeI4Iw2ov4m7pzZqHEuiZIZuQzapJdqgjqwQr8aW4n?=
 =?us-ascii?Q?JN68ByFD47ayYa+RJkeG6ig62ib3Nf6kxSFAQQDAU/OiWk7Rx/Ho+LJGUDj+?=
 =?us-ascii?Q?XdXzXhIks2SJaSeYgcCW1vl32PkeMsZtihnA3+Lynzn581q8mjCAcKJXxItG?=
 =?us-ascii?Q?rDpJ83FVNOLBwsDqerLI0dN1YkpQEz3OXpquO6LKXWd9UI+Z9OedHrezrrLS?=
 =?us-ascii?Q?U4I7f2JQrSmK6LfaQjStKAhExROQAo+2Fprq/MAdpjjCivE76ls0bkcVt7Gx?=
 =?us-ascii?Q?lxsxois44Zitkuy+1xLYn8m7DHu8DnyObXrt3A3N0xeEtDOW/jnHwJ/HLkmm?=
 =?us-ascii?Q?7Qzq+v9lMQYMsF3KBCTaykb7jHgGtt+DVI/D9u5Mn1c9U6omf97Wa8HtGOvu?=
 =?us-ascii?Q?U2lMN56KxhQx40GzcOFj97ue3vfbUZGU75vMXMMB6WiuLlBb5c+fKPdXyvKO?=
 =?us-ascii?Q?7XlCKNtgRfqcOC5k69jL7vMJjofOFq0tQY9ZvygDw8c2MJhYWna+TlVeHkqO?=
 =?us-ascii?Q?Cxe7W5nk99U7RinTO3O25eUa?=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8676.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3299fae6-5846-432c-806f-08d97da25be0
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Sep 2021 08:24:12.7905 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GZn1BczSdT42ykzH3bwdpq1ZYaI11ch/OEbHi/xZQ39gTMOfNf28yWhrG9LJh8IbvzlqCXSCfCHfLrTRRhbzvQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8963
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_012418_771295_BFCD67BA 
X-CRM114-Status: GOOD (  24.05  )
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

> -----Original Message-----
> From: Rob Herring <robh@kernel.org>
> Sent: Saturday, September 18, 2021 3:49 AM
> To: Richard Zhu <hongxing.zhu@nxp.com>
> Cc: dl-linux-imx <linux-imx@nxp.com>; linux-phy@lists.infradead.org;
> l.stach@pengutronix.de; linux-arm-kernel@lists.infradead.org;
> kernel@pengutronix.de; kishon@ti.com; linux-kernel@vger.kernel.org;
> vkoul@kernel.org; shawnguo@kernel.org; devicetree@vger.kernel.org;
> galak@kernel.crashing.org
> Subject: Re: [PATCH 2/4] dt-bindings: phy: add imx8 pcie phy driver support
> 
> On Fri, 17 Sep 2021 10:31:01 +0800, Richard Zhu wrote:
> > Add dt-binding for the standalone i.MX8 PCIe PHY driver.
> >
> > Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> > ---
> >  .../bindings/phy/fsl,imx8-pcie-phy.yaml       | 66 +++++++++++++++++++
> >  1 file changed, 66 insertions(+)
> >  create mode 100644
> > Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
> >
> 
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
Thanks for your comments. The errors are fixed by adding "$ref" below.
       Refer include/dt-bindings/phy/phy-imx8-pcie.h for the constants
       to be used.
+    $ref: /schemas/types.yaml#/definitions/uint32
     enum: [ 0, 1, 2 ]

Best Regards
Richard Zhu
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/fsl,i
> mx8-pcie-phy.yaml: properties:fsl,refclk-pad-mode: 'oneOf' conditional failed,
> one must be fixed:
> 	'type' is a required property
> 		hint: A vendor boolean property can use "type: boolean"
> 	Additional properties are not allowed ('enum' was unexpected)
> 		hint: A vendor boolean property can use "type: boolean"
> 	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/ph
> y/fsl,imx8-pcie-phy.yaml: properties:fsl,refclk-pad-mode: 'oneOf' conditional
> failed, one must be fixed:
> 		'$ref' is a required property
> 		'allOf' is a required property
> 		hint: A vendor property needs a $ref to types.yaml
> 		from schema $id:
> https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevicetree
> .org%2Fmeta-schemas%2Fvendor-props.yaml%23&amp;data=04%7C01%7Chon
> gxing.zhu%40nxp.com%7Cfacb5eafa5eb4fe72a1908d97a1430c0%7C686ea1d3
> bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637675049421428781%7CUnkno
> wn%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1ha
> WwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=lOkPSEyYhyhHPHQBi916FgdPeqK
> GWi1yCC1KyhlsUCU%3D&amp;reserved=0
> 	0 is not of type 'string'
> 		hint: A vendor string property with exact values has an implicit type
> 	1 is not of type 'string'
> 		hint: A vendor string property with exact values has an implicit type
> 	2 is not of type 'string'
> 		hint: A vendor string property with exact values has an implicit type
> 	hint: Vendor specific properties must have a type and description unless
> they have a defined, common suffix.
> 	from schema $id:
> https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevicetree
> .org%2Fmeta-schemas%2Fvendor-props.yaml%23&amp;data=04%7C01%7Chon
> gxing.zhu%40nxp.com%7Cfacb5eafa5eb4fe72a1908d97a1430c0%7C686ea1d3
> bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637675049421428781%7CUnkno
> wn%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1ha
> WwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=lOkPSEyYhyhHPHQBi916FgdPeqK
> GWi1yCC1KyhlsUCU%3D&amp;reserved=0
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/fsl,i
> mx8-pcie-phy.yaml: ignoring, error in schema: properties: fsl,refclk-pad-mode
> warning: no schema found in
> file: ./Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
> Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.example.dt.yaml:0:0:
> /example-0/pcie-phy@32f00000: failed to match any schema with compatible:
> ['fsl,imx8mm-pcie-phy']
> 
> doc reference errors (make refcheckdocs):
> 
> See
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatchwor
> k.ozlabs.org%2Fpatch%2F1529140&amp;data=04%7C01%7Chongxing.zhu%40
> nxp.com%7Cfacb5eafa5eb4fe72a1908d97a1430c0%7C686ea1d3bc2b4c6fa92c
> d99c5c301635%7C0%7C0%7C637675049421428781%7CUnknown%7CTWFpb
> GZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6
> Mn0%3D%7C1000&amp;sdata=qePjUlHV6abE0GeKxqqoddS8%2Bc28wRGOoLB
> NyDPpDc8%3D&amp;reserved=0
> 
> This check can fail if there are any dependencies. The base for a patch series is
> generally the most recent rc1.
> 
> If you already ran 'make dt_binding_check' and didn't see the above error(s),
> then make sure 'yamllint' is installed and dt-schema is up to
> date:
> 
> pip3 install dtschema --upgrade
> 
> Please check and re-submit.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
