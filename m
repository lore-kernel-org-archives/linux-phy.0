Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CBDBCA0ED3
	for <linux-phy@archiver.kernel.org>; Mon,  2 Sep 2024 08:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3DeKYspTJeSWu2cx26dRRAIrGM3zfuc6FM0Vknk1rmU=; b=jIpKajaBZ1RVpZ
	iuOjhM5hO0DOByxOWgNEwcHlFqXLDV54LipZzMsSQ9NZnIf4BddMF4j2zuw7GAr20HwMcVVNpRmhS
	6B1mNDG9DrQgaNH2Il6I/Dn+YyOdZKFYdXkQ3FcxmubNSm+qhD2VzYtqHVnDCil/o23DL4kQM65PU
	+2MSdvis+74w1942ZXoFsqzFd9fkiUBL25J1j2Z6TkDsZ5AChasz0Ujgl5x0oXZsH+oy2xqWzkegz
	nrZIlynbgHkNWfM2UtOUwY3r4hVT2Jwzj+0RJ+et5GG63JZGpBCLDJzoZ+iSndjiLRMMq6yH7nlHU
	IpNtdZoMpQIOH0VcNlnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl2MR-0000000DUEo-3mHP;
	Mon, 02 Sep 2024 08:24:31 +0000
Received: from mail-northeuropeazlp170110001.outbound.protection.outlook.com ([2a01:111:f403:c200::1] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl2Kh-0000000DTq8-2Yf0;
	Mon, 02 Sep 2024 08:22:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iwns6/uTDJY1ulPONghRzoV0vq4ed3Kf4Z6yMaFWOb4FqW2fjfmEMH0KdKa3USMDl1tXmZKKpDdTcrHNKaCXOiaizLsULKB2LdXLkqNqG3RkEj3EhP1M1nygfQwNHhg6fwOYntDZVbK9h11qO91w8xRhhmmfhN7eblSbDEQVqLu21FakPOwJNBtVcm8MGujI2TjyE8kdLhR4OMrEbwEbipF0rgQzQ0WBxrH08M8oJEPL+jwUBMyam68PYgc8CsNuvHRSkNtECgIJVHxGMPmCc7hQaSpcnobPbAhPOxknKX10tLH+z78Ftif0Lq5F+TlnFKEhSSG5I0R3+zjwTgNESw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6Wzsntn8o6XrTOKQSgC/CL1F3QpgW/1dizSSqEOJTtU=;
 b=QYylNthbBSePDcyW4gEnHlSxSwV6D2ZDhwiNnce/Rd6EaIY61npkKIuUQvrJoKvpKABD83sxUL2ImeSFL5ZFQUxhVxbeIWHW14UOu+pWwkqLS3XnB+Bhetvo2R1d5RHBv1zMMKpRialKBGu9jeHuTS4uYR5uyEx1s4hDL1gEIm1IX3JkbT32twRIod8bjIOA4JScU7oP/i/EFXKcHvNRdJft/h2QgeB68g+yyhC6swK3Q5Z3f2AtCp7pRqQWx7Mnp6EUGqNmCtts+H4n+mJ1hFXojholW6tC+DRbO9itbNN2c5+BommWPjc4slihYRViQ8YwlB6joPLBp3dDUrU0PQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6Wzsntn8o6XrTOKQSgC/CL1F3QpgW/1dizSSqEOJTtU=;
 b=VuI8iJl0yPdsUlkZ+9MEcTIWw3595/bk1ucHrB2bDjVNPff7S9n/rnsxL8fCyQFDJrvD+k+Tddl2aApYZeyH0OOy1c2IF3p/L9kZ9laSFwnCnaWcmLbtuGK1JgqFH/N1dJvF2VeiOulVpo3/JX+VMvTT34uY1sIP8Vr2LXOHz/DzayvZWrFt4IOBKhcyWpJ+hQ9JrggwkgfmRJVWWdqBk7eHUb0zTfYonfLVldCnprWBWPS2EJeDH5gqxxr5qFgdDi8BqhyWHxlWywQH86LlapV3wVOHH1QhwFNwCuiz/gPgLTJLxtTXnqSeGn7CtW4DKHPauOVqwti9aFwSDtuxuQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DU2PR04MB8822.eurprd04.prod.outlook.com (2603:10a6:10:2e1::11)
 by DU2PR04MB8936.eurprd04.prod.outlook.com (2603:10a6:10:2e3::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.24; Mon, 2 Sep
 2024 08:22:40 +0000
Received: from DU2PR04MB8822.eurprd04.prod.outlook.com
 ([fe80::4e24:c2c7:bd58:c5c7]) by DU2PR04MB8822.eurprd04.prod.outlook.com
 ([fe80::4e24:c2c7:bd58:c5c7%4]) with mapi id 15.20.7918.020; Mon, 2 Sep 2024
 08:22:40 +0000
Date: Mon, 2 Sep 2024 16:21:26 +0800
From: Xu Yang <xu.yang_2@nxp.com>
To: Shawn Guo <shawnguo2@yeah.net>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	gregkh@linuxfoundation.org, Frank.Li@nxp.com, jun.li@nxp.com,
	l.stach@pengutronix.de, aford173@gmail.com, hongxing.zhu@nxp.com,
	alexander.stein@ew.tq-group.com, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v3 4/5] arm64: dts: imx95: add usb3 related nodes
Message-ID: <20240902082126.spmo5ifgzqlf7gm4@hippo>
References: <20240826070854.1948347-1-xu.yang_2@nxp.com>
 <20240826070854.1948347-4-xu.yang_2@nxp.com>
 <ZtQgpYY9KjP9FUi5@dragon>
Content-Disposition: inline
In-Reply-To: <ZtQgpYY9KjP9FUi5@dragon>
X-ClientProxiedBy: SI2PR04CA0006.apcprd04.prod.outlook.com
 (2603:1096:4:197::13) To DU2PR04MB8822.eurprd04.prod.outlook.com
 (2603:10a6:10:2e1::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8822:EE_|DU2PR04MB8936:EE_
X-MS-Office365-Filtering-Correlation-Id: 29339fd2-4e39-4673-b37e-08dccb2868fa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|376014|52116014|1800799024|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?h8Ee9EMkCNpAn6z99+STzvH/+I0RytiSUPuO2GTzEBTvhnPt6pelsuUpnX6g?=
 =?us-ascii?Q?rmgXxa9XePmpDCFaJIkZ9Wy5AU41NqewKvdOgk10E4toSncU6GePhPAZPxtM?=
 =?us-ascii?Q?wiOSeIyTXKHc12atPbeC7dLRT1RKQXVmhivYo9j/D3vwwwn1ed9EQJlHnbN1?=
 =?us-ascii?Q?CwqNBWUdyUr3Shw2/Jh83hQUoWU4vgJLa5GXHYi5t/yMLA3in1d/as4+tNqm?=
 =?us-ascii?Q?O6jv1nq4hKUaYUy8M8//JA6vJszbjubRjBx6v5XWdR76r3ecj7R3/NIEQuvv?=
 =?us-ascii?Q?ohSDZfebuYcXcu66nfif9U22NDYWfi3M5WZlYkCnBiYUq6zki6kThMqXp84r?=
 =?us-ascii?Q?ZzT8CRPKtPEfqIPbzcK/Hmd+z27rM48lY0+8if/Y7MsoO7aZ9j2rxsBDZ76g?=
 =?us-ascii?Q?Bskp/Lw/Ungr1oSQsLUwoWDuw6N1vQ9OHUp5tSgMY5Pbpvbs3ge4vvhCWkdX?=
 =?us-ascii?Q?Nue5sPN28eym5sSKBEIaN/LU+W82OV5/4wyxjXrawRn3c75N2Khk3yRCPRu3?=
 =?us-ascii?Q?Q1X0u6zUNEqlROM9nuNMLj7oUafnI4PsZN/BN56oIq+nAQc7Ew3VaCcPP2SN?=
 =?us-ascii?Q?85HYWl7izkRovKpCeH/xdCf4sPwwRH3ZKq6M6NNv+R4Dy17M8qGcw1vVlta/?=
 =?us-ascii?Q?zbI7PIEuy7rIV4pV9NnLXYMcJrolaet53e81ROeifbYu77FjsPeQzl/DArng?=
 =?us-ascii?Q?nX+xEO7BN5TUL/69yGmqjE3IVPZgC6UfiqfX5JQ19W1pEs5+lm7H8pLInv6C?=
 =?us-ascii?Q?+H/bvPFJYZ8xgxRxUFqL9POvwVih4qGF8tYh1NVpzN5n5aYOoFk2m1a0Xg3n?=
 =?us-ascii?Q?OtwVS4DgK4P3WsPYac5dpGsOzCCHrM2cy056oXM8DOYbY62TcisT/N8O32lk?=
 =?us-ascii?Q?ztkALDORFq9TRTm8prUvvVM9QWZHLuQKeqy9VpMRFt+UgW/zYVk0MRummt6E?=
 =?us-ascii?Q?Vu5Dzr7micLEFyFUDMxXwEi59vYzswKT95ERcSQSKbB7q2L0lPoplmdFCO4L?=
 =?us-ascii?Q?FQfm8v+38vTpOnxH9MdOCt8SkznLKSu1WbWqtbLlzqC73G3NpG08TutDFZpF?=
 =?us-ascii?Q?TLwlyuKsYk0QSNYoRuH5O7E3S8U5cyJgjC9bS/NXLc03YVNJI2QqNNSOHUBW?=
 =?us-ascii?Q?/zVEUXau4yE9jzU816dpHJ+NJhd1TDbUGlPsHjkCYZf+x/P28yevuiWoT5gk?=
 =?us-ascii?Q?s7M4YU/3VTytheMMC6Npor/hKh6jAshwuLce/vEC0kd/kHeAAi/T8EhUONX/?=
 =?us-ascii?Q?RZ30jV05AfA0nea3fPqYPT/2HQ5nCEvAcuk3hRsbqlWC3IxirES48r5FwGWT?=
 =?us-ascii?Q?DRxnbfyBErotry2gwtJIlMXWxWqFaMXbYD6mRLU+q5DNIJZNdXgnyvHxyhTs?=
 =?us-ascii?Q?UFIgAABeCtdBFT6o81vb9kf9qUu+qsuHLCKu0KQrfPSWio7TBw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8822.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(376014)(52116014)(1800799024)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dHFl0oXwzvNALJQEs5gBmLX9yTTJlHqWTdU+FbWHW7xDXjkTD05SQA70jkSj?=
 =?us-ascii?Q?oqLUsSkZlLLhehj2m8UvyAE3veqLx9DnaDOW7L4nOOAQGa+pVEsXW4TiY1HY?=
 =?us-ascii?Q?zxZKq0ydlL51c4EXdgdUn/p6zMm47YT9arzq2mvAQGpJ7I4uli0aAisroZ1R?=
 =?us-ascii?Q?6dKGm46MBxLI7j/7zFh6O01KlXDiLRzRuOumICpvvFLU6I/RRxzqhQdrOILR?=
 =?us-ascii?Q?9uSNayblAxg2NGF5gn1kio+2fQ19DGuL+9isasOvTGwkaeGsGmo6g6eo5QGS?=
 =?us-ascii?Q?dcQAO62BcyJeFJuFwx0j180zpJH6Q3VQ2GkCZJ7Pkel0LQBQ8x7h67jAV1Qw?=
 =?us-ascii?Q?bKSvsQIl+sEreZ54pb9Q/Q4i88HjwA09KYpSiEI7q+8+SrQrtcddn4nSSJtV?=
 =?us-ascii?Q?Px0hjdq12OK/0Vwh6pWwjYHKmLduNcBc/Evh4X3Tun43+itx1INZ00ENLJB7?=
 =?us-ascii?Q?eIZZXcbYsbqR5VNyg2PvAdfeAWYlMlKpohZOUiZiWRDF9EhKGLRtR2bSHXso?=
 =?us-ascii?Q?i4zFZpjsAnZ4VHggALLlVJzW0p+swT4hMYPIbRHMqTLhTaQuz30KxVMP7qee?=
 =?us-ascii?Q?kwEhEspAmZsttjpqtF68FrycV+ZjPQiVUbwyP0RPtAC4sM8KpWa+N3rTo5mC?=
 =?us-ascii?Q?hOIw+eKAza7qGo8NaPeX5Thk/euwv8P02EGipqDLhuo46AgaTUo1sGcPFOxl?=
 =?us-ascii?Q?MvThTdAhPNFyBDxe/JrAUphXo89n0ahqOtzBO4N9+ibKyYU4rdtXV/rvR09T?=
 =?us-ascii?Q?1TSiWxNQ7U+2TizfSUnmyA7GoHiIMXQ4O2yOwsDtovWAy9pxW+CcYo+hK6cc?=
 =?us-ascii?Q?vd2iElCcpVlQdWYoQPHWMX3HnTUIVIeW1/FRAOHDwcz90eNsu/GonH3Y4Eq7?=
 =?us-ascii?Q?n/rD9e4eMI36EXwpjwxAgAucU+B1479JScIfK3X49LZ8IFBpBXKeq2yYB18x?=
 =?us-ascii?Q?WXCJvlpyrJNRmFASon119uNMlJIQZNaP2ZxEVeix4OnQT6ocGgmW+PZ14+k3?=
 =?us-ascii?Q?okXXQXn4+IzLBb2mL133M9fOuTPbTDzHsJfbGyxBSXzTxsyYNh01LvtLvQhK?=
 =?us-ascii?Q?/jaBvDIbdlr8UvXlGr4sPJofeR/W2vu302xbC95UdDRhlz+AbwKY4g8GUBQD?=
 =?us-ascii?Q?fwJ5+n1zpOayMuHNDi9/FKgpbVz6AaX/3/0artoUqEcTTPIeoGDjGfYlmQxd?=
 =?us-ascii?Q?slCXuML+BGPX6ZmCBhF7oiuhqvH4P9PA4P5hjc2JQMr3Zrtbe0NpSbLgYHcm?=
 =?us-ascii?Q?lXW59Ym+YoNbIMEONoT4ObIG4VBBqnUvBBRFJ9efNOjOw6g6kstmt09i+uNb?=
 =?us-ascii?Q?Hcf7XqY7GssMAUNQ/cT9I5U+KRdet0U5UElS/cFr0FbQ0vqJ+FzWp8Mx5x6j?=
 =?us-ascii?Q?Q3dzO7JHGdPJGBi3Hc4sejMlbbLvibTQjxrB+G9/F5Lsq3QtaPDXXBUpXhoC?=
 =?us-ascii?Q?OYhJbMb1/VMf+zaFFGFno/FS0+D2XQo8rOFLvHLs7l0N4vWYPzlJid5PsIf0?=
 =?us-ascii?Q?70AkfiWbz3rZ3I4J23DwbSgGLWOg7UoY06aUui3sEtCwFQCygurunwxJpMrY?=
 =?us-ascii?Q?FljkM20qGWEopOv4l6sQ/EuIUWQF/6QGx2xOaL8c?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 29339fd2-4e39-4673-b37e-08dccb2868fa
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8822.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Sep 2024 08:22:40.2824
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WnfTXDeTAbWCyyMEgWgXxvCyjKZBV/ccAJJJyELq4VS36oYZmmAXbpIEz0iAI3WLRoolzkB2jodkkNjPYoRfmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8936
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240902_012243_838777_4EBF4FD4 
X-CRM114-Status: GOOD (  18.59  )
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

On Sun, Sep 01, 2024 at 04:07:01PM +0800, Shawn Guo wrote:
> On Mon, Aug 26, 2024 at 03:08:53PM +0800, Xu Yang wrote:
> > Add usb3 phy and controller nodes for imx95.
> > 
> > Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> > 
> > ---
> > Changes in v2:
> >  - no changes
> > Changes in v3:
> >  - no changes
> > ---
> >  arch/arm64/boot/dts/freescale/imx95.dtsi | 43 ++++++++++++++++++++++++
> >  1 file changed, 43 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/freescale/imx95.dtsi b/arch/arm64/boot/dts/freescale/imx95.dtsi
> > index 1bbf9a0468f6..06a7c2f1e211 100644
> > --- a/arch/arm64/boot/dts/freescale/imx95.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx95.dtsi
> > @@ -1188,5 +1188,48 @@ pcie1_ep: pcie-ep@4c380000 {
> >  			power-domains = <&scmi_devpd IMX95_PD_HSIO_TOP>;
> >  			status = "disabled";
> >  		};
> > +
> > +		usb3_phy: phy@4c1f0040 {
> > +			compatible = "fsl,imx95-usb-phy", "fsl,imx8mp-usb-phy";
> > +			reg = <0x0 0x4c1f0040 0x0 0x40>,
> > +			      <0x0 0x4c1fc000 0x0 0x100>;
> > +			clocks = <&scmi_clk IMX95_CLK_HSIO>;
> > +			clock-names = "phy";
> > +			#phy-cells = <0>;
> > +			power-domains = <&scmi_devpd IMX95_PD_HSIO_TOP>;
> > +			orientation-switch;
> > +			status = "disabled";
> > +		};
> > +
> > +		usb3: usb@4c010010 {
> 
> Please try to sort nodes with unit-address in the address.

Okay. Will fix it.

Thanks,
Xu Yang

> 
> Shawn
> 
> > +			compatible = "fsl,imx95-dwc3", "fsl,imx8mp-dwc3";
> > +			reg = <0x0 0x4c010010 0x0 0x04>,
> > +			      <0x0 0x4c1f0000 0x0 0x20>;
> > +			clocks = <&scmi_clk IMX95_CLK_HSIO>,
> > +				 <&scmi_clk IMX95_CLK_32K>;
> > +			clock-names = "hsio", "suspend";
> > +			interrupts = <GIC_SPI 173 IRQ_TYPE_LEVEL_HIGH>;
> > +			#address-cells = <2>;
> > +			#size-cells = <2>;
> > +			ranges;
> > +			power-domains = <&scmi_devpd IMX95_PD_HSIO_TOP>;
> > +			dma-ranges = <0x0 0x0 0x0 0x0 0x10 0x0>;
> > +			status = "disabled";
> > +
> > +			usb3_dwc3: usb@4c100000 {
> > +				compatible = "snps,dwc3";
> > +				reg = <0x0 0x4c100000 0x0 0x10000>;
> > +				clocks = <&scmi_clk IMX95_CLK_HSIO>,
> > +					 <&scmi_clk IMX95_CLK_24M>,
> > +					 <&scmi_clk IMX95_CLK_32K>;
> > +				clock-names = "bus_early", "ref", "suspend";
> > +				interrupts = <GIC_SPI 175 IRQ_TYPE_LEVEL_HIGH>;
> > +				phys = <&usb3_phy>, <&usb3_phy>;
> > +				phy-names = "usb2-phy", "usb3-phy";
> > +				snps,gfladj-refclk-lpm-sel-quirk;
> > +				snps,parkmode-disable-ss-quirk;
> > +				iommus = <&smmu 0xe>;
> > +			};
> > +		};
> >  	};
> >  };
> > -- 
> > 2.34.1
> > 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
