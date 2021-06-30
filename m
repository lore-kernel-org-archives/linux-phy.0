Return-Path: <SRS0=FOTy=LY=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 420CDC11F65
	for <linux-phy@archiver.kernel.org>; Wed, 30 Jun 2021 10:28:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E0637619C3
	for <linux-phy@archiver.kernel.org>; Wed, 30 Jun 2021 10:28:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E0637619C3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bp.renesas.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lVvDbyNIPC+jye3aqClLNtCXbh1KvbxWPnNAJRgFcrE=; b=la7XlGjgdHzp88
	vxIKMzr6XPOL+rWwpDfZr261ruiTyL0yWCoQFZgKYn6KhDcueaZo4J+l1UiZdqvIFcuunCEbZCx2I
	YHwbIzmnsjAHGvmNAQrA+CpuC1HOBj+N/irdZs4JJTcegtXNNDf4FaGc0mG0IYQtZFLqQz75pBLQA
	wfTR3Jwl9i6z0uotJYIBgSdXQ7jspiKrSS/arwWEz/Sll0hEYplT3PRpx0lKFMtwrlOiq1LEtGTdp
	TGEX3iT7SR0EqxncC1e3fhWGuMzMXQ0xOrG4IwYRLBABaadBAOufFBwEU/GGzCvBK+IVJMSfFnY/t
	PyviP2Jt0cl8ijpfJSRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyXSH-00DboB-Av; Wed, 30 Jun 2021 10:28:29 +0000
