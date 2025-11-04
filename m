Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76F00CCFA00
	for <linux-phy@archiver.kernel.org>; Tue,  4 Nov 2025 05:43:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gSvmvd9UyOJAE04oXbhq8mU0kVLi6MaSXgyo0BPaVgY=; b=OLT7rMz+5EEobe
	JejZqFXRIB06VWUYh4fvpSiEftjD/k3wuJj+Rmlkjs/cHanO3AWK5fr5vUGEsvURwAMEVQvUkZ3ww
	7DFekCh7mizAcaXdNJOBU9vLeaVWPBkV7qu3rBvtEuL/RXAPQ3J14FkRYj+HC+hXoaZDT0SpYb8PK
	/W8YpW9sI8ZOy6CCm58LZ2FpFQJUTsglAgRFW+1hUgTFevZR3FTP7aKualaz5rjA0eRCRjGMOT+LJ
	64yivSRla6NVO9lP8bZmJGdBEqLv9kbC3z6Hd1S2BV05HaU8iqUIK+a3wdL5iXqV2lfwQwxSDJt+e
	Ue7lPICquTpQRWaICcCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vG9pK-0000000BCLH-0GN5;
	Tue, 04 Nov 2025 05:43:30 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vG9pG-0000000BCKl-3eQ1;
	Tue, 04 Nov 2025 05:43:28 +0000
X-UUID: 2c85a0a2b94111f09f706fa2197c6ceb-20251103
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=yFWpGc6PmwrBGQF9WKOHsKnLg9CqoNdkRGL+Z3ei91A=;
	b=qyKujJJS5cbbW/voizmoftmwpMRAJC3n50xn/9BYovZczT4MNyvjpcsu2pZuzKH23IJpZNcVoL31p+YJw9rVAbLaJNuTM0s5F8yfMt/rDEA5z1Xnzo/SEtCXDf++QJWon7cgVjalqV1KdM2aentVp1tEwIl4Jrw45hqXhIGMAIs=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.6,REQID:81d1a4b5-4830-4105-be33-aa3b195ea7d9,IP:0,UR
	L:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:0
X-CID-META: VersionHash:a9d874c,CLOUDID:b6b01ae0-3890-4bb9-a90e-2a6a4ecf6c66,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102|110|111|836|888|898,
	TC:-5,Content:0|15|50,EDM:-3,IP:nil,URL:0,File:130,RT:0,Bulk:nil,QS:nil,BE
	C:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: 2c85a0a2b94111f09f706fa2197c6ceb-20251103
