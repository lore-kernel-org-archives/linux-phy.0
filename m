Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E217C55167
	for <linux-phy@archiver.kernel.org>; Fri, 31 Jul 2026 10:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:CC:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uSitydKknjO4HSmJaPDEibbKSsqWIjia50llo3YjwtM=; b=oKpDn1+wlM2QsQ
	X/tpMAamohdVlTRiRM6VaQ10iQvtr/GYdOG53/3nwrtD+TarFHaYXjdQtgdQ6taR65B4x92G9g6/O
	Ubtdnl9dyZz4xMLZZOR20sszkOHCR2vHUnHKi2rIAPfJ5bEpabIGnMuGw36F54Vh9fdBQVnwchnLt
	Sx/wjnn/Z6ah69F6vh0mienURTWb7XMrohp3JWKxYIVnoJACiY84NlrsHk40gbjKJ2f+8T4DIs8dV
	3srMBV67DIo937ipJ2Eh/uwls1qgmzOqnJJsg+q+B71B9m8+EipYe8WmTTIcebOp7l9LR9ASfGm9E
	X/vlkMHSS0ZvfJrYPdnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpkL3-0000000CJ4R-2Pqe;
	Fri, 31 Jul 2026 10:19:37 +0000
Received: from mx0a-0002e601.pphosted.com ([148.163.150.75])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpkL0-0000000CJ3Q-2hjP
	for linux-phy@lists.infradead.org;
	Fri, 31 Jul 2026 10:19:36 +0000
Received: from pps.filterd (m0380145.ppops.net [127.0.0.1])
	by m0380145.ppops.net (8.18.1.11/8.18.1.11) with ESMTP id 66VABSsi3828221;
	Fri, 31 Jul 2026 05:19:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	proofpoint-05-2026; bh=GkzYZbwveVpS+7fay6wUjA5jvdKS+zDCn6g2LXWgI
	6c=; b=Qo/OgZyNd+uLCiw5YhoDPhBihhxtQXaJt+FBtxnwGP0PDUINM5LoXT1uo
	W1TQU4tPBFaBo7UbL9UR8CUjFpiSgSxlRel7LQQ9MJPmbcgiJk3R64BESltKjbFi
	aY/ubPJAuuxdpNn7BAI5h3wpn+UqNQu7SF7Ff3NDDwWVm06xiWHfVWCusCzKgzsa
	U8KYOJUDcSFKW1fp9iM4Y2PXBRq5yd07wGPJVf0tgGe3V6qmpzJGpEewa/h84rvj
	rYmO6mlTh93C7NajmdRg/PUL4NMAGXDi6a2tpjKLOGLDvt96bmpzWFpZpGfSF/ZP
	BNZPp5h6zsT34J7GbVDQ/JD99W+Rg==
