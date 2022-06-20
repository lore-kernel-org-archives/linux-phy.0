Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81950C43334
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jun 2022 18:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WSgEuW9/j6sinSQYrP464n/8ebSPmHHuq7r1dLIRul0=; b=wcZLxyl2WLYjzSx8+arV3/AtGX
	TIYcgrHnUH+DfUSyRMNn5iGTSeO7q+rJdLk/ylKe+5QyA7B3SZBFaxQhA3ss7nr3RT0Ezs2et6e9V
	Jqxf2sNAc6qRSoo6WQcJPoQ3b/Gp1/mhybeZdNy2Tf5iFG8gxfgf5ugN4/Xs76CSz581J+Hhjn8Nw
	zwqhoLUltpmmVzJ1kft7FGf090xKmc8HyNnQKT/3bq6KyDq/3iJVq+ITgJMk6mA5xZyg//rP5ph4t
	jX8Vu3ZMqQ2dwNGHYn/gMZNyzn0rafopHUkEM2FV2kqwXmdBgW8NrfPa8oIRGalaPrchf+vMNOxxZ
	n/NOnppQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3MUf-001vuK-KW; Mon, 20 Jun 2022 18:51:25 +0000
Received: from mail-am6eur05on20609.outbound.protection.outlook.com ([2a01:111:f400:7e1b::609] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3MUS-001vo8-2E; Mon, 20 Jun 2022 18:51:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N27HEmXeQUNaqz3r7gzddLTvimREU3JsS+8zC6kGT/3M15XIKH7TX9M/OsiQx2OdzOcmfwonFxsXRk2g+w49HSB2HVo4R+BQ4vewDVGynPme6IrGlrcCk39mQ1lGB857SPbj/4Yv1nKzxOZKN6gHSgx1qUcyiEBYKGGpSGl//xUeNlupCnwSYdfAmgwX7Tr1px3rkTcj3euOaT4zCGt+MCbyzcJMD/S3K36x/NHdkXoeLZ7QcnEiP+CInWMNHulHxfOWOXff7fFxWp/KDgnjCQ5YBijGiazFEue2Tt+v9sZzUDwWzoEJjP+UU3zQiETzG9x0XmfhPkZvENQtVP03mQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CV24NqUyreWf8ym3I0L/O6OEcR2vK5LYnUE175kbHb4=;
 b=n5yZoNXunnwz3OgooWaJmR9USw0ApT0aKGF86BIC9oYc2l/BBbXWj177A0kqsoQXtkUVEltLkCR00W9XPYrFIXYfK/ks0jQQK6fq6gjBx1RllkqkpX291SfNCBeFNMopFxADZpwysFQzlsGGyi12mQxanyLAU03dE5seeVZ71Z4Vbu36xvwEEGasLW5U3ZRplJ0P/CMJrx6R6hkhXkLav3I7x8wIK1E/9wRFs+EzeY1/Ivqf/8eAb17oaq3A0mZt+iFeWvyUADVsUuSP1di53g9XqOzQAZLX0cTbPgaICEdQo4LzgGqXAexwj+DzaNMJ7pD2no4UOSGeVmG+9vOguw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=seco.com; dmarc=pass action=none header.from=seco.com;
 dkim=pass header.d=seco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CV24NqUyreWf8ym3I0L/O6OEcR2vK5LYnUE175kbHb4=;
 b=XjfQkkZXuBqe9gJdayV9U9T3muKgQZ1Y3yxQJU+gpVf27qCifhzOH3j/uAj8MFPqjlzqux6ieb4/5YTN5M9QyoQ03lYWgQ4kVuRLeb+kTOcloE//pAo5hWJnYuEfeuF+jlhhj3iNlf+LppZ+PWdbYPwXBT3esyGYLOjE7aBXQdGr8GItaQJUE+WL1XT8P5ieFi4XC+IelvT5eRXWLuKomjR0BEEdOxVrKPKhNNOoGGPRbr5p3q/kl5H5ehIyj1Y3wu+wHm9O6J27JTasxd6XLVIdiVuZ4HD5Ygheylu7loQkZfPCL85V9FL5L/1/9gfkTrU09ZntY9F5FZLprCOEiQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=seco.com;
Received: from DB7PR03MB4972.eurprd03.prod.outlook.com (2603:10a6:10:7d::22)
 by AM0PR03MB4692.eurprd03.prod.outlook.com (2603:10a6:208:c4::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5353.22; Mon, 20 Jun
 2022 18:51:06 +0000
Received: from DB7PR03MB4972.eurprd03.prod.outlook.com
 ([fe80::757e:b75f:3449:45b1]) by DB7PR03MB4972.eurprd03.prod.outlook.com
 ([fe80::757e:b75f:3449:45b1%6]) with mapi id 15.20.5353.022; Mon, 20 Jun 2022
 18:51:06 +0000
Subject: Re: [PATCH net-next 01/28] dt-bindings: phy: Add QorIQ SerDes binding
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Madalin Bucur <madalin.bucur@nxp.com>, netdev@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Paolo Abeni <pabeni@redhat.com>, Russell King <linux@armlinux.org.uk>,
 Eric Dumazet <edumazet@google.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 Ioana Ciornei <ioana.ciornei@nxp.com>
References: <20220617203312.3799646-1-sean.anderson@seco.com>
 <20220617203312.3799646-2-sean.anderson@seco.com>
 <110c4a4b-8007-1826-ee27-02eaedd22d8f@linaro.org>
 <535a0389-6c97-523d-382f-e54d69d3907e@seco.com>
 <d79239ce-3959-15f8-7121-478fc6d432e4@linaro.org>
 <e6ed314d-290f-ace5-b0ff-01a9a2edca88@seco.com>
 <16684442-35d4-df51-d9f7-4de36d7cf6fd@linaro.org>
 <50fa16ce-ac24-8e4c-5d81-0218535cd05c@seco.com>
 <e922714b-29c7-0f41-9e5c-9a0aef9fb5de@linaro.org>
From: Sean Anderson <sean.anderson@seco.com>
Message-ID: <5d724f49-71c4-96ad-b756-06b5683fa112@seco.com>
Date: Mon, 20 Jun 2022 14:51:00 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <e922714b-29c7-0f41-9e5c-9a0aef9fb5de@linaro.org>
Content-Language: en-US
X-ClientProxiedBy: BL0PR0102CA0057.prod.exchangelabs.com
 (2603:10b6:208:25::34) To DB7PR03MB4972.eurprd03.prod.outlook.com
 (2603:10a6:10:7d::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a2acf1ca-62de-4ce1-848b-08da52edd51a
X-MS-TrafficTypeDiagnostic: AM0PR03MB4692:EE_
X-Microsoft-Antispam-PRVS: 	<AM0PR03MB4692656C1A44C9C629C4B58496B09@AM0PR03MB4692.eurprd03.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	aVHYSkfAxYkhV1SeIi1pEb9MWIaT+A5waEyMS+FbLhGHnfkyXsZvh9/FjL4DPU0CJT7wbTla1jRNtRUPigWbfF9cZtGSgqQmMNevJ01oicWsVP304vCOANk41xwIf5qjw/m+i+QLRKafAjgS+6/9pPuODfGLHfmoAX7Dr70TkU2wRb2C3NlsyKHZQcg9G5HlsXzO+tIIOle6vMSFo4iXr9JeZ2Bp9ezeuiockSR3CCl3CJ1jQcYZBmWbFC+RPE7XdmSq+W5cLR4XjNqqO7RoRNYqb7jS3J16ligGUye36cz6bAGGJwOjHRc+ko/ziatWjiDtswJQk+xq8xhTH57qLafUiHI5Zz5FvuQI6ORlVlDO2mIfr6CDf8Q+cGTTSsflk6zdHDo2yIKzomaD3yPwEbP9NP+Z6DFnU0rVA06bZn4FK3BBYCFr9YWnFGFsRR1ejEf1GwjaHNGBhfrDiLf0J5wU0DzCdd8f/JaelS/4gb88Jz9Q8CuL/vnXhsxtsgynszBgymSZXs+NE2i13OBSKi1tGvtePfCf2ZbWbOu0wXARJ1JCF6YYaIvRzhozxPFSOewuBXXQwYBQn4HzhAtJ/mmL2aFFNIeofYV2mE/KfZooVmJjpCKtpWnJIFRtvC4a7/K1PKro/5XWkJr9J5vBb3jFodikOpvMiqLngTluFHYhBcXhjjkDT6eLTJ6QywjqCZ91aavgtAWSJ83fcK5BBCpJz7mXVK3m9uJM838HSmjEq9WtPEX3F23+d7RsDpDmxwy4Rnb6C40FK5a7KctpXnqJuGRvrtthg5BIK5ZJDeY=
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR03MB4972.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(396003)(136003)(346002)(366004)(39850400004)(376002)(36756003)(44832011)(31686004)(53546011)(38100700002)(316002)(110136005)(54906003)(38350700002)(31696002)(186003)(26005)(52116002)(2906002)(8676002)(4326008)(6486002)(66556008)(66946007)(66476007)(8936002)(5660300002)(7416002)(86362001)(478600001)(2616005)(41300700001)(6512007)(83380400001)(6666004)(6506007)(21314003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?dW1Sd09zQ1ora0o4bitzZTdRcEtRVDRSckVIRDEvYms1eDlLVHE2dXpUeUR2?=
 =?utf-8?B?K3BqV3dEQ1BxaXduZGVvU3o1c3Z0akJXWlhEdklmdlhmdHo2SGNldFFiS2VU?=
 =?utf-8?B?T0tDdnlIcVhITDBHME52NkQ4bEl4emdLN05KSEtJR1dSSlBrRFpZL2VFOSto?=
 =?utf-8?B?R1BCb01PQ1VmbVFKQUlLbTJVYmZIcklmQW5lVnpVZ0tLNU9jY1ZJbFFaSUJ1?=
 =?utf-8?B?OG1BMmkxLyttOTNid2xKeXNIem1lV1VGYUdUUUkrbDVrTjFBaUlBV0xWcEJw?=
 =?utf-8?B?K2ZSWndjUFM4cTlwcHhnUDltSU9pdGZ2OUFOejJOV0RLdnVsZ1BCTmZEZkxE?=
 =?utf-8?B?ajlGMmVuVkRPSUNjQXNGS1czYWtTaXBSZlF0Tk1ZL3NmM1ZLbUdHQTF3N3pC?=
 =?utf-8?B?WmVvY0ZsK21pZzZKR0NsM0NnTGhtR1VpQTZSRU9hODNYbXhsNUdhUHQ3TmpX?=
 =?utf-8?B?TDV1K1RiQmd3RC9DMW5zV3U4OFhwdGV2Z2tmK0hTb2lLQVFybENuRkNxS1Ja?=
 =?utf-8?B?QmdDd05nOGFFVkptWlR0NFVTbzNQQk5rNVplOVdDbGtDaTZCR3VINk5NMThV?=
 =?utf-8?B?ZVN5bU16ZTN5RG1zYWcxMXJCbm00V1VjaTdJdHVvSWluajJFMHBVdmlmd1lE?=
 =?utf-8?B?VnY1bDNiek51OTdSeTdySzVhYkRPRUFVRTM0MlNvTmFYckVMblJwYTlhZkh5?=
 =?utf-8?B?NGdZZGJNZzYveldBcGdyd2E0ZHJ2WkdWVGl0aWMwMGxZV0xMR3B1YzZVRUxV?=
 =?utf-8?B?OHZhRXMyYnc2Um5GL1JSSDhVb3ZUcEFlWkFTVWRZUnZ4V3ZIa3ZaUGFKTGs5?=
 =?utf-8?B?SWZFemVrQ3lRVk13dHpkNEVpUjVhREs4NnJRcUdoTlFXYmxHMm55OTVmYm1w?=
 =?utf-8?B?UzFFTnVLQkVsakhpUHNCOFB3TnMrYXhBSG1hYXhUdmNLd2YwWFdJL3N2dmhD?=
 =?utf-8?B?ejFkb2dSR3BVTitHdWJheE1hMkpCV2ZZTGhmYzYybGVUNnN2Q1NNYUhjRWVt?=
 =?utf-8?B?eG4vSFAvZGFOT2l6aEdCWTIzcWdHL1NYQWh5Sk82OVp4YmpROVlDWklNR2hv?=
 =?utf-8?B?c3RwMUdKTktnaFZaamU4djBZY2ZzK2JWZDNFY3c4N0RUOW9SZE9nR2FUU3hD?=
 =?utf-8?B?QnlPcXRmK1Z2MENhV2ErTTZKNjhHRFdjRHRNcVVtcGZzREV0VjZraVhIcW9k?=
 =?utf-8?B?V0pQcU1zZ0lHSmQ2SkNNajR4eE1IRVp6M2ZGSGJmaGZ6K1BWMm0vVlVPakxn?=
 =?utf-8?B?cXRvQVN3Sk5ycXdqUnViQ2dQM3BUYVVGMWJwQXFTZ3lqenhSc0RxeWg1L1Z0?=
 =?utf-8?B?L3NIRkdwdHk2NXIwK1VqRzVadXlScnF1T0ovZkNUa3NXdWVjek5CQmd2a1dm?=
 =?utf-8?B?YmJmSDhpN1NtbkFGdkd0U0l4TEtkaXJTTUc1WVlnVFlObnFDSEUvU3VMQXZD?=
 =?utf-8?B?S0lSN2txd3BaVXRzL1lVc2lWM1VBN05lTlI0T2MzbmF5MTIrcThrc3crZFU1?=
 =?utf-8?B?RUJ4eXdBbUJhT2k3SUlxbkdxZHEzMHF3WXhjWmd0cDZ0SHNnNFhkRGpocjBW?=
 =?utf-8?B?WHlMK2dqUzRHZENZVzU1L2xmbUd0MnJ3YnVMU2MwYUNXR0tvQ0o2NjdRVVdy?=
 =?utf-8?B?WlIvSnUxWXh6YlUraGFUVUk0dDRYUEVRMFJSUVk1ZVR0VGNNZnZHMDdXSU4v?=
 =?utf-8?B?MTVNTG5kYzdoeFpianQxN1AycElqYzl2OWpzY05wMDRyYlI3cXdQbkQyLzUw?=
 =?utf-8?B?Y1h2YWRBckI1VFpvWHBRV3V6WTdTYVd6V2RBbXV2MmhWc2dySFRuYzJhcmlQ?=
 =?utf-8?B?aVBUcER3YmJmYTcrUkJ0cFd0V2pNUW9Ea3lnT2ZGRVl3Ukh5RVdET3hmV0Zr?=
 =?utf-8?B?b01Cbzhab0hqSmZvUUt4UldXNEJPWDBxd1BFc3hIbWFMeVFOZXJRVXpmeGZq?=
 =?utf-8?B?cTM4YlpycTNhMHA1RTN5OTAyOXM4Q1NCZTdVVzlWOURMSTRVTllTbmV3R2U4?=
 =?utf-8?B?TktlVTV4VC9MeTEzR1MxajZOWk1PNGtGekI3MjlNVTJnY042T09ocHZhaE1l?=
 =?utf-8?B?c09YcWxFYXhEWkozbUFQZDB4a3U0NnlNVHUvaWVONXB1NjhGb3pXVmo0TzQ4?=
 =?utf-8?B?b3Q1NDVzWmFKSzhBWGFiYThKS2hiTXZVM2xpRlQ4aXV6RGR5aVhWa3BVK1RS?=
 =?utf-8?B?dmFzb0Z6VXNJbU5TRnl3M0RUOUJWSkE2aDk0Smp3ZHVxYWthczdKaGxNcmhz?=
 =?utf-8?B?NzRYTjJzYUlvR2xHWlVpWm9qOTkvQ2lLaUR5U0llVHhZSlM0NzVFWkFscWtU?=
 =?utf-8?B?MTQ3KzRvTVdzWHBmbmlLQVBDeVo1SkZZTCtPWUlqaElZcVduTGl0SjhUMTZP?=
 =?utf-8?Q?h30nHjOyPzCm1erU=3D?=
X-OriginatorOrg: seco.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a2acf1ca-62de-4ce1-848b-08da52edd51a
X-MS-Exchange-CrossTenant-AuthSource: DB7PR03MB4972.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jun 2022 18:51:06.3920
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: bebe97c3-6438-442e-ade3-ff17aa50e733
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zYHYJzhHkgPSGWfwdr87h6ECkVFYewOwuKrmob4hseSdysfQoFLzkmBZ1EaZFFv3QCJ/fRyoTaUzZ0ir5e9XlQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR03MB4692
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_115112_793031_FB87F578 
X-CRM114-Status: GOOD (  27.41  )
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

T24gNi8yMC8yMiAyOjIxIFBNLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+Pj4+IC0gc2Ft
c3VuZ191c2IyX3BoeV9jb25maWcgaW4gZHJpdmVycy9waHkvc2Ftc3VuZy8KPj4+Cj4+PiBUaGlz
IG9uZSBpcyBhIGdvb2QgZXhhbXBsZSAtIHdoZXJlIGRvIHlvdSBzZWUgdGhlcmUgY29tcGF0aWJs
ZXMgd2l0aAo+Pj4gYXJiaXRyYXJ5IG51bWJlcnMgYXR0YWNoZWQ/Cj4+IAo+PiBzYW1zdW5nX3Vz
YjJfcGh5X29mX21hdGNoIGluIGRyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LXNhbXN1bmctdXNiMi5j
Cj4+IAo+PiBUaGVyZSBpcyBhIGRpZmZlcmVudCBjb21wYXRpYmxlIGZvciBlYWNoIFNvQyB2YXJp
YW50LiBFYWNoIGNvbXBhdGlibGUgc2VsZWN0cyBhIHN0cnVjdAo+PiBjb250YWluaW5nCj4+IAo+
PiAtIEEgbGlzdCBvZiBwaHlzLCBlYWNoIHdpdGggY3VzdG9tIHBvd2VyIG9uIGFuZCBvZmYgZnVu
Y3Rpb25zCj4+IC0gQSBmdW5jdGlvbiB3aGljaCBjb252ZXJ0cyBhIHJhdGUgdG8gYW4gYXJiaXRy
YXJ5IHZhbHVlIHRvIHByb2dyYW0gaW50byBhIHJlZ2lzdGVyCj4+IAo+PiBUaGlzIGlzIGZ1cnRo
ZXIgZG9jdW1lbnRlZCBpbiBEb2N1bWVudGF0aW9uL2RyaXZlci1hcGkvcGh5L3NhbXN1bmctdXNi
Mi5yc3QKPiAKPiBFeGFjdGx5LCBwbGVhc2UgZm9sbG93IHRoaXMgYXBwcm9hY2guIENvbXBhdGli
bGUgaXMgcGVyIGRpZmZlcmVudAo+IGRldmljZSwgZS5nLiBkaWZmZXJlbnQgU29DIHZhcmlhbnQu
IE9mIGNvdXJzZSB5b3UgY291bGQgaGF2ZSBkaWZmZXJlbnQKPiBkZXZpY2VzIG9uIHNhbWUgU29D
LCBidXQgIjEiIGFuZCAiMiIgYXJlIG5vdCBkaWZmZXJlbnQgZGV2aWNlcy4KCihpbiB0aGlzIGNh
c2UgdGhleSBhcmUpCgo+PiAKPj4+PiAtIHFtcF9waHlfaW5pdF90YmwgaW4gZHJpdmVycy9waHkv
cXVhbGNvbW0vcGh5LXFjb20tcW1wLmMKPj4+Pgo+Pj4+IEFsbCBvZiB0aGVzZSBkcml2ZXJzIChh
bmQgdGhlcmUgYXJlIG1vcmUpCj4+Pj4KPj4+PiAtIFVzZSBhIGRyaXZlci1pbnRlcm5hbCBzdHJ1
Y3QgdG8gZW5jb2RlIGluZm9ybWF0aW9uIHNwZWNpZmljIHRvIGRpZmZlcmVudCBkZXZpY2UgbW9k
ZWxzLgo+Pj4+IC0gU2VsZWN0IHRoYXQgc3RydWN0IGJhc2VkIG9uIHRoZSBjb21wYXRpYmxlCj4+
Pgo+Pj4gRHJpdmVyIGltcGxlbWVudGF0aW9uLiBZb3UgY2FuIGRvIGl0IGluIG1hbnkgZGlmZmVy
ZW50IHdheXMuIERvZXMgbm90Cj4+PiBtYXR0ZXIgZm9yIHRoZSBiaW5kaW5ncy4KPj4gCj4+IEFu
ZCBiZWNhdXNlIHRoaXMgYm90aCBkZXNjcmliZXMgdGhlIGhhcmR3YXJlIGFuZCBpcyBjb252ZW5p
ZW50IHRvIHRoZSBpbXBsZW1lbnRhdGlvbiwKPj4gSSBoYXZlIGNob3NlbiB0aGlzIHdheS4KPj4g
Cj4+Pj4KPj4+PiBUaGUgb3RoZXIgdGhpbmcgaXMgdGhhdCB3aGlsZSB0aGUgTFMxMDQ2QSBTZXJE
ZXMgYXJlIGZhaXJseSBnZW5lcmljLCBvdGhlciBTZXJEZXMgb2YgdGhpcwo+Pj4+IHR5cGUgaGF2
ZSBwYXJ0aWN1bGFyIHJlc3RydWN0aW9ucyBvbiB0aGUgY2xvY2tzLiBFLmcuIG9uIHNvbWUgU29D
cywgY2VydGFpbiBwcm90b2NvbHMKPj4+PiBjYW5ub3QgYmUgdXNlZCB0b2dldGhlciAoZXZlbiBp
ZiB0aGV5IHdvdWxkIG90aGVyd2lzZSBiZSBsZWdhbCksIGFuZCBzb21lIHByb3RvY29scyBtdXN0
Cj4+Pj4gdXNlIHBhcnRpY3VsYXIgUExMcyAod2hlcmVhcyBpbiBnZW5lcmFsIHRoZXJlIGlzIG5v
IHN1Y2ggcmVzdHJpY3Rpb24pLiBUaGVyZSBhcmUgYWxzbwo+Pj4+IHNvbWUgcmVnaXN0ZXIgZmll
bGRzIHdoaWNoIGFyZSByZXF1aXJlZCB0byBwcm9ncmFtIG9uIHNvbWUgU29DcywgYW5kIHdoaWNo
IGFyZSByZXNlcnZlZAo+Pj4+IG9uIG90aGVycy4KPj4+Cj4+PiBKdXN0IHRvIGJlIGNsZWFyLCBi
ZWNhdXNlIHlvdSBhcmUgcXVpdGUgdW5zcGVjaWZpYyBoZXJlICgic29tZQo+Pj4gcHJvdG9jb2xz
IikgLSB3ZSB0YWxrIGFib3V0IHRoZSBzYW1lIHByb3RvY29sIHByb2dyYW1tZWQgb24gdHdvIG9m
IHRoZXNlCj4+PiBzZXJkZXMgKHNlcmRlcy0xIGFuZCBzZXJkZXMtMiBob3cgeW91IGNhbGwgaXQp
LiBEb2VzIGl0IHVzZSBkaWZmZXJlbnQKPj4+IHJlZ2lzdGVycz8KPj4gCj4+IFllcy4KPj4gCj4+
PiBBcmUgc29tZSByZWdpc3RlcnMgLSBmb3IgdGhlIHNhbWUgcHJvdG9jb2wgLSByZXNlcnZlZCBp
biBvbmUgdmVyc2lvbj8KPj4gCj4+IFllcy4KPj4gCj4+IEZvciBleGFtcGxlLCBJIGV4Y2VycHQg
cGFydCBvZiB0aGUgZG9jdW1lbnRhdGlvbiBmb3IgUENDUjIgb24gdGhlIFQ0MjQwOgo+PiAKPj4+
IFhGSWEgQ29uZmlndXJhdGlvbjoKPj4+IFhGSUFfQ0ZHIERlZmF1bHQgdmFsdWUgc2V0IGJ5IFJD
VyBjb25maWd1cmF0aW9uLgo+Pj4gVGhpcyBmaWVsZCBtdXN0IGJlIDAgZm9yIFNlckRlcyAzICYg
NAo+Pj4gQWxsIHNldHRpbmdzIG5vdCBzaG93biBhcmUgcmVzZXJ2ZWQKPj4+Cj4+PiAwMCBEaXNh
YmxlZAo+Pj4gMDEgeDEgb24gTGFuZSAzIHRvIEZNMiBNQUMgOQo+PiAKPj4gQW5kIGhlcmUgaXMg
cGFydCBvZiB0aGUgZG9jdW1lbnRhdGlvbiBmb3IgUENDUjIgb24gdGhlIExTMTA0NkE6Cj4+IAo+
Pj4gU0FUQWEgQ29uZmlndXJhdGlvbgo+Pj4gQWxsIG90aGVycyByZXNlcnZlZAo+Pj4gTk9URTog
VGhpcyBmaWVsZCBpcyBub3Qgc3VwcG9ydGVkIGluIGV2ZXJ5IGluc3RhbmNlLiBUaGUgZm9sbG93
aW5nIHRhYmxlIGluY2x1ZGVzIG9ubHkKPj4+ICAgICAgIHN1cHBvcnRlZCByZWdpc3RlcnMuCj4+
PiBGaWVsZCBzdXBwb3J0ZWQgaW4JRmllbGQgbm90IHN1cHBvcnRlZCBpbgo+Pj4gU2VyRGVzMV9Q
Q0NSMgkJ4oCUCj4+PiDigJQJCQlTZXJEZXMyX1BDQ1IyCj4+Pgo+Pj4gMDAwYiAtIERpc2FibGVk
Cj4+PiAwMDFiIC0geDEgb24gTGFuZSAzIChTZXJEZXMgIzIgb25seSkKPj4gCj4+IEFuZCBoZXJl
IGlzIHBhcnQgb2YgdGhlIGRvY3VtZW50YXRpb24gZm9yIFBDQ1JCIG9uIHRoZSBMUzEwNDZBOgo+
PiAKPj4+IFhGSWEgQ29uZmlndXJhdGlvbgo+Pj4gQWxsIG90aGVycyByZXNlcnZlZCBEZWZhdWx0
IHZhbHVlIHNldCBieSBSQ1cgY29uZmlndXJhdGlvbi4KPj4+Cj4+PiAwMDBiIC0gRGlzYWJsZWQK
Pj4+IDAxMGIgLSB4MSBvbiBMYW5lIDEgdG8gWEdNSUlhIChTZXJkZXMgIzEgb25seSkKPj4gWW91
IG1heSBub3RpY2UgdGhhdAo+PiAKPj4gLSBGb3Igc29tZSBTZXJEZXMgb24gdGhlIHNhbWUgU29D
LCB0aGVzZSBmaWVsZHMgYXJlIHJlc2VydmVkCj4gCj4gVGhhdCBhbGwgc291bmRzIGxpa2UgcXVp
dGUgZGlmZmVyZW50IGRldmljZXMsIHdoaWNoIGluZGVlZCB1c3VhbGx5IGlzCj4gZGVzY3JpYmVk
IHdpdGggZGlmZmVyZW50IGNvbXBhdGlibGVzLiBTdGlsbCAieHh4LTEiIGFuZCAieHh4LTIiIGFy
ZSBub3QKPiB2YWxpZCBjb21wYXRpYmxlcy4gWW91IG5lZWQgdG8gY29tZSB3aXRoIHNvbWUgbW9y
ZSByZWFzb25hYmxlIG5hbWUKPiBkZXNjcmliaW5nIHRoZW0uIE1heWJlIHRoZSBibG9jayBoYXMg
cmV2aXNpb24gb3IgZGlmZmVyZW50IG1vZGVsL3ZlbmRvci4KClRoZXJlIGlzIG5vbmUgQUZBSUsu
IE1heWJlIHNvbWVvbmUgZnJvbSBOWFAgY2FuIGNvbW1lbnQgKHNpbmNlIHRoZXJlIGFyZSBtYW55
CnVuZG9jdW1lbnRlZCByZWdpc3RlcnMpLgoKPj4gLSBCZXR3ZWVuIGRpZmZlcmVudCBTb0NzLCBk
aWZmZXJlbnQgcHJvdG9jb2xzIG1heSBiZSBjb25maWd1cmVkIGluIGRpZmZlcmVudCByZWdpc3Rl
cnMKPj4gLSBUaGUgc2FtZSByZWdpc3RlcnMgbWF5IGJlIHVzZWQgZm9yIGRpZmZlcmVudCBwcm90
b2NvbHMgaW4gZGlmZmVyZW50IFNvQ3MgKHRob3VnaAo+PiAgIGdlbmVyYWxseSB0aGVyZSBhcmUg
c2V2ZXJhbCBnZW5lcmFsIGxheW91dHMpCj4gCj4gRGlmZmVyZW50IFNvQ3MgZ2l2ZSB5b3UgZGlm
ZmVyZW50IGNvbXBhdGlibGVzLCBzbyBwcm9ibGVtIGlzIHNvbHZlZCBhbmQKPiB0aGF0J3Mgbm90
IGV4YWN0bHkgYXJndW1lbnQgZm9yIHRoaXMgY2FzZS4KPiAKPj4gLSBGaWVsZHMgaGF2ZSBwYXJ0
aWN1bGFyIHZhbHVlcyB3aGljaCBtdXN0IGJlIHByb2dyYW1tZWQKPj4gCj4+IEluIGFkZGl0aW9u
LCB0aGUgZG9jdW1lbnRhdGlvbiBhbHNvIHNheXMKPj4gCj4+PiBSZXNlcnZlZCByZWdpc3RlcnMg
YW5kIGZpZWxkcyBtdXN0IGJlIHByZXNlcnZlZCBvbiB3cml0ZXMuCj4+IAo+PiBBbGwgb2YgdGhl
c2UgY29tYmluZWQgaXNzdWVzIG1ha2UgaXQgc28gdGhhdCB3ZSBuZWVkIGRldGFpbGVkLCBzZXJk
ZXMtc3BlY2lmaWMKPj4gY29uZmlndXJhdGlvbi4gVGhlIGVhc2llc3Qgd2F5IHRvIHN0b3JlIHRo
aXMgY29uZmlndXJhdGlvbiBpcyBpbiB0aGUgZHJpdmVyLiBUaGlzCj4+IGlzIGNvbnNpc3RlbnQg
d2l0aCAqbWFueSogZXhpc3RpbmcgcGh5IGltcGxlbWVudGF0aW9ucy4gSSB3b3VsZCBsaWtlIHRv
IHdyaXRlIGEKPj4gc3RhbmRhcmQgcGh5IGRyaXZlciwgbm90IG9uZSB0d2lzdGVkIGJ5IHVudXN1
YWwgZGV2aWNlIHRyZWUgcmVxdWlyZW1lbnRzLgo+IAo+IFN1cmUuCj4gCj4+IAo+Pj4+Cj4+Pj4g
VGhlcmUgaXMsIGZyYW5rbHksIGEgbGFyZ2UgYW1vdW50IG9mIHZhcmlhdGlvbiBiZXR3ZWVuIGRl
dmljZXMgYXMgaW1wbGVtZW50ZWQgb24gZGlmZmVyZW50Cj4+Pj4gU29Dcy4gCj4+Pgo+Pj4gVGhp
cyBJIGRvbid0IGdldC4gWW91IG1lYW4gZGlmZmVyZW50IFNvQ3MgaGF2ZSBlbnRpcmVseSBkaWZm
ZXJlbnQKPj4+IFNlcmRlcz8gU3VyZSwgbm8gcHJvYmxlbS4gV2UgdGFsayBoZXJlIG9ubHkgYWJv
dXQgdGhpcyBTb0MsIHRoaXMKPj4+IHNlcmRlcy0xIGFuZCBzZXJkZXMtMi4KPj4+Cj4+Pj4gRXNw
ZWNpYWxseSBiZWNhdXNlIChBSVVJKSBkcml2ZXJzIG11c3QgcmVtYWluIGNvbXBhdGlibGUgd2l0
aCBvbGQgZGV2aWNldHJlZXMsIEkKPj4+PiB0aGluayB1c2luZyBhIHNwZWNpZmljIGNvbXBhdGli
bGUgc3RyaW5nIGlzIGVzcGVjaWFsbHkgYXBwcm9wcmlhdGUgaGVyZS4gCj4+Pgo+Pj4gVGhpcyBh
cmd1bWVudCBkb2VzIG5vdCBtYWtlIGFueSBzZW5zZSBpbiBjYXNlIG9mIG5ldyBiaW5kaW5ncyBh
bmQgbmV3Cj4+PiBkcml2ZXJzLCB1bmxlc3MgeW91IGJ1aWxkIG9uIHRvcCBvZiBleGlzdGluZyBp
bXBsZW1lbnRhdGlvbi4gQW55d2F5IG5vCj4+PiBvbmUgYXNrcyB5b3UgdG8gYnJlYWsgZXhpc3Rp
bmcgYmluZGluZ3MuLi4KPj4gCj4+IFdoZW4gdGhlcmUgaXMgYSBidWcgaW4gdGhlIGJpbmRpbmdz
IGhvdyBkbyB5b3UgZml4IGl0PyBJZiBJIHdlcmUgdG8gZm9sbG93IHlvdXIgc3VnZ2VzdGVkIG1l
dGhvZCwgaXQgd291bGQgYmUgZGlmZmljdWx0IHRvIGRldGVybWluZSB0aGUgcGFydGljdWxhciBk
ZXZpY2VzCj4+IAo+Pj4+IEl0IHdpbGwgZ2l2ZSB1cwo+Pj4+IHRoZSBhYmlsaXR5IHRvIGNvcnJl
Y3QgYW55IGltcGxlbWVudGF0aW9uIHF1aXJrcyBhcyB0aGV5IGFyZSBkaXNjb3ZlcmVkIChhbmQg
SSBhbnRpY2lwYXRlCj4+Pj4gdGhhdCB0aGVyZSB3aWxsIGJlKSByYXRoZXIgdGhhbiBoYXZpbmcg
dG8gZGV0ZXJtaW5lIGV2ZXJ5dGhpbmcgdXAgZnJvbnQuCj4+Pgo+Pj4gQWxsIHRoZSBxdWlya3Mg
Y2FuIGJlIGFsc28gY2hvc2VuIGJ5IHJlc3BlY3RpdmUgcHJvcGVydGllcy4KPj4gCj4+IFF1aXJr
cyBhcmUgKmV4YWN0bHkqIHRoZSBzb3J0IG9mIGltcGxlbWVudGF0aW9uLXNwZWNpZmljIGRldGFp
bHMgdGhhdCB5b3Ugd2VyZSBvcHBvc2VkIHRvIGFib3ZlLgo+PiAKPj4+IEFueXdheSwgInNlcmRl
cy0xIiBhbmQgInNlcmRlcy0yIiBhcmUgbm90IGNvcnJlY3QgY29tcGF0aWJsZXMsCj4+IAo+PiBU
aGUgY29tcGF0aWJsZXMgc3VnZ2VzdGVkIHdlcmUgImZzbCxsczEwNDYtc2VyZGVzLTEiIGFuZCAt
Mi4gQXMgbm90ZWQgYWJvdmUsIHRoZXNlIGFyZSBzZXBhcmF0ZQo+PiBkZXZpY2VzIHdoaWNoLCB3
aGlsZSBoYXZpbmcgbWFueSBzaW1pbGFyaXRpZXMsIGhhdmUgZGlmZmVyZW50IHJlZ2lzdGVyIGxh
eW91dHMgYW5kIHByb3RvY29sCj4+IHN1cHBvcnQuIFRoZXkgYXJlICpub3QqIDEwMCUgY29tcGF0
aWJsZSB3aXRoIGVhY2ggb3RoZXIuIFdvdWxkIHlvdSByZXF1aXJlIHRoYXQgY2xvY2sgZHJpdmVy
cwo+PiBmb3IgZGlmZmVyZW50IFNvQ3MgdXNlIHRoZSBzYW1lIGNvbXBhdGlibGVzIGp1c3QgYmVj
YXVzZSB0aGV5IGhhZCB0aGUgc2FtZSByZWdpc3RlcnMsIGV2ZW4gdGhvdWdoCj4+IHRoZSBjbG9j
a3MgdGhlbXNlbHZlcyBoYWQgZGlmZmVyZW50IGZ1bmN0aW9ucyBhbmQgaGllcmFyY2h5Pwo+IAo+
IFlvdSBtaXNzIHRoZSBwb2ludC4gQ2xvY2sgY29udHJvbGxlcnMgb24gc2FtZSBTb0MgaGF2ZSBk
aWZmZXJlbnQgbmFtZXMKPiB1c2VkIGluIGNvbXBhdGlibGVzLiBXZSBkbyBub3QgZGVzY3JpYmUg
dGhlbSBhcyAidmVuZG9yLGFhLWNsay0xIiBhbmQKPiAidmVuZG9yLGFhLWNsay0yIi4KPiAKPiBD
b21lIHdpdGggcHJvcGVyIG5hbWluZyBhbmQgZW50aXJlIGRpc2N1c3Npb24gbWlnaHQgYmUgbm90
IHZhbGlkCj4gKGFsdGhvdWdoIHdpdGggbm90IHBlcmZlY3QgbmFtaW5nIFJvYiBtaWdodCBjb21l
IHdpdGggcXVlc3Rpb25zKS4gSQo+IGNhbm5vdCBwcm9wb3NlIHRoZSBuYW1lIGJlY2F1c2UgSSBk
b24ndCBrbm93IHRoZXNlIGhhcmR3YXJlIGJsb2NrcyBhbmQgSQo+IGRvIG5vdCBoYXZlIGFjY2Vz
cyB0byBkYXRhc2hlZXQuCj4gCj4gT3RoZXIgd2F5LCBpZiBhbnkgcmVhc29uYWJsZSBuYW1pbmcg
aXMgbm90IHBvc3NpYmxlLCBjb3VsZCBiZSBhbHNvIHRvCj4gZGVzY3JpYmUgdGhlIG1lYW5pbmcg
b2YgIi0xIiBzdWZmaXgsIGUuZy4gdGhhdCBpdCBkb2VzIG5vdCBtZWFuIHNvbWUKPiBpbmRleCBi
dXQgYSB2YXJpYW50IGZyb20gc3BlY2lmaWNhdGlvbi4KClRoZSBkb2N1bWVudGF0aW9uIHJlZmVy
cyB0byB0aGVzZSBkZXZpY2VzIGFzICJTZXJEZXMxIiwgIlNlckRlczIiLCBldGMuCgpXb2xkIHlv
dSBwcmVmZXIgc29tZXRoaW5nIGxpa2UKCnNlcmRlczA6IHBoeUAxZWEwMDAwIHsKCWNvbXBhdGli
bGUgPSAiZnNsLGxzMTA0NmEtc2VyZGVzIjsKCXZhcmlhbnQgPSA8MD47Cn07Cgo/CgotLVNlYW4K
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