Received: from mtkmbs10n1.mediatek.inc [(172.21.101.34)] by mailgw01.mediatek.com
	(envelope-from <chaotian.jing@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 489795586; Mon, 03 Nov 2025 22:43:21 -0700
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 mtkmbs11n1.mediatek.inc (172.21.101.185) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 4 Nov 2025 13:43:18 +0800
Received: from SG2PR04CU009.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.1748.26 via Frontend Transport; Tue, 4 Nov 2025 13:43:18 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c20GhKMzF+Ft74VaSbWFdFjwYzvSP6rhVY9gh7/sqkb44ZS1xXMF1u8monzbTSdFdcBGEoQkWR+7Sxlhs0Ju/OXSxABlg7mUD3wSVmAqD40uTD9rdJJZpHni+JQFfrtQJPZzUAD7SLE972L8i+66cqupZrA9eZbJzlt1XRJ1T9sVCe0mkyDUL3R4kNZNx6UNzgyxV3pBcyZfVR6sKGuERjeeUAo3ZxgDL3Jjaw011rBSvF88IryRWjdy5YLOjFdVgYhHoVI9kRoDD5wyqZ7YtJ4UWaXKjX1ON25YjkrmeucBUg5JQRwCmWv/WQB9ZobhnKL7y+tgC9GaUpJZjneuNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yFWpGc6PmwrBGQF9WKOHsKnLg9CqoNdkRGL+Z3ei91A=;
 b=IERmtvqtGZ9Y/2KY4G64pd0pw+ILjvZdWkgeWya8PvSaiCqJ+kcC2CVRmsQZ6BwkApGeU82oBFvRfmRBqjX2tzoR6mvpCWBdLFts3E7yrDfUFjz3QngUjL+m4mPX5MD4+3bzAlVvxXGPPfa2qYAazSOtGknQ1XyroI6nKTW2exBzS4sJxZ1pQAUMhZRUFofEUZ6qUxDkMGaYKmUDjVvC8YwX9bLqPHHBchV7JGIkG+PsbDwXMJEkfgEqfkML58UhafKfroeDnL1MNUksZrVUo+1GNNF1L3oJO02x4FeZrTPtVfyhUqmR3yCDk9I7yQojzORMmbk4hseG3L/WTrSRzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yFWpGc6PmwrBGQF9WKOHsKnLg9CqoNdkRGL+Z3ei91A=;
 b=ij5iem2Il7I4kBSbx11bhXY/cNsM/W1kER/TAlA+bN65lPTeTCheAg98fCuPdbuQotpkbUB+J/JLiniE7nAVMcZzbu1/+P5uNdkYf1g8yx76Ytf/GdsKF4fkl1731Ubi5nhYZt5THLQS/VTHzIQc3hO5bHQk/zuqf1utcME15u8=
Received: from KL1PR03MB6032.apcprd03.prod.outlook.com (2603:1096:820:8b::7)
 by KL1PR03MB7223.apcprd03.prod.outlook.com (2603:1096:820:d6::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.7; Tue, 4 Nov
 2025 05:43:15 +0000
Received: from KL1PR03MB6032.apcprd03.prod.outlook.com
 ([fe80::4e46:b38a:9317:deb7]) by KL1PR03MB6032.apcprd03.prod.outlook.com
 ([fe80::4e46:b38a:9317:deb7%7]) with mapi id 15.20.9275.015; Tue, 4 Nov 2025
 05:43:15 +0000
From: =?utf-8?B?Q2hhb3RpYW4gSmluZyAo5LqV5pyd5aSpKQ==?=
	<Chaotian.Jing@mediatek.com>
To: =?utf-8?B?UGV0ZXIgV2FuZyAo546L5L+h5Y+LKQ==?= <peter.wang@mediatek.com>,
	=?utf-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>,
	"nicolas.frattaroli@collabora.com" <nicolas.frattaroli@collabora.com>,
	"kishon@kernel.org" <kishon@kernel.org>, "avri.altman@wdc.com"
	<avri.altman@wdc.com>, "bvanassche@acm.org" <bvanassche@acm.org>,
	"martin.petersen@oracle.com" <martin.petersen@oracle.com>,
	"broonie@kernel.org" <broonie@kernel.org>, "alim.akhtar@samsung.com"
	<alim.akhtar@samsung.com>, "chu.stanley@gmail.com" <chu.stanley@gmail.com>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "p.zabel@pengutronix.de"
	<p.zabel@pengutronix.de>, "robh@kernel.org" <robh@kernel.org>,
	"James.Bottomley@HansenPartnership.com"
	<James.Bottomley@HansenPartnership.com>, "lgirdwood@gmail.com"
	<lgirdwood@gmail.com>, "vkoul@kernel.org" <vkoul@kernel.org>,
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"kernel@collabora.com" <kernel@collabora.com>, Louis-Alexis Eyraud
	<louisalexis.eyraud@collabora.com>, "linux-scsi@vger.kernel.org"
	<linux-scsi@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>
Subject: Re: [PATCH v3 02/24] dt-bindings: ufs: mediatek,ufs: Complete the
 binding
Thread-Topic: [PATCH v3 02/24] dt-bindings: ufs: mediatek,ufs: Complete the
 binding
Thread-Index: AQHcTTov5FH3aKEmO0K+Nb2511pYNLTiAV4A
Date: Tue, 4 Nov 2025 05:43:15 +0000
Message-ID: <aecc0545e85bd972e27b3104ac05fe4a7b1f3069.camel@mediatek.com>
References: <20251023-mt8196-ufs-v3-0-0f04b4a795ff@collabora.com>
	 <20251023-mt8196-ufs-v3-2-0f04b4a795ff@collabora.com>
In-Reply-To: <20251023-mt8196-ufs-v3-2-0f04b4a795ff@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: KL1PR03MB6032:EE_|KL1PR03MB7223:EE_
x-ms-office365-filtering-correlation-id: d058c33c-4138-4dfb-062e-08de1b650ced
x-ld-processed: a7687ede-7a6b-4ef6-bace-642f677fbe31,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|7416014|376014|1800799024|38070700021|921020;
x-microsoft-antispam-message-info: =?utf-8?B?SlY5M1VGSUtTdlkxUHNsTWVqMHFBYUFhYWU3cG40YmhZMndjUFVBUUFEVTF6?=
 =?utf-8?B?L1dSZzVRS1Y2YllEVGgva3YxQUtTMVlxZUhsOUswdEZtWG43ODhXQVJxNnFt?=
 =?utf-8?B?cFpyc0xaYmxmc1YrMjg4UENMOEVQaVphSDNTRUc5SUU5Y0lONHBhYVkyVW9V?=
 =?utf-8?B?RTdOR1FnSEZMMEFvUVJpRXR3dWxML0VlalBBOEllVVRDTGI4eTk3bnZVakF1?=
 =?utf-8?B?SVoxVWQwNTlIbThUbFQwaUVIaUlwU1k1Sk85a1plZ2pPRmNPRHF1bStmRmJm?=
 =?utf-8?B?Z0l0ZlNEVHhtV1Z6T0ozaS9VZnQvenB5Q3RkVytGUUwvNlcraHdOR2c4c3M3?=
 =?utf-8?B?SnZtZmx1cFJISmlQZitpUC9iRjVxbWpEb3lRSWVwUExsdHhZMFNMZlZ5ZDJk?=
 =?utf-8?B?YkVSanFrZzRCQWV2amJGayt6Y2lqRmRDTi9hYWdobXZlcHdxYTY4RXoyU2gw?=
 =?utf-8?B?SlgwMTFGN0JXZlZMYTJ4aXhraDUzNUx4RFNuUmg3VVg4T0I4cjA5VUQ4WFYz?=
 =?utf-8?B?ajhpWHlMMVdkeFcxVUZuTlBWN01KV09YcFBJY3Ezb095QnFUZGYxRkRtalJi?=
 =?utf-8?B?M0cxSEtZUHdVckhlbDJJY3dzN1o2MGV3Y3lwVndDMlJDV09DRVUwc0xtQS9s?=
 =?utf-8?B?REpVM3ErQkpuQVUwWUVEZ3ZEK01QSHlGc2M0NzNEcnFJWWtWS0MybE1JMEY4?=
 =?utf-8?B?aTA1T0d6ekJiSzMzRGF2Nnl1SHdHRnUzWWx2TGMxamw2aUhHVUs3MDBrTkxs?=
 =?utf-8?B?c2pWYklESEdmZHpQNHZFeGhwMTFhTUZVWHVPNVRCOGxlSlpwSEZIU1d3NlFD?=
 =?utf-8?B?eWJUZXF1WTlGVUY5VXdBSFdEMWFaU0ZpQlpiUWJjcHdENGpiTld1THhWNjd0?=
 =?utf-8?B?ZnRzN0kzMXFBdUE0NXFZVi80NWJMWmNoS05hdEUwUXBjdzF1c0NUZi9aQ2Jh?=
 =?utf-8?B?VWNuM3M1Z2FxOVg2Z2RaMHVRSnoxR2lTNS84cGJqTSsrWGdYYWkwZ2UyZ1dF?=
 =?utf-8?B?ZzRQb3l6N2FHQm4ycXFTcTZCTHd3VTVvTk5XdGFGelBMWHdrZytwSXlPVSta?=
 =?utf-8?B?bkJ0ZUN1azlkRW5Vb1BSR2NWTWJVRExCeTJiUnhiK0dnVzNxekNibjd3OXF3?=
 =?utf-8?B?dVFOY3EzalpmQTN4RTBCWXNVV2pCR3dmLy9WeGk3SStCYmFGSjQ1YWRaaHJ2?=
 =?utf-8?B?K1NpK1pDZnIvTTVwQ2dUcUtZLzhqTElGcFF4V3ZreGdaVXpZeG1CcE5saWZG?=
 =?utf-8?B?SlRBckUxNnRVWjdhZWgvQ3M3LzVndm9naWpXY0Eyblh2eVZIdEx3em9tSElO?=
 =?utf-8?B?bi9TOFFxRU5KTm9JMUFSWm9EdzlaRDI2R1hyN1crN2R0UlFLZDhUWGRhY1J3?=
 =?utf-8?B?TUNHcEVRWHdnT0l1bURBY3RMdWVRa21lL0JROC9IUVJIaFRzWTVDdmlSV3di?=
 =?utf-8?B?KzFiNUlJWTVnTHNrckwyL3pnRGdNZDN0eCt1TmEyeGdTSkliS01HZWJSVkJo?=
 =?utf-8?B?ays4ZFdRVEJnR2VSTUJnRGMwT0dTOFI4bTUzMFdNZ3FMakZ3dHBQQnpqd1Zo?=
 =?utf-8?B?bU8zNklBbE9sQ2VsTTA5bFNLQWZ3VU0vVS9EOHp3M3M0ZGFYaE5LQ2ZMdElK?=
 =?utf-8?B?dU1udVB6b2VtZWdLY0FBTUFXTFBQeXRDc21Fa0JjSGZjZ00xdS9IVnBtSzBO?=
 =?utf-8?B?dFRadWptSXovTktjLzRJL1loSjVMUDhTR3lWTWJwbmNwM1NZcVhzSlk3MVV1?=
 =?utf-8?B?UDhBeTUrYk9QRXc2Z3g1Q0N2bUl6cDhjUytlMmRTcmN4TlFZQ1FLQkI5U0U0?=
 =?utf-8?B?SFZUUTlyVnEzQWlKc3dFcFJyQ2lZcFQxVjRTMzFiOG55b0RVeHhFTzFUclJV?=
 =?utf-8?B?bm9HQzRod2Qyam02TDUvbGhwKzVLYXdmcnpCVjBLZDBOY0FYNmJlblBXcEkx?=
 =?utf-8?B?WWFud2N0TlRlT0JOblZiRUhLYzhwZE9iaG95WGpIckFWTEdFZGo2SWgwS3Fa?=
 =?utf-8?B?cVpUTGQ1ZlJIazNPUFdYcTBnU0xybElISlBweUpPeEx0T05tUTdXM08xeVpX?=
 =?utf-8?B?N09lbmVSQkp1cnpESi94MmgzT0ZRT0hHWHZUUT09?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:KL1PR03MB6032.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(376014)(1800799024)(38070700021)(921020);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VWJ6SHVONGZZVFVUQmM4SlF2V1NZenIyUGJxd09yZVVpRExvT2ZGZ2FIS3RL?=
 =?utf-8?B?WXdHdWY4Zm1LQ2RNYk5QV3NQOE5pRWVSaWpaaFl1UnVtWkN1YmVxNkxOeDhh?=
 =?utf-8?B?clFvN2FlbTQrS2NzM3l3NmNmWW1OZ3RKOFZqN2FnUzk3NjFoQnVsSTVaWS9W?=
 =?utf-8?B?cVBWUjFic2NLc2kxOHQxOXZLRlE4Z3RWQWJHNWtQODFWc3pQWnNRQVJaZmlN?=
 =?utf-8?B?RW9FYWtTakRRTjBUTTlIZDFROWJqNk4zeVRCWm4vNmMvM2p0ZFV5YmhmVFZs?=
 =?utf-8?B?alFrbGczWVd2d2VDWG9TbjNsOW5zZWVoSG8zSWRLVWJ4SFBrNmd5ZXZCKytm?=
 =?utf-8?B?MG4zMnpiNzVjcGVHTlZoN0dZQXZGOGF5UHJCWWsrcXBMRGVuUW40Wlpodlp4?=
 =?utf-8?B?SVBob2Uwd2pEMEZ0d1Bsa1RXT1RURnkzZHhsdi9wQi9rS09IVVNSclNvME1v?=
 =?utf-8?B?Z1I4Rms2SFlqK3c0ZlJiTmdQSU1qcHJPcXVPbmVPUmtRM0greXdyUUQ0Vlc1?=
 =?utf-8?B?cHFtaTdLYVVpODZTMFIvZEllRWVUR1orcXZGc1VzbnpuaVF3MWxxNTRobHZm?=
 =?utf-8?B?Sk1yMlNWT2ZPeTFDZDNaSTRvVlZIaVVSYlo2RVBWMGluRVV3UFNoZm04T3g1?=
 =?utf-8?B?NUdhZU14YW9NMWZSeVFld0kwVGJMK1hFZWwvZHNuc2Q5RUVxQk5Vbk5taVls?=
 =?utf-8?B?eGNmQlpVeTdkQS9vWU9IQXphWFhXRjNhdTB4Qndja2xKUE9CcWtFYUJGTDRV?=
 =?utf-8?B?d1VVdWtxdEFyZG1qbm9nbnhZcFRzM2cyNzVWN0prQjJha29WU09YSkFNMHlt?=
 =?utf-8?B?T2ZoQUFCSldUZ29jZEd4U0o1emF1S05uSDYwT3lBRGdlMFVCT25lOW5zVm4w?=
 =?utf-8?B?SnlOaSsveVRNQmN4WGVrNEdqRDZGdldPMTVlcXEzK1M1eU8weE04ZlFoMC90?=
 =?utf-8?B?em0wNmRqRlVNcGtSQWVWdmJQclNoMi9XM0U4a0QwYzZsMk1LK0x0T1ZwZG9x?=
 =?utf-8?B?SHJiV3lObzA0ZFRKVWRtbGxIbkx0OVFHeXNUR0poaWQrNTVobyszeHRrUk41?=
 =?utf-8?B?Z3dZNFRJTUJ0K0tqUDZFVFluVVBlTVI4cWcrRnJFZzhCYWF6Zlc2d1hUcFV4?=
 =?utf-8?B?a3liVU9tN1FTazRheW9uaWIram1hdHV2cnBZSnZQaGptTWNIaGU3VURGakVp?=
 =?utf-8?B?UDJpMUVBSGVHanRKdWNFdS9JUFhPT3l4S05PbkdPMUdLR1NVUXZFRUxERUQx?=
 =?utf-8?B?RFlYRCtIVkdDd1NjMHUwSzUvemdxMGpISmdGMlpzdCtxMVpDNDNndUtETXE5?=
 =?utf-8?B?UVc1UWxFTUdIRmRyeEdUMmhKVG9obnl5dFI2Nk1KdFd1a3QycENIR3FBNzNk?=
 =?utf-8?B?Smd0bjBTdTRkL2RSNENPbFhJMExtd3F4cDFiVUxTbjdSbUtNUFp3NlhUQjho?=
 =?utf-8?B?eWZ0RGpHWS9TVUh2cFVoNU90aVVJNEtyUkorR1RJYVNTcU9RUVpmNDduVjha?=
 =?utf-8?B?MWkySHVOYmZUY2tvdWFXNm1pVzY3aytkOUJETkdqTHVaMmlpdm1UMGRtSkVw?=
 =?utf-8?B?QlpBMWYyTWs5NHJmdDlxTlVyR1Zlc3dpV0N4eHMzejJpL3hOdE51OGZsdWJU?=
 =?utf-8?B?ZVgxNU42Q1lBQnlpV0d2bjVGYlFPdzYwWXR2bzljdzRHMXFWSkhxT3ZjK21Q?=
 =?utf-8?B?SVBRbllkRTlZcmhiZ1R4VWFhbm1sUW9wMWlIK2YyR0FaM2t1dnFWQ1A4NDBo?=
 =?utf-8?B?MXBvM2JYYW03Yll0NUQyUHQ2eFplTHp4U2N3TDJqZG8veHQwdllZM2FsekR5?=
 =?utf-8?B?WHJVSVk3dEJiSHBOVHk2ZUNnK1VVRTV4ZWFzK0NPazZ0b0dlTnVQWG9PWUpB?=
 =?utf-8?B?RE5xVjVTY2JBTlJETk9uazNYMm1OblJiU2prOXhQdzVjQ2ZRQTBTY3hFVVB5?=
 =?utf-8?B?TUVlUHI1dk53OHh0TVp1VXJPc3VoazdEejlNdVNtOWVOMDFRV2R2Um5iUmNW?=
 =?utf-8?B?YnRvQk05RG9LQ3ZGMEZ5L1VqeXFJMVNmbUZsdmR6OEVTL285ak0vZGtJQkdk?=
 =?utf-8?B?SFlsb3J0Yi9vUjBSREJwSGRjdzFSWU80Y0MwL0JSVWVHV0N6QitUcHd6ZUVy?=
 =?utf-8?B?ZVlOTlZUeFlvdExBcnF2c2JqTy9oUDVNZk1UQlBjL29PVVk4SFNZeFo0aG9a?=
 =?utf-8?B?K3c9PQ==?=
Content-ID: <B19C7574EB8DDA489B74CC34C6EE564E@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: KL1PR03MB6032.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d058c33c-4138-4dfb-062e-08de1b650ced
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2025 05:43:15.5664
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xPysWhkwFaML7cKEbmPj4LV48HZs2jO8FP7h4Ym972fgk4AjsNADBKQPWLp9ksVCb1afbJtZx27XePryW3vU0KKFNEyTj1Hpi+/D7fyAPvE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR03MB7223
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_214326_940204_3190DFAD 
X-CRM114-Status: GOOD (  19.97  )
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

On Thu, 2025-10-23 at 21:49 +0200, Nicolas Frattaroli wrote:
> As it stands, the mediatek,ufs.yaml binding is startlingly
> incomplete.
> Its one example, which is the only real "user" of this binding in
> mainline, uses the deprecated freq-table-hz property.
> 
> The resets, of which there are three optional ones, are completely
> absent.
> 
> The clock description for MT8195 is incomplete, as is the one for
> MT8192. It's not known if the one clock binding for MT8183 is even
> correct, but I do not have access to the necessary code and
> documentation to find this out myself.
> 
> The power supply situation is not much better; the binding describes
> one
> required power supply, but uses a supply property from ufs-
> common.yaml
> that can be either 1.8V or 3.3V.
> 
> No second example is present in the binding, making verification
> difficult.
> 
> Disallow freq-table-hz and move to operating-points-v2. It's fine to
> break compatibility here, as the binding is currently unused and
> would
> be impossible to correctly use in its current state.
> 
> Add the three resets and the corresponding reset-names property.
> These
> resets appear to be optional, i.e. not required for the functioning
> of
> the device.
> 
> Move the list of clock names out of the if condition, and expand it
> for
> the confirmed clocks I could find by cross-referencing several clock
> drivers. For MT8195, increase the minimum number of clocks to include
> the crypt and rx_symbol ones, as they're internal to the SoC and
> should
> always be present, and should therefore not be omitted.
> 
> MT8192 gets to have at least 3 clocks, as these were the ones I could
> quickly confirm from a glance at various trees. I can't say this was
> an
> exhaustive search though, but it's better than the current situation.
> 
> Properly document all supplies, with which pin name on the SoCs they
> supply, and what voltage we understand them as. Mandate vcc-supply-
> 1p8,
> as vcc-supply appears to always be describing a 1.8V supply. The
> ufs-common.yaml vccq/vccq2 supplies are used for this purpose, so
> that
> common UFS implementations which do power management for these don't
> have to treat MediaTek's 1.2V supplies in a special way.
> 
> Add the missing avdd09-supply, which so far only mt8183 uses.
> 
> Also add a MT8195 example to the binding, using supply labels that I
> am
> pretty sure would be the right ones for e.g. the Radxa NIO 12L.
> 
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  .../devicetree/bindings/ufs/mediatek,ufs.yaml      | 115
> +++++++++++++++++----
>  1 file changed, 97 insertions(+), 18 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/ufs/mediatek,ufs.yaml
> b/Documentation/devicetree/bindings/ufs/mediatek,ufs.yaml
> index 1dec54fb00f3..364672bc65b1 100644
> --- a/Documentation/devicetree/bindings/ufs/mediatek,ufs.yaml
> +++ b/Documentation/devicetree/bindings/ufs/mediatek,ufs.yaml
> @@ -18,11 +18,28 @@ properties:
>  
>    clocks:
>      minItems: 1
> -    maxItems: 8
> +    maxItems: 13
>  
>    clock-names:
>      minItems: 1
> -    maxItems: 8
> +    items:
> +      - const: ufs
> +      - const: ufs_aes
> +      - const: ufs_tick
> +      - const: unipro_sysclk
> +      - const: unipro_tick
> +      - const: unipro_mp_bclk
> +      - const: ufs_tx_symbol
> +      - const: ufs_mem_sub
> +      - const: crypt_mux
> +      - const: crypt_lp
> +      - const: crypt_perf
> +      - const: ufs_rx_symbol0
> +      - const: ufs_rx_symbol1
> +
> +  operating-points-v2: true
> +
> +  freq-table-hz: false
>  
>    phys:
>      maxItems: 1
> @@ -30,7 +47,31 @@ properties:
>    reg:
>      maxItems: 1
>  
> -  vcc-supply: true
> +  resets:
> +    items:
> +      - description: reset for the UniPro layer
> +      - description: reset for the cryptography engine
> +      - description: reset for the host controller
> +
> +  reset-names:
> +    items:
> +      - const: unipro
> +      - const: crypto
> +      - const: hci
> +
> +  avdd09-supply:
> +    description: Phandle to the 0.9V supply powering the AVDD09_UFS
> pin
> +
> +  vcc-supply:
> +    description: Phandle to the 1.8V supply powering the AVDD18_UFS
> pin
> +
> +  vcc-supply-1p8: true
> +
> +  vccq-supply:
> +    description: Phandle to the 1.2V supply powering the AVDD12_UFS
> pin
> +
> +  vccq2-supply:
> +    description: Phandle to the 1.2V supply powering the
> AVDD12_CKBUF_UFS pin

The AVDD_xxx LDO is used for IC internally, and the vcc-supply/vccq-
supply/vccq2-supply are used for UFS device's power. so that it is
wrong setting the AVDD_xxx to these suppliers.
and, the vcc is 2.5V or 3.3V, not 1.8V.
>  
>    mediatek,ufs-disable-mcq:
>      $ref: /schemas/types.yaml#/definitions/flag
> @@ -43,6 +84,7 @@ required:
>    - phys
>    - reg
>    - vcc-supply
> +  - vcc-supply-1p8
>  
>  unevaluatedProperties: false
>  
> @@ -53,29 +95,41 @@ allOf:
>        properties:
>          compatible:
>            contains:
> -            enum:
> -              - mediatek,mt8195-ufshci
> +            const: mediatek,mt8183-ufshci
>      then:
>        properties:
>          clocks:
> -          minItems: 8
> +          maxItems: 1
>          clock-names:
>            items:
>              - const: ufs
> -            - const: ufs_aes
> -            - const: ufs_tick
> -            - const: unipro_sysclk
> -            - const: unipro_tick
> -            - const: unipro_mp_bclk
> -            - const: ufs_tx_symbol
> -            - const: ufs_mem_sub
> -    else:
> +        vccq2-supply: false
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: mediatek,mt8192-ufshci
> +    then:
>        properties:
>          clocks:
> -          maxItems: 1
> +          minItems: 3
> +          maxItems: 3
> +        clocks-names:
> +          minItems: 3
> +          maxItems: 3
> +        avdd09-supply: false
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: mediatek,mt8195-ufshci
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 13
>          clock-names:
> -          items:
> -            - const: ufs
> +          minItems: 13
> +        avdd09-supply: false
>  
>  examples:
>    - |
> @@ -94,8 +148,33 @@ examples:
>  
>              clocks = <&infracfg_ao CLK_INFRA_UFS>;
>              clock-names = "ufs";
> -            freq-table-hz = <0 0>;
>  
>              vcc-supply = <&mt_pmic_vemc_ldo_reg>;
> +            vcc-supply-1p8;
>          };
>      };
> +  - |
> +    ufshci@11270000 {
> +        compatible = "mediatek,mt8195-ufshci";
> +        reg = <0x11270000 0x2300>;
> +        interrupts = <GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>;
> +        phys = <&ufsphy>;
> +        clocks = <&infracfg_ao 63>, <&infracfg_ao 64>, <&infracfg_ao
> 65>,
> +                 <&infracfg_ao 54>, <&infracfg_ao 55>,
> +                 <&infracfg_ao 56>, <&infracfg_ao 90>,
> +                 <&infracfg_ao 93>, <&topckgen 60>, <&topckgen 152>,
> +                 <&topckgen 125>, <&topckgen 212>, <&topckgen 215>;
> +        clock-names = "ufs", "ufs_aes", "ufs_tick",
> +                      "unipro_sysclk", "unipro_tick",
> +                      "unipro_mp_bclk", "ufs_tx_symbol",
> +                      "ufs_mem_sub", "crypt_mux", "crypt_lp",
> +                      "crypt_perf", "ufs_rx_symbol0",
> "ufs_rx_symbol1";
> +
> +        operating-points-v2 = <&ufs_opp_table>;
> +
> +        vcc-supply = <&mt6359_vufs_ldo_reg>;
> +        vcc-supply-1p8;
> +        vccq-supply = <&mt6359_vrf12_ldo_reg>;
> +        vccq2-supply = <&mt6359_vbbck_ldo_reg>;
> +        mediatek,ufs-disable-mcq;
> +    };
> 
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