Received: from ch1pr05cu001.outbound.protection.outlook.com (mail-northcentralusazon11010059.outbound.protection.outlook.com [52.101.193.59])
	by m0380145.ppops.net (PPS) with ESMTPS id 4frsr2r186-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Fri, 31 Jul 2026 05:19:30 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZnFqDJeutVxpaZg7DYyp6nViDAfJoyEW6cSMiYXh3vvmWm0OgzLojaK15pfa276iDs9XWnStX2oFJwc0jJdCTltJOxX3APDeBKUxB0ND2RVfXAo6lw1Z+KrX+VCFdkcKRSwAWrA+FWvZ2WpdlWLgQ804D3YKBw7BjH6/OAEJRFNJjp/oeWX0fcg2YZJtWedAvGosD3YT8QNweHSVqOfAGrITm7k9rCRl8UHmxZevSvo5HWzPzgTWdmkZknS5DSUEbSkglabg0fGvvEl/7EvV1kJ5ON866Q0UF/f0F/4rXSsTE/TXTR7U346DVUyvIHs5gQ0ROJN5NSd6TLW3Iy6ktw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GkzYZbwveVpS+7fay6wUjA5jvdKS+zDCn6g2LXWgI6c=;
 b=KRCuoUCJ90wSyXLGxs8bP/oLjYeTLz3MmloWJLBryXdCktyoUe+fvys2RO2oO5qMF03MpmMm031iZYgyKT/oQPwtWzSaS4/G2OuthcdunzKURZz5mopc1R/4OLDZAQ8Up4rAyYb9B/UX39Gr2lvycPXFU8rrujoV2e0JvthXGEmQUJK/7W+wZTOcR0A6RkuhK+f47IUoWNPwxRWtSV0ZISOMCJRdoOnok9/F+LiH5ALIwU8xiJgX8yCnSaHdRdK5kjD43fGWSNLQcFLCJlB+VQDlgACRVAxW+yuqyp89ZNcDqGfOtqEYNp7fqi48rrh8o9H54UqyECyYT+51fAa5kQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=cadence.com smtp.mailfrom=ti.com; dmarc=pass
 (p=quarantine sp=none pct=100) action=none header.from=ti.com; dkim=none
 (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GkzYZbwveVpS+7fay6wUjA5jvdKS+zDCn6g2LXWgI6c=;
 b=G7v+KsJ0t0lSzOaKld4bY5I/b6N2WRxIqmspmchaIIHJ0W800+qQgC6bK/qZqTzQj/2sFAa6CuXD6Klmfl2S7F790EriRL7iXHeuhGrMfsb3BUUGfqo5RNiM4DzOcOyZecfEeU7XmIkJhO11MENewLvlBVASt9gbTh6CpnbxXfI=
Received: from IA1P220CA0023.NAMP220.PROD.OUTLOOK.COM (2603:10b6:208:464::7)
 by CH2PR10MB4230.namprd10.prod.outlook.com (2603:10b6:610:a5::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.270.15; Fri, 31 Jul
 2026 10:19:28 +0000
Received: from BN2PEPF00004FBD.namprd04.prod.outlook.com
 (2603:10b6:208:464:cafe::13) by IA1P220CA0023.outlook.office365.com
 (2603:10b6:208:464::7) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.270.16 via Frontend Transport; Fri,
 31 Jul 2026 10:19:27 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 BN2PEPF00004FBD.mail.protection.outlook.com (10.167.243.183) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.292.8 via Frontend Transport; Fri, 31 Jul 2026 10:19:27 +0000
Received: from DLEE200.ent.ti.com (157.170.170.75) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.37; Fri, 31 Jul
 2026 05:19:27 -0500
Received: from DLEE204.ent.ti.com (157.170.170.84) by DLEE200.ent.ti.com
 (157.170.170.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.37; Fri, 31 Jul
 2026 05:19:27 -0500
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE204.ent.ti.com
 (157.170.170.84) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.37 via Frontend
 Transport; Fri, 31 Jul 2026 05:19:27 -0500
Received: from [10.24.53.154] (a0507176-hp-z2-tower-g9-workstation-desktop-pc.dhcp.ti.com [10.24.53.154])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 66VAJNCV361104;
	Fri, 31 Jul 2026 05:19:23 -0500
Message-ID: <2a68a7f4-69c2-4381-80ae-fce03e94a8b9@ti.com>
Date: Fri, 31 Jul 2026 15:49:22 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6] dt-bindings: phy: cadence-torrent: Update clocks for
 multilink SERDES
From: Gokul Praveen <g-praveen@ti.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: "conor+dt@kernel.org" <conor+dt@kernel.org>,
        "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>,
        "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
        "neil.armstrong@linaro.org" <neil.armstrong@linaro.org>,
        "robh@kernel.org"
	<robh@kernel.org>,
        "sjakhade@cadence.com" <sjakhade@cadence.com>,
        "vkoul@kernel.org" <vkoul@kernel.org>,
        "yamonkar@cadence.com"
	<yamonkar@cadence.com>,
        "Vadapalli, Siddharth" <s-vadapalli@ti.com>,
        "Gokul
 Praveen" <g-praveen@ti.com>
References: <20260722061831.1045884-1-g-praveen@ti.com>
 <20260723-venomous-nuthatch-of-inquire-dade7b@quoll>
 <0b8a91f0-8a2e-4dfa-aecf-acb865442d53@ti.com>
 <eac428f3-fbab-437b-a881-e0d333de8360@ti.com>
Content-Language: en-US
In-Reply-To: <eac428f3-fbab-437b-a881-e0d333de8360@ti.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN2PEPF00004FBD:EE_|CH2PR10MB4230:EE_
X-MS-Office365-Filtering-Correlation-Id: d035ffae-1a44-4a3f-a822-08deeeed33e0
X-LD-Processed: e5b49634-450b-4709-8abb-1e2b19b982b7,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|82310400026|1800799024|23010399003|36860700016|22082099003|18002099003|6133799003|10067099003|4143699003|56012099006;
X-Microsoft-Antispam-Message-Info: VbmA4By1Oxcobmna2W9ckmVTjnf2q/xNC5CLWZ3uFOPKEK9MWI7Y5mALM37LlaKP1isMMc5PN4RajcehKmgSNgoeiKTzKfs3Ml5M/tydTJmtLPXFmDm5aZag2A6JphS73+/V8xEuufz6V6EXzESVQ37SP+oe/YSwOB4JUamCn1a6iCApMRbCAkef4J5MvXMT7HCdaGJLPpehdtmmyzEmomAgTW2fMQC4GmYPJx4kU8jQ43Ow/DyuarMf4wBFk9UqQPlIKQbLT91rydefaD3yat2f8CuKZp+gRx6GufEcQzpWmSFkz24iGKkFct9VslKo/s3fIQO0DkyTBFN/YG7L+qQTUSmG/A3ZY/EtUflWeQ1sgSPTokFfiwKvWInXwq7HARv/tp8phLRSqvvOXpWM10m4mgeWOfnoAtPhYm0gFizOOwokRIVPiJlBYt5qdpEavhKfJEyU7xbbYhKVIV1UhaIMJFd8T1LqsU6oy0x8LCiO8SRCzWRNFu6wI0Y4r5FR8Cj7rHTiA0QKbIYMiR6nmdwzax/CFu5s1tLOIhWRdhfhII+VaHrnMIyLCZBvo5Si6xXgo7hgDAej0eSLxQwjJH8Ctw9tI0DyPsbPqMZ0kumEhNAQ/MrInGBIXDY4mekpAC2s/aIul4KgDVtmB/m4mrnfSA7pO9Jp/QPiKJdAAs46CfJ+bfuYejhf9LxDZMgyh7aJE1NIWQzMhstsRPzmIA==
X-Forefront-Antispam-Report: CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(7416014)(82310400026)(1800799024)(23010399003)(36860700016)(22082099003)(18002099003)(6133799003)(10067099003)(4143699003)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: kAPT41lv7Pst2lNcK1QEeqTeHiRhqatMybGbr2P8YI1XNdGUUlrSL12gJzpRPv2GMrkMQ7LXfW7Rmls2KEjCidnDaVKg8cQGy5VWgZIdFhyjnSCUvZWmf40M+SqQkRhp5mWTgd208oc+wrFoyHnc8awrxbtoqNdXBQqwiaAe81ErzX3OOZ0imPxGI3gozdXoX4JNxoePVq4swnqIdNe/pLkc01Ln4IaPZmLjJrVqIpyCVD3L22fgGiPGtU3hPC0Eqy983rRopIQozEaUXdVscY5zskLUE3weCR/E8R3zxdatC/U8CeMU4Uwlyu17Kl/BgJdTCuMLZU3ag1TmRsrXgjN0TGtTahpuHmVm1RHI9iFuyW6jNlLcTXYybe9RFZiucpaUPi2/mjO119yvCTzvAWrPRlmdjvLME6WAVXgdG7k7XXDkLsOi9ZGzf4wJY5JO
X-Exchange-RoutingPolicyChecked: WXVb0/jJNSmi50CxtnnyGXUZzl7vzgD0zjolBBXo9l7j0dfcH4W1DVp64ar2XR0UGyFvjx5u12IGAcwWG6VQxVrtQLp6rTc/v0CC4jQA+s3vc1TwzTnbZ5Ifu6MNxA4T6jjqER9jnabyoTVz/NV0jBZIX/Rx6FiHdkEz1WRTeCfliZUcu2ta/Bb7mmW6VXc4AAUSMpsu8Y+9vdzIHG9VBzqEIUAVNxhTNZD47bOrUlFJ95Kq8gz2Sn7lBNuc2NC5ENy4I4pH67KxagCoBJ4jpluoGLlwcBxVhHieLeTzfdS77dhKl+yJJdY777EIv5pPkHqGj7y83qfSpfO9DYVDLw==
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2026 10:19:27.6954
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d035ffae-1a44-4a3f-a822-08deeeed33e0
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource: BN2PEPF00004FBD.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR10MB4230
X-Proofpoint-ORIG-GUID: bL4ozUKU-QOI00q--_PWIs-wOTficjG0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzMxMDA3NyBTYWx0ZWRfX137s+fS5tmYI
 jObu0w4GkvMhPZTq/9+kUTZ3WeyCByfaOm39aLF1ZO5w1+UzKC74oLwMBdvt/FcFGhqqbY/WIcZ
 fPwaZQ1iPKDNKLNueoKY8/V5P1x0G8nua/fYkRPYvSdNU9L14d+iF9H/guEuB7PDq63WoVaoFi+
 EGs1iSaQDpBc9PnCa/eqoQwrsOqDImJPXeoCJfOmmkKOopccPyaafb0iLsP+c0uLbMfqTQCrqLM
 +5d9h+4eDLyNlxrZTm2ZN8kRAzh/KRGevIzfF7vmIshqvmSN0aPi9bUzx4qcIS+HrKKJfil+Xwc
 biuNHEYzmEyaDKWcjT4M6lrdBYXCOs2lGqiKROgTJFQ3dLpqNxIl992TC5ZndA9mN8P6/cLmmcY
 +VxbHWe/yS135CVkbu+AUVXnqPj0ye/i/H9+Q6uIyzsCAvePeu7vTzt0Nupt2Ms/QdUSB2l+/yz
 bzbdGUfS2pZKT8sGlYg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzMxMDA3NyBTYWx0ZWRfX+0Fd3FyauPC+
 aL0fP27aRj9N7Wn08xCLIXeLLoL/E8F9++QY/lWiC1BMLv5O9DU01BPfjYbiwMMglmOlxtZxS72
 qPU6yjJnquJKEPtUdOAODEq4diAeQfY=
X-Authority-Analysis: v=2.4 cv=AND4Gsx+ c=1 sm=1 tr=0 ts=6a6c76b2 cx=c_pps
 a=n1uwvu+HdmtEBt1mSuDWUg==:117 a=f+v6EHfkeJbVwR46tk4DMg==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10
 a=s63m1ICgrNkA:10 a=V5UXEbMT0ywA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Z8NIEmU8O1QQgoT56wFK:22 a=gO1vWkAQAl3rybz1DQOp:22 a=op-5ZcJYgarCg6pnr48A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: bL4ozUKU-QOI00q--_PWIs-wOTficjG0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-31_03,2026-07-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0
 spamscore=0 bulkscore=0 impostorscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607310077
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260731_031934_823534_B218FED5 
X-CRM114-Status: GOOD (  13.62  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

SGkgS3J6eXN6dG9mLAoKQXBvbG9naWVzIGZvciB0aGUgcmVtaW5kZXIuIEhvcGUgSSBoYXZlIGNs
YXJpZmllZCB5b3VyIHF1ZXJpZXMuCgpCZXN0IFJlZ2FyZHMKCkdva3VsIFByYXZlZW4KCk9uIDI3
LzA3LzI2IDE1OjA1LCBHb2t1bCBQcmF2ZWVuIHdyb3RlOgo+IEhpwqAgS3J6eXN0b2YsCj4KPiBI
b3BlIHRoaXMgY2xhcmlmaWVzIHlvdXIgcXVlcnkuCj4KPiBCZXN0IFJlZ2FyZHMKPgo+IEdva3Vs
IFByYXZlZW4KPgo+IE9uIDIzLzA3LzI2IDE1OjQ1LCBHb2t1bCBQcmF2ZWVuIHdyb3RlOgo+PiBI
aSBLcnp5c3R6b2YsCj4+Cj4+IE9uIDIzLzA3LzI2IDEyOjQ1LCBLcnp5c3p0b2YgS296bG93c2tp
IHdyb3RlOgo+Pj4gT24gV2VkLCBKdWwgMjIsIDIwMjYgYXQgMTE6NDg6MzFBTSArMDUzMCwgR29r
dWwgUHJhdmVlbiB3cm90ZToKPj4+PiBGb3IgbXVsdGlsaW5rIFNFUkRFUyBjb25maWd1cmF0aW9u
cyB3aGVyZSBlYWNoIGxpbmsgcmVxdWlyZXMgYQo+Pj4+IGRpZmZlcmVudCBjbG9jayBmcmVxdWVu
Y3ksIHRoZSBTRVJERVMgcHJvdmlzaW9ucyBhbiBhZGRpdGlvbmFsCj4+Pj4gcmVmZXJlbmNlIGNs
b2NrIGZvciBQTEwxLiBIZW5jZSwgZG9jdW1lbnQgaXQuCj4+PiBUaGUgcGxsMSBpcyBhbHJlYWR5
IHRoZXJlLgo+PiBZZXMsIGJ1dCB0aGUgZXhpc3RpbmcgY29uZmlndXJhdGlvbiBoYXMgYSBsaW1p
dGF0aW9uIGFzCj4+Cj4+IGl0IGRvZXMgbm90IGFsbG93IGJvdGggcGxsMSBhbmQgcGh5X2VuX3Jl
ZmNsayB0byBiZSB1c2VkIGF0IHRoZSBzYW1lIHRpbWUuCj4+Cj4+PiBBbHNvLCB0aGUgVEkgdmFy
aWFudCBkb2VzIGl0IG9yIGNkbnMgb25lIG9yIGJvdGg/Cj4+IEJvdGggb2YgdGhlbS4KPj4KPj4g
QmVzdCBSZWdhcmRzCj4+Cj4+IEdva3VsIFByYXZlZW4KPj4KPj4+IEJlc3QgcmVnYXJkcywKPj4+
IEtyenlzenRvZgo+Pj4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
