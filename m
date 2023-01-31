Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F914C636CC
	for <linux-phy@archiver.kernel.org>; Tue, 31 Jan 2023 08:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oy0RGB77SloZ2TlRps6KUzS7OkXfwEkLYzvnuDFSpZg=; b=zaSr9nfwNxCcwM
	obHkG7MhE/DvSRFUmaBDUfxJGluJTm5tROwLKDwFEu+/12WEQoKvzUSbmM46aW7uB04vm+W6erNrp
	iziGcBNtyvSnrKeugk2DifaSmAqyfGXv3bG0rh3JHePFjfapAHaQWMUfdYV4Uod+cONvPWdfiRwjm
	TLEjxQ7XjCgD6NeQKVrbRiMAKYF8qKyMotIDlbXhquWTszobWtqSvo2NpU4Tq4/irA/I4XFUMsbzH
	OSwVH3CvJuwAGUyTEgsWxJgNOjKXt4oSk6Ms6R6nZC+31xhcrOhlAPaxpblXbd8RYUK0mNM8VxDPN
	TXVt82bsfDFVp1hBNnuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMmSo-006s5T-Hg; Tue, 31 Jan 2023 08:58:02 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMmSl-006s4f-DZ; Tue, 31 Jan 2023 08:58:01 +0000
X-UUID: 57a1e744a14511edbbe3f76fe852e059-20230131
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=03NB3XwxFVDkwxXEHEpqN1IyRgBbRI4WchaoDM4XCwM=;
	b=d4MTl5JRDuna3JlS+nENfRhzzp/YXyn5nfoTe4r8136HT+6e3yhdR3wLIym0p0DOX6cZZ5/g4Ka2ndsYkPljnrKi+QS8bGALg59wkNAX+NK5qavBrNuVnANS0pLsDLv/UHT5XqtT9fMW5zGGWvoxyJcCVYJhcVHHHFh0fPIfvSg=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.18,REQID:50b0f96f-92ba-42dd-b8fe-310a3d794031,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:3ca2d6b,CLOUDID:cd33d955-dd49-462e-a4be-2143a3ddc739,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0
