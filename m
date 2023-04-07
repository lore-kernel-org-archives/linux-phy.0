Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7920AC76196
	for <linux-phy@archiver.kernel.org>; Fri,  7 Apr 2023 05:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rK/d3viXVJ1fVwHDadrCOhQLoLd1JOL+AVkpUOE7VBc=; b=UPp6psazgdLtni
	kLTlIqAuC30qk0g7YtYFbsGGQR7uL02GTeFWIg9577/qnOmkAVw6xjAPDwIh0//mj5nYVvh3IdOvr
	qRsAvrv/Ri4exrVxu0TK0ksMm6qW93xwRzhTUneHXwvzSViqM18q81DiaTDjzWtfLcQOo22/6icVZ
	XFpTa38gS9SCBXDkSGO0JEL6qf5Ym/2BQB2jdoL0/N+rAyvT0jtnI7546gkhwF7/5rawOrEBDA0/+
	1uWjKF4ZlZ0XarEQvJyP1bXKX1Yk3lqS128SPvsfwTt9L+9Z1u5EjbuJ4WPkFM/nFf5N27/rvh0q2
	M6Vez69qHwQQjBYpa0UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkejg-009Clh-0F;
	Fri, 07 Apr 2023 05:34:08 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pkejc-009CkH-1p;
	Fri, 07 Apr 2023 05:34:06 +0000
X-UUID: cb6aa5fad50511edb7d8d11f642b8e78-20230406
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=J8F9Hehd9NIjyadS69WRJfaufKb1P+b2HLLv2RSAQLQ=;
	b=Yv/tLa0tQa5zbv+PrQpaFrlF/0xDCHnhkmaFLhMQ0rKAMXSlje5QvFfNXpDBQl//hS6lZ87ZEUQfbole+D4ppNz9jCexNmtCNuImbguBoU+xtm5x5L4pAcJSJxrR+4WJNkusJV1hmnbzAO3SYRIeYgWU0Vs/t3mkhUMccCu9e/U=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.22,REQID:145b1d63-a595-4d26-9e8a-a3b07153d4a3,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:45,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:45
X-CID-INFO: VERSION:1.1.22,REQID:145b1d63-a595-4d26-9e8a-a3b07153d4a3,IP:0,URL
	:0,TC:0,Content:0,EDM:0,RT:0,SF:45,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:45
X-CID-META: VersionHash:120426c,CLOUDID:417b7bb5-beed-4dfc-bd9c-e1b22fa6ccc4,B
	ulkID:2304071331022W1M8Y66,BulkQuantity:7,Recheck:0,SF:17|19|48|29|28|102,
	TC:nil,Content:0,EDM:-3,IP:nil,URL:11|1,File:nil,Bulk:40,QS:nil,BEC:nil,CO
	L:0,OSI:0,OSA:0,AV:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-UUID: cb6aa5fad50511edb7d8d11f642b8e78-20230406
