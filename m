Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A777FF8868
	for <linux-phy@archiver.kernel.org>; Tue, 28 Apr 2026 09:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jZab9LhL7BblKEnFfQnnFX62omUarNMU81S1Ayg788M=; b=nQ/Kd8jqCX2zJC
	L5P7t5kJh+hcH6y0yflb8F0IQrqew3Yc65kCWQYMNHFju/CQxBXjeMS6rMI5hYhrYQSzUl0V3vm6v
	LeeQJGbf6a27A7PsbKu3HRzK448G2I18n/3CkHIu/Ralu7trOAdMiwJIG+oc1NXqaCZ1v/nOvbH/7
	S0W+voMobRGnxwFYNdCpYbKeA5D/rHfMfLQ65khWfkrAOxCaNgKCH6a7kY2btPYS5+3ujFKiDpxGq
	uMe8f8+rJw+V1S6zLcSJoGUGUJTdRtqCfG465QZU/SdfRwQc6gRSgIxsITbM4q1Rrnso9LNmsHUBc
	d2iKHe0oxxxqJQ+zjXMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHedK-000000014tn-3SNX;
	Tue, 28 Apr 2026 09:21:34 +0000
Received: from mail-japaneastazlp170110002.outbound.protection.outlook.com ([2a01:111:f403:c405::2] helo=TYVP286CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHedH-000000014sx-2cfk
	for linux-phy@lists.infradead.org;
	Tue, 28 Apr 2026 09:21:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Oj+mmMjXAtW4wuKfQAyVbGS5qdfKJhMrxiBYJoWgkmiZgkaGw9W5ZtrhNi/X2e3Ntyh4UTttgmQXgYUZlpbZycucZKbnF0aGG9feq/0wZnWP3XXyP1FKxjLUSXA+bdJIhd8lmSdDFEt+OZxD8Pq7MkNPZ11wB2eTqHeXLJn7+W/oeqcu/OvjhEyHwtvK6gFbVGcbGxBQCLi6ItX0P3xWrFst2A9kmQwRElFDH6/CKIRFG2kWsOZ72oHtNfx71WgSpQ8jny6cGsH4rnmHOzm1Fx3Jt1TF7Jg5rbf7A+SZ0VcKtK7Kkedv4bdZhoG8Fy5OJArZ2ElCNV3cTtxsOIZdBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ehtynv91nTINaZS4dyUZAgebJI3mdmWw2lnKjnxOsc8=;
 b=Kfn5DZsj358bKpYnM/phmKPpyLyGgW1xxuciFDOzkCh8zzX3+9xQ8sgtVBrOdL1P3XiFusXjwOk2Bi4VpArUi9W80u2Rw6PvskUDFT1la5ijKh94buVOvW1TCTI42VXXbO8igcnKF6Sogc0vn5mGodpiBBpbxNU7FV3r6frtNoAn3ddCxlWGbw/oAkpIa9qy4a6mBMbfI7wBnVjej1Jo6UZqGyXVVUfMzyeZx2r4GbxknbcMwv1uU6D2V6LKFaEfvJ5TOXbvY1NZXSr/lFAsssUjDAXwN9KyVlFqN466vDvvI6Ep/H35beh+V+t853vjUgpUTmAsGsucAgXwHY69YA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ehtynv91nTINaZS4dyUZAgebJI3mdmWw2lnKjnxOsc8=;
 b=JSMPGZje2sluhx6yjcY6FwllZY3fJQzL2kwkRkArQ5CkGHdS/Am+YOUVcdRL63SKC4CM+r44kAiHgayv32UczobOwpYwVIKhOfLHnpNho0KEOcipoP0v3khLWxpT1tmXtLiqOSn0xSGdMM+cCSPwq7mopWyM5kM2a4losqsylnI=
Received: from TY7P301MB1984.JPNP301.PROD.OUTLOOK.COM (2603:1096:405:38d::6)
 by TYCP301MB0222.JPNP301.PROD.OUTLOOK.COM (2603:1096:400:2c4::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.26; Tue, 28 Apr
 2026 09:21:24 +0000
Received: from TY7P301MB1984.JPNP301.PROD.OUTLOOK.COM
 ([fe80::5b4b:dd0c:b302:7911]) by TY7P301MB1984.JPNP301.PROD.OUTLOOK.COM
 ([fe80::5b4b:dd0c:b302:7911%5]) with mapi id 15.20.9846.025; Tue, 28 Apr 2026
 09:21:21 +0000
From: Ovidiu Panait <ovidiu.panait.rb@renesas.com>
To: Biju Das <biju.das.jz@bp.renesas.com>, "vkoul@kernel.org"
	<vkoul@kernel.org>, "neil.armstrong@linaro.org" <neil.armstrong@linaro.org>
CC: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
Subject: RE: [PATCH] phy: renesas: phy-rzg3e-usb3: Fix runtime PM underflow
 during suspend
Thread-Topic: [PATCH] phy: renesas: phy-rzg3e-usb3: Fix runtime PM underflow
 during suspend
Thread-Index: AQHc1n7ANECNPwe9y0+ScapReaOqMbX0AEoAgAAlYxA=
Date: Tue, 28 Apr 2026 09:21:21 +0000
Message-ID: <TY7P301MB198432F1681EFA444D16F824D3372@TY7P301MB1984.JPNP301.PROD.OUTLOOK.COM>
References: <20260427194741.161533-1-ovidiu.panait.rb@renesas.com>
 <TY3PR01MB11346819FE6253E90C7B4F88486372@TY3PR01MB11346.jpnprd01.prod.outlook.com>
In-Reply-To: <TY3PR01MB11346819FE6253E90C7B4F88486372@TY3PR01MB11346.jpnprd01.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY7P301MB1984:EE_|TYCP301MB0222:EE_
x-ms-office365-filtering-correlation-id: 475d4f1a-dabe-41ef-2466-08dea5078323
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|376014|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: BxwkxkQ/Ww8gD8cX8iImJo4EAJgjLUddpCFccd2mT+YpB0A8Y8NNjj8HDqEjHlMppQLn5Hw1lC6pqCyFQTeINJ3+7nIW4xZDiK7Gg7wUY4PGNU4gzB+1/ksb2u311z2NV8G9fgeCS2TvJOd3oBg2KliepuaMhQOu6y36+SUJRbQv9CbuCLRWrJD9CCZXQKpqEL1impoma8sqiBjV6HBe1FS7EB4TpDcRTHHXyZuYtZxihfgaC0fSsqSslfEZCy2CYmYvlWeSe8FSGi8YpNsYWaYHUg1mlTjKA86W8tm2T4PiclqBAnfh5+6xV92LO487LkxW2CBDUJYK7C6OMM9l+onNklBAlGz1eT5Gq5TG+bIHkjqzC+fGQxX33O18+1lKFiN7TpSIxgSV4gw0sVBqucUavEioBzEe7Bgki2TU1wCCrZRY8EOlFu5vm+iIqvd4zLZBvE1jg4re6T8GuCCkL4Rd5DPCyzBs220JicvcZzZWSH2VyZlkITcekFyzQ4sDrplOStcsGx564PpRXcO95H2f69Lqz8yygPL25Va4HPG6NwvIrxNYu3eWo1hEIZLVbm4pMt9Dw0+4PF+OspLLCai5QabV6QMmrgPHVEy7fs7Vf70HJP0Ef/sA6GBLAK/yqnHm2spDIGAG5AZo5+vbON5Fomy1gNGvbPPNNHMxpnfjMAyfF6qo8i+B+aG0lDkMbxS5TWbp7pSciYLLVyMk/zMLNT2v9rsyUhBhniZDqMHJDHHzfLZsp6oL2VwdT4dE
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY7P301MB1984.JPNP301.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(22082099003)(18002099003)(56012099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?H9kWLkQyVrHOIFmqLbsWwk9NuZs79odI/KC+IOt0KyEm4D/U1eUcSrIAlP7X?=
 =?us-ascii?Q?gdBb7xYu+o+eu/pAdE7niIg9N+LroMe3J5LfUEuV8YFyspsmg6nePXCbI6f1?=
 =?us-ascii?Q?QTb3XbTPvFffOyp71y2K37JQiaZgfcMac7MJ/PcfB+Jj9+OYMcDLokIKEwHf?=
 =?us-ascii?Q?AFUU+b3ymtJhdEWQmOVe5zNWVee3ZY6hZHjD2g1z/OXWZG+N7Tt+kYZRPVzl?=
 =?us-ascii?Q?NgLiQXicwZLIPl3X9JSFuu7Ulc5x15RQoPqkzAG0DsqjbE+wg4TyKBxObMja?=
 =?us-ascii?Q?aTkrIisHtCccuputXWsEBqykHQUvKh5EEQyp0s94FV73sOUMgOuzjw1YpOaT?=
 =?us-ascii?Q?lDUAeHHkI1Gr4+Eg3CLYJQCNRgph6CUQkbaIh2eR2W9wSXT23Q+zHUwc7A6G?=
 =?us-ascii?Q?zkOzyP2F///JbKTbvTEkw8EpD0sMvy7nLk/5wsC2C0sowWTZI3nP16UGWEEp?=
 =?us-ascii?Q?oX49TDd06nDFmXiA/heRimIkJ4xnhlNrMZreyxKlPjN5THhEk73peOK6r69f?=
 =?us-ascii?Q?xaUyVgR31S6nIalsDGYiIAMDl7FwucxEMDAkryz83n0izXe69gfIoT7JVZ0k?=
 =?us-ascii?Q?fVe29srqLW8V/ZckRuELQRnEdhblELXykHpoILjsge3IgyuW9GESlwxTIRZ2?=
 =?us-ascii?Q?lUfIy0yaoKa6BYa9MOwmPczcIhuX5JTrtq3epX796+rdZtaw7Lkm4fiFnWS5?=
 =?us-ascii?Q?CeVetqB5/DYsyLdEjFTnMF91z4qSr2XTb364JK85jjX0XcrtsQb5KMpy/9+1?=
 =?us-ascii?Q?YI1doUR9FlE20dIVvVR4DcyV5HDJ4olvYzJJhKIKHaGAxpPK+YpVSW14XfKl?=
 =?us-ascii?Q?ncz1rLS8new5DvW2LbZZI73Bxa6jt315o3ALh+N0Wq1AT0CKa5cM9mLTnIuG?=
 =?us-ascii?Q?sSnsu6VrCLac5FVf/zGREJaqqEoOGanxSminv/nzOBEqdSXJBO3dfOMsiuPk?=
 =?us-ascii?Q?q7yoAOy+BnPBOypl42qDRyE7QADtL2gy6Q32xiVHAgESoglZNPaFBhHIRDiw?=
 =?us-ascii?Q?wovjmfHpQnf8Qm4Tq8rkEJrsCxX7xCb4Ok07g03NDfrHP1NzBCcjX6dCUdVc?=
 =?us-ascii?Q?m/haNItwpqvAYf1WbsZdEWpBA4huidgzovRBRua1pGbxdy3oYqwDnX0sdOKr?=
 =?us-ascii?Q?bdDV5IkcblwPWNNOBPT8hmnpcBUzji/HOR+Fq56SJFDlK5Ke7+hB+YsS43bc?=
 =?us-ascii?Q?19pmEo1HuXi4r85HtGy6sWDIExCLXZlovlvLtWMt70w4X+YDjvgrOsQjwvWz?=
 =?us-ascii?Q?7wMw84lsOIQo6CBtVuT0Z1fWDfiYoVVa/Lx03TS9xKtFvONGEQMsIW8vFLF4?=
 =?us-ascii?Q?Jzaoh4xjOUuZVU36Y2tPNOkOeOlriOxxGm8fEOHy5jspVfpKerW0bBDlaG6V?=
 =?us-ascii?Q?oby5i5O6q16+YtrBvHzS8VcIaH8w0HiwMbGFaKu1jQM9hnVAyqn99s9x+0mP?=
 =?us-ascii?Q?ufu0mKg9b5TiUNYSPUtTh8nNg+DF4pYZ3pQQGGmCgevM2gUEFwz6GdVRDwlS?=
 =?us-ascii?Q?t2IJJshat0uKd927zb5N+w084IrJFV4AjslDNlG7rKIB9rcOgzrXDGJ1QA+h?=
 =?us-ascii?Q?SUHkxWI7bb2GPxLoLdQMsPCBiER5Z71TNUQ0r1OX6bM7n41dMGrMpCevJbGr?=
 =?us-ascii?Q?tQrfQ+r9FQjTKt7Vno1uMBN0oZYiZAPjsmQ0KbCE+cN4s+UZZ7O2ANegmuwX?=
 =?us-ascii?Q?loGEDmS9kQn7Dv4Gqgz/I4I6zQZ9aIHflC+LI/65EQCIlmTNlm0ctRaawX2O?=
 =?us-ascii?Q?mA97Fb2r4+8g/VkN6gLoIPzA4xaeo/o=3D?=
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY7P301MB1984.JPNP301.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 475d4f1a-dabe-41ef-2466-08dea5078323
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2026 09:21:21.6188
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gjYtP8QtZgzSxpvdnLpWMiYTs2mV2Jenm9QY6J/SdbuIwbsNc0tdsFZ5Fs5eq2o/grXT9JizSfl7mKtHBXUXRIvvdvY92Q6zgiJ0MU8WeoQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCP301MB0222
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_022131_683813_A5ECC1AD 
X-CRM114-Status: GOOD (  30.35  )
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

Hi Biju,

> 
> Hi Ovidiu,
> 
> Thanks for the patch
> 
> > -----Original Message-----
> > From: Ovidiu Panait <ovidiu.panait.rb@renesas.com>
> > Sent: 27 April 2026 20:48
> > Subject: [PATCH] phy: renesas: phy-rzg3e-usb3: Fix runtime PM underflow
> during suspend
> >
> > On the Renesas RZ/V2H platform, if the xhcd driver is unbound and the
> system is suspended afterwards, a
> > PM underflow error will occur:
> >
> >  # echo 15850000.usb > /sys/bus/platform/drivers/xhci-renesas-hcd/unbind
> >  # systemctl suspend
> >  15870000.usb-phy: PM: dpm_run_callback(): genpd_resume_noirq returns -
> 13
> >  15870000.usb-phy: PM: failed to resume noirq: error -13
> >  15870000.usb-phy: Runtime PM usage count underflow!
> >
> > Since the PHY framework is managing the runtime PM of the PHY via
> phy_power_on()/phy_power_off(), there
> > is no need for the PHY driver to manipulate the runtime PM state during
> suspend.
> >
> > To fix this, remove the runtime PM calls from the suspend/resume paths
> and add a get/put pair inside
> > rzg3e_phy_usb3_init_helper() to make sure the clock is enabled during
> init, even when there is no
> > consumer for the PHY.
> >
> > Also, change the suspend ops from NOIRQ_SYSTEM_SLEEP_PM_OPS to
> SYSTEM_SLEEP_PM_OPS because runtime PM
> > is disabled during the noirq phase and pm_runtime_resume_and_get() would
> not actually enable the device
> > clock.
> >
> > Fixes: ee5f1a3f90a4 ("phy: renesas: Add Renesas RZ/G3E USB3.0 PHY
> driver")
> > Signed-off-by: Ovidiu Panait <ovidiu.panait.rb@renesas.com>
> > ---
> >  drivers/phy/renesas/phy-rzg3e-usb3.c | 31 ++++++++++++++++------------
> >  1 file changed, 18 insertions(+), 13 deletions(-)
> >
> > diff --git a/drivers/phy/renesas/phy-rzg3e-usb3.c
> b/drivers/phy/renesas/phy-rzg3e-usb3.c
> > index 6b3453ea0004..055775e1a0f7 100644
> > --- a/drivers/phy/renesas/phy-rzg3e-usb3.c
> > +++ b/drivers/phy/renesas/phy-rzg3e-usb3.c
> > @@ -64,6 +64,7 @@
> >  #define USB3_TEST_LANECONFIG0_DEFAULT		(0xd)
> >
> >  struct rz_usb3 {
> > +	struct device *dev;
> 
> Do you need dev as struct phy has dev member [1]?
> 
> [1]
> https://elixir.bootlin.com/linux/v6.0-
> rc4/source/include/linux/phy/phy.h#L153
> 
> >  	void __iomem *base;
> >  	struct reset_control *rstc;
> >  	bool skip_reinit;
> > @@ -130,11 +131,21 @@ static int rzg3e_phy_usb3test_phy_init(void
> __iomem *base)
> >  	return 0;
> >  }
> >
> > -static int rzg3e_phy_usb3_init_helper(void __iomem *base)
> 
> you can add one more function parameter dev here.
> 
> static int rzg3e_phy_usb3_init_helper(struct device *dev, void __iomem
> *base)
> 
> > +static int rzg3e_phy_usb3_init_helper(struct rz_usb3 *r)
> >  {
> > -	rzg3e_phy_usb2test_phy_init(base);
> > +	int ret;
> > +
> > +	ret = pm_runtime_resume_and_get(r->dev);
> > +	if (ret)
> > +		return ret;
> > +
> > +	rzg3e_phy_usb2test_phy_init(r->base);
> >
> > -	return rzg3e_phy_usb3test_phy_init(base);
> > +	ret = rzg3e_phy_usb3test_phy_init(r->base);
> > +
> > +	pm_runtime_put_sync(r->dev);
> > +
> > +	return ret;
> >  }
> >
> >  static int rzg3e_phy_usb3_init(struct phy *p) @@ -143,7 +154,7 @@
> static int
> > rzg3e_phy_usb3_init(struct phy *p)
> >  	int ret = 0;
> >
> >  	if (!r->skip_reinit)
> > -		ret = rzg3e_phy_usb3_init_helper(r->base);
> > +		ret = rzg3e_phy_usb3_init_helper(r);
> 
> ret = rzg3e_phy_usb3_init_helper(&p->dev, r->base);
> 
> >
> >  	return ret;
> >  }
> > @@ -187,6 +198,7 @@ static int rzg3e_phy_usb3_probe(struct
> platform_device *pdev)
> >
> >  	platform_set_drvdata(pdev, r);
> 
> >  	phy_set_drvdata(phy, r);
> > +	r->dev = dev;
> 
> Drop this.
> 
> >
> >  	provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
> >  	if (IS_ERR(provider))
> > @@ -199,7 +211,6 @@ static int rzg3e_phy_usb3_suspend(struct device
> *dev)  {
> >  	struct rz_usb3 *r = dev_get_drvdata(dev);
> >
> > -	pm_runtime_put(dev);
> >  	reset_control_assert(r->rstc);
> >  	r->skip_reinit = false;
> >
> > @@ -215,27 +226,21 @@ static int rzg3e_phy_usb3_resume(struct device
> *dev)
> >  	if (ret)
> >  		return ret;
> >
> > -	ret = pm_runtime_resume_and_get(dev);
> > +	ret = rzg3e_phy_usb3_init_helper(r);
> 
> 	ret = rzg3e_phy_usb3_init_helper(dev, r->base);

"dev" is the platform device, which is different from phy->dev. Phy->dev
is a child of the platform device.

We could be referencing the platform device from phy->dev with &phy->dev.parent,
but I don't think that will make the code cleaner.

Considering this, I think the current implementation is fine.

Ovidiu


> 
> With the above addressed,
> 
> Reviewed-by: Biju Das <biju.das.jz@bp.renesas.com>
> 
> Cheers,
> Biju
> 
> >  	if (ret)
> >  		goto reset_assert;
> >
> > -	ret = rzg3e_phy_usb3_init_helper(r->base);
> > -	if (ret)
> > -		goto pm_put;
> > -
> >  	r->skip_reinit = true;
> >
> >  	return 0;
> >
> > -pm_put:
> > -	pm_runtime_put(dev);
> >  reset_assert:
> >  	reset_control_assert(r->rstc);
> >  	return ret;
> >  }
> >
> >  static const struct dev_pm_ops rzg3e_phy_usb3_pm = {
> > -	NOIRQ_SYSTEM_SLEEP_PM_OPS(rzg3e_phy_usb3_suspend,
> rzg3e_phy_usb3_resume)
> > +	SYSTEM_SLEEP_PM_OPS(rzg3e_phy_usb3_suspend, rzg3e_phy_usb3_resume)
> >  };
> >
> >  static const struct of_device_id rzg3e_phy_usb3_match_table[] = {
> > --
> > 2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
