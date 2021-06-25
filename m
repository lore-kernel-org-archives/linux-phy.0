Return-Path: <SRS0=Mo6n=LT=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DE94C2B9F4
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jun 2021 10:43:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E18CC61446
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jun 2021 10:43:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E18CC61446
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bp.renesas.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+6UW4eAGgDEsu6cS9HGQaOSGCu45K/oeGT4yZ7zKTo0=; b=IGYxBDEKMxYq3z
	RfTJEXp4GZkpeG42/JoPrONGl2MxYMDC2Xnhs2BX8EEwaUQhZEgTzgfnd4VczujJZ1X93YeTq8cBl
	4SBxMst397VbY3GH3K+5/g7sHzAAeesAwi2jAVx9UlMiNrcQpcihBjq46xZfVG5oiYwv5Y24CZNsB
	uMk3mnKxQ5xJRIdcxgxiefxEu+lQRmqUwM4QhBKZ9MYzCaC4DXrkd8LvgKL9JauT1nwBX20SOf/Tu
	Js2Zcw07fpUezV2zl72hqBxPfjnohP7rqc61Z7gbRikJkymbuZbAvC+r02KmFGcN2G7KFciUGNpOE
	aM5D4is7NxvVEYvVLXOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwjIa-0014kq-29; Fri, 25 Jun 2021 10:43:00 +0000
