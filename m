Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32561ECAAD8
	for <linux-phy@archiver.kernel.org>; Wed, 21 Sep 2022 12:45:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oFWxJrRQgFFf8TP/0+tElBcLEdMYTFDffOJ7sMVRvUM=; b=uiPBMuaW0HOm6Q
	Wx6BcRLmzwnojn93LFkg/XKucbE3nCin2Im6Z1yujmHDRK8laM4x6yXpdBlZEeIC11pXhOKkl/tQk
	iIoB1d+Wa6Veu5osZlx+KiPtOBERKkvPD+4trYT/e+LHG5rdgYfy6ne1vUIQ4tz7kQZxxO6ZU7Jdn
	G/tp0r4d2TW6RJw2SlQ5YzhuRryGl3fSWD68D5iUTYIQ9xAOXwS9jTU36HEaTrzws8AcRENGEpyiC
	VAvnMcN9emZSf4AM/PcK8BqxANA+I7rA4F5T3GAhnaQsFcoUzptZ7JMDmD5YdUzYBlgpzRY3ES7uJ
	6w6fxEu71DLvRkzBRZdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaz6D-00BKVH-FS; Wed, 21 Sep 2022 12:45:09 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaz6B-00BKUA-0d
	for linux-phy@lists.infradead.org; Wed, 21 Sep 2022 12:45:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1663764306; x=1695300306;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=wZlnE40Pd1NH63S6rrp+N6Hc3nx0sE0xlsu+Gi9Ed9k=;
  b=jwoMdftKcJXKINr9XOPKvL8ZzXQFyRpdEhwgKGQ4ues8VoGfIxf9aKS6
   fGRjVLD70wFgVqmclOw6bMjLOlTCgtyRYBG90F544I60+YKxcFYfMHQky
   +i3E+ofb4LE0poKIhP/BrA5varSqv0nTZyNLRLbLZLQZ5ptmlOrRz0JQI
   2fzLYsUK6VK4CPQjPnQ0OXwM6JR03VIomo4w9ahgmiAqnaLs3siHgO/gO
   WzX1P5ZwKl9Xjjzw7ycQHwgtmu+rabMfN3wj+S5qCnAcSSlLL1NZ+jz9a
   igOcQ5+MVl2aV3AdRRoSiY1max2bf1g62Hpbi+PDdDtbFungFDSdf3sBm
   w==;
X-IronPort-AV: E=Sophos;i="5.93,333,1654531200"; 
   d="scan'208";a="210296588"
Received: from mail-bn8nam11lp2169.outbound.protection.outlook.com (HELO NAM11-BN8-obe.outbound.protection.outlook.com) ([104.47.58.169])
  by ob1.hgst.iphmx.com with ESMTP; 21 Sep 2022 20:45:00 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kijn331x5WfmxFO916+gN6TQ4B0JSSeSuBajMFcwRvXi0ZIeiSxc9YpJ5HsnsxLJ7vCQ3sbzLWa5Oy0H8JzFeF+FRwsMUC3smdX1NxAi6m8TEBsYpRYIXsgXGyYBg73tv3aGs9IeMcsI4IYSmP1Liy5ifLxowrerWxywzBGsCtauo2OVoG3c+M+wBhg/KWV3teB8uP7sXTAQPBwIDOXkIh4UqpdrTCTX9SpYKqKlApkAB+SNBoz7Q7/aeuynkdcAPFK8c3o7uzyG2tPayrKMsP3M/2l4ULbQdJYYBRJfld20pZxryW4rZ0S75CvAh6FII3XO5QiwcwAPx/G7/DkrXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EfAQ7ALLBIPdw9k04befOr6lNlwFASrwZhtg8zrWicM=;
 b=hV5iEMbJXd0q4GjnofOQCCDKRY2r+X/HFKlbsDob7DtyDPeYM1sJjbnXjM63bmhUAkpkWoGh33DCLV3rchhTTZv45uq1C99iHBxcFElEfDO020S9+l3AmIHaZSOYi7fF/H3PZAViLo09mE8qv8o81p+bK5ZiQrkFtSsOJhsJjNbxDYDRZD9BRFz7+88oxISe8O+9LPNfYaS0pSFG5TrcZH96+8dk6ApGl28nBEYY0wBmSXpfAlhMOiV77M12nxov9CA3NmRk3eU05gyMz8/1qoMYUNBki5iUalpmOVXNeNg/TfW7t79dLgp81oleo1uYSB+PtuGr8ubsyNRNpEcWXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EfAQ7ALLBIPdw9k04befOr6lNlwFASrwZhtg8zrWicM=;
 b=wv6f+TEB6gUcA0geUhdg+6cBCMIjXWFHq1Ne97k+TnxOk4ZI6mSVtKJHnc4qrxvyQ+VopnBBFkWiUZKsCZ9Z0Xo3zSltOiwm4t+93xeZgdzKu5Dn+udC1T5hXIW2MySYbxYFVq5jCK72gVjHB4Ufznd2qwFEQsZAkaf+n6ejHW4=
