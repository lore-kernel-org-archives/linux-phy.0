Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79241C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 31 May 2022 12:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RKNVdx17jDK4uFg40AhDKiTu/XYUqj6bbyQ+5WYwJMI=; b=2Z2I+ibXzK4b9T
	g+QI//a5wDdCYUAGTjF1ZKL9aWIkamVbMHwvXXnHQiZBVfkqsI4iE9/yBi35UmNwwoP50ClowzSo9
	SsHWw5OOQlK1d15quYv+DiYvLAK0jLzZasauo5H+83rnNSYSe2fIrpymo3MXiCs+kdIXGkZeJnGk1
	jW8MGgyh5FGaJfiFHOhkzY4TuRiuJksEvpgNjdUerLgT63MFNWZp55pspmM1bQLyTkTrXzOasat/n
	XFclydDW/XXDeWX+BHF67f+0UYoVp5LowP50MvquUPEIFukKqyrIEEPYKB7lvXHQqBa87bo+KglUK
	cc+kAS9CYgoSre0MfWRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw1CK-00AonH-Tk; Tue, 31 May 2022 12:42:08 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw1CI-00Aoks-Eh
	for linux-phy@lists.infradead.org; Tue, 31 May 2022 12:42:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1654000925; x=1685536925;
  h=from:to:cc:subject:date:message-id:content-id:
   content-transfer-encoding:mime-version;
  bh=1YwSEWP8Kya5pup4A+ohsHqC/YjMDMZkUiDEeRmixzk=;
  b=VvDeWJfx1/QStY9KFeBl2DT4xxWdBdYCzPC5RIHZY3ZHSHzWxUps/XEz
   w2zXEl0HC1ngtr2jWFx/91ef/Xyj/6C6+mXZeBNcsADzjoz4kIzDFVNWk
   mLaUwFS9Ng9yEluZCgeukn9xUbOrCS8owcEyezsQljth/bUzbG8ZYhB4h
   yPxcNAuEeI027YNfoVo0lDJSEfOLmnjC4B98AcxomaJuJE/0PcdTMGYSI
   SE3sPe4/xxHQMwZ6hoX1oWDG17IGt2DKlOLcr+0QGGsvD6YYnv5c7oS/w
   7wMxE1PqWnqVQVDhWOxwQTt4EnrcBRypeJgu3BGbtLWrtEsWaiGKxtUNV
   w==;
X-IronPort-AV: E=Sophos;i="5.91,265,1647273600"; 
   d="scan'208";a="201886212"
Received: from mail-mw2nam12lp2049.outbound.protection.outlook.com (HELO NAM12-MW2-obe.outbound.protection.outlook.com) ([104.47.66.49])
  by ob1.hgst.iphmx.com with ESMTP; 31 May 2022 20:42:01 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JN3oQW9qwu1uTG711ASxL98nrvvkZNXNs/zj3xhi34kgannw0n9/7zHibGXMZgRnd5yWRBft2cFea9zecPZ4YKTaKq6609OkRX2zi0J8TYjsWDGsvuZY7OwMKi/yfbXw3vDORCQQvs/+sl0N1ZBdRh0JQd6GUfa+fzKIF5HEQu1odknRMwN6Pgi/5NZXUlY4iJJSnVlhYwxiLmuGAps16FdRkw0FR75s88AOBgQfB3ceTsCdtPvs9sZFgBvS0X9M9KyMWwYB+WzsqXUfHUDCLVSgmTZ6PW2ccFk6tA+TKXWXD2QEVEmZn3aK6g3mSMCXIAX7oxY0jvUrlRi31hB/yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cG5BjhkvoxQho05T9WUJoB1FEXoXtL+UdJvVw3TxDXg=;
 b=AzjPVRLKbMPZOQfmlq33rv8AByc6AQqzMHdbIEQOzpcNfotN5xYX7pKCPM3sILJ3K9UYflk2LnzfEP9VeHuisB1Cv1Fx/JBCBLigolj7ucJzhcb551PAyO6XkowNhGhgIT8/Ha8uP6Dl2wGIPYCvmx/NzSzMLmfiS6owEJBq077HbMSQFUOGKGCk74wgxrxnZlB8IFY+S5ffkmnM1qgkHP51RwI9YRSqPH3nBTvVkiII/h/99y9M+SRkmxPqWGQ5M8khsthzkaobyuDhkb0ppwzCOFVpEfjQf0ET8MwiFlmRzVWFNpQljL4ySmQX2VRa7SGbjJmsDp9DoSY2QNxb7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cG5BjhkvoxQho05T9WUJoB1FEXoXtL+UdJvVw3TxDXg=;
 b=pRssAVdBtvvBGNsZYgh/60TKJI5EvBGDlH59kpKW/r1u20eOetYNztfBjNp6pTP/9+lzfkEtZRfEP/hEyCVGeiVtC0ajhl3vGW/dBBPx6OkI5vyE4TiYFVM+ytedv20ODILP88V3NTDAu6ZPZf2Fx04tfwJTQZvpwoxAbcmHQjc=
