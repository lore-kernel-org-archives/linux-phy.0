Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E2B4FF885A
	for <linux-phy@archiver.kernel.org>; Mon,  4 May 2026 11:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DdTuMj/JEwXwK3m8dYxmzIwMg3znEg8mUuGXVh8V6Co=; b=gI0GjeCZ+S/wm+
	NY61+8tWEanh/Q/cZEMDcSSGr3f4fTWSy2YumoRmlpl3pkD6NDpoCAY43VUCF3maGNOSO89SH1O9l
	9tg372khBA0QrhaUUAjKQE0+jfHRayzIXXUYPfLLzoqq32xF/WB+IczrACoIl+paR3JxddIfITuc0
	qVe8cM1ld3uQdwmFyqasNql8vvWoWwclks1STHe0hS4HHbq1071UVUBFnrc0+XUxDkbYzIWoT7J0f
	ueqnki0sx9illOR/R6V/fr9jam8IJ/VtQtqD9QF7VgCldB0NjQA3oh+1S0L0V4ew7PtwUOmZyECwG
	jXFZxBpv8+2648YAjSZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJrBe-0000000D0Zw-1taI;
	Mon, 04 May 2026 11:10:06 +0000
Received: from mail-japaneastazlp170110002.outbound.protection.outlook.com ([2a01:111:f403:c405::2] helo=TYVP286CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJrBb-0000000D0Yq-0voX
	for linux-phy@lists.infradead.org;
	Mon, 04 May 2026 11:10:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YsQeogSZv2SkpUd+hYueX1FK0zLtQabIbmJOtKATxekwcfJOlqfmf+zjgvHE3CGixEk2g6AuJDcDNfGQEBVO2qVMJqTX/5QvdcKxkdoUlREq6LwUS3iqf4LVqNrgfi3EARTskV0LI0YgScgNPoUSzDy/9SE7ypwYOBobps7qkLox55I1y6/Lg9A0c1N5t6z/RAlsx8uS5CQJmeSkZGYtoJQDTLqgjlxCaTXak2I38YvQ4yXC/syI5s8DmV7vTa0rdGMVPjVg7qD4DWyncXfTiiqDLGv8zvAL0VbrYzhgQIi+0pFCrdtMLEkIIH7W0lZ65ShASjTWwagbU9S5R7nqkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9VkOVpeNpTlMS8zhUD+PaTGUnV+sotObuMfPzJx5sqI=;
 b=aoaJZsMkiHJ3gCbd+FLkFGMbDy4+ishHMN+b9vSijUmvoBGkkjhmSpUG6lRqE8NyGT8XDwsnT1jgm/VQrVQMtMtfFPCcNNF8Wt4tDnUAccJc+Z4kQqjXpQo5UERyLChabVEi5zAoqmLqTS6y5PuBXFBHs9NIMBu/pgcBYKvoYglup+QfNXATmFt+RbU+Hbxq6ihyEvMMXp/dMXLaVpY9kmnCqXPZek7EVElbqW6hpCfCZShyOUDmdaiQv3vWUG8FOtIqaKDhVcII+IlJIKKcwotVoaMjkau2Bv8rvvmxpiMX21g4D39ob0RLbECVEXOMbnxmpa0A2CXPTDt9GiGNYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9VkOVpeNpTlMS8zhUD+PaTGUnV+sotObuMfPzJx5sqI=;
 b=aiMhRJgmCfZL8bioAnL/T+MpvfvragJI2hPkeYGRtUHgNCbtxjaZIZuCrDtlrPETjVsjIQY2rWlh0GmmouI/YEryRem3qegPSBXmd/Nkix07rFVD31BglTXcs79BR3d3Sjm62SfkRSO7+O31IUrm/DC/xEjgVS4VJwOVsqbkOFg=
Received: from OSOP301MB1976.JPNP301.PROD.OUTLOOK.COM (2603:1096:604:465::6)
 by OSOP301MB1945.JPNP301.PROD.OUTLOOK.COM (2603:1096:604:465::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.26; Mon, 4 May
 2026 11:09:47 +0000
Received: from OSOP301MB1976.JPNP301.PROD.OUTLOOK.COM
 ([fe80::888:6ace:31a0:180]) by OSOP301MB1976.JPNP301.PROD.OUTLOOK.COM
 ([fe80::888:6ace:31a0:180%4]) with mapi id 15.20.9870.016; Mon, 4 May 2026
 11:09:43 +0000
From: Ovidiu Panait <ovidiu.panait.rb@renesas.com>
To: Vinod Koul <vkoul@kernel.org>
CC: "neil.armstrong@linaro.org" <neil.armstrong@linaro.org>, Biju Das
	<biju.das.jz@bp.renesas.com>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-renesas-soc@vger.kernel.org"
	<linux-renesas-soc@vger.kernel.org>
Subject: RE: [PATCH] phy: renesas: phy-rzg3e-usb3: Fix runtime PM underflow
 during suspend
Thread-Topic: [PATCH] phy: renesas: phy-rzg3e-usb3: Fix runtime PM underflow
 during suspend
Thread-Index: AQHc1n7ANECNPwe9y0+ScapReaOqMbX8jucAgAEpLoA=
Date: Mon, 4 May 2026 11:09:43 +0000
Message-ID: <OSOP301MB19766FF764E6626FF1CD6771D3312@OSOP301MB1976.JPNP301.PROD.OUTLOOK.COM>
References: <20260427194741.161533-1-ovidiu.panait.rb@renesas.com>
 <afd-gj-F3OYDfCwJ@vaman>
In-Reply-To: <afd-gj-F3OYDfCwJ@vaman>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: OSOP301MB1976:EE_|OSOP301MB1945:EE_
x-ms-office365-filtering-correlation-id: 781429e1-9f6f-4a6a-f078-08dea9cda509
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: nHAXNUoJTUAO2bjK4sigZ1gLgmfKwYFZxhDmvIG+6gRdOiaWNwQO1049VSPY31LNHZ24V0ied4qGSxc8yuM3gsFedxne2WUIv/i+CRXVNVHJoYeS8meAevbW/KWMXeW3MXsQeYklkm5LLHBE23jQarzjqP6iBOCkZecHO50SCC6LwEIqZ5ry8p69TlBw+WHQCN6K4hhHsNDFFi74R5APfU41117PCO2xbdHX7hdFGAm2kfSTrYLuFXwHSwCKXzbp5sjciSvaTwx6ktXwtfdZ1gonJGcnFFEN9nlU0HscRZ2GiaUOSk4aX7yF88hkHJoLashNHJemHKMRZ6XXv0cAP6beJgTlXoi0Nyj41xq5Fb6lB/yHEpuBS6OJd0D+RXOEE5AQzAfyygdLGutTqr+mlZue77/lThLU8fcTw4YMAwbSfU1CNldGf3S62Kjy3yXhWS39d7p4GlTodP9SwYfNDOoga5mX4j6jXgJYwxVH078F+R5/E6KpnhL5NUkzvFrFpmsKNV6kNGe1lSwozcageYfbN7dVbWnQ9/ZggxSgh3te0Kxc0+fkhoJ428vjds5EZdQhLnaR9Lyv8Ve2wa7ysHRFYXBNqNPaMYNVLz8ZeS7dm8A3bSU89UiIJta5TwwdMRBomINzZKSRQklT3xruIty7nDH72hek44FsnTVyTe0Kdxx55M/+s4UoJN+iy0Bs
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OSOP301MB1976.JPNP301.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(18002099003)(22082099003)(56012099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vXecqXgipmgIdZHdyqb7UUFSTe79cJN1McN68/S2sabA9Ebw92fMovuWcCeB?=
 =?us-ascii?Q?GWeoxTfjwnbGsfTMGfHWBPL7tkvmRcny1yMwjRW1LwiyXGClPyxAbjC+67IC?=
 =?us-ascii?Q?S1WU+CNhcr0N9GvgASlgstJ1DlyRe/2/QYi9V85SbYEzJGEX0YCziCP4Qjee?=
 =?us-ascii?Q?eLUq2X0XlWexBBlsFv9PG5r6EoaQt05Xw0rfyqAYtMlnD1uTmEbZ//+WTSGL?=
 =?us-ascii?Q?6MsyxWys6Q4sRivG7893hWUrQGXNfiNVagGsLT5KD8zZVKbYLe4xljsZoMSN?=
 =?us-ascii?Q?icdz8TZEfAaK2oclv6QeFvkFG6EBjrUwT/aDbX1QYLlSRuzodCH9jdoKkcsk?=
 =?us-ascii?Q?kunP4eN1Eu/DLJEqDsAZkZxtVnyB1q2WTY7hwgR5KlcnBHSw0gE7MVsd8wT1?=
 =?us-ascii?Q?rAKxkT+Pt5NCajGpRaHAW1g4kmDdTJyz21tczsqWQDC8jkbV31tx0vuEhXET?=
 =?us-ascii?Q?wGh/AW5oeQVd7hBRcFYITabNDgy0z1qshTAGtzJBIf5r95xMUV6brXirLtzw?=
 =?us-ascii?Q?ivah/yjDj6hycmtZqBSKJxU49MA/jLH4NaJzrtXmiklICT9lFTJ7mxmVDQFo?=
 =?us-ascii?Q?IZzSePmxp1H3vUPc69aRwjw3SNKssAkbYyb7lC50ZpjXIt9vBsFEdOrex6tD?=
 =?us-ascii?Q?BbCywgyt58qgaafc+nf6ck9zsC3vDlIEcxCofsatLIKUbZzcPfKO99Y1dcrc?=
 =?us-ascii?Q?CdseJ8tgloDB7TE3tkiz3Ay2WgolPkcUesZVZUX4V+8nh3vfAKBR7yVilItY?=
 =?us-ascii?Q?z/eu6dTGRGptzstNhuip8Vx5CqzG9q13JKMmodfGVuj7w85m+sW41bX1MXzk?=
 =?us-ascii?Q?2zBJP0hg9dLLS94I5YuS09WgnSvrYNusrDBtFTx91S3KrIu7dBQlaI3M7NHv?=
 =?us-ascii?Q?Am9m1VrRCUp91ejb6pX73scF+moj+9DKUBtRVDzNvGRS8wgWjbTndTvTUPsl?=
 =?us-ascii?Q?c92A0GqPp+yhAZKre8j+GCZW/RDRDsDqOsyS6zO1d70lo0dPPQhoYLGsPJ7/?=
 =?us-ascii?Q?//RMSE0zr12JdSu7Yx1aFgVr38/UaMVREy8fSlenk6E8Moxf/QT3UwAcyFUj?=
 =?us-ascii?Q?XtbgSAAjQpYm33Pf29ynQr6tUHybtGuQLE0I4oobAF+McU3ycggU53FDdPIk?=
 =?us-ascii?Q?0jeAilf7boq5LYz97fbE09uxKaSjo9YNkKZAVx1TRtQkrYiIiT6Mvs0mNrmB?=
 =?us-ascii?Q?k+5Sz8S8koOerX7WedwmEGeCQgCOklfxIjGEWj1eqcCTy9iGgVITOQmNqyLz?=
 =?us-ascii?Q?M2smGR2HnyVV7xNpXoAX4Z2gzkKIYWfemj2SLjegTEchewrnWYOlB/HcZWVn?=
 =?us-ascii?Q?fehlfbvcPdPEwjAGv9Zc7cTklo+/HPxShmDDLG5/k/B5zUiYm+GSWEZupUVB?=
 =?us-ascii?Q?GQ+XapNT8+Q91SNUF3DtBhCRUAccodUHYluP/pQtOZlkw4DcvL6REn2mZGNK?=
 =?us-ascii?Q?y2aHwWFBw1Q2YbM7cDWnwbEIRTLN7CAw+hqQm0Tl9l8mAe6eoRnzJn/QjvM+?=
 =?us-ascii?Q?JZSdKUAhzoQo9U3rW5JBu8IX1E7fwgd58ZKxZqz0wdyBwoBCreqU0KPWQsH4?=
 =?us-ascii?Q?h1+pCiI7bqIYZQ6vZw7Gqonh75aQlrJmrdVCVzvOpkZdAZie4BRa3z/BAb3/?=
 =?us-ascii?Q?P9GJEAZ8LmFWwJ39tK0X4vBVnMe324pez7/8KgKYXMwj2vffHTrPLtk6hZDY?=
 =?us-ascii?Q?TXbHJdmxX53+gIUVuaWPfEU57xUJTNz1Q76eP72hw6JgjFyxJsCCwhVooYf6?=
 =?us-ascii?Q?bcH304O2/jAbOTNDxT3+TlrhDJ3nO/c=3D?=
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OSOP301MB1976.JPNP301.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 781429e1-9f6f-4a6a-f078-08dea9cda509
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2026 11:09:43.5257
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w8Ech3qksFQ2FGPJHc2jUmrim3c/3mImBvKiLCEI1cHZFTCElnCuCgZrW9MWBPDNAx4I5ygtwiyY2gP/IUWHpc1Zsv79tZf8fciH/3vufx4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSOP301MB1945
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260504_041003_301207_A3CF38BF 
X-CRM114-Status: GOOD (  27.79  )
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

> 
> On 27-04-26, 19:47, Ovidiu Panait wrote:
> > On the Renesas RZ/V2H platform, if the xhcd driver is unbound and the
> > system is suspended afterwards, a PM underflow error will occur:
> >
> >  # echo 15850000.usb > /sys/bus/platform/drivers/xhci-renesas-hcd/unbind
> >  # systemctl suspend
> >  15870000.usb-phy: PM: dpm_run_callback(): genpd_resume_noirq returns -
> 13
> >  15870000.usb-phy: PM: failed to resume noirq: error -13
> >  15870000.usb-phy: Runtime PM usage count underflow!
> >
> > Since the PHY framework is managing the runtime PM of the PHY via
> > phy_power_on()/phy_power_off(), there is no need for the PHY driver to
> > manipulate the runtime PM state during suspend.
> >
> > To fix this, remove the runtime PM calls from the suspend/resume paths
> > and add a get/put pair inside rzg3e_phy_usb3_init_helper() to make sure
> > the clock is enabled during init, even when there is no consumer for
> > the PHY.
> 
> Ok
> 
> >
> > Also, change the suspend ops from NOIRQ_SYSTEM_SLEEP_PM_OPS to
> > SYSTEM_SLEEP_PM_OPS because runtime PM is disabled during the noirq
> phase
> > and pm_runtime_resume_and_get() would not actually enable the device
> clock.
> 
> This is a fix, so split this up please
> 
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
> This does not belong in a fix, please split
> 

Thanks for your review, I'll split this up into multiple patches.

> >  	void __iomem *base;
> >  	struct reset_control *rstc;
> >  	bool skip_reinit;
> > @@ -130,11 +131,21 @@ static int rzg3e_phy_usb3test_phy_init(void
> __iomem *base)
> >  	return 0;
> >  }
> >
> > -static int rzg3e_phy_usb3_init_helper(void __iomem *base)
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
> >  static int rzg3e_phy_usb3_init(struct phy *p)
> > @@ -143,7 +154,7 @@ static int rzg3e_phy_usb3_init(struct phy *p)
> >  	int ret = 0;
> >
> >  	if (!r->skip_reinit)
> > -		ret = rzg3e_phy_usb3_init_helper(r->base);
> > +		ret = rzg3e_phy_usb3_init_helper(r);
> >
> >  	return ret;
> >  }
> > @@ -187,6 +198,7 @@ static int rzg3e_phy_usb3_probe(struct
> platform_device *pdev)
> >
> >  	platform_set_drvdata(pdev, r);
> >  	phy_set_drvdata(phy, r);
> > +	r->dev = dev;
> >
> >  	provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
> >  	if (IS_ERR(provider))
> > @@ -199,7 +211,6 @@ static int rzg3e_phy_usb3_suspend(struct device
> *dev)
> >  {
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
> >  	if (ret)
> >  		goto reset_assert;
> >
> > -	ret = rzg3e_phy_usb3_init_helper(r->base);
> > -	if (ret)
> > -		goto pm_put;
> > -
> >  	r->skip_reinit = true;
> 
> https://sashiko.dev/#/patchset/20260427194741.161533-1-
> ovidiu.panait.rb%40renesas.com
> 

I think this is not applicable for our platforms, as the power domain only
gates the clock during runtime suspend, so the register state is not lost
across runtime suspend/resume.

The power domain (drivers/clk/renesas/rzv2h-cpg.c) is marked as
GENPD_FLAG_ALWAYS_ON.

Thanks,
Ovidiu

> 
> --
> ~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
