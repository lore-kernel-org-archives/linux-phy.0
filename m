Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5BF4C43458
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 07:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8EHMaLSZuxUKb13sIpGduFZf8l/EDu4ImoBuurhX1ck=; b=2EmceMvr1xvh21
	6bpOvDZd7z8MxZ90UYS5IQSZk2PlcOVjXimlo0NotlZ7juH7TiIqfads6SODyjEGo8TNZOkvq9vmL
	l+1tM1qcdkLY1uJK/l6KOrvxaQOKdsx8RI9EVX+CKKQBAIFYNmKVGFXDbAnoKaomlQtUw1WC12v0g
	0FSEDUFqmlG76xUxWHCmZVAaXCd0BowVO5d0qsx0y/Qo/e11icExjnBW/tXQJKPdLqU5akWnofTKT
	CGSotrzVDLNJau9I8/lV+TZd9q+UPfIMyA6SvH74lcVfjlDWGUtV1edXpC20h+Fj93BYEZzros+6O
	uufF8ZRf0v+hW2TSWv/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfBxt-00000003kdY-2JRF;
	Thu, 02 Jul 2026 07:36:05 +0000
Received: from mx0b-0002e601.pphosted.com ([148.163.154.28])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfBxq-00000003kcH-0Pzn;
	Thu, 02 Jul 2026 07:36:03 +0000
Received: from pps.filterd (m0374955.ppops.net [127.0.0.1])
	by mx0b-0002e601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6623D8h71285453;
	Thu, 2 Jul 2026 02:35:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	proofpoint-05-2026; bh=B/16Nrq2j3v0Luk3AI9685O9jsDTRih6ilCrnv5xa
	pI=; b=D700PdZKIz457V5Thh8jFcje/Njpg6M1hNROEIW0BmmW2qzKhsvmu31uu
	+LkFZNB2szr0bTjx8Gl6zdH6Zj7tZwptVn03MkxHp6T/HrF/4wwpEgUT6xRKsooj
	QOy9M31w1uvSELWLHqOOfkjcwk9RXd6JBIY4Ylm2GvV6g4qAJSQDIq+wWPvzhmJ8
	lgDLiu3HF5HNzFP0kb+37n1Oit0fSXk/nUoft655RiTYxngKYwppYhMa9euGq0ck
	+Y7NnZIOMXmmOFHkIV+aPETDKvuuA//tAmblCUXxpqnPLQjc+bRHO26b3N45WNH2
	hy0Da5YLGg5w9mCay9mdwAwdwCI0g==
