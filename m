Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 711F9C32771
	for <linux-phy@archiver.kernel.org>; Wed, 21 Sep 2022 05:03:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ynXaj0w4NnXAD7GFSCMvh71SYn9auwnu9MIOACNTso8=; b=ZloSv9daDQko9V
	KVF/k+JloEtToa+8srzl2Wi44g8BDcErGwXRa+STqbJ6oHg7tlIreAET/LWofIo3f6lQY0AtrpKpP
	D29YHwPg+wn8P/98bry+xiMl5stMFJSOqDcdTIvAmt2i2OE35l8EqofBbBFTU+aQoUe8ObVnw6wtt
	tLgsaUX+PJWdnNt2FnAylyg+bCYTfaYXzVNCdZP18EY6qtfFzQvmxVqMVcxIe0c5O5AKC8aVpEAri
	RIFXcxRKYasPYg4kTDfgL1jNO/HWEnHEVpa4C2jzpbI9p+ju92kMyGYNOdotO6vsQVxmBnw79zub7
	AGkFm68TYc9J48mr08WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oart6-008xiT-RG; Wed, 21 Sep 2022 05:03:08 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oart4-008xgf-LD
	for linux-phy@lists.infradead.org; Wed, 21 Sep 2022 05:03:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1663736586; x=1695272586;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=zMj2WUFYjE/osPLKHjHMwAOtgUm/epuAJnoB1ZTvbkA=;
  b=o9PIVJSkciF+aLcmevkrQJnZto8k7DrLo92VWQVWyKJlwbNMDqls9rKV
   Zj1FvXovlGpUAcdCiu9UFEdi9o6g8DPiGVokgPCmp6y7qRtZbkJf8xucv
   jr8yPsB4W+2qdugUfGzorgy+CfMDgkepGo6n0x2+kTAz2PhZSYct/wTJm
   J5/cSa32+SmJ4gaQEa5TF2mUphTGf6fdKCaa7Ovz94dl5PcLY7pYh22ht
   42cXy55eSZt/zV5PHxirdnZF7myol+8Lpm4npI+n5zSmBGRIiIgUloSBp
   gmRUIULm6LvKVp10tZAl3wEC8s+DLtoREhy7IcHW1QIGbVcDMYj81fEsY
   g==;
X-IronPort-AV: E=Sophos;i="5.93,332,1654531200"; 
   d="scan'208";a="217055377"
Received: from mail-mw2nam10lp2101.outbound.protection.outlook.com (HELO NAM10-MW2-obe.outbound.protection.outlook.com) ([104.47.55.101])
  by ob1.hgst.iphmx.com with ESMTP; 21 Sep 2022 13:03:03 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T1u6SG16Bj5K4qDaQZlKbItOXVeqGSFvL3eZqblZOWo+yn1dvNAR56GzsHk4D9hfMxzGgenjpxofkYTuEcvKCNKsmLE5p73VBpM/56incndTi01v6I4d2af84r7y4YhMMDTj5kxbuV3A/vBln3ifwutSqWuBQnilCKTh8JRLXo9NcACw9rI5dQIeXiIqxMWslb9geXpfIkGS2lP+6PEjPMZLRKXsivFIJ50Oe+fd43A1RtNYkoM7wcSgf+q5RHFBoWZBm6fv0WMDWaxQPoitT8oV7DLDe0XBTJFPYvLWjQIV3ORH6j6St/P4bqzQTVSqw5mvlYRq4FcU9spJQ1jVwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zMj2WUFYjE/osPLKHjHMwAOtgUm/epuAJnoB1ZTvbkA=;
 b=F5jzbE+I11nKEgN52o/6NxeEJsi8xuJf2JzTJ9RVYQXhl7CXkJT1VCKtnHbAls0DYlESRwVAXCE8zomw8q0CgtCeEZ3hGgLTPlsihKM9WT1ssDaEuUsR6MiGZvL0Fa37eb8r9BED02ZCurKr6OwXXA8Kmpa3Uw4zLJU+TN/mnb4NLTl6axTj7F3TYOw/VHBLsb5jqYP3acLAI0zSKgWZH5pE6X0cS6kdT6bx39i4FI3snSwDuzpAK+OQHzhE96WFSAb6ivu/d6ouBlKzoY78XQpQNV1YNIkrPF/8EhBNmq3wQmhZ/SMhZ+fM6x3MHLvUj5/gwNarVGhsAGYENYz36g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zMj2WUFYjE/osPLKHjHMwAOtgUm/epuAJnoB1ZTvbkA=;
 b=orfy/FVIdJ7gGLlErkaOQ7LtliwsHt2FcYJgL4AgHd+qq+ep0zct4m9CDqGbYKv4ZkazT6F2IpxM71csQHpHd+AW6o5NXENYrikkkwvP3L0EovcXjMTxB7xkQMD4jSfZeSsIBYf0hRSM26H4KF3/Rq2IOwVItihCPXqnNfB9bO4=
