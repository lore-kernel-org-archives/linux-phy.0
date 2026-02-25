Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F22E4F55448
	for <linux-phy@archiver.kernel.org>; Wed, 25 Feb 2026 02:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bEzBmgCz7NGe8KO3npYxZ9K9WpRgKtj1HfiiWWIfQcQ=; b=rA09NQqzhag7Oy
	gmaPxB7r7km8dj0qbSkROi9VmXpMZiYRdBrokGADj2S99NDz2JVhQmX/eIvNTmGfui1ABJDzx5B/q
	Ib2s4f+kMJPTvMIaPfhsbT+3OQj2RkoTw8lopimeZ5o4wriTLfz77vuD8vBUkwyes3EIdDimRbCDg
	4ffdN9l2/5/KRqp5jOyPa7+i3yeFMRA60SWcu/OqScDDwU996lPF7ClhwwezZa5BCfEo9Vx/AwMX0
	KTPk/i7eEqsI1uqZ4NcuFh3yp9iURq5KlCx9ZyiCMB95aVAKp8CvjcJE+yVUWE73oKBQhPut4VxOq
	EdWkd5In4SzsZi1jbHhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vv51G-000000037EG-2A4j;
	Wed, 25 Feb 2026 02:52:58 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vv51E-000000037Di-1Hnh;
	Wed, 25 Feb 2026 02:52:57 +0000
X-UUID: 13bc033811f511f1a16f0188aa809bee-20260224
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=DdwPIHwQEOBhFUSBJRC8aEeZ+cKtQ1qUh77N0BsGLqE=;
	b=N33fZWfEQbZFK+UJPM+Y9nrG8zP0ithGtWSfpu18T78wpadTjMG8yPRpPDfGFkWft240iUho4SBXLAhIwM8/BeIjWPjfPiPi7QiN1u3jx7ngxygiKgxFAPgaHSAHt+oz/MIkobjrl6DKETWr3M6K7GQnAwm5b5HGA0bepfGfSaA=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.11,REQID:10681a58-3483-4bc5-82d5-d0f80cfc6766,IP:0,U
	RL:0,TC:0,Content:7,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:7
X-CID-META: VersionHash:89c9d04,CLOUDID:b0ab935b-a957-4259-bcca-d3af718d7034,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102|110|111|836|888|898,
	TC:-5,Content:3|15|50,EDM:-3,IP:nil,URL:0,File:130,RT:0,Bulk:nil,QS:nil,BE
	C:-1,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: 13bc033811f511f1a16f0188aa809bee-20260224
Received: from mtkmbs13n1.mediatek.inc [(172.21.101.193)] by mailgw01.mediatek.com
	(envelope-from <ck.hu@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 2077125897; Tue, 24 Feb 2026 19:52:52 -0700
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs11n2.mediatek.inc (172.21.101.187) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 25 Feb 2026 10:52:49 +0800
Received: from SG2PR04CU009.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.2562.29 via Frontend Transport; Wed, 25 Feb 2026 10:52:49 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PRNi0/k/yVd3vkTCC3hYhJ0ee/KZyhh57Rwp6Qhau7aFerdR0EUm71TcNv3MDi+PbPKIMSayMtPQesQXh+EwDxwbC2kaLiQrJlOFXpSSLdcXlxmirLcdYRUY9iJrPEqG8TZDbYJj6OG4ARW4Py605Yjjerpq/UR23MtvLeEwifM6HbIi5nS0bicthf39xAFYIsRxtXnZcxExP+ZB1+Faexlfhuv7+BGL7SRqblWzCN2p1yZAuHHilDCIQPB9THh/MEgNJG8rrInLusZCkctMha6300J2iGVFuuaJThjyT1GFP/MpBXPd6MWRLdyrcbLHCW5zhm3SEEDJxVlbFd6yHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DdwPIHwQEOBhFUSBJRC8aEeZ+cKtQ1qUh77N0BsGLqE=;
 b=inZ5RC6Ay7z6c5oEJzstpYd9Q1jhW2C9xvtrcMNdQ+YElKQyXzeCbhhYoTWFmdKSOgT8ylqvNZ1ymVdI5hk0yoZrR7rSP0aIvVLkIqfR9JwCB5UpfNN60u0K1o3Eo73/3AJ8XwWQJKhWlxUWw95lUsXaH0p5IqUezRjZBbjre7Np1IJkihMayZvrjGQstIeNeh46XDqXioDxs3o+H867t4j0Y9oSHXZ74jevy5UBMBNwHRd0y5NdSMTLTX6kbdhOOENwrAW5Xqi9f7EnAsTjVx/H+Ma2n3AM2gvB5PXBHYAJbJKSqWMqqjzD+intV/ZFHIxlk7Q+D7fs2q6UATFUhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DdwPIHwQEOBhFUSBJRC8aEeZ+cKtQ1qUh77N0BsGLqE=;
 b=vzU0JlpKw4rFfdYoIsf9j7je4BXmSFd5GgbFBTATjegBqUhzsUOU7inVkYwJA7ae3fi794s4lX2RK/aFbT8iCdwxIk2A++GKQGWW/+T6vo0pBgSMEpfDC6QfdkM2VlZuZgXm26C8FDRTGrwwB+TN/fBm6RLFtVeuV1DArt6nmRA=
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com (2603:1096:400:1f4::13)
 by KUXPR03MB9479.apcprd03.prod.outlook.com (2603:1096:d10:55::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.23; Wed, 25 Feb
 2026 02:52:46 +0000
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::a3c2:b94a:70f:e640]) by TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::a3c2:b94a:70f:e640%5]) with mapi id 15.20.9632.015; Wed, 25 Feb 2026
 02:52:46 +0000
