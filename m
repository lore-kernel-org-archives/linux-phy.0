Return-Path: <SRS0=CyPL=LR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC3ABC4743C
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jun 2021 11:53:05 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 76CA1610F7
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jun 2021 11:53:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 76CA1610F7
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bp.renesas.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f4fe0NiMuShbZZP0FoMIoC61VrP6Dj1jxuAH5CcgQls=; b=VoTvIOgq0ayjLn
	G7e2ApZO8Vvl0hXeu89aCOzyaaiuKkHEeDEWUOgFZbe7E/9ddUm6La+lZiHWi3dvhgXDYoT7Nf3hQ
	PTLNhNn+R69BTSzH+SUPzvTD+CHwhQL+1BvJE9+YtFE+hQkYRf43RmLQaRYEKphLEnhvGNoIcu4Ab
	4/ODkZswVEimh7A620eh+qhjgy11wS+/CiAAHPdFoRZBPHGU+o6uLVFXGL40nr1Mb1o9jn3INg75X
	59ptlmhRpVjxaP6GJDF7y5pBuomxzoI17Yxxx1Z2uoQFw+sG/XSUpJgNkeHqocXpdhc4CYV5t3J5z
	QXwnq7gSB+E6rHLyweKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lw1RI-00AWS3-Uk; Wed, 23 Jun 2021 11:53:04 +0000
