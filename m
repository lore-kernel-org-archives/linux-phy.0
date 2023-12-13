Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3928C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 13 Dec 2023 02:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q3kbgj9tqidf+pPMaXb//Rqqyd/YAHL3zHrq9jdMcW8=; b=YVvf2VCnPOMm41
	k9rzSWa7dp3ABfAOwuyO309MsnsLvvAIA/OTSZ4Qos3NWPzPFLVhqjxI0qNLoxD2lymtO9tao8oy/
	NF9enTyCndqTJmsdmquQLGtq/Oigpr1rrZgY/zKahJRkPFUmCOQ01F/xcGXAAB9mHBzuPg5NbS7ad
	7aWpxeeP7IW3/O85ndB+tQiPJJas9Gu6gt0nSvL40Jrw1HIHogprQg+WhMcBE5Q841NsGDQ3d8c2s
	BrA0yRzKwNEMfVjvKdkNZCpm/lBcd9ufF84nSLyy2eQ6tmUDm0HceaYzaAuLyEJdsiCEK2d0N0ttS
	pLF/JpZ/RF6684BuKClg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDEnz-00DNuN-1O;
	Wed, 13 Dec 2023 02:16:59 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDEnv-00DNss-2X;
	Wed, 13 Dec 2023 02:16:58 +0000
X-UUID: aa7181a8995d11ee958cff29c719f35b-20231212
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:To:From; bh=IqY5Md5O1f7vIoQFgC2t1OPF59iHm+75Nbuox0fCq0s=;
	b=ohEkbvldvlqp0Dt8IK8nuwbms5csEys+55y24SNDkNUj63V0Z0/GCH/OIIKb/fZnkFD+zdiMqPcaNikSZD6YDxOhCABG7McPfxXVAt0Oz4I5NpSmPNwF7/OUTEVIst18AtSVag5PIwByXtTJekSW35McpICXrNjIUI5sNETMc1Q=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.35,REQID:8104f2d3-5704-4431-b9de-f817428af1c3,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:5d391d7,CLOUDID:38981bbd-2ac7-4da2-9f94-677a477649d9,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,
	DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: aa7181a8995d11ee958cff29c719f35b-20231212
