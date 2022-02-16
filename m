Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0C3AC433F5
	for <linux-phy@archiver.kernel.org>; Wed, 16 Feb 2022 07:14:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K37vO9XiuoV/0C3PY9kSNtlgl1LM+vyLsIDq8Wccdgg=; b=W97O1d2RBwI8xm
	IBNVgMZuK3c67/tLWi+W7GtrVHDHx0jEMo9EE7aFyLpf3f5iz6rErR88+3StFkrXXdGAI0bTvvwUp
	u+A6XTgKvix78ATUSBbeGrAmGkjPH83PxasuDcNS0Pwye2YuNRybdfzNV6Q2Gs3DuI1dDIpTa9rJb
	iDQ0YuTavoehHdAy3GKEUSajQHdgbHk2PEQaaVSe/D99+Ao8Uh52jMD0Vg7q7bNYchC7HqezlzmwU
	BBu4vMC9jzkfrPuM3yRiHJgboxBpJq0W9pdRgAw9PXSztl9M9zXxuX9zIWRTrfD66vHKGuU9s9zvm
	FQCVgWULt3ZMnT9MwwEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nKEVy-005ooh-2H; Wed, 16 Feb 2022 07:14:14 +0000
Received: from mail-vi1eur05on20611.outbound.protection.outlook.com
 ([2a01:111:f400:7d00::611]
 helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nKEVv-005omi-9O
 for linux-phy@lists.infradead.org; Wed, 16 Feb 2022 07:14:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MW4kvM0nr7OwUd8wWrqd9TKQydSr1NODfM05OyPwJmhshVs2goSytQI6x9EIm4gkVIOXUqocwgm0pJcIMNEXcGLA/HnJitwEwqwRi5DTUdgvWZPD57N6C8hiGnuqlG107ufowBk88dHvQ+W3qJ6NJcZfGI5iRRkRccBl+sGm6v6mSgBpV/2oj6Z/L5o6aEU4qwt0RAiNGBMnikyH/OspyvBWrW6E7L3ntYH1zQKOaYb3HdPNLaNIDu1Zu3WDG6opAl94OuiBq3KUSc7W1uGXaQG4dhAq7tugfJwdy4Z4Zgh8NYRsfnFB96mpuFVKnIuFDt+XzM4+nrc0/awpiqox9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kExFFvUXbo3RwmK5ystYGVcQdKBZqI3DM0gcp19G7fs=;
 b=lNpUtXEhVo8fLE+BAWK491z11Ge0ANyU/ZrZCJjl8J/efXq0PwwqQOstHe3k13/X9xBmibi1TSLNnOtVKp/eo+4YXNZtWA/amBWZSvobW32kmLUCk5Ac+yNZ+p9adAlRd20xXTrRSVHV9owfl6FL8yQgATZIUA89NEcynt+jRydNkO7Ghe9HuJfamvmdCl+UkpIFJsdWJqWkvYMbUneH/SZp+YOzkLi7ZKXH6IxBkJpRbvPh+FSPrFD6GfFNYlHw8U8EbseryLVuLpHDi8hv9UpR4TbLMSSW4VY6kXivJJhTl8lhcPj0F2440Hbu42pZQuIpRqZ7q71zRVoZU/RW4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kExFFvUXbo3RwmK5ystYGVcQdKBZqI3DM0gcp19G7fs=;
 b=pFGuuwd0KCYTZqqdkFACXHtEBDUwYH5s9q9dSXuRmsBrTJYbkfWi+d165QE0YJCF7XnuYuDIvBoaAFoswWBvaWUqWjjPvpZLVZ6eF4jY05pl0AoCtsoDRhlZ1INndc59iQI6yeOK+HTXvOJqj385q5dAtxUH9TVuA47BMZrzRwY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by AM6PR04MB6248.eurprd04.prod.outlook.com (2603:10a6:20b:bf::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.19; Wed, 16 Feb
 2022 07:14:01 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::ddca:beb1:95b0:1ae1]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::ddca:beb1:95b0:1ae1%4]) with mapi id 15.20.4995.016; Wed, 16 Feb 2022
 07:14:00 +0000
From: Liu Ying <victor.liu@nxp.com>
To: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: linux-imx@nxp.com, Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Maxime Ripard <mripard@kernel.org>,
 =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