Received: from mail-eopbgr1410117.outbound.protection.outlook.com
 ([40.107.141.117] helo=JPN01-OS2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lw1RG-00AWP3-1U
 for linux-phy@lists.infradead.org; Wed, 23 Jun 2021 11:53:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iYimY8roOTG1kkw0/4QZl7lNCBxYUf6BgqExuO0F6pAm/lmCMcFxDo01FVH+RzOaKIFCOaej++fZU4gmxxvHnmJGs9QDvSetATsJdXfs/BAZyKS9qoVwPpf8/Hx50u1A4mO+WKcqjLPbsRC6dm/x3rQQifAMiTTS6Uy9sgEYVAUV8IltKQZaEI47RgP2zjX9cgo0TShZ4jTeU8u1GexonOUoitSuFadzU6sIJ99ZUvnnYOAdLfX0yGEBv+8biZ7UBfSQw1EYGGdrde6RlQ1ZeTfUl/lCU5Ai/YOoq67lhAZNFyMuLefco0cC+Wtr7liwnjoPdTqKNWEJ1Jj1BL03CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yqzJOFvQvf2FmGYJWbtw2njsTL9lxSWkZ6OmPT0/iT4=;
 b=XAl6ue4txRP0/0FAiGJWtPqPuKiWE1kvVDqTM41tEedEkAcxGDrLFdE79WAFwcDP67wslaeRkEgxgSuGBbsSNAWvojmWiRYWdkdKVPwN6xRQXvZ6rrsibFFXIZkogLf2AdhPcL2pe18YarJGl3QounP351MG1oxfVZJG/7Efeq4RVggJIDklcEhYycYVNXxUcPmGVrpkzo/QxCoFIkiyRh3Ny7d8k0Fe+GvIzlm0LMmeGryVk9qE372Py+QKkoaP6+2A+8JZS+f7E0lwmKDnQLj5sM7LlGQ2J8bM84B3WiEbjZsifX4TV0pGCNU1qBxFBfvvx8X58nkZa/h/72OL0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yqzJOFvQvf2FmGYJWbtw2njsTL9lxSWkZ6OmPT0/iT4=;
 b=YWtMYxjdiMlEIwKsgQDOHAhQ73yYcNTPp8BdVTcgIy63+Qi2bNBHgaSjpXeivx0VwrxHcNaVKJZmWLpfVH5vhVC+ukdu6DVOD5Jhtmf+q5xBbc66pU1TCCaJLqWRB14cttuTnKShnr0be/PntNK6m/P0ymPdSKuXVxHqOtWuKQ4=
Received: from OS0PR01MB5922.jpnprd01.prod.outlook.com (2603:1096:604:bb::5)
 by OSBPR01MB5223.jpnprd01.prod.outlook.com (2603:1096:604:7f::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.21; Wed, 23 Jun
 2021 11:52:56 +0000
Received: from OS0PR01MB5922.jpnprd01.prod.outlook.com
 ([fe80::b834:5e50:2ce8:9ae0]) by OS0PR01MB5922.jpnprd01.prod.outlook.com
 ([fe80::b834:5e50:2ce8:9ae0%3]) with mapi id 15.20.4242.024; Wed, 23 Jun 2021
 11:52:56 +0000
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
CC: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Kishon Vijay Abraham
 I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Linux-Renesas
 <linux-renesas-soc@vger.kernel.org>, "linux-phy@lists.infradead.org"
 <linux-phy@lists.infradead.org>, Chris Paterson
 <Chris.Paterson2@renesas.com>, Biju Das <biju.das@bp.renesas.com>, Prabhakar
 Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: RE: [PATCH v2 10/11] phy: renesas: phy-rcar-gen3-usb2: Add OTG
 support for RZ/G2L
Thread-Topic: [PATCH v2 10/11] phy: renesas: phy-rcar-gen3-usb2: Add OTG
 support for RZ/G2L
Thread-Index: AQHXZoFznG1LvyJquEaSi6z7En8La6sgKbSAgAFUhCA=
Date: Wed, 23 Jun 2021 11:52:56 +0000
Message-ID: <OS0PR01MB5922D9DE382FCA4398C420E286089@OS0PR01MB5922.jpnprd01.prod.outlook.com>
References: <20210621093943.12143-1-biju.das.jz@bp.renesas.com>
 <20210621093943.12143-11-biju.das.jz@bp.renesas.com>
 <CAMuHMdVHFaM+SAEBLyV0HOoFLpZgJ5PrJXx4vxQ8fsaopEAm9g@mail.gmail.com>
In-Reply-To: <CAMuHMdVHFaM+SAEBLyV0HOoFLpZgJ5PrJXx4vxQ8fsaopEAm9g@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: linux-m68k.org; dkim=none (message not signed)
 header.d=none;linux-m68k.org; dmarc=none action=none
 header.from=bp.renesas.com;
x-originating-ip: [86.139.26.177]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 24d02c2e-6f73-4da2-11e7-08d9363d70ef
x-ms-traffictypediagnostic: OSBPR01MB5223:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <OSBPR01MB52238321DEF0E8B1C298C80686089@OSBPR01MB5223.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iOWYOFja5oj3/8MJhjMnudUQzV7aScvdYSvLAe8YIMQuPvyFkrU2Jx/SHEygCR8C9CUws3dbWtGv86BQWKBljOjLKPeL7y6/lU7zi3sY9ryPryRkfShyu6tkZg0gp4OPpiVNs62a5R22e7m74IHlK34o4AXYY4a7J2p7MExEx4Hkr+rKQRVnq+UQT0iE4nWIgN171XUQNYvwO8/Hm+v0tIBN/bfJxhX9l1H+PzyytQfMj0nBXzsAYZlEBDhgee2RLHzjwS8Jm3k+4GgVdMapUTyvC+VRuLTpuf1Ix2Rhx8g6YHN8ZdoPLyqA+iIOAz1UgrP5tefiaVERjYvC9bd3Y2lToj30yUcKiwFCaVUlx7oiW7iSEiQCTZSaI0qU2yfoZoDQamfF1AwMX5DbsJ61iK5OcWXM0z3FJ8r9qy48At/Ifdctc+wCGawbOoLkW7YRUDFN1Jdv69SntV1NFMkMgMjSIqfLSTIgKA9/5V+LfwiTR3KXyf1Tn0WURCRiPiMXx58SfLdZjmXd2uGu3u7IuWS1wkJXD41boj0nTJiAzp1nn6kR2F6F/3IWD8HhUxrZxWePsILqul6J5bCiEPWBun8DBqf7JijaPw4NCqmmlNduk/RDLQ1z1ERlVSaoO8Xu1mwWxBolWb+3ytck8YBlUg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:OS0PR01MB5922.jpnprd01.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(366004)(396003)(346002)(39860400002)(376002)(54906003)(66446008)(64756008)(478600001)(71200400001)(9686003)(83380400001)(7696005)(33656002)(5660300002)(55016002)(52536014)(66946007)(38100700002)(122000001)(186003)(107886003)(66556008)(26005)(53546011)(8936002)(316002)(2906002)(76116006)(6916009)(8676002)(6506007)(4326008)(66476007)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WVZKSHc5dW1rbTQvRnJPb3dlMWREanNVcDJ0KzJpckhZYTFkelFVTUVydng3?=
 =?utf-8?B?ZXhmUHVqMVhOSko4VHoraHR2cWdsTS9YWUZ5U1dMZE5wa2FCWFFPelUyUVlp?=
 =?utf-8?B?L2FqVHZrRjMwd096KzNIRk9vWnlEeU1iNzdZNEg4bUJrYUIvdVRwZE1ZdGtP?=
 =?utf-8?B?WFJhUW5zUWsrKzIraXhwS3dBbENqdGJwYzR6NlNhakQ1dC81ZGNvS3o5SDhP?=
 =?utf-8?B?a2ZVLzdUQU9pQkpYRjVSb243S2ZpV2xUNjRRMjU2R3I3aGd3MmRnSFBXTS9W?=
 =?utf-8?B?U2FsY0dNOHdlMVA0dWJMSHd5akFLY0FHWnFPOXBxamlRRmE0WGNCVkY0YWVP?=
 =?utf-8?B?Q2FSYU5WdVo2cWlMc1lxem9ZU21Qd0hoV01HbUIzRXhUQ3dRZkR4aC9RZUFv?=
 =?utf-8?B?QzExUGlNc0tUclEvNFpqbWZETElzQUJ1L01rbEhlVEhQWHhvajB1TERCS3VF?=
 =?utf-8?B?NmNFdW1Ba3VmekRjbGtjc0I2Q09kT2o3VHV5N2xjM3B5VGl0TVNJVEF2cVpB?=
 =?utf-8?B?ZnIvcU85R2pUc1lCUi9VREgrbUxVMVBMcUJWbmM5Z05tNHJXZENJQTFWaStp?=
 =?utf-8?B?MG96Q1dhOTBpNkZMa3VYZlNCSlhLck02YUtUdE80MDlFMXA0ODZlaXhNOE9k?=
 =?utf-8?B?c214R0dNYWRYaHJEU2EwVnVidithS284WGRNUFhacXI0QkJWaG50N0dMTm5U?=
 =?utf-8?B?ODZJVXI1Ujg2TjZRUmFnUkFrMVFFNGhnVys4VjUzZExzMm1qN1hCQW81K21m?=
 =?utf-8?B?c3h3SUxkOXBBcmFXU0k2bUZrS0dzRG95OVlIOStzeEI4RFF0a3c0QkxpNjdn?=
 =?utf-8?B?R2NmQ0ZJbVgvOFV6LzU5bW4wTDdZS0lDeFlZOXhFSU5iejgyeitRQjBKK3ZW?=
 =?utf-8?B?SU56SGdOMmFJODA1NER5WVpGOUxqeDJlLzFPVm5qWHdUUkR5VTdHQ0lEMDN3?=
 =?utf-8?B?bk05TlNMa0hyQjBxdUsrM29HTFUzb2xaZ3BTTzdkc2ZtbDkxUXlvVUMxanJr?=
 =?utf-8?B?N25LN0RCdWpDdkg5UzU4YjFsWHZMZGNld0dDRmlseFl4VmdMUkkwTzVBem5Y?=
 =?utf-8?B?cTFuTFNIWTJoSTFyclN1U1MrY1NIQXhNTGtNeDFHTDZqOU5BRkNiL2gzdFBH?=
 =?utf-8?B?SEVBbXU4RmFCcEhsV0hEQVVKWW5lSjdtQTl3Um9qOXVVbDRESENEZ2JwVTRL?=
 =?utf-8?B?dXV4QkxnaERIQk51SE9VNTJYeXpWQ1VoMnpkZlNzdTFRZ0dlYVYxUlJGdldJ?=
 =?utf-8?B?dWlZbmN4eHhNdjJPbmFnS1pCclF1WTJwTzNXWkl3cGNRdVZONGk3VEp5Ulhy?=
 =?utf-8?B?NldPc2JKQUV4SjhKN0o0M0Rjc1ZSdTdsYVphVlI5V05mRk0zUC9SS3M1OGRx?=
 =?utf-8?B?Q0dEcVhTZmRCcytNZnFHczZvdlpDK3JBbjl6bldNZXB1Z3pjcjFrb1hRbVMz?=
 =?utf-8?B?ZlQxRTBxdFcvRVFMQ1owOEpGRDNEdVY2RlBWOWNFTWE2Z25ZS0grYmZLaXlz?=
 =?utf-8?B?dys4L1JVaW4zUjNzQ0E5L2NBcUhnMTlKS3NSSkdmcXdFcTlwejZ4bXZ1a0tm?=
 =?utf-8?B?VC8zVmFRY1RpenJQa2tZQWNORzNwTkY0Zi9yak9ja2xYeFE3MDczVzZkY2ZV?=
 =?utf-8?B?QWFPN2llM1NNZXRxQ0l4dnNKM2Zjb1ZyU2lUL1R3M3dEb0dNWlllWS80Qjhn?=
 =?utf-8?B?cElMWEhMM01paVFicTRMTjdSS09INGUybGlOU3ZSNDVtbWttYkVjVUdtUW9t?=
 =?utf-8?Q?j9Xfr2xgi0fKI+xHjQVUGGuQ+inoVA8VwgiEZBG?=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OS0PR01MB5922.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24d02c2e-6f73-4da2-11e7-08d9363d70ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2021 11:52:56.3414 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rhklQY8T/AyVNgUGYQbpKcGMdOUb4TZ7LO+YhSGYS3TjvwCJ4p0rUPo38vG9LteYYzlzVQP7nQRthsWduKFI9ZVADG8ZP8X/GBjOAl6C/sY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB5223
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210623_045302_124573_F55BE14B 
X-CRM114-Status: GOOD (  34.48  )
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

> Subject: Re: [PATCH v2 10/11] phy: renesas: phy-rcar-gen3-usb2: Add OTG
> support for RZ/G2L
> 
> Hi Biju,
> 
> Thanks for your patch!
> 
> On Mon, Jun 21, 2021 at 11:40 AM Biju Das <biju.das.jz@bp.renesas.com>
> wrote:
> > This patch adds OTG support for RZ/G2L SoC.
> >
> > RZ/G2L USB2.0 phy is compatible with rcar gen3, but it uses line ctrl
> > register for OTG_ID pin changes. Apart from this it uses a different
> > OTG-BC interrupt bit for device recognition.
> 
> So it is not compatible? ;-)

OK. Basically I meant we need some modification in driver to support this SoC.

> 
> > --- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> > +++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> > @@ -535,6 +555,11 @@ static const struct phy_ops rz_g1c_phy_usb2_ops = {
> >         .owner          = THIS_MODULE,
> >  };
> >
> > +static const struct soc_device_attribute soc_no_adp_ctrl[] = {
> > +       { .soc_id = "r9a07g044", .data = (void *)true },
> > +       { /* Sentinel */ }
> > +};
> > +
> >  static const struct of_device_id rcar_gen3_phy_usb2_match_table[] = {
> >         {
> >                 .compatible = "renesas,usb2-phy-r8a77470", @@ -613,6
> > +638,7 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device
> *pdev)
> >         struct phy_provider *provider;
> >         const struct phy_ops *phy_usb2_ops;
> >         int ret = 0, i;
> > +       const struct soc_device_attribute *attr;
> >
> >         if (!dev->of_node) {
> >                 dev_err(dev, "This driver needs device tree\n"); @@
> > -627,6 +653,7 @@ static int rcar_gen3_phy_usb2_probe(struct
> platform_device *pdev)
> >         if (IS_ERR(channel->base))
> >                 return PTR_ERR(channel->base);
> >
> > +       channel->obint_enable_bits = USB2_OBINT_SESSVLDCHG |
> > + USB2_OBINT_IDDIGCHG;
> >         /* get irq number here and request_irq for OTG in phy_init */
> >         channel->irq = platform_get_irq_optional(pdev, 0);
> >         channel->dr_mode = rcar_gen3_get_dr_mode(dev->of_node);
> > @@ -634,6 +661,12 @@ static int rcar_gen3_phy_usb2_probe(struct
> platform_device *pdev)
> >                 int ret;
> >
> >                 channel->is_otg_channel = true;
> > +               attr = soc_device_match(soc_no_adp_ctrl);
> > +               if (attr) {
> > +                       channel->soc_no_adp_ctrl = attr->data;
> > +                       channel->obint_enable_bits =
> USB2_OBINT_IDCHG_EN;
> > +               }
> 
> Please don't abuse soc_device_match() for matching with a different
> variant that uses a different compatible value.  Just add an entry to
> rcar_gen3_phy_usb2_match_table[] instead.


OK.
> I don't know if you can handle RZ/G2L just using a different phy_ops, or
> need to extend rcar_gen3_phy_usb2_match_table[].data.

Will try to extend rcar_gen3_phy_usb2_match_table[].data as Shimoda-san suggested.

Regards,
Biju


> 
> > +
> >                 channel->uses_otg_pins = !of_property_read_bool(dev-
> >of_node,
> >                                                         "renesas,no-otg-
> pins");
> >                 channel->extcon = devm_extcon_dev_allocate(dev,
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
