Return-Path: <SRS0=CyPL=LR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90392C4743C
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jun 2021 07:04:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 49AD860724
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jun 2021 07:04:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 49AD860724
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=renesas.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GOlKinB0Og5/ZhknYfzuJd7PdnzXzj2VI/FsQb654es=; b=T90/DliD37idE4
	WRNTwUGtSC02AuJlet0BhSLkrn2F0hB28Td605UcETmwCEd1H+1tD6G6e2Vsw4yx2/15JopxKwbJs
	W7t1OSnSLxi+JUdpk0ZvtKKF0EQPfDmAnt6PFZznmjSTnVzJNUOOmMw5dQiQ3ZY7CqUmO3Vm9ZYY3
	KAqRXBaErkfr2JiC+VPTBgC0/OfcPAyGuDo0AV+FqKdYTGmsFdcDd5lunXAjtg8N3PW6V1udQtJEz
	zvfKi88FgDwAaBXUVdlbvHCEoKzxP55micel6T7bdpsmt8C+lq6JsX5U42HGKhdf7fpKcnxlHzAPV
	iVMXUZF3yZl7chGBqnYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvwwH-009fh4-Px; Wed, 23 Jun 2021 07:04:45 +0000
Received: from mail-eopbgr1410094.outbound.protection.outlook.com
 ([40.107.141.94] helo=JPN01-OS2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvwwD-009ffv-Np
 for linux-phy@lists.infradead.org; Wed, 23 Jun 2021 07:04:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=igtqMoKoelC25v4FGKklFAL0/IiE9TmROccAyvE4rPoKlHHE7JC2vU3eE+7K2SJBmN3ioOgnePB53AkepvLFGLGj8Z5z9pyAkApblI1CPf0rO79ZyLbKCtudpdbuToLin4TDYkDYQr5V8k1sFUo7alTbm5CdYYQonezoo+ju9ZgRHzk6Hdf1dRdztjsApY6TgBGslJH7LzHHgnt2+O0oBBF9W3ER52hG3pNU+KoJa6qCPbUZipH9J6+gS6f/mnFLacN6ESwKZfoB+sGeSG1F32+9YAlOGWQ1tMBacxE5teqo1k1Gm/bK2geWNpZfL3S0tHYx+5JdI9KdGRr7WCjNQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S7OEjGvvHbslFc7p/Z62UwOReGGjKh8bwBeTMc0+eTQ=;
 b=YbxaOuAe7YBnpT3SzZbsm8djMZoIfG6jcsrY6ZlfWkKS8uP+slz6scQfvYaHe4Qtwhbd9ccEUbmYIdbLhTPEplc320BhZ/oa96/YC6hji9OXo03rHDrxqrU6M7c8qZFSMvA9vVwbpSD7mKHd4kiHR4K2Fu1f0PAC9S/Ix4OBEyqV02Umm2P3Ni589gZyrL6xwcASjq+DJOVkR2NQzr/e8v1qTTRWcKqvMyZPFJ/7Dfbh62Zmxoi6QKnMz6dgo7dZKEd2yMw/YGY8ZWS2P06jenhJCGQMpfXQQ7AMDC4QELCI/5ztNZVI44D8npfnw/NB9CMYstHuc7FrLQ1MIKGgcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S7OEjGvvHbslFc7p/Z62UwOReGGjKh8bwBeTMc0+eTQ=;
 b=m1P8aS1TNxaFt58DCfXvsWNS1Yc6F7zwBYp/zpt2q/UFqzeAjHWAnOUikD2EgtD7/tYiv+knkt2AxN3Kx6o3fNb739fNk1RQ4TirwwXAzcIUS0jhNyLwNWgiMDTLhbXrk5BEDiYz9SgH7d4JuFuvbmdmOpAPX3H/7zkG3oAJkT8=
Received: from TY2PR01MB3692.jpnprd01.prod.outlook.com (2603:1096:404:d5::22)
 by TYCPR01MB6575.jpnprd01.prod.outlook.com (2603:1096:400:ad::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.19; Wed, 23 Jun
 2021 07:04:36 +0000
Received: from TY2PR01MB3692.jpnprd01.prod.outlook.com
 ([fe80::4c5d:66ee:883a:72a5]) by TY2PR01MB3692.jpnprd01.prod.outlook.com
 ([fe80::4c5d:66ee:883a:72a5%6]) with mapi id 15.20.4242.024; Wed, 23 Jun 2021
 07:04:36 +0000
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>, Biju Das
 <biju.das.jz@bp.renesas.com>
CC: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, Chris
 Paterson <Chris.Paterson2@renesas.com>, Biju Das <biju.das@bp.renesas.com>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: RE: [PATCH v2 10/11] phy: renesas: phy-rcar-gen3-usb2: Add OTG
 support for RZ/G2L
Thread-Topic: [PATCH v2 10/11] phy: renesas: phy-rcar-gen3-usb2: Add OTG
 support for RZ/G2L
Thread-Index: AQHXZoFzMLd0tBacEkKq+oksmDKkQqsgKbSAgAEDn2A=
Date: Wed, 23 Jun 2021 07:04:36 +0000
Message-ID: <TY2PR01MB3692392A52EE1D2A7BC6120BD8089@TY2PR01MB3692.jpnprd01.prod.outlook.com>
References: <20210621093943.12143-1-biju.das.jz@bp.renesas.com>
 <20210621093943.12143-11-biju.das.jz@bp.renesas.com>
 <CAMuHMdVHFaM+SAEBLyV0HOoFLpZgJ5PrJXx4vxQ8fsaopEAm9g@mail.gmail.com>
In-Reply-To: <CAMuHMdVHFaM+SAEBLyV0HOoFLpZgJ5PrJXx4vxQ8fsaopEAm9g@mail.gmail.com>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: linux-m68k.org; dkim=none (message not signed)
 header.d=none; linux-m68k.org; dmarc=none action=none header.from=renesas.com; 
x-originating-ip: [124.210.22.195]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7763b197-8015-4108-130f-08d936152975
x-ms-traffictypediagnostic: TYCPR01MB6575:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <TYCPR01MB6575DD02D48FC126436FAE54D8089@TYCPR01MB6575.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hP9f34rsO3AxVH2dL1zrdfwkSObRhHSekggmlR18w64osdhx0OzyVjWHf1KiyvHKSSkZeyAxYczjuFauO56XZlYZTyZj8Jk9HegPvzslR5CJ1f8EeFVs+9ay2yYOkdiakYCH3WhF3iRi3fRP2fxyJVO51TiFxU2imQWLNme/BgHkEiOFgCuCEUXKAtqf5Ets4GUHuIsuv8e/B4r6cR5NhUuDuvIF2cuElaVIHCN5RkjG/lWTR/PJpo8gR6TQbzjtN/iidvGOPOuEbY2ad1m4uoy+LsKP0subJ9iGAP9Z92saQ0KsWqkzSbyclklT5fhQB68ceG3paAAk7nOHJcHlDLoGkRRdYy9itDM3+/XIKL4XxV/bXrq8GL5z1Ls0+ppLWBeXS3i5S8cLliiItyevFT2L0TwHmCcaGJqtov0p5b6oXH2vnC9jC+qYhHhSlqgYKYskk99bIXFJnj5OwN0PmKVyXWfk/cku3I6kUW78l3HLfaFMSjI54/6bZqunkf/STMxCQSLOkA2SxWNQMK5vD08F0E9mLAWx194FnLWxhVBjZvZXsI2B7WD7Tbd7yIVASw+Gc3p6VrFQQoNBvItnnSEaP93/WbNRuRoF0eFvwZI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:TY2PR01MB3692.jpnprd01.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(366004)(396003)(39860400002)(136003)(346002)(8936002)(83380400001)(8676002)(478600001)(54906003)(2906002)(38100700002)(26005)(122000001)(86362001)(110136005)(316002)(53546011)(66556008)(6506007)(33656002)(186003)(5660300002)(55236004)(7696005)(66946007)(76116006)(52536014)(66446008)(4326008)(107886003)(71200400001)(9686003)(55016002)(66476007)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QXAzdUU2eHYvbk1jQXRta1ZCWTMvcXJRRnFGY0locmFkcnVYS3NDcUlrVHVh?=
 =?utf-8?B?Y2w5ckhlR2NVSVRwQk43R3lYRWFjdW1pdlBWMHhJN05iZWRWOEdOWnVPM2lr?=
 =?utf-8?B?dmdHYTdJZHhYSFdyZ3NMTzYvYzFwR0pzaVZqUFdaa3ZlcFdvNUNTeUVjc2pq?=
 =?utf-8?B?eFhvSk8rWFlxRWQzT254R3ZNdERQQXJmL1ZXL2VTbTIzeDExdmt1cE1FMUtt?=
 =?utf-8?B?M0toMmRFdCtaZXdNODA2enZZYXBFeHJQQ3BTa0hNTng4a0lMTE9ueW1SVEdC?=
 =?utf-8?B?eVZxV2RHVERTYlVHZis1YWtzSlNscnlweEZOZHQ1OXpueFowd3BHNVQvaFJi?=
 =?utf-8?B?azluNXFvTG5xTEdZZGRjNmNYdGp3VjV0Y0xud0VwNFVGRHl0Zm1SS29jb3pD?=
 =?utf-8?B?YlBRbGJJeDJVSVdBRnp2OWZPdDllWFc2V3F2MmZBSS93d3lNcHNaNFF0Slkz?=
 =?utf-8?B?QUhWNzYrMkVsKzFzR2NQRnY2Zks2MjhwRnk5Tm9pS25SV1JtTjluRDY2b2Y5?=
 =?utf-8?B?Rk1PWEs5aENzSVBsbjZEc1lCVUx1SWs4d0JoNm1ITDErTC9CKzdQM3gyNit3?=
 =?utf-8?B?RjBLaU45bVVpUlp0bUxGMVd2dzM0bGRYYWJmSWNGTGRldzF6YlBnaTFiRGFC?=
 =?utf-8?B?WGh6ME9SSTZlTk9rNWw2YkZ4WUZUNFZseXdrbXRzaXEwUGNQc0NjNFBtTktS?=
 =?utf-8?B?K3lGWndlMGxFY1dMVjhHMXR2ZEZWdVdGVWxjN0UycUtRRHBOK1pORlVVTE5p?=
 =?utf-8?B?Tjc1elMxMFJKbS9MaVR4VEJpWG5KTFVSRHoxZnEzdGNoYmJGREVKTmNZdkhu?=
 =?utf-8?B?dkpKYnlkb054OXIrN3dMZFlheUh3NEk1MEtaM3MvRXlSVGFLSENxbm1MNkNT?=
 =?utf-8?B?UnR0SUE5Zk5hQTVEYnBRcEFnZzByS2djM1lJOXNZQnFHSkNtaEN0MHl1YUlr?=
 =?utf-8?B?NHcrUHdEVjhqTVh5OGZhR0IrUU50cllkNlhFMEMrdThuZE5kQ0YxZ29sdlJZ?=
 =?utf-8?B?MGJnMENMTno1a2Q5QmJnVWx1cDRKV21KTlArQ0lHMGlpTnprRUd1NGNTdFRJ?=
 =?utf-8?B?NXViMjBxVTc0UnBPZXIwRERmUjU0NEw2T1d5VGJsYXRRY3d4WFdLUFFYSnFN?=
 =?utf-8?B?bFB2TzRoTDdiNVg2bG1ZdjdJY1J5QVVZMHVjTjhXN3dMUE5PRUpDaSs4NWVI?=
 =?utf-8?B?ak83YkdkUHFqNlVnRU51MkFFQ3VPU0s0RmhFR1dKSmgxNFQwWmdaUktQZkZY?=
 =?utf-8?B?T3h2dU83aCtrRzU3OGZ0ZTVEM0ZNRWdKNjl1d0JSc2ZwUTY1YXVCTFh0L1Iv?=
 =?utf-8?B?OUNHQmthd2pMd0JOTysxanVhWWw2NjJXTnphS21CN3M0U01jVzdFQzJtYnRI?=
 =?utf-8?B?dGp0MGRxU05RMHZjZnZFb1NBR2JBbHdUTERwWHVod054d2YyelRMdjE4Zkhi?=
 =?utf-8?B?NitvSjRCbDRFQnRaTU5BRU5GNkFETDVDWlRKaFZKWEpSbnI2M1hKVS9lNmVq?=
 =?utf-8?B?ZFZ1a0FMMWRQblZEUm5OZlFxUmdxQWZ0RitBUStHdkxwQXQyVEVHSzBzandl?=
 =?utf-8?B?UGYrRGhVb3k4YUd0eDNXcXlTdVVQbEVmUU0zS1IvcW1RV3AzQVFQMHVJQURJ?=
 =?utf-8?B?VDFYS3BSKy9sazdEbHpMcXRmUXhxcmdWMTZyNldSRThUd2Y1dVhNN3Y3Z2tm?=
 =?utf-8?B?RjQyVlhHeXJPMEw1QmhhUmxaaGZFSjdMZWVEKzBJOEN0YitJV2tKUGFGeThH?=
 =?utf-8?Q?Wl5Bhc6QLEX0f1n/w6w4H9SEKDAoPRsjQyb3mPU?=
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY2PR01MB3692.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7763b197-8015-4108-130f-08d936152975
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2021 07:04:36.5448 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UCXSdBMGdlmN9nvhWBLodvLMRUMKZvz4RYBHaTemU/8uiMiJs7TsLrH4tDXOVBmGWLyd9yg6bZyhZHNYHgl9uw4dD0tn6jNKjfjiWIt47WJ6Vu8B9VyQZb6I1vptDtd4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCPR01MB6575
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210623_000441_901800_68E65C8B 
X-CRM114-Status: GOOD (  25.97  )
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

Hi Biju-san, Geert-san,

> From: Geert Uytterhoeven, Sent: Wednesday, June 23, 2021 12:29 AM
> 
> Hi Biju,
> 
> Thanks for your patch!
> 
> On Mon, Jun 21, 2021 at 11:40 AM Biju Das wrote:
> > This patch adds OTG support for RZ/G2L SoC.
> >
> > RZ/G2L USB2.0 phy is compatible with rcar gen3, but it uses
> > line ctrl register for OTG_ID pin changes. Apart from this
> > it uses a different OTG-BC interrupt bit for device recognition.
> 
> So it is not compatible? ;-)
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
> >                 .compatible = "renesas,usb2-phy-r8a77470",
> > @@ -613,6 +638,7 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
> >         struct phy_provider *provider;
> >         const struct phy_ops *phy_usb2_ops;
> >         int ret = 0, i;
> > +       const struct soc_device_attribute *attr;
> >
> >         if (!dev->of_node) {
> >                 dev_err(dev, "This driver needs device tree\n");
> > @@ -627,6 +653,7 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
> >         if (IS_ERR(channel->base))
> >                 return PTR_ERR(channel->base);
> >
> > +       channel->obint_enable_bits = USB2_OBINT_SESSVLDCHG | USB2_OBINT_IDDIGCHG;
> >         /* get irq number here and request_irq for OTG in phy_init */
> >         channel->irq = platform_get_irq_optional(pdev, 0);
> >         channel->dr_mode = rcar_gen3_get_dr_mode(dev->of_node);
> > @@ -634,6 +661,12 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
> >                 int ret;
> >
> >                 channel->is_otg_channel = true;
> > +               attr = soc_device_match(soc_no_adp_ctrl);
> > +               if (attr) {
> > +                       channel->soc_no_adp_ctrl = attr->data;
> > +                       channel->obint_enable_bits = USB2_OBINT_IDCHG_EN;
> > +               }
> 
> Please don't abuse soc_device_match() for matching with a different
> variant that uses a different compatible value.  Just add an entry
> to rcar_gen3_phy_usb2_match_table[] instead.
> I don't know if you can handle RZ/G2L just using a different phy_ops,
> or need to extend rcar_gen3_phy_usb2_match_table[].data.

Thank you for your comments. I think we need to extend
rcar_gen3_phy_usb2_match_table[].data because we cannot add
any private data into phy_ops.

I'll send further comments for this patch on other email thread.

Best regards,
Yoshihiro Shimoda

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
