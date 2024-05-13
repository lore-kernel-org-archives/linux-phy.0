Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B6A4C25B10
	for <linux-phy@archiver.kernel.org>; Mon, 13 May 2024 08:13:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pu5Ial/Z05qxVVn7XzgZcn48N5s4hkP+r2kT3AUddoQ=; b=dHUKaRU3CmP8y4
	EYe8EQ3m9GKfZpL9tr7c3WzjHgUPd8lAz5tlqbAkLEtt323e9jBh/YrVPLI3sTNxxscImhVdjtd54
	h2jOVsX+6LOGs34pqz0x6/99j/zFKebRiKtcU62WBVY3TPOL5IP6v58wPTbzQdLT1O6oXQ43O2BgP
	XHWI97FAgZOgB7hnZTXp/jFWHvvPrLpzvlmECsGUgs1Y9ZX99btQpn8iyQeWsM2j0nXqSqqKU/TVq
	6SoXfhzGgwYXd+HxEJw1sURT9I2+OJD50XfALjLPdgvb1eTMYiXR2LnPSSmAxscyn2Oze45CeXcjp
	PAzIjzf8p7srsZFezTFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6QoK-0000000CAkT-0j8Z;
	Mon, 13 May 2024 08:13:28 +0000
Received: from mail-bjschn02on20717.outbound.protection.partner.outlook.cn ([2406:e500:4440:2::717] helo=CHN02-BJS-obe.outbound.protection.partner.outlook.cn)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6QoH-0000000CAij-19N3
	for linux-phy@lists.infradead.org;
	Mon, 13 May 2024 08:13:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bPqembSEatOUbSAj6ejjHmQcl8G8HpxoRmFJSgHh7AYpFckKHN+axlNV9an6kcNHLoLH4uOM110FUV0DO9k9leAKbTiGfpPr5VCOd2cBGRZdsnUns6PgO2hcIK9CjB9BiOxX5l0rR3Z/qbmtWYdZg7xogD4ZBV6M8n4PBlLCh/m/o/FO2Q8EGHKvB3gRvQOZIV4EgYxkzdPNGLeXj9uuU7nvzFFBIkgKtjM3m5T1kuU0bctFSEPPhk5WLrmm4huyl0mBL3CoPuMTLgz1v+IXwoGV4+PTLtQkhj88v7rPxf9dIESCuJJw1fNk36YPehYwgRbw/+zQyLo037EPrVEKUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sm5ojYjqspJpsjBR6kXuJgzLIx9+kfcoRa2r0oD34b8=;
 b=DOjMX8le6BYODQfLvsNHfxysi33gRzE6vjxbjzYsXSsO4rP7SAUTTo+ieXTBFIBGADpypk7UKnrG2ehSzN80uUHFJIF/aR3xshXwm63S5eEw+D0tuHMC8lb2JNVua7CPtrwjLkz/2QPeyCU3P8va6Gb4cNfzMc6BPi3FfkFzWRuq+miVfk7tAxnVfudv1GH9bxMSQJMJgBtbOtZUDUyRIXv4U0MPClhf/E+pjORoO/1chDW0gsMQETP5W3RM16MN7XsO2EhimkVqVdfWXK/mXgcz8GvxCNXl7bxVz+4Z8ERnbKlBbhLs9f7IrLmX7HWuZGmn/Hcz17Vl3vwQyY7Aag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=starfivetech.com; dmarc=pass action=none
 header.from=starfivetech.com; dkim=pass header.d=starfivetech.com; arc=none
Received: from NT0PR01MB1070.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c510:3::6) by NT0PR01MB1086.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c510:3::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.33; Mon, 13 May
 2024 08:13:06 +0000
Received: from NT0PR01MB1070.CHNPR01.prod.partner.outlook.cn
 ([fe80::2bb1:5ec6:5260:17bd]) by
 NT0PR01MB1070.CHNPR01.prod.partner.outlook.cn ([fe80::2bb1:5ec6:5260:17bd%6])
 with mapi id 15.20.7472.042; Mon, 13 May 2024 08:13:06 +0000
From: Shengyang Chen <shengyang.chen@starfivetech.com>
To: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
CC: "vkoul@kernel.org" <vkoul@kernel.org>, "kishon@kernel.org"
	<kishon@kernel.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "p.zabel@pengutronix.de"
	<p.zabel@pengutronix.de>, Minda Chen <minda.chen@starfivetech.com>,
	Changhuang Liang <changhuang.liang@starfivetech.com>, "rogerq@kernel.org"
	<rogerq@kernel.org>, "geert+renesas@glider.be" <geert+renesas@glider.be>,
	Keith Zhao <keith.zhao@starfivetech.com>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: RE: [PATCH v5 0/2] Add JH7110 MIPI DPHY TX support
