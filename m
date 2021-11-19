Return-Path: <SRS0=M8cc=QG=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AF72C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 19 Nov 2021 01:18:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 22C4061260
	for <linux-phy@archiver.kernel.org>; Fri, 19 Nov 2021 01:18:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 22C4061260
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=nxp.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=81x+z/Xqp/hlcICKwvNC9YGAUE4+/3bwmYpMuY59gbY=; b=Vx8XNeFHfRnLYQ
	+HpW2Q/1SeE6pIjl1dJZNVFONsRqEdraJDm65qur7RmLXjCZApNnz3zw0zIWdZ3ybCfMARzmPFq1r
	djk/Q5y9uqSFykihh9he3XitWHNw7zOSXfkJcHtRrDD58z7CLrtzE//pbb4VKbd8IcTKXvHN/kH5c
	5yjY6RYGvRB5ncW7etd4mh0EA5+1j7HrRb+RXFqNCF6Q/Urbfz2fCJPDeB5OFBlvkb34g69le14Fc
	20P9yoQSfQPnCixV4Hnwpn3Ker60cRYBVXDTiusLjeHYOF3VJQ7plPq7PfD8MlDYrtuhnpAHHghZU
	0HQM3ma+bXs1jefx7zvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnsXX-0099v2-H3; Fri, 19 Nov 2021 01:18:07 +0000
Received: from mail-eopbgr80048.outbound.protection.outlook.com ([40.107.8.48]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnsXU-0099t4-O2; Fri, 19 Nov 2021 01:18:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gi7c3W7suPc05x+qWKcOBlDKZrk72vcShQvn156NVHfKMios9NjREZP9Q/rg3i9fDv52XdbE0naHMpy0WdZtyt0jpO91QPPaVF3/2wpI58MSG6/7FUggbZsGwHRG0zOtiX+GZ27O2WQsxpxfwR1kdRhiYE5DZwCtvM3rMBAFoxPUCSdN9Bc118P6kf6JFxgfBkcufKGV/SOCk1OTJZ/IutOXq91LaYAzb6YucWZGqUX121QKN7QSJF4Sh3/WS8pDJCgr0CW/eHLmmUdV0Srp/mcneLPkk+VwfAjax8yGeGn13wMddy9nODn4VfecNzcXaKLkyOKmgSGZAiVGtWFwbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BbZn4apwGbYfOTyEQf0jy0R4d8Jsw1alkHp32SNrEPE=;
 b=bPS8ALlyF+PQaO7hWhZ4wti+bc0kLjW95x4TyvpGG/PR/XjdPsYWxkLgQ7WOu2ykOwCMu2X/7Cya9tUb3LPVk7bKkT6mrxKO1nDvHLDKICS2gpN+R7dLDp9ORKaXS4SpYNjdGArV6rEySjj/JAYlzu/sOQ8d4BEeqd+rGzghG3f3QIJ9f8k6Li5tkASTBQcZalF2LwW0p44uh3mFnRwNtfDO9nvjJlFLYGaVkWeY/7GtM8Wh7ftkZyIGhyO3wvv8lKEW8N8tsaSxkq4Vc2CzH9kYyYxmNmW/VHGgUe6dCoiYDQwkHlIC6QxuXHKqECkdrtA10yAiJbL3Lnb8JBjZeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BbZn4apwGbYfOTyEQf0jy0R4d8Jsw1alkHp32SNrEPE=;
 b=NF8mZBkLjSmsk1sQgBAAyMLB0mv2R6A/uCYmMbGj1/pwYLNoWVODNacj8sHj4Mjz3iuFMn3tC8QozdlJJv8q40/SXrW7H0l8CstAsrq2/qS4GJzmo2Xfgm5LMR5q8+Q79t1whnnfHG7c582y3DMjFtPFOW5Iam2mXEjQL3RvUqE=
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com (2603:10a6:20b:42b::10)
 by AS8PR04MB9109.eurprd04.prod.outlook.com (2603:10a6:20b:448::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4713.19; Fri, 19 Nov
 2021 01:17:55 +0000
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::b059:46c6:685b:e0fc]) by AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::b059:46c6:685b:e0fc%4]) with mapi id 15.20.4713.024; Fri, 19 Nov 2021
 01:17:55 +0000
From: Hongxing Zhu <hongxing.zhu@nxp.com>
To: Rob Herring <robh@kernel.org>
CC: "bhelgaas@google.com" <bhelgaas@google.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>, "vkoul@kernel.org"
 <vkoul@kernel.org>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "galak@kernel.crashing.org" <galak@kernel.crashing.org>,
 "tharvey@gateworks.com" <tharvey@gateworks.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kishon@ti.com" <kishon@ti.com>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>
