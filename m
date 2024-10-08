Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C2E2CEDD90
	for <linux-phy@archiver.kernel.org>; Wed,  9 Oct 2024 12:55:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Bww28JFwdJ6ZnhsxapdUirIh3JpwCDPJVNaBpZnrom4=; b=2WfTO5YyjiWONN
	xEQ+cwtft0Kji53GEXCqk8kqAmWRx8FAedmfDECh/1kVvetq1pe89YeHPCzat7iIOTbiJwnoMFCMJ
	QRlIvtr6ZqDq4JiD6umJF73yZq2l3Q4cqS3L85tz+c04KL3ExOLDRU/y2dEunVdltNpPlYRnd4ait
	hkpu0GYT2JSu+Q7sh9ONK6s9awycAp5LBPHIE4TCSN9wZOkWcYI+o2pBibIUvzbn1U/OqGNIutA33
	ujuZYo9Iy9PzJRraonLEFJQsXPiNmAr8XHSNIHuW64LQW9B+JYl8aGjYk+mDkBLEnNuWblIpuQBrN
	NjFCavSJjBW+Gxo/BJsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syWDd-00000009JOE-03Bk;
	Wed, 09 Oct 2024 12:55:09 +0000
Received: from mail-sh0chn02on20702.outbound.protection.partner.outlook.cn ([2406:e500:4420:2::702] helo=CHN02-SH0-obe.outbound.protection.partner.outlook.cn)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxzxm-00000004I09-42go
	for linux-phy@lists.infradead.org;
	Tue, 08 Oct 2024 02:28:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kBRl12oD5TSlXNvGaWZSLFzIIMZwzfuSKwndvHo6yHgVlVexLQXW5pL5JDWq7NGUbl6z7p6aEW5oZ9MWtVpmSZsvx8XKyCYzPpnVqI3XdsfImq3vrsGhUYDvTIEPwrVttKYapm1q+XbIerHjrQhPg24FYQMJcQ33o/8oXU2tdYmxwb6mBBbLs+RNWZkJumaf7eZrP49iBWS3w2OmZCqeMYswjhD24h7cNXt8R2jTzNqPU53jxkJZiEPcMfPDfW+v9hi7fjYuydR7Xn3C2Opl3xto+B/Tv/B3kAPInsnZ1HpB0OXnpw5/NHioAMvkkr8ATIVz+uCUe2PZysvS7ut3VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xpopqWYUsWXDFyCNBnY/t7U8DUKL80gYxINIkoa7sA4=;
 b=MKMBqQU0+QjRRw5QWwrClpzKn3g99MjHYAR3lbzM0l6WKI+jzqwaj+4XrD6zqXan4j8wtU2+dj/vJm9qAMuK8dcHyYL9EGIc1qTbeFE2fb+TU0bZ5scF0EcNkl9Lhkk2sFCJ9ljHSihJTd6ocE+VjCATJOyi/cIvkqCBw09T8KPDfxJxcbRIWUhM/zUxbEENnohEL9hevE13xLNhYUlRx0MM8hJVgI2WPjnA1UWHVHs1ZTfZLZ0MbglfwFYmNJ8z6SAQWzDJ7vvT+2X/f778fy1/eZiVpwAYgmuNIJWbH3XJEPBMnkzRR/7AEcug46SiL3kP6uHN83glyoA6/Hi88Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=starfivetech.com; dmarc=pass action=none
 header.from=starfivetech.com; dkim=pass header.d=starfivetech.com; arc=none
Received: from SHXPR01MB0863.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c311:25::15) by SHXPR01MB0750.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c311:25::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.31; Tue, 8 Oct
 2024 02:13:24 +0000
Received: from SHXPR01MB0863.CHNPR01.prod.partner.outlook.cn
 ([fe80::3f35:8db2:7fdf:9ffb]) by
 SHXPR01MB0863.CHNPR01.prod.partner.outlook.cn ([fe80::3f35:8db2:7fdf:9ffb%5])
 with mapi id 15.20.8005.031; Tue, 8 Oct 2024 02:13:24 +0000
From: Minda Chen <minda.chen@starfivetech.com>
To: Conor Dooley <conor.dooley@microchip.com>, Vinod Koul <vkoul@kernel.org>
CC: Kishon Vijay Abraham I <kishon@kernel.org>, Jan Kiszka
	<jan.kiszka@siemens.com>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, Emil Renner Berthing
	<emil.renner.berthing@canonical.com>, Rob Herring <robh+dt@kernel.org>, Conor
 Dooley <conor@kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 1/1] phy: starfive: jh7110-usb: Fix link configuration
 to controller