Received: from dm5pr21cu001.outbound.protection.outlook.com (mail-centralusazon11011033.outbound.protection.outlook.com [52.101.62.33])
	by mx0b-0002e601.pphosted.com (PPS) with ESMTPS id 4f5fvyh7f0-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Thu, 02 Jul 2026 02:35:49 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aO5UvjdLq6DLs4jyFF8hIiQGu/7QzSM5Q/E1E4TUm0s5mTYNVmD7ffuSUUs1oozPg8R8x2vdD0UEq1lRpnr4IoHNsdShE+O12R0usBdThcfCBIOiPre7/cE9HRM/Pswjyovv2sVVtiWMmixmEoFyHop1fclCOqGS9HodYOmY8zviBu1CE6o4CKCoZMxaF9q+ZbAAz5ES2A9ta0DeRmHMaX8rkZd7alxXOboYahDS6PrQ4REsgqxwe7LPcRVNxGSOS7djtWCYMl0fBctuVhBjgtrt+i15hILCJwCJqzbvmI/8C6hOKnwG6I73LvjichtgWMTVTfuZisyRBBv8o/f+QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B/16Nrq2j3v0Luk3AI9685O9jsDTRih6ilCrnv5xapI=;
 b=ShjpESxtmikdChXY7ZB4a4LRsUVLyleCegoupp4uw/uN0EoEej2BidRKIXc2lwcKz6LqJgZjxvWh7c7Ze5irgKRQ9pdQOUd/R5+va3k6at6uvKCvNX5On4/Qpq5OQ5WAXXwJb5yWAMBgMXjbzDnR9w7Gbjxbu7a6sSlAUZScj374YeXOPxZqTMmKTL0PYrI8wq9EYLlHcJZl/GIgdE5M7K0tbHUiAAGjRWyF7QQF2mX26EUiseSMzIh5xtqTGi9emBw3h644YK2Pko4mTDdWJpWZiRupzkDwWcWTK2LPpEcYY7F2V4rZZQ5/0RjjVYVtcXS5LX8YzsdjrzF/XXjkoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=cadence.com smtp.mailfrom=ti.com; dmarc=pass
 (p=quarantine sp=none pct=100) action=none header.from=ti.com; dkim=none
 (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B/16Nrq2j3v0Luk3AI9685O9jsDTRih6ilCrnv5xapI=;
 b=Rr+8jMRFSCaV4hQ8vt+mZVDiHPQQn2jnqrxAkWYeVe4A9IllAKmTwBomOT/5AaY2APAiIZKkRk2XATwP61tiK6zrx/8RGhRaIO2ojfg+w7vOLyhApH+SneIy6h98DTg3uczrNZZvQXzwj2Zhl/PsYxe4nWQUGHb9dSW/ODWKeR8=
Received: from DSZP220CA0006.NAMP220.PROD.OUTLOOK.COM (2603:10b6:5:280::14) by
 DM4PR10MB6231.namprd10.prod.outlook.com (2603:10b6:8:8e::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.8; Thu, 2 Jul 2026 07:35:41 +0000
Received: from DS2PEPF000061C6.namprd02.prod.outlook.com
 (2603:10b6:5:280:cafe::7e) by DSZP220CA0006.outlook.office365.com
 (2603:10b6:5:280::14) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.181.10 via Frontend Transport; Thu, 2
 Jul 2026 07:35:41 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 DS2PEPF000061C6.mail.protection.outlook.com (10.167.23.73) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.6 via Frontend Transport; Thu, 2 Jul 2026 07:35:39 +0000
Received: from DFLE206.ent.ti.com (10.64.6.64) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.37; Thu, 2 Jul
 2026 02:35:39 -0500
Received: from DFLE203.ent.ti.com (10.64.6.61) by DFLE206.ent.ti.com
 (10.64.6.64) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.37; Thu, 2 Jul
 2026 02:35:39 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE203.ent.ti.com
 (10.64.6.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.37 via Frontend
 Transport; Thu, 2 Jul 2026 02:35:39 -0500
Received: from [10.24.50.145] (a0507176-hp-z2-tower-g9-workstation-desktop-pc.dhcp.ti.com [10.24.50.145])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 6627ZYCp3385141;
	Thu, 2 Jul 2026 02:35:34 -0500
Message-ID: <f40839d9-445e-4e48-ada9-97feb8e40584@ti.com>
Date: Thu, 2 Jul 2026 13:05:33 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 net-next 1/2] dt-bindings: phy: cadence-torrent: Update
 property values to support 3 clocks
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: <conor+dt@kernel.org>, <devicetree@vger.kernel.org>, <krzk+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <neil.armstrong@linaro.org>,
        <nm@ti.com>, <robh@kernel.org>, <sjakhade@cadence.com>,
        <kristo@kernel.org>, <vigneshr@ti.com>, <vkoul@kernel.org>,
        <yamonkar@cadence.com>, Gokul Praveen
	<g-praveen@ti.com>
References: <20260701142457.81874-1-g-praveen@ti.com>
 <20260701142457.81874-2-g-praveen@ti.com>
 <20260702-vigilant-tody-of-inquire-ffbede@quoll>
Content-Language: en-US
From: Gokul Praveen <g-praveen@ti.com>
In-Reply-To: <20260702-vigilant-tody-of-inquire-ffbede@quoll>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS2PEPF000061C6:EE_|DM4PR10MB6231:EE_
X-MS-Office365-Filtering-Correlation-Id: f0b05625-500c-4e34-f38d-08ded80c83f7
X-LD-Processed: e5b49634-450b-4709-8abb-1e2b19b982b7,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|36860700016|376014|23010399003|82310400026|7416014|1800799024|4143699003|56012099006|6133799003|3023799007|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: 2SXoqBKi0XiZg/doC7mVMEdyOBqtvWY6nXjlUZhU2om63X5Eovc2pOscjhfdwGD3XqXcN0SOyK0mc+oHXFyOPL/gqJEMpic0yKMt3FPtoZf3xrWA5mL+gbinnDmGUCSyrKLrQrOBF4N8z9EwSwvbbDa8SDy13m3GsJxp/AgpxC9xSx2QlnmwVsX5zOPENmWt3xnX31utSps1dgyhRqh1XFjgzfKh+8yzl/iUh/b1MDZARl5wTbjkAh37iJSFNySKitStvpH4+W19WYXNWaqIwq8YZW5a78hRZirwbnERqmuUhdMP20v4zhUGAOScPU2A3YVrr5GOMua5KwN9LBH59Z4KL8yQi9r6cNykCefQ9yoX2CFoVqKnMy8ZBiNsGTKvBnFPgklnOig6BqVMevPHOPp8kOeVe9haQ+fAZqOMAXcrQD+ZsGE3+Z++WgrMSeFOKe5gsRzYcMFU7AU2xQE35/E2EpLVTdIRwi4L960H/Gnrdy+DGC3khWzVBue19o185LRlE/hVhkye6mHx8i+BmcyxJldI4ia0NgPgn4tPIxsQONX5SrZCX4miCNcSFKbbC9jIt0IfdjKfcKqjR7FbDeLwBki46XBQhjhEBd5Ye9NCxlwzJLqPKkkbdztEnvmJXClfPW0m7vJ0ufhDWoV7+G5kfcXKvWquFO967meKXR4L/MOb4HNkcNQ4Cem5UW3gV+i6GKu6rrhpnixoaYPHOA==
X-Forefront-Antispam-Report: CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(36860700016)(376014)(23010399003)(82310400026)(7416014)(1800799024)(4143699003)(56012099006)(6133799003)(3023799007)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: En+DtNA3/tlivybXJPaowVQdt7hQ0fwNA8BtTB9vx60g2qEk1x8Jm6NFa1GCp1DJGVADeCI+f2GZUranrb2Hs3JTPKgIWheA8/qah3c2mflQkthzrjVA1Y5aV+SDjX3HqqgAlciCee5qnAL1RZmfMIvM9uKu3ymQH1gfEbNCKg3sfwP4whLrVYtnvXdRT/XlPTYbZ7UGGBzmCNTQPEAM+t6faQXcNJcGwsxLbaUm33BjSR989bidg5wl5K4Dz9HFbCZNE0SLPgozl7fbCW6UWG+XgQ31qwABQAIvJx/SRMtJWExq4uLjqoBQHUDzTO5RuZbjJQXt+GoowzDHKcLo3suLgCP46WrutOVJtIXlU4IrdcQOupjDgiQAo0mdNCQMfgMygC7OuIcp5wfClX07bGaSuPgqfQTC6Q2AoWLoCyujvbbCpo4yd/w1af9mDhxn
X-Exchange-RoutingPolicyChecked: hZOu0qx08HeZbUBpT3kaNS4JltDQYfyMwFM3dgICNbKC4j0ZXSOn4MX9RF7pdk/z0NRn+VwGU80i3mE9IViIJ8Zgt1TzotsGf9oq0B4YFdxibRb1lDVI8wTE5MKSfn9mmrK5+LXYbIxUXGcUm7eHRqNSG+I/uBtyIMPggtWIgeQhvnFjQ5kX/U85F5t5QvyMAGOjlCFcWOgt/B43hlFeez1ceD/3an31n67qHlR5/j2MPxynW6IDMp4jB/7TvOZ798iElxGippbeqlkcLk29eVxrdkx45YVmm03TA3oHEOU5Ffxq4BdV/4kMpxaSM8UbPgkP0d57zAKSDDpMfyPn1Q==
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jul 2026 07:35:39.7534
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f0b05625-500c-4e34-f38d-08ded80c83f7
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource: DS2PEPF000061C6.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR10MB6231
X-Proofpoint-ORIG-GUID: F7BCffdAdQAikAqgKYr5uV7wITr39Ktv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAyMDA3NyBTYWx0ZWRfX/ceV7oBJqSJR
 G8U94KUOX4kOP8gGVIdPZwntW3Ca0EevkVTTqpqnI5iJ6neHoSnopI7bStgNqZqcpt+LHAmfwPu
 KygWpoE6Bi5Zy/+HZnUdrBaZ9LmxNU8MM7Cf5XJefZ8lyGkIE55bzEF5AHOKGngyU31NE7klgW5
 bbtJigL8sCRta42mohmFP8m4no038/LRWgXTJKDgKEiIhvj4Pj4JuA0a9UTZrpuQGNDkGDYYSPL
 TllZCYGuTOzE1aY1tykwSPT4aAXn/ePggvbNaCV6Oy7QRmPostu0V7qPScwmcXNLOTgjLCcAZ9i
 s83/CJQqHkYUirXqzhaJ16WcDelv86mFUAkYD+sCQPXFtfNGETRtojIz+OMhdLK8TyXxpQlzVrf
 P1jAb0GIiINw0turfjESgzr0fVgYRHVhoavd+SSs/9dOVbvvjA+rXvlgXPmAxcpEcXM9l18cFoE
 /rVN0YQQm140KWsF+OQ==
X-Proofpoint-GUID: F7BCffdAdQAikAqgKYr5uV7wITr39Ktv
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAyMDA3NyBTYWx0ZWRfXyrF8r40g/nGQ
 Df9aAhSCgdayGwoWrcG/YHZcqjmdb9rQcmzh+gVFg4lDA5pYk2XusQcny0QPYB7V688dJAx3M0k
 vh6yJGrs1uQcmzkA2O71j5njSPfsCPk=
X-Authority-Analysis: v=2.4 cv=T+q8ifKQ c=1 sm=1 tr=0 ts=6a4614d5 cx=c_pps
 a=4QVYENZnsEoURNel/cbnog==:117 a=tJyPKKxUohctrY4NYmUjkA==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10
 a=V5UXEbMT0ywA:10 a=VkNPw1HP01LnGYTKEx00:22 a=Z8NIEmU8O1QQgoT56wFK:22
 a=fPAWb5peG099m5CrUpKH:22 a=sozttTNsAAAA:8 a=CLAEbvughUuGTxuK6hcA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-02_01,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 phishscore=0 adultscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 lowpriorityscore=0 impostorscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607020077
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_003602_378494_1D54E56A 
X-CRM114-Status: GOOD (  27.61  )
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

SGkgS3J6eXN0b2YsCgpPbiAwMi8wNy8yNiAxMTo1MywgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90
ZToKPiBPbiBXZWQsIEp1bCAwMSwgMjAyNiBhdCAwNzo1NDo1NlBNICswNTMwLCBHb2t1bCBQcmF2
ZWVuIHdyb3RlOgo+PiBVcGRhdGUgbWF4SXRlbXMgdmFsdWUgb2YgImNsb2NrcyIgcHJvcGVydHkg
dG8gMyBhcyBkZXNjcmlwdGlvbiBvZgo+PiB0aGlzIHBhcmFtZXRlciBhbHJlYWR5IGluZGljYXRl
cyAzIGNsb2NrcyhyZWZjbGsscGxsMV9yZWZjbGsob3B0aW9uYWwpCj4+IGFuZCBwaHlfZW5fcmVm
Y2xrKG9wdGlvbmFsKSkuCj4gQnV0IHdoYXQgaWYgZGVzY3JpcHRpb24gaXMgd3Jvbmc/IFlvdSBu
ZWVkIHRvIHByb3ZpZGUgcmF0aW9uYWxlIHdoeSB5b3UKPiBhcmUgZG9pbmcgaXQgYW5kIHlvdSBj
YW5ub3QgdXNlIGV4aXN0aW5nIGNvZGUgYWxvbmUgYXMgdGhhdCByYXRpb25hbGUsCj4gYmVjYXVz
ZSBhcyB5b3UgcG9pbnRlZCBvdXQgLSBleGlzdGluZyBjb2RlIGlzIG5vdCBmdWxseSBjb3JyZWN0
LgoKVGhlIGRlc2NyaXB0aW9uIGlzIGNvcnJlY3QgYmVjYXVzZSBub3QgYWxsIGRldmljZSBtYXkg
aGF2ZSAyIGlucHV0wqAgCnJlZmVyZW5jZSBjbG9ja3MgLCBoZW5jZSBrZWVwaW5nIHRoZSByZXF1
aXJlbWVudCBvZiB0aGUgMm5kIHJlZmVyZW5jZSAKY2xvY2socGxsMV9yZWZjbGspIG9wdGlvbmFs
LgoKSnVzdCBhcyBhIG5vdGU6IHBoeV9lbl9yZWZjbGsgaXMgYW4gb3V0cHV0IGNsb2NrLgoKSW4g
dGhvc2UgY2FzZXMgdGhlIG11bHRpbGluayBzZXJkZXMgY29uZmlndXJhdGlvbnMgcmVxdWlyaW5n
IDIgZGlmZmVyZW50IAppbnB1dCByZWZlcmVuY2UgY2xvY2tzIHdpbGwgbm90IHdvcmsgZHVlIHRv
IHRoZSBsaW1pdGF0aW9uIG9mIGhhdmluZyAKb25seSAxIGNsb2NrLgoKSG93ZXZlciwgd2hlbiBp
dCBjb21lcyB0byBkZXZpY2VzIHdoZXJlIDIgZGlmZmVyZW50IGlucHV0IHJlZmVyZW5jZSAKY2xv
Y2tzIGFyZSBzdXBwb3J0ZWQgYW5kIGEgbXVsdGlsaW5rIHNlcmRlcyBjb25maWd1cmF0aW9uIGlz
IApuZWVkZWQod2hlcmUgdGhlIGxpbmtzIHJlcXVpcmUgc2VwYXJhdGUgcmVmZXJlbmNlIGNsb2Nr
cyBmb3IgZWFjaCAKcHJvdG9jb2wgc28gYXMgdG8gY2F0ZXIgdG8gdGhlwqDCoGRpZmZlcmVudCBj
bG9ja2luZyBzcGVlZCByZXF1aXJlbWVudHMgb2YgCnRoZXNlIGxpbmtzKS4KCkhlbmNlLCBpbiB0
aGlzIGNhc2UgLDIgZGlmZmVyZW50IGlucHV0IGNsb2NrcyBhcmUgbmVlZGVkIHNvIGFzIHRvIGNh
dGVyIAp0byAyIGRpZmZlcmVudCBjbG9jayBzcGVlZHMuCgpGb3IgZWc6IEluIHRoZSBVU1hHTUlJ
K1NHTUlJIG11bHRpbGluayBzZXJkZXMgY29uZmlndXJhdGlvbiB3aGljaCBJIGhhZCAKdGVzdGVk
LCBpdCBmYWlsZWQgYmVjYXVzZQoKVVNYR01JSSByZXF1aXJlcyBhbiBpbnB1dCBjbG9jayBzcGVl
ZCBvZiAxNTYuMjUgTWh6IGFuZCBTR01JSSBwcm90b2NvbCAKcmVxdWlyZXMgYW4gaW5wdXQgY2xv
Y2sgc3BlZWQgb2YgMTAwIE1oei4KCkJ1dCwgc2luY2UgdGhlcmUgd2FzIG9ubHkgb25lIGlucHV0
IGNsb2NrKHJlZmNsaykgbWVudGlvbmVkIGluIHRoZSAKY2xvY2tzIGFuZCBjbG9jay1uYW1lIHBh
cmFtZXRlciAsIHRoaXMgbXVsdGlsaW5rIHNlcmRlcyBjb25maWd1cmF0aW9uIApmYWlsZWQuCgpI
ZW5jZSwgdG8gbWFrZSBpdCB3b3JrLCB0aGUgcGxsMV9yZWZjbGsgaGFkIHRvIGJlIGFkZGVkIHdo
aWNoIHByb3ZpZGVkIGEgCmNsb2NrIHNwZWVkIG9mIDE1Ni4yNSBNaHogZm9yIFVTWEdNSSBhbmQg
dGhlIHJlZmNsayBwcm92aWRlZAoKYSBjbG9jayBzcGVlZCBvZiAxMDAgTWh6wqAgZm9yIFNHTUlJ
LgoKPj4gVXBkYXRlIHRoZSBtYXhJdGVtcyBhbmQgaXRlbXMgdmFsdWUgb2YgImNsb2NrLW5hbWVz
IiBwcm9wZXJ0eSB3aXRoIG11bHRpcGxlCj4+IGNvbWJpbmF0aW9uIG9mIGNsb2NrLW5hbWVzIHBv
c3NpYmxlIHNpbmNlIHBsbDFfcmVmY2xrIGFuZCBwaHlfZW5fcmVmY2xrIGFyZQo+PiBvcHRpb25h
bCBjbG9ja3MuCj4gV2h5PyBZb3UgbmVlZCB0byBkZXNjcmliZSB3aHkgeW91IGFyZSBkb2luZyB0
aGlzLCBub3Qgd2hhdCB5b3UgYXJlCj4gZG9pbmcuClN1cmUgLCBLcnp5c3p0b2YsIEkgd2lsbCBi
ZSBjYXJlZnVsIGFib3V0IHRoYXQgYW5kIHByaW9yaXRpemUgdGhhdCBpbiAKdGhlIGNvbW1pdCBt
ZXNzYWdlLgo+PiBTaWduZWQtb2ZmLWJ5OiBHb2t1bCBQcmF2ZWVuIDxnLXByYXZlZW5AdGkuY29t
Pgo+PiAtLS0KPj4gICAuLi4vYmluZGluZ3MvcGh5L3BoeS1jYWRlbmNlLXRvcnJlbnQueWFtbCAg
ICAgICAgfCAxNiArKysrKysrKysrKystLS0tCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2Vy
dGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3BoeS1jYWRlbmNlLXRvcnJlbnQueWFtbCBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcGh5LWNhZGVuY2UtdG9ycmVudC55YW1s
Cj4+IGluZGV4IDlhZjM5YjMzNjQ2YS4uOTZjNjY0ZDUwNjI5IDEwMDY0NAo+PiAtLS0gYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3BoeS1jYWRlbmNlLXRvcnJlbnQueWFt
bAo+PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3BoeS1jYWRl
bmNlLXRvcnJlbnQueWFtbAo+PiBAQCAtMzQsNyArMzQsNyBAQCBwcm9wZXJ0aWVzOgo+PiAgIAo+
PiAgICAgY2xvY2tzOgo+PiAgICAgICBtaW5JdGVtczogMQo+PiAtICAgIG1heEl0ZW1zOiAyCj4+
ICsgICAgbWF4SXRlbXM6IDMKPj4gICAgICAgZGVzY3JpcHRpb246Cj4+ICAgICAgICAgUEhZIGlu
cHV0IHJlZmVyZW5jZSBjbG9ja3MgLSByZWZjbGsgKGZvciBQTEwwKSAmIHBsbDFfcmVmY2xrIChm
b3IgUExMMSkuCj4+ICAgICAgICAgcGxsMV9yZWZjbGsgaXMgb3B0aW9uYWwgYW5kIHVzZWQgZm9y
IG11bHRpLXByb3RvY29sIGNvbmZpZ3VyYXRpb25zIHJlcXVpcmluZwo+PiBAQCAtNDUsOSArNDUs
MTcgQEAgcHJvcGVydGllczoKPj4gICAKPj4gICAgIGNsb2NrLW5hbWVzOgo+PiAgICAgICBtaW5J
dGVtczogMQo+PiAtICAgIGl0ZW1zOgo+PiAtICAgICAgLSBjb25zdDogcmVmY2xrCj4+IC0gICAg
ICAtIGVudW06IFsgcGxsMV9yZWZjbGssIHBoeV9lbl9yZWZjbGsgXQo+PiArICAgIG1heEl0ZW1z
OiAzCj4gRHJvcApTdXJlLCBpIHdpbGwgZG8gdGhhdCBLcnp5c3p0b2YuCj4+ICsgICAgb25lT2Y6
Cj4+ICsgICAgICAtIGl0ZW1zOgo+PiArICAgICAgICAgIC0gY29uc3Q6IHJlZmNsawo+PiArICAg
ICAgLSBpdGVtczoKPj4gKyAgICAgICAgICAtIGNvbnN0OiByZWZjbGsKPj4gKyAgICAgICAgICAt
IGVudW06IFsgcGxsMV9yZWZjbGssIHBoeV9lbl9yZWZjbGsgXQo+IERyb3AgdGhlc2UsIHBvaW50
bGVzcy4gWW91IHdlcmUgc3VwcG9zZWQgdG8gZ3JvdyBleGlzdGluZyBzeW50YXguCj4KPj4gKyAg
ICAgIC0gaXRlbXM6Cj4+ICsgICAgICAgICAgLSBjb25zdDogcmVmY2xrCj4+ICsgICAgICAgICAg
LSBjb25zdDogcGxsMV9yZWZjbGsKPiBTbyBoZXJlIGlzIHRoZSBlbnVtLgo+Cj4+ICsgICAgICAg
ICAgLSBjb25zdDogcGh5X2VuX3JlZmNsawo+IEFuZCB0aGlzIHN0YXlzLgo+Cj4gWW91IG1ha2Ug
Y2hhbmdlcyB3aGljaCBkbyBub3QgbWFrZSB0aGUgYmluZGluZyBiZXR0ZXIgYW5kIGFyZSBub3QK
PiBleHBsYWluZWQgaW4gY29tbWl0IG1zZy4gRm9jdXMgb24gV0hZIHlvdSBhcmUgZG9pbmcgdGhp
bmdzIGFuZCBhbHNvCj4gZXhwbGFpbiBXSFkgeW91IGRpZCBzdWNoIGNvbXBsaWNhdGVkIHN5bnRh
eCAoaWYgeW91IGluc2lzdCBvbiByZXdyaXRpbmcKPiBjb3JyZWN0IGNvZGUgaW50byBzb21ldGhp
bmcgb2RkIHdlIGRvIG5vdCBleHBlY3QpLgoKU28sIHRoZSByZWFzb24gSSBhZGRlZCB0aGUgb25l
T2YgcHJvcGVydHkgaXMgdG8gc3VwcG9ydCB0aGUgZm9sbG93aW5nIApjb21iaW5hdGlvbnMgYmVj
YXVzZSBwbGwxX3JlZmNsayBhbmQgcGh5X2VuX3JlZmNsayBhcmUgb3B0aW9uYWwgY2xvY2tzLiAK
V2l0aCB0aGUgZWFybGllciBlbnVtICwgb25seSBlaXRoZXIgb2YgcGxsMV9yZWZjbGsgb3IgcGh5
X2VuX3JlZmNsawoKY2FuIGJlIHVzZWQgYW5kIGJvdGggY2Fubm90IGJlIHVzZWQgYXQgdGhlIHNh
bWUgdGltZS4KCkNvbWJpbmF0aW9uIDE6IHJlZmNsawoKQ29tYmluYXRpb24gMiA6IHJlZmNsaywg
cGxsMV9yZWZjbGsKCkNvbWJpbmF0aW9uIDM6IHJlY2xrLCBwaHlfZW5fcmVmY2xrCgpDb21iaW5h
dGlvbiA0OsKgcmVmY2xrLCBwbGwxX3JlZmNsaywgcGh5X2VuX3JlZmNsawoKClBsZWFzZSBmZWVs
IGZyZWUgdG8gc3VnZ2VzdCBhbnkgYWx0ZXJuYXRpdmUgc29sdXRpb24gdG8gc3VwcG9ydCB0aGVz
ZSAKY29tYmluYXRpb25zIC4KCj4KPiBCZXN0IHJlZ2FyZHMsCj4gS3J6eXN6dG9mCj4KPgoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