Thread-Topic: [PATCH v5 0/2] Add JH7110 MIPI DPHY TX support
Thread-Index: AQHakUOQsqv/k7+taUGMK+CBBD3iILGU9kAw
Date: Mon, 13 May 2024 08:13:06 +0000
Message-ID: <NT0PR01MB1070236E5E5FF0F0223ED81BEFE22@NT0PR01MB1070.CHNPR01.prod.partner.outlook.cn>
References: <20240418035020.47876-1-shengyang.chen@starfivetech.com>
In-Reply-To: <20240418035020.47876-1-shengyang.chen@starfivetech.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=starfivetech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: NT0PR01MB1070:EE_|NT0PR01MB1086:EE_
x-ms-office365-filtering-correlation-id: 6625ac71-96ed-4156-f69d-08dc732484ae
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OywekNV/mVaY28KKub094fol+2aMUetqbB5j5sKXTI08EU/bBYiZge3RMoa3sQZUXB22NsrdsRnwyL5rb1hkmcgRo439E0DChRPoYMrcKylWXPpWaYrO2Cyr4iNfiv3CL/dZFQ5SPY1R5AOKp81BFrEdAx1yw0CgXJgqExqm1ZBB0aNAJ/uplBSq03nyVrRHUreYoXXFtrBPIA3JpXdWgEY9ck0IwnANgbbReb5sDt4emj3vm3yjfrfqv+qsVxP/Qz8nTnOA0gmQaY46pem94upjkaYYanGfmCsNl5Kwj8VL0l3zTu7MroHjR8e1lrxabHL17IM56NkNbBEcLn6l3AnllR7zXV0QJ+dTXyjZ3Kon6SKXvr+Zw/czX2zgRYNiDpMOTh7Zfo+helSCUYMqDfztoJrhanCWRf73xd4qPZfOA0ySTaD/xc0rWVrH1ZwpcFZxjE7cWZ7tyMZRqUp8kN+kfRkv3NSoSNPs6FL1f7urL0lFhV9rSF2I/1dGwO31mK9aF/q7PqwS7ZSSUJigLNsAKx17S9mIf8mLP9FO9WeZCPARkaJHrrPv4DH3Q6qDyNK0DYXt+ujtLmkv4Vopr5YL4oEETva4YcMUTWELxszQ1N+Sx+xM6HeEe89U+ceL
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:NT0PR01MB1070.CHNPR01.prod.partner.outlook.cn;PTR:;CAT:NONE;SFS:(13230031)(7416005)(41320700004)(1800799015)(366007)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?95gZM4Omj6/arFy7g+2NrwK2iVELIXAdE/P2XdvftnT9PKTlgn8daMgWOB7z?=
 =?us-ascii?Q?qwtiA/9tkbYhAx2d85S1qfs7Sq5WwgLJipGuvD0Mr6B/V4BA99N304nfKELW?=
 =?us-ascii?Q?jEQQNqQUMGWlM8HdqtAO7nmPCimb0gHmzY/HjlGBAZiu0MArHpfiIAN6nVUI?=
 =?us-ascii?Q?XrO6p6wxdJCZY5qvVjq82Q5sHovyxJE6LiIcJRdGtO8GyjzgJJrS3RwllSTT?=
 =?us-ascii?Q?u2qcNpRU87Brmy/ZAw61VJoDNXUNiWLaDAIYbLw905VCltmUjRR+cp8zmUyF?=
 =?us-ascii?Q?ZNaNrl7oXppAlwvH3ZOfsfRegHLUTOx98Vr55ngUkVNvijlHiGfyWNi7YoU4?=
 =?us-ascii?Q?12MwG5FRjeyJgXZAU46hQ4OlqS33m46FABdPk+m3s9+krgzEzCUCHd0MOQVj?=
 =?us-ascii?Q?aB/CPvbcBxhSF9U8z32SPzYUhoBgEGUtqYvR/Gr5zqNi2iI4p8UmSnHe6S27?=
 =?us-ascii?Q?xC/Lo6xWIWKV+A5/+jL3aRK54Tumij8PGkVGPmGI7qchrxdGQgV4SrsUOGI7?=
 =?us-ascii?Q?m5yHAxHt4HmFxXqSShtuyx7kF8rcJICDQmol92D3uYcDSdD/v62q+btAw/Jt?=
 =?us-ascii?Q?viQEZzJoBLGWXrcaGqSAtjLYZK6eyFkvcRsbCRVq5Ufx5gVE8Fw+lWK7OsKk?=
 =?us-ascii?Q?cT0YUjwJ1rXNQowcSmhJPkWsSU05Dc7iqAY9YXN3Q0sOobYknDnmVxNpGniq?=
 =?us-ascii?Q?97wGDbNwnnFyQRKPUr9s3KDLWKAr9zXP0QPRDDcwSSC8CWZajJQkKB+RBUmI?=
 =?us-ascii?Q?n++NWVIeNX/xdiDnr1kGGvaDsH21JLoD8eoxk4YdNMR/E3g/NGZhwHTV33pm?=
 =?us-ascii?Q?r0sZ1Uaxr41gNkziGdN5BmrpKxd1+gIO9vNux+gXv7adQCPFjU+5Een5tB62?=
 =?us-ascii?Q?5WHWU2ch21HExtn/MESYUaGkNwbYGn2fpyWe73u/JiFX1wIOmAN1gPprqESK?=
 =?us-ascii?Q?pc7mMs9/i0mF5o0BkP7y+SuLJ++3usiA9oXAK+THFI9W3D00Bk8PzGDSNcuA?=
 =?us-ascii?Q?cRE4excZDDqtJQZo2MUcJjHf99ypmELAI+n1d3ej/Pzd63RCSDFWoj/tzmQ+?=
 =?us-ascii?Q?RyMVyUqMwKAu6+2V1poVdQfwn2KPT/MNKQE7NEp5ZuT3tU40tZVSRrUBilxQ?=
 =?us-ascii?Q?FbsX1iV58wmM1LdjIQMR5+13uqXMV2MQUqKbfuGGDGFyKUe8+cjyboUJDHYR?=
 =?us-ascii?Q?JidfJDH2s6YaduGxLsM3PSyR5mD57MV7cAlFy91XCQ6NkLWVYiNvrl3ASPKk?=
 =?us-ascii?Q?Ufxg56dUpdO85I2HWuZmRcbpQjCSC3xSPp6/fUBj3gfvhVIJICGT6SRXd9oJ?=
 =?us-ascii?Q?5+yxu7Yfpo2fTaxwkzykwXFhPESzw3P47p5q5SwWWA7WNsIzQjCypyZTEkbs?=
 =?us-ascii?Q?Vf3o/ojqjnaHfIzjWcN1jRP+fBDjidl7R32IwNU3D4LbaH9Di/uCfL071UJK?=
 =?us-ascii?Q?ldDmrV7huXZKYOnzPyngsysQCg0uPMcs5tK3W+T5uQPjZP6Au+qFio+qOt3+?=
 =?us-ascii?Q?H4/ZHexTdqI93sYdrm6EHcOjBPr1sDKgyyKqP0V3Vv+0MiPtIea9zSAjXQm7?=
 =?us-ascii?Q?REwtgZhHUQVwp/5QbcP0qEuRnIMtEc8b8U6Oyw9WtdRhYx/14tfCZMBTP7jK?=
 =?us-ascii?Q?BQ=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: starfivetech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: NT0PR01MB1070.CHNPR01.prod.partner.outlook.cn
X-MS-Exchange-CrossTenant-Network-Message-Id: 6625ac71-96ed-4156-f69d-08dc732484ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2024 08:13:06.1592
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 06fe3fa3-1221-43d3-861b-5a4ee687a85c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: I6xf+n4tXWoFxWNiiael/vzs2j7hcga80T4TWSw+2zYHKp4R/BbgWoJwbO+82zF9HmdQlcC2yVXky2VHVcw4ObyBDM7hx8QTCBtS74HMKhE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: NT0PR01MB1086
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240513_011325_474166_5C869E1C 
X-CRM114-Status: UNSURE (   6.57  )
X-CRM114-Notice: Please train this message.
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

> This patchset adds mipi dphy tx support for the StarFive JH7110 SoC.
> It is used to transfer DSI data. The series has been tested on the VisionFive 2
> board.
> 
> 

Hi, Vinod and Kishon

Could you please help to review and give me some suggestions
for this patch series? Thank you for your time.

Best regards,
Shengyang


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