Thread-Index: AQHa/SjhiXxDr9AYPEm7hgAwfhkcBrJPVUuAgCz/r7A=
Date: Tue, 8 Oct 2024 02:13:24 +0000
Message-ID: <SHXPR01MB0863C2FA75EA8D7621B5AAACE67E2@SHXPR01MB0863.CHNPR01.prod.partner.outlook.cn>
Accept-Language: en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=starfivetech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SHXPR01MB0863:EE_|SHXPR01MB0750:EE_
x-ms-office365-filtering-correlation-id: 5e80b940-abc0-414a-0dc3-08dce73eca0e
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|41320700013|366016|38070700018;
x-microsoft-antispam-message-info: 8DCRbEjdV2zV/CTi+NkR3AjHrsPe6A4VvcYP2AWRb93TdhFpRr9cgDhEwpcL9tCpt8B+QNIEA6jHdDqk9+UVvi+UVv23BoBx/EtgUNYN50vVLMryd3n8T0GNqerqStuXi3LqvyvbLQfpmaSJgtbXqmql10JX2F7BToUMcbmWyaDehoI0fmwOY05uxpT7IL5Ijy9y3eQcWpTkru3E4wEtCD6aXXa6zGPCGT8xudy8tyhktTBUEb52o2DzHHL6tlw1aHK1sssrb5RAhGbpqhED9EGH2rLovo8ps0ho+n84foX4+0T7qPHWTVRDbc+JtpPB8TQ0l6xiqaIGhlvD1PKZy/qO2P+JZSMFjImmYkCG2mtjt8P4ujpnG0gsGzkK+YnWnBGvBFwutUgsiEAMoOAkY9t68qHlOjIbKs3riBwpURALE7lvt2HuXUKB4fL3nQHEnCujlMUDbOsyAMC5PAC8IxhVDSWkBG8GwiKTcpUtnxGE3Ns26wj+M5noYSdKvGP/d0nqLKsrAhMv2SHfA/WNUxrzB8rykGreB2nApPFwmGJqvAIv1jEUBwTFJDB0E5ts065Igx4xGBm0sANlUeu9lxqqT8vaR9j/vRm6tf/QE4MHDGGMmlJPy6QQVImfyKrj
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SHXPR01MB0863.CHNPR01.prod.partner.outlook.cn;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(41320700013)(366016)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KixYJnoR3lQg3bAghUEH9ycsdrhHjeLNpKg49t9gExdtdY2yRP8L4XwtwmK+?=
 =?us-ascii?Q?F4tWKf6P29vHsmkdnkqgFnqJxF0ySrl1wvMyiIdLdEGgjHkhc/QhnxsLbe3e?=
 =?us-ascii?Q?h5aVRhSFvLsiszA7VsKwHaQYELFiUjOl9EJr8zcO98BJABJw/mjFA39BAOS1?=
 =?us-ascii?Q?S7ILXGAFQJWNg5Z83DY0qp3lkI+HNTl64oWmqnaCYQ49hxqr4tI35jGDLVNH?=
 =?us-ascii?Q?KpU+iZBjkk2t0/AEOa++QrurEo2pBWnSx9cavW0qETogVT24FqsgsxMRPooY?=
 =?us-ascii?Q?xQSSNrYaYqE4DDiAiorV8K8WuzVw4MnC7ODFw78fq0KbcFvszqYMJ8bMPa/r?=
 =?us-ascii?Q?Ho89Tu3IK+wMeeWFo26MoaflMcKXQTmiX86mlH2q30dGTWO99W+mo3IwmWjt?=
 =?us-ascii?Q?nshcnRcCv9zVqHJuaPmJOQTGXrtwUgrBUxwiq8L24lufFRly/I1uaAWSeual?=
 =?us-ascii?Q?uLInh8NaSImmn13PYFGmKbV2zh/mMf/13fNIOWUqd/2sRC0TelMD7Oe1aQ4v?=
 =?us-ascii?Q?Q6/EhtgmCN7QaSVMuV/rPXl9W8VRggnc9/sDSKKCdfMv7RdAQm4Eeb+pxtDY?=
 =?us-ascii?Q?JwFXFQrlDe8yhDdL2Xiw8xGWs3XmmCfr6BqylY0TKzs9N8hNCSyptxlRsyj5?=
 =?us-ascii?Q?x3Pba+flyC9sYY6AbKjmeayUao5FgLHPeXjy2lrqlXFOqzCPBeeoT0k8vzuD?=
 =?us-ascii?Q?T3GJd0LNAmqwMC0pJv3I1LQQm/fVROqE3UnSxQAlF995plKkGVUJznIoJNeR?=
 =?us-ascii?Q?qQikOhqrMbR3L6gTxHGmCekaQUfLHx83/jGTiR1gBZtF6KkCbtE5BKVyuKEv?=
 =?us-ascii?Q?s6BsShCWt1c5CmauPNjJ9yV5JxZ20yL/Ub8lMqvZj2tZj7nUmHV9FMldSjiI?=
 =?us-ascii?Q?7HUF1PgsQjo1I55vxLcpt9AEtVAnRexLst9ZDwPGXNimRuDvhuhqtw7fDovZ?=
 =?us-ascii?Q?x8w3/VEmzY2qyV8N84DvKq/s0dH+DOiq8QwN4D8q+sly6MVZfZibBX2GujGv?=
 =?us-ascii?Q?DNWOOCSZBBq6EOrmlzr88y6yEU+kGwWh+Xh9vDVIdJFeSjuXX9WyW60CRguO?=
 =?us-ascii?Q?jiQUDBrDxemJCNVLeceY+w1HU0JYoox8eG4ZrgKbDChGCAm5Bvl7KgwVjgWl?=
 =?us-ascii?Q?dBoLsiD/g77NE9/mTJ0SH/B1hUC2Yy5+KPCaYxpI+9TGFZ8REH1+/cDe7Xf4?=
 =?us-ascii?Q?M18pzj8bqnODSzTDL8DNFdCTMjzNjbd83Gg4qDLxrGPIm8Ub5q5tTYE84YNk?=
 =?us-ascii?Q?Vmf4RpUKsTeCoDZS6HBJOA4guU8G3I+Gz0BC2nfvtzRd3bOlqGNnRp7cjPDj?=
 =?us-ascii?Q?EoG7712sgdHyM3gHT/fz4sb60RgYqbmheB3Z9jgSZLaXfgJxIndeVfgZNTnJ?=
 =?us-ascii?Q?YVw9HilGQoBkC3PoTwbIl57mLQXEWMIBark/0c+xAXlr3XhXhJ73VPasO1yX?=
 =?us-ascii?Q?wmMel+zzrdJzi3WRrbowPaEvb+I5WC9K2AcFN5GFCXMNtlkhmQyQimKVFyKi?=
 =?us-ascii?Q?OoQomktaYK7sky3TdZgf9063Xy917A3Rx2RY6T4XsDt+prs8oniMBpGFqybg?=
 =?us-ascii?Q?OexcDtB+XhYes0ZK9Wlx9wdKzoX47alQYD/W3wne?=