Received: from DM8PR04MB8037.namprd04.prod.outlook.com (2603:10b6:8:f::6) by
 CH2PR04MB7078.namprd04.prod.outlook.com (2603:10b6:610:98::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5314.12; Tue, 31 May 2022 12:42:00 +0000
Received: from DM8PR04MB8037.namprd04.prod.outlook.com
 ([fe80::39dc:d3d:686a:9e7]) by DM8PR04MB8037.namprd04.prod.outlook.com
 ([fe80::39dc:d3d:686a:9e7%3]) with mapi id 15.20.5293.019; Tue, 31 May 2022
 12:42:00 +0000
From: Shinichiro Kawasaki <shinichiro.kawasaki@wdc.com>
To: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"pali@kernel.org" <pali@kernel.org>, "kabel@kernel.org" <kabel@kernel.org>
CC: Damien Le Moal <Damien.LeMoal@wdc.com>
Subject: ARMADA espressobin SATA drive detection failure
Thread-Topic: ARMADA espressobin SATA drive detection failure
Thread-Index: AQHYdOvSBcLBZWQYIUC8b9MlWQLEfA==
Date: Tue, 31 May 2022 12:41:59 +0000
Message-ID: <20220531124159.3e4lgn2v462irbtz@shindev>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wdc.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 35a77eb6-9a02-4333-8466-08da4302f4a9
x-ms-traffictypediagnostic: CH2PR04MB7078:EE_
x-microsoft-antispam-prvs:  <CH2PR04MB707806434C1F38F604C7D6E4EDDC9@CH2PR04MB7078.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  JVzX4z++XLNS/O+RSo2xFgBcRvqcOEHmZP6ZXVZ0wvC4+Hmjl0quVXYsJOQ+A3cHyIUuKeVlXoJLBEst3kIuPCBZIylOdVEqS2HB3mVRziOq8fL+Bhvc+Xy68Md2qtEqfKkFEunMy7Ro2BL0J9btrpqxLnK137Fc1b9roW1ISjZgcvFwdxAlzfvagqQjB6CbFIFslyWg4j9FWQmB1g5M9PkgpKVJndNMPBUJLOArp63zBahW5rxfB8mUHnYZmyvmoLQ846m/ZaxZT5rSm2KVFSol5Sis3y/9EstFDfmHR/OruWsrtUUDFCSJCZHSbFTOfw+OJnB/arM40WCptIoP6kT7/aN/DUNrRgo2ato6d0pSwjUhuKLgWyIdehUU8SPjmSHeuYvx6OMVP/6o23PywOdrZIG9er2JcUO4Knu+WQxoRvgU5uhgj/4P3QZPqJVy2rnlB+KNfpxUhTp5TVzSpy34yjilpHOfLr1j5+1T3+Yp4WZnVpZyXff3ZZu+JLPGsjLjyQx3Ri4CIHZt1CzHE18cbawQ/ABTXlkuomh8jQevWojd6V84H3vd58hRuwnoYSvVfKY/4Bd17Hsf/rFr6UtkHY0mliTETlguMdQC3ncodEnby0EPes3zBo28EXh/J5cNTSJ1m2rsjFbCYYN+Vkejo7hRDrrFyVbnVf7MAPZd1jizZndg3MyAQgbFYZ2928K8SRvaNMKn2RdKFOREuw==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM8PR04MB8037.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(7916004)(366004)(38070700005)(6506007)(5660300002)(38100700002)(82960400001)(2906002)(33716001)(83380400001)(508600001)(91956017)(8676002)(4326008)(76116006)(66446008)(66946007)(66556008)(66476007)(64756008)(86362001)(71200400001)(8936002)(44832011)(316002)(110136005)(6486002)(1076003)(9686003)(186003)(6512007)(26005)(122000001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?us-ascii?Q?rELZsBuce0GHgj0ZvuZ11h+/hFpt4cizjpVv8ckZzhrDExl8fc8zvkYoRHda?=
 =?us-ascii?Q?BsBZLbSd7Wkzv+Ql78A37XIYUqNl6ny5J9MLkH16jmoCLS5mLIBYSskl1ZII?=
 =?us-ascii?Q?mzpa+mA4KyK782+w8neIXkPO8XNkojYpGRIGyIa1DvN/oCVXIjcLtz7s7Z1B?=
 =?us-ascii?Q?lqeujXaCBQYxHE2QPiXWMD9bW398OPZVk6V4PmbRXCEqyIYPGXkievi0ggkq?=
 =?us-ascii?Q?r5bH7lKY60PO8AW3kFOxuQbabwBuytqj1Vc8bIDL/jYlGK/5Oq6Os/rE+/i0?=
 =?us-ascii?Q?WdYYL4+6o3iWyF/FIXPsw2wYv1kWnAX96fXPCOZVTvHm2xkuh+9MxWSwbJjW?=
 =?us-ascii?Q?6OlTRuy4rqYBeR6Tb8lqXv4OC6nDXW5U/Q2MdM0ssQFKfrcv3DnAIZeVl2FE?=
 =?us-ascii?Q?gqbohdH9r3E/jIkouSFtXLlxjmcsjaKYxvCLqkLwFNkz/Uqz/UIFdGukPUwW?=
 =?us-ascii?Q?8q5hT7L901LR+0AEbDLrJVv04PrhAfNSH+VDZ9gKYyBiTHRaA/n3si8Xz5OG?=
 =?us-ascii?Q?zbITpcpadITpOxOuRBGpdRyUbk9YgNCgLYq9/83+Q8UtcTVERzhYq6jXM+KR?=
 =?us-ascii?Q?CvHbWAD+mwqUiALF6THc9Dz5vg0obvzL7Xe03etfoKJeX/NOMLDHeD3wPP7z?=
 =?us-ascii?Q?0j5OPkixD1j3TOwFnKmzlrgtg7UwmlG/oahU6jAYxM1xmXZXzSKdpSmM2fCT?=
 =?us-ascii?Q?LBdr+x/ujEEfDMbz9m1P4QqAfTrV8CfFsKWhQD3lLXa4lrOSq5jjUtl/P/tf?=
 =?us-ascii?Q?dtVPDgwO1vWIvGKOrj6XkbrybVSeDOsoQlXbqhrfBLjRkuzX7KX2FcoUg0LD?=
 =?us-ascii?Q?TMN/tN6HdA2xrFfJTpIKxW1/oaj1f2jmA58s58rjoMdfMNp/0Fj112E7kTY4?=
 =?us-ascii?Q?q/tAuyVtG/Vce1MMxW1kEtCbY2U25HaOnHTfJvVTPKENr44goXnUwj4B9wrw?=
 =?us-ascii?Q?PzJG+AcdY6/ZjOEUech76mlEk2MZ9VzyT3qNIu7Ejuxv+TTU5+R/shoOkmqb?=
 =?us-ascii?Q?OgkuGS6lQ/9VoPPAcg1OnDwl5ah+Egj+Ghm85MobAuVqD0teb5XX+O8giHk6?=
 =?us-ascii?Q?VfxqnbtRdNH5DXCAfX/mSV4jYm6mEWhUYK8uoHN/Wba99o0ie8WzhSE9QnAR?=
 =?us-ascii?Q?9517oykl3CyLybb12EZuCcWdQQwYIPUpf7Llw1TLC4H9t7+LM2voALHwQoai?=
 =?us-ascii?Q?5YaMAYPJjDcluY+xHZ4H/hw6YxWPCzoF38/o/Tfy02DY2sU8bcO383s7fr4N?=
 =?us-ascii?Q?PyVUYaDi4rUBzmiBABu6EQk5LbBuyA3vHWwWbkITAxloKL7keb7sIoQLaeux?=
 =?us-ascii?Q?9PYZJaIWA8pNIy/btuxT4BuW4NdDySz+FfeU04n79DRNkcsRgteegzmYdEkL?=
 =?us-ascii?Q?gh7DcI/GMBsLIM8SEg1r/oF8oKf0iMKE4tdTqb3Hhr5iqxAuotpXP25RxvEf?=
 =?us-ascii?Q?sCdcI6mHBc8G6bNIC2E7R8TE2qhMyckfAOXBvE+m0G21I4yEP3ABJsbl61Il?=
 =?us-ascii?Q?7l98mcCBcPZr11nOJIObnH/zbYwNa9QG3eHt0nnnqIT0JyJ4ADuAQ2Vr6+pY?=
 =?us-ascii?Q?yWo4PwdnaH0F+fxanLtfxfIzQ/ghEjZ0Gi0wjuDnCPuJauMUg9nLwcklKDH/?=
 =?us-ascii?Q?upNjULt6DmOIcnHqoME05Rt42Iv3dV28pqkMPBQH8i+xwMyBfXG0tHL6NEEv?=
 =?us-ascii?Q?rXKVoWbbgXFOTn13coUIlEf1lxchDmJPdvbBKfCeVQ68f+ONIE0YRdr2VCsi?=
 =?us-ascii?Q?hJ02W61dSaG3kQwCSK0RdFx3KeVqOs/k7OVVonDHSZZ22904Da1Q?=
Content-ID: <363E2ECBEA673D41926FB0AAF66656A9@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR04MB8037.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35a77eb6-9a02-4333-8466-08da4302f4a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2022 12:41:59.9623
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oobCOm1W0VfqA5KxP62y/hCe4Iuwv+TgojfD1AXx/5MPdOyKXovq87iHTsE3ZV/kKDwObPKwwK/MbHXLZpnQge4AGK+JSdLQLW8hPQ5KVBI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR04MB7078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_054206_550312_18193504 
X-CRM114-Status: GOOD (  10.37  )
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

Hello Pali, Marek,

I have an ARMADA espressobin board, and I'm setting up SATA drive test
environment on it. Using that board, I observe that SATA drives are not
detected after merging two commits [1]. They were merged in the kernel at
v5.18-rc1. With v5.17 kernel, the SATA drives were successfully detected.
Reverting the commits from v5.18, SATA drives can be detected.

[1] ee995101fde6 ("Revert "ata: ahci: mvebu: Make SATA PHY optional for Armada 3720"")
    934337080c6c ("phy: marvell: phy-mvebu-a3700-comphy: Add native kernel implementation")

FYI, here I share related kernel messsages:

$ dmesg | grep -e ata -e mvebu
[    4.007130] ahci-mvebu d00e0000.sata: supply ahci not found, using dummy regulator
[    4.014963] ahci-mvebu d00e0000.sata: supply phy not found, using dummy regulator
[    4.022596] ahci-mvebu d00e0000.sata: supply target not found, using dummy regulator
[    4.031123] ahci-mvebu d00e0000.sata: AHCI 0001.0300 32 slots 1 ports 6 Gbps 0x1 impl platform mode
[    4.040180] ahci-mvebu d00e0000.sata: flags: ncq sntf led only pmp fbs pio slum part sxs 
[    4.050150] scsi host0: ahci-mvebu
[    4.053949] ata1: SATA max UDMA/133 mmio [mem 0xd00e0000-0xd00e0177] port 0x100 irq 30
[    4.388934] ata1: SATA link down (SStatus 0 SControl 300)
[    5.239165] EXT4-fs (mmcblk0p1): mounted filesystem with ordered data mode. Quota mode: none.
[   10.751378] cfg80211: Loading compiled-in X.509 certificates for regulatory database
[   45.727407] ata1: SATA link down (SStatus 100 SControl 300)   (... I connected a drive to the SATA port)
[   46.497413] ata1: SATA link down (SStatus 100 SControl 300)
[   47.267411] ata1: SATA link down (SStatus 100 SControl 300)
[   48.047412] ata1: SATA link down (SStatus 100 SControl 300)
[   48.827416] ata1: SATA link down (SStatus 100 SControl 300)
[   49.597411] ata1: SATA link down (SStatus 100 SControl 300)
[   50.577414] ata1: SATA link down (SStatus 100 SControl 300)
[   51.357409] ata1: SATA link down (SStatus 100 SControl 300)
[   52.587418] ata1: SATA link down (SStatus 100 SControl 300)
[   53.367419] ata1: SATA link down (SStatus 100 SControl 300)
[   54.147413] ata1: SATA link down (SStatus 100 SControl 300)
[   54.917412] ata1: SATA link down (SStatus 100 SControl 300)
[   55.697410] ata1: SATA link down (SStatus 100 SControl 300)
[   56.477411] ata1: SATA link down (SStatus 100 SControl 300)
[   57.247415] ata1: SATA link down (SStatus 100 SControl 300)
[   58.017413] ata1: SATA link down (SStatus 100 SControl 300)
[   58.797412] ata1: SATA link down (SStatus 0 SControl 300)     (... I removed the drive from the SATA port)

As shown above, the message: "ata1: SATA link down (SStatus 100 SControl 300)"
is repeated. It looks like the function mvebu_a3700_comphy_sata_power_on()
fails to set up SATA phy correctly, but I'm not sure how to investigate further.
Could you advise next action to fix this issue?

-- 
Shin'ichiro Kawasaki
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
