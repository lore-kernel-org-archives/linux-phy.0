Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C9D1CD4F25
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 14:37:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2o3Y5aqx7IM/1mq7m/tElg/f4phN4YuX2+0C7YpKw7c=; b=cY2iVPvwIjrrrG
	HQ3fBAL2jqJiH5aUUABNjxnzuuaLjZjaQcBmTLSzQKa1Q8+fvMvoOomCYqbL7s6+SjgNhHYV6ZPSC
	ZjoLwsxp6ESrvqvRzNZykD1WwYvpBJHWWuYSJREGHA8pL9fa4h41CnY3aM369/N7JvTVoFzBfvOs3
	BMsKZWL3YMq33GsNyQYRkpdjkgrstMN6VLm2wWFMTAGu+xLCeapls6PKkIj4I32YqPgHU57jeDdPR
	Ik8NsIsw9Yzz+YnpbhO/bFOkUsM6SHY6SdI89e9+C8ufwucJAL2zbOX48LyLlfjWjd+zjdy1Pyf0x
	/uqjiXIF1W3F45HWNM/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNtf9-00000008amZ-1nWR;
	Fri, 15 May 2026 14:37:15 +0000
Received: from mail-northeuropeazon11010066.outbound.protection.outlook.com ([52.101.84.66] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNtf6-00000008am5-2lyg
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 14:37:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sZygBrXnO0FaYcoM1FmLURC6A1FnlFcVPO2bkg+FNkgWdV6el6o2zaBpZg7Gd7Znias6AMC1KzHIkGVhsw7FE+24TbM2CPGgPbRrW7R3e0vb5OW3m3+6PfETkxWePbNF2++DuqDxF7oNKEzxy+wORC1BPWPzqlqonQFTRHKE5q2Zg/22EunBaOWeBIB1dkTyiaSTOiCS/RyY+NXvpkvtf2WCLyeZI7BiG43cUmdPH5+zIc9uZgUACYzVL8jWxUaPyj/zoEmhixP0nAVc/S33/aH4TOXa9Sg44qMBx63Cen3UlwhmP7+9ymrswvjYNCaudr3jk/Wr25yJw5nSblRDOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mpeXrjhiARspJkoW5gl4dSRoCEr8eVLWzZeNBn99SUc=;
 b=a9s5qVui7wE9SAQ+yd1v97ihPjw5ogLOOtLwR7uLc7npebi1IGx9J3V5/+WkeXJBdswpj95wm3GebNPoEXlPz5FEVh33Y7ijm7aXJwUDBlsvhmaluwhYKMkASsnRrdLjQnAYMzDjabcTRHp5ukzudTEtuD9L1PAI9g5VJBLZP1dyZUawfUYHh4hQejhDNuoaU05WiDu9K41RSyhLox7nYEj0cJqrTjVhmCNMOCwvQInMozkPvQaI16NDVn2rfAHDQBfTMqPzuCrj268aU36R3TtLaualp0Ql7Jny+IDe7Ot30CDsO8xqihK9dczWB9swd+QJnS3eoIyx9gEb78yRbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mpeXrjhiARspJkoW5gl4dSRoCEr8eVLWzZeNBn99SUc=;
 b=TIm8oSei0wyH/Z3mQ2W4HjjPZhUvE2hkNRuoBGYrueFCQkFaRyO4n09kppZBIYZnwFYUq49AjR0dcJp6m/Al1ZgQmdu/n8sGrzrM73Q5F15rHYKrKf0ImnL03vAkdBJmYc+JMa49Yls2scQhRDvDNIN8me30DivHTaTFQpWMgYErtivyGegVet8sMEhwfU2lCMYNmY/1Z6DIzWuikAQTCSV/DGR19n/D2NGC/OZ++q0u0KOJ2OqgIKEB7Uu7c1HcsSeDH0aSZxXbnfcch9TrVWnAwcUWsvuqM5qBaO74K5+XQs/opSNtRwSCDi9hB8DjVd1iAUkVmjlpGQ0uoCptww==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PR3PR04MB7402.eurprd04.prod.outlook.com (2603:10a6:102:89::16)
 by AS8PR04MB9079.eurprd04.prod.outlook.com (2603:10a6:20b:446::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Fri, 15 May
 2026 14:37:07 +0000
Received: from PR3PR04MB7402.eurprd04.prod.outlook.com
 ([fe80::4129:7aed:b5cb:b13d]) by PR3PR04MB7402.eurprd04.prod.outlook.com
 ([fe80::4129:7aed:b5cb:b13d%5]) with mapi id 15.20.9913.009; Fri, 15 May 2026
 14:37:07 +0000
Date: Fri, 15 May 2026 17:36:45 +0300
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: sashiko-reviews@lists.linux.dev
Cc: conor+dt@kernel.org, krzk+dt@kernel.org, devicetree@vger.kernel.org, 
	linux-phy@lists.infradead.org, olteanv@gmail.com, neil.armstrong@linaro.org, vkoul@kernel.org, 
	robh@kernel.org
Subject: Re: [PATCH v2 phy-next 2/2] phy: ti: add PHY driver for TI
 DS125DF111 Dual-Channel Retimer
Message-ID: <7sm5mmceoen5wvi7c5josiqkan6yrza6kqxkfiggfawdysnacv@rai6pmfpskyi>
References: <20260515110145.1925579-3-ioana.ciornei@nxp.com>
 <20260515112252.E684CC2BCB0@smtp.kernel.org>
Content-Disposition: inline
In-Reply-To: <20260515112252.E684CC2BCB0@smtp.kernel.org>
X-ClientProxiedBy: AS4P189CA0026.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:5db::13) To PR3PR04MB7402.eurprd04.prod.outlook.com
 (2603:10a6:102:89::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PR3PR04MB7402:EE_|AS8PR04MB9079:EE_
X-MS-Office365-Filtering-Correlation-Id: 04097eff-cbc7-4009-86b3-08deb28f70bf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|19092799006|376014|11063799003|56012099003|4143699003|3023799003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: +uQYfWHFBHx17+WNYcxuccit7ZUvZQ/8NL3pjEYxdYma54mgwKqDKwkw8DTOv3X44jRMOwR1B92S+HYrJydN8lePdhNydy+5UTmVqx+sQxqpVN/FP3UrPA69bm/h4efs8+cKvFtUylZIRs64TxJmRqb+LIhXf7J6OzDsGypJR5mmYRRrKoh9vYNZ+kqTrRfOl6lyJG1+eFJAXPY+EHaKyqmBJL7XwQ15+Ic7GIj5SY1Z4uMyGxXvAQ9XJZsRQ0Zqb1+VRzB7lyNvOmd+Uu5CfqmhPK/qYeTl9NHRT1fWvRvSSRbulEclL3veRjzfAZLCkW2P96e/7DhVxIVglSLC8AUcOyIOIeSddCe+E3KZkdgFE3x8gdztiuXdBKHIpXklLAh2hZwmp4LU1lcxFqOV/3kzhJexrbP9sz0NL+i3223eTu/JbM5THuftN4/Q61ZRKGbnS1//NKtOYktoRaJxWxnVKF/e45FzWy8NCOectpHLklHWVeSoL7qz5stBa8QArePolzLV4xeMtC0ZfwP62pVs8POLev7tnxcDVdEHLll0w3nQEdjPZwefvP4zhnB3JTy4IqYBBTSvsFjY0dBETIhFUueIFGiP9fksF22blO4ttXAzEGodaathbykwrmqMtCyOWx3s5MaOmlP5XwVJfIpxKgihmE27s0M9IX5wZdXVY/FtI0f+giywG6nV/psx
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR3PR04MB7402.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(19092799006)(376014)(11063799003)(56012099003)(4143699003)(3023799003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?mFz3rT3zffAAOeuRtXkEr5M9Q/hQOBWoe74Ug+9HWG8+VpqFvlGj6UqI8PqP?=
 =?us-ascii?Q?Z4wep8ZdCjZK7LjMfNNGGoxrkDExg+GRKbtgju05WdoJqdZtR5wHpOfuLO8D?=
 =?us-ascii?Q?lu+X8MAxQKwoRivNw4BJ9tnfsFdoHfpkqm//Ca4cHLulT3Mvu1FnGGD873Ar?=
 =?us-ascii?Q?NQwh2Zqqo+Eng5n8wvOKxyJxSXK/WyufqogDd/OvMjo+FX9D96r8OTvRdwoB?=
 =?us-ascii?Q?a3KBLOvEm06J/f6re4SIlYoWFPMGqK73r+VB+LPwUJQAMryJBdZSluZk9i7q?=
 =?us-ascii?Q?5+AgSU3AUpwaKN2VndhqZz7uASvMRgytsani/rYfmMc2acWgNoHRf3lhtj1F?=
 =?us-ascii?Q?S68UIb4mcjXVllfxtFU9SYlqBwuMCad+3h8bD2fWX77vIrzOtIhTrrPqb+7e?=
 =?us-ascii?Q?8bL0Rh3v8D7nTRi1LCj0ulepSPOyU2SQj6+xFHsC0M16Yc+jbTHTSeA2EURQ?=
 =?us-ascii?Q?eJ934mCZ06xZ69AM5cy4RWyrPd8NZoq/Ue+dHKz65+OnMPyFp5gzx36AD8Wq?=
 =?us-ascii?Q?haJ5yxCs7DyajItvXf7vJrx2Zuv4gopnAUabSBDrHeJG7xEtibNAMDf7KlNK?=
 =?us-ascii?Q?teOij67jFlS3QcNLynyGd2P1QAoJA+H3dF+iQ7WmSQncpVY83zXF3QUugiek?=
 =?us-ascii?Q?2wTQxakMrRbGMG7zedznlkM6yo/YZDEmMRmogkj3glYyhDc4TQGZC/Lkw8lb?=
 =?us-ascii?Q?hfvIKGlQE2t0ZLsGTZuDAF+KuLL6n8puxp6Yz86dnTLeVo98hEbamvfnBCOF?=
 =?us-ascii?Q?vS+MTCR70QZfZsQCsrvj4GXPFjy2126h/k8mk/tXDY7autxM6y8q/Kk6qU4s?=
 =?us-ascii?Q?pE8t1U4DOeszx/kvMhpdedMt/YTsOcweq0fo1grMvPZC7iQbPIA6KlA0RXaP?=
 =?us-ascii?Q?tPXWZNGt3tIp2OKuwz4eftW41USsHMJost7CM/uWtAER4fUtPHCqm+W/ZnS3?=
 =?us-ascii?Q?otojT0kthR7MfbGYqfAECleMifLxrLckWDcctBhWEE4b+vyOPVOuZu2LIcyK?=
 =?us-ascii?Q?Z6BIgJHUnT3V48gjIT8alQsRS4RCzZpMd0Opeww2HQwg7pwOiEzcSQ7t9RFO?=
 =?us-ascii?Q?1Zs34Ea7PZxQORGSr1AcMpVbzPw2l0GM2qtCwNOZET4NU6rO7Lj//nGD85hg?=
 =?us-ascii?Q?Ej5GkhcHuO2EAgbn1GcNpCJOODFEgkDcWGKCJQOAVAyClrRfL1P1qhq0h5ix?=
 =?us-ascii?Q?MjceaYhh1ODURjcedng7mbJqws4bSvm3wuo6QZcTi8ZvBgdn8/Jureq8G7sO?=
 =?us-ascii?Q?FX0g59vaVUA0Dku2AJfJPJV9VE96mEkNH0WB5tbdzfVR4XEWUGnzJRuR5qMS?=
 =?us-ascii?Q?PqaUejJdvG1QQE6GgIopdPuEEMkHCtZjT0KWRtHL+/+WNYQQ8DXaPFs5/zVb?=
 =?us-ascii?Q?xwUqqyUWJERFqxSYjqY8u91jzxUROm7WBKNfSOwFmNheG0wVWc/iWPojGK2A?=
 =?us-ascii?Q?eVYNwAN3ha/ciTrO0YbmB98wdx4L9g5TjHOQLhgldNnhrYXOWAjR6ogxTu7l?=
 =?us-ascii?Q?VLrQAQcLisz29RMImI6x0pZIe+FZ4cffPwrBOGpGlFGhJDBeM4SGF8/0MEGG?=
 =?us-ascii?Q?Nfk8MEgXGzIYD+Vgo1gH55l1ckHGkcFQagih54iLC1leHzevD1CaAIqzQzRL?=
 =?us-ascii?Q?gFbuAhPyDkcXUbjke0nN9KEGr5XP7cv3FOdoyGHDhhsQohBJeRwK9LYyOhXo?=
 =?us-ascii?Q?lPpwgpUXc4IuUJm65+D3nrIatCRMU3Eplh/jw91p3r8Ixq/opmBwZVbo5YUR?=
 =?us-ascii?Q?RaRGoPPrXw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04097eff-cbc7-4009-86b3-08deb28f70bf
X-MS-Exchange-CrossTenant-AuthSource: PR3PR04MB7402.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2026 14:37:07.6462
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dGC5uHEhfgF91HggeYk3fxd08F2fsdZX1VXKfSWHejCiJERBm5puylqVzEyqbHjFq7geZFcnACeABEtdu9QHMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB9079
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_073712_706336_3B2A1C0E 
X-CRM114-Status: GOOD (  23.99  )
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

On Fri, May 15, 2026 at 11:22:52AM +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [High] Missing delay or polling after setting a self-clearing hardware reset bit.
> --
> 
> commit 59a5ca7411308a81c146d660b8c04e0be8fe8fbb
> Author: Ioana Ciornei <ioana.ciornei@nxp.com>
> 
> phy: ti: add PHY driver for TI DS125DF111 Dual-Channel Retimer
> 
> This commit adds a generic PHY driver for the TI DS125DF111 Multi-Protocol
> Dual-Channel Retimer. It supports 10G and 1G link speeds, modeling each of
> the two channels as a separate PHY device.
> 
> > diff --git a/drivers/phy/ti/phy-ds125df111.c b/drivers/phy/ti/phy-ds125df111.c
> > new file mode 100644
> > --- /dev/null
> > +++ b/drivers/phy/ti/phy-ds125df111.c
> 
> [ ... ]
> 
> > +static int ds125df111_configure(struct phy *phy,
> > +				const struct ds125df111_config *cfg)
> > +{
> 
> [ ... ]
> 
> > +	/* Reset Channel Registers */
> > +	err = i2c_smbus_read_byte_data(i2c, DS125DF111_CH_CTRL);
> > +	if (err < 0) {
> > +		dev_err(dev, "Error resetting channel configuration\n");
> > +		goto out;
> > +	}
> > +	val = (u8)err;
> > +	val |= DS125DF111_CH_CTRL_RESET;
> > +	err = i2c_smbus_write_byte_data(i2c, DS125DF111_CH_CTRL, val);
> > +	if (err < 0) {
> > +		dev_err(dev, "Error resetting channel configuration\n");
> > +		goto out;
> > +	}
> > +
> > +	/* Program the VCO group frequencies */
> > +	for (i = 0; i < DS125DF111_NUM_VCO_GROUP_REG; i++) {
> > +		err = i2c_smbus_write_byte_data(i2c,
> > +						DS125DF111_VCO_GROUP_BASE + i,
> > +						cfg->vco_group[i]);
> 
> Is a delay or polling loop needed after triggering the channel reset?
> 
> The DS125DF111_CH_CTRL_RESET bit is defined as self-clearing, but the code 
> immediately proceeds to program the VCO group frequencies without checking if
> the reset has finished.
> 
> Since hardware resets usually take a non-zero amount of time, writing to the
> registers right away could result in the device NACKing the transactions or
> silently dropping the new configuration.
> 

The datasheet does not specify a maximum timeout for channel reset. I
will try to use read_poll_timeout() to wait for the DS125DF111_CH_CTRL
bit to be cleared.



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
