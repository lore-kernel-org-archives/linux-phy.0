Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27C50C00140
	for <linux-phy@archiver.kernel.org>; Fri, 12 Aug 2022 12:00:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M8sKHNqwCDqgPodmwqbBDcLL0oCFjQ+5N7esY6IjssE=; b=Sf6AkbdJpkMRWI
	OLsW1nylDSAhcWuzYhl5DWQqVg6yJ38qPn/PJJYWnE+rpwoKj5u6HSeqiswmawkkceRBVkbhiGSku
	TmRlyFc8rwELlRZHPhelskcnCmNhJYjOtIbTYwGf+YhNzFoBkLWbPdvD9Lp0aKXIWgegNGMSS6eiz
	SCguyilR24Pm1kyQy4ts37AlxgRnbrFf++oNsWOVJFSgRaj+oxGpiAxwpMCiCL8A5XFw+FVZ6l67p
	XRClUtdrBGQZcSeAd/NE3wCM8pyYWruZ/+j/AwyVqHqruFoGE8czIqUlFleJVGuuS3tf22tOZH8Ow
	C/sVKUhQkcb2lezSLC6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMTLC-006vgQ-HO; Fri, 12 Aug 2022 12:00:38 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMTL8-006vdI-Uj
	for linux-phy@lists.infradead.org; Fri, 12 Aug 2022 12:00:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1660305634; x=1691841634;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=w9VgV8KP6+8o3A2fntZMyUi73zPf7IGWkxHDDp5gYBI=;
  b=AmiK7WFV3eiTolt44wPwzNfm3i/nNP/mWLUiBiWDyFV0ZoeWEqD0i0Es
   PvYTShNJV2b46BGUAlujpf5B5VCvDX/4UiTcJ/7aNcLmzOS/ew2dPz9XO
   K6zRauF70fTgEEt2xwQvhMlTXlLWSsvFg2lL6RtADBd6OlFSqCNzSfkrM
   LN+5N80Sj1Jl2m+tH4XHb4n+ZTEnGVI19uehYr8itlNmmFFEBX4T8BzYG
   EF5+CFB1MDiFjOLBhp1aXP5dvkaKRBaGdWtleht5sjCBGHUHnDDd2KTrB
   oCX8w2PerTa74Vln7jvmCQhkS/viBnjXGui6PcrpwvWMVdTY+BeTQJL2X
   A==;
X-IronPort-AV: E=Sophos;i="5.93,231,1654531200"; 
   d="scan'208";a="320636384"
Received: from mail-mw2nam12lp2045.outbound.protection.outlook.com (HELO NAM12-MW2-obe.outbound.protection.outlook.com) ([104.47.66.45])
  by ob1.hgst.iphmx.com with ESMTP; 12 Aug 2022 20:00:30 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nvZIQtxVyVk8gYUCptE9R5vx1nIOoJv/5MkzWU9sQ9utVRK3nlNPc5T7vF0oDUU23qZr43AXp6wRq8aE3B51Ff7jyQO76fZnmIt/NGvnqTdtk1srGHLb40//lBbLpROzl4Msz9TKIACGGakWUFcl5PjymQfJtEHffQbOOakIQt9wOLNCGApGGPunaFZAV0iiJP6CQjhvYUb1rXLrbsC5S4bWkrRX8rHCDLT0477mlOLIjmnhNd1xXGGgFaGL/gJx6AVOtlrL4HGvtS87fPrv7YUyrdhrdKuoyFL3y/CSSeeI9eaYJoVC4lEf+G1fiFd6H7PsXjJUnAtgsTqGmMw4Rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t9mmcDYEmtPOpIWxKUh/aefpf9Eu9QxarCxS3V5gmqA=;
 b=CKxqEJSbJMUvP8oSl0hQv0B9b8Bcp9AAW10B0y24oYZkePghMNHkGE+g3Z99/gOOs67zdhAYTwbR+Ln9dpKI3AzPKgD9DZultRR4wcAJm6i3YDQi1tBrnfgAADw3RWWz3+fYEGfnQ7fwuKFB0wvsQyM7gwUVIeGoz44276/I936SMR95lFg4mp1pAUb9v/Dt7+DjJxCrcbbpltXhlSsiUs012iYCNL4MVPXXjahVQUnMpSzVqWMDcZCGP3n6LFFg9hMTn8mIW5OKYY3ksF1MrECUNjQBKi0NEzyszDH6KCJsyAhfFGX8oaLrqznV5wUGQ6rDRKB1wr1EW0W59ccOLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t9mmcDYEmtPOpIWxKUh/aefpf9Eu9QxarCxS3V5gmqA=;
 b=nLRn5QF+AHCFzKIGndp4dVpCvZbcKapJLWJFeTKHFZGTLu2sFpUWtL1fBoVFh9C0DCDwf1zk+yCe0b2YG4zfrRVE+rDhU8D+cPDbJZjybmdubdxTVz38ubCfQR4Hw3l6m+P0eLsW8Bu6b5O6OU8hXHLHrD4NBye/kFDpdLQxBSo=