Received: from mail-eopbgr1400092.outbound.protection.outlook.com
 ([40.107.140.92] helo=JPN01-TY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwioe-000sRj-8c
 for linux-phy@lists.infradead.org; Fri, 25 Jun 2021 10:12:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LprOxfWBe+RRYVpX59K/4+kvs2+Rxu5h0jKKUed+FaZMe1/X9AtYh+ByHIY6klKxgZBv8glCCrHKxp98zYFB6sT43DlZlNW1ajaPr5k1b1CG5WlKeJpfyTmAJBeVXZqBrc7WYDvn6sdfButFCHhNNQXbFRIvFA4QphIYJU4WDvo+ANK2K8o1NhpeDV+upwZ29D4prw33uXj3mw73aKMyP4J6WOqTQILc9bSBnKcecLVarr4ibtrzciXMkhjA6BQ63lVAZ7wIWrrRy1eroYZ+ChxIb5r/DLRZY1yL1kTSIe3rAusY9E2gG3XbmnBbsv6fj04z3Ij5XyMyZUTdq9Eg5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bQyaMDAKxChLi6MlTj/DK287NVjGG4ElbYKRiuht4S0=;
 b=f7gK093n1YWqFVFWtEEKdUxjqE54tPyveXx8XmcBX39e7kyC+ppVaJ0jKko/kIL4ELBR/nQRkaIPkNfgT8qp3oTAGAUkIL+Oi6vAdqATX2DCj5hjo9RG2vqIChWXzaQZokUuT9pAh6g4BqlXrVvYRNFpgkqS0xm5kWiKb8vv6sJfyt3r2xisOIWK5MZDVo3CNARDxhGjdW5OMfNV/ZTy8f6zu99XM4Cu70Xp5kG2hFieSW2T/0hOrEzjtOumarOkaP3npiL25wB1Whmef1BBMOPAPfkGk+6V6oB/RCTUgpyRdPOm+M/BdRvN9gnVymEG0dC1CWE7HCOTnEOcVByaDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bQyaMDAKxChLi6MlTj/DK287NVjGG4ElbYKRiuht4S0=;
 b=r1V5t4BMoB77LiLDPuo/cL9wiBDGUJxxsi5WKDkgf++PTmxf7bTNM0etuqPoscMdgoa74u2qbNZa430w1xvLjOwU/vGS/GEGsodEV5LlMlvUaLwAG74V/b5pq652Rf83Z3pAOx+tVEH9sP36/mJO6oNC0SySaX+2B2Zxb3wJgcY=
Received: from OS0PR01MB5922.jpnprd01.prod.outlook.com (2603:1096:604:bb::5)
 by OSAPR01MB2675.jpnprd01.prod.outlook.com (2603:1096:604:8::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18; Fri, 25 Jun
 2021 10:11:59 +0000
Received: from OS0PR01MB5922.jpnprd01.prod.outlook.com
 ([fe80::b834:5e50:2ce8:9ae0]) by OS0PR01MB5922.jpnprd01.prod.outlook.com
 ([fe80::b834:5e50:2ce8:9ae0%3]) with mapi id 15.20.4264.019; Fri, 25 Jun 2021
 10:11:59 +0000
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Rob Herring <robh@kernel.org>
CC: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Geert Uytterhoeven
 <geert+renesas@glider.be>, Chris Paterson <Chris.Paterson2@renesas.com>, Biju
 Das <biju.das@bp.renesas.com>, Prabhakar Mahadev Lad
 <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
Subject: RE: [PATCH v2 01/11] dt-bindings: phy: renesas: Document RZ/G2L USB
 PHY Control bindings
Thread-Topic: [PATCH v2 01/11] dt-bindings: phy: renesas: Document RZ/G2L USB
 PHY Control bindings
Thread-Index: AQHXZoFkEsylYGbSPUy+XB9R+DfKg6sgQr2AgAFYKgCAAAvXAIAAFwGwgAK5rAA=
Date: Fri, 25 Jun 2021 10:11:58 +0000
Message-ID: <OS0PR01MB59227E0C129668A5FFF861E186069@OS0PR01MB5922.jpnprd01.prod.outlook.com>
References: <20210621093943.12143-1-biju.das.jz@bp.renesas.com>
 <20210621093943.12143-2-biju.das.jz@bp.renesas.com>
 <20210622165851.GA3840386@robh.at.kernel.org>
 <OS0PR01MB5922ECC2B573F1F8E170744F86089@OS0PR01MB5922.jpnprd01.prod.outlook.com>
 <CAL_JsqK_6_LUD-ffkDCuDEds2RiYftJfynZyPN4io3Lt3MnQ4g@mail.gmail.com>
 <OS0PR01MB5922742488532EC506334AC786089@OS0PR01MB5922.jpnprd01.prod.outlook.com>
In-Reply-To: <OS0PR01MB5922742488532EC506334AC786089@OS0PR01MB5922.jpnprd01.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=bp.renesas.com;
x-originating-ip: [193.141.219.20]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d8a33852-e07a-4104-a59c-08d937c1ab4f
x-ms-traffictypediagnostic: OSAPR01MB2675:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <OSAPR01MB26756A78C50BBDE64B46750786069@OSAPR01MB2675.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EBk51oV9/rmbfRdq57Jgdk4S2vAVgeGuqUKhTtI/LAP0j+pEcMI9lfqRs2sGysJmKjQibs0p9sNiZoo+b66Xh6G4PSRU0ai6mfYh17gpRBYFTkUYdvoKk0UoHENapzFpXJNMcZZqGKiNoWdhpK+17XAKlEBHxMm93nnbUZHx1+jxrT9VUZ/7pACD9QLtlXyDv3dQwJ3K518CJB0Q2HogWktkVD0hTzYN/lZetxj9b6arS/IjSRXtxJbBgOyBHn98aQvQG3rjjv/6NKKrfLUqAwISEx3BODdM/sZ8T4gTp7GjGe085XAUNOUpElPzGQXNBCO2U1NP6tJ2H0ek8KE4FYztKIlfArY4wGHIgme7rB4r9RzYX5eXM6H3jKMtlcgi5h/gPc1uvFmHjSDAx4l7BBq7xNnPqdEZ6Gt2eApTWIhk9w5d2s0fBR6tfRfsOOo7vb4RjNa6LeFRh6a1G5PemxGELYWRJKZve3ZWSmM68InOxzVub+wX8dFWc4qS1zHq9QzSWnGKxIVj2KBY/oVmKHoyMB1HuU8TuzHFOLEuu0pk0ZCtCdACuIrJgXnpHdYE/Q6A0qdBKwIZezJGXU6yJAcl/T9q3EKF3GteozDbXFpE4Cx4i0oblghW1i+7h65mjHZxyf15i1Zz41Srq3MCFv53Pudu5rb82ebtx3oWFRAtdy//53UxYmKDyvQynBcZrXwYrw7h+4rO3GFp04Hao02kXnKzi3+60U2PULONk2A=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:OS0PR01MB5922.jpnprd01.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(396003)(39860400002)(366004)(346002)(376002)(71200400001)(66476007)(64756008)(66446008)(52536014)(5660300002)(2906002)(4326008)(7696005)(83380400001)(66556008)(54906003)(316002)(38100700002)(76116006)(122000001)(66946007)(186003)(478600001)(9686003)(6916009)(55016002)(8676002)(8936002)(53546011)(45080400002)(26005)(86362001)(33656002)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?QSSBjeaoS0d+cDjgY+coafO5HSKgIQ6m0Tf8BdrkG6Btq7v57h+RYW8f+DgI?=
 =?us-ascii?Q?XiBNOlyk55BJAkpjo3hHFwiwtglCkS08nFPQQ3uunBzo8qJ3ATdqBzbcIwrJ?=
 =?us-ascii?Q?EE+mHzrGepZ4fyrsYBKFpiaCbXuVQgBhxrVZL82PCPoj/I/t9M/ji7OBsyUk?=
 =?us-ascii?Q?Z3z5CkTzkLlJ2VThax72F6x0Q6aUUS+xtyjT8Rn71fFvLUkVydaCannuATXb?=
 =?us-ascii?Q?ttzDCbOBMrzFufAx3Uyra0r5r5q3SABn1YkU4z21ERkEkhzjuq0Gs2VL5lcK?=
 =?us-ascii?Q?TJ62h0xmR/RftwBOiQbDrugCZ2Sv6BmU52NkP8kyMu+02CYZvlkroKAOnQdX?=
 =?us-ascii?Q?1+7n2lLIZAvQVUFnq/2CxsaCmIZx4+EaCiuQguQ4Ds1pRXTR/oO2N+DW8jsw?=
 =?us-ascii?Q?aY40v53uG77xrc68GXsUNaIFsoeIVe1jCk7lJXDsMI+E9ENGsIMvlRxpNX+/?=
 =?us-ascii?Q?5QefTyanTykXrf64vKtKtpQO8ptIQfXLcrmNLVxgHh2TKaDxVNRNzJ/yAUvc?=
 =?us-ascii?Q?dkWr+EJ1IwuXZH87QHjDxJEN8Bkq0BHUhrq8ORMQL2GGzcaK2mUqtSPJLTcy?=
 =?us-ascii?Q?Xw25ZdhT4RjrYl3+Xr07/ezW1Zjw4tV3wy0uCQ34DIyOUqqVVgRKsiA5peFY?=
 =?us-ascii?Q?z4c2nnT6BM7dBFk8s9q3Vhz/FL0d8zZ7QjL8tgBOg3tIczBGSmHY03jwevx5?=
 =?us-ascii?Q?mABbqMIXLF4d1MFumy9C3DjymZpDG8Q/TQ2McyR25sdfpvSmT7RdsYBNoFsU?=
 =?us-ascii?Q?1kjmigKX//7fY2odGN/zuX0rjTQx5/FZikYyWIRYSDQXCX0OyqfPs09GbFgM?=
 =?us-ascii?Q?3TrBBIfB49ABOshlBTP7EbdrLdNBHapDH+Itxn9CBCziyTFnOLymxcT/fKlM?=
 =?us-ascii?Q?6ab81JwG2t//Mmt7QdfXS2E0dFzVMiaEDrHGQPW/yVhW069vwKjGwESaxBrz?=
 =?us-ascii?Q?5Ssm47sF+K0HtUv1xTUAdkNOedfVp/ccm1CUj7IL2M7S6Ef6jSk3Frz/6fUD?=
 =?us-ascii?Q?1m9teI23klDgYgCUlJkkouogZDfynTlFZu2IuAy9miCCA+EO3YlcqFWlkpqE?=
 =?us-ascii?Q?RPNwpCY4Ba/TS6En36wEI6iEluTHN+GpfrN9QDaWMWF2GXScWI606mZajzvU?=
 =?us-ascii?Q?wbYB9KvCih5G6i+trmSbnSA2Xhfunahu2J/vf3T82oDpShss7CeOwAij76UY?=
 =?us-ascii?Q?IFDp2vGq2bRTN3dUu+FLDtFBWGt8LvvFWBL3LLkaAC0uljHjFDUuxLz5YqPo?=
 =?us-ascii?Q?FtVB9JjlNf0qKfqQQka1tvS36Y1lrd9nGIVmvq9UHZbRLljkI2/FG1zouZze?=
 =?us-ascii?Q?li8v5neRxlmgu5RerSNcmwBD?=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OS0PR01MB5922.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8a33852-e07a-4104-a59c-08d937c1ab4f
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2021 10:11:58.9336 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DaDE0ShlF14xhujc65/qONoXjxtGvVNseBQrTA9qnD2z+L6oXHlyOIREnqVxSJeMU/Bb2p33BOaTj6ala6liOIFp6JLzlB8m+T3WaQi9chM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSAPR01MB2675
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_031204_467466_1B3020D7 
X-CRM114-Status: GOOD (  42.07  )
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

Hi Rob,

> Subject: RE: [PATCH v2 01/11] dt-bindings: phy: renesas: Document RZ/G2L
> USB PHY Control bindings
> 
> Hi Rob,
> 
> Thanks for the feedback.
> 
> > Subject: Re: [PATCH v2 01/11] dt-bindings: phy: renesas: Document
> > RZ/G2L USB PHY Control bindings
> >
> > On Wed, Jun 23, 2021 at 7:38 AM Biju Das <biju.das.jz@bp.renesas.com>
> > wrote:
> > >
> > > Hi Rob,
> > >
> > > Thanks for the feedback.
> > >
> > > > Subject: Re: [PATCH v2 01/11] dt-bindings: phy: renesas: Document
> > > > RZ/G2L USB PHY Control bindings
> > > >
> > > > On Mon, Jun 21, 2021 at 10:39:33AM +0100, Biju Das wrote:
> > > > > Add device tree binding document for RZ/G2L USB PHY control
> driver.
> > > > >
> > > > > Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> > > > > Reviewed-by: Lad Prabhakar
> > > > > <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > > > > ---
> > > > > V1->V2:
> > > > >  * Add clock properties
> > > > > ---
> > > > >  .../phy/renesas,rzg2l-usbphyctrl.yaml         | 65
> > +++++++++++++++++++
> > > > >  1 file changed, 65 insertions(+)  create mode 100644
> > > > > Documentation/devicetree/bindings/phy/renesas,rzg2l-usbphyctrl.y
> > > > > am
> > > > > l
> > > > >
> > > > > diff --git
> > > > > a/Documentation/devicetree/bindings/phy/renesas,rzg2l-usbphyctrl
> > > > > .y
> > > > > aml
> > > > > b/Documentation/devicetree/bindings/phy/renesas,rzg2l-usbphyctrl
> > > > > .y
> > > > > aml
> > > > > new file mode 100644
> > > > > index 000000000000..8e8ba43f595d
> > > > > --- /dev/null
> > > > > +++ b/Documentation/devicetree/bindings/phy/renesas,rzg2l-usbphy
> > > > > +++ ct
> > > > > +++ rl.y
> > > > > +++ aml
> > > > > @@ -0,0 +1,65 @@
> > > > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) %YAML
> > > > > +1.2
> > > > > +---
> > > > > +$id:
> > > > > +https://jpn01.safelinks.protection.outlook.com/?url=http%3A%2F%
> > > > > +2F
> > > > > +devi
> > > > > +cetree.org%2Fschemas%2Fphy%2Frenesas%2Crzg2l-usbphyctrl.yaml%23
> > > > > +&a
> > > > > +mp;d
> > > > > +ata=04%7C01%7Cbiju.das.jz%40bp.renesas.com%7Cc6bbf5f6ce334eaa72
> > > > > +2a
> > > > > +08d9
> > > > > +359f07ad%7C53d82571da1947e49cb4625a166a4a2a%7C0%7C0%7C637599779
> > > > > +42
> > > > > +1910
> > > > > +039%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzI
> > > > > +iL
> > > > > +CJBT
> > > > > +iI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=Jcf6Om4DehifCe1KO1rm
> > > > > +t5
> > > > > +LxTB
> > > > > +6jtGoQLD1MoqWGM%2F0%3D&amp;reserved=0
> > > > > +$schema:
> > > > > +https://jpn01.safelinks.protection.outlook.com/?url=http%3A%2F%
> > > > > +2F
> > > > > +devi
> > > > > +cetree.org%2Fmeta-
> > schemas%2Fcore.yaml%23&amp;data=04%7C01%7Cbiju.das.
> > > > > +jz%40bp.renesas.com%7Cc6bbf5f6ce334eaa722a08d9359f07ad%7C53d825
> > > > > +71
> > > > > +da19
> > > > > +47e49cb4625a166a4a2a%7C0%7C0%7C637599779421910039%7CUnknown%7CT
> > > > > +WF
> > > > > +pbGZ
> > > > > +sb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVC
> > > > > +I6
> > > > > +Mn0%
> > > > > +3D%7C1000&amp;sdata=LlqPRLf9%2BGrEdSapxCFhwxVKcXTVh9ECr%2FXPN0S
> > > > > +Iz
> > > > > +i4%3
> > > > > +D&amp;reserved=0
> > > > > +
> > > > > +title: Renesas RZ/G2L USB2.0 PHY Control
> > > > > +
> > > > > +maintainers:
> > > > > +  - Biju Das <biju.das.jz@bp.renesas.com>
> > > > > +
> > > > > +description:
> > > > > +  The RZ/G2L USB2.0 PHY Control mainly controls reset and power
> > > > > +down of the
> > > > > +  USB/PHY.
> > > > > +
> > > > > +properties:
> > > > > +  compatible:
> > > > > +    items:
> > > > > +      - enum:
> > > > > +          - renesas,r9a07g044-usbphyctrl # RZ/G2{L,LC}
> > > > > +      - const: renesas,rzg2l-usbphyctrl
> > > > > +
> > > > > +  reg:
> > > > > +    maxItems: 1
> > > > > +
> > > > > +  clocks:
> > > > > +    maxItems: 1
> > > > > +
> > > > > +  resets:
> > > > > +    maxItems: 1
> > > > > +
> > > > > +  power-domains:
> > > > > +    maxItems: 1
> > > > > +
> > > > > +  '#phy-cells':
> > > > > +    # see phy-bindings.txt in the same directory
> > > > > +    const: 1
> > > > > +    description: |
> > > > > +      The phandle's argument in the PHY specifier is the phy
> > > > > + reset
> > > > control bit
> > > > > +      of usb phy control.
> > > > > +      0 = Port 1 Phy reset
> > > > > +      1 = Port 2 Phy reset
> > > > > +    enum: [ 0, 1 ]
> > > >
> > > > You already have the const, so this doesn't do anything.
> > >
> > > OK, will take out const.
> >
> > No, 'const' is correct. This is the value of '#phy-cells', not the
> > contents (we don't have a way to express schema for that).
> 
> OK.
> 
> >
> > > > > +required:
> > > > > +  - compatible
> > > > > +  - reg
> > > > > +  - clocks
> > > > > +  - '#phy-cells'
> > > > > +
> > > > > +additionalProperties: false
> > > > > +
> > > > > +examples:
> > > > > +  - |
> > > > > +    #include <dt-bindings/clock/r9a07g044-cpg.h>
> > > > > +
> > > > > +    usbphyctrl@11c40000 {
> > > >
> > > > usb-phy@...
> > >
> > > The IP is called USBPHY control. It mainly controls reset and power
> > > down
> > of the USB2.0/PHY.
> >
> > Sounds like it should be using the reset binding...

OK, Will model this as a reset binding. Since the IP mainly controls reset and power down
Of the USB2.0/PHY. So it is better to have reset binding.

Regards,
Biju

> This IP has reset, clock control , connection control , clock status and
> power down setting registers.
> Currenty we are using reset registers for turning ON USB/PHY block.
> 
> Since it has extra registers I thought of modelling it as a phy device.
> But we could model as reset device as well.
> But it has extra functionalities apart from reset.
> 
> So what do you propose here? Model as a reset device or phy device since
> it is related to phy?
> Please share your opinion on this.
> 
> Regards,
> Biju
> 
> > >
> > > So not sure usb-phy is right one here ? I prefer usb-phy-ctrl instead.
> > Is it ok? Please let me know.
> >
> > A node with #phy-cells should use the standard phy node names unless
> > it has other controls.
> 
> Apart from reset, it has other controls like  clock control , connection
> control , clock status and powerdown setting registers.
> 
> Cheers,
> Biju
> 
> As I said, this doesn't seem to be a phy, so using
> > #phy-cells here is what seems wrong.
> >
> > > > > +        compatible = "renesas,r9a07g044-usbphyctrl",
> > > > > +                     "renesas,rzg2l-usbphyctrl";
> > > > > +        reg = <0x11c40000 0x10000>;
> > > > > +        clocks = <&cpg CPG_MOD R9A07G044_USB_PCLK>;
> > > > > +        resets = <&cpg R9A07G044_USB_PCLK>;
> > > > > +        power-domains = <&cpg>;
> >
> > Also, are these all resources of the usbphyctrl block and not just
> > resources you happen to want in the driver? For example, the
> > power-domain should be the power island that this block resides in.
> >
> > > > > +        #phy-cells = <1>;
> > > > > +    };
> > > > > --
> > > > > 2.17.1
> > > > >
> > > > >

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