From: =?utf-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>
To: "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"l.scorcia@gmail.com" <l.scorcia@gmail.com>
CC: "robh@kernel.org" <robh@kernel.org>,
	=?utf-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>,
	"simona@ffwll.ch" <simona@ffwll.ch>, "tzimmermann@suse.de"
	<tzimmermann@suse.de>, "mripard@kernel.org" <mripard@kernel.org>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "chunkuang.hu@kernel.org"
	<chunkuang.hu@kernel.org>, "vkoul@kernel.org" <vkoul@kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "p.zabel@pengutronix.de"
	<p.zabel@pengutronix.de>, "dri-devel@lists.freedesktop.org"
	<dri-devel@lists.freedesktop.org>, "airlied@gmail.com" <airlied@gmail.com>,
	"val@packett.cool" <val@packett.cool>, "neil.armstrong@linaro.org"
	<neil.armstrong@linaro.org>, "matthias.bgg@gmail.com"
	<matthias.bgg@gmail.com>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v3 6/6] gpu: drm: mediatek: ovl: add specific entry for
 mt8167
Thread-Topic: [PATCH v3 6/6] gpu: drm: mediatek: ovl: add specific entry for
 mt8167
Thread-Index: AQHcpOFFc4GCmIiWLkGDHX1/tuAicLWSueEA
Date: Wed, 25 Feb 2026 02:52:46 +0000
Message-ID: <62905bcde85d5f9bbbf3e1258d4951647cc9ac08.camel@mediatek.com>
References: <cover.1771863641.git.l.scorcia@gmail.com>
	 <5f880f1334aa93184afee3e36132ca42628821fb.1771863641.git.l.scorcia@gmail.com>