Subject: [PATCH] phy: dphy: Correct lpx parameter and its derivatives(ta_{get,
 go, sure})
Date: Wed, 16 Feb 2022 15:12:57 +0800
Message-Id: <20220216071257.1647703-1-victor.liu@nxp.com>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: SI2PR02CA0002.apcprd02.prod.outlook.com
 (2603:1096:4:194::22) To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dce8cf30-711e-45be-33cf-08d9f11be7cf
X-MS-TrafficTypeDiagnostic: AM6PR04MB6248:EE_
X-Microsoft-Antispam-PRVS: <AM6PR04MB62480A2D5E83D745F43E3C9C98359@AM6PR04MB6248.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RLTua+A3DN4MT4f0J7xtAvOcyW84zf0aU2VBUVFBNuNgJLgCwRViDbHFjGEbrMXPZaSzY54M4KhYI6EJbhefe+77DArSN3R2OuEog2to3S78hJjJDvbiDrglt7XphYHaCJDDmbT5oGcNP6sUBCSetl6pnAQ9K6PDYXKOF6fWgX9FPWBZfKopB+YdI9uZx9eaI3T3B7d2dnzqIGOsJY1LxkzR4WIyHI2U/GyBa3hcmYAKQO93KGhGgsQSMVA39KYcAiFCt8fsGSXR+uBBw62MpW8qQJ7WSvw3D9z8tfSDfhFFi18OfIyNcyA10UlQX+2Hl1DoJ9z0P9wc/jnhqUWxyZi/58rdYRzEWVWdVzaAqY2dBI4UC19VwE/I01UcMsaJncXTctCGiw8HrrWMmM/EqqmjOuIpzwKfAtSauKPTQcyvKFM3nzpZqjOZ8EMJ9HIvYzKNBfeYxfS1+kKgjFx5a/rxm7I1kljn3uewalKg/pXahxT27lB3fZ4czXM3jsTX7CwSGfvYXwiEK2pRh/fBb0D0d+bYUNgL/ssDE3VwuJLu495S6WgJV7iY/Ow34Fxkit0qRXb/ebQimmlyu6T8nF9CcGUxqbNjvlYUNVZKlxRVB48fl4rAcZM+OQlJXL90cEg6VlSIrbYZJ/1dqlcSzIIGv3Ygiw1rwqbTNcskw7cRVRXMSpPuJDnTciddZ0e3EnJIVkTOeUKaKWHsRFULUg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7PR04MB7046.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(508600001)(186003)(6486002)(2616005)(316002)(1076003)(54906003)(38100700002)(7416002)(5660300002)(52116002)(26005)(6666004)(38350700002)(6506007)(8936002)(86362001)(66556008)(66946007)(4326008)(8676002)(6512007)(66476007)(2906002)(83380400001)(66574015)(36756003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UGdXZU5kb2ZrVUoxZTRoL3JIcDl6WjdDZEl4endpd2pmb2tKS2hXbkxQaDQv?=
 =?utf-8?B?cXViZkFHVTBqMWc3Uk83RVh5VEtwRVpnVVNNWkdYMG5FUDZTQnJZMXlMQnMv?=
 =?utf-8?B?M3J0dlI3TXZjdUU3OU8xY3BiK2U0cGVaNDQwbzNCZjJRYzUvcFpkb1A4R1Bl?=
 =?utf-8?B?Vlcrck5TU2tNQUpyQlBzMHlnM2w4NmxPaXdhY20vOUV0QS9VRUN5MFJ5T2dH?=
 =?utf-8?B?ekpobmZaNkg5RG5mdlp1ZkJlU0NlR21YcnJKclUyWlU4QmpSOWJXQ2ZPNkNF?=
 =?utf-8?B?a2hZbVV3WlZJRHBYY1VKQVhCRm5qUjI1RkM2bXFxREsvNUZXTndXVnFaWlRJ?=
 =?utf-8?B?Z1BwbUZlM21sVE1QRmVyQjltQ2tvRGk4cGMzUCtKY3hvb0lUUlVNazhXTXdm?=
 =?utf-8?B?akF0RVZ2dnhMMkhhUVpWZ3pkaHFLNFZaUFNuY2kzQk91MFQvNlpwSFVYV0Uz?=
 =?utf-8?B?SFdFSVRTNXNiK1lxRzB5V1ZqNElCbFVRRWs5RmVsdVFYbElRMWR2eWFGSkVB?=
 =?utf-8?B?ZklZTmV1NFpyMHNXQ1F5T2QrcHZHS2I2MlhoTzJsT3MxemVRbEZxNWhqVTlF?=
 =?utf-8?B?OTFOUmJpSUh0OU5pZXZENHZtTmhUUXd1a2xOWnhpbXFQUzlzTytpVDB5T2hS?=
 =?utf-8?B?V0F0RzZXK2kwTTkzMU9RNnM0dXVVeHgzYlFNZjFBMXcxNkllN0F1QjNBcHor?=
 =?utf-8?B?cmFhclRobGhFamV3b1hydC84QlRCN2ZJNnY4ZWUzcFhlUWJPSHc2cFRiNEJC?=
 =?utf-8?B?YkNLMk5jalZYeGNCQWpKUDZ4U2IveFBtUDdMTnBNSDl2RXZTdlgwNnlqb1Az?=
 =?utf-8?B?RnAvMFhEUGRpT2tGMUZ3RjllR1N1Q1NaN3VidWhqQkI1Y201ZnV5YzNrVGw3?=
 =?utf-8?B?dm5MdzhVREVEamlia3BVNjJnMTlPUEI2UlhTZmZOUjRNYytxYUJBa3g3d1hO?=
 =?utf-8?B?MjluOEc5bm9yc1NuMkZCbGcwSXphUWVEQ2hreWZZZUplWkRaWUdLd25KNHhu?=
 =?utf-8?B?UFFGVTlVbGxtNTJFbDNnVDU3ck9XVVB4eGM4d2ppTkt2QkhwcVFXQ0lYYnVT?=
 =?utf-8?B?bExJQ1pNNGxiUmszOSt0S2RuWHFnR0JVVlZyaGt4bE1DRkh4MTllcFhQejZa?=
 =?utf-8?B?MkRRUTNyMC9rRkF6d3NDdFh6UGNyWGdUaHpNcmZMMkQ5cWIxQW9iLzJaMWFr?=
 =?utf-8?B?YUwzaGQ1K2IxQ0ltVy9tSDFUWWswQTRkN0EzT3kxWUxZelpBNnMxcWV1UVF3?=
 =?utf-8?B?ekZHMXRJUDZXQS8vU2tVWkN3NVV0cUU0aTZzcU56NUgyaStpLzVPNWlUUjJW?=
 =?utf-8?B?RDR2d1NmbTc0Sy9SdWtldXQ2cFFNMElOWW0reFBpWnI3NkFLb09xa2kyRnNX?=
 =?utf-8?B?VVZRMGRvR1U1b01lSEE2VWI1SzZwOVNsK2xDVGxxa01XTkxjZ2U4NEtOS1ZY?=
 =?utf-8?B?K0ZqNTVWM0xkclZ6VURnQm9SVmFyOExvbkM4NlV6U29hZUFRdFBHbHMzMVYr?=
 =?utf-8?B?c1NpZ1BsOGdnOUxVU2JqdXRHTjNFMFRSZmQvRFd3WVdUVUxTT0RMUkdic2R1?=
 =?utf-8?B?WGlBVjJvNE5jVTVzYnBCSlpBclJIVFBZb1dJMlQwSkNSQmlnaXdYQVl2WVhP?=
 =?utf-8?B?dHlONTZ2SHJoSWdwUnluUUtzeVkrbENqTEhHSXNHekc2QTMvNm1McUZOQnFz?=
 =?utf-8?B?NE8yYUo4Rko3WXV5Q0k1blphbFJhVDdFYktjd3hzRFJVL2NjTW9vQWp0UjBx?=
 =?utf-8?B?YzJVNWk2dkdGS1BQTEMraW1FYzVHVlozWTVHc1ZTWjJRMXl3VHp3S2lPKzF6?=
 =?utf-8?B?ZDZUSHg2K0pZZWN0R1doYkk2MVhoUk1mbmloQWZyZEtUNlBCSTROR3g3K3VI?=
 =?utf-8?B?WGtPQUNnSU5IV3ZQWkNmV1BEcEJMU3hsQkRFUWlLNWdZSU53bUN0eklpOFBZ?=
 =?utf-8?B?TWlwdG5XalM5RjFMWE40aFB1UlVZMmJjS0tpUlBjWThHT0pJbU5Ec2pPaWFw?=
 =?utf-8?B?ZlBaSGd2WFNCQ2pmYlhCY1huMEI3TC83SDFWbVdNNGtOaTZsQlptS3htKzdq?=
 =?utf-8?B?bkswbmp2SHkxNi9meDRkd0EwZWE2b2V3UFFTY25md1p0bGZYbUJRSXB0Vk9P?=
 =?utf-8?B?UzIrZUFlRFNmS2IzaDJ4MXk5RHpDblZ6UW9SNkNDT21DL1Y3OU54N0NJNVRV?=
 =?utf-8?Q?6/AzQpJLSBgUWzLglLaOmW8=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dce8cf30-711e-45be-33cf-08d9f11be7cf
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2022 07:14:00.7350 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 11KmnTHfASVveuTajPyR93lyBBFhVakh4gY+veTalFdXxhiSi2ktKiWbAVeQSHyahS5NiYbGjwvYmjpYgwV2Rw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6248
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220215_231411_456638_6C980C0F 
X-CRM114-Status: GOOD (  11.66  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

QWNjb3JkaW5nIHRvIHRoZSBjb21tZW50IG9mIHRoZSBmdW5jdGlvbiBwaHlfbWlwaV9kcGh5X2dl
dF9kZWZhdWx0X2NvbmZpZygpLAppdCB1c2VzIG1pbmltdW0gRC1QSFkgdGltaW5ncyBiYXNlZCBv
biBNSVBJIEQtUEhZIHNwZWNpZmljYXRpb24uICBUaGV5IGFyZQpkZXJpdmVkIGZyb20gdGhlIHZh
bGlkIHJhbmdlcyBzcGVjaWZpZWQgaW4gU2VjdGlvbiA2LjksIFRhYmxlIDE0LCBQYWdlIDQxCm9m
IHRoZSBELVBIWSBzcGVjaWZpY2F0aW9uICh2MS4yKS4gIFRoZSB0YWJsZSAxNCBleHBsaWNpdGx5
IG1lbnRpb25zIHRoYXQKdGhlIG1pbmltdW0gVC1MUFggcGFyYW1ldGVyIGlzIDUwIG5hbm9zZWNv
bmRzIGFuZCB0aGUgbWluaW11bSBUQS1TVVJFCnBhcmFtZXRlciBpcyBULUxQWCBuYW5vc2Vjb25k
cy4gIExpa2V3aXNlLCB0aGUga2VybmVsIGRvYyBvZiB0aGUgJ2xweCcgYW5kCid0YV9zdXJlJyBt
ZW1iZXJzIG9mIHN0cnVjdCBwaHlfY29uZmlndXJlX29wdHNfbWlwaV9kcGh5IG1lbnRpb25zIHRo
YXQKdGhlIG1pbmltdW0gdmFsdWVzIGFyZSA1MDAwMCBwaWNvc2Vjb25kcyBhbmQgQGxweCBwaWNv
c2Vjb25kcyByZXNwZWN0aXZlbHkuCkFsc28sIHRoZSBmdW5jdGlvbiBwaHlfbWlwaV9kcGh5X2Nv
bmZpZ192YWxpZGF0ZSgpIGNoZWNrcyBpZiBjZmctPmxweCBpcwpsZXNzIHRoYW4gNTAwMDAgcGlj
b3NlY29uZHMgYW5kIGlmIGNmZy0+dGFfc3VyZSBpcyBsZXNzIHRoYW4gY2ZnLT5scHgsCndoaWNo
IGhpbnRzIHRoZSBzYW1lIG1pbmltdW0gdmFsdWVzLgoKV2l0aG91dCB0aGlzIHBhdGNoLCB0aGUg
ZnVuY3Rpb24gcGh5X21pcGlfZHBoeV9nZXRfZGVmYXVsdF9jb25maWcoKQp3cm9uZ2x5IHNldHMg
Y2ZnLT5scHggdG8gNjAwMDAgcGljb3NlY29uZHMgYW5kIGNmZy0+dGFfc3VyZSB0byAyICogY2Zn
LT5scHguClNvLCBsZXQncyBjb3JyZWN0IHRoZW0gdG8gNTAwMDAgcGljb3NlY29uZHMgYW5kIGNm
Zy0+bHB4IHJlc3BlY3RpdmVseS4KCk5vdGUgdGhhdCBJJ3ZlIG9ubHkgdGVzdGVkIHRoZSBwYXRj
aCB3aXRoIFJNNjcxOTEgRFNJIHBhbmVsIG9uIGkuTVg4bXEgRVZLLgpIZWxwIGlzIG5lZWRlZCB0
byB0ZXN0IHdpdGggb3RoZXIgaS5NWDhtcSwgTWVzb24gYW5kIFJvY2tjaGlwIHBsYXRmb3JtcywK
YXMgSSBkb24ndCBoYXZlIHRoZSBoYXJkd2FyZXMuCgpGaXhlczogZGRkYzk3ZTgyMzAzICgicGh5
OiBkcGh5OiBBZGQgY29uZmlndXJhdGlvbiBoZWxwZXJzIikKQ2M6IEFuZHJ6ZWogSGFqZGEgPGFu
ZHJ6ZWouaGFqZGFAaW50ZWwuY29tPgpDYzogTmVpbCBBcm1zdHJvbmcgPG5hcm1zdHJvbmdAYmF5
bGlicmUuY29tPgpDYzogTGF1cmVudCBQaW5jaGFydCA8TGF1cmVudC5waW5jaGFydEBpZGVhc29u
Ym9hcmQuY29tPgpDYzogS2lzaG9uIFZpamF5IEFicmFoYW0gSSA8a2lzaG9uQHRpLmNvbT4KQ2M6
IFZpbm9kIEtvdWwgPHZrb3VsQGtlcm5lbC5vcmc+CkNjOiBIZWlrbyBTdHVlYm5lciA8aGVpa29A
c250ZWNoLmRlPgpDYzogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPgpDYzogR3Vp
ZG8gR8O8bnRoZXIgPGFneEBzaWd4Y3B1Lm9yZz4KU2lnbmVkLW9mZi1ieTogTGl1IFlpbmcgPHZp
Y3Rvci5saXVAbnhwLmNvbT4KLS0tCiBkcml2ZXJzL3BoeS9waHktY29yZS1taXBpLWRwaHkuYyB8
IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9waHktY29yZS1taXBpLWRwaHkuYyBiL2RyaXZlcnMv
cGh5L3BoeS1jb3JlLW1pcGktZHBoeS5jCmluZGV4IGNjYjQwNDU2ODVjZC4uOTI5ZTg2ZDY1NThl
IDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9waHktY29yZS1taXBpLWRwaHkuYworKysgYi9kcml2
ZXJzL3BoeS9waHktY29yZS1taXBpLWRwaHkuYwpAQCAtNjQsMTAgKzY0LDEwIEBAIGludCBwaHlf
bWlwaV9kcGh5X2dldF9kZWZhdWx0X2NvbmZpZyh1bnNpZ25lZCBsb25nIHBpeGVsX2Nsb2NrLAog
CWNmZy0+aHNfdHJhaWwgPSBtYXgoNCAqIDggKiB1aSwgNjAwMDAgKyA0ICogNCAqIHVpKTsKIAog
CWNmZy0+aW5pdCA9IDEwMDsKLQljZmctPmxweCA9IDYwMDAwOworCWNmZy0+bHB4ID0gNTAwMDA7
CiAJY2ZnLT50YV9nZXQgPSA1ICogY2ZnLT5scHg7CiAJY2ZnLT50YV9nbyA9IDQgKiBjZmctPmxw
eDsKLQljZmctPnRhX3N1cmUgPSAyICogY2ZnLT5scHg7CisJY2ZnLT50YV9zdXJlID0gY2ZnLT5s
cHg7CiAJY2ZnLT53YWtldXAgPSAxMDAwOwogCiAJY2ZnLT5oc19jbGtfcmF0ZSA9IGhzX2Nsa19y
YXRlOwotLSAKMi4yNS4xCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