MIME-Version: 1.0
X-OriginatorOrg: starfivetech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SHXPR01MB0863.CHNPR01.prod.partner.outlook.cn
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e80b940-abc0-414a-0dc3-08dce73eca0e
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2024 02:13:24.3461
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 06fe3fa3-1221-43d3-861b-5a4ee687a85c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HLZbQgiir0HeXP/EdDHNOwiqqjvfci4Y3I8wTKtcykd4cXK8X9FEHvGgbRANoIEQOd4Zfc82kT2yZtHrJoM3+EKWVtGnL4UfRa/S5EP/Yb8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SHXPR01MB0750
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_192839_013480_ADA59D0F 
X-CRM114-Status: GOOD (  10.93  )
X-Mailman-Approved-At: Wed, 09 Oct 2024 05:55:07 -0700
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



> 
> On Mon, Sep 02, 2024 at 07:11:27PM +0800, Minda Chen wrote:
> > From: Jan Kiszka <jan.kiszka@siemens.com>
> >
> > In order to connect the USB 2.0 PHY to its controller, we also need to
> > set "u0_pdrstn_split_sw_usbpipe_plugen" [1]. Some downstream U-Boot
> > versions did that, but upstream firmware does not, and the kernel must
> > not rely on such behavior anyway. Failing to set this left the USB
> > gadget port invisible to connected hosts behind.
> >
> > Link:
> > https://doc-en.rvspace.org/JH7110/TRM/JH7110_TRM/sys_syscon.html#sys_s
> > yscon__section_b3l_fqs_wsb [1]
> > Fixes: 16d3a71c20cf ("phy: starfive: Add JH7110 USB 2.0 PHY driver")
> > Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
> > Signed-off-by: Minda Chen <minda.chen@starfivetech.com>
> 
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Hi Vinod
   Could you review the new change of this patch? Thanks.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