Received: from DM8PR04MB8037.namprd04.prod.outlook.com (2603:10b6:8:f::6) by
 MWHPR04MB0688.namprd04.prod.outlook.com (2603:10b6:300:f7::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5632.21; Wed, 21 Sep 2022 12:44:58 +0000
Received: from DM8PR04MB8037.namprd04.prod.outlook.com
 ([fe80::e81d:2da8:3410:1a2e]) by DM8PR04MB8037.namprd04.prod.outlook.com
 ([fe80::e81d:2da8:3410:1a2e%4]) with mapi id 15.20.5654.017; Wed, 21 Sep 2022
 12:44:58 +0000
From: Shinichiro Kawasaki <shinichiro.kawasaki@wdc.com>
To: =?iso-8859-1?Q?Pali_Roh=E1r?= <pali@kernel.org>
CC: Miquel Raynal <miquel.raynal@bootlin.com>, Kishon Vijay Abraham I
	<kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] phy: marvell: phy-mvebu-a3700-comphy: Reset COMPHY
 registers before USB 3.0 power on
Thread-Topic: [PATCH] phy: marvell: phy-mvebu-a3700-comphy: Reset COMPHY
 registers before USB 3.0 power on
Thread-Index: AQHYzOo7ZaCBnnYyIkere1jyQj5pAa3pVQMAgAAzHYCAAE30gA==
Date: Wed, 21 Sep 2022 12:44:58 +0000
Message-ID: <20220921124457.26hjljy7fcv45zfk@shindev>
References: <20220920121154.30115-1-pali@kernel.org>
 <20220921050300.riwyofdncxscrwe3@shindev>
 <20220921080557.jdg5wywpa5qxcyo2@pali>