Received: from mtkmbs13n1.mediatek.inc [(172.21.101.193)] by mailgw01.mediatek.com
	(envelope-from <chunfeng.yun@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1325411732; Thu, 06 Apr 2023 22:33:58 -0700
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 mtkmbs11n1.mediatek.inc (172.21.101.185) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.25; Fri, 7 Apr 2023 13:33:21 +0800
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (172.21.101.239)
 by mtkmbs10n1.mediatek.com (172.21.101.34) with Microsoft SMTP Server id
 15.2.1118.25 via Frontend Transport; Fri, 7 Apr 2023 13:33:21 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DhT7Z5hLDqtA1UV3qT7cbw/XFAjTKyqLVmXqUV3J2x7y3MQmuTEcsgAA5lQnkv2FhO9d2Q6h1RC0aiZ0T2xkEXD2VNcEYvbKe72gzaoL/8Mmm/Fl7V6QfYfYxzfzm8xoKgUzI0O1RZOB+yQKpjWkD6GSYDuce+pTF2OCGqpsT3eMOxmQdWe58ZPYlb6CfrpvpUb3JrLTpHaWTzuB6dWBymBmeHl8FRl7wYSVNAfz5nP2PlhUUu1drtMMOZQ1vsVL++MyzY3NCnjSI+C48e0nRnyz6BbRDygY6BLK0M+car8QjxMF8oe+6KQ5sgMTNYEQXygRuM2kWOcxT6glmB5i5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J8F9Hehd9NIjyadS69WRJfaufKb1P+b2HLLv2RSAQLQ=;
 b=WSi8KQ2LNC2poVc4U0y7cXZc3YzGKfdAWZfx6Syhh1RwPALZR6TznCNt0qDyreRW553xon4LSGbfHR7HGGyJoKcCq2Yb05K32KxVETMCx5+W5PeN3mu6LlbGrYt9EKKaaCDcCGEmyQR3kDuVmvDQ20WWsl7TNBp+/GLQ4fCLKKURtc346SZEWxUhpAlHbu03i28Ok4Q6RhVA/Aw9iLkxNli1E5ew0qdPlTYCzeJ3RLlAff0wC6XyjWSbISGHTAzprB/QS2KA7kqWzAdy9jUgRDqnepwWhGc+/V6xermP+cBQoinC4Whtw9cCGVs5Cc53xozGqK6fySm8PWeMkzg3wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J8F9Hehd9NIjyadS69WRJfaufKb1P+b2HLLv2RSAQLQ=;
 b=Tfd/s5lrzT35jeLum+f8Q7UcOBFt45qU6FhqLgKHCAnbXClo+zspb15RC43U6gMMsSIwhMdADs8vNqunmxUiMA0FpqGpPTEIzx/BT/CE8Us1y3QMxG9K7pJfoFcTJWsmlDPwb2ozvmwmAhroe5avusYHRtIHy5egGr+XifYZq/k=
Received: from KL1PR03MB5062.apcprd03.prod.outlook.com (2603:1096:820:1a::22)
 by TYZPR03MB5760.apcprd03.prod.outlook.com (2603:1096:400:70::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.33; Fri, 7 Apr
 2023 05:33:18 +0000
Received: from KL1PR03MB5062.apcprd03.prod.outlook.com
 ([fe80::82b9:eab9:b4e3:8464]) by KL1PR03MB5062.apcprd03.prod.outlook.com
 ([fe80::82b9:eab9:b4e3:8464%7]) with mapi id 15.20.6254.035; Fri, 7 Apr 2023
 05:33:17 +0000
From: =?utf-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>
To: "vkoul@kernel.org" <vkoul@kernel.org>
CC: "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "matthias.bgg@gmail.com"
	<matthias.bgg@gmail.com>, "linux-mediatek@lists.infradead.org"
	<linux-mediatek@lists.infradead.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>,
	=?utf-8?B?RWRkaWUgSHVuZyAo5rSq5q2j6ZGrKQ==?= <Eddie.Hung@mediatek.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v9 1/2] phy: core: add debugfs files
Thread-Topic: [PATCH v9 1/2] phy: core: add debugfs files
Thread-Index: AQHZV9cDPkGBtXB0Aki6NkGjBbxDxq8ZzCGAgAWpGAA=
Date: Fri, 7 Apr 2023 05:33:17 +0000
Message-ID: <f2b614377834d3473933e16f70d07c66c26bb1d6.camel@mediatek.com>
References: <20230316071452.9161-1-chunfeng.yun@mediatek.com>
	 <ZCrrhZzj98WdWkd3@matsya>
In-Reply-To: <ZCrrhZzj98WdWkd3@matsya>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: KL1PR03MB5062:EE_|TYZPR03MB5760:EE_
x-ms-office365-filtering-correlation-id: c4ffa194-9357-46af-85c7-08db37299735
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: t26W3WoHVCv843SQS2TG4TVcCQtjlwISABI9ftmH7dLdvwUvMHZUJp8wZTO2KGzHs880pD/+bS/HYAgfcdHUN43ltisD9nkV/9RYniEiYD5JylBxa3A6Xdv6Ghk3D2cxlGtU0VhfmEOrzbsUs2ELKdOADcc4EFX0xBq/YenjUuMOj5U5MCIgB2gz8tNi/GnIBxbGYF6026F1kJKSxxHQDsZK6GE/a45zM8ZOBZfojNob0QV/eKVBnniK0fjn3SF3NP4UEZ62qKusqd6usc+QeBAHuW5WYv5zEyMrJyfc2w9gLsizq9AzQHIAHCBMBLDJHGX40PAYQsHQZJpxzr9drHD42E5/XZ8ai/S1fX34oFVeljyuil12prrlaAeYidFxDSfZgFDS4zjdbCFcRrJs43mPZzSGXWB1NIwNeYV19NWy2b6tvuwVi8HsEP5wwOvhd/4uJJkRNhZAHPZj161qKcKnFWfpfBgwq1GXj0SVlQvpCutDkxkuYUbBi+2yFGyjM7hl6WsUNHRA4q75crEDQJA4fMR8HfqgTnxgVYs6LnVy6bKItRC1VbMv6PWWEkuT19viiUimIZ5oFeoob/9uh/sc39qiIJQry//X0ZK8a7ci4ZGEXd8wse70CLQZtGUD0NCAmoYxI8XmxNQ6d+li4Q==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:KL1PR03MB5062.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(39860400002)(396003)(346002)(376002)(366004)(136003)(451199021)(36756003)(86362001)(85182001)(91956017)(76116006)(316002)(41300700001)(66476007)(66556008)(64756008)(8676002)(6916009)(4326008)(71200400001)(54906003)(6486002)(66946007)(66446008)(38070700005)(478600001)(8936002)(2906002)(5660300002)(38100700002)(122000001)(186003)(6512007)(6506007)(26005)(53546011)(2616005)(83380400001)(99106002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c2gvNUpJVEhzeWlCcHFWdDhGT1JNR3dXSHN5QWJINDgxYStaUnZpZzlLTVJ4?=
 =?utf-8?B?c05DMEg2WlplRC9WbmdvdUVIZU5NY0JMK050VlRwVXpUYlI5b1pmZTJpQzhF?=
 =?utf-8?B?M0RLSGJzZDJ6RlB5eldIVy90MFYrV20vREcvRzRvdFRjRm5qZ3BwTHhOcDkr?=
 =?utf-8?B?c050OWdwSGZIQWVISEEyVGphUlUrWFhjdVVSckUrKzNualRNS3V5UG1qcENv?=
 =?utf-8?B?emM1ZkIxL0RXZDEzN25CNllDWFFwcVB1QzBSalZ2UWdCeHRNSlhsTVBWL2Rk?=
 =?utf-8?B?OUFFbWxubllYNUQ2L0oxY0o5RUpPeS9xWVFPK0tuSjRkNWZVYlNQcVJ3Sk5Q?=
 =?utf-8?B?UlduckpLQUIwOXh1WVdoMzNuakVuaFNJN3dQVE1XVk4xblNoYUgrRnFycnpF?=
 =?utf-8?B?aGZCUUpLUW5mU2twZ3ZQdlZMbmk2WWZGRUhHUlU5Y3k1RGt0RkxDbnh4ZWtC?=
 =?utf-8?B?U1IzWEl0SW1GMnBwVDQ2b1ZXbG9xN1dKajVIWlB1bDV5aGcrTWNNaFIvRFNz?=
 =?utf-8?B?QXZ6ek40VVlrckhGV1ZRMFBMb0tOSDNXNFlPZWlBM1FvS3owL3dranJGT2ZC?=
 =?utf-8?B?UmR2UjJDZFpmMENyak9HcTIzZGZ3NkxVc2JsOEluTlErRzFCa3U4b2hqUFc1?=
 =?utf-8?B?bzhkb2U0SEcxaWNBelJlWExiNmZObVdsZHR0a3V0RlpBRk9OV0NjclErUkd0?=
 =?utf-8?B?UENIQVdvUitqU1ZJYjZKemovc04yUzd3WEhiY0NzL2xUczl0MDdaekV2di9l?=
 =?utf-8?B?QzRrUjZYY1BjMVFkMWphajgzWStwU2M3cnlrUThSTEsreG5OZ0tZenFVL2t1?=
 =?utf-8?B?RzVldGhhUWtoTXVxTTVqS1A3TnZpZVpneXg1bktNMTllUmJDb2wrQUpSTVAr?=
 =?utf-8?B?MHZtamVTWUpTbXJwOHRDS080ZlNIakdNRmhuaHNscXpiRjE1b3VxaHgrWVZB?=
 =?utf-8?B?dklrRzJHc2Z2UmFkTlJHUzFOU3NsSWRqTXFJL0NUTGk3MHZFWHZzRTVTQWx2?=
 =?utf-8?B?U0VGa00vSW5MRU9rcjhjbm4wNkNnem15MjZPYVBDaHAwcE1NR0QwdXl2OWwz?=
 =?utf-8?B?Ry9ZNGVabmFrMXJZYUFaN0hpb1M4bDlpbmY3RmIrbElORWIrbnA3TXFHRWJ2?=
 =?utf-8?B?emtrclNJeHY1UHNYaFlsV1NiWHA1ajBqYW5tOG1QS0RKWWxMeFlJcHZsZjU1?=
 =?utf-8?B?NUE5a3ZSOUQxZ3YwL2psVmplUWpCWVk5RXIxOXRXRG5pRTF0VmZUNUo5V2hZ?=
 =?utf-8?B?NTc5Y1kwY0hRZXQrblNZdTlzNVd0ZUpzcm9LMGxkNnJBdG1mM1dpZFk2VExx?=
 =?utf-8?B?K3VSSkRvOFkwZTZXYWxPU1I4MXR1aDN1Wnd2bFlZQ25QQ0Zqdmx1d0daNTlV?=
 =?utf-8?B?SEtWVVBESCszMVFqVjdkY3VnbEJ2YktISmJjTm01SzZlbFVhU3I4a2drMFlU?=
 =?utf-8?B?amFCRWJnUVRXWTVyUEptWTNsMEQweEViY2lpRjl4Q0s5dGROalpiRmM5Mm50?=
 =?utf-8?B?SDljMEVJTnM3SzkwMDZLbTdmN09ZQlBKOXcxck5sOHpQemRHTlU5MTdQa2d6?=
 =?utf-8?B?eGkzY1pIUElHWnpoUHVPUHVjNkJhL20yRWs0VUlWemU1dzJZSVI1ZDhyc1li?=
 =?utf-8?B?MlVBYzZjczIreFpibWhvQzljKzZiSEl1bkpYeDZwMFVFb0JhKytUeVpFc09V?=
 =?utf-8?B?UituT1lJaUJnS1B1Y0JyUmtGaEI1NFhRUmpISmdEdENUbnJUaUZMcmx2YlJS?=
 =?utf-8?B?d1g0NG4wQXU0R3ZWT2hFY3U5TnNiUjQvWWtJWjByYmFLREtldnNXOVNKZ2JX?=
 =?utf-8?B?WENPUkVYRG1hNE0xWXlSZGpHYkJuaFM1VGZyQXZwb2wwVmFreThraGN5SWY3?=
 =?utf-8?B?ekVlTU15b2J5RFVnaWMyY1Nsc2MzNW9RSXN3aVpkSDlLdHJyVElQSGVrbkc4?=
 =?utf-8?B?WWFRdlJPdmVZY0ZockR4YmFHVmFybGNWWWF0dGhHUzRGUkdSbXhzbzdKbDAz?=
 =?utf-8?B?M3pyZzd0OVg3aU5zemNRWTJ5Q1JUb08vMC8xalVtajBDZ3lLY09HN295SVYz?=
 =?utf-8?B?alhkTzhGSWNXbWRFZTRtTlAzTmFsa3BhMm5yQUhOdFdCQnE1Mm85Vzlpd2ov?=
 =?utf-8?B?UlRnMVlsZzEraHZ4ZUhSaEcwUGRMTFdxMTRiSGtYOW5DeFcwMW9FV1VKeEpH?=
 =?utf-8?B?cHc9PQ==?=
Content-ID: <C610683473E50145A92EBEAD43AD8A3F@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: KL1PR03MB5062.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c4ffa194-9357-46af-85c7-08db37299735
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2023 05:33:17.2568
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LldaiNNE5SeSlkjTexLwglVAqm9g/bgzqLPPk8DgKbm7sQFwJJGaoNquAr1bx7EvUKiDnEAz//8YjiAPVYpqsE/ckUsksZJ9H1v27oZK8eE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR03MB5760
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230406_223404_610967_FAC7EB59 
X-CRM114-Status: GOOD (  25.80  )
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

On Mon, 2023-04-03 at 20:36 +0530, Vinod Koul wrote:
> External email : Please do not click links or open attachments until
> you have verified the sender or the content.
> 
> 
> On 16-03-23, 15:14, Chunfeng Yun wrote:
> > Add a debugfs root for phy class, and create a debugfs directory
> > under
> > the root when create phy, then phy drivers can add debugfs files.
> > 
> > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > ---
> > v9: create a 'phy' debugfs root, add a debugfs entry in struct phy
> > suggested by Vinod;
> > 
> > No v8 sent out;
> > 
> > v2~v7: no changes
> > ---
> >  drivers/phy/phy-core.c  | 14 ++++++++++++++
> >  include/linux/phy/phy.h |  2 ++
> >  2 files changed, 16 insertions(+)
> > 
> > diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
> > index 9951efc03eaa..05715352881e 100644
> > --- a/drivers/phy/phy-core.c
> > +++ b/drivers/phy/phy-core.c
> > @@ -11,6 +11,7 @@
> >  #include <linux/export.h>
> >  #include <linux/module.h>
> >  #include <linux/err.h>
> > +#include <linux/debugfs.h>
> >  #include <linux/device.h>
> >  #include <linux/slab.h>
> >  #include <linux/of.h>
> > @@ -20,6 +21,7 @@
> >  #include <linux/regulator/consumer.h>
> > 
> >  static struct class *phy_class;
> > +static struct dentry *phy_debugfs_root;
> >  static DEFINE_MUTEX(phy_provider_mutex);
> >  static LIST_HEAD(phy_provider_list);
> >  static LIST_HEAD(phys);
> > @@ -996,6 +998,8 @@ struct phy *phy_create(struct device *dev,
> > struct device_node *node,
> >               pm_runtime_no_callbacks(&phy->dev);
> >       }
> > 
> > +     phy->debugfs = debugfs_create_dir(dev_name(&phy->dev),
> > phy_debugfs_root);
> > +
> >       return phy;
> > 
> >  put_dev:
> > @@ -1226,6 +1230,7 @@ static void phy_release(struct device *dev)
> > 
> >       phy = to_phy(dev);
> >       dev_vdbg(dev, "releasing '%s'\n", dev_name(dev));
> > +     debugfs_remove_recursive(phy->debugfs);
> >       regulator_put(phy->pwr);
> >       ida_simple_remove(&phy_ida, phy->id);
> >       kfree(phy);
> > @@ -1242,6 +1247,15 @@ static int __init phy_core_init(void)
> > 
> >       phy_class->dev_release = phy_release;
> > 
> > +     phy_debugfs_root = debugfs_create_dir("phy", NULL);
> > +
> >       return 0;
> >  }
> >  device_initcall(phy_core_init);
> > +
> > +static void __exit phy_core_exit(void)
> > +{
> > +     debugfs_remove_recursive(phy_debugfs_root);
> 
> This should be moved to phy_release() we want the debugfs to be
> cleaned
> first
phy_release() will remove its debugfs file, but phy_debugfs_root is the
root of phy core, can't be removed in phy_release()

> 
> > +     class_destroy(phy_class);
> 
> hmmm we are missing this already, that might be an issue!
> 
> > +}
> > +module_exit(phy_core_exit);
> > diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> > index 3a570bc59fc7..f6d607ef0e80 100644
> > --- a/include/linux/phy/phy.h
> > +++ b/include/linux/phy/phy.h
> > @@ -148,6 +148,7 @@ struct phy_attrs {
> >   * @power_count: used to protect when the PHY is used by multiple
> > consumers
> >   * @attrs: used to specify PHY specific attributes
> >   * @pwr: power regulator associated with the phy
> > + * @debugfs: debugfs directory
> >   */
> >  struct phy {
> >       struct device           dev;
> > @@ -158,6 +159,7 @@ struct phy {
> >       int                     power_count;
> >       struct phy_attrs        attrs;
> >       struct regulator        *pwr;
> > +     struct dentry           *debugfs;
> >  };
> > 
> >  /**
> > --
> > 2.18.0
> 
> --
> ~Vinod
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