X-CID-BVR: 0,NGT
X-UUID: 57a1e744a14511edbbe3f76fe852e059-20230131
Received: from mtkmbs11n1.mediatek.inc [(172.21.101.185)] by mailgw01.mediatek.com
	(envelope-from <chunfeng.yun@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1545651435; Tue, 31 Jan 2023 01:57:51 -0700
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs11n1.mediatek.inc (172.21.101.185) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.792.15; Tue, 31 Jan 2023 16:57:15 +0800
Received: from APC01-SG2-obe.outbound.protection.outlook.com (172.21.101.239)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.792.3 via Frontend Transport; Tue, 31 Jan 2023 16:57:15 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UIy9jpSrjI6A/LbFVHt8Oquh+Z2dodibl+dphN1FwNXz86S3Pu6uFzz6EsUW4jdzL1AVhzi0aBJL63mhVpEduC/q88jDJBUG3HDvXgGoOWABxadKae/FTTMPzQLy+3juGql1xyBigPOSzsjYiEnMsmk6sjCLYEAuLgcq2MJqqCEDElKvRE5Or7AgK9H8n8dbeojpnKQtDqWkPtxuW0RXttgLgAqQLoQ2zKnezQ6xPWMKik0DA55fP03We8uvFI8ln6QApyQWCB2+ph+UlYzgORyMLRev9R6S4DowouR0SniWKFb10NaQ2vmWOaiIzcO04RqAhmo5LMWgwh6yaEF+Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=03NB3XwxFVDkwxXEHEpqN1IyRgBbRI4WchaoDM4XCwM=;
 b=ie0YX7Wj6RYWn3CNjmbAWeTPDHISf9mXCpM7jqHQFd3Dhr7LlD0VM8TbK/75BdH2J9Dj08aFspLRA4XpMvs6Fvq73MPplTt+5E+3lK923Hw9AQQZT9cdrkBIKuSCdkQ+rkf9zGZprwV9fOF6P0S4y6b+61bNokKuGMWtU+3CLeGVkXJJyFoaQnqQEjTBhf8Ybt5Iw+IUq+1YU5Q3BrtdL7lpQUXqSnQDtXau9y5RECbyemdYCMALspyHitxZWb+HvzS0tgsX6QwJ6j1n0djc2Z3UxEr6rxr+955yuSvdhkiYHD6uzM5HuCMpr8QCq0Trdmgxm4+Gj+faEPrf4SxTew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=03NB3XwxFVDkwxXEHEpqN1IyRgBbRI4WchaoDM4XCwM=;
 b=TMVAPrllXNlPZ2w9xCfhejJ7PSBPt1OBjHVGIkpBYGyCX8cUsy4aBdRUpuMPs/qp5fpmEy2eW3IFrvln+KoaNFWuGH5ZNWKIGXThmiVgCJPCwjtAoN47DRLP3gmNvkGGB4iOZ0cbilfKSt3aThabNYkMQphnsmMSQaefUtb2H8o=
Received: from KL1PR03MB5062.apcprd03.prod.outlook.com (2603:1096:820:1a::22)
 by SEZPR03MB7035.apcprd03.prod.outlook.com (2603:1096:101:e4::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.36; Tue, 31 Jan
 2023 08:57:12 +0000
Received: from KL1PR03MB5062.apcprd03.prod.outlook.com
 ([fe80::5e9b:f4cf:8d7f:60d1]) by KL1PR03MB5062.apcprd03.prod.outlook.com
 ([fe80::5e9b:f4cf:8d7f:60d1%3]) with mapi id 15.20.6043.036; Tue, 31 Jan 2023
 08:57:11 +0000
From: =?utf-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>
To: "ndesaulniers@google.com" <ndesaulniers@google.com>
CC: "llvm@lists.linux.dev" <llvm@lists.linux.dev>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"lkp@intel.com" <lkp@intel.com>, "nathan@kernel.org" <nathan@kernel.org>,
	"kishon@kernel.org" <kishon@kernel.org>,
	=?utf-8?B?RWRkaWUgSHVuZyAo5rSq5q2j6ZGrKQ==?= <Eddie.Hung@mediatek.com>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "vkoul@kernel.org"
	<vkoul@kernel.org>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"arnd@arndb.de" <arnd@arndb.de>, "trix@redhat.com" <trix@redhat.com>,
	"angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>
Subject: Re: [PATCH v6 1/3] phy: mediatek: fix build warning caused by clang
Thread-Topic: [PATCH v6 1/3] phy: mediatek: fix build warning caused by clang
Thread-Index: AQHZIEA7g6q5Ep2afU2pWWp4HJGwLq6cu2OAgAQYvQA=
Date: Tue, 31 Jan 2023 08:57:11 +0000
Message-ID: <11e2923015a01ed0aac2ca0cb31fbc8016644a0f.camel@mediatek.com>
References: <20230104132646.7100-1-chunfeng.yun@mediatek.com>
	 <CAKwvOdnMF4LRhTnQ3Rg+q3hd7jm2tS0aTHmwU6isKJHL2u9Q-g@mail.gmail.com>
In-Reply-To: <CAKwvOdnMF4LRhTnQ3Rg+q3hd7jm2tS0aTHmwU6isKJHL2u9Q-g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: KL1PR03MB5062:EE_|SEZPR03MB7035:EE_
x-ms-office365-filtering-correlation-id: 6ac85ad6-e0d3-4622-4a09-08db03692447
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Xf5CcTQYk87ZJlsxtogsxDyIrGLXHZx8EoOC9bPC0TL1nhbpjBkjgu66nCD1LTgt8dUXr273+W98nahmc7hBzuejzjHtNjZKzInzMSKRfV5Y1xP2yBoEbI3/wql0pezS8j9kfDO3Quzch4EsvaTrDCB2aUzXYe20VrJBCJFHIBNBbkrNUJ2pMd8+DcFElIgBvBiJ+dM8p+mWNUbs3nvBFUlYzdvJE9qKjcSKp6QOZvT5zjoa7v5piud1dvLF5eSeyOWDfAWLNz6AmBlkj1YNwvamOSvf0X2bPo064rWVVP3+ZzJiC2bds8h4OhTG8uDwy9ka95WX3+CdLf9WKuLZiVbctcQc39h9C5MVImeYVgd9Fi2HhyNUSYkUL31m9AR24njTcsa9VLlVYPYirTsd3GhiLXYG0E7s2QhQm+zqjFW2Bp23KgZ9IPP0yxpW8huPN/tqUuHe+09LIl8XWXMh5QDxoSFzx337+IFg9b4oBlCPu0c6tFR8+2mrm1Cicp0xOB6e/DVKQjMpG3FA6XdaS2SaIYF0CdCHCCD/VCmgwb+PQAT4mpCHV5JC3TuhLcKW40gT+Q4J9oAJrPxCuP5cpQPJMGoT//3uJhDW8bu4HD/zJu+s9p/pWywvAYTTQoaFzBCY50uN/fm6hE3ftpZgCt255DtrkU0Ck9AIQTm5VwIKTCiag3FPE3a8TWOWepNEstvdkSqrhZqRsXiiE4rLxzyG7inKQxf/LShV+1xDrus=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:KL1PR03MB5062.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(39860400002)(136003)(376002)(396003)(346002)(366004)(451199018)(85182001)(36756003)(26005)(6512007)(5660300002)(2616005)(122000001)(186003)(38100700002)(7416002)(2906002)(53546011)(71200400001)(38070700005)(6486002)(478600001)(6506007)(86362001)(6916009)(83380400001)(91956017)(76116006)(8676002)(4326008)(66946007)(54906003)(66446008)(66556008)(64756008)(316002)(41300700001)(66476007)(8936002)(99106002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ajF2QXROby9FVUxVdDI2Q3ZlRGxlbmlxVkR5TFpHT2d3ejh5OS8yMVduM0JP?=
 =?utf-8?B?ZU9sb0ppb25Pcm5RdHZPMHUyU3QrblRpUmpFMVlpRmxUQyt5blhEOHN4ZUVX?=
 =?utf-8?B?NEZ5RXdxdUd1VDBvODBGcmhjdlZIblNzMjZwTzFORG9sRy8rb2dyeitXNkFN?=
 =?utf-8?B?bzVVNVFTWGQvUkN2ems5M2hyUndhZ0RUL2NBckxrTzB0aUdWQVo5M3MzYlJ6?=
 =?utf-8?B?REpReDBHdjhaNUl2bEsrV2tTRStzeFQrSndQM0tsdURVSHY4RzZQbTA0WDB6?=
 =?utf-8?B?bnBaQlpJeVBPaFB2dWx0MkZ6QWI0alhoalV1Q25UbmhOTGlKRVI2WDNoa05p?=
 =?utf-8?B?L1ZacXNMdjkzeldDS0FnK3d1M2psNmxqMWN1L3hGZmpFOVczSTBIY2p6cURk?=
 =?utf-8?B?RVMwK3gzOFNKSHZqT2M2SlYvcVFCWWNqNDdJVm0zTzFOK0xnTFFQTHhyMC9V?=
 =?utf-8?B?UUwzeTlldkN6Y05icHplSXJXWXN4eTBjV0xnZEdrRkFndzI5MUJEdHZXUDFi?=
 =?utf-8?B?VlQvT0h3bUEwQUtLbzlsUlMvenNTc2dVUnN4aG9tN2k5TVd2d1U5V0FmdXor?=
 =?utf-8?B?N1ZlVnQyQ2pvZTN3eTdVeG1JeENCd0hxd1BiM2d6WGk5a0h0MU9sMVRRWUV6?=
 =?utf-8?B?MmZyc3IzeVdsWkIwNnpUbmpRbDNBcnZ1SlIzeTQvRHZzanA3RnYxa0hWeVRB?=
 =?utf-8?B?YWZBQk9lRkpLUzZRUm1xYjhoVkpjTjBTNjU3QjlwSnJMa0RHWDJrNUVMb2Np?=
 =?utf-8?B?N3JSaWY4eGVWYTZjQVh6TkczRENPS0QyWTE4R2xGZGlveU5tbDVwdFh0ekVu?=
 =?utf-8?B?NkRlaHhaRkVONDBIN3VpM2RaWVJmS01SaG9hYTNlMm9zZ0toU3NrdVhoUndm?=
 =?utf-8?B?UDRQdGpENTdDaTdCaFhVY1lPU2d4bldxenNsUS9wcy81R2tvcXdOc0hPWHEx?=
 =?utf-8?B?RHpybWtQeThQaUFPUXUrZEZGQ2h5QTVQeWVwdGpxN05vOFRCWVlvWmoyNzFL?=
 =?utf-8?B?SXVwVExFQVBreFRpYnpRcjlDNGh1SkptYVhMM1M4aDBYak1tdXkxTHVqeGh0?=
 =?utf-8?B?OUlvUnV4TFBWWUx0OTNaVWlSKzNTcytoNm1YMEM1Sk9wZG9OS1Vpckd5dXlD?=
 =?utf-8?B?S3E0NlJMMTJvSC9pQTJjOGZUVUNMZkNxUnltRjQyMHRzWUtteE1jcXFRa1Fq?=
 =?utf-8?B?bG9tOW5qeWZ2UkdVWm9wdUFhdlpxOFBxNTFhUk05V3pSTUQxUlAzRW9pckg3?=
 =?utf-8?B?QkhXK2haQWh3R2tDcC9oV3JhelRHaWc4cDBsMDdycm92OVFmMWQrQnBqOFFS?=
 =?utf-8?B?Q1FVTWU3ZC9IYXFpTERiQWpsR0lMck1MSUlhVjRmdENoMndIQ3AvZDVLVlJz?=
 =?utf-8?B?a2xqVjVpTEsyM25oL0Z1dFdIK2lIQ1BYTlBNZE5tRDZOeUVmZktWRGExWWpX?=
 =?utf-8?B?QnJVK2tiMXpxa0xDVmhLcGNaakJqbjhVWThQUkxNOXo3emF2K2VOK3ZSNzJK?=
 =?utf-8?B?aW1QenJZSHBaRDU5Sjh3Z1pWNnhjM2cya09Eb0EydnQrSGRqdGdCdDkrZllm?=
 =?utf-8?B?K2tjMTZWazdNTzVROEU2eXFzTXJOWVJ5YjNpdGdSYjNsM1VGalprcEV1bjFZ?=
 =?utf-8?B?RnFPQy84eTFmSVAvNzNpZUJER2p4RnZOVmJ2TGpoTm13YytBcVNpdVl4M0Ro?=
 =?utf-8?B?MVYzRVhMMjdCRGJ5Y2dudlNzb3VpYWx0c0E2UW10REFUVmJEOXJXbXBJOWNQ?=
 =?utf-8?B?NlRrdjE2S0lBbFdhM01mZkJxbE1vTk9Fa2gwVkNhcUJEQmk2Y1I0NDBySkpn?=
 =?utf-8?B?TDJEL2Nod3JJdzNYenJnWWJucDl2NUJXcXhDMlBRVWFPS0FleTZoZ01SRkRU?=
 =?utf-8?B?cnFvTVE4Y1A5UWtTS1MxZk5qSmd5cHlIcDhMRHpJbTdQMXMxMmtWa25CWjF0?=
 =?utf-8?B?eXQ0Z0ZiRGE4YVdjZmswU01DcHdHaWlDQWI5RjI2dkhSUzFxa1RnSzQyckVH?=
 =?utf-8?B?d0VWQmVWQUNNV0lCaTVjVWdVckF6QXJVR3l0RTErSDB1UzFRNFc1dEVSYWcv?=
 =?utf-8?B?Q1V4NWFQaVdJSDFCQWN3by92ZEZGWEg4cFo2MmhXQjF5NGFYdCs2Tk1MdDE1?=
 =?utf-8?B?R0M2Vk5jUHkzQXozd3pWMVNLSXUxMTNpMHQ4Ky9DNlZFYWJJL1lXUXdQaEdr?=
 =?utf-8?B?WFE9PQ==?=
Content-ID: <4E83A9B03C300D4882D87787092B947A@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: KL1PR03MB5062.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ac85ad6-e0d3-4622-4a09-08db03692447
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2023 08:57:11.7533
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: r9+i3GTUpNCkunBXkgzgOWX87I9IZroPYWdqIIyaXLtVkLr17zWxzebyBkwRkdSxLHYua++mEQd8yA4ZXoPZICM5ztVGMUcnFE/ooUbOlEI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR03MB7035
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230131_005759_723033_47E54BDD 
X-CRM114-Status: GOOD (  29.06  )
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

On Fri, 2023-01-13 at 10:36 -0800, Nick Desaulniers wrote:
> On Wed, Jan 4, 2023 at 5:26 AM Chunfeng Yun <
> chunfeng.yun@mediatek.com> wrote:
> > 
> > Remove the temporary @mask_, this may cause build warning when use
> > clang
> > compiler for powerpc, but can't reproduce it when compile for
> > arm64.
> > the build warning is -Wtautological-constant-out-of-range-compare,
> > and
> > caused by
> > "BUILD_BUG_ON_MSG(__bf_cast_unsigned(_mask, _mask)"
> 
> Can you please include the text of the observed warning?
> 
> > 
> > After removing @mask_, there is a "CHECK:MACRO_ARG_REUSE" when run
> > checkpatch.pl, due to @mask is constant, no reuse problem will
> > happen.
> > 
> > Fixes: 84513eccd678 ("phy: mediatek: fix build warning of
> > FIELD_PREP()")
> 
> Uh, why was 84513eccd678 sent/reviewed/merged if it didn't fix the
> issue correctly in the first place?
> 
> Is the issue perhaps that your mask isn't wide enough in the first
> place, and should be?  See:
> commit cfd6fb45cfaf ("crypto: ccree - avoid out-of-range warnings
> from clang")
> for inspiration.
I look at this patch, it said that "
This does not happen in other places that just pass a constant here.
"
That's indeed true, no such warning before using FIELD_PREP() due to
the masks are always constant.

So seems that it can fix the waring if avoid using a temporary variable
@mask_.

Thanks a lot

> 
> > Reported-by: kernel test robot <lkp@intel.com>
> 
> Can you please include the Link: tag to the lore URL of the report?
> 
> > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > ---
> > v6: modify the title
> > v5: no changes
> > v4 new patch, I'm not sure it can fix build warning, due to I don't
> > cross compile
> >     it for powerpc using clang in office.
> > ---
> >  drivers/phy/mediatek/phy-mtk-io.h | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/phy/mediatek/phy-mtk-io.h
> > b/drivers/phy/mediatek/phy-mtk-io.h
> > index d20ad5e5be81..58f06db822cb 100644
> > --- a/drivers/phy/mediatek/phy-mtk-io.h
> > +++ b/drivers/phy/mediatek/phy-mtk-io.h
> > @@ -39,8 +39,8 @@ static inline void mtk_phy_update_bits(void
> > __iomem *reg, u32 mask, u32 val)
> >  /* field @mask shall be constant and continuous */
> >  #define mtk_phy_update_field(reg, mask, val) \
> >  ({ \
> > -       typeof(mask) mask_ = (mask);    \
> > -       mtk_phy_update_bits(reg, mask_, FIELD_PREP(mask_, val)); \
> > +       BUILD_BUG_ON_MSG(!__builtin_constant_p(mask), "mask is not
> > constant"); \
> > +       mtk_phy_update_bits(reg, mask, FIELD_PREP(mask, val)); \
> >  })
> > 
> >  #endif
> > --
> > 2.18.0
> > 
> 
> 
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
