Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4390AC636CC
	for <linux-phy@archiver.kernel.org>; Mon, 13 Feb 2023 08:22:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U6TadRTjv0yg5E0Ecd+4QjPWLIdJRa/KDT4XGBX5Q3E=; b=rEWgVQCajpwqKI
	vakCz+bEsVRc3lkg1O/iQVOcM4JqeoYEpYzYtaFe3FspD7XiBwKa9EaVNL0EpSfR9HxhxQGi68wHu
	U30r9O89EXDbWlHW44zaJhpta607CQFCOyoNWdpmnf7vQBHcnB70oQfEv67QozyDCWe49PMMhsBrz
	3rlVmvz+uOaE5CGt41jzx/4tB84f8sdS8s21bGTlzi4FEBxn+o5/li1NNHYdN3ZqGaY88cChDXkbJ
	D7i6b0xVZSulc4cL+fwJZ9vhazmYj7fiD/w6zea3eedcsUdRiC/IhvQzlDT5hAXFDc86x9qLgjf6j
	mxQV4j3HFmahp5a9Kqsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRU6t-00DZkE-Lu; Mon, 13 Feb 2023 08:22:51 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRU6p-00DZim-AY; Mon, 13 Feb 2023 08:22:49 +0000
X-UUID: 94466b98ab7711eda08d4d6090ec5a5c-20230213
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=Fthn0oY6RlYgOPoH4l20KNhtVB8zwYrPpBUWs3kB8SA=;
	b=WL+9uFDozA/nkKPliOrQyb1KE4c5LVJ8Q55JuuYagXwOv38BFHN6KOOwUetsbRjMctx5YgEJ8haIkKoijqfIHtarjBXIS5ZhltWpViY0bisD9KRL/ecKs3FhsYUrpf/9Cm9YZIl5t79ULDSOIFrAODdfTAENrc7ik9yxhyhkP8g=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.19,REQID:52a7e023-1a06-41a0-afb7-3f10bcf55319,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:-5,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:-5
X-CID-INFO: VERSION:1.1.19,REQID:52a7e023-1a06-41a0-afb7-3f10bcf55319,IP:0,URL
	:0,TC:0,Content:0,EDM:0,RT:0,SF:-5,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:-5
X-CID-META: VersionHash:885ddb2,CLOUDID:5cc6b78e-8530-4eff-9f77-222cf6e2895b,B
	ulkID:230213162241J9Y8AXED,BulkQuantity:0,Recheck:0,SF:17|19|102,TC:nil,Co
	ntent:0,EDM:-3,IP:nil,URL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:
	0,OSA:0,AV:0
