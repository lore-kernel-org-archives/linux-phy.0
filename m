Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FCC3EE14A5
	for <linux-phy@archiver.kernel.org>; Wed,  6 Sep 2023 15:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QWxpLxnYLEfxmSRfPPCwE1nk07D20OUfu+i4cesyvRk=; b=UVj9H9lFD3Ppl+
	vDiQyLMT/RpF006JE1cb1379Hj+ZSQrjiuEaPyRAl0ztHW3q4bSikXDvjKrTxd12mso3NsS981VST
	zapsuAanLf1eq8TuxuWC2kUBVRHNdB93xHhzlR+Lo/nUKo9c9/jMDv5CL67d53T0/O/8KUqx4vxKW
	NcmMItAXHc4EBvEULI1w3e9s15uPCbx8HVXyQlygvPjQloQrZUzuEtkiX3AivwQlqHoRuRXPL+o09
	l8pkptcKyOwi6hLC8/lpux5NKP/xaXo7/GWkR78zF94b9Mrl5+huA+0tb6P9N6V4BigsFJW9f2uGO
	CtbQ6A9RDuYFBKWn1nqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qduUo-00AP05-0E;
	Wed, 06 Sep 2023 15:31:10 +0000
Received: from mail-db8eur05on2062f.outbound.protection.outlook.com ([2a01:111:f400:7e1a::62f] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdtMS-00ADqY-1X
	for linux-phy@lists.infradead.org;
	Wed, 06 Sep 2023 14:18:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S8BZSPLqWpr2T62IjOTgffmKktebZwcFRkQnK4DJ5s75qK7YYcnq4XtusYL9VglS9ffrRJcPEZTXt1brWJlQCNAT9y9iYwY92ZdNryeWPmEgI1iIeLsodbchNyGSRF11x0o4esYcHV/tvD775GAZMM1UlR8/hVmvw4gMm6kAGzgAGtupg5LywaDZFHfLBH3dvrKIFRYeL9WdH3GEtd82Lf2EX2UXNRR/fk8f25bxZPfNAdSrJFKvLdz0vv2acX8p7DuRXrJCGtS2TAH0UujuWR375hL6wDBEQ20N5MiEDpWmaOSac8Fu+JtJRnd9tNw23D91Tk/SVsMb4Sc8dI+IiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UGJUnIOkeNJDbpWjARJOz+tVomHpjTm1tUQszGQNHqc=;
 b=CuuONi6/W1+gA90r4By2U1aAq/5ewH2fitN8oPC8BNwNJgg2x9oOHXveHh5s/Mx4vuC6r6AqOJHPHWp1kVQE6SocN5bvFnbJXFJLX7qioPFntNSisjN+jkXQs/H0o4vIcpqUq8RN7NywTUFR97YOU8eetGZfS1PhPr0GA1WSNdKdynCuTZA2kl84v161LwhtoFrG6PeIdAdGiuNeB0II+k8p6T94twDsizWK7H/2q3TY4izEWmdAY2AI1ULeRH63sEimrW1Bh0DauUZj/g1HMjPuyhmgi1tLT8SYl8OmkECfygBSX9xpoljTR018T1HqcrgH34rLuKqWNXdIqvsGSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UGJUnIOkeNJDbpWjARJOz+tVomHpjTm1tUQszGQNHqc=;
 b=gxY+9D19Q1luLacnoKEgUPM1i176mglkOO5812UbhnCcZs/Wba/degdvSrlQ54IUehPs+lnrP0r2H+tKl2bA/DWeIr00gFISL2a/CQtrd22+rqMPo9iTkYUZQzo4drYl6gQKsgMnL2SRljERNlm/qgbDAp9WHEX1wjRIfuET1BA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by AM8PR04MB7939.eurprd04.prod.outlook.com (2603:10a6:20b:241::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.34; Wed, 6 Sep
 2023 14:02:15 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::568a:57ee:35b5:e454]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::568a:57ee:35b5:e454%3]) with mapi id 15.20.6745.030; Wed, 6 Sep 2023
 14:02:15 +0000