Received: from DM8PR04MB8037.namprd04.prod.outlook.com (2603:10b6:8:f::6) by
 DM6PR04MB5531.namprd04.prod.outlook.com (2603:10b6:5:123::26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5632.21; Wed, 21 Sep 2022 05:03:01 +0000
Received: from DM8PR04MB8037.namprd04.prod.outlook.com
 ([fe80::e81d:2da8:3410:1a2e]) by DM8PR04MB8037.namprd04.prod.outlook.com
 ([fe80::e81d:2da8:3410:1a2e%4]) with mapi id 15.20.5632.021; Wed, 21 Sep 2022
 05:03:01 +0000
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
Thread-Index: AQHYzOo7ZaCBnnYyIkere1jyQj5pAa3pVQMA
Date: Wed, 21 Sep 2022 05:03:01 +0000
Message-ID: <20220921050300.riwyofdncxscrwe3@shindev>
References: <20220920121154.30115-1-pali@kernel.org>
In-Reply-To: <20220920121154.30115-1-pali@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wdc.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR04MB8037:EE_|DM6PR04MB5531:EE_
x-ms-office365-filtering-correlation-id: 9f988da4-7d55-4910-247d-08da9b8e8ef2
wdcipoutbound: EOP-TRUE
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  iodXCkItkuvrQ+QP7dIxY1xHHMXLSgltr0+KFMtmmNCJW6Ghn9TShvg+DT7FTwuJB+J4L8xsIdKPooOh8eIF+wR+5LqeMGH3tbtJ/d7N0uRv9yGFdST3480ilrVa12dW9FsvVabZ/APa0DlcVT2zHpDd2vHLoaC7Y+D71JYDEgPPC0czRRtoIaavWaOyc2cQvkaRoovtpttBPgppd1TISQFDO6X6IWlEiA5HIxwwhtjoHqnXdXdNs5SNyWZ2vSMUcBH+/xGq/L6gQN6fZvWfdJ6BvaaxeLC/5xQBZBDEGTiC9US4SzvhM5YFsSgz9rDR+PHJWL3KfIMJobzI7t42L+J1HpqLgGvCNiYwZb1pjtLPe+z9J/7KdZdafDfhNs9DGPvjPQivbD4Bs1Ff8YW/ITgTzG3nwzT8oAUUkP5ChlMFfhfSMfNoKhQ+oX7y2Ox4aN+Q3h3ZGZpCoVc5cVgFonDPY50v8UICvWLhLXHQi/QmxqMXovJBZBndBd7nTBcVcbqJPTcEylfGcwzTV+vL+fSDReSO7PSCwJ3x4w5tP3vJZKudhMZR3Td4jk9456GmnAB1MRHhcCYjAv6yHyRXQKNtaYI+m4QIW1w922P26YSpe6kKkMpY4CTEWQ4ylyi0Ey9A6YC5D02Z4wJG8+gSNXDuCJGmY3FuhD0vDml5HGxmD3xAwGl5MUsI5YHmHOrp51Ldgtvu5PR6nD5AaateGMJPFVqJIi5L5XYe5GcqrV6J0BCwgz6d63ktIDUlaZOJXANDZgKZyTipDF79vU65LQ==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM8PR04MB8037.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(7916004)(39860400002)(136003)(396003)(346002)(376002)(366004)(451199015)(6506007)(9686003)(6512007)(26005)(478600001)(33716001)(38100700002)(122000001)(82960400001)(6486002)(71200400001)(6916009)(8676002)(38070700005)(316002)(44832011)(86362001)(1076003)(186003)(66574015)(54906003)(83380400001)(2906002)(76116006)(66556008)(4326008)(41300700001)(66946007)(64756008)(5660300002)(66476007)(91956017)(66446008)(8936002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?iso-8859-1?Q?n4mdpaf+Ur603Lp0uV512S1kOdMH8Avngb+SFMNv3YytO5k5Ft7YaAc87N?=
 =?iso-8859-1?Q?0ABoTk1dw81TVWwdy7Pco2U97ZICSCvjp5Edzn1JxUQtuZ2hea9NagivAd?=
 =?iso-8859-1?Q?zSCJ/QqUoiD+1SbkCRE0rtGvOn1xc5Fo8iLHj3m0rWrhxkXG3JmrT4vEWD?=
 =?iso-8859-1?Q?gdVn7Boa4Ak+OtoWnedv8NeFFTnRDMzFbtXkTjWzRezGOt3zrfN4CKpScu?=
 =?iso-8859-1?Q?r6fpRnKNynC7e1BFfWOxCVQr4IEoYiA/xarfdeKQEWyM6IjmIBZ9orHY+D?=
 =?iso-8859-1?Q?GzY9LGNxE+o538jvW/WTFsOo+8PpNNQqMxZ4WK5hRmEudQMv/Cz44+A7K8?=
 =?iso-8859-1?Q?lGIJW3IW+48X0b4kxm6hxXsyhTpPyLPGQ9p9ZcBiDi+Vo14pBKDSIbgVJX?=
 =?iso-8859-1?Q?uZjqrCXNDZxzQnCoDuz78ZifmSYerwWRHMqbu5CTQxSGQWyFAHHB2pYv/+?=
 =?iso-8859-1?Q?e/+RRx+N/8Ui+eBsI+kiD9hNOfwMXpKyuIK5M3MGNlsIavQCBEbx/lqrLW?=
 =?iso-8859-1?Q?u/PrnVV4lqQEpiB5hEDOe0YaxfXtANSKOfzl8N0ms6LhnUlYtn8HQC9ZZl?=
 =?iso-8859-1?Q?0SamuzYx/j1cY/YuQ7PAwl5UtUM9N+8jGhMND6vtMO5QkgqP7I3mCoeL5z?=
 =?iso-8859-1?Q?+6IMMFFUcq2tZ9VfWCU68EXXWnl6KIAvda0wGefCmUEahr9VbkYbz+0YSG?=
 =?iso-8859-1?Q?dKrg4TePP7cTiHHYpKuCyhFnybXQS+Tj+yW5et03DSuYkiYBSQnUH/SNge?=
 =?iso-8859-1?Q?xEGj3Qv3Q+bEMHBBbJaS+nzb31tD9pvcXdxcFMPj/dfnzMhfVd8Zj+In7y?=
 =?iso-8859-1?Q?70g9MMsJIY4DNOBLkSz4nE45RwaJH7Gbb6mJtLaPt3DrkYIsX+ZJ+OGNeT?=
 =?iso-8859-1?Q?eH8EsjbGmYjtp2N75sk80EpznZdzpNIrC4NekCi02LuO0HbRnx31/fEOyR?=
 =?iso-8859-1?Q?i3AQ2SnhPQcwCUQ2ElQ2rRPLX4PZLeRwGII8M4uUCuwF9y7V6lhMcLZ3d7?=
 =?iso-8859-1?Q?U3OEdVJrcaFr2CA6zlVwOz6PS9m6on4h+i8sydMDBxGrkFnu8t0bBvQK6H?=
 =?iso-8859-1?Q?slbacyW0ftP2b1al6+ypFZtSz4SmaIX6YzYDWJ17s3d74ZiOaoDZmbl2pM?=
 =?iso-8859-1?Q?bxDxVcGmgeiWwjtzYF5w/kz5LHhlSkT9QRhuyX4Uf857TFTCjqBqDNRttc?=
 =?iso-8859-1?Q?QA6Q+jipYff8NGde3TLrDVVQZUn0RYexKpVZP72gxfiZAnFkOm/Y9q+0Zd?=
 =?iso-8859-1?Q?tRU/Gv54dHZOvxEzc4I78AbThSPkWRojgWslIVdi9aieBkelH5z0MpUnEK?=
 =?iso-8859-1?Q?10TSwp1kil4v+3ChRAbLFKMtPBHmICUzj5dK6s4nJ/sQWeNdOZkp5sdL17?=
 =?iso-8859-1?Q?WMHL5n1yXhfnNWqHqI8ydhOSo/4Eg6s8Ih/yxruFd9iG94Vj7NtFK/mv05?=
 =?iso-8859-1?Q?JxgEb4xKkJRuglist/vAQxlVYQgPPqa6Vp4u/D6i9H5/sl0wBYbjpeIYm8?=
 =?iso-8859-1?Q?pYATJ3rIOXXYya6eesBPyQ3M/GbakIs0Ec8LtlQiM7V9TtDJzPG6qZmrT1?=
 =?iso-8859-1?Q?CYB6y+GY1UQ2Ddpku8HKDcbWTETk1kIO+R9ylr1K31WK8vgdn9FGJDw71X?=
 =?iso-8859-1?Q?imqwnmAIQWqA9pDk3SJkVsK3fn+iZe8c5VhqAbXxU6GkaoaHuns+PZFuP1?=
 =?iso-8859-1?Q?226bxRD+vAHkOydxWlw=3D?=
Content-ID: <0B9B19BCA9D5084E9567D7FDB20C8F23@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR04MB8037.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f988da4-7d55-4910-247d-08da9b8e8ef2
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Sep 2022 05:03:01.2084
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TiPi3yrQYnL1pFoNeyM5ke5FVAf1h/Ua1thy2rYUjPSxSSAyM3Y/eExR/2EPjhExUyqcGpfeC3qfZr5+i9gbrN55QrLZ93MaINMnHnVGEyo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB5531
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_220306_735979_A772BC87 
X-CRM114-Status: GOOD (  20.44  )
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

On Sep 20, 2022 / 14:11, Pali Roh=E1r wrote:
> Turris MOX board with older ARM Trusted Firmware version v1.5 is not able
> to detect any USB 3.0 device connected to USB-A port on Mox-A module after
> commit 0a6fc70d76bd ("phy: marvell: phy-mvebu-a3700-comphy: Remove broken
> reset support"). On the other hand USB 2.0 devices connected to the same
> USB-A port are working fine.
> =

> It looks as if the older firmware configures COMPHY registers for USB 3.0
> somehow incompatibly for kernel driver. Experiments show that resetting
> COMPHY registers via setting SFT_RST auto-clearing bit in COMPHY_SFT_RESET
> register fixes this issue.
> =

> Reset the COMPHY in mvebu_a3700_comphy_usb3_power_on() function as a first
> step after selecting COMPHY lane and USB 3.0 function. With this change
> Turris MOX board can successfully detect USB 3.0 devices again.
> =

> Before the above mentioned commit this reset was implemented in PHY reset
> method, so this is the reason why there was no issue with older firmware
> version then.
> =

> Fixes: 0a6fc70d76bd ("phy: marvell: phy-mvebu-a3700-comphy: Remove broken=
 reset support")
> Reported-by: Marek Beh=FAn <kabel@kernel.org>
> Signed-off-by: Pali Roh=E1r <pali@kernel.org>
> ---
> Shinichiro, could you please check that all USB functionality still
> works correctly on your board?
> ---

Sure. TL;DR, this patch works ok for my espressobin v7 board.

Tested-by: Shin'ichiro Kawasaki <shinichiro.kawasaki@wdc.com>

I prepared base kernel v5.19.10 applying the commit 0a6fc70d76bd. Regardless
whether this fix patch for Turrix MOX board is applied or not, two USB port=
s on
my esprssobin v7 board worked as expected. I confirmed it by using USB thumb
drive. The drive was detected and its partition was mounted successfully us=
ing
either of the two USB ports.

I also confirmed SATA port is ok (my SSD card was detected without error
message) and three network ports works ok ("Link is Up" message on network =
cable
connection). I did same confirmations with the latest firmware (TF-A and U-=
boot)
and old firmware (with version date in 2017). All looks good for me.

-- =

Shin'ichiro Kawasaki
-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