Subject: RE: [PATCH v6 2/8] dt-bindings: phy: Add imx8 pcie phy driver support
Thread-Topic: [PATCH v6 2/8] dt-bindings: phy: Add imx8 pcie phy driver support
Thread-Index: AQHX3CMIaTDMv+OFlEavEB4F1q+e/6wJ9eKAgAAXMKA=
Date: Fri, 19 Nov 2021 01:17:55 +0000
Message-ID: <AS8PR04MB86764BE4357EA6FCAD009FD68C9C9@AS8PR04MB8676.eurprd04.prod.outlook.com>
References: <1637200489-11855-1-git-send-email-hongxing.zhu@nxp.com>
 <1637200489-11855-3-git-send-email-hongxing.zhu@nxp.com>
 <YZbmy8asguINPF4O@robh.at.kernel.org>
In-Reply-To: <YZbmy8asguINPF4O@robh.at.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4ac7b605-ab0b-48ad-e1ad-08d9aafa6a70
x-ms-traffictypediagnostic: AS8PR04MB9109:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <AS8PR04MB9109B25C44D810A259BC15118C9C9@AS8PR04MB9109.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:935;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JDm4NQxbYEFw300faekduCBgf2AOu8SMpcGUHi82d+ozKvg7iRqBR8W5IgmHyyWfyZo4udhAOHWgiHF4Fl9Pqp9oJpOt6dXqPqNyIcjDj/v/gUcztIXH08zpA9NgU0g36erj/BB97RBUDJAGVEQQqhSuaemswP53YVz4zyrx93ZdsQNdGYXdDWAa4iYKxOZHouS2fICbJ9yoyqxRFjuLCvppocW/FQMHdXqBPRfGJ1FZiYSP8LYmUkO25vE7PhY9yKhYHPKys0JdlPY0LiKhBRCvKFhjnkpgN7VFHunLY+NNcE3dcoV1xJU7qjaw3zY6FNZyAuQijUsrDIbOmdhmuGl4lL3NBILrIPejAEoOtQw39kTSKgAYoOVngi/6mSc0QCbz4Obxe4SWzOluOK5T0UeeUNmC8kBNG+jdNnpCAPvGvU5QXTJcfJaDef94B7pDW2KlhftL2sFaHriD2hZT7EokIrJyrcPTCjeEMTZw+IMSF5b1ydO47VzL5pMcej+z7bdvJjFvb5VHN5PYEIOPHFE9eZ5MWIz3rhhrsB+g6FnaWS6La1x3NKDlnO4xulPYNX7jxhFwIDpk/LukifR39Dn52cYjOPJEDl6a6EV6wIEBxQkQ1VEQjNmM1Je/jDWQlkZ5B2x3EXDCZtBEkY8x7mhoRMBNmK0TtcPUbavu5DVNRbAc0Sc+2z8IK9ITCDdAGFfcL89j4wn+AEp6/2uUPQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR04MB8676.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(122000001)(2906002)(7416002)(38100700002)(38070700005)(4326008)(6916009)(52536014)(508600001)(316002)(54906003)(86362001)(5660300002)(66946007)(8676002)(186003)(71200400001)(66556008)(26005)(66446008)(64756008)(44832011)(83380400001)(76116006)(7696005)(55016002)(33656002)(9686003)(66476007)(6506007)(8936002)(53546011);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1G71lYFEPlOjwbFULJeF+NpwPbsOC9DKhIHJj/d0+NwpnJIN9TWXaxMhMprA?=
 =?us-ascii?Q?75tZWEv8APybVH9buz1odCvObeO5MBkLUDyo7V+u9EcoaYuSmwmm5qb+cLnw?=
 =?us-ascii?Q?0HsOEnzXH0WJSHgDzn7ES+HcniXAgkVeP6/1ZOsF5iz+JEw5dAiFIwQvPY0f?=
 =?us-ascii?Q?rnvk/QXjOvWxPn9LYdMqaXQOfjNjnfpZTeUAxei61PM61QGCjEcTCTWcF9he?=
 =?us-ascii?Q?VtQoa+RuUv2gQSGbQ9tsmzKK6B3+aKHXCKKJ93ZTwIA3LK6fEiUvIH0PX8DO?=
 =?us-ascii?Q?zgCSgn/SoCuLZ9kCkkDvEIYl9GZ1Z/YlnzLZg2tuVn29yYbBSFEX9O7vmAyD?=
 =?us-ascii?Q?L1JNpz4rtm9SJifSH1pbj289ihD55GUxjz8wgaT/Nm5LpxpQNotuFRaKsUet?=
 =?us-ascii?Q?hgdf4255Jkm9Djxx/L12quZQYo0UWPYlZahpg4Y3z58hwZgfh0jJrdnPUdZ1?=
 =?us-ascii?Q?luLdiHkeLxdVe8fgJUtROps42bszti6aYupibo57bezlbiWmCWeaD5Zq/irE?=
 =?us-ascii?Q?YhhR2+nloSqpb4n2ShihhIlbpVs7h+cP6r5xNNGnGaoLUnqqPq9K/94t4Nu2?=
 =?us-ascii?Q?FzfWU2lxZaAQW1K3OhtMs3k74VSipPvPzE9VEofhdhVkWQCGEa9kLaOHIg7F?=
 =?us-ascii?Q?aumc3wtkU+eoOs8iZCB7I0JaAe20nO0SLbN2rr5VxWWBwBzmdI4g8k6dkvoJ?=
 =?us-ascii?Q?aH/ERjW7NwGKN52uQhgK1qxUWAkA6G3sazoGyUXxUcHsFQ/T8d8fDpBwdqtg?=
 =?us-ascii?Q?hOZVCuYgW6qkEn75S8MMEsQO3NSqe5awqW+y4FF5tyXbv8FmZUc7w/RZL4I0?=
 =?us-ascii?Q?4lunEp4i1UAcam/GdlQckZRGj1beg7JKNZlHE7QwaZc3UTzRLYis+/wZJl+z?=
 =?us-ascii?Q?CkWx12ovWtMWkl9brrelN2KxkioRmZ5ge99UdC+a29/B+m/jseWtrWqPkVx/?=
 =?us-ascii?Q?7TCaqfu4sibClk2ClGFtnukGL0ZKJTKo2cZZ+yjkGal/eHZVUAlldU6Na6QW?=
 =?us-ascii?Q?LlWIlFaeCUcihX4btPBHYGvKpwACIflXd3ZkHAlO4oBeEBaFDyp2sZ4Ttt+R?=
 =?us-ascii?Q?Bkp8jW/DbT7bAfMGvKBbbSpCb98uLY0buR705WQgeSGMUBFqQFniMeFw5ekZ?=
 =?us-ascii?Q?NwQCh9J7HOCElAI3oqnwS+HYIhsCay6kwG5DDFfRWXq4RGV6JpHjziRohrqK?=
 =?us-ascii?Q?sahl5zlogAG0LLeVNpvbihGWHUZGvQZKWfRv8iJEOo8x3GVO0mB5cjONTzx2?=
 =?us-ascii?Q?1rrw3w9bx8F2Joq44jXzKHsOUHWVY+ihbt7VVxklhiTaiCZL/RmcH4xZYfry?=
 =?us-ascii?Q?ex1BqhFw5h/7MO91/Q5mIEPZx8qXx/zrilazmo70kiVFldDyC4oghuwtalGx?=
 =?us-ascii?Q?A1xK3edNKOGJbcADLi4T+9VvDAPmd8RF+QqSCy4WXfizHHF0WcCdTBB/5NjH?=
 =?us-ascii?Q?s2A1JuNsQ/cwVWehoAVg43/vtHe3hCYR0Ycm7mUzien8T1YWsV+ZLn1OLFOE?=
 =?us-ascii?Q?hccsDXs85gV7T7sVPKb5lQF592cJxbGRtRRO15xcmmTlrrnlB59DFqeToqED?=
 =?us-ascii?Q?hetg1HpMlbylWbKLiJ49QNZtrA3CNtuQZumNuhlBOGh+9vGdmR5v/PkXb7gn?=
 =?us-ascii?Q?EQ=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8676.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ac7b605-ab0b-48ad-e1ad-08d9aafa6a70
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2021 01:17:55.1654 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wlmIlKKbzpSllhy1RCJ9o1dOkCP7FrBhZ6iCupWxsE4szdtN9max5+i7zTGEHfVPCJvzaN3cxd0Dkm0IJcD8qA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB9109
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211118_171804_836943_D3CE337B 
X-CRM114-Status: GOOD (  13.85  )
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
> Sent: Friday, November 19, 2021 7:51 AM
> To: Hongxing Zhu <hongxing.zhu@nxp.com>
> Cc: bhelgaas@google.com; shawnguo@kernel.org; Marcel Ziswiler
> <marcel.ziswiler@toradex.com>; l.stach@pengutronix.de;
> linux-phy@lists.infradead.org; linux-arm-kernel@lists.infradead.org;
> dl-linux-imx <linux-imx@nxp.com>; devicetree@vger.kernel.org;
> lorenzo.pieralisi@arm.com; vkoul@kernel.org; linux-pci@vger.kernel.org;
> galak@kernel.crashing.org; tharvey@gateworks.com;
> linux-kernel@vger.kernel.org; kishon@ti.com; kernel@pengutronix.de
> Subject: Re: [PATCH v6 2/8] dt-bindings: phy: Add imx8 pcie phy driver
> support
> 
> On Thu, 18 Nov 2021 09:54:43 +0800, Richard Zhu wrote:
> > Add dt-binding for the standalone i.MX8 PCIe PHY driver.
> >
> > Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> > Tested-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> > Reviewed-by: Tim Harvey <tharvey@gateworks.com>
> > Tested-by: Tim Harvey <tharvey@gateworks.com>
> > ---
> >  .../bindings/phy/fsl,imx8-pcie-phy.yaml       | 92
> +++++++++++++++++++
> >  1 file changed, 92 insertions(+)
> >  create mode 100644
> Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
> >
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
[Richard Zhu] Thanks a lot.

Best Regards
Richard Zhu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