Received: from DM8PR04MB8037.namprd04.prod.outlook.com (2603:10b6:8:f::6) by
 SN4PR04MB8319.namprd04.prod.outlook.com (2603:10b6:806:1ea::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5525.11; Fri, 12 Aug 2022 12:00:29 +0000
Received: from DM8PR04MB8037.namprd04.prod.outlook.com
 ([fe80::59dc:25d4:781e:2a89]) by DM8PR04MB8037.namprd04.prod.outlook.com
 ([fe80::59dc:25d4:781e:2a89%6]) with mapi id 15.20.5525.010; Fri, 12 Aug 2022
 12:00:28 +0000
From: Shinichiro Kawasaki <shinichiro.kawasaki@wdc.com>
To: =?iso-8859-1?Q?Pali_Roh=E1r?= <pali@kernel.org>
CC: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"kabel@kernel.org" <kabel@kernel.org>, Damien Le Moal <Damien.LeMoal@wdc.com>
Subject: Re: ARMADA espressobin SATA drive detection failure
Thread-Topic: ARMADA espressobin SATA drive detection failure
Thread-Index: AQHYdOvSBcLBZWQYIUC8b9MlWQLEfK2mvtwAgAGhgwCAAsWmAIAAOQWAgAA9WAA=
Date: Fri, 12 Aug 2022 12:00:28 +0000
Message-ID: <20220812120028.xcnvr3ocxmmkioqi@shindev>
References: <20220531124159.3e4lgn2v462irbtz@shindev>
 <20220809094234.cpv6tdpmqfb3cfqq@pali>
 <20220810103654.w3yurhdeulgyepbb@shindev>
 <20220812045650.nzisin52zfbbwhsq@shindev>
 <20220812082055.dvwmjcvsyb3iglav@pali>
In-Reply-To: <20220812082055.dvwmjcvsyb3iglav@pali>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wdc.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a0996e1d-eaee-4268-5449-08da7c5a3ffc
x-ms-traffictypediagnostic: SN4PR04MB8319:EE_
wdcipoutbound: EOP-TRUE
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  G/ZDZWTjp8FjF3K4Zutd7IoCqk2/L1gnLciNQ5RSvFilxg6LHZ+O97NQR5LFKqhHBo8KsktD4bFBnYeFMthxWs5j12ejm/2PVGzX3o585wltHJThMgiG8xeK3dJuI2pyKzHOXZUTAqPrulvVROfhDeZpKDvVNr/rEQl5Ml05mM9sqS9LIv1efkVq4NgDyG5dFsDZjEQVjrGInWH/9eWLJ4Knkyi+TppZu7CJDjrKv/A0g6CkUdX/m4nn36VR4lCfU07eXMLMGgh6J+9aBs6eaXTI3cSOJU1OWg3G2VLG1LKcXmb9Rj5LhOZslpQeKC8odEY836qbrLqPoCX+TVg83uQW8gBYaVgmoaPjqd440MWOAEDK5hUXRYXfxMc2qImvFGlPI2ZBPen0FeXbkI5b9Ly3UIFeEGzKTJpsYswSKyHCwhLXGRz3R60IXDH36wK8+E7LqCwgwM1SrEEF7Hcm9VS/syAGy2lLyk4qg5pPvwceLNxGvfyCjniey4UxvEICA581BPpXlVYnCbGFEO81f9YTNj1ioCUQ9SeIC9jCC+Nc6xLKaE9hQZgo6ZcglTiXbajQX70SCEacSxJtjryg4c1yvvvL4MOdVJ+HMd4vn94Mbt0ijUDCdySWHtntnw88m1xV3IpEXw0lq0ZyZ5HkMaJjRnqHhJPt2tyrvzqZYR8MzSjOtMnqei39xQX8CgcC+cZQnm+kg87+lnSoqTd32Mn9u9dzWVjaFoA5ywh0KRx4oaqsnLKOXq96GqAmP4wPF8tDvYLD1Jj6hVJtKHEn5hAZ7+LEvVCkrzLcYsKMTLbImy0PprKPr+GXtTKTyVMLcJcJXn6xo1XrYO4hahVKmw==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM8PR04MB8037.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(7916004)(4636009)(136003)(396003)(366004)(376002)(346002)(39860400002)(26005)(38100700002)(82960400001)(122000001)(6506007)(9686003)(6512007)(83380400001)(38070700005)(186003)(86362001)(66574015)(1076003)(6916009)(316002)(478600001)(6486002)(41300700001)(966005)(54906003)(71200400001)(66556008)(66946007)(64756008)(66446008)(66476007)(5660300002)(91956017)(76116006)(4326008)(44832011)(8676002)(8936002)(2906002)(33716001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?iso-8859-1?Q?Tj3wsWGQ0YcIoC+24C8IVlbkmZ4q/llAZWt2G8Y6nZWT7sjZx0yJsz/MBP?=
 =?iso-8859-1?Q?INKTZmlo4ZXQEVfz/nWG3iIFovSHM2zyHuAVAQKkEK+LjlDxBsTSGGSQTn?=
 =?iso-8859-1?Q?j3bs5guTYiQxlavcPgCC2DrAuCeWtHctyPMKZ2ibSX1HI2z1rHoIiU+jGO?=
 =?iso-8859-1?Q?HHsRPeP+LcvfPa5lwY83f2EtLmuJ0PcxcVEZbHAeL6iFa1tw5d3tmwZ4NM?=
 =?iso-8859-1?Q?+gc1ah+mAryS+hkOilTFHJHMMY8fdGvwX4hLwIEt/rFE1CrSQK/tVkvCTi?=
 =?iso-8859-1?Q?1fG6AxjW3PDR8H/B5P6wA7uDmoxWhTYQTOtF1L5eW5+FPowyUVk86WfGUy?=
 =?iso-8859-1?Q?YdfJPLS3+MwwniMmm29jaP7HrUoPrx+h+9dwNWkrUgg00sfrCJwY7n32Z4?=
 =?iso-8859-1?Q?iogqWT0zW6BLlw2yEoLeX3c2BWC1vr/gJTRMlKcXN74MPuBANP8T2ALb+J?=
 =?iso-8859-1?Q?CgX9qc/jehjPrp8hb9zwE5p1h8fMvCLnZOe49kZm9+HruJWD2LEcRB/5mY?=
 =?iso-8859-1?Q?VC/VP1gMzT09U59VXOkjcrbV04wqI7VG2bjuiefUwmuSIlXjdBYk/pFVCB?=
 =?iso-8859-1?Q?hlhn8JmvtZkTxDpuSnz7eMPE6zA9T1CcSmGxj0MlxXhe/F7j2tFuoTktTQ?=
 =?iso-8859-1?Q?0WQjHpnlrUjpZPwwS+/WCrvwgChp6IvmQhtYgab++aVhLh+SpFvjpnDfhO?=
 =?iso-8859-1?Q?RL5t722fLQQBSj41nadB0dX9Wj881tKkpPqqiIofN4YFs6HY6W+QiDAiSI?=
 =?iso-8859-1?Q?ycvU3qyxb9J4XZag+8IJTA+6y9sjpjK5oswuNC5O9FxXC3NtLIWdSeOoYa?=
 =?iso-8859-1?Q?brf0P9piuu0/+G1DrRPoQa34Qzt58rCzIzcZFIux0B2JvW3EXhqS5RS5eH?=
 =?iso-8859-1?Q?b9FhrtJ10uufETAwJNm+ggn3eLdT8Bhe0ktMXaESiCt6KwiTACJn9kTyia?=
 =?iso-8859-1?Q?6NO/Zz7gxUHkkWXI+mktLdA3YgruD4YhPD3pElnO6vMO1cGMEIsXKNvmE8?=
 =?iso-8859-1?Q?f9pQBY6y9iXqYxi6q9ca7we7wjeXPaldYFGVkMdvQyEeabGpfICTsA2VSM?=
 =?iso-8859-1?Q?hylPfAMT9apGJXI72WeXlGrvcpJC9OxBbhw9o7ij2U1dbciD0t9VG5gkxM?=
 =?iso-8859-1?Q?PUGwsDcxaakaB+MzBD6Ck16lLlSsN5fAwLBIXR4Qo8H+TIHiYVnjwj1Ni+?=
 =?iso-8859-1?Q?ZXaQQDHdKgLdhwrIWlcjydVDgqmHh0uezoOsJMkfQXI2tfY6zQXFRTZTgv?=
 =?iso-8859-1?Q?DsjgT1zIje3eeHmpNVOGs3ZesW2qXVPktE0MeNMgCIWCtp4RN1WWAomwwv?=
 =?iso-8859-1?Q?NDY9ER9Ieqld/Fi0iuElcEQnexua9CTmJrtcFKMjmkoRWfZjTkfUEDf6o6?=
 =?iso-8859-1?Q?vbcdWP0hAzkuX5SC/n9ts/M9QTAOxGHsBwkif9FVprn3Qlzf1ivpKPOXeH?=
 =?iso-8859-1?Q?5MMbdSRXiwiYufAf2DRngPIOF8YnfZ+LzHZQrP/ffSaikj8V8pghz+inBG?=
 =?iso-8859-1?Q?fm7S7Gbd/zMEc8O43AmB54cQLY/jT1qOWEyQ757eVQ4xX3XxMWtXyBZKkV?=
 =?iso-8859-1?Q?4eBoJHd/UXSPuhDIyEFbFExgQyLtlw+u961Bh6LVTlbrc8/7Zq/UAJRUL9?=
 =?iso-8859-1?Q?eZni1sbWAXbK5axdsj8UcBRZoZrlpk/vaPGXJdA7LnaaUjD/pazuA6SgZY?=
 =?iso-8859-1?Q?iQuzKymIjoTNQNIxtBk=3D?=
Content-ID: <02B1C1DAA95EDF44A70D8042AA85E914@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 	1p9ef1LmXhMPpl2cIH3Cbiesib/QzW1TpwALUgMfji4hO75/v4AnZzrAo7bkfDnvC7l91qJ85bLOyUbRTQEqDRCP7VxKKnwlBzIEQEpqU2cmNUdNObutLit/nd8x+oxSzl4j7UCeDjTIthwUMuBw2NijNlFW9Wt3pOTZCWuMU4h9M6fEygs08/0UwWle7+LXqeV/H5mNadINyiPiYVG7PYdR5AuuGZ8CWH3F5qcYXPM8uw65NWmTJgETGy3xB53sJ1tBgUUt1IV/aqg5DQfvHmf6S2DlTOwlkSCec/46bDMoVomRDIavajCUfy7T++F3Uoa1NDjXEsOuTN3rGoy1xr+7LPNzz/DijU1mA+K39AibB1cpJkhMJE9EoOYWcdfxlDO2eOHl9dahF3fkwjPOsuzC9xH+qQKUPMCxs2MquEDkFQ04DI+2y0R/TmcJ9sNRWmDybKYzwfPM9iyKUUXtAb9MvXssyKIkwxsLLqHHhPvYsjmSrCZ6R1K/nqXCeR3SJjsCnMywFKY36jRPwfJcOdKP+NAoGbCXASfedkhFjf85Y94nufV3IDkqeE9ep1jbJYuaIdoui/JW1tZUI0Bns8+LmlYNSNkvdHmRkesdjPU/F+Rr3dBzGA0fnFr8DGKqh15xLPEzRBUvz/UoyTrLJgxZi04H4Cuj8iAsUUoJStUKu0uG8wHvx5cMTXVZ9GgLIRG2v2/by3cLEhM/zpfUsfi3XuaTcM+KCeiP+Aa4Q5fNFEhlGvOYKzX5Vwe436rAogBuKXTyGcHq/o92ESS0GHpvxnaE89a9aRy7pKLfhg1qIIvAUX/x4IiB5GLVpI+4pUVCVPVfrW7MoFJTXyE8Ug==
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR04MB8037.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a0996e1d-eaee-4268-5449-08da7c5a3ffc
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2022 12:00:28.8436
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Lx/+E4XCeDkrn6PkoHfJbKLCSSDC/umbk0G3Sdu2b+eD+02Ujf3mnA0Mz0rCYOwnuAOlm+7YieL3rdFDYB3M0kt9gRrvb1YUj7GyBkBgS3M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN4PR04MB8319
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220812_050035_266946_4F8BFD72 
X-CRM114-Status: GOOD (  18.58  )
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

On Aug 12, 2022 / 10:20, Pali Roh=E1r wrote:
> On Friday 12 August 2022 04:56:50 Shinichiro Kawasaki wrote:

[...]

> > I noticed one difference between your system and mine: U-Boot version.
> > On my system, it has rather old version now:
> > =

> >   Marvell>> version
> >   U-Boot 2017.03-armada-17.10.2-g14aeedc (Jun 01 2018 - 15:39:10 +0800)
> >   aarch64-linux-gnu-gcc (Linaro GCC 5.2-2015.11-2) 5.2.1 20151005
> >   GNU ld (GNU Binutils) 2.25.0 Linaro 2015_10
> > =

> > Do you think it's worth trying the latest U-boot?
> > =

> > -- =

> > Shin'ichiro Kawasaki
> =

> Yes, please update firmwares to the latests versions. Or at least try to
> boot new U-Boot via UART (without replacing existing version) and check
> for differences.
> =

> Building documentations:
> https://trustedfirmware-a.readthedocs.io/en/latest/plat/marvell/armada/bu=
ild.html
> https://source.denx.de/u-boot/u-boot/-/blob/v2022.07/doc/README.marvell
> =

> UART booting documentation is currently waiting for review:
> https://review.trustedfirmware.org/c/TF-A/trusted-firmware-a/+/16198

Thanks for the good references. I've managed to build U-Boot for UART booti=
ng (I
use fedora, then needed to identify Fedora packages corresponding to guided=
 apt
packages. I also needed to fix a build failure in A3700-utils-marvell.)

I modified board jumper pins to UART mode and downloaded the built U-Boot u=
sing
mox-imager. The downloaded U-Boot showed the new version and detected my SS=
D:

  =3D> version
  U-Boot 2022.10-rc2-00049-g157861e6af (Aug 12 2022 - 18:10:21 +0900)

  aarch64-linux-gnu-gcc (GCC) 12.1.1 20220507 (Red Hat Cross 12.1.1-1)
  GNU ld version 2.37-7.fc36
  =3D> scsi scan
  scanning bus for devices...
    Device 0: (0:0) Vendor: ATA Prod.: SanDisk SDSSDA24 Rev: U210
              Type: Hard Disk
              Capacity: 228936.5 MB =3D 223.5 GB (468862128 x 512)

However, after booting Linux kernel v5.18.16 from the U-Boot, still the err=
or
message "ata1: SATA link down (SStatus 0 SControl 300)" is printed.
This may indicate that the error is not related U-Boot.

Now I'm not sure what's the key difference between your system and mine. If
there is anything I can do next, please let me know.

-- =

Shin'ichiro Kawasaki
-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