In-Reply-To: <5f880f1334aa93184afee3e36132ca42628821fb.1771863641.git.l.scorcia@gmail.com>
Accept-Language: zh-TW, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB6624:EE_|KUXPR03MB9479:EE_
x-ms-office365-filtering-correlation-id: 767e596d-3660-4810-3da3-08de7418f4cd
x-ld-processed: a7687ede-7a6b-4ef6-bace-642f677fbe31,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|42112799006|1800799024|7416014|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?S291OUdLQTV0T2N6enB3RlY5Q3JvQWw1bHVWRDdJdU5RZW1rYmovZjlYRkdP?=
 =?utf-8?B?dFY5VVB0bGxLdEVxYUhrSmZQNXVFNms3aldSRzVMR0wwK3JseStpRHNYdngw?=
 =?utf-8?B?UytUU3FoQjZmUTMwU2tyc1k2ckthMkpqWVI3Ry9sZmkxdk8zQUpFVmlsOHIz?=
 =?utf-8?B?US9FRWxxY2wxREpTRnI2ZS9pbm5nSTQ1VnZMU3BhQTIvdEpZa3hQTThUWUlZ?=
 =?utf-8?B?WlBxK0x6SkYrQ0VYVjBkV3FEZ0VDVWg4Qksya0NFSzBMVDZxcDBvRUFPNDU5?=
 =?utf-8?B?OFRPaXhUQ1hTSUd6aDJrclh0THBLRDdxNzR2bGVaRjhFTUVCVjNVc1dRQ1JK?=
 =?utf-8?B?L0U4c1U5cUROdSs3R0I1RFh1a2wwbmVjb2N5RE1YQ01RUVJUbzBFbGViRm9h?=
 =?utf-8?B?UXB2VUZnY1IzdGpSSmdoeVovRytkczg3VWVsQ0dDZ0lqS1JhL3pRWTF2alFC?=
 =?utf-8?B?ckwwS1RKTzhCaTVRVTZqbkMxV2wzU0FxOVFtSjRlVmdxKzFlRXh2YU1oUFRX?=
 =?utf-8?B?alR2TGppTElZZ3R1NkVwMkVkNSt1bWJrTkVTQ25OTnQ3MmZvTUFmQ1VvUUgz?=
 =?utf-8?B?SXFMeTdUazFZcVUvZVZjdHBFcVFrYjNhc3YrcXFtTXZZYlZtTEZpQVI3TW1C?=
 =?utf-8?B?UVgyZ3ZhT2FJek1KOWh1d1REbUUwZjR4U1UxOCtJcHU1aTZoRVNoeUpRSmM5?=
 =?utf-8?B?aS9mU2xjN3JUNTZRSE9JZUVGS29WRkR1aEpYdzg2cGZUSmlJeE5lZVcrVFZJ?=
 =?utf-8?B?OG01TlpZVlp4V1RjTzBEUkhjb2UyOVJQSy9icGx4dnNMK3pvMVgzdmxQTUJj?=
 =?utf-8?B?YkF5ZHdLdTFQa2Y3aTMydWNURmNiTFJGUEtBdERTTkFjZWh0UkFpZjlJN2U4?=
 =?utf-8?B?d1ZtUDlxWTRyVDhGb0VGeWJ4TDd5dFR3b252VnNlbDNBSnBnK21HL3d5aVNX?=
 =?utf-8?B?UnhXQWVvbFowQS9FaklJVGkzeWpWam9qeCs1NUVncGRJbmhUOFBFckNGUUZ5?=
 =?utf-8?B?dXBYdEdOMFlMYUs3M3BYc3dnbSsvQ0NNb2xEb0V4RkowWmdxc2QrUytYeGNr?=
 =?utf-8?B?MFVsUlB5RVVKdDA0akZZZ3FHWG5nRzlRRlNaWlBVVy93cFdpb3VTdUVqdEdt?=
 =?utf-8?B?WWo2QzlhamxaZFJwMCs2Sk9VRm85NDBsbW5BalhFK1dKemF3Z1ZEMFB6N3lv?=
 =?utf-8?B?dTBnNXhNeUcyV2JiUy9naGk3d0tkYi9naERzN3JIQlU5NTRZMG9ZTXJ2b0RI?=
 =?utf-8?B?cVpZSHU2NGpjalBUYWJDaVhUNFNNanIwUURQM2xWS1FvZ1pxZXpuYXNrNmhy?=
 =?utf-8?B?VnQrY2pja0s5bHJobWJUUDBtVGRORW9wR2Q1aWhlUTVuMTUxQVdna01TMU1N?=
 =?utf-8?B?YU1aaVJxWHExdldVZ012RVdGZlBkbFpBWjRqeEFqM0ZsN3VsQ2VtY2VaK1Qv?=
 =?utf-8?B?R2Rka1U1OURTZ2trSjNyZndvVDBLcUlmWEZXSnJzQWNKdEV1Z0w1QTY4N2xv?=
 =?utf-8?B?anhtcnpoalo2L3RZNCtOUEo3ZE14SWRabmNvdFB5T1ltTkZXbDlTd1JrYllu?=
 =?utf-8?B?b0dZL3YrSmpXYmR3Rzc2M29HdFFwd3lKai9DRTVMT013VmxlbjhIa1NNYi9E?=
 =?utf-8?B?UDJjczJkMVVIWi9VdDc5TXFLMjRLZHBxVWNHWkhZL2cxUlp5NE5tREo3MUJY?=
 =?utf-8?B?NjNjY3U5a0FWNnc2WDV5S2pMVzFaYXZER09sOXk0T1Bvcll5S1dEQjcxVUdt?=
 =?utf-8?B?V1g4elMxWW1lWkVvYmxRdkZ6Z2lIR2h0NFBVVzEyRG54MTRPUk5XeWFzZFp0?=
 =?utf-8?B?U3l1dE1xaHM1MFJtc3ZhUkV1NGZmYi96M1RYTi9XVVBGU3RyL016RkQwdlpi?=
 =?utf-8?B?VHB0MVpEQ1o3TU9WYVFLZllBeFlEbFJKVjZxT3lIVE1yV3paNXRJbjRtaFp4?=
 =?utf-8?B?anZHUHl2VVZVaFI0K295bTR5ZndaMWJWdnpwVFc4a3hxLzNvVUZmMCt2UEs0?=
 =?utf-8?B?bXVlYmNzOWttQWZKR3h0TGhGN2R0WlY5TnBLalVOdDdVUDUrM3JPeUV4VkRD?=
 =?utf-8?B?Zkd1cUo5aUcwcDN1QkJzNzVwdG5SQkd5LytNY2RRUXdMT0xzZzFEbmxIcjN0?=
 =?utf-8?B?QnNwS3NucVBDa2tTMThmc2Q5eE5iRTk0c1ZsQmVvNC9GMW5rMy9nNTJzUFB1?=
 =?utf-8?Q?gYDNGSBKS0dHzwwVt4L6/s4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB6624.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(42112799006)(1800799024)(7416014)(366016)(376014)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MGpZU3JPM0hjaWNjYkpsOVZLeXpkYk5Ybk81U0dXeTZnL1FJQnMvQkd6NjZX?=
 =?utf-8?B?bk91aVpvZ0ppc0p2YVRzSHROWVJyYkxKTGVseDlMdVM4VlhUWkFYZFRuV0li?=
 =?utf-8?B?SDJOVDA3bVVYOVcrQzNJMjVnTnZVa2RZY3dMU2xnV3ZDeENKVXBLeHc0U2pT?=
 =?utf-8?B?OW1LbUdSZUI4MGUxQ2gxaGNOR3dRN0E3eWQ3dkZ6VC95aUNyWFpPb2hjdXVN?=
 =?utf-8?B?cmtSR3FMa1piOEVjT00wYmk0WUgvb1pRdVphVURHcE5WNEovSmdkUm1VZFA2?=
 =?utf-8?B?ejNwUFdORVdjWU13UkNMdThoMzVRMlBydmUvRkEwMXB3ZUUrYXkwNS9mTm1w?=
 =?utf-8?B?UFRXSTcxd0ZIOGJxNFp6MDNGT1M5K2d0K0tKbmd4ODdoemZCTmlCS3luVEJM?=
 =?utf-8?B?d2F4dmVGVEhDSHFnZUxURHBKTjhQSHIyVzUxZGFCeGl3L29SL1dydUY4ckFi?=
 =?utf-8?B?djdhTEl1Tm5YSWxFUHZlQlVGbFVla1drU1FoNW4zOG85VVdNNjEyYitjZFRR?=
 =?utf-8?B?Z0ozM2ZCVzZsbE5xL2lQOXd2MlJmem5EVW50QlUrcEVFNkJzRjJHOW5yTk9Y?=
 =?utf-8?B?LzhiY3hRUFRtRGI5Rkp4T0wwLy8rdWVIcEVYdWZ2dnFYU2pnOVY3ZlZnQ0NP?=
 =?utf-8?B?WndQTzd4SllxQ3BORG1nSDUrS09zUE9lcnBZZDJoZUprMDZCY2NHeWpQV0pm?=
 =?utf-8?B?MFdjZjRFbWpNbTRSR1N3ZHpWZjJXeVZ4UTlid1NmTnRLZXRLcDhBeXlTdTVr?=
 =?utf-8?B?NDg0cnB2MHg5cktRMnUxRXJDaXN0eEVMUE5zYXZIS1lpNWZyek1DRHRvNi9q?=
 =?utf-8?B?U1hjS21UZ0RZNUxhMUNzYndqY2dJT21uWXBmZGJtY3htRnFkcnhpV0FUQ2Jh?=
 =?utf-8?B?QWxCeTdoNHorYUs1eXFqalhFaUxMRGp1eGl0SEdZNkU3NFJiNUM5NS8zeWFu?=
 =?utf-8?B?SUhUTVFSTmlGeGw5WGhPYkMrZU44dWJLK25VK1R6eHlNMmE0TVkyVzRQZnht?=
 =?utf-8?B?bC9UUkFpZ3Zrd21sSXpldjhtd1dtR0JmVDRjektVQnlPaE9MTGwvdWxLemtY?=
 =?utf-8?B?Vng3Y250Y21pRUNjMDM4Vnowd3JSOXYvUUVrc3pxRzZyM3hSRWs1TkUrSWw5?=
 =?utf-8?B?c1FHVUJOT0xIMlZXdndhQlJjdVdaMkVvc3VWc2pDNE1xTE44ckFJSDE2ejZM?=
 =?utf-8?B?YTNTNE5vaExEeUFDTkptdmJJTWxFY29PTXJJZmxISzl6ZTc2UHJYNUJ1ejBv?=
 =?utf-8?B?QmwvSzFhUG9VOXRscU9WNUxwNDM0WSsyRTByRk5zUGxOQmVKMStmZzFxV3lk?=
 =?utf-8?B?WVo4UFVwNTY1Ri8vZ0c0bXMvdm1VVHFKT0FFYlEwbW92STBmS2JxaEcvcGox?=
 =?utf-8?B?MXZOWXI3TklHN2wxL3lxM3FCbE1jdnY3M1QxU0pIdnVOaG9TTGVTOFpjaWQx?=
 =?utf-8?B?U09xN3R4TVRpRklXZXc0TFVlREtlNEZ6d0FwNDVPdXhSempKejcxeGwrUFFm?=
 =?utf-8?B?MEhsL2oxamJaMzVBVkh6WGlqeSsvZDU2eFB0Y0FLNjJieXU2QjZEM1EvemNm?=
 =?utf-8?B?azhkSXhVK0dJSlFYV3piVUE5NDhtdjFVbGx1dXgwY3c3Z3ZDejJWWlFsaElk?=
 =?utf-8?B?eUwwRnFSVzRqWnVNVjNvMWJ1L29ua2YzZHdidThCeVJpUDFsVDZYMU16N0Jm?=
 =?utf-8?B?L25yL2l5OXJYc2RvaGdNUGdmcm8wMzZEczhzbDQ1a0xJaVRCcFkzZnFzbmlT?=
 =?utf-8?B?c0ZKN1l2ZGxEQUF5cUpQamVJMWpQNVNvU1hnMmpsMWRiTVRCZUpBUDZHZkg0?=
 =?utf-8?B?OFhONitpRzh4MFBBRHVWWlNmT2JwZHl4N0JSb2hwaDlxYlN3cHU1QjlJNkta?=
 =?utf-8?B?bXdDZVBqM3l5azBOOEtQU0dqNCs0ZEtQR3ZvZWZZQmsvd0pwclZVZnJBamJh?=
 =?utf-8?B?ME05d3VPNFJqSEpxTkY0UzExa01ERGlueWZYUjF0dDdKS3NmQjNlNnJsengx?=
 =?utf-8?B?cjRSOVNjd0V1M25SeHJ1ZXRLU1BXY1U0ZHRQRHpwRjVWVUlLdTM5bTNsQm4v?=
 =?utf-8?B?VEh3anhYM3UreHM1ZFZCOGd1dTVFOGszMFZkY3BMRk0wb3diSTNBTzJWeWxO?=
 =?utf-8?B?VktJZkFQbU52MDNFbytwTTZ5RlBXaWRiSFdBOFNSU0VyamZTdWZObC9NdWZZ?=
 =?utf-8?B?RGZnbnNyWEV0ZmNZUnpTZkhIaE5Mc1VmcnhaQkVUZ3BhZlg4TWhwZkpkU1Az?=
 =?utf-8?B?VG9yaDZEOEtWa0M4cXBpajJ2Qzd0VmZhNDJvc2Y3RmhtMDFRZU5vclBwNXRN?=
 =?utf-8?B?SFBaa1U3dmQrV3ovODVEdlhHcFpGaWVXdE8zb0dGclkvbFNoWmNKQT09?=