Received: from mail-eopbgr1400133.outbound.protection.outlook.com
 ([40.107.140.133] helo=JPN01-TY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyXSD-00DbmL-Uo
 for linux-phy@lists.infradead.org; Wed, 30 Jun 2021 10:28:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iTsfei+55jD0AgHEOaGGlouu69tEBMUN0ChwhctTfQEnuNG/7GmSCz2Uhj6sb57DbzvzaYZ/IORHPdrwV63DmjHCv3Gm5+CNWrFYFWG9aP7NSzIJMqRKUbkfmJYg8ovQJ2bIIZCL2HzDQFyyVHnq4S42yBMXuIXzzyyU1N07CEJdZxjOdD9E5eT42Caz1UMbA7EIjsDCQM3phoVBvOl8fvGrtkGdmESTxg/PtwaZoep2IhSgf9yVRbDd7G2uZdG0/glTLKU2QQI/Pl3uR5KlLQvcpDKIRpeienc/uj+CPWQSr1B3qNexkFbaq6xgZnnzOvrFC9/S/j51GJbrAmSOUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J4RyJW5+1vCthKGehdcydDAGj34sMVycbgf1G2T51EU=;
 b=WaTceywhFOosgXwrcQQUcfuRZjp0noYf2vUfHiufD7SJcPN8ZTEdhTJZzeWvil3Mja9G3LdBPGwicJZhqdW5DGiqW4z5aTGknHrfp3QldtXS4fksHuaN1dTMEuQnJfG/NMLR3uy2DR4+MW0jcBNAHDhruP+p8YL9nkGyY9jA4WmKQenkLKQiplKgUgBHuspI0uai0XoNdt14ftrdxHoTthSoLBYJ9jDW1hKMG2oDAW6lRNhhxA2LHQt/JNlDOwGUdXZI+3iIeCuZuzYbXuiqUK/xaibIHoqx+op0BqCehFFxo0AhftY8GeA8M7dJTbcnhuwu+amAMwMwxy9F5gwmPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J4RyJW5+1vCthKGehdcydDAGj34sMVycbgf1G2T51EU=;
 b=Mixh7iDrpU1Tz2sMGE4L0jumflMuGB5jZ9LC1ER1OnP1eFWW9lD/9VisvQRlZAei9XXonaBwP1PppXqtc3mqkfIqDN7H69bnFBJKmdTOEVMMg4XNWzPRu4muGBNdpjueUPFGAs4C0C3p1iiEECyjTC9jol+61ubwOobGtUwl+8A=
Received: from OS0PR01MB5922.jpnprd01.prod.outlook.com (2603:1096:604:bb::5)
 by OSAPR01MB3891.jpnprd01.prod.outlook.com (2603:1096:604:5e::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.22; Wed, 30 Jun
 2021 10:28:21 +0000
Received: from OS0PR01MB5922.jpnprd01.prod.outlook.com
 ([fe80::b834:5e50:2ce8:9ae0]) by OS0PR01MB5922.jpnprd01.prod.outlook.com
 ([fe80::b834:5e50:2ce8:9ae0%3]) with mapi id 15.20.4264.026; Wed, 30 Jun 2021
 10:28:21 +0000
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
CC: Rob Herring <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, 
 Vinod Koul <vkoul@kernel.org>, Yoshihiro Shimoda
 <yoshihiro.shimoda.uh@renesas.com>, "linux-phy@lists.infradead.org"
 <linux-phy@lists.infradead.org>, "open list:OPEN FIRMWARE AND FLATTENED
 DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, Geert Uytterhoeven
 <geert+renesas@glider.be>, Chris Paterson <Chris.Paterson2@renesas.com>, Biju
 Das <biju.das@bp.renesas.com>, Prabhakar Mahadev Lad
 <prabhakar.mahadev-lad.rj@bp.renesas.com>, Linux-Renesas
 <linux-renesas-soc@vger.kernel.org>
Subject: RE: [PATCH v3 07/11] dt-bindings: phy: renesas,usb2-phy: Document
 RZ/G2L phy bindings
Thread-Topic: [PATCH v3 07/11] dt-bindings: phy: renesas,usb2-phy: Document
 RZ/G2L phy bindings
Thread-Index: AQHXbYHhglWpoTGXsUeqWuHX3BdNeassSd4AgAAJk9A=
Date: Wed, 30 Jun 2021 10:28:21 +0000
Message-ID: <OS0PR01MB59221A03F825931B778C9E1586019@OS0PR01MB5922.jpnprd01.prod.outlook.com>
References: <20210630073013.22415-1-biju.das.jz@bp.renesas.com>
 <20210630073013.22415-8-biju.das.jz@bp.renesas.com>
 <CAMuHMdWbhY9i+WvV77LVNYhLBLQBVCojgEwM93A-pvFf9Eab1g@mail.gmail.com>
In-Reply-To: <CAMuHMdWbhY9i+WvV77LVNYhLBLQBVCojgEwM93A-pvFf9Eab1g@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: linux-m68k.org; dkim=none (message not signed)
 header.d=none;linux-m68k.org; dmarc=none action=none
 header.from=bp.renesas.com;
x-originating-ip: [86.139.31.53]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 122d3f0b-b7ac-471c-ed73-08d93bb1c8ba
x-ms-traffictypediagnostic: OSAPR01MB3891:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <OSAPR01MB3891AD7CDCD1E00C6DF2BD7886019@OSAPR01MB3891.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BAcwlgl+pL4yKNgn5f7sUIUyoYHSqsZBkTxEZe+EYYijR/XZc6GrzzykER0SogqQT8FhADbyg/jislxF8bP/ksd/EFGhNWbhHw/c3fXnjyfNuRG+jeUBqXVEDf2NG1KXKKg1krmiPyhr9w7nL4SjgTTIAnQQbnIpZx+PRmWE5ODBppUr4u1Qs4n/teAHN4cltPUgHHizLoFsNUE+9AI9uqwHLWlvKhjEs6edtyBGrPi+2ofB6wYKd55exfibYm6OuHwOJDNbE0sPxywENprduZui2QI2i4G9kSjKXrOcqCGBByZDuTDt3AqBwzaHFa5qfrmnqeBM5J3/0/FUaE6ycB0dHAmV5/O8ySbr0fpol0Qg4k0sSakne3vckOtux27dXXmmYdrZYu3Qf2Cf3Nl9Vx2Y89J6tWeadzVoC4irCCs6e0Bxq8aG0QL/MpAQWuJduIHxKxEIq13TRznPKwSbTPxBbe42ZhY5KKK/dUNRTr/wChYO4BNcPm6b2IlyYxwhc02KiDrw3fxdZtm6qLV559uirWNcuecfAAHwjpO9Jo5ycCH5qWjjmHCVT5gqqWZuLRi5XkcNAJii9r4+PTubUvccaL+ToC1uy/7Xj28ccqmnPzobAhG1Oiz6z+PgoDTf/mCSOvtH6zbih2So18sSxA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:OS0PR01MB5922.jpnprd01.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(376002)(136003)(366004)(346002)(396003)(71200400001)(478600001)(66556008)(66946007)(64756008)(66476007)(66446008)(52536014)(76116006)(5660300002)(33656002)(122000001)(6916009)(38100700002)(86362001)(54906003)(316002)(8676002)(4326008)(6506007)(53546011)(8936002)(55016002)(9686003)(186003)(2906002)(26005)(7696005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MjhDdHdOTFNJMmZzaUl0Yy9rWWxDVnc1MFIrTWkyaDJ1NXh3Z0t3eHgxSUky?=
 =?utf-8?B?OGNrV2ZrYzBJR1N4SkQvQjcwM1F4RW1xeTYxTEZQNTVFL2pQRnQyNFZXVHNF?=
 =?utf-8?B?ZWZPRFRBeHJjZUNFRlRLVENHZ0g4MEZibnJzRE9pNVlHTFRNV0VQd1c5VTlm?=
 =?utf-8?B?Ui82SkV4c2VwYjdtRDA2d1lmMDlsZWNhN3JGbFhSWTJHbkpUbjd5RStRVk1F?=
 =?utf-8?B?bUsvOFVxcmg1d1RmcVNtc3ZUMWZXV0htZjZDZ0hsWlg0RWpvTFRKRHlMNUhz?=
 =?utf-8?B?cGxpeExkdUNtSFdwSis2Rk1LUllEUzV4SXZNNHFpYi9iYWUrdmZUQ2JVREVL?=
 =?utf-8?B?NlZhc05RK1c5c0hydSthR0xFNFlybElIdUN2QnhlSUIwTzJDTlQ4RnFPRGFD?=
 =?utf-8?B?VmV2NHZqSWJoLzQ1dlZQMS9RWEZKUlJPVUZGNWJ3b090TGJ2V3M4TGkzcmo5?=
 =?utf-8?B?RkxzcFhUNjFUYmxJd0NmNytCRVhYdFYyNDc4QVRuZHV4emJqaGFlZlBMeW4y?=
 =?utf-8?B?SW4rNE5wby8rSGNxNVpIR0xwOUU3RFE2NkU5UkdTQTJ3UW9IK2RyQnFpSC9m?=
 =?utf-8?B?ZS9WcHZwYWJGL0pHUHd1c3FiRythSy9DcWRoY3NuQnBRSkFqdHFCcmFNcHVG?=
 =?utf-8?B?NmVJNGhWaWZrZEhRVW9VWStVd2laUkUzK2Vkcmd3ZGgvcEpoSVJMcWFmaE5C?=
 =?utf-8?B?a1prcWtwZUtia2M2VW9ETHdqKzdvQmc3R0pLbnBSTE1CVFlTV0pBUWVYck1Z?=
 =?utf-8?B?cGwrSUgvU3h6L0pyQkpZZXgxckFQU2UrNGRvbXJ6MUQxU0FOQW5TUGs2NUd5?=
 =?utf-8?B?SWtOM0lESEpXVlR3aFFVUkEvUEVqWjdOcEJieGNzeWcwL2FKVXBBN052Z3Yw?=
 =?utf-8?B?YXJWQlZudVFJeVZVRDNabFduM0VLZmZBdktzNWt3bXdtUk9lc09RTGVJMnox?=
 =?utf-8?B?QjRMN2lGNVVKMG5MVFZpL0lGN3JxblFqSmtBWEVqZHA4QlJLcFNYaHZackZ6?=
 =?utf-8?B?cmlrbjd2VlozOVppQUFZZjBNakJxa28yS1RTRWdrRUFvYjRKZVhzVE1CdkQ4?=
 =?utf-8?B?eThuaVZxcHJ6Y2ZDLzllck1FS1I1blpjTy9WL3NsV0lOSkFydEt6WHVRSW5l?=
 =?utf-8?B?c3YxQ2VwYjRMeGdnSUtQKzhBU2ljUnFDdmMrZkNKU1U3V3VxWHEwZThvbXNm?=
 =?utf-8?B?SmVhSXJhS1FuSUYza3BPVS9jUWd5TTN1bkNadTVLUDB2ZVNsUWplWlBJclU4?=
 =?utf-8?B?ckFDM1NYWGdlak45OW5jVU1jT0dQTTdzQzQ1Y05zLytKOTZjanNuSjNYT2lt?=
 =?utf-8?B?ZFNXR0F3MFllYzYvN3FrMys1T0YxTzc0MTcwYWt5M3VVczFxcXRIWCs3LzJx?=
 =?utf-8?B?Snl2eTVDK2s3Yms1eHJOOXhYTVpOQnR3dUllaFVYVGIwV0FZR011R3U5c1Q1?=
 =?utf-8?B?emdUTkVONmVzSUtxYWtCeUdja3BEcTEvTFkyai93MG5FdW52aFVwalV5YjJ1?=
 =?utf-8?B?WTFUZkxIcWQzTVYxRlcrMXVmZmkwZzJpV3VjSG14MXZsUjFBcU82dnQ0Y3Br?=
 =?utf-8?B?OXdvMTZ5dktRMkVubGR2YldabVdPSUpISmhXeGZBZnFrMEZoMU9BTnR5RTcr?=
 =?utf-8?B?T0drSHA5Q3cyWTh5K0txMDBSSnU1bTlWd2lhTzVpd3VQTDZLczF0UGZHcEpy?=
 =?utf-8?B?Z1JkT3RmVTcxNnljU1JydkNSbE5NR0UxZVlwYmtsN1YxNmlUUmM3UGVFQ0dO?=
 =?utf-8?Q?Vh9s35U/cdXhi/KGcw=3D?=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OS0PR01MB5922.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 122d3f0b-b7ac-471c-ed73-08d93bb1c8ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2021 10:28:21.1355 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VNDmQSxDGjIoox2IDmRHoRxA0j63M+7W91gAhUK2DdlXK2WERY6MUlXduEjubmhvFY30jswHUYDyMQA8pl7WnESWlsw/H4C8+4+o8M/dlKk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSAPR01MB3891
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210630_032826_108604_C17BA3C9 
X-CRM114-Status: GOOD (  28.42  )
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

Hi Geert,

Thanks for the feedback.

> Subject: Re: [PATCH v3 07/11] dt-bindings: phy: renesas,usb2-phy: Document
> RZ/G2L phy bindings
> 
> Hi Biju,
> 
> Thanks for your patch!
> 
> On Wed, Jun 30, 2021 at 9:31 AM Biju Das <biju.das.jz@bp.renesas.com>
> wrote:
> > Document USB phy bindings for RZ/G2L SoC.
> >
> > RZ/G2L USB2.0 phy uses line ctrl register for OTG_ID pin changes.
> > Apart from this it uses a different OTG-BC interrupt bit for device
> recognition.
> 
> Nothing about resets? But see below...

Initially the reset of USB/PHY port is in asserted state. So we need
to perform a release reset using USBPHY control IP. 

OK, will add this in V4.

> 
> >
> > Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> > Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > ---
> > v2->v3
> >  * Created a new compatible for RZ/G2L as per Geert's suggestion.
> >  * Added resets required properties for RZ/G2L SoC.
> > ---
> >  .../bindings/phy/renesas,usb2-phy.yaml         | 18 ++++++++++++++++++
> >  1 file changed, 18 insertions(+)
> >
> > diff --git
> > a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
> > b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
> > index d5dc5a3cdceb..a7e585ff28dc 100644
> > --- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
> > @@ -30,6 +30,9 @@ properties:
> >                - renesas,usb2-phy-r8a77995 # R-Car D3
> >            - const: renesas,rcar-gen3-usb2-phy
> >
> > +      - items:
> > +          - const: renesas,usb2-phy-r9a07g044 # RZ/G2{L,LC}
> > +
> >    reg:
> >      maxItems: 1
> >
> > @@ -91,6 +94,21 @@ required:
> >    - clocks
> >    - '#phy-cells'
> >
> > +allOf:
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: renesas,usb2-phy-r9a07g044
> > +    then:
> > +      properties:
> > +        resets:
> > +          items:
> > +            - description: USB phy reset
> > +            - description: reset of USB 2.0 host side
> 
> Do you need the second reset?
> Looking at your .dtsi patch, the second reset is shared with ehci/ohci, so
> perhaps it makes sense to drop it from the phy node?

OK. Agreed will drop the second reset from phy node.

Cheers,
Biju

> 
> > +      required:
> > +        - resets
> > +
> >  additionalProperties: false
> >
> >  examples:
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-
> m68k.org
> 
> In personal conversations with technical people, I call myself a hacker.
> But when I'm talking to journalists I just say "programmer" or something
> like that.
>                                 -- Linus Torvalds
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