Received: from mtkmbs14n1.mediatek.inc [(172.21.101.75)] by mailgw02.mediatek.com
	(envelope-from <chunfeng.yun@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1918776831; Tue, 12 Dec 2023 19:16:46 -0700
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 MTKMBS14N2.mediatek.inc (172.21.101.76) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Wed, 13 Dec 2023 10:16:42 +0800
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Wed, 13 Dec 2023 10:16:42 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JR83irdzf0UxrSn8pV0p9Y9c76HRw3hrCYplIcmrVPg7RegWjyAq/0Tl0AHAC21qM1p68mbVt0Sh4Giau3VxWoO0YivvUoocP6OLXxu9kncviZPhOCQrSdU2x+yH06YfJ443BTuMUyWvFpJxDYx/quuftf2zGJHgZxEGjMQxXhiC0071mZzWxsxjv/tnU/2zaDA7UhN+WRcn0SAot78H0kWv7PGnwgOGo8P19XJsGa2+zHOkNvAr5A1DF96LAf0GIujVZrA7F350G/LRHqmi82iLrMpfsxtCahAzv4xlJCS9j2Uy+juvNok11MwY9zKp9RChgg20vmY8LRNn2YcCbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IqY5Md5O1f7vIoQFgC2t1OPF59iHm+75Nbuox0fCq0s=;
 b=cSja7aybvGbI8X4JzTfMltsW5qi6j5wtgGsM9bPBzgTNYAMge63IBmTtJxaMNDlRjPU8e1K8HOy++/luscQ6p83cPtSiTn+bAgDtjuVRStP/1JFj1wMJlLzIPhxOWKJib7/kauzSWb1++J2B+BZRAffoUn8Qb9R4Vnc35yGp4d/K8gizdmNp0L6WtlqYSyzJg43oQINkNkHj5HjJW2WQk5G/k5EJrloOd3VWK/TuGyMktH2DlIFvgTxW3OGmLHsTmKHc+jfGrPhI5f3TzG9neK5euO3dSzc4Fi7PF7uDACfng6QZnClf9g53ebK8DT0PBVH87bWKJqSL7d8cAT6Eqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IqY5Md5O1f7vIoQFgC2t1OPF59iHm+75Nbuox0fCq0s=;
 b=o4Dsx0UtHfT5mJW9mZmUlyX74LPPpIzwdR0uNVKjTPn17/ivG1mlmQRMYzprwexRS+hZ6w1hlTg/4g+Pzxx8HvJ7tZCcNRZY3jUpzLKAtsWWs/zkygPNSxHYmTch+RF3eE8sTEgFWJZD8fvKNCgU2qpGy+73qvBc23InkSiK9Rw=
Received: from TYZPR03MB7153.apcprd03.prod.outlook.com (2603:1096:400:33c::6)
 by SEZPR03MB8931.apcprd03.prod.outlook.com (2603:1096:101:227::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.26; Wed, 13 Dec
 2023 02:13:11 +0000
Received: from TYZPR03MB7153.apcprd03.prod.outlook.com
 ([fe80::75b5:9f6d:dc01:9946]) by TYZPR03MB7153.apcprd03.prod.outlook.com
 ([fe80::75b5:9f6d:dc01:9946%6]) with mapi id 15.20.7068.033; Wed, 13 Dec 2023
 02:13:10 +0000
From: =?utf-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>
To: "angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>, Sean Wang
	<Sean.Wang@mediatek.com>, =?utf-8?B?TWFyay1NQyBMZWUgKOadjuaYjuaYjCk=?=
	<Mark-MC.Lee@mediatek.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"lorenzo@kernel.org" <lorenzo@kernel.org>, "nbd@nbd.name" <nbd@nbd.name>,
	"linux@armlinux.org.uk" <linux@armlinux.org.uk>, "hkallweit1@gmail.com"
	<hkallweit1@gmail.com>, "lynxis@fe80.eu" <lynxis@fe80.eu>, "dqfext@gmail.com"
	<dqfext@gmail.com>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	=?utf-8?B?V2VpamllIEdhbyAo6auY5oOf5p2wKQ==?= <Weijie.Gao@mediatek.com>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"kuba@kernel.org" <kuba@kernel.org>, "p.zabel@pengutronix.de"
	<p.zabel@pengutronix.de>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"davem@davemloft.net" <davem@davemloft.net>, "vkoul@kernel.org"
	<vkoul@kernel.org>, "daniel@makrotopia.org" <daniel@makrotopia.org>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
	=?utf-8?B?U2t5TGFrZSBIdWFuZyAo6buD5ZWf5r6kKQ==?=
	<SkyLake.Huang@mediatek.com>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "kishon@kernel.org" <kishon@kernel.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "edumazet@google.com"
	<edumazet@google.com>, "john@phrozen.org" <john@phrozen.org>,
	"andrew@lunn.ch" <andrew@lunn.ch>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: Re: [RFC PATCH net-next v3 2/8] phy: add driver for MediaTek pextp
 10GE SerDes PHY
Thread-Topic: [RFC PATCH net-next v3 2/8] phy: add driver for MediaTek pextp
 10GE SerDes PHY
Thread-Index: AQHaLK4V9cHJRF5XD0qlmI2MZjuVVbCldiIAgAEEVoA=
Date: Wed, 13 Dec 2023 02:13:10 +0000
Message-ID: <d54e1438f6d18d0c3e9ad6493903a3434c7fcd3c.camel@mediatek.com>
References: <cover.1702352117.git.daniel@makrotopia.org>
	 <a58dae1cce1b49093b0ae05159c784a9ec02f058.1702352117.git.daniel@makrotopia.org>
	 <d5d0d01f-7df1-451a-a4bc-4c85f31b03db@collabora.com>
In-Reply-To: <d5d0d01f-7df1-451a-a4bc-4c85f31b03db@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB7153:EE_|SEZPR03MB8931:EE_
x-ms-office365-filtering-correlation-id: e7accf42-62c3-4e5c-3e0d-08dbfb810e17
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 63ZhrLPgERDqe0NozehxrDEQV6s7nv5VWCqSdf5LmXRX17xZ6AXjZezBlbOX/s7A39LZTFhYiGKWbGa1fdDGMS/Rw6Tb+lEpqwac8Z8Ud73ycq7MGluGklLw+8/MjrHaVlKPKyovDZOZUI/HY8OrZAhoeRjdqRJNkum7SvInbOpHs6pFBMwZqRCU58KchWiFU7uOY/yl+HO1661GdrhHy5h6gjgtyQfT42ixIEq5gWjjT3cYBaE7CQBP98U1s0kWWGS0Y2T2ynXTSleBXN2NZq0tL70BRbT76QpVsrv8dmFoO6i/XmYRlHmLBGjftEmFtB3IDg8ZQPkYGdj1UGdD/RXcB6v/cLXvaVEf6Yu9MNyAwxImCbftJrIy4m9hk/LLxKraKQbSndhnFoi8Y+mKbWfHKUSdh3kkS8KA3Qh/R9PjRhSQsT39MkOSIDeq1Js+4WVrT72onOgyPlEhiGpYRShqoCxUagaQrcI8kCDrmTSXnSgi2qfP8W/gDeNrO4ZT/E3W5Gp/gTMuILhFOMRcxLopgifdWoLzdP01Ct6/XYg60ScJED9RrJUItURznY171sJd4bQdm0YFI6XH/CveM3IX/CNey7rpdbKaxK110ZHibKyTkO4V2qnmwhLFow6gCRDkSsam/2L9y8FO2SP3+LoexOfSXjHqFllK+yAo2PTmIhIedamkS71FuiQPIdZtdXZ/vzrGcEei3cY8ECzLaw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB7153.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(376002)(346002)(366004)(136003)(396003)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(83380400001)(41300700001)(26005)(71200400001)(38100700002)(122000001)(8936002)(316002)(64756008)(8676002)(7416002)(30864003)(2906002)(4001150100001)(5660300002)(66446008)(66556008)(478600001)(2616005)(6512007)(6506007)(66476007)(66946007)(76116006)(91956017)(110136005)(6486002)(921008)(36756003)(85182001)(86362001)(38070700009)(99106002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SGNzaHlkRHNKZE9DVUl1TDh2ZDhMR1E1dnhQVHlkcjl4Vlp0MlZpS0grdFpT?=
 =?utf-8?B?d2tWWEhjWmJLcjg3bm9idUtmTk5xOTVJY1crd29tWmdmN3BLQndnaGpQcjIx?=
 =?utf-8?B?L0lsRkdaSWM1WENoTEFSdGk1TXNlOHNkdmdjUjRVYWFLZEdYWWVqZ0RDNVBL?=
 =?utf-8?B?K3Y3SGRCWFIvbkpFd3lIak90bXVHcUc4Qk5HdDlKUElxMGdpWWMzQ2xqVEFE?=
 =?utf-8?B?VGVqZzFxMUdILzZLRmtpcGN0QnBVMlVBY1lyR3k0M2RnMHZqYWM3NUYvT3VV?=
 =?utf-8?B?WGVtT0UxWUhyMTBLZ1lkaW9hMGtHSlJhNDA2bW03YU52WDZQMy9XYlhHdmty?=
 =?utf-8?B?NmtJaFRpakdnblFRWEtRbzlhODVVTlJhZzFReFp0eWFkL3BLM3BrL1R6QXBV?=
 =?utf-8?B?K2JTdXV1dFEyQmZtL0g2NXVmUWJMQjI3YmEwWTM1OC8zSW9EODV4WVUwQXVh?=
 =?utf-8?B?SHFHVFpXQnRTUjh1RnJVT2t1UCtsN3Q1T0JFbHpERFdsbmJ6UlUyMXY1OEY5?=
 =?utf-8?B?Rk5jdE80VEdyR2ltZEFkNEpFVEtob2I2cFBCc1l3cmVHT3FycUVyMUpISzda?=
 =?utf-8?B?VUE3aXU1cXhLRUl2MnhORkI2M3JvVDJISEV2ZTZ2S05MMGlPU1oraWFtT2V5?=
 =?utf-8?B?NDI5Rk82WXJvcHJzVUovanorTmd1bXg0cUhWMDhjR3BXaUhZMGIvQjZicDFM?=
 =?utf-8?B?TzlmR3BuVWlEblFtMmhldmRmSDZ6V3RaV3BlbHdPbFpLYkhYMzZnUFB6QUFG?=
 =?utf-8?B?K3VWa2hIRlRveXQrVUx2MnRmUk1CQlVvQlppcktDTkJsUWJwV25DR1VsZlpn?=
 =?utf-8?B?ajQ2aUVzcnFKWGhQU0FFVU1HRTlpVmJIUGhReWF6dVVlampmb1BhNDdUYWwx?=
 =?utf-8?B?T09CVEtWRmdYZ25jc0V2elVWZVdRcGlnd1dJK1hIdHAxOTU3L25yVHlucWVU?=
 =?utf-8?B?cEcvWUFYQWVHVVNwdDVHMzlwbTc4clRvQ21jQVdqaUx1K3dGOWEzQVR1NWVx?=
 =?utf-8?B?RDUwZlMrVWZvamJESThhcFYwRlkzcTVoK1Z1MHFzVjExR3dKMFp6eGlKYVFT?=
 =?utf-8?B?akcwWUpMM0ovS2dUYS8raTdvVEFCclBKMDdySVNUU1FvTFE5NXp3RC9hd2FN?=
 =?utf-8?B?TDVEQU5uRmMwQjlHUUpad3hEb25BVmluRmdnMFpUOGNsREdEaWpwS2sxT0g2?=
 =?utf-8?B?M3JTaVJhNGtzenVoRTF5TkR4c3A4VUxGcy9iSzQ0SU8xWlhtZ1RIWDJJMWwv?=
 =?utf-8?B?MG94eUhXUHBhcXM4SkljcjFDSmxiT0NyS3d2Zy9rVm1tYTc5ODVVQ2YyQi9q?=
 =?utf-8?B?N1J4cHpVa3l6VGxVSXlzQXhhRE9TWVpFYmdqSElHeU83cUFKaC81dEFhUmRa?=
 =?utf-8?B?YW1MNVVmdDZqSEhZc3ZwVzhWNG9kZnRMSk0xejh6YXlJbFNaUm1jMktHNllD?=
 =?utf-8?B?alN5ckRrZ0tnSkFmTlQ1QXlicGpMMHFYMU50bGJzb2JMdEtvdnYwcTlUQWZ2?=
 =?utf-8?B?OGZWTk5VdmwxakUrbXdjUElleittY3hXYm9XL2FqNXhxNHJYRWVkNXpNVmFJ?=
 =?utf-8?B?QWxyandJQVNRKzJtN1YyeVZTa2cvUFR0YTk5NmE3VVFNb3poNFBTa3R3bXZL?=
 =?utf-8?B?NFF1WjMzcHNJa1hGZTZwY2RzK1BIMENYczhSTUNvd0NURkFrOU5XZUYyc0h5?=
 =?utf-8?B?Z3RLSmlrcUN3aWhRR0NkNE9teDRQRXFkVWlaZndFbzNmRnR5V1k0UlZWejdJ?=
 =?utf-8?B?MlRmN3JTWWxQelpTTWtzd2hpMFpjSURFUTVwM2N5TU5kWmx2M2xDU3hJUnFC?=
 =?utf-8?B?MXlFa1NXQ2dJanBzZkhkVExVV0V5Z0Z6WE44dUplalo2NG1RSmMwQ2JKRFVG?=
 =?utf-8?B?a0NOeHJrbncydWsvRmtrS2duRlowV3ZiY2NyUUZGalo4ZGwrenBFUEtJT1Jz?=
 =?utf-8?B?YUtmUVlhTS8zWGRPQjdpQ2FyWW40SDJNV3ZXUS96YTJucVl4R3B6NjdNWm50?=
 =?utf-8?B?Z0ZPZVBMOWRMbTBsVEVxTXVpb3loRnZ4RmthRnp5Ti9uV0VVaTNFbVZIVjFL?=
 =?utf-8?B?K3VpQ2pkTDNMbFIxTlYvcHZRR0VpWG11MUlRUUM0SXBGUVBzeFlyNzdQdGdC?=
 =?utf-8?B?eFBGVnlZcmROMmYxZjlrOG05TGpXUFpJVU1naWcybkJNM3RMbmx0bzl1TWhv?=
 =?utf-8?B?VFE9PQ==?=
Content-ID: <D62F9E7F4D100E42ACEF01812F182509@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB7153.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e7accf42-62c3-4e5c-3e0d-08dbfb810e17
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2023 02:13:10.8510
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SkfBb/PsAAjH5rN8a4CkMTGOJSnpMEdlQSpT3tswtdvHVeE7SX6RcE436dP8DftvfiKfe+6RnTVg4RY9Z83p996ZT/yUyoiAaYIEQomPNvg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR03MB8931
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--22.487700-8.000000
X-TMASE-MatchedRID: /nPNxfnsEhPUL3YCMmnG4kD6z8N1m1ALjLOy13Cgb49qSjxROy+AU2yd
	bY7xfgXY9KE7L0nJx0rhihMBM8ipLJ4dOTBCL+zXWteDSXCrUTQZKp0SZ4P+dbv408/GP5Hqllx
	kRtI36f1dQO8rFsU1Cc5CUAhTWIIeXoZZdCbQG2F0BEBFOTiHn/7KE7XIKgt81moAkqFfNP6Arq
	oIZrVn15L+1nZr9xfjLZyDzqFlWlAXNVPhBUtpssnUT+eskUQPzV4D+5YmeSK67Q3uPo9KI3md+
	25VkQsz86lfaWv1uB5BhYDtId/lrMEIemFKn0+SGRqzqLQxuk6P/EshoNKyESHxdv8hOo8bq257
	wzawCztyLoBTJinK38HWcCMGec7ZwdbU3akH5AwdxBAG5/hkW5naxzJFBx6v82HMiBe0UlXJv31
	pIEp7kQmKAKAPPRzxMFGjWhwUm9sF5e8Prq/HpdigeTkdjx3h5TbwqVVpF+PczkKO5k4APkH8Bv
	ERi2dU4vM1YF6AJbY9l7H+TFQgdbew1twePJJB3QfwsVk0UbslCGssfkpInQ==
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--22.487700-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP: E89F5FB52F5EBDE43CEEBDD585AE9F769C8230C3BA93BAB7AF5E8DABAC806BBB2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231212_181656_037648_34A88BA2 
X-CRM114-Status: GOOD (  21.44  )
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

On Tue, 2023-12-12 at 11:41 +0100, AngeloGioacchino Del Regno wrote:
> Il 12/12/23 04:46, Daniel Golle ha scritto:
> > Add driver for MediaTek's pextp 10 Gigabit/s Ethernet SerDes PHY
> > which
> > can be found in the MT7988 SoC.
> > 
> > The PHY can operates only in PHY_MODE_ETHERNET, the submode is one
> > of
> > PHY_INTERFACE_MODE_* corresponding to the supported modes:
> > 
> >   * USXGMII
> >   * 10GBase-R
> >   * 5GBase-R
> >   * 2500Base-X
> >   * 1000Base-X
> >   * Cisco SGMII (MAC side)
> > 
> > In order to work-around a performance issue present on the first of
> > two PEXTP present in MT7988 special tuning is applied which can be
> > selected by adding the mediatek,usxgmii-performance-errata property
> > to
> > the device tree node.
> > 
> > There is no documentation what-so-ever for the pextp registers and
> > this driver is based on a GPL licensed implementation found in
> > MediaTek's SDK.
> > 
> > Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> > ---
> 
> ..snip..
> 
> Can anyone from MediaTek **please** define those registers and
> fields?
I discussed with my software coworker who also don't have register map
doc, need our hardware designer help to provide the names of these
register and fields.

Thanks
> 
> In this form, this driver is pretty obscure and nobody knows what
> it's doing;
> please remember that, by actually providing a definition for those
> registers and
> fields, the operation (reliability) of this PHY may be improved and
> this driver
> will be actually maintainable (and possibly support more than one
> variation of
> this PHY in the future with less efforts).
> 
> MediaTek?
> 
> Regards,
> Angelo
> 
> > +
> > +	/* Setup operation mode */
> > +	if (is_10g)
> > +		iowrite32(0x00c9071c, pextp->base + 0x9024);
> > +	else
> > +		iowrite32(0x00d9071c, pextp->base + 0x9024);
> > +
> > +	if (is_5g)
> > +		iowrite32(0xaaa5a5aa, pextp->base + 0x2020);
> > +	else
> > +		iowrite32(0xaa8585aa, pextp->base + 0x2020);
> > +
> > +	if (is_2p5g || is_5g || is_10g) {
> > +		iowrite32(0x0c020707, pextp->base + 0x2030);
> > +		iowrite32(0x0e050f0f, pextp->base + 0x2034);
> > +		iowrite32(0x00140032, pextp->base + 0x2040);
> > +	} else {
> > +		iowrite32(0x0c020207, pextp->base + 0x2030);
> > +		iowrite32(0x0e05050f, pextp->base + 0x2034);
> > +		iowrite32(0x00200032, pextp->base + 0x2040);
> > +	}
> > +
> > +	if (is_2p5g || is_10g)
> > +		iowrite32(0x00c014aa, pextp->base + 0x50f0);
> > +	else if (is_5g)
> > +		iowrite32(0x00c018aa, pextp->base + 0x50f0);
> > +	else
> > +		iowrite32(0x00c014ba, pextp->base + 0x50f0);
> > +
> > +	if (is_5g) {
> > +		iowrite32(0x3777812b, pextp->base + 0x50e0);
> > +		iowrite32(0x005c9cff, pextp->base + 0x506c);
> > +		iowrite32(0x9dfafafa, pextp->base + 0x5070);
> > +		iowrite32(0x273f3f3f, pextp->base + 0x5074);
> > +		iowrite32(0xa8883868, pextp->base + 0x5078);
> > +		iowrite32(0x14661466, pextp->base + 0x507c);
> > +	} else {
> > +		iowrite32(0x3777c12b, pextp->base + 0x50e0);
> > +		iowrite32(0x005f9cff, pextp->base + 0x506c);
> > +		iowrite32(0x9d9dfafa, pextp->base + 0x5070);
> > +		iowrite32(0x27273f3f, pextp->base + 0x5074);
> > +		iowrite32(0xa7883c68, pextp->base + 0x5078);
> > +		iowrite32(0x11661166, pextp->base + 0x507c);
> > +	}
> > +
> > +	if (is_2p5g || is_10g) {
> > +		iowrite32(0x0e000aaf, pextp->base + 0x5080);
> > +		iowrite32(0x08080d0d, pextp->base + 0x5084);
> > +		iowrite32(0x02030909, pextp->base + 0x5088);
> > +	} else if (is_5g) {
> > +		iowrite32(0x0e001abf, pextp->base + 0x5080);
> > +		iowrite32(0x080b0d0d, pextp->base + 0x5084);
> > +		iowrite32(0x02050909, pextp->base + 0x5088);
> > +	} else {
> > +		iowrite32(0x0e000eaf, pextp->base + 0x5080);
> > +		iowrite32(0x08080e0d, pextp->base + 0x5084);
> > +		iowrite32(0x02030b09, pextp->base + 0x5088);
> > +	}
> > +
> > +	if (is_5g) {
> > +		iowrite32(0x0c000000, pextp->base + 0x50e4);
> > +		iowrite32(0x04000000, pextp->base + 0x50e8);
> > +	} else {
> > +		iowrite32(0x0c0c0000, pextp->base + 0x50e4);
> > +		iowrite32(0x04040000, pextp->base + 0x50e8);
> > +	}
> > +
> > +	if (is_2p5g || mtk_interface_mode_is_xgmii(interface))
> > +		iowrite32(0x0f0f0c06, pextp->base + 0x50eC);
> > +	else
> > +		iowrite32(0x0f0f0606, pextp->base + 0x50eC);
> > +
> > +	if (is_5g) {
> > +		iowrite32(0x50808c8c, pextp->base + 0x50a8);
> > +		iowrite32(0x18000000, pextp->base + 0x6004);
> > +	} else {
> > +		iowrite32(0x506e8c8c, pextp->base + 0x50a8);
> > +		iowrite32(0x18190000, pextp->base + 0x6004);
> > +	}
> > +
> > +	if (is_10g)
> > +		iowrite32(0x01423342, pextp->base + 0x00f8);
> > +	else if (is_5g)
> > +		iowrite32(0x00a132a1, pextp->base + 0x00f8);
> > +	else if (is_2p5g)
> > +		iowrite32(0x009c329c, pextp->base + 0x00f8);
> > +	else
> > +		iowrite32(0x00fa32fa, pextp->base + 0x00f8);
> > +
> > +	/* Force SGDT_OUT off and select PCS */
> > +	if (mtk_interface_mode_is_xgmii(interface))
> > +		iowrite32(0x80201f20, pextp->base + 0x00f4);
> > +	else
> > +		iowrite32(0x80201f21, pextp->base + 0x00f4);
> > +
> > +	/* Force GLB_CKDET_OUT */
> > +	iowrite32(0x00050c00, pextp->base + 0x0030);
> > +
> > +	/* Force AEQ on */
> > +	iowrite32(0x02002800, pextp->base + 0x0070);
> > +	ndelay(1020);
> > +
> > +	/* Setup DA default value */
> > +	iowrite32(0x00000020, pextp->base + 0x30b0);
> > +	iowrite32(0x00008a01, pextp->base + 0x3028);
> > +	iowrite32(0x0000a884, pextp->base + 0x302c);
> > +	iowrite32(0x00083002, pextp->base + 0x3024);
> > +	if (mtk_interface_mode_is_xgmii(interface)) {
> > +		iowrite32(0x00022220, pextp->base + 0x3010);
> > +		iowrite32(0x0f020a01, pextp->base + 0x5064);
> > +		iowrite32(0x06100600, pextp->base + 0x50b4);
> > +		if (interface == PHY_INTERFACE_MODE_USXGMII)
> > +			iowrite32(0x40704000, pextp->base + 0x3048);
> > +		else
> > +			iowrite32(0x47684100, pextp->base + 0x3048);
> > +	} else {
> > +		iowrite32(0x00011110, pextp->base + 0x3010);
> > +		iowrite32(0x40704000, pextp->base + 0x3048);
> > +	}
> > +
> > +	if (!mtk_interface_mode_is_xgmii(interface) && !is_2p5g)
> > +		iowrite32(0x0000c000, pextp->base + 0x3064);
> > +
> > +	if (interface != PHY_INTERFACE_MODE_10GBASER) {
> > +		iowrite32(0xa8000000, pextp->base + 0x3050);
> > +		iowrite32(0x000000aa, pextp->base + 0x3054);
> > +	} else {
> > +		iowrite32(0x00000000, pextp->base + 0x3050);
> > +		iowrite32(0x00000000, pextp->base + 0x3054);
> > +	}
> > +
> > +	if (mtk_interface_mode_is_xgmii(interface))
> > +		iowrite32(0x00000f00, pextp->base + 0x306c);
> > +	else if (is_2p5g)
> > +		iowrite32(0x22000f00, pextp->base + 0x306c);
> > +	else
> > +		iowrite32(0x20200f00, pextp->base + 0x306c);
> > +
> > +	if (interface == PHY_INTERFACE_MODE_10GBASER && pextp->da_war)
> > +		iowrite32(0x0007b400, pextp->base + 0xa008);
> > +
> > +	if (mtk_interface_mode_is_xgmii(interface))
> > +		iowrite32(0x00040000, pextp->base + 0xa060);
> > +	else
> > +		iowrite32(0x00050000, pextp->base + 0xa060);
> > +
> > +	if (is_10g)
> > +		iowrite32(0x00000001, pextp->base + 0x90d0);
> > +	else if (is_5g)
> > +		iowrite32(0x00000003, pextp->base + 0x90d0);
> > +	else if (is_2p5g)
> > +		iowrite32(0x00000005, pextp->base + 0x90d0);
> > +	else
> > +		iowrite32(0x00000007, pextp->base + 0x90d0);
> > +
> > +	/* Release reset */
> > +	iowrite32(0x0200e800, pextp->base + 0x0070);
> > +	usleep_range(150, 500);
> > +
> > +	/* Switch to P0 */
> > +	iowrite32(0x0200c111, pextp->base + 0x0070);
> > +	ndelay(1020);
> > +	iowrite32(0x0200c101, pextp->base + 0x0070);
> > +	usleep_range(15, 50);
> > +
> > +	if (mtk_interface_mode_is_xgmii(interface)) {
> > +		/* Switch to Gen3 */
> > +		iowrite32(0x0202c111, pextp->base + 0x0070);
> > +	} else {
> > +		/* Switch to Gen2 */
> > +		iowrite32(0x0201c111, pextp->base + 0x0070);
> > +	}
> > +	ndelay(1020);
> > +	if (mtk_interface_mode_is_xgmii(interface))
> > +		iowrite32(0x0202c101, pextp->base + 0x0070);
> > +	else
> > +		iowrite32(0x0201c101, pextp->base + 0x0070);
> > +	usleep_range(100, 500);
> > +	iowrite32(0x00000030, pextp->base + 0x30b0);
> > +	if (mtk_interface_mode_is_xgmii(interface))
> > +		iowrite32(0x80201f00, pextp->base + 0x00f4);
> > +	else
> > +		iowrite32(0x80201f01, pextp->base + 0x00f4);
> > +
> > +	iowrite32(0x30000000, pextp->base + 0x3040);
> > +	usleep_range(400, 1000);
> > +}
> > +
> > +static int mtk_pextp_set_mode(struct phy *phy, enum phy_mode mode,
> > int submode)
> > +{
> > +	struct mtk_pextp_phy *pextp = phy_get_drvdata(phy);
> > +
> > +	if (mode != PHY_MODE_ETHERNET)
> > +		return -EINVAL;
> > +
> > +	switch (submode) {
> > +	case PHY_INTERFACE_MODE_1000BASEX:
> > +	case PHY_INTERFACE_MODE_2500BASEX:
> > +	case PHY_INTERFACE_MODE_SGMII:
> > +	case PHY_INTERFACE_MODE_5GBASER:
> > +	case PHY_INTERFACE_MODE_10GBASER:
> > +	case PHY_INTERFACE_MODE_USXGMII:
> > +		mtk_pextp_setup(pextp, submode);
> > +		return 0;
> > +	default:
> > +		return -EINVAL;
> > +	}
> > +}
> > +
> > +static int mtk_pextp_reset(struct phy *phy)
> > +{
> > +	struct mtk_pextp_phy *pextp = phy_get_drvdata(phy);
> > +
> > +	reset_control_assert(pextp->reset);
> > +	usleep_range(100, 500);
> > +	reset_control_deassert(pextp->reset);
> > +	usleep_range(1, 10);
> > +
> > +	return 0;
> > +}
> > +
> > +static int mtk_pextp_power_on(struct phy *phy)
> > +{
> > +	struct mtk_pextp_phy *pextp = phy_get_drvdata(phy);
> > +
> > +	return clk_bulk_prepare_enable(MTK_PEXTP_NUM_CLOCKS, pextp-
> > >clocks);
> > +}
> > +
> > +static int mtk_pextp_power_off(struct phy *phy)
> > +{
> > +	struct mtk_pextp_phy *pextp = phy_get_drvdata(phy);
> > +
> > +	clk_bulk_disable_unprepare(MTK_PEXTP_NUM_CLOCKS, pextp-
> > >clocks);
> > +
> > +	return 0;
> > +}
> > +
> > +static const struct phy_ops mtk_pextp_ops = {
> > +	.power_on	= mtk_pextp_power_on,
> > +	.power_off	= mtk_pextp_power_off,
> > +	.set_mode	= mtk_pextp_set_mode,
> > +	.reset		= mtk_pextp_reset,
> > +	.owner		= THIS_MODULE,
> > +};
> > +
> > +static int mtk_pextp_probe(struct platform_device *pdev)
> > +{
> > +	struct device_node *np = pdev->dev.of_node;
> > +	struct phy_provider *phy_provider;
> > +	struct mtk_pextp_phy *pextp;
> > +	struct phy *phy;
> > +
> > +	if (!np)
> > +		return -ENODEV;
> > +
> > +	pextp = devm_kzalloc(&pdev->dev, sizeof(*pextp), GFP_KERNEL);
> > +	if (!pextp)
> > +		return -ENOMEM;
> > +
> > +	pextp->base = devm_of_iomap(&pdev->dev, np, 0, NULL);
> > +	if (!pextp->base)
> > +		return -EIO;
> > +
> > +	pextp->dev = &pdev->dev;
> > +
> > +	pextp->clocks[0].id = "topxtal";
> > +	pextp->clocks[0].clk = devm_clk_get(&pdev->dev, pextp-
> > >clocks[0].id);
> > +	if (IS_ERR(pextp->clocks[0].clk))
> > +		return PTR_ERR(pextp->clocks[0].clk);
> > +
> > +	pextp->clocks[1].id = "xfipll";
> > +	pextp->clocks[1].clk = devm_clk_get(&pdev->dev, pextp-
> > >clocks[1].id);
> > +	if (IS_ERR(pextp->clocks[1].clk))
> > +		return PTR_ERR(pextp->clocks[1].clk);
> > +
> > +	pextp->reset = devm_reset_control_get_exclusive(&pdev->dev,
> > NULL);
> > +	if (IS_ERR(pextp->reset))
> > +		return PTR_ERR(pextp->reset);
> > +
> > +	pextp->da_war = of_property_read_bool(np, "mediatek,usxgmii-
> > performance-errata");
> > +
> > +	phy = devm_phy_create(&pdev->dev, NULL, &mtk_pextp_ops);
> > +	if (IS_ERR(phy))
> > +		return PTR_ERR(phy);
> > +
> > +	phy_set_drvdata(phy, pextp);
> > +
> > +	phy_provider = devm_of_phy_provider_register(&pdev->dev,
> > of_phy_simple_xlate);
> > +
> > +	return PTR_ERR_OR_ZERO(phy_provider);
> > +}
> > +
> > +static const struct of_device_id mtk_pextp_match[] = {
> > +	{ .compatible = "mediatek,mt7988-xfi-pextp", },
> > +	{ }
> > +};
> > +MODULE_DEVICE_TABLE(of, mtk_pextp_match);
> > +
> > +static struct platform_driver mtk_pextp_driver = {
> > +	.probe = mtk_pextp_probe,
> > +	.driver = {
> > +		.name = "mtk-pextp",
> > +		.of_match_table = mtk_pextp_match,
> > +	},
> > +};
> > +module_platform_driver(mtk_pextp_driver);
> > +
> > +MODULE_DESCRIPTION("MediaTek pextp SerDes PHY driver");
> > +MODULE_AUTHOR("Daniel Golle <daniel@makrotopia.org>");
> > +MODULE_LICENSE("GPL");
> 
> 
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