Content-ID: <5C45197CFBE1654A9803B2A857D50819@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: shuGMnz/FzThjCPve8xj2QEG9LKL1yX7YPo7Fd4WOWL5LlMlFFZB6K71NTH1wN7/27saKUTgsQKobhKaqXosZ4frfvDdfu73ZJom02UGoQKB3Im/VrfNiOcAJpnwZNh0SwtV8LkfC9B5BFjCxqQ3wFvKPCnfEcbLt1/DxLL/GUZT0u03g2vzTAlH9xpLyMuFMl1FIfBhdCFNWZMZ4osLs2HqSzHTpY3nm3DlpLe3XkjF4MuSDXa7bQY27KtTBguuT5h++0toqjHj9RHkF4VbK8g/Jp9nRIlNNq8kc3FBI6Kf5GMXC444ZvpL8xh9ntbxqzt1R45kUmrrxtgz2ko6fw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB6624.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 767e596d-3660-4810-3da3-08de7418f4cd
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2026 02:52:46.8252
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4HaeCMn4twZO8yv7gE6iafoo57E/1hLrb7sEuLVreUVJMY6oIkT2uucB7Md/GndSJi5iUH76BLr7dEETiimeVg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KUXPR03MB9479
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_185256_378670_87C9FD77 
X-CRM114-Status: GOOD (  15.23  )
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


