Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CE5FC433F5
	for <linux-phy@archiver.kernel.org>; Sat,  2 Apr 2022 05:23:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A9zpcS2SZKLL2yXRmY9d8m0YrClB8lFsaE/ILq79z+o=; b=3nJEWKPqT7OfFW
	km4DVN9pMJZthT4bdBWjuxkr61FuBnsnRrJBlSseZQT0vxLbeJeV035eCcx+yyl2tYMUTHADAtge9
	nG6ARiPKG7gqIvyYgkjSY07hhfiobVJKFP00VZIx/t0Jxy6WHjdSWfCQCfOmvRp5oQI9AhKsJKxsl
	zg2IhP8EPbWG3vpFWWIGO96IbrQjKT0POopzMGonLZv6HYAaMT8nW1jR5g5UVHlxlFsbE4aXYySmn
	1+0va8OPv0SPGHrVrmsQHTJnNBMk9+xgJCGBKXIOQowqOF6qrfkLyI1SJuPyy9iywjITpSlZj1MmQ
	bhiEhctl7U42RMD/Cd9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naWEd-00840f-QW; Sat, 02 Apr 2022 05:23:39 +0000
Received: from mail-am6eur05on20630.outbound.protection.outlook.com
 ([2a01:111:f400:7e1b::630]
 helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naWET-0083tE-Jv; Sat, 02 Apr 2022 05:23:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eI0rl9q3EZ1uZkYvXNhqpzE9aAxrkBe34IWRR6iJiGmof6UT3V+yrgKHZfmsUdXN+oN38X4uGjoIVVQCFKuEO+clXorv3+aAZKiUH6ykRkA4zn39hDA5KId21GQq5NNPgXq1eVhL3anuwru4ZaHWSkVr8+eHOmAnws5B7iPdcGpGpsZnDB924lItRd5kYn7XIBG4w78qSIYnpaEaU+f7h4OEaZzLP/2y3/9PJIepEjylvri5+sdZWgNO8IDVBZhphEOqMmjKskD8acw2rTZnVXWQ5FaK+2igVb9wpRMTLYtkgrIjlokpj1IJl/2Bs5NTA/p1aSKbCpRlO8uSAzb1/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OBQV+Ohgw4rC2MFsKm8LEhBcWsWoUQRtJKI3LqPqGIg=;
 b=SOlgyZG89Q6jJ2uhT8cjkPJeRstpU7BWXxI4dTOtkLlOyqDuxuqTPS/bCcPN9dX3pVnkYRWGxIp+mAmbHzYfnniPDflMjHz+j7/RssyZlqeOZL0bSssefTerBTQJaNguOvRmqhbE8EBIGxbvzJvwYNdKhMhAt3JUthB9G86y9UamT4XLoV6Ee6StvVYffESw4NAwTUVp2xksuhCTvxsdbN5X1fY9TXUu8kvxE2uEnzr8mb39fnMTkXXSI2okZo3779PPiYkcymR3EjIwRXMs9OhjnRmydL6nOUpx/7rrA6UizXXY+TRiXyuJCdGImFdoXUgLULzWPhbP7QLTg0VrLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OBQV+Ohgw4rC2MFsKm8LEhBcWsWoUQRtJKI3LqPqGIg=;
 b=PLQ4SsJXBYneDqcbydEbFu4+bE9CHv4DLzD1BuS3xuB4wCwQiFr3M3ke5eQPfxzcT0g5kQ7qsx5JxAeMdkN5o3iiKLwQLzXE2qvA6DUvdDtrT/cy6Ljb/XS/X9ZJiejz46lZAzrOs7wLb1OfdwgffmGZoAiWPXpheQrwXCEHoio=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by PAXPR04MB8750.eurprd04.prod.outlook.com (2603:10a6:102:20c::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.30; Sat, 2 Apr
 2022 05:23:23 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::b09c:8ffe:8e02:7387]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::b09c:8ffe:8e02:7387%9]) with mapi id 15.20.5123.030; Sat, 2 Apr 2022
 05:23:23 +0000
