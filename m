Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B2E9C46467
	for <linux-phy@archiver.kernel.org>; Mon, 16 Jan 2023 08:02:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8rdHNN8BPZUSv8fk0TQUclao5nMu/TWYN/wBHFRIuVU=; b=ABJxvRmq2LhmQn
	qtmsOk6FphBxiI4iQWht5xfLG7NIUicVlW2RNtj1NTPx4lbYnLt4qcVMUN2dUEuQ/u6LKNxZN4Akl
	ED3U9eWic7PBknCqN0VaGT7XBGxot7v7wmd7vJ6ezoysutEtstvPxlv+lZtDU9j7nYZ7RQgboP+ve
	pwTAxWdmzYWqAWYcnncuF8hq4wvkebsD5KYqCb/fNdc/hfHYP2nV0uvZAMYa5Js1LqnlnsIGs0+aL
	Ja/TF87U5yo2Y3oo7quaTxTBpwBgDKyheaRfPycTv6elxOWrDEcydMLFVitxs9XxGFQU+KzQiUBPt
	+iK4jfyBBb9O2GV7JB7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHKRt-0095Cr-GC; Mon, 16 Jan 2023 08:02:33 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHKRs-0095Bs-5B; Mon, 16 Jan 2023 08:02:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Transfer-Encoding
	:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To
	:From:Sender:Reply-To:Content-Description;
	bh=gi6bOG2kitwcUAfKHd1CjU3v6VZQ65o289qqNEbn9iY=; b=nIZVE1cVGylz19bjxxu3kim/YQ
	PyDEiGeu4V0M+Mk5oDZU0HtGN0FFJlpKw1d39EC2l8iEz4ux1anFB9btj2J/XHCka06wyFjCz4CHU
	HZYrYtGlZJfn9hjiX6TJwdEhnagNSGdZj0XHQk1QqQVBBfrk4TwjDDm5yd3vOZAYd9vZ+KUnMy0VE
	3h21+3qCp2LNiZRQMX8HiVtS7HdPyJ5XH6t0mKWSPY8iegxdXROFYMzwP+wBI775nn5DLPe8uUjOP
	szsQCkbZCaWSpHPuupbA+1MRuaKhuloZbBuEP7zdZhVPcSsfE3k0+Hq4sb3y8JWSQe9Ns0VdJFlfY
	UvFEZzSA==;
Received: from mailgw01.mediatek.com ([216.200.240.184])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pHKRa-005WYW-1Q;
	Mon, 16 Jan 2023 08:02:21 +0000
X-UUID: 13fdcf26957411edbbe3f76fe852e059-20230116
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=gi6bOG2kitwcUAfKHd1CjU3v6VZQ65o289qqNEbn9iY=;
	b=RltAjyNKB7c0diWPRs+69JLnibL8wkI0tJ6FOrrVM5OnH3u4vm2+iRlO7vLiUNHWQUzM0zoxdXD4UeYMyPsYLrOB/MzGfAZSI2Dy6qZvJbKoC9ekpkBDCN60YjLr6x9Vc8hwi4qlvxO0xPlO/Jnh+Iq6OecxhuIxdl+HkMWMRxU=;
