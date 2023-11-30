Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8B43C4167B
	for <linux-phy@archiver.kernel.org>; Thu, 30 Nov 2023 02:28:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PgAHVEU+3q0TE7IqHQAfYFnQEGDDa22O3sQ9KBQsFvA=; b=2dgn5fe8hkTmUF
	affTc6Lr96sq5VlfmC27LEQnwRbD5esgwgd3ceC2jE9OvtkESy+eOqfnQ1scjshlZufa5LSmqVvz+
	ttsCiORquqKcs6pyzquwfmLpt8F8RdLTwpsi4W42gBibQqDLBMItWGArYVQ5Hvn3I8KXxLR1rXqjG
	H+vEAVKFSGfeLsn0SZe8L7aMIOOIzCKKkm4I/2yByZF+P3AcP1OnNIMjj8a9akyWXZNyDYoIsY/of
	a3MJ4ZBcXkRRQRoSK3IS+vtcVXtKR/tRY1Ks8d85UD+XiXKO1re0r2RL43Y5ZFQ7gvF2PJFZhLZUC
	vaeFtkN4E1eRFEJhW5YA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8Wn5-009kPE-27;
	Thu, 30 Nov 2023 02:28:35 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8Wn2-009kO8-2Z;
	Thu, 30 Nov 2023 02:28:34 +0000
X-UUID: 24f210f48f2811ee9b7791016c24628a-20231129
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=ohTjSCub61IEFSVwDaK+ZyqC7CRGMyzUKS4KlGdih60=;
	b=PB2eNdeEO2Zh9wOafuSyYlvOtSg4GifnW/dA8xDGBBLSKw0pNw/3iMT/CSVhFpUWC19AXVEdslXaFFkLSEImjlCfeLXsWH/coQLFiGyzXKA5aN4H8iX4OdRKa9xD76WeH2vYjpIOPLV9TBXG7XbRXhgypGtAt6REKnSsewpmuA0=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.34,REQID:fa7f275d-77ad-4f63-bcdf-d29de3ec5170,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:abefa75,CLOUDID:8e523b73-1bd3-4f48-b671-ada88705968c,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:
	NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULN
X-UUID: 24f210f48f2811ee9b7791016c24628a-20231129
Received: from mtkmbs14n2.mediatek.inc [(172.21.101.76)] by mailgw01.mediatek.com
	(envelope-from <chunfeng.yun@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1432164585; Wed, 29 Nov 2023 19:28:27 -0700
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Thu, 30 Nov 2023 10:28:24 +0800
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Thu, 30 Nov 2023 10:28:24 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gQ9Q7z6sNwXvJIpRueSHCfst+GBv36+sxvKC2Fis1ly1RVYBrZcjsVoOoMzedjOqev+YwZHhwN2VhnDRcrLt4cselJGRMNAXxowpkARHVS2lDDmatbASplCjqAVSPDjrCPSMDKm2eO8bpWHOM3UGg+IM9PqZFqc7O1D7hmd0rTIoK3teb7Ff8/MsLKYshCnPP4cYZU+D+a2huxeWwB0dg15MnlO8q4zBh9OkV8miWcpEUwc/X6FqSJHuEXNbZgImfJCo3wjyQUBNPMwrGQZABE/hYqgSYIkVih0hJrBnRl+Ge1rMLwvBOMzgVMXJvCXReBItQUkxXjdVu/omY/bJIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ohTjSCub61IEFSVwDaK+ZyqC7CRGMyzUKS4KlGdih60=;
 b=WqMCLcAbn+aU0C3eOgY3rEj7wbRxOiN1fjIlTbPyWNI9g0KJCSLMborX9SZxQuITBgZ+guQlCLE+eZMU/HiIyg9AqXNkxeY4f7aeDgPtb/0jQ7ER9e/THAtdMlyUx1/LxYpvoR8mqDaNHqpgr1DW6JW3prtdYm+ZuiVkULNm8Bye2h9yPeqYccstwf17HIB8gbMlQt1lmMM7sNJ1dRfx48S2SF3ud9vpzq2OHxu1FWfQ4t4LMwWB+mR0uQoBgkuMewqnaCYkRfunkNktB//9Yjk2p3urLWZm3ofpF1Tsd77G2wPRjSNI0+movrSX5RAytECDxca6hpFRwQRN2CFwQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ohTjSCub61IEFSVwDaK+ZyqC7CRGMyzUKS4KlGdih60=;
 b=vCLmKqXVpNBgtYQhF9AWnY8cpvyRnY6WwWlPvW0fZwS2iip41kJVROV5Mj6bi7v0vkemBIxl/kdLQqSYj+tK8JHp21Yh7ciFH/jRbnKvJo4WFMyHpjxYI/iUvgzobTVDfM6EuElQfFaRLPlY83L0MaWI2+zm29Ai00/Z6BL3gMc=
Received: from TYZPR03MB7153.apcprd03.prod.outlook.com (2603:1096:400:33c::6)
 by SEYPR03MB7293.apcprd03.prod.outlook.com (2603:1096:101:13b::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.24; Thu, 30 Nov
 2023 02:28:14 +0000
Received: from TYZPR03MB7153.apcprd03.prod.outlook.com
 ([fe80::75b5:9f6d:dc01:9946]) by TYZPR03MB7153.apcprd03.prod.outlook.com
 ([fe80::75b5:9f6d:dc01:9946%6]) with mapi id 15.20.7046.024; Thu, 30 Nov 2023
 02:28:14 +0000
From: =?utf-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>
To: "vkoul@kernel.org" <vkoul@kernel.org>, "krzysztof.kozlowski@linaro.org"
	<krzysztof.kozlowski@linaro.org>,
	=?utf-8?B?TWFjcGF1bCBMaW4gKOael+aZuuaWjCk=?= <Macpaul.Lin@mediatek.com>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>
CC: =?utf-8?B?UGFibG8gU3VuICjlravmr5Pnv5Qp?= <pablo.sun@mediatek.com>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	=?utf-8?B?QmVhciBXYW5nICjokKnljp/mg5/lvrcp?= <bear.wang@mediatek.com>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "krzysztof.kozlowski+dt@linaro.org"
	<krzysztof.kozlowski+dt@linaro.org>, "matthias.bgg@gmail.com"
	<matthias.bgg@gmail.com>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>
Subject: Re: [PATCH 1/2] dt-bindings: phy: mediatek: tphy: add a property for
 force-mode switch
Thread-Topic: [PATCH 1/2] dt-bindings: phy: mediatek: tphy: add a property for
 force-mode switch
Thread-Index: AQHaHz31Z+QBjWZtBk+dlN+S28FsW7CK2GgAgALqXwCABGh5gA==
Date: Thu, 30 Nov 2023 02:28:14 +0000
Message-ID: <b351bdfeb1e782bd559f3c33da916de6a24b3446.camel@mediatek.com>
References: <20231125012303.760-1-chunfeng.yun@mediatek.com>
	 <e34c2746-8e93-48b8-9c96-690242fbf6e9@linaro.org>
	 <239def9b-437b-9211-7844-af4332651df0@mediatek.com>
In-Reply-To: <239def9b-437b-9211-7844-af4332651df0@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB7153:EE_|SEYPR03MB7293:EE_
x-ms-office365-filtering-correlation-id: fa7d2cca-f322-46ad-7585-08dbf14c0154
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dZufxmnJqrBlabC9LQMLPYSVcPQx/hO3EU7rOaZDxGBPHqXoy9L2PNg+VibvMVmuouewX26EGR2A0rG8+uEeVKm3dsjIlEE+IeWm5WXicvklhDT5AmWCLJkREJtQK96j9R96wEPgDmO/yHrQ74+bGs7k3k9kZdnK/NTgMPdK4+ynT6/6ffn4tO+Xe6UlFefF50KEQM/U7WZ26Soco1yZ+bM4GkGFmEHJPR7r9JdD4LZLPnG5Sw1S7O8tJ2fhYortC9Yt/IU7XbZgEzTruKxBnOX7R7zWVVPPYqUh6m1XqkO8yyCduqzz8lm0FjG3l6ALF0+v64qwux+SGXBxY3CLRkoEu0Bd3HjRt0hsa87I18BVzYAgxJC3SVVxQ9iqIAnf3b+/qThho+oIQl0gfcTZWa+i0i6czH3zbWx8PSYp7gRD808UQW90qAJ2RMu+ckq2udce8pEIrRHEKw8c9+TLlHXD1ZIXWaQkW7hDiMUaI/xMlNfE0+I6bk03WyidP+3xx5Syc8aR6Wo1yHTx6np70KVlAJ5VwAXg1ho0bkKaXPMTDnU026MDkA+smVSOeSCaTjgfMvSu5o6D1GbaousWwCmrx2min8Id86b4lfNhxgylTCJYan/ztzUxBydh4BcTydtpn+19h9GPbnFd3mZpPFhXxREQa1jZijKsUVmdU2fpRqKAbOUlpwU4o8pa76b4tmHSxCRQ5Wvj0ndQIPHoKWI99jVThLwbM2ZQ0+lE8ywAgM+TP7mHx8FSk5sy2BTJB64/3tCv8VxoXwNFkIvvKA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB7153.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(39860400002)(366004)(136003)(376002)(346002)(230922051799003)(230273577357003)(230173577357003)(1800799012)(451199024)(186009)(64100799003)(8676002)(4326008)(8936002)(83380400001)(85182001)(122000001)(7416002)(36756003)(2906002)(86362001)(38070700009)(4001150100001)(41300700001)(202311291699003)(38100700002)(5660300002)(53546011)(66946007)(6486002)(26005)(71200400001)(6512007)(478600001)(2616005)(316002)(54906003)(64756008)(66446008)(110136005)(76116006)(66556008)(91956017)(66476007)(6506007)(99106002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V2lOL0UyVHFBbG4yN2d0UHkwcVc5SHFyZlY2NEkza1ZKOVhIS0N0bk5qcy9F?=
 =?utf-8?B?dHVPd2FGOEZkM2JGc3J0aFlsdlhNT2dFVVNYanF4ditrZmVLb0MrbmdkMUJx?=
 =?utf-8?B?MitmUmNCMGYyclV2ZW5hNG1HNWtNSjlRRHloYzVaM0xqaVN2RW4rSUJkUHdQ?=
 =?utf-8?B?Z3FKc3pkVWltUGNUeUxpZE5EREQ0MkgwR3NFVXM1Zm1OQVpOZVl3TEVWdUlw?=
 =?utf-8?B?L2NEUllBOS9QODZpQUVVTXloaG9xVmhqQ3R0MzA0TUd3a1dLQXNFenNrOFJ0?=
 =?utf-8?B?ekFTOHFiVnUvaGZENUhUdUlFZ2diNklETi9Dckh2VWc4bzhsWGxRcDRxZUc0?=
 =?utf-8?B?YmNUcEhDQ2hCUEJKZDlQRFg3TGFHdEJSTkp0dXQrT3g5SGowSXVzUTVUL3Zq?=
 =?utf-8?B?dHdCaDU1UFVPKy9RV1QxZjRrWnJNeDN5VTlhRlVHRW9scHBKa1B1Z1JiSEZ4?=
 =?utf-8?B?eG16MmhDaVU1Vk9NenIvNVZZZTQ4WWR4ZHo5bTNBZzZYaVBLY1NDc25rTW04?=
 =?utf-8?B?UllEZDNMMHRRQWxVZnhFWVF0YlE3VWthdkU5OXppcnlNZnRaelQ5UVlpYzBQ?=
 =?utf-8?B?czB6LzVTRUpaVnBpVUZhTk1xN2kxRHo1RXdLS0hSc1BlVXg2S0J6TEdsUGh5?=
 =?utf-8?B?Vk5yWlZNMFVMVG9tSUR1cTUvWElzNUk2SlRkejdkeXFoT082MThqM1c0OE5z?=
 =?utf-8?B?RDN6OWRlUXdYK093b2YvaFRiUzQyWk5nd3hpMXM0aEY5d0JoUWRCTHBtUG53?=
 =?utf-8?B?UmRMUGJ0ckJiQTBiakRzNE9iemRWYmFON3dqNFZzb2dCcDJmdlJDd2NlamhN?=
 =?utf-8?B?TkZ4MFJnQ2FHVkZzL3RvZjNSS2VRTkpLTDZqemt1VVVtRHRiZ2QzWS9ObjhN?=
 =?utf-8?B?LzJqTFRwK2RwVHpqWkgwT2E4dTQvUjZ2enYzNGlkV0RQYVRYUlo1UWdZMnAv?=
 =?utf-8?B?MFpBdUtvSTJVLzNqN0NQRUQ3bzBFQ2t0b3VOa0hVOFlwZjR6NGFISWxPRFZ1?=
 =?utf-8?B?T3c1KzVpUGFvUi85UFZVdlllOHdjakJ4ZFhzUmxQMHVIVDkwOVBkKzFjZGh4?=
 =?utf-8?B?OHd3YTM3MVhLT3NHVEJJckw0dC9oNHpjVTRkcjZsbnRGbkIzWlo3ek5SRVVO?=
 =?utf-8?B?K1REUFlEZmxEaDZ6aTV5Q04zVlkyeC9BQzNWTENaUURtNUhWUHZGbGFOKzhZ?=
 =?utf-8?B?c1o3ZzVpd0dPd3UzQXc1clI1ZW5OZjJDNGszNVd0eXI0bnB6dWJhT0Q0aGdy?=
 =?utf-8?B?LzNqSE1vTTAyUGRuUDJkUk5XamNzRlk4b0liNTJTMGNmZHRic3V1azdSK1dB?=
 =?utf-8?B?eUxGTnVpandlZzE1Ynk2TmNBL1hhNGRBemNPSnRtWWVSMGx4V1MwV3locWtr?=
 =?utf-8?B?cXJMVFpLazBnOURGUU4yRVRXSVNwT2xHeVIySzNsNElSUmpTdUJEM2RrVFgx?=
 =?utf-8?B?cDVvV2xnck1EYmptUG1mQXdXNnFBMlp6VmFTOGo5dUhualFBVkNWb1BRWXFy?=
 =?utf-8?B?QWFUdU5ueC9tNTMzVFNpa1B3d2dPclRoUVlMbVVOeFl4b1hzYlNuekRucnVB?=
 =?utf-8?B?S1ZMY2ZtKzZDMXI3ZHEyWmpNblN5U2Ezc2E2cDVNbUFPMnRTUWo3bW5KUTlH?=
 =?utf-8?B?eEdDcTZEZnhmZ0I2clFocytyT0RPamZXVjNXUHl5bmovZHlJcWJpUi95QzNG?=
 =?utf-8?B?bnpkQlBMNGl4U01vZmRNZFYxRytaYm8rNE5oNk1XQVdzdDdmcnVDUjVIenhp?=
 =?utf-8?B?T2RHQmRWSHpwellaY094TTNVTEJONkU2a2VmODl1UnkydWNsOGp6alRtZHZX?=
 =?utf-8?B?YVpuK1hVUkJFNDQxM2JZejY1ZzBxNUVkbTl0K3Y0Mkc2QityMG5uK09NaDVL?=
 =?utf-8?B?NENKOHBUYzlHTy80Y0V6OTdHZCtWWFlNUC9XR1FCOEhKb0hhVU80SmpuY0xj?=
 =?utf-8?B?OTZyVU1LYTlvWGdjbDZsMktlSXFZZnNsaTcvdUlhTGllVGNRaDJQRzk2d245?=
 =?utf-8?B?ZG1kV1NFWXpHRG1YWFllVW4yYlZ6c1dudW1zblhQS2lCWThDdmorVXZudzhq?=
 =?utf-8?B?UWp0MnluQUFlOW5RcTJPbnpvamc2VGxueFNuREVBaTh6d0dEZExpd1FUWUgz?=
 =?utf-8?B?T241ZkJJdUlBSHJpQVVhUTQxcVZBR3U3NDUxRzR5dk02U0dxOWtrVWdLd1k2?=
 =?utf-8?B?Wnc9PQ==?=
Content-ID: <E3A4BF68C8ABF843A5A7C493A7094464@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB7153.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa7d2cca-f322-46ad-7585-08dbf14c0154
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Nov 2023 02:28:14.5005
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 78xSwpdZ5zvady1j1LLjpnzs0RmTDoHEI6B1xpee+QVlvVPUcC2BR6vCY8N+Ovm/jZ9Ex/isTPICdUX27BVwzbKemSnGH18sUSOSFcs1nio=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR03MB7293
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--34.227300-8.000000
X-TMASE-MatchedRID: 9Mh434hFDFXUL3YCMmnG4t7SWiiWSV/1jLOy13Cgb4/TEy+FT1zrl40e
	ly2iMqdYyksWSdvP+9GsXAiB6VK48AbbLE2rYg/9wvqOGBrge3shmbYg1ZcOntvpj5+dNlQvMC/
	K/e26+Q0tIcNCL+1lT4IDpXRi97xlDcy28oDHlwJc/msUC5wFQX5ErfRqpilVZ5yuplze9psVWT
	DhfTuSaNoUzlM8Yt0I0wOo8Q6y8JusVSjuVu0TEENTnAhL0/m3HznaOB9+eYio+b+yOP0oGEDH7
	fYNhjWYpLHkqMumMNqfJm8PXdmqu4qtuuQ+CE7v98sqn8kK3uGyNcEJTKJGJs2mvbig5LjG8Z5E
	7FtTRPZCBxbVTmCgug4BODg3LBohOzEyQBr3GYwSEYfcJF0pRYEcpMn6x9cZ8Ule2AXgYUvppfx
	NgiuPWwITVNParjYe8WW0jr6feERCR/FskDJObqngbqTYC4GHKx5ICGp/WtGsIMnczyxe53MuLK
	lM8AY7tgYCUMHTkb48KzNYBChyYo9oUcx9VMLg0gVVXNgaM0pZDL1gLmoa/PoA9r2LThYYKrauX
	d3MZDUD/dHyT/Xh7Q==
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--34.227300-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP: 3F75C111EA6D528458C56BAD0FC9804C1E330D4B3046D8C24458D734C99A36D32000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_182832_881974_FAA7EF1F 
X-CRM114-Status: GOOD (  26.95  )
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

On Mon, 2023-11-27 at 15:09 +0800, Macpaul Lin wrote:
> On 11/25/23 18:37, Krzysztof Kozlowski and Chunfeng Yun wrote:
> > 	
> > 
> > External email : Please do not click links or open attachments
> > until you 
> > have verified the sender or the content.
> > 
> > On 25/11/2023 02:23, Chunfeng Yun wrote:
> > > Due to some old SoCs with shared t-phy only support force-mode
> > > switch, and
> > > can't use compatible to distinguish between shared and non-shared 
> > > t-phy,
> > > add a property to supported it.
> > > But now prefer to use "mediatek,syscon-type" on new SoC as far as
> > > possible.
> > > 
> > > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > > ---
> > >  Documentation/devicetree/bindings/phy/mediatek,tphy.yaml | 6
> > > ++++++
> > >  1 file changed, 6 insertions(+)
> > > 
> > > diff --git
> > > a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
> > > b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
> > > index 2bb91542e984..eedba5b7025e 100644
> > > --- a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
> > > +++ b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
> > > @@ -235,6 +235,12 @@ patternProperties:
> > >            Specify the flag to enable BC1.2 if support it
> > >          type: boolean
> > >  
> > > +      mediatek,force-mode:
> > > +        description:
> > > +          Use force mode to switch shared phy mode, perfer to
> > > use the bellow
> > 
> > I still do not understand what is the "force mode" you want to use.
> > What
> > modes do you have? What are the characteristics of force mode?
> > 
> > Also, please run spellcheck.
> > 
> > Best regards,
> > Krzysztof
> > 
> 
> Thanks!
> 
> 1. I've tested this patch and it could solve the clock unstable for
> XHCI1 on mt8195 or mt8395 during system boot up or during
> unload/reload the phy driver.
> 
> The error message has been listed as follows.
> 
> [   13.849936][   T72] xhci-mtk 11290000.usb: supply vbus not found, 
> using dummy regulator
> [   13.851300][   T72] xhci-mtk 11290000.usb: uwk - reg:0x400,
> version:104
> [   13.852624][   T72] xhci-mtk 11290000.usb: xHCI Host Controller
> [   13.853393][   T72] xhci-mtk 11290000.usb: new USB bus
> registered, 
> assigned bus number 3
> [   13.874490][   T72] xhci-mtk 11290000.usb: clocks are not stable
> (0x3d0f)
> [   13.875369][   T72] xhci-mtk 11290000.usb: can't setup: -110
> [   13.876091][   T72] xhci-mtk 11290000.usb: USB bus 3 deregistered
> [   13.877081][   T72] xhci-mtk: probe of 11290000.usb failed with
> error 
> -110
> 
> 2. This is a fix patch to XHCI1 since MT8195 has been upstream.
> Please add "Fixes:" tags and "Cc: stable@kernel.org" to back ward
> porting to previous stable trees.
> 
> For example, add
> Fixes: 6b5ef194611e5 ("phy: mediatek: tphy: remove macros to prepare 
> bitfield")
> is suggested since the force-mode was missing in the previous
> implementation which causes hardware function was abnormal.
> However, add
> Fixes: 33d18746fa514 ("phy: phy-mtk-tphy: use new io helpers to
> access 
> register")
> will be better since the USB support for mt8195 is already enabled
> in 
> late 2021.
It don't take into account this case, it assume that only use the
default mode (PCIe).

> 
> 3. How about we revise the description as follows for more precisely?
> 
> mediatek,force-mode:
>    description:
>      The force mode is used to manually switch the shared PHY mode
>      between USB and PCIe. When force-mode is set, the USB 3.0 mode
>      will be selected. 
seems not right, the mode/type is selected by the phy consumer.

> This is typically required for older SoCs
>      that do not automatically manage PHY mode switching.
>      For newer SoCs that support it, it is preferable to use the
>      "mediatek,syscon-type" property instead.
>    type: boolean

> 
> Thanks,
> Macpaul Lin
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