Date: Wed, 6 Sep 2023 17:02:10 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh@kernel.org>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Madalin Bucur <madalin.bucur@nxp.com>,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Camelia Groza <camelia.groza@nxp.com>, Li Yang <leoyang.li@nxp.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor@kernel.org>,
	Sean Anderson <sean.anderson@seco.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Subject: Re: [RFC PATCH net-next 8/8] dt-bindings: net: fsl,backplane-anlt:
 new binding document
Message-ID: <20230906140210.sfyiohp3cxf3epuc@skbuf>
References: <20230817150644.3605105-1-vladimir.oltean@nxp.com>
 <20230817150644.3605105-9-vladimir.oltean@nxp.com>
 <20230821195840.GA2181626-robh@kernel.org>
 <20230821201146.hudnk5v2zugz726p@skbuf>
 <e3afb3d5-6efe-46de-81ca-7f0163c4b04d@lunn.ch>
 <20230821203433.ysulh2bixfypbhsk@skbuf>
 <842f7ff0-d376-4f55-b72d-2db7ea827792@lunn.ch>
 <20230821215500.oap7ze73pu237pof@skbuf>
 <36bb7d51-2fca-4d06-b78d-e411f67ecf56@lunn.ch>
Content-Disposition: inline
In-Reply-To: <36bb7d51-2fca-4d06-b78d-e411f67ecf56@lunn.ch>
X-ClientProxiedBy: AS4P190CA0017.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d0::7) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|AM8PR04MB7939:EE_
X-MS-Office365-Filtering-Correlation-Id: f7255700-f0e0-4a39-1a17-08dbaee1e031
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rPbkehm04mVs8/CIS6LUHJy3nng8g9KJ/jmBdHFdB4fCwgaAUnEP2DOPoDr4G0ANZpEYizR7oksGW3ll0PorA0jDzWMqR8BEQ4A1fi+fWnmKex90a9ZDwEzjx+kyE8ctu9kQ4ORzjXGYn+/f4r2jzOfvrASP1lC/nHG+CTPj746cGvQVFzPSS4fs6fZD+OqIoSPsDdKwJt1ScbLTbLhXYycw1QtnH+1sb4nRZKrNHLaeg5rmoBLgf2dTcfeaqXC8gY8XA+2Qy9FROBaG4y0nu9hAyoWZobsSmLDww0cHoa6E/flbRYuKJgqKgQWwrG2aatcfyxo/B0+0DOToqG8tUai788AOAH/CzIdPcfMYgyBkdLhc6gxiduTgB43m/cvIBU5E03X49pK5mfTC7iZ+2b2KdBrb21NpxIRLK8PMW1fzGsvuNjJgZfcHqOTALXK8abYAyn0VPuxb7Jd732qu0YRFHWoaVZhxmiFEUg9TlcWOzb4hmmgcwo926MLzw4+WpfOOjLBv0CDSP+GJ7fKkg2hjr49brzL1VMuSYzBa05kDFqPRj2HOdzdYtGViC6IS
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6452.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(7916004)(366004)(346002)(396003)(376002)(39860400002)(136003)(451199024)(186009)(1800799009)(41300700001)(33716001)(4326008)(8676002)(8936002)(86362001)(66556008)(38100700002)(6916009)(66476007)(54906003)(44832011)(66946007)(316002)(7416002)(5660300002)(478600001)(2906002)(6666004)(6512007)(9686003)(6506007)(6486002)(26005)(83380400001)(1076003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?d27DwJKJOZd5pdMkouXwP0hPGsvxosrOakXnN7tueUZ7R+Riq0/SyKmSxKwH?=
 =?us-ascii?Q?E6SDQ3CYfLM0jAh2bJQBOvqvqrshVQmZj4l7MoWr2PlhwT2UKBaZJUPpjRGH?=
 =?us-ascii?Q?znNire3WkCG+0DfkLvJWf0F+588NvURtsMwzbdRRa2lc1PMUoYxZFzdvIb6Q?=
 =?us-ascii?Q?ni9AswjWfn8oYKHgwm7w5pqzL0LGHhgkt9dquOR7XsDN1YhyROtF5AjVuom7?=
 =?us-ascii?Q?O/NPKz8TJVvaYN6fxNGbjZXe146sT4LX9q6cvy8lLSuURbJg0lMBYKqLcZ/3?=
 =?us-ascii?Q?29gcJmaOAR6w39xtI8s2SGC2oFsDGW0awhl/X7zJBQLIdNj9ocbwzYbKGPUX?=
 =?us-ascii?Q?IHa5Pxav2ouSy39H7XxziiuCEee8KSOLBtV6QQYf/mTVScOze2nF0SZMR6je?=
 =?us-ascii?Q?7pkTcOHtqbUCwsT/Yvc3IbLRYFSPo5QEbGG8Dv7Pe8hwXH/lbZjOUVR8jO/B?=
 =?us-ascii?Q?U6VEmFU7zG/ZmVFGVh+AFsmmJm8D/HQBDfDOHJ3BvhuGSc0fqSoVRQdUDVfX?=
 =?us-ascii?Q?/Q83smKGAlZlMWro66CUL0Ue2QTOGP3gscjpfOe5m3dYjXTe/CJ9ZkZhwONL?=
 =?us-ascii?Q?j2XkeNknwaDScyyjhCAjRSlLxk4jh6RynEzO1cIq6xkASkZQi6GplQNSwj/n?=
 =?us-ascii?Q?lfUfYQV2h5LQN7uO/MT/vKnXUozVa+orC8RGcgza45UrXMOGT2/HxMIyh902?=
 =?us-ascii?Q?2I3y835eEKWQUfu8M0bB7L0W0tyU18ahutxFkWyV6zlab7CSFTQcaPzQA7qo?=
 =?us-ascii?Q?auKtyMh3hdkq6tVMaez5mdklGW0o8arjjrkGkIU4RDFVCYeGjVvvzgVVB3wU?=
 =?us-ascii?Q?jLsbpQ1IcwuSn9vr3/w5wEmjDWsRZbrWc+L9KVaAjUaeRaL0OKYYdpjQjLex?=
 =?us-ascii?Q?No8PCCQsLi1NgEAmvYJZHj0by59vhUKXLdu1JRixfXCLUOv9oKm/4jS84fSR?=
 =?us-ascii?Q?C40gFit1x0x5NfI1YFwUZO/B671uibgEVIeWGOBDQimX18UnxCHizozW9ZG+?=
 =?us-ascii?Q?yOwHkTodmGuHYfgu7irAV765vQ2NbI7NlHKmrF/ago6XDwPZGuscAYR7FYyH?=
 =?us-ascii?Q?+4qnIIqUvVnLGidZecyDZtTUlPO+bWuHmVYnJ1z44kMD2rNbXqjRiTOFfZpy?=
 =?us-ascii?Q?SPxlRIBfbYftC9roYfNr2zcwu/gpK5OEEs7S/lhPGrLTdmkRRaDOcHSGh7va?=
 =?us-ascii?Q?C3oPFoon/86O8A/goeSZBydrrc74r0B0DswGwgGvM/m2xCSaVyCCd/Pi4mjw?=
 =?us-ascii?Q?MKzw+936pLRvUfuYg4QHjupYMElfOXZdf0NypKbOeDlZgUl6OF4f8saiFHgN?=
 =?us-ascii?Q?8LiTEyKJfQWTh8BUiU5QYwWUBjP3//TZ/SOSH62R8O9oFRblnRJSasCFjlKB?=
 =?us-ascii?Q?7s3tmttyTOAuJLy7MTrMLfdhqGPaZtHYIJP3cn9B1uuGM2FBYp78D7DS4UHo?=
 =?us-ascii?Q?bOALyEJ6yiTTN9mMYuONP16CwLQn4d25XiKXAXIdyz+yJy2Iju6AWy/SQfrs?=
 =?us-ascii?Q?LYJkMuJJqewR0EapWruBJYg/U7C9mulf3uullAqLN7UhDK5pQFjgx12GpxUb?=
 =?us-ascii?Q?ZBURo8P3WFc6MdrYaJso2Hwi82NAqXsvKBayfd6tNttn7VZrZgGUcNiQDqll?=
 =?us-ascii?Q?xg=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7255700-f0e0-4a39-1a17-08dbaee1e031
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2023 14:02:15.7832
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gS+fCe3UehV1kITwJXzdmuFAcCRt2QalyggLo3rGh1czFKPir56dZYZUwm7PkutSGohWKYdvoxcH2VUMBQo98w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR04MB7939
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230906_071828_518469_2E46B046 
X-CRM114-Status: GOOD (  31.89  )
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

Hi Andrew and phylib/phylink maintainers in general,

On Tue, Aug 22, 2023 at 04:10:45PM +0200, Andrew Lunn wrote:
> For C22 PHYs, the ID registers are only used to ask user space to load
> a driver which supports that ID, and then used to match a device to a
> driver. We often say that if the ID registers don't actually contain
> an ID, or the wrong ID, use ethernet-phy-id[a-f0-9]{4}\\.[a-f0-9]{4}$
> to let the subsystem know the correct ID.
> 
> The device you are trying to support has the same problem, invalid
> IDs, but its C45.
> 
> C45 IDs however work slightly differently. An C45 package can have
> multiple devices in it, up to 32. Each device has its own ID
> registers. So there can be up to 32 different IDs for one package. The
> core will try to determine which of the 32 devices are actually in the
> package, and if they are, what the ID is. It then asks user space to
> load a driver for all the IDs it finds. And when matching devices to
> drivers, it sees if any of the ID of the package matches the IDs the
> driver says it supports. If a match is found, that one driver is
> expected to drive all the devices in that one package.
> 
> I don't see a need for ethernet-phy-ieee802.3-c45-idXXXX.XXXX,
> ethernet-phy-ieee802.3-idXXXX.XXXX should be sufficient, since all you
> are doing it matching the ID against the driver. That matching does
> not differ between C22 and C45. 
> 
> Saying "ethernet-phy-ieee802.3-c45" might be useful, because at the
> moment we have a mixup between C45 register space and C45 bus
> transactions. The drive is free to access C22 and/or C45 registers,
> since it should know what the device actually has. But some of the
> core might get the wrong idea without "ethernet-phy-ieee802.3-c45".
> 
> O.K, that the background now:
> 
> > First: Compatible strings per C45 MMD? Drivers per C45 MMD
> 
> So far, nobody has needed that. All current drivers are package
> drivers, they drive all the devices in the package. At least for a
> PHY, there is close integration between devices in a package. Russell
> has commented that the Marvell 10G PHY does appear to contain a number
> of licensed devices, but so far, we have not noticed the same licensed
> device used by multiple vendors. So there has not been any need to
> reuse code.
> 
> However, it sounds like the package you are trying to support does
> contain multiple independent devices. So from an architecture
> perspective, having multiple drivers would make sense, even if there
> is no reuse. But are the devices PHY? Everything i've said so far
> applies to PHYs. It does not apply to a PCS, etc.
> 
> 	Andrew

I don't know if the devices qualify as phy_device structures according
to the opinion of the maintainers, and that is one of the fundamental
aspects I would like this RFC to clarify, before I proceed to request
NXP to allocate a new PHY ID that I can put in the compatible string.

If the backplane AN/LT block is not a phy_device structure, my
imagination will need a bit of help on how to integrate it, as a raw
mdio_device, with phylink or with the consumer MAC drivers directly.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
