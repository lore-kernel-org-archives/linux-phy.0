Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01C6CCD342E
	for <linux-phy@archiver.kernel.org>; Tue,  3 Sep 2024 07:37:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z/93c6hmwU6BtBYqCILMNdJW1V5wOoqwJORFcRZBSjU=; b=MJemLTQapJ27Oe
	t/xx+l+nDQrBmbqrXEkwIenlgSLd/rMVLTrDmmrUd0MYTSOWa8ONWeEIRqc/Pj4ktMMXmdEUP8aK7
	WAmmBAnR2hx1yxpyOMlSfqRtIBuC6ND5kKTfUK7zWzCLtlVonoOrVsMCc6viQBQbySr9OXOIook1Q
	79Snmkj3/Pzacwc4W+VOeK5Kk1lFs/2EwnkooaNqhVhuZCJy/OcqZO/hYJLyIKP+okyBLoBcsHCsE
	eZ5q81d/CV3Ppm6POnFyIW7+LR4GK5hi01fwiQrdBrbavbCdoyzRlUN5tzAScQADYXj36iM3bX33P
	yo17kxFCVKVtRrR0fMPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slO6G-0000000GiJS-2zxE;
	Tue, 03 Sep 2024 07:37:16 +0000
Received: from mail-am6eur05on20604.outbound.protection.outlook.com ([2a01:111:f403:2612::604] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slO5Z-0000000Gi97-3n8N;
	Tue, 03 Sep 2024 07:36:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PqmAl9OvJ73hgBPtoy+DF2z8K9SF6twftAY6lFpW0qrwXGZQ88nw3KkOHdPlp3J6FwwNwbVX7e36iXQ2vzlc7r56DSf53MuM4RBLh5Ln8hb2HEAMvQbxCsc314GMHuMgsv3PLtEYDfCBxRpha/V3j5UBKb6/U6tyE5YPNM08YqauXRBB6QjP27FgLDhCW56zHiIctoygpJwGln6d9f+CIEfqquK2Adan/G3RFWh4MPtl3qudwno/TOL9K2jLaIVGgV83ahltN6PLlbiUofXfMkuPHb81hxR1hxxdj2HSgbAqHGy1px17CQk2IlYLJ9Z1o5RqSSxPSBQaz8q4hULm5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nVraK8nhVOVulJAZxC5aqFjqd4IazwcmU0v2dw5i+as=;
 b=N5XJI0uASBq+dvLPcpAoAuK/m72cZPcZJvRdF+hIdlziwPZALLRI5qi/q9Wo1HYjOegkI0WJQ9rXBad/8nnxNRdNGTqx2UuS/hs9si29bzI7kADtNtV1FsE+RZeNOchlaXuHeAKpyeMAHIPsMGhcIUqEe+xV+JWi0QrpqfIonush3L6X8Vm03DloqGfD4Ywb3fmnRzny5TeazXMF5KoBvG6Z8BzrlNwuLyH9tnIpN7y/VlwcdyjC3pI0OcE7qZl3DFMFiquZS9NmDxmlhxnUuK2VIilV+bkf1Ri+CDsX+sdrgFAkb/Jqu+K3cipSLargMvFk1GmU6GDzw/QfvHkX0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nVraK8nhVOVulJAZxC5aqFjqd4IazwcmU0v2dw5i+as=;
 b=PHX/mgQjRtMXW2DwArednA/QLr1cboxn5UZ+9AwwY3eWKjMocQNXd0IstiqhUZ2vBooNH/nLIHi/dY/MpEYWZj8TKOI4niPzyR9daF93mWfaLfYeKb2F74naYkgw3MYnHwzzi0ecAsByVbLOssaILrGT81dLv+50BYVZsvcpfGD45/2N503Awj0OwcSq0f7Lz4AMnek2LHO/GlbQ/iCOojhGA5XOTJMw7r7KbvYTMom7DintFnZ63bxM49cnNnwoNraIWSytDcAA2Yc5u+Mu2etNiDiiYjqcEKWnSu4rVzFRyjH19f0baY48FhZ6BtyFUhAn1WI0bef9waavfoH+uw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DU2PR04MB8822.eurprd04.prod.outlook.com (2603:10a6:10:2e1::11)
 by DB9PR04MB8362.eurprd04.prod.outlook.com (2603:10a6:10:241::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.24; Tue, 3 Sep
 2024 07:36:28 +0000
Received: from DU2PR04MB8822.eurprd04.prod.outlook.com
 ([fe80::4e24:c2c7:bd58:c5c7]) by DU2PR04MB8822.eurprd04.prod.outlook.com
 ([fe80::4e24:c2c7:bd58:c5c7%4]) with mapi id 15.20.7918.024; Tue, 3 Sep 2024
 07:36:28 +0000
Date: Tue, 3 Sep 2024 15:35:09 +0800
From: Xu Yang <xu.yang_2@nxp.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	peter.chen@kernel.org, herve.codina@bootlin.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-usb@vger.kernel.org, jun.li@nxp.com
Subject: Re: [PATCH v2 3/6] dt-bindings: phy: mxs-usb-phy: add nxp,sim
 property
Message-ID: <20240903073509.7fb6izjnbhtiocjn@hippo>
References: <20240726113207.3393247-1-xu.yang_2@nxp.com>
 <20240726113207.3393247-3-xu.yang_2@nxp.com>
 <20240829090935.ktc7jgd2en4qay2h@hippo>
 <2024090332-smokiness-virus-5f65@gregkh>
Content-Disposition: inline
In-Reply-To: <2024090332-smokiness-virus-5f65@gregkh>
X-ClientProxiedBy: SI1PR02CA0017.apcprd02.prod.outlook.com
 (2603:1096:4:1f4::10) To DU2PR04MB8822.eurprd04.prod.outlook.com
 (2603:10a6:10:2e1::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8822:EE_|DB9PR04MB8362:EE_
X-MS-Office365-Filtering-Correlation-Id: 54f7b52e-fd6d-43de-c289-08dccbeb1f4a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|52116014|7416014|376014|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Lkdt3oaqVumTOb0sl09ebbMtY4SuZCpd1m1b6ks37ZcDylpC0gsCx7zq43yd?=
 =?us-ascii?Q?Hx1LOx6Y00xZrl+YFa6qTZfzvZy0Fc3VfTeRGoG/zi+WIurNntSPtbUYhFyT?=
 =?us-ascii?Q?OO/RjcL3vEXDQv6FcLTlsEMOFDB28Ijk/Dp/96D5/NzLFZiRZhUwQ6bDL+sz?=
 =?us-ascii?Q?20E5+wpwwRnB7BPsmuCHF+6dJRxvFPNeOLaWeiZmTelvP8HPMcxE7/Jeph/5?=
 =?us-ascii?Q?2xmLMn+/un9PhCUnbcXGPcx7h6UIV0ZMqchSpp3xGhpeZxIOe//GF1y5nCOv?=
 =?us-ascii?Q?qETOB5hkTg4jmkUuuh/EIL+roHAGdlRJ+JWuW4AFm7gW/S65Y5RZQXVCq6fu?=
 =?us-ascii?Q?u9pqRk/0KFOtJWtzbdfJafcD6I+UNq3oV0MLCerCPLXhPK0zv9yHWaEDNtIC?=
 =?us-ascii?Q?IZpXpJ5/UB+H1LcKWomG4FM0aJVy38vrI9jznWkFrK4qp7LDbdXAOfaT4yPb?=
 =?us-ascii?Q?Sm6FKbdGSw0JKwR6zjv3hewsOibU/BD7CfSiM/VFhuVdyNj2xGWxh4ita5PP?=
 =?us-ascii?Q?oOmxeHZvWvy1a2S2JKq+Sq5CkHgXnL8lC5gpYNLUSXypLf7zAcda9Ukvv20A?=
 =?us-ascii?Q?UT1FrFWUBKh+kxmOMRj+JZt6v/JS1g5oaQXyvL48JlQt0AL7b1KOeDBkR3P/?=
 =?us-ascii?Q?aTqmqZ9EqOZ2Fi8FLHVoTOiy44FitNoHn2bGF81l8nk4NuYym4HzrcvJKzpW?=
 =?us-ascii?Q?aRCP9FQ2yvCbN76/+V78F6M66+EKp71q3KeqdUQ8Y7NbKR2xr0bfPlJfzrhC?=
 =?us-ascii?Q?yKP01Vi8Yay0wg32SFQz1EeZ4ktkvJoRq3KESI1l/dOuBEcEHjN0u7h70Hag?=
 =?us-ascii?Q?YFkiycUMhaiJEJ8uCL5XHrDUFnJO7A1ZMdO0RIFNC71aeY8eJX+6X0FpfrNg?=
 =?us-ascii?Q?/36bsd6+Uf/9S3o3kb5so9iNbYCmdRkwwnUnLhhr9zHEbL36bN/ohYZ2PIWt?=
 =?us-ascii?Q?bKfmnVJ5QQ8rQouB5Alq2Q85GILWuRTHDPQu1+pkY2uXj3WkFCUl7ejE3r6q?=
 =?us-ascii?Q?7P+qmZUBT2FPYdmuHRqs06jCd2rTunJRhQDecwhY+t+LDcOc9Up4VgPJBe9v?=
 =?us-ascii?Q?paKxgTaDTQhxZ1C1xDT+likPcYFICXM97V8LnXcwVqTn0soi0O/iffkojceK?=
 =?us-ascii?Q?UR9AjhUNzmZalKwsbNfcaIos1hg8c2zI8PNN7WInMv4nef1bPpGpsYkdMXO4?=
 =?us-ascii?Q?tAIn9Mwmll4a8hVQS8UlqiLLyDvwaZGor550obcB49mktb/b91Mta2ToPZux?=
 =?us-ascii?Q?e8bykY9iKw1Aoq8/KCKz6LXc1pD8y/3LTHSrKKnKhr4T//mTfPVR+guf9AQj?=
 =?us-ascii?Q?RmyLxydKX2WzciU5EoP4OCosBbCQKQCwDwwk+xelje0Brq1hKmTCbsdJneMd?=
 =?us-ascii?Q?PqSKeVmh90AlvrdVZXHe1iv9mVNZZ0KjbvhiG8YQQXksrBeZBg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8822.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(52116014)(7416014)(376014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TTGYARAkgq/r/uYD14ZShwWeJQjbNQIcp6ssfov+OzL0gfQjppqDgaL+05L0?=
 =?us-ascii?Q?GmaUAfF9E/tbbEEm3j7GhbJX1Lh+ZQCcT2p+3yvKOjt8Ouze+l3wty1Hdiye?=
 =?us-ascii?Q?pXW7VxGP2XadZnFXq/XnpZdAhRdvL4XCDx5dIwRjK/AMZnuIyRbSOdcapMAx?=
 =?us-ascii?Q?UmwTQwQozKmxWFJn0JPhTyNdgJyLFy7XLsWZ4WHuCMKPxeQ6a8mFJEhou48/?=
 =?us-ascii?Q?BbOr62e5oNUC2X5xg1IIRtRJUo/LakOVL5weTG6ESTFYcDWCGlcagK5tQ/Io?=
 =?us-ascii?Q?HGBoNrJxab68crPRIqJnD7NrkPBRg8B63FB8HnM3VH2UPY/llSkWsjeGiB8Q?=
 =?us-ascii?Q?n/f3t3zHhjZwGpWx5MXaXdKW2Ki7xLYaCKsvzTOcchJctYvRSsPq63Gmq2G1?=
 =?us-ascii?Q?wrkc8zBEuY0U3eB+QvTSntcY7SYkn9RK3TQ83FmNblAnFyQrRVzlvSD+cMkH?=
 =?us-ascii?Q?r6tY7/CqNv8o2tRipls7XD8yCyMOw0GNeki3HLE6IUg8okBcIphW+DMi5xWL?=
 =?us-ascii?Q?aapQU/gwvUloaSFysD9eabOFEnHIijMy2Ha4r4MLTbL8EzDFWJI63ahGKDrY?=
 =?us-ascii?Q?iDeESX5gWssfj7XJe3a+Xt+RiEZG4yTZ6htYdD+LQIe7aA9kvEar2JXXyNZI?=
 =?us-ascii?Q?uEkoNNE1K15vIt2DHDW/p4FwLSrEDE++M2xMOdk+DgoGa45A/xaiYDrWFBuJ?=
 =?us-ascii?Q?YZq/KCbIs67B1DFvT66QgiavoRwI7TOcDT77/RYX2s6x2N9iKXHOhbX8qxb3?=
 =?us-ascii?Q?5bMeyNruvZcqdR2m7BIEseXaky3fl6fomgBN+a32yckW3xeZo3eb6JcBVqug?=
 =?us-ascii?Q?I8XDNMDsbz4MPRhCDGn8H0qBGn8HaY3wV27QeXg/5sdbjznKeetmwxc1aoAW?=
 =?us-ascii?Q?/A/GpTulgAQ2Hf0n8rpXexOd39oocsVTal3hdT/S63pd13+EP3p9B42QJNO7?=
 =?us-ascii?Q?jSNA8d2CdM4+uVyY51AgReaO1phvwplVsoyFrT5hyNmG7roaA7HOn5a+U1Dz?=
 =?us-ascii?Q?qfctbUzrl/aWvllq1T0TT/HlxxxcjP+GTznbr0gZDRN+A3fx4CYx3RdsdAi7?=
 =?us-ascii?Q?R60sineFM/uERjXlj/ACB2jj1gCGtfdqR8m8fJ1Rq0JOowtruaPvPfS5kADB?=
 =?us-ascii?Q?scnwl6jIHMqF0kC5YNuQ7waIf3oMFLvsyLz4dAwV4dareR0S+SBuNVoy8o1j?=
 =?us-ascii?Q?tZFq3oQS53TUEGj668VETtmYLBgUaiaubZLROMhJW6uitmW2bSxixQVHdmQk?=
 =?us-ascii?Q?UhOVyKG47seIRTjP9U3WDXPOueSVbI2bl/56zEptzBEc5RxUAGJvMaK9+eBw?=
 =?us-ascii?Q?E3TMAfxTDKCUaQf+/HE6hhSb5/F/fQVo4YVa2IJhVvKeV+pSygqTEdw77V9l?=
 =?us-ascii?Q?oCpoYLlF//9ADMWvEirFhheT5HoOTfmZfi+lLdmXAKDmkHAneumUrg7bfzgY?=
 =?us-ascii?Q?ue9WYbQJkJKadaUK5NSns7wdYC0GFSNKffG7/jb8LoLjjOAPmkFA1BrRodtP?=
 =?us-ascii?Q?PgQ024u7hhnb3dwBhm3iBpU2saLQAbRI4BKCca7VZAx2FNIVdxUYD3sQYyLh?=
 =?us-ascii?Q?h1s5gbhKJE4dk2eVq3Sp66ayA+H00KJmQTWMfPCZ?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54f7b52e-fd6d-43de-c289-08dccbeb1f4a
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8822.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2024 07:36:28.3973
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: x2OFfAtaGRWzdrUONS439N7Wbh30b7o5oNzUm6GrVeOhd5hqCgbQ+k6dw+VBm0qET/0OHTy+O6H1GAp+tORTbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB8362
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_003633_972408_0F63C700 
X-CRM114-Status: GOOD (  20.97  )
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

On Tue, Sep 03, 2024 at 09:08:52AM +0200, Greg KH wrote:
> On Thu, Aug 29, 2024 at 05:09:35PM +0800, Xu Yang wrote:
> > Hi Greg,
> > 
> > On Fri, Jul 26, 2024 at 07:32:04PM +0800, Xu Yang wrote:
> > > i.MX7ULP need properly set System Integration Module(SIM) module to make
> > > usb wakeup work well. This will add a "nxp,sim" property.
> > > 
> > > Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> > > 
> > > ---
> > > Changes in v2:
> > >  - add else branch suggested by Rob
> > > ---
> > >  .../devicetree/bindings/phy/fsl,mxs-usbphy.yaml | 17 +++++++++++++++++
> > >  1 file changed, 17 insertions(+)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml b/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
> > > index f4b1ca2fb562..ce665a2779b7 100644
> > > --- a/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
> > > +++ b/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
> > > @@ -87,6 +87,12 @@ properties:
> > >      maximum: 119
> > >      default: 100
> > >  
> > > +  nxp,sim:
> > > +    description:
> > > +      The system integration module (SIM) provides system control and chip
> > > +      configuration registers.
> > > +    $ref: /schemas/types.yaml#/definitions/phandle
> > > +
> > >  required:
> > >    - compatible
> > >    - reg
> > > @@ -110,6 +116,17 @@ allOf:
> > >        required:
> > >          - fsl,anatop
> > >  
> > > +  - if:
> > > +      properties:
> > > +        compatible:
> > > +          const: fsl,imx7ulp-usbphy
> > > +    then:
> > > +      required:
> > > +        - nxp,sim
> > > +    else:
> > > +      properties:
> > > +        nxp,sim: false
> > > +
> > >  additionalProperties: false
> > >  
> > >  examples:
> > 
> > 
> > Could you please pick up patch #3? Rest of the patches are mainlined.
> 
> Can you please resend it as an individual patch with the reviewed-by
> added to it?

Sure. Will do it later.

Thanks,
Xu Yang

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