X-CID-BVR: 0,NGT
X-UUID: 94466b98ab7711eda08d4d6090ec5a5c-20230213
Received: from mtkmbs13n1.mediatek.inc [(172.21.101.193)] by mailgw02.mediatek.com
	(envelope-from <chunfeng.yun@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 2108741787; Mon, 13 Feb 2023 01:22:39 -0700
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 mtkmbs11n2.mediatek.inc (172.21.101.187) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.792.15; Mon, 13 Feb 2023 16:22:36 +0800
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (172.21.101.239)
 by mtkmbs10n1.mediatek.com (172.21.101.34) with Microsoft SMTP Server id
 15.2.792.15 via Frontend Transport; Mon, 13 Feb 2023 16:22:36 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SbIsSrQurQfp9Vaq9mTXM+X7EbfLFAWZFEaG0+8mgn1VWqmKR0nN8rwUilcxNznmF50kYx0M5rLKwAMeXp36NxVJyTO/1qpPsdWUSPa4ihYWa7inzi3t/t5SOLr4XnoXcEO6zzhISSvjJLDoO+TUSwZZ4rI3KvK2KZNKNuoPzw/+YFvoOiL+rXmtFIL1xBg4O9mtyIAayzVRPPwkC5ZFv9omSosFHksO40yjj5ZkY8U1ik/z/chSVYPjkZ9u+ieQdZegwbtwEzyZU3msTp+O3Uf9hIbddkIWKjG1qRAWlhUtpNYkIpqkgKn13+qoPpXxlvwOK8m4hp4V2M55AZqOhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fthn0oY6RlYgOPoH4l20KNhtVB8zwYrPpBUWs3kB8SA=;
 b=IfjuJBKtryMbK69tPgr4u1glYmTczfPqQAu7maRBCBNB+9cHey9fIDZCV3AYNhO3RSP3gueQfoX24Bs4WA5AUourRQGGJxsbah1JyKE1gomqMVc83xch275G7UAzBMKevM1wScx14EhVC0LO7+WoBqmIxT0zdHPG81ekGi34uqmAVjX2oV77/x+iSJU/NdY48LFeTSOyEtmgv3HmLMsJu3aMeedLVwXqhnNw0viOCGSfsO3Uzx53lC73RIY0azV1aQG3dQ8up+crF3xc4/296hUaZJ3no0FJ5K2AmCjAP9yRcnverfTj0+NceP3kUk+Q6sF2to3nJos32t1HXiPO5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fthn0oY6RlYgOPoH4l20KNhtVB8zwYrPpBUWs3kB8SA=;
 b=n5jHFbya95GiLehLzOONzA2V59HSw/Akr0W3mUIqBCLIbL0yX1TyR+Hmu+ikjDRSw9kQMn+EddMF2xAIc7AHLD7Za5hzwwEExEvE0cEGmBfJyCwqWQy98hIIpqwA2OhwhN6JN/McyN8Bled42pUM9BjmD6q8qqzQv2k+nMC63lA=
Received: from KL1PR03MB5062.apcprd03.prod.outlook.com (2603:1096:820:1a::22)
 by TYZPR03MB7204.apcprd03.prod.outlook.com (2603:1096:400:33a::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.23; Mon, 13 Feb
 2023 08:22:34 +0000
Received: from KL1PR03MB5062.apcprd03.prod.outlook.com
 ([fe80::5e9b:f4cf:8d7f:60d1]) by KL1PR03MB5062.apcprd03.prod.outlook.com
 ([fe80::5e9b:f4cf:8d7f:60d1%7]) with mapi id 15.20.6086.024; Mon, 13 Feb 2023
 08:22:33 +0000
From: =?utf-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>
To: "vkoul@kernel.org" <vkoul@kernel.org>
CC: "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "matthias.bgg@gmail.com"
	<matthias.bgg@gmail.com>, "linux-mediatek@lists.infradead.org"
	<linux-mediatek@lists.infradead.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, =?utf-8?B?RWRkaWUgSHVuZyAo5rSq5q2j6ZGrKQ==?=
	<Eddie.Hung@mediatek.com>
Subject: Re: [PATCH v8] phy: mediatek: tphy: add debugfs files
Thread-Topic: [PATCH v8] phy: mediatek: tphy: add debugfs files
Thread-Index: AQHZPS3cBmb6PozoBUixhjUvGQR2AA==
Date: Mon, 13 Feb 2023 08:22:33 +0000
Message-ID: <eec940a49f4f9ec9e5bd7ad763e436d34b42be22.camel@mediatek.com>
References: <20230210085827.7970-1-chunfeng.yun@mediatek.com>
	 <Y+ZjPYDEbC9iblsj@matsya>
	 <4e5d86502cc6b2278d7079dfca688af63bbcb523.camel@mediatek.com>
In-Reply-To: <4e5d86502cc6b2278d7079dfca688af63bbcb523.camel@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: KL1PR03MB5062:EE_|TYZPR03MB7204:EE_
x-ms-office365-filtering-correlation-id: f6f7b513-6573-4b4c-fc55-08db0d9b74d3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dGyfAy0Ft9nXuIquwyOPTzqVv7B2RosM9E543VYaB+8MHlV9QKqvCJ1MCSDfX2aNcUGXXlqPoYooglFLWWdqps5wmuZfJFYEIydVNrSsOaem3NSitLydA44Lpim7D34OGJHmeAJt2n7/d89U35Bnjk3c6VRbbD6KCfh49TsE3Bu34Qr6pklZ65TaU2soEY1xT9/aMFY19CXj9/p+AGogmwIrhEmENsnZN8KoJTQN/F8bSwBrS2N+P4v1FITsenbqnwrjgJCiPs3h7gk0fcaANXOXSSvBT3zMtpA76S+ls7hFLxKsjA8p3E9bB6uFOl6RapNof5V3ZUai/nhqw/Te+DdUDLmblCUYBS2cYUEbA7Lr7hQI+QI5V5BCrKvpb5knkBStvJOKoMgYb4N1gCmS2j1B6T/Ql/Sh/EHztiZWh0O8JBxVSZqSHmrOMOqWOSrhVjezrjB54Yh6ty94r6HyjwPUNX6aV2xnS4qN1vQ0G8j4z+5v9dXKF9tYcr4UG+AaAchmnnEwFiDySolkMercIJTm9GFktIXI1tW7fgsNtpeelGB/4JPFTNfUdW9nKj3UBV7YRPCl0m1N403Scxko9iwSZ+HpabsE6qUcwVsOnY3HHc2sW7F18RUMi+Wcji3IUkRv7YSmB/ce0Y3hGr9jH46z88PIVZHRPTsDuFbLqFZEjNAwym/TWxESdGCfXXy3zd/oh6gq2fdc7znfrj6Oe3Si3PMv0bLVxqB4EXdysqRfwSb6d547cFBYkSrEluhNA3UMDXprnop3s1xghPxDZA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:KL1PR03MB5062.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(136003)(376002)(346002)(366004)(39860400002)(396003)(451199018)(38100700002)(86362001)(38070700005)(122000001)(85182001)(36756003)(41300700001)(4326008)(76116006)(64756008)(66556008)(66446008)(66476007)(8676002)(66946007)(54906003)(316002)(91956017)(6916009)(8936002)(5660300002)(2906002)(2616005)(83380400001)(6486002)(478600001)(71200400001)(53546011)(6506007)(6512007)(26005)(186003)(107886003)(99106002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eFFUcTNwNXpnNGo1eHJBREZ5VW5SUnBtZHN1eWN6M3FaMmFDd1dFRENtZVBU?=
 =?utf-8?B?a0FyeTZWSDdkdGthV2RLMkZhM1ZoazV1NE9zcTQ4ektJaW1MVGlPNFRDa0tI?=
 =?utf-8?B?dzBEZk5Lc1lGQzltU281WEFkOU9zVENoQnBPejBGdEpYK00zQzc3YlJIZE91?=
 =?utf-8?B?eldJMFZlMS81bHpTQWJkTWxtUTc3MjBUR29ndTZNV2tnRzhVQVUwUXpEVWxW?=
 =?utf-8?B?QTRuSXhxNTFHQmdnUUZFNzZhUVV0TTF6dHhMVzNPR2h5YnZYenhOYm5kK2lN?=
 =?utf-8?B?SWNSMGs3UzZKYmZheVdVVk5PZVcrWjN2WmdQa3pBd2JEallwY3ZSYkJvaFhX?=
 =?utf-8?B?ZUw2dzNBNnVXMkx5ZEZHSVFCQXp1YUJjV1IySTJBWFNLSDZlVTNmcHJIRlJw?=
 =?utf-8?B?eisydzJLWWEzY1ZwQVdKQ1IvMTBSbjBkTzlpMXczM3dwSk52RUoyT3FpTmNa?=
 =?utf-8?B?VHl5cFZhOGpBTHB5aTJWZElxQ25oQWRFeTZPbFBkVktJbGs3MmVvTkE5WFFH?=
 =?utf-8?B?blgvcytmbzNvaW9EeUIxZjBVWUV5VDR4eHRxUlhRUS9IRzMraG0yUkNkRUF1?=
 =?utf-8?B?K1JlZENxcFJhQUdndnJpcU5VMkFDUm1FT25IREQ1bm5JMHgyQjc1V2tRNnJZ?=
 =?utf-8?B?SnQ2VlNkVWs5bStmc0EzRVlHVnliT0IzdytDSDMwWWsyemhZYlpVQS9tOE5u?=
 =?utf-8?B?dXBmdTEycm5PQW16Q0NmVDJRR1BzT0Z1Ui8wREhPMmtaU3JVaUVhTUdPZTJu?=
 =?utf-8?B?cWdLaUd0VCtqeVN4Q2t1dEs5dlBmRFFsMzFVaEd0dGg1RnphRlRmV08yeEtw?=
 =?utf-8?B?VUdOMXNCUEFGVUUvQWZhZUxEVk9MUWd2TlhLbHFzakJZWEZPVjdLeXd6aGE3?=
 =?utf-8?B?YlpPZzA3cTQ2YmZ1cmVBVFQ4ZHhSVDRuQXBCSEppUW1oYm9QeVJ2MVJZNG9H?=
 =?utf-8?B?ZXVKaGdsRVJ6TUNVWkwxQThSandwcDF4ZkNTbVg1MXYxSzR3cHNrc0lVUXZQ?=
 =?utf-8?B?WS9SNk1nRXg4dHBPQVpTWWh4WkRiUGZSOWl1RUo5ZVFtTkJmVllvVVJ6cEsr?=
 =?utf-8?B?eGFLQmU2eENiemRlTzZBUzRudmZHbWFKYjdKZUhDMmQ2RTIvQXIrd2FTR05P?=
 =?utf-8?B?NTJPbDJURW9Hc056cTJtb1o3RktuZjU1TXVFTnZoMjVmZ1JpMExhUHpPRGVQ?=
 =?utf-8?B?UUhkVTRIQzl2WjNxRk5KYXNoMWZwbU5JVi9XMVRJSnIvNEhKVUE5ZCt2NDlE?=
 =?utf-8?B?TnBxVzViaE1kbGhWOGxCaHpWdGx4cFBXYXp5SVJQbFRNajdZZ0U3anNjMlp3?=
 =?utf-8?B?Z1pPRVRGc05acXpSU2xwbmVGajJnbzRsdzFqN1Vna05uRWl1dENUUjVCREMr?=
 =?utf-8?B?MjExQ0hRd2h2dUsydzUvWCtWRWRPQVhHZ0hvcVZidEhOWUMzb2FUSFovVmpV?=
 =?utf-8?B?bHpPUUREY1NySlpndEtVL0MySGlQNExPcllWTjVUUmNoTUpPNCszZHJPVU45?=
 =?utf-8?B?ZjR2dmF0WWcrbG1wbmlQMWcvanRQcW00WjFKekRzL1diR1dtTXhSb3JZNVll?=
 =?utf-8?B?ekp2WGQwWm1LSWxsVFRVY3VrdVRkc0hqNlJoZkhIdy9rc3BjWDRtNGM2NnVP?=
 =?utf-8?B?cDJnVVZoeXN2dXhJQ0JnR1FZaThUOE9PSkpxVUxDUHU3MGN4NnBFVmt1WlNn?=
 =?utf-8?B?U2tFTGVOTmthWGx6NmttRWxlZmUrei9QdWJKQkh0bDhORXp4c1pUVzVoamZa?=
 =?utf-8?B?WHVIczdCNDVQSk5kcUVEU254QzlZeGZkK012YzlFSFdsMVRVTlVpcDlIdnhh?=
 =?utf-8?B?bUpsT2RaUjNybzA3R3ZVdm00NE1tUHBFRHNzT0g2Wncwem1JM0Q0MnUxRVBq?=
 =?utf-8?B?UGc4aGgxdmZtNUQ0OVpaQVpIY1dhbkJrL2ZUL2VYZVBhM3hVd3BmSjZ5QTZS?=
 =?utf-8?B?UUdpbm5LMDJ4TlBCbEZDd1pieDQ3cDQ4NVRIUXowNWFDV0ROUnlaaXZxRWVY?=
 =?utf-8?B?VXZSS2J0ZnFoalpaUDhKMk5qajd0M1NBK0I1QS9VT3AzZEdLZTB4aVVwSHFG?=
 =?utf-8?B?Ti8xcmNhRFAxU2lLQ3lIWFFSRkNEREh4eE9MZjhOMkN6N0FGZUJiaHNaU1c4?=
 =?utf-8?B?R3pGQ051aUZ1aUE5U0phanVJYk80YkRHSDJrZGkza1VnRkZoNmhTM0RVeUJy?=
 =?utf-8?B?SHc9PQ==?=
Content-ID: <612E66DC820A5D47BED7B1E02D31923B@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: KL1PR03MB5062.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f6f7b513-6573-4b4c-fc55-08db0d9b74d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2023 08:22:33.4042
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1/KFpUYrL1KXI2LNkXbo2Gu5rR6lWBw9ZkL4c5to9k3Y6p5Z0BwPXk9iOcZO0I7ZS9E+l1s7TA7+ahCLNn9O0AdEdpKpan4dU1BTv4bnVPo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR03MB7204
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230213_002247_608388_6A1D618B 
X-CRM114-Status: GOOD (  31.93  )
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

On Mon, 2023-02-13 at 16:21 +0800, chunfeng yun wrote:
> On Fri, 2023-02-10 at 21:01 +0530, Vinod Koul wrote:
> > On 10-02-23, 16:58, Chunfeng Yun wrote:
> > > These debugfs files are mainly used to make eye diagram test
> > > easier,
> > > especially helpful to do HQA test for a new IC without efuse
> > > enabled.
> > > 
> > > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > > ---
> > > v8: abandon patch to create phy debug root file
> > >     /sys/kernel/debug/phy/ suggested by Vinod
> > 
> > Sorry that was not my suggestion
> 
> Sorry, I misunderstood you means
> > 
> > > 
> > > v6~v7: no changes
> > > 
> > > v5: using common debugfs config CONFIG_DEBUG_FS
> > > 
> > > v4: fix build warning of sometimes uninitialized variable
> > > 
> > > v3: fix typo of "debugfs" suggested by AngeloGioacchino
> > > 
> > > v2: add CONFIG_PHY_MTK_TPHY_DEBUGFS suggested by AngeloGioacchino
> > > ---
> > >  drivers/phy/mediatek/phy-mtk-tphy.c | 405
> > > +++++++++++++++++++++++++++-
> > >  1 file changed, 404 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/phy/mediatek/phy-mtk-tphy.c
> > > b/drivers/phy/mediatek/phy-mtk-tphy.c
> > > index e906a82791bd..65a95c3726bf 100644
> > > --- a/drivers/phy/mediatek/phy-mtk-tphy.c
> > > +++ b/drivers/phy/mediatek/phy-mtk-tphy.c
> > > @@ -7,6 +7,7 @@
> > >  
> > >  #include <dt-bindings/phy/phy.h>
> > >  #include <linux/clk.h>
> > > +#include <linux/debugfs.h>
> > >  #include <linux/delay.h>
> > >  #include <linux/iopoll.h>
> > >  #include <linux/mfd/syscon.h>
> > > @@ -264,6 +265,8 @@
> > >  
> > >  #define TPHY_CLKS_CNT	2
> > >  
> > > +#define USER_BUF_LEN(count) min_t(size_t, 8, (count))
> > > +
> > >  enum mtk_phy_version {
> > >  	MTK_PHY_V1 = 1,
> > >  	MTK_PHY_V2,
> > > @@ -310,6 +313,7 @@ struct mtk_phy_instance {
> > >  	struct clk_bulk_data clks[TPHY_CLKS_CNT];
> > >  	u32 index;
> > >  	u32 type;
> > > +	struct dentry *dbgfs;
> > >  	struct regmap *type_sw;
> > >  	u32 type_sw_reg;
> > >  	u32 type_sw_index;
> > > @@ -332,10 +336,391 @@ struct mtk_tphy {
> > >  	const struct mtk_phy_pdata *pdata;
> > >  	struct mtk_phy_instance **phys;
> > >  	int nphys;
> > > +	struct dentry *dbgfs_root;
> > >  	int src_ref_clk; /* MHZ, reference clock for slew rate
> > > calibrate */
> > >  	int src_coef; /* coefficient for slew rate calibrate */
> > >  };
> > 
> > I asked the struct dentry *debugfs be part of struct phy. Debugfs
> > would
> > be created by core but rather than exported, it should be populated
> > in
> > phy and you can use it here in the driver
> > 
> > >  
> 
> Ok, I'll do the following steps:
> 
> 0. put a struct dentry *debugfs in struct phy;
> 1. define a static struct dentry *phy_debugfs_root in phy-core.c,
> then
>    create a root directory (/sys/kernel/debug/phy/) for phy
> subsystem 
> in phy_core_init();
> 2. create directory for each phy under the root directory
> (/sys/kernel/debug/phy/);
>    this step has two ways:
>    A: create the directory @debugfs of struct phy in phy_create() by
> default;
>    B: provide some api for user to create/destory the directory
> @debugfs or others when need;
> 3. add private debugfs files in @debugfs of struct phy;
> 
> For the case in tphy driver, it provides some struct phy, the driver
> may want to create debugfs files which not belongs to any struct phy
> in
> the root directory (/sys/kernel/debug/phy/), then need provide a api.
> 
>    Do you have any suggestions?
>    Which way do you prefer to use in step 2?
> 
>    Thanks a lot;
> 
> > <skip>
> > > +
> > >  static struct platform_driver mtk_tphy_driver = {
> > >  	.probe		= mtk_tphy_probe,
> > > +	.remove		= mtk_tphy_remove,
> > >  	.driver		= {
> > >  		.name	= "mtk-tphy",
> > >  		.of_match_table = mtk_tphy_id_table,
> > > -- 
> > > 2.18.0
> > 
> > 
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