title:

drm/mediatek: ovl: add specific entry for mt8167


After this modification,

Reviewed-by: CK Hu <ck.hu@mediatek.com>

On Mon, 2026-02-23 at 16:22 +0000, Luca Leonardo Scorcia wrote:
> External email : Please do not click links or open attachments until you have verified the sender or the content.
> 
> 
> From: Val Packett <val@packett.cool>
> 
> While this configuration is otherwise identical to mt8173, according
> to Android kernel sources, this SoC does need smi_id_en.
> 
> Signed-off-by: Val Packett <val@packett.cool>
> Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_disp_ovl.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> index e0236353d499..97a899e4bd99 100644
> --- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> +++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> @@ -671,6 +671,16 @@ static const struct mtk_disp_ovl_data mt2701_ovl_driver_data = {
>         .num_formats = ARRAY_SIZE(mt8173_formats),
>  };
> 
> +static const struct mtk_disp_ovl_data mt8167_ovl_driver_data = {
> +       .addr = DISP_REG_OVL_ADDR_MT8173,
> +       .gmc_bits = 8,
> +       .layer_nr = 4,
> +       .fmt_rgb565_is_0 = true,
> +       .smi_id_en = true,
> +       .formats = mt8173_formats,
> +       .num_formats = ARRAY_SIZE(mt8173_formats),
> +};
> +
>  static const struct mtk_disp_ovl_data mt8173_ovl_driver_data = {
>         .addr = DISP_REG_OVL_ADDR_MT8173,
>         .gmc_bits = 8,
> @@ -742,6 +752,8 @@ static const struct mtk_disp_ovl_data mt8195_ovl_driver_data = {
>  static const struct of_device_id mtk_disp_ovl_driver_dt_match[] = {
>         { .compatible = "mediatek,mt2701-disp-ovl",
>           .data = &mt2701_ovl_driver_data},
> +       { .compatible = "mediatek,mt8167-disp-ovl",
> +         .data = &mt8167_ovl_driver_data},
>         { .compatible = "mediatek,mt8173-disp-ovl",
>           .data = &mt8173_ovl_driver_data},
>         { .compatible = "mediatek,mt8183-disp-ovl",
> --
> 2.43.0
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