X-CID-CACHE: Type:Local,Time:202301160035-07,HitQuantity:1
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.17,REQID:d69b0d42-33b7-4332-9e3b-23fe9e129240,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:543e81c,CLOUDID:c6a5c254-dd49-462e-a4be-2143a3ddc739,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0
X-CID-BVR: 0,NGT
X-UUID: 13fdcf26957411edbbe3f76fe852e059-20230116
Received: from mtkmbs11n1.mediatek.inc [(172.21.101.185)] by mailgw01.mediatek.com
	(envelope-from <chunfeng.yun@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 557773992; Mon, 16 Jan 2023 01:02:10 -0700
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 mtkmbs13n1.mediatek.inc (172.21.101.193) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.792.15; Mon, 16 Jan 2023 15:51:33 +0800
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (172.21.101.239)
 by mtkmbs10n1.mediatek.com (172.21.101.34) with Microsoft SMTP Server id
 15.2.792.15 via Frontend Transport; Mon, 16 Jan 2023 15:51:33 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kB8B8o5RVv675nDc7WOIENoxEODrHzGLrerZHqKQ6XqJqZ1WR1P5OZlJ6NX6prlrB4KqEacUm+cxsL3CN0h1nP9xrk66fGrSg1CRxBATFMOArUxKo0po+kRrWz9wR/3UbqGFlEX7zmXN/TMdYvLRX/1H7GQSRXlKrm61bX0laydv/6e9v6+oc5m8aHdxE4y8XkXmBc6lsdhEiptLx6CIyEcWQ/4uGlZ/bE7k9n9O92Z12Gvui++R6WT1+NsuFno8ZhZM7Gzal22VdtyIWJF5+iWjJPkTrlH9ugqTQ3ulhMV/JlIy7jbNU0fvwj4DNu4LD5joIhcj/USghVCKMY/xHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gi6bOG2kitwcUAfKHd1CjU3v6VZQ65o289qqNEbn9iY=;
 b=g8fWKHC+1/znp/AqpA+BPilPKogcuyqJNkAAWs8G3PENMRhyhT/Co/mAq+PjhvjVHnV6b5LghnlTrD+SdO8mk1Khlom4y+oWDK6BGfuWgk3T/QYl0Lw4P4DiNPILrgtxveplEQcBbExhU760CIGJRk/Zafrs45eMgOVaR7iHyX1vf0NJS3T3/a9Z4PVx1oaYjxn2DoQaI6oy7rkRQiLGE49nPsOQ/7UYq96xGxvvTLuI17/3E6E2TMsB061KMxiGe0RsU1Jx03kgCw9OuD/WBJx4Nvx1S+C2uAzuIhRmFaOsg+BsLtUpPWo8lawp1Lz0DMtvPwkG3yJ4p0Gk7hjHmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gi6bOG2kitwcUAfKHd1CjU3v6VZQ65o289qqNEbn9iY=;
 b=uD/OyL+BvDPwC12LLw4Q/0Qsewm62z2LUrLEEPtdnYq6h2w1Mq2S/AryQ7jPnYB9P99mrH7yteGuwvHpwQJF1GL+3ZbKEfgQRcziTc+1dNYl3Rtqg4h87l3RnrOtZUd+Udge66zgg6OCyQ1krnWXkDDg5otG3yS8kfdcdW7acnI=
Received: from KL1PR03MB5062.apcprd03.prod.outlook.com (2603:1096:820:1a::22)
 by TY0PR03MB6533.apcprd03.prod.outlook.com (2603:1096:400:21f::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.23; Mon, 16 Jan
 2023 07:51:29 +0000
Received: from KL1PR03MB5062.apcprd03.prod.outlook.com
 ([fe80::5e9b:f4cf:8d7f:60d1]) by KL1PR03MB5062.apcprd03.prod.outlook.com
 ([fe80::5e9b:f4cf:8d7f:60d1%3]) with mapi id 15.20.5986.023; Mon, 16 Jan 2023
 07:51:29 +0000
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
Thread-Index: AQHZIEA7g6q5Ep2afU2pWWp4HJGwLq6cu2OAgAQCygA=
Date: Mon, 16 Jan 2023 07:51:29 +0000
Message-ID: <c657222a816d95b09d220569db1fdde2be747e7f.camel@mediatek.com>
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
x-ms-traffictypediagnostic: KL1PR03MB5062:EE_|TY0PR03MB6533:EE_
x-ms-office365-filtering-correlation-id: 924fb9c0-b8d0-4da5-368d-08daf7967a25
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xYTwfCeEleqSPOqoEtaE3RBt6rAkhT6fTZqB+VbSp7ANdYF29oPxUNO9aGtsScWd11KQbUnrX1lcBM3N6/B6IuQFomF2+AOYEgD0Kb1O25LBKbSHC/g1WEnTUe2tftsguMObBoEmH049xRnwwk6Bqv0ruZClgpA11Jpu+Wt2MRiW+sMwuauc7izwEjz9+8dlhy6a+qPqm7hmZDLmL6Bu7KYSuOWpj8dVRgDdirNxAUHPuCLJQ5CtDss9BQ8UPGdv9Wqvq8VLUWY40Ur/MG0UU1m3aQilL6ccqsgovE1JpW6UKmkJYo8B4dKfCYLIPmw9fKj8hur88N8MubX+s7PGRpMq1coSnzmbvTlLyRlY1NKmRMkWH3/oHUHnpeKUDe8t35T7QzPQ7TDyyje4nv+ZLxsCztgVEZeSy0yOffu1VC+xLSZ0Qt/3LPRr3lO54WooP05qdLdHsBtv6YIcZMHs+eY1AMrm3g3uAi3G1vTWPCeageeTW3dAQf6ftB8vplZNLOc0B2txnmwA8bwVAe3bX/uf8vAYTsZatLdP4cg7G3bF5Pvx2sbuLxi2qKlMZW4UPxBoj1R5VtvHg3A+Zq2ly3Fp2cH7Ut/9dVXDhkp9wpm13xn/zECm2Kx9gHrCnPwJB7+U1XdR0SuXzMhwv73Xoqhty1LMt9Ufsqrcly1DP43anQg2yvXaxCLwar4Fe5XNNvGQHw+A18uXHb0ZOQTJ7OzfcQhVCRYOSkGUwYHHIb8=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:KL1PR03MB5062.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(136003)(376002)(346002)(396003)(39860400002)(451199015)(86362001)(36756003)(85182001)(6512007)(26005)(186003)(4326008)(6916009)(8676002)(64756008)(53546011)(66446008)(76116006)(66556008)(66946007)(41300700001)(2616005)(66476007)(6506007)(316002)(71200400001)(54906003)(478600001)(6486002)(122000001)(7416002)(38100700002)(38070700005)(2906002)(83380400001)(5660300002)(8936002)(99106002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QXE1d1hCTFJ5ZGl3Q1N0WDhhQkM5T3N3Sko0QkE5YUdzanNrTDlhNzEvMktT?=
 =?utf-8?B?bS9rOE94RVozK3IwTXJwRW9xSTUrVW1zV2Z6THUraVNLVW9JT3JFeUNBR3Bl?=
 =?utf-8?B?R0hwL1I4RVcyNFUyTjhEZHlicjVEWGpteFM0aDlueDJ3bFQxWFdzRG8wUFlN?=
 =?utf-8?B?OXdZa0R1NnAzYUQzY01ZMDB3bkpuc0xqdyt4THo2anZPTTFVUlpWYUdGT296?=
 =?utf-8?B?Z0FpVVM2bUxTVFYrYm9Nam52VlNWWEo4TWNla2NEZSttNENHVERQY1dXM1FT?=
 =?utf-8?B?ZFYrRTJJeDZkSEdWOWZzM2FGbks2NXN0UlZYeWxnRzNmN0FaeUlFRXBXczVI?=
 =?utf-8?B?QVhzV0owUmNXb3FINC9ock1IUXBuY1pYM2hsRzNLU2RmdldWVFNTR3h4M0VJ?=
 =?utf-8?B?WDFtVkYvb1BIQ044VUE3d2lRempKQjNMVGFJaUR6RkpIRGgvckVBMm53MG9y?=
 =?utf-8?B?NGgzQXhPL052cXVyL0JaVnd3Q292dXFQd3diU2VrdkgyWDczajJULzhxM05C?=
 =?utf-8?B?MGRWemRwd2xPWmRNbkZLM096ZENEUkFhOThBM0Rab0lNR0RUV092TXhGK0tY?=
 =?utf-8?B?Uk90cDBJWUkvMUNzcUE0MGN2bGJRcUhLR2VlNThGTGtUZS9VNGNBdE8zNUR3?=
 =?utf-8?B?dXA4cDBTNG9YRFFKdkw5L3VuODJlOGhrTTRzUGNHalBBdlNVaktwMXpqNjh6?=
 =?utf-8?B?VnE0TjlkMCtHZlZ6ODRaanVIR3g2WTlaeGVUaThvRHkxemlteHZZbmIzZmlY?=
 =?utf-8?B?VzNXaTU1d2R4OTdvK2laQ0Y4OWlFUTRkcEtOU08yTWFVblo0Q09lenVuV1Zh?=
 =?utf-8?B?WnhOYTRxbUw4L0N1RnZmaXYrYW1QdDczdkVlUHBla3pNTmIweHdNUzRxYUlv?=
 =?utf-8?B?aERWRzVIODR0UDZhV2xHYm5qRGdRZDc0Q3JsZ0VyY01hSjArMzE5V0pCOFUw?=
 =?utf-8?B?dHFzVDhVLzhZRVhwTXpsNzB3Sm5FQm9VejFuUDlhS1FEWXJpa2hhSnhtTVBH?=
 =?utf-8?B?T1RpZEVqZFdvUnBPbjVtTXBHaGsyZExvbGhFdm9tV20yS2htcjdEeXRIMzEz?=
 =?utf-8?B?cmJ5RVgwNTlrenRiM0pSd3BYcVdyTkZxc0pheUhOUkZLZnlZYlZzQlJ3TTN1?=
 =?utf-8?B?UlRtNkdmNnRyS2xtRkNUZElWZjRWNmttUGhsUytYMCsyKzV5WFZFZFFqQkYy?=
 =?utf-8?B?bW1RNFF5SFQ0ZHZXNGpwdk85VGdONVFYZnNpSTNSMW9SRVhyZFVMbXo0aHR4?=
 =?utf-8?B?eGVSL3lWVDJQNjZVTG9udHh0M1BPMStNenlsQmVONmJHUWtCOFBnbG1WMExP?=
 =?utf-8?B?KzlqWUNyVTVzcFhkRXdEY2hxUFk2NmdNdDc2SG5Ed2dJUktZNmVFSkpCUXdr?=
 =?utf-8?B?SDlaa3ozUnRGNldvZWJqYUxOV1NmalRGbWpKWHIyaUlTeXN4eXlDMXc2Z3FG?=
 =?utf-8?B?ekdQck5aTldwc01Ua1lweXpGTzJpT2ZFNUE3c1krZ1k2NUJ0bDVSaXFmRnND?=
 =?utf-8?B?Zm1aaTBsNHZ5TStZdnFHM3RBbWR2U01TelBFMk80YTZOSExJeTIxYTRxSWpH?=
 =?utf-8?B?ZHBqamVSOFN1dmk5dmNwek8yaDV1N0VrazJ5Uk5UTlJRNFB3RFArOUZhcytG?=
 =?utf-8?B?UHRKUFFoblZPK0FXRVh2aWVSRUMxemRHVzZwcFE0alA5NGxLdDEvbSttZUhO?=
 =?utf-8?B?Q0M1VGlNcnFtUEFIQWZSK1VMczN4NkdXQlBEbFJrU2l1elF6clVnRDBiRnVk?=
 =?utf-8?B?VmlZNzlOcVdwQTYxZVJVVTF5VjNHNkxUc2tqVExkZGlEdXJ2ZlhRQVU0Qms5?=
 =?utf-8?B?MTkyOUNkaG1PajZseFRpUUJ3b2JHR1ZVUzlsSDZQbEpNSVFDWDFFZ3d4T1pO?=
 =?utf-8?B?ZC9QQVBzcUs2TUlZL0EwOFVrNW5NWmxPaCtPbXovdFFmMFM2THpBRGN2SlV1?=
 =?utf-8?B?eWszbVJlYVF2WjdkUm5PU050bmI4UlVpOUt2TUtNVTU5OUY0R0padkN2N2Fs?=
 =?utf-8?B?RDhWeFJGa3g4bm9keVBYVGhyc0ZYbHpxMnVlVGduSGg3M01odTBJNGNyWkZQ?=
 =?utf-8?B?UzVIS29qTVJSWHhEWVU2SzhIQjV1Q3NjSTFqdjBGWElzZnA4TzhDNDJKeFY1?=
 =?utf-8?B?SlFacTVkVUI2ZUExQlJwc3d0NFJhS0ErNEdDMno5cHE5bEZyN1VXWlFPTlZT?=
 =?utf-8?B?Mmc9PQ==?=
Content-ID: <D73C3348F969C6408E6AC51D06B089F3@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: KL1PR03MB5062.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 924fb9c0-b8d0-4da5-368d-08daf7967a25
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2023 07:51:29.2135
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9mvipQQ8pinVfH92T62NjZHwAooev8sWTVEMYAwRaZnreuU8ZjkfZxpTANvSBfDEzasmye01exiO0LwKgfYERQseDL0UN6CakzTOPoz9OW8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY0PR03MB6533
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_080216_089587_FB056181 
X-CRM114-Status: GOOD (  27.57  )
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
Ok, will add more logs

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
Sorry, I can't reproduce it, but make sure no such issue happens on arm
arch using gcc/clang. MTK only uses arm/mips arch, it's difficult for
me to set up clang cross compiler for other archs in office. 

> 
> Is the issue perhaps that your mask isn't wide enough in the first
> place, and should be? 
the masks are usually created by GENMASK macro;

There is no warning when build for arm64 using clang.

>  See:
> commit cfd6fb45cfaf ("crypto: ccree - avoid out-of-range warnings
> from clang")
> for inspiration.
Ok, I'll do it
> 
> > Reported-by: kernel test robot <lkp@intel.com>
> 
> Can you please include the Link: tag to the lore URL of the report?
Ok, thanks a lot

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