From: Liu Ying <victor.liu@nxp.com>
To: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Cc: kishon@ti.com, vkoul@kernel.org, robh+dt@kernel.org,
 andrzej.hajda@intel.com, narmstrong@baylibre.com,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, airlied@linux.ie, daniel@ffwll.ch,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-imx@nxp.com, agx@sigxcpu.org,
 robert.chiras@nxp.com, martin.kepplinger@puri.sm, robert.foss@linaro.org
Subject: [PATCH v6 resend 1/5] drm/bridge: nwl-dsi: Set PHY mode in
 nwl_dsi_mode_set()
Date: Sat,  2 Apr 2022 13:24:47 +0800
Message-Id: <20220402052451.2517469-2-victor.liu@nxp.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220402052451.2517469-1-victor.liu@nxp.com>
References: <20220402052451.2517469-1-victor.liu@nxp.com>
X-ClientProxiedBy: SI2P153CA0008.APCP153.PROD.OUTLOOK.COM
 (2603:1096:4:140::19) To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f8e59d9e-c2aa-4a94-cbbe-08da1468e839
X-MS-TrafficTypeDiagnostic: PAXPR04MB8750:EE_
X-Microsoft-Antispam-PRVS: <PAXPR04MB8750907AA551A1BC9E3EDF1398E39@PAXPR04MB8750.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: m/fpQx1VkOIGpS0qoxkCM+4jgz2N4GavVVxgCx/T4mKOs0Q4ISIxW+5J8QnrvZjHbt5UaBpAAzawoSHjcQc8+5xUGEiauV0VERmVex816/tJcVfK89aAOkBZ+W8LE1t8tEBVXCJ1+4mehrRo9wp/+3HiIa9emZaxT+Wrk1yXrpujjsGpAjLBRoLWPm4RsnbG1By4Vkk75xXpBrTo6F6dluveP5eC8wZjNx1vu5z4YrE26du1rFF/K/53KfqVEJjgEdile6D9X3IkuOhK1U4wHITa0ea2IOmgzhVrd2+PXv/Q9IoJLNaX4nUS8DoIf6gAd3c7eJjp4TqAa5qZQAoIsnvWjEP/xD1AJZywsCU1UHrbvje77xb78FbAJPXVEkolFKg0Pd0KpXWdQi+KqtrpPl9dpSpcdwlqSHBDg000HJUfZ7DkT0/dpLxNJK8foBFwl2Mkzkn3AOQ2cPOFunX9s0ULaHQwCdUZfOfXEi+W83LMlSwnNeY5A1tNBfqpQFhp7YfB0n/aehZ4zRbKEQQm64fSKbquS//WKg5K2oZaUTZvwHOoepkf4Sfey7zhBym1q31XEbaDe4o1sbsBD4WeQpN+phYRa4mL08f056up/+syLgcBJHZEVP1eWh1OX0l+oe2o9syk/jJyODQUDGWyuX9OzoppgQmxtkNVo1FxnGuZ9swHGkt2j3CTiQMr2ZATW/D/jh147JZfEes8jjP7Sg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7PR04MB7046.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(36756003)(6486002)(83380400001)(316002)(6512007)(52116002)(186003)(26005)(6666004)(6506007)(1076003)(2616005)(508600001)(7416002)(8936002)(86362001)(38100700002)(5660300002)(38350700002)(2906002)(66476007)(66946007)(4326008)(8676002)(66556008);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZVByOGV1REErVjgwTm1tREo5SlFPK1E2U0VENmMxQUxYL2daM2FJTnVlem4x?=
 =?utf-8?B?ZEsyWXdvSHZTejFvRTlRZHoySS96NHBRUVgvZUpKVkNqMkY5NUdUUTk2L3Rm?=
 =?utf-8?B?dlpNbmRiRE51T0l2TEpUTWVqekZ0WEJxNTBvcEFVT3VqZkloSkJuV0hncjJL?=
 =?utf-8?B?bnRsSmtRTlRWV2JqSG1SVGxYYUdLRzVNeHdpSDJScTFBaDk5dFU3NlhseEly?=
 =?utf-8?B?c1BZSDJralVVVGpDa0FCQnB6WGE3bVlMUzdWVk5XaHpRWEpiWnFHZk1JWGpW?=
 =?utf-8?B?dmQ5bzJnbDZyR2hGU1paY1lQR1duUWNjNEpFNmx4Q2pQb1N0YnpCa0lKRVBi?=
 =?utf-8?B?ZThtbkc4aFRSbjZjMUVuY2ViRHVjc0V3VzRnWVI4K1dpbDdBZms1T3hkeTJz?=
 =?utf-8?B?aEJDTkNudWJkNkQzY0EvUThTL200V1RnRUpVWlR5M1d3UXFqTkhNNll5ZytH?=
 =?utf-8?B?elU3OUdYZituNXI1RWhOajdYcHNFdmg0TFZHN1FnRnJxRlBDODNDRlowOU9W?=
 =?utf-8?B?a2JPZVpGa1crbWlQUmZsczQ1TFJ3SFY4UDQ5bGZQaHcvb3hGcGRuK0h4dFRv?=
 =?utf-8?B?L2VLbjdWMHVXMUMvR1pxdmJaOGs2cU81eW1JbVo4L1lNSjkxVWpsQ3FhSytx?=
 =?utf-8?B?V1pzRDVxUXkrRlR0TkN1UkNlckpSVE9SbS9IaSsva1JNQnNsQXcrVE00Vzhp?=
 =?utf-8?B?QXJINnNCWlQxVVpDeEp4d1B5NFNnMnBLWExTNDB5K1lUWllZS1hBK2l0MEVh?=
 =?utf-8?B?clRiMDgyaWFnVGdscEFvNzNiSi9Xd0RYVStNSXJGemJEY1RMWGxNVklqSEl1?=
 =?utf-8?B?YUkvbU5LT0t0eWRiUWNxNGhPT3lXMCt3VU5odnBscEpiMVQ3c3V5OUw1S0M1?=
 =?utf-8?B?MkNUUFp6K3VsWFVuUVloNWE2YmQ3dytPRkFwUWlyUGhYaU1yc05jSVFodmlh?=
 =?utf-8?B?RUhzQzhNcnFwSUtmNWJRcFdpbjVSMGczS3dRR1RNUDgwcVdtcE82QzNmZSsy?=
 =?utf-8?B?b3dzOHI4UzdldWlxL0phb28wOGZTVG9GVGgrYnpFRE5kTnJvTlZmaG5XZ3NX?=
 =?utf-8?B?bUNmeEpRMHJ1UWpIR1lSa0tKaU9IUHBpb21YSWI0VExWUVkvMVAxU0E5Qk93?=
 =?utf-8?B?RXRSV0FDMnJCazBCWXZvdjlOK0NlZDFONnBkMjAzY2VtbjVQcWNTY0UrYW90?=
 =?utf-8?B?L2dsMEQ1bzJ3RitKNnBQcmFRS1JVaTRlMHBzb3B0SFpLeUFtaHRXR2piaHZt?=
 =?utf-8?B?WWh2eldEUDBLbEd6ZlBDeFBQT0RjdGlsZWI5Mjd1a2xieGtxQWQwWkNSNXVq?=
 =?utf-8?B?TzlpZ25oOHV2RlFzYVlEQS95c2RRbDRTK01Tc3gzbUdIL3lSYVIrVXBBaEdm?=
 =?utf-8?B?bEN2WVkvMHE4cVoxcHNqZU5VRDhiaVhiWmJHVkgzdmV1UlJ5aGxzQ0h0WWdi?=
 =?utf-8?B?ZkZiVG9Ba2VUb2NoSWJsQWZlYjdmQmxkQk43VkM0eTJVUzdmc0VXZTZZU05a?=
 =?utf-8?B?aDJjR29OcHl5aisyd29BaEdjTm0rYjN3aFNPR3JLOHcwUitBZk1JaWRxNXdh?=
 =?utf-8?B?SDNPeVh5OUdRdk9RME5aY3Z5ME00R2llWERsR05za2tjVDV1VmVvejBGOXNr?=
 =?utf-8?B?ZmxOZDRXdlJadjkxSmVrYVhyNVVQOHluQm9CeU5GRUl1VjFqcVhPZmhUbWVW?=
 =?utf-8?B?TXhCTFVPSDRUSnNWSU1xNHBrODkyYThkSExjaWliZnl2Y2ZHcEVuNXY5N2ly?=
 =?utf-8?B?YlVCdS9NUE1kbmFLcm02aEhPMlNYMEdteUIrZlE4bUQxdnFOT0Z3ZTNIWGF2?=
 =?utf-8?B?RVlPNllWb00wM0dRdlk1TUh3OFk4WG44QjhKQTZMMnM1S1ZQK0NyZVlBSkhU?=
 =?utf-8?B?Myt6dEJoKzZVNVdCRnhrWU5ISHRReDM2QXpUbmgvVWU3OVlqYTQ3YXlGU0R0?=
 =?utf-8?B?QThWZkpjL3ZieVFzV25FckZnZmw2dDdpUVErSTRpbkJMU0t1b2t4SWFaOGda?=
 =?utf-8?B?TWRmclVTdjNTbHVZT1YxelRtRHA4RTZMTG0ralhOZVhCZElFVDVmM3ZaaGV5?=
 =?utf-8?B?QlJQNmxub0NobkZSd0tFUFVaNnNHZkFqZFltQXROWFFTTHdDYXVmK0NhZy91?=
 =?utf-8?B?ZC92MlhscGlRd0dNTXV0aTd3WXhONUNVOElKbUtrMGY2SWNiZFBKRitpb3hO?=
 =?utf-8?B?TUFwOHNDNThaN3RhenA0bXpaTitoeUxNS2UxWjhsTjkyTWtJNjllSHNnY0ow?=
 =?utf-8?B?bFpkWFpQZkF5RTIwWUpiUWFpczdZdm1kbFh0V0VMSVkvYVVaVmxoVzBCVFBS?=
 =?utf-8?B?WHF4ckVBYXlncUo5TENabGJDTjh3ZTZMWW1kKzI5SVJSR29oWWxudz09?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f8e59d9e-c2aa-4a94-cbbe-08da1468e839
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2022 05:23:23.4258 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qVdg6uXkeef2iRHM7HVNZiVicbW1A3f3cXzBwQBca2y3nAnb6BLZRe4IOn6RhHSMHfDcUuhoLNzKK2xEhRECMg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8750
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220401_222330_655089_E83E9C0F 
X-CRM114-Status: GOOD (  11.48  )
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

