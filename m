Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0C4DD17127
	for <linux-phy@archiver.kernel.org>; Mon, 21 Oct 2024 18:57:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wI+xdwezFQfSiCR2OpUS2RR/kYHkTSCo16qkyy+F0Og=; b=KC4Fs3Z5JAov2d
	fs5cxjfw/gTy1oFOOKKDeY7Mgl+cYjNf1WhWuZnsBJX2pTqJU3LlcVtxNjdM05hdz9EBM4MnmlR6m
	Bvi6Wh2A1sPjFhaOkyvURq/hgkqeYK6YpjfPRw+gcXfneavroGcePqSR+5oSJKOBVrU4qXsT6hjzC
	REDCv5HWNWo9u82ToSwYEn4P3Te07UaKM8HU1g5aSUW/9xmNjees0rxa6qbgQjtQWO+3P8Ewi/wh5
	fotK1hr7wokvHCQeZtZB7O61VYb6i5NOXa1MudBu9AW8fIntZzW0NRC2uMQflsu6tz/Wi4mX+nSV0
	VGmUFzFIgHYFJtL4FAjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2xas-00000008MtV-1YD1;
	Mon, 21 Oct 2024 18:57:30 +0000
Received: from mail-am0eur02on20607.outbound.protection.outlook.com ([2a01:111:f403:2606::607] helo=EUR02-AM0-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2xan-00000008Mqs-0Xyu;
	Mon, 21 Oct 2024 18:57:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RsXd8KMf2FYY+xxkmQ1P0ao3VHdchWn+Ac/Xuk++NZDx4bOBH1hgf5f8dbYezXp2s0D2FnWrcIFNeESvcpYXKwPY8fjopL6hw1AxajIEgkTx8vHra87C8a6QAHJ2iWEJ0L9r6pzNMnJrFNGYAyuyUQznLS5oeQ/JmmSUF+I+tBBiFV0mu7zQypQVZuWoWjQHdyjGlcDTedLNpVI93cQKfjP3tK8gcqPQcBwlpMrwHxheRfy/ZWWdGsl5HrhTPxGC7J1P4FQ6sNiBfqJapiWdR6PmNQqfRSKzpN53djBS2aLuhbGWOuaV56YC/0oBuBsLUE2tSeUi2uOkmUeOnHT5pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TKrGFzTJf7J/04kvDN8Qf6eVcDAAekt4GqOVRTOz040=;
 b=a7Na8RX1/d3yIfKrbuYmpOkXV8kxsln6xK0GIMun869b2XjLaJ6JcbaOPYOIb17zl1/gmHEpJ36XgdV2vlY8R5xrLOmupI8p8vbugUZgYw5PL9E0XA2AYppoz85Ze30OLzLlLAVpw3mJiOGSzMgJh+6gKViWvOLpeKyo833Iaif4ly121U7c08JCkL8nZ0cHmbEYubCC2ITHthtkqP8TpzbUxwepes366PqbX8k31QgV6Ad9uWj9jtVomDj40nqr8wvJEGSjq3MQAKvwAYB1ELDqvBdDC63U7r1jE7aN/zsrKqCbpk2pXbXTYlG1XLwOmzYCpnJ7AMr2VH816XPcWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TKrGFzTJf7J/04kvDN8Qf6eVcDAAekt4GqOVRTOz040=;
 b=lCs0t7aEXv6YDXddYJ/PFVtnKGpYZSw7Rt7zBx7M1RIBH8lWvL6nWfYcoypgXXUimK9FQp06546EIcoge/INSzrSnxbXf1rhIS09N6mO7zi0swt+iArXgyJixp7MboVnehH/eERH7QHHN5d75yKk21BGg3ExtSN6LKNVR93qdLs45A5oqYrJ4lS6FudkSFRlbnIH4xfL5y7ykwjfMN2Pt4Xt6hD5adx0N+qVuNPLl9wqZTuYvXvxFkDDaYaC5X364GQC/9LBClk+GO09Umu0IQXe1b7+CTkCOiA9gjeQatxhu6ATdaJW+4+Af1M2w/AZcQPJTVYw+mIEsJnKGnnQVg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PAXPR04MB9642.eurprd04.prod.outlook.com (2603:10a6:102:240::14)
 by AM8PR04MB7395.eurprd04.prod.outlook.com (2603:10a6:20b:1c4::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Mon, 21 Oct
 2024 18:57:18 +0000
Received: from PAXPR04MB9642.eurprd04.prod.outlook.com
 ([fe80::9126:a61e:341d:4b06]) by PAXPR04MB9642.eurprd04.prod.outlook.com
 ([fe80::9126:a61e:341d:4b06%4]) with mapi id 15.20.8069.024; Mon, 21 Oct 2024
 18:57:18 +0000
Date: Mon, 21 Oct 2024 14:57:11 -0400
From: Frank Li <Frank.li@nxp.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Xu Yang <xu.yang_2@nxp.com>, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	gregkh@linuxfoundation.org, peter.chen@kernel.org,
	herve.codina@bootlin.com, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org,
	jun.li@nxp.com
Subject: Re: [PATCH v8 1/3] phy: fsl-imx8mq-usb: add tca function driver for
 imx95
Message-ID: <ZxakB6uVXb1GEnyi@lizhi-Precision-Tower-5810>
References: <20241015111018.2388913-1-xu.yang_2@nxp.com>
 <Zxaa25TTIgDwOItL@vaman>
Content-Disposition: inline
In-Reply-To: <Zxaa25TTIgDwOItL@vaman>
X-ClientProxiedBy: SA0PR11CA0072.namprd11.prod.outlook.com
 (2603:10b6:806:d2::17) To PAXPR04MB9642.eurprd04.prod.outlook.com
 (2603:10a6:102:240::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB9642:EE_|AM8PR04MB7395:EE_
X-MS-Office365-Filtering-Correlation-Id: 91cb1520-1eea-42cb-e576-08dcf2022f8a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|7416014|52116014|376014|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?tA+BdX0G0ELfEU0RrdPLUVrb9bL7bSLDSw4OBahHiCyjlZzujGVMAfKD5y7e?=
 =?us-ascii?Q?5yYo++U2o6XhUtKJyKQZSQI3ciH+iSgIoXwNwrh+tw//WFUFN1Bae/Y4aUrR?=
 =?us-ascii?Q?hx+HRrNkmVt5msuHX7W7SQGodiqa315XCXxGVz1OjKjA5bNYsIdUvNpZHuqp?=
 =?us-ascii?Q?vfSAPlc3/0/VAfwvjS51aGpWveSPoAYJnQOrCWudVuP4xuGPU2y8IW3BOBlP?=
 =?us-ascii?Q?9LPb3HnUQ5KOdwYZMKAcKfr+1npaJzyHYXwBFGeEHXPh1F8zEQuABLZTxBHm?=
 =?us-ascii?Q?Lx33ugd+SA3fPrsBjyuVFQGvXx4mPQaKLAZVKi6VvQCBRA9cHAmZtCvYXLiA?=
 =?us-ascii?Q?d6gC9XFub4eb04BH3CEHYL1LYdpYA05quSzDLOoRXWDThgo2iTs8fijA6kWK?=
 =?us-ascii?Q?QVg2RHvgqd99RSL/XzCza+wlrNIDFE97VIx9PKS5wq9AY+zrpUNkf2aEm3D4?=
 =?us-ascii?Q?yG7vU0UQZPqldBIl+Kyjtm8esIjhjTMMpvcX8xkevwW8S6kIVZF4cbkNG1Zb?=
 =?us-ascii?Q?5uVFi7E6yvFYmIgkECamC2bkftLHfmN9Md2zBAxb9NQ2AeE+lDoeCzHIGD2I?=
 =?us-ascii?Q?zt0pN3wHtDrwNUp2DUhbfcUxJBgCRtp2m0gGpVtydOTlGREi5uJC6wbSgQT4?=
 =?us-ascii?Q?ftyujOoH4nJD3n7/39dXy0EKA0YhxW1BntaXg3tXnXTWQP3CAGnZwVMTqjBd?=
 =?us-ascii?Q?dc/8ZOLIIZUSDZmDklP8hc772kAsbketUWzqsXAMTZoArgXpr8fhRFvDxRlR?=
 =?us-ascii?Q?Tk5G3n/DlKGNQHO8uNcUVUCai8rnQLC2ZY51PBwwHuiOMq2tM0MWLQ/d/Oex?=
 =?us-ascii?Q?BxKsAflIbi8l+kZ5sV0leX0Gfbs7NOfsRd184pvgy06mqVJ1CpmTq/pRHo4d?=
 =?us-ascii?Q?/G67B0fys/D6PZ+E+6tB9jqBYF3o8pUB4ClcIGWOPewDboP/RodQbjSUQ5Nw?=
 =?us-ascii?Q?un/5zkQjEVcYxAd/e2QbTO4eUf3qdNYhwQ+vTq0qQqtrg3+q7jiAQokrC6P4?=
 =?us-ascii?Q?RaPOCV0Nqwy6yHkK5RELvlFcwR2LUxtNqT2XnJQfqR9eacMp6ltbJSamaRuL?=
 =?us-ascii?Q?1zza92kbxfMK+l6eheEKiGfwB5VvRynkgfxVfOhbyqhwuHXc7pGlg1jpmOZh?=
 =?us-ascii?Q?WKwpF1AGDqVqeaoenk7wQvkmpZ2X/n0BDin/rD64TXH8LhcpoHhIeMIVYtWX?=
 =?us-ascii?Q?hj/qSqAaCKwkRUr7T9VSzC4KirUv8Xp8GVqo2NKUk0IdCWvzGjxRO1GDsJSp?=
 =?us-ascii?Q?nFGFD09LYR+tHlCrOsPcKb7npIQL9kUYkD0qNhS62PofpkuQHBFoZD4lCIti?=
 =?us-ascii?Q?30O+qOAql0Dthm7M+QZ3DCCCP3g5ktsgFJWKB4zH9FQmrhamhn6VTxmie/gw?=
 =?us-ascii?Q?kgc9JleMFP63qj8HNtaUJnZpWZBe?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB9642.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(7416014)(52116014)(376014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vHLVE2oJb6Gp7lkVFKuwfURCJDdM+MoMbJ97ldjrXt3RKbmgNzjvxZIl+0Ca?=
 =?us-ascii?Q?r0IIS+jstmmTwOXgnmsIMysDBp3XcFfnXKktzqSr/KqIsdmbgXgPlf1+gvBr?=
 =?us-ascii?Q?j8CYZq32faSdGQQsW1+x44lZ/UPw41F8VBXLyefzzdI04MFGWUyLIcJ6BorY?=
 =?us-ascii?Q?MiXSuyti1NJGh43tAsMNlZO5gaG8xTfUjcfxB2xkkOHBbYI052zquXQtUELS?=
 =?us-ascii?Q?ZE7zvK1OTLAarFkMYFPS/T4ztIMdLwaYE9X39K1RbUisVrm4lQW8VUVAzSG4?=
 =?us-ascii?Q?KLHJJu/r5tGukRRVP05YbRupFhAFhTpoFyXC3hs+PxG0/bXAV69YvcPl1V88?=
 =?us-ascii?Q?FNk2A/rYzDmMNSwK7k425AmTyEw+xpKQ9ZJiLZKqQ76yDOF//ClxnN3Gzad9?=
 =?us-ascii?Q?JH34kFE7l4XAoLq4hg2+Np/WnWpLiBzUG0sGGjRQLDjagGIzrfKaWNVfXp8M?=
 =?us-ascii?Q?5kTW2Tl7EU367VtVMSA8rki3BdR09gyd6rsEKRHDyadG4UMRZHlOR4DN8wga?=
 =?us-ascii?Q?28dnhWrJ9/UGBcDyMxEEvY2i2ClUlD7H3QceOly0M7aoA9YivKlH2i8I2YYQ?=
 =?us-ascii?Q?dYYLKY8qK8mL3r4uxz+bOF6q8R8VFxQQZcsc4jdJr5Dgk1fpcoMYifUlrBb2?=
 =?us-ascii?Q?vW+bC6ET1LE5n13OKlHt4HmUFl3Nc7+qcgA6GHK0GaFmcgh3oiwwBY6OzzpW?=
 =?us-ascii?Q?VDEOfswRbxwpw88hKUdoxMNZ2ByHI9pWm59qkmqZzv6hh4XCDA3JnNiArjyq?=
 =?us-ascii?Q?T+pxeLQyrcaZO9iXyWRLvKnZKEOAAfFWLHOim82OtbuTJLEnYeikn/xS6pDF?=
 =?us-ascii?Q?FQdWgWT8Dpo5CDFC7KqRfGnDdnDzxe6GCmQP/7aLBPcoep01xM2g35iFdg90?=
 =?us-ascii?Q?aiqnAL5sFYrkCb/lwzMe2010bH5BDWWlgqKKmRRuXg7V/p/lwkH11/EhrZFb?=
 =?us-ascii?Q?BRwzicJGF+lxat5aSdZ0Rv3CFur7yCjcD+gaRwHd+6ynobRZNCuMdlvs41JH?=
 =?us-ascii?Q?BjswMh5/IfJ83PizAKy0W8xrb5QvGz2zVK7ppCiIyhOynmlBkXX69BI53Ewv?=
 =?us-ascii?Q?c6y/k2dD8/lveRAnHH75ewIh5/m1frNh44aKqH0B7FEEnIkvcNZMxT+weIAz?=
 =?us-ascii?Q?CHAOjOkCuVTGccoMNpVIKHNHSmNUQjPzbcqwsB7CHSBmfHbCPr6H8pPLpnNZ?=
 =?us-ascii?Q?QaIDCq7h6BA5PqW8YVDwUQ5ECoJKU/05prmehb9JRbXP+oM5W/T8XjkVYvzN?=
 =?us-ascii?Q?ad5lpPdFd1Aj+uyhsqlV1MtKNOu8/Ck1IpJ0w+oRFBJHXOAUxm7jYezMJ+A5?=
 =?us-ascii?Q?a45KIeLPKPiSwKkDA12GIRCGVzIaNkfeKFYZuQDW2z7G54+NL2j/GEGYgnKi?=
 =?us-ascii?Q?aTqo6mZInvDUFRqjuYyQhGUaIDKmIL9XORv4tP4584UtOclb+i/8XQ1D2W0Q?=
 =?us-ascii?Q?+IJJLXUg2JyQ59F/u6vJch/yA/xVa7fU/h9HeVSHE0h5KaIzlleMQkXcSK3q?=
 =?us-ascii?Q?P+AzXkKqhzVbrBygI0o4/57kwZoYer7Vu50kJzlT0Uc3QUIB2aQaKD0CgupN?=
 =?us-ascii?Q?eNkUUNQnNkVhqtp2DmytfHzIaDS4D/X0qGlNoOC2?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 91cb1520-1eea-42cb-e576-08dcf2022f8a
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB9642.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Oct 2024 18:57:18.2462
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qnM4r91N6eqFQcRWICUSBmYln7RdhfvcENc40H+jQb+v1b21sZQwxaNs9dSnNT+H08+/rz2gtTIyHcunphy+wg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR04MB7395
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_115725_231854_8D7E0920 
X-CRM114-Status: GOOD (  12.25  )
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

On Mon, Oct 21, 2024 at 11:48:03PM +0530, Vinod Koul wrote:
> On 15-10-24, 19:10, Xu Yang wrote:
>
> > @@ -359,6 +587,8 @@ static const struct of_device_id imx8mq_usb_phy_of_match[] = {
> >  	 .data = &imx8mq_usb_phy_ops,},
> >  	{.compatible = "fsl,imx8mp-usb-phy",
> >  	 .data = &imx8mp_usb_phy_ops,},
> > +	{.compatible = "fsl,imx95-usb-phy",
> > +	 .data = &imx8mp_usb_phy_ops,},
>
> Where is fsl,imx95-usb-phy documented?

fsl,imx95-usb-phy already in kernel tree. This patch just add new tca
function for it.

commit 814ab2641a22c0febf425d0a19c9cd4df00ba4bc
Author: Xu Yang <xu.yang_2@nxp.com>
Date:   Wed Sep 11 14:17:16 2024 +0800

    dt-bindings: phy: imx8mq-usb: add compatible "fsl,imx95-usb-phy"

    The usb phy in i.MX95 is compatible with i.MX8MP's, this will add a
    compatible "fsl,imx95-usb-phy" for i.MX95. Also change reg maxItems
    to 2 since i.MX95 needs another regmap to control Type-C Assist (TCA)
    block. Since i.MX95 usb phy is able to switch SS lanes, this will also
    add orientation-switch and port property to the file.

    Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
    Signed-off-by: Xu Yang <xu.yang_2@nxp.com>

    Link: https://lore.kernel.org/r/20240911061720.495606-1-xu.yang_2@nxp.com
    Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Frank

>
> --
> ~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