In-Reply-To: <20220921080557.jdg5wywpa5qxcyo2@pali>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wdc.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR04MB8037:EE_|MWHPR04MB0688:EE_
x-ms-office365-filtering-correlation-id: 89cadd3c-41c1-4fd6-a271-08da9bcf1792
wdcipoutbound: EOP-TRUE
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  izAgTBaqJmcHv2ktbeCpefaJzr8LOn9E1Io87GzupX2puVO4eS/12PrZGa/Ak5n4ZXTt8nHUVarYiuIi4oKFfh9V7vAvqui9ZSt7aWonSOCQDHkeuzG7hBdpUueaYtPkyqK+QYA659JJOp6SSaxnbSKAQL7TyMCjHzOn5bE7m1Lt9TxUE8ilTHoGANl/UU9/2njs8dsGaGDGR/Qk6g1dQZ4VRGTExqwAEfSEE2F4YY/cOhkcJs6e9N8DVHE2YzCyNIHyROMJeVokiq9M2WHEcqomiKPkAIrGYW6CcBWQviHWNBcVj62PWl9oTo/vz7a1nCHChQcrMN1mrQYUkZXtPyn3m1h9skDcC3LrM2gdimvr6/iNn7l5axQw9/O1XglOF9DsI0Why7W7tILgelf0KcDSJ78eTaUSrcP/FVFt0AG+drl+tkH97d1OjXbMtJ70PDw3IdduVpk49V97dxO8rebt5pGYtHrlisBe4qVglqNJINc429htXLb+SRqDtMxbYt2OOBca6je8y8AuSppt/I/OvpllXZ/9vTWwPH5smO4bFe8CzfBHGVpmPvcmnBiOgwSckJJDbxaMH6NTh8IH44iC+i/dmduvJ+eKgh7iXGUErNrVrH4ztZV7kwyEea2XUwyu/0dHF+4+kslL9dBPOxcmDOwW6juToHgiMRv/QiOBgu0cVuxD+oE8golZ1EfYfD+ttQtTRWUsQ7FGU/LD6GYhiiWkJP/SL5tZ1Z5qMAwqMiQf6cJ68vfcgT7NhpphDrrYXzkq9k2sDSuWH7ggUQ==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM8PR04MB8037.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(7916004)(136003)(39860400002)(376002)(346002)(366004)(396003)(451199015)(76116006)(66446008)(66476007)(5660300002)(66946007)(66556008)(64756008)(54906003)(86362001)(122000001)(316002)(8676002)(82960400001)(66574015)(4326008)(38100700002)(71200400001)(41300700001)(6486002)(6506007)(478600001)(1076003)(186003)(9686003)(6512007)(38070700005)(91956017)(26005)(83380400001)(8936002)(33716001)(44832011)(6916009)(2906002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?iso-8859-1?Q?5jV+/tYtoyiTB964hf5jdfygvV+qYG5Y9AfmlXxtZwqU/Ce0j8J+PlUH20?=
 =?iso-8859-1?Q?1posp6Ys9I0t01sOID4T09P/F8lVsviQ3Yry7kXGh7cU6fMZdJFt2ea1TD?=
 =?iso-8859-1?Q?3Ko7CkCAGTYlV2Uh7g6//Nl44GAFjAn9I/qhLk8MRn8qPGZQEcKN/qR2XW?=
 =?iso-8859-1?Q?HpTt/yZ1/ON/blNxpFYFHIVkHsm3fS1VY2l4H9p+5ZHdT+aLrU6PS6dN/a?=
 =?iso-8859-1?Q?7jYQkS8Xq8y19b1I1Hd4EwR4psBF0rLqQSF1wDktpR3laLAAz+8c67gPLV?=
 =?iso-8859-1?Q?TuD6xf4qAQ1tES7Zm5umE8jR2nC3EfJwZphEc1sl1JWg6iwsktD1ay0qc7?=
 =?iso-8859-1?Q?JsvPSEpJaoddeWlg3PxC21vq2UCRKRUOobjaO1wNn4mjH0Lpp8a3ZbmYtp?=
 =?iso-8859-1?Q?FoGeG2evTiIm4HaBV0fSTI0g8SiOSO7bsg+Sifcd6OKLZkGXm11wFsisDn?=
 =?iso-8859-1?Q?sI+ZLzF5DR8+gQtH4O3I/Qinw+qFviwlRQtQSGc7Fx1RFEpZmk1FvFBvtr?=
 =?iso-8859-1?Q?BjTjmRjjZbo3RwXtujxNhzmyOil11xoT6y8Wx5lV58lUi70juvmJFPJPGP?=
 =?iso-8859-1?Q?UDTPnt8gqN8Wvi9kWndAMU3554wTLIhKyVPqsSyor0xxcwEdv/n4BMfup0?=
 =?iso-8859-1?Q?ixNRgjpfaC9RQ6nCvgB4nYvzo+gi4iHNmr6OKtddZKro5IPF1gHKi5GekG?=
 =?iso-8859-1?Q?vPtEOz559HMkfHsSFp3mvXFMvnz05KYgSQMkoplzmePEgflwljZfGP4DLF?=
 =?iso-8859-1?Q?0yHTI7Cl/2nf/3eHNU2ynG9PYgM+Vawi8HYxAHZPYhG1gsZHMDBJf2WKBg?=
 =?iso-8859-1?Q?XtN7jk7577ihDMQdaVKIZK9w6cn7WULreiXpJw6Lq6jwDY7L/uYgt16aSL?=
 =?iso-8859-1?Q?uvS9DRK+FzhLXXo6F6qSgIgXPW9fJu8JtjOxnrvpE/oJk/ain80dhBRbCZ?=
 =?iso-8859-1?Q?dtc4E0/uE8cgEoM2DzLqBZb2vmcyllVJcPOkAle1VwzQJSXdKeOHD3CSq5?=
 =?iso-8859-1?Q?PuofrmRl0bdITLvq8tQC4hD48WocAJ4E/Fr82tx09mgBi4IPDavj9MOrhT?=
 =?iso-8859-1?Q?S4fMRCwJUJnFtO4kGLQZPgrwtpVm/mmfyQAtPFfkwuKAAuT2btQFaa1hqY?=
 =?iso-8859-1?Q?lSxSyNDClyl8D7dt6AOv/Nw8w8j1VBQidUPCXZRjAWVnKAgVmGwsX//my7?=
 =?iso-8859-1?Q?+eV961HwNUZRkTM279x0gYQF/lNV63CU944Sed4o8yACGNEJbx09wKCS18?=
 =?iso-8859-1?Q?Xb/VIKhxr7c/uox2uICEcechxjGjq5xVrmCYGd2r6k/M0sB2tqjMYvWhKO?=
 =?iso-8859-1?Q?jLDMushTeX7BCR7UaahYuii6W7WGT/VnOtlx/UzY/4kGr4l4U/0nHWDplh?=
 =?iso-8859-1?Q?K2toiYsZomT1jHU9t2eNszYdpO5hGhnMSJPBW8Nln3IO1dQxKf4fQUfiWT?=
 =?iso-8859-1?Q?eo39cU34ruSEiOrBUq0baAtDG56FvhWi2EFdqmLCgWehfLYHuzmjnglqFT?=
 =?iso-8859-1?Q?u+fReWls/ffxnzkxQ8Y6BKn73Y/U5IURkrlMURgDbl44l6/XY6XuFzQNSF?=
 =?iso-8859-1?Q?hpF0ICtJYhCQctjfRQC0LIZV89HiNFCCfc3VSZwewuuiAcqE7t3i9QTdS0?=
 =?iso-8859-1?Q?rXuePMZS4hruZhil1afFvWcwoqQgNDCtBU9jFwyHwAJ2be3FsUqb9I+kRm?=
 =?iso-8859-1?Q?Z+amWYmqLbwdPEAsIV4=3D?=
Content-ID: <AA5FF8C9E036BC48BF07CF2D730F98BC@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR04MB8037.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 89cadd3c-41c1-4fd6-a271-08da9bcf1792
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Sep 2022 12:44:58.1742
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /U45scz2VqYCdYYI2+8ni8Q7T5IJw23WuEiHeIzdtb34Hv0JzhmFgRs8NLXq2K1QGYK84PgojnKZVdkVGWQEYlyBHxmKYN/qGDrC2Tn9KmI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR04MB0688
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_054507_131492_BF6CC61C 
X-CRM114-Status: GOOD (  31.05  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Sep 21, 2022 / 08:05, Pali Roh=E1r wrote:
> On Wednesday 21 September 2022 05:03:01 Shinichiro Kawasaki wrote:
> > On Sep 20, 2022 / 14:11, Pali Roh=E1r wrote:
> > > Turris MOX board with older ARM Trusted Firmware version v1.5 is not =
able
> > > to detect any USB 3.0 device connected to USB-A port on Mox-A module =
after
> > > commit 0a6fc70d76bd ("phy: marvell: phy-mvebu-a3700-comphy: Remove br=
oken
> > > reset support"). On the other hand USB 2.0 devices connected to the s=
ame
> > > USB-A port are working fine.
> > > =

> > > It looks as if the older firmware configures COMPHY registers for USB=
 3.0
> > > somehow incompatibly for kernel driver. Experiments show that resetti=
ng
> > > COMPHY registers via setting SFT_RST auto-clearing bit in COMPHY_SFT_=
RESET
> > > register fixes this issue.
> > > =

> > > Reset the COMPHY in mvebu_a3700_comphy_usb3_power_on() function as a =
first
> > > step after selecting COMPHY lane and USB 3.0 function. With this chan=
ge
> > > Turris MOX board can successfully detect USB 3.0 devices again.
> > > =

> > > Before the above mentioned commit this reset was implemented in PHY r=
eset
> > > method, so this is the reason why there was no issue with older firmw=
are
> > > version then.
> > > =

> > > Fixes: 0a6fc70d76bd ("phy: marvell: phy-mvebu-a3700-comphy: Remove br=
oken reset support")
> > > Reported-by: Marek Beh=FAn <kabel@kernel.org>
> > > Signed-off-by: Pali Roh=E1r <pali@kernel.org>
> > > ---
> > > Shinichiro, could you please check that all USB functionality still
> > > works correctly on your board?
> > > ---
> > =

> > Sure. TL;DR, this patch works ok for my espressobin v7 board.
> > =

> > Tested-by: Shin'ichiro Kawasaki <shinichiro.kawasaki@wdc.com>
> > =

> > I prepared base kernel v5.19.10 applying the commit 0a6fc70d76bd. Regar=
dless
> > whether this fix patch for Turrix MOX board is applied or not, two USB =
ports on
> > my esprssobin v7 board worked as expected. I confirmed it by using USB =
thumb
> > drive. The drive was detected and its partition was mounted successfull=
y using
> > either of the two USB ports.
> =

> Thank you for testing! Anyway, please check that USB 3.0 device is
> working fine. Because as I wrote in commit message, on Turris Mox was
> USB 2.0 device working fine, but USB 3.0 not. And maybe check in system
> (lsusb) that USB 3.0 device was really detected as USB 3.0 because USB
> 3.0 devices have supported also fallback USB 2.0/1.x legacy mode.

Ah, I see. For that check, I connected my USB 3.1 drive to the USB 3.0 port=
 of
my espressobin, then checked 'lsusb -vt' and sysfs:

$ lsusb -vt
/:  Bus 03.Port 1: Dev 1, Class=3Droot_hub, Driver=3Dxhci-hcd/1p, 5000M
    ID 1d6b:0003 Linux Foundation 3.0 root hub
    |__ Port 1: Dev 2, If 0, Class=3DMass Storage, Driver=3Dusb-storage, 50=
00M
        ID 0781:5583 SanDisk Corp. Ultra Fit
/:  Bus 02.Port 1: Dev 1, Class=3Droot_hub, Driver=3Dxhci-hcd/1p, 480M
    ID 1d6b:0002 Linux Foundation 2.0 root hub
/:  Bus 01.Port 1: Dev 1, Class=3Droot_hub, Driver=3Dorion-ehci/1p, 480M
    ID 1d6b:0002 Linux Foundation 2.0 root hub

$ cat /sys/bus/usb/devices/3-1/version =

 3.00

USB3 port is listed under the Bus 03, "3.0" root hub. According to sysfs, i=
ts
USB version is 3.00. I observed same outputs with and without the patch for
Turris MOX board.

Are these good enough? If other check is needed, please let me know.

-- =

Shin'ichiro Kawasaki
-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