VGhlIE5vcnRod2VzdCBMb2dpYyBNSVBJIERTSSBob3N0IGNvbnRyb2xsZXIgZW1iZWRkZWQgaW4g
aS5NWDhxeHAKd29ya3Mgd2l0aCBhIE1peGVsIE1JUEkgRFBIWSArIExWRFMgUEhZIGNvbWJvIHRv
IHN1cHBvcnQgZWl0aGVyCmEgTUlQSSBEU0kgZGlzcGxheSBvciBhIExWRFMgZGlzcGxheS4gIFNv
LCB0aGlzIHBhdGNoIGNhbGxzCnBoeV9zZXRfbW9kZSgpIGZyb20gbndsX2RzaV9tb2RlX3NldCgp
IHRvIHNldCBQSFkgbW9kZSB0byBNSVBJIERQSFkKZXhwbGljaXRseS4KCkNjOiBHdWlkbyBHw7xu
dGhlciA8YWd4QHNpZ3hjcHUub3JnPgpDYzogUm9iZXJ0IENoaXJhcyA8cm9iZXJ0LmNoaXJhc0Bu
eHAuY29tPgpDYzogTWFydGluIEtlcHBsaW5nZXIgPG1hcnRpbi5rZXBwbGluZ2VyQHB1cmkuc20+
CkNjOiBBbmRyemVqIEhhamRhIDxhbmRyemVqLmhhamRhQGludGVsLmNvbT4KQ2M6IE5laWwgQXJt
c3Ryb25nIDxuYXJtc3Ryb25nQGJheWxpYnJlLmNvbT4KQ2M6IExhdXJlbnQgUGluY2hhcnQgPExh
dXJlbnQucGluY2hhcnRAaWRlYXNvbmJvYXJkLmNvbT4KQ2M6IEpvbmFzIEthcmxtYW4gPGpvbmFz
QGt3aWJvby5zZT4KQ2M6IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BnbWFpbC5jb20+
CkNjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAbGludXguaWU+CkNjOiBEYW5pZWwgVmV0dGVyIDxk
YW5pZWxAZmZ3bGwuY2g+CkNjOiBOWFAgTGludXggVGVhbSA8bGludXgtaW14QG54cC5jb20+ClNp
Z25lZC1vZmYtYnk6IExpdSBZaW5nIDx2aWN0b3IubGl1QG54cC5jb20+Ci0tLQp2NS0+djY6Ciog
UmViYXNlIHRoZSBzZXJpZXMgdXBvbiB2NS4xNy1yYzEuCiogU2V0IFBIWSBtb2RlIGluIC0+bW9k
ZV9zZXQoKSBpbnN0ZWFkIG9mIC0+cHJlX2VuYWJsZSgpIGluIHRoZSBud2wtZHNpCiAgYnJpZGdl
IGRyaXZlciBkdWUgdG8gdGhlIHJlYmFzZS4KKiBEcm9wIEd1aWRvJ3MgUi1iIHRhZyBkdWUgdG8g
dGhlIHJlYmFzZS4KKiBSZXNlbmQgd2l0aCBBbmRyemVqJ3MgYW5kIEplcm5laidzIG1haWwgYWRk
cmVzc2VkIHVwZGF0ZWQuCgp2NC0+djU6CiogTm8gY2hhbmdlLgoKdjMtPnY0OgoqIE5vIGNoYW5n
ZS4KCnYyLT52MzoKKiBObyBjaGFuZ2UuCgp2MS0+djI6CiogQWRkIEd1aWRvJ3MgUi1iIHRhZy4K
CiBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL253bC1kc2kuYyB8IDYgKysrKysrCiAxIGZpbGUgY2hh
bmdlZCwgNiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2JyaWRn
ZS9ud2wtZHNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL253bC1kc2kuYwppbmRleCBhNzM4
OWEwZmFjZmIuLjVmYmZjNjhhNDZhNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2JyaWRn
ZS9ud2wtZHNpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9ud2wtZHNpLmMKQEAgLTY3
Myw2ICs2NzMsMTIgQEAgc3RhdGljIGludCBud2xfZHNpX21vZGVfc2V0KHN0cnVjdCBud2xfZHNp
ICpkc2kpCiAJCXJldHVybiByZXQ7CiAJfQogCisJcmV0ID0gcGh5X3NldF9tb2RlKGRzaS0+cGh5
LCBQSFlfTU9ERV9NSVBJX0RQSFkpOworCWlmIChyZXQgPCAwKSB7CisJCURSTV9ERVZfRVJST1Io
ZGV2LCAiRmFpbGVkIHRvIHNldCBEU0kgcGh5IG1vZGU6ICVkXG4iLCByZXQpOworCQlnb3RvIHVu
aW5pdF9waHk7CisJfQorCiAJcmV0ID0gcGh5X2NvbmZpZ3VyZShkc2ktPnBoeSwgcGh5X2NmZyk7
CiAJaWYgKHJldCA8IDApIHsKIAkJRFJNX0RFVl9FUlJPUihkZXYsICJGYWlsZWQgdG8gY29uZmln
dXJlIERTSSBwaHk6ICVkXG4iLCByZXQpOwotLSAKMi4yNS4xCgoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
