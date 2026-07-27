Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1850C531D0
	for <linux-phy@archiver.kernel.org>; Mon, 27 Jul 2026 09:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:CC:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FuI7Kx1eK6Brywq/Ih9btM1Hp1aFBk22nD/0MRKvFyA=; b=bN8g6Zc0Yl0xUQ
	9pnduPTvSl8EpX+6Jx0zuGNlCrOcfINn3Hir0FsO8h/07w2exeTz5NwycB0RHxjMO+KVADJ8PzWd0
	G27Ioy8F9Cchke9Wa6/C5oT4wqncN0t31Goxwx/5uKEji39GImHS1derr+k88NIQSaSxieZmW6Q8n
	3jjH2wxFq61JE1kPb5NUg1L6LjQW8mgTzi9jiNaHUdC446bFJchMt0gOi6LpBIl8CrBDkndeC1pM/
	Z/ikcfsV4WwL4fOV1kNXkkT3oZayLZ9xXupj1kLeU0bBs6PQnY5qICfnXDDfAmR+7zRSA3Rf+7u4w
	NRHlPpdfOWgH3y2rbKzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woHkj-00000002LLI-4AgR;
	Mon, 27 Jul 2026 09:36:06 +0000
Received: from mx0b-0002e601.pphosted.com ([148.163.154.28])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woHkh-00000002LKW-0cyw
	for linux-phy@lists.infradead.org;
	Mon, 27 Jul 2026 09:36:04 +0000
Received: from pps.filterd (m0374955.ppops.net [127.0.0.1])
	by mx0b-0002e601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66R9Pvg9768504;
	Mon, 27 Jul 2026 04:35:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	proofpoint-05-2026; bh=45tY2VNXAVG5ATC8kf80WTbqY/zzdRlhAKoMlo+Cr
	wo=; b=fzus50eK3nZxogF9yUawp+JHsdslTj9UFDOz/d0F1FZ5k5J0fW9P3O9dF
	EiOiViclGoXeaIoNnsnUDQzO+fy7fJb1+3QAS9Tmc9+9qtmIgOseJ3PQ/dEgfLc/
	GO/EZHgIjB8eAjUOFH5j6GcFccCtikgZwFZUOHgA10XhwOOWyXCZnpvvPiFiwil9
	SnXWTclHgpBSPJb1tQN6wbbYgdWU59qg4Nh3uAKDZHzC0AxmHvbgOcarSHHAh1iB
	kzFFS+DYNzNUg/6DTkDJdvxoRB/w4TQH64u52U1JZAj/31mHKibtUeWcAJLxT1o+
	cP1556Nw61+IyDYzITA1YM1jLg3sg==
Received: from bn8pr05cu002.outbound.protection.outlook.com (mail-eastus2azon11011045.outbound.protection.outlook.com [52.101.57.45])
	by mx0b-0002e601.pphosted.com (PPS) with ESMTPS id 4fp4pp01f9-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Mon, 27 Jul 2026 04:35:55 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xwcCcjCnlJHZdiCPudutR2KhvfnrgPINbl65i+wjfZ2viZyU1cdwyw1K3i+wNLr0ixktMEtMsld4dDPqWJvyxuxILXGAsM6nRzLw0NH43jARovhR8faKBDhlRK4eOvvrM9/M8B4QtCPIDcT78i2s/ZhLTi6HCG6IDqZ5+iyLusf9b92PgIqfWznUuZEycN/mUkN+vU49SDa4sTiN1k0wzxspb2cMF3YoZ38Xk0ie5ycYnbC7/0Baae/y7fFan6XXwSgEcDJ49mR+jtREMUX/zPAZY5KTE6v4IkHGCQ9Hz7/V3kOzdk3hSwvTS+9Y1NG5guFaLVL24Pyz74MPVTwtyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=45tY2VNXAVG5ATC8kf80WTbqY/zzdRlhAKoMlo+Crwo=;
 b=ujukmbCOefdQdpdW7G35L/PDhszZFuoFNmdkK8sNmz0b9sT9SwOlqDM0sCTiIHv5Ur/qpVTKUKm/IJaWOVlbqUjoHyY8YNb5CLrZKXyRp2sn7xA7qto/TAbGFIomODMx+tOpvgUHwCc6V6SGxGFP78nHqK4witp9jIo/sHlRQbJogJONOziUzLdrprNm8HEVjUVUlNw1JsA2BjEwC1tdxua93lUiTabA7zMiGp6lZXvc28ov5dOOSNSKUzlX+RcxsKGXdQWdO1UvQ/BXTf3NufA29JKGEiBDqqhSWPA/VhET25YKS3CdP4/afbTXKesOlTij6cYI4nhIxHBAXOU7yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.194) smtp.rcpttodomain=cadence.com smtp.mailfrom=ti.com; dmarc=pass
 (p=quarantine sp=none pct=100) action=none header.from=ti.com; dkim=none
 (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=45tY2VNXAVG5ATC8kf80WTbqY/zzdRlhAKoMlo+Crwo=;
 b=YG77JCDJsRuX/Njj1U1Dl+2Ik8uA0ter8u0aX2oRY9toxWIOAsd8GUpwXe0ZyzXceK6AqPO/kI7RQqOJBjqTMUr51nzaLWyDM9tjwoYQpUX1/PW+cy5ebPIYAAVQFI32zQz/fG6L9zRK0DiUGU3+3C+FZwG/cSx+fDV10B7phcY=
Received: from SA1P222CA0078.NAMP222.PROD.OUTLOOK.COM (2603:10b6:806:2c1::25)
 by SJ2PR10MB7708.namprd10.prod.outlook.com (2603:10b6:a03:574::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.245.13; Mon, 27 Jul
 2026 09:35:51 +0000
Received: from SN1PEPF00036F42.namprd05.prod.outlook.com
 (2603:10b6:806:2c1:cafe::8b) by SA1P222CA0078.outlook.office365.com
 (2603:10b6:806:2c1::25) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.245.13 via Frontend Transport; Mon,
 27 Jul 2026 09:35:50 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.194; helo=flwvzet200.ext.ti.com; pr=C
Received: from flwvzet200.ext.ti.com (198.47.21.194) by
 SN1PEPF00036F42.mail.protection.outlook.com (10.167.248.26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.270.5 via Frontend Transport; Mon, 27 Jul 2026 09:35:49 +0000
Received: from DFLE202.ent.ti.com (10.64.6.60) by flwvzet200.ext.ti.com
 (10.248.192.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.37; Mon, 27 Jul
 2026 04:35:43 -0500
Received: from DFLE212.ent.ti.com (10.64.6.70) by DFLE202.ent.ti.com
 (10.64.6.60) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.37; Mon, 27 Jul
 2026 04:35:43 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE212.ent.ti.com
 (10.64.6.70) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.37 via Frontend
 Transport; Mon, 27 Jul 2026 04:35:43 -0500
Received: from [10.24.53.154] (a0507176-hp-z2-tower-g9-workstation-desktop-pc.dhcp.ti.com [10.24.53.154])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 66R9ZdqT848741;
	Mon, 27 Jul 2026 04:35:40 -0500
Message-ID: <eac428f3-fbab-437b-a881-e0d333de8360@ti.com>
Date: Mon, 27 Jul 2026 15:05:38 +0530
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
        "Vadapalli, Siddharth" <s-vadapalli@ti.com>
References: <20260722061831.1045884-1-g-praveen@ti.com>
 <20260723-venomous-nuthatch-of-inquire-dade7b@quoll>
 <0b8a91f0-8a2e-4dfa-aecf-acb865442d53@ti.com>
Content-Language: en-US
In-Reply-To: <0b8a91f0-8a2e-4dfa-aecf-acb865442d53@ti.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN1PEPF00036F42:EE_|SJ2PR10MB7708:EE_
X-MS-Office365-Filtering-Correlation-Id: 78fbabaa-9070-4153-e85f-08deebc2718c
X-LD-Processed: e5b49634-450b-4709-8abb-1e2b19b982b7,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|82310400026|376014|36860700016|23010399003|1800799024|6133799003|18002099003|22082099003|56012099006|4143699003|10067099003;
X-Microsoft-Antispam-Message-Info: Oxkfn9NyDTl7lcPWfhtPbIMfYy513HQRGo+srydIA+IezNObzyHk6n/KWpPgWG4152NZOo6gm2rNoAMmyUDG3JotERArx7X3TWC25NlJNmHt0ukWQx47iDXLZUDjnh4duMby+ul1bOarb8GPcc2/iyDnqMFyenZt6vkaLTvtiPl3my93Rp+ik8nS0xMuVeXQisTchDAQFcUCTdxgZHM1QRlyqCvQiAzSbECvs2fo4wr22U961tCf8okwJFBGHYKnvC8aL+9iIOhg+vvPwWzXVtogLHcws6aVRd1hoS1EJHIOQlAbVtOuzntOfkshnFsJwaDhckaW/XkF0IYYEi4dE+zxcndYojofYxEKyl56RBTMe+SdtnIoW29HDP6c9gpQk0E/KShbMgpA//qksdFwvjHy04V5Qzbw8qndS21NpapQz8q3rwURo5n/PTIdlcTyvI5ZQebADVJGR/csrsR+/FM5R+la1tO2t97gGM3eS2iaHYXRF+pm5rhxBZXcNY6DcQ/3ZVSctn6vN7LZLRuDADTIugqEbFEqTvDYTZbK9asR3QA+eh6ANVP41weW/IVfVjVq9nFVX8dJln4pAiJqnYi/sXLL4CDbfB/SBl6uRLEOtGK1+QPnOqPW0N5MfpK7+UOOaHnhPFEcVexwq+9AISoJ7DIozdL3FoPaNz9tQFGJoDD33j2obWqagGu0MxNZVswQV2xhlIiF5AeW+qZ8gg==
X-Forefront-Antispam-Report: CIP:198.47.21.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet200.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(7416014)(82310400026)(376014)(36860700016)(23010399003)(1800799024)(6133799003)(18002099003)(22082099003)(56012099006)(4143699003)(10067099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: ftyQHIlYFGgwVGB5BxHc+O/E5bqxmY3GbJqtBcHHUvPuAPqWy5NYDbokuhbqckXwUkHaKF/eoUlj0cbrh6XO4ieREKeIAJ5SkQxNus0pmoB87idqpSHhglIC00oSa9m4Ld8br+nsvNvxLC6jChmdt9AFa0mYvVzYdzBSN06MCIoYKIGpxdwPCBCprjSnw+9GpvGjXntA9glEnpLhFohv5Z6qibks1zZnB6wVmO7/1s/Dx8WecPF1DN0JBQWH3+Y3GSY2ebl6JRnAqDdKi5eUVJYoaqQvSvPbLZ+sONvEmaGptS26tfqtHeWkimTuxNL/hb23nO4Q4ZqpahnzVPO3k7lklGAeM3gps/lPqOu0LsnfliCeEAXkcXCdxKPdxgpECM4cEpTii/l5x5d1dHBzC1LZAMFc3zOkcXvqK4usTaQhb/OM92tda/1ZqB56ZCgY
X-Exchange-RoutingPolicyChecked: lcOiD9wuzm1ZToolVWNwoCJMrl+X/k9wEqZ67bpC6v3IOWrhqjiWbHx6SfkceedwBbXNA4+QqHBUiXeFnfMEUPlkLj1zO1RjJ6Oxsw06LuIFANZ5lG3y+nBSuO1KeHBed6+kglJNsKv5EyUhTd7XYH5z/q4JOtfWCo8kCUI1AL1rKx8r6u4XFj4VcHwLFKJuhFBeLL7fxC+Yc+0AhR4Niz9esKmlYchLUI35mGO8xjAG48wQ5DNGbj7grv2QVUXNXsW8zrNvbfkOp6I0eE5bbYvQPRL/9yydrgiVDM+UVMQILX1ORdvAlWiit2iP3muycCYmyUXksg6o/w3q4re5kw==
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jul 2026 09:35:49.3735
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 78fbabaa-9070-4153-e85f-08deebc2718c
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.194];Helo=[flwvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource: SN1PEPF00036F42.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR10MB7708
X-Proofpoint-ORIG-GUID: oq-o-P8B66fKGW12mz7bDcmTiJko8oCc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzI3MDA5NCBTYWx0ZWRfXyF7ZSCELie5I
 drNHR0vr7R82xQdrVvUYDfsiyRcXxd1iUxlV3QtM8Vc929q6tkfZDMtIfxBWqrbX45blesyd4aA
 WqXpBHE69KOliU9bV/0m6rrisbXz3i1yahegPk6DiAVEdKGpZwRlJ4foDrgpNo5goUIV3keDYE/
 mZiH/zmNbZzgjwolKyiiiBeYksVIOrynQp2HwBldph2onG9pmzNS6j/yzBCw2iJaK3HlQ6VSFDv
 OwxBE3rYHwxbpdj+2pwz0Q5qQkYuws47wynrQiVPU3qiPzdNoG5L9CMfv/vdlB9Kzbli6Ntdldp
 8PE1bz6h4LlCE6qwxTe4pn4Do5aY0xYA7kiXhuG4rYtupxMp9omHciS8Td8G3NyHtEfK45+w32r
 gsv5UsczpxWMcUIuJ83+nZWmQRG6c+PqfceMtU0BNmwDUjmqlZiBh9WnKJptgLcmg7gJL/x8EQ6
 1QDuJ3q9QBH5sBZlkhg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzI3MDA5NCBTYWx0ZWRfX0fDOdQ0YrpPT
 sfGEAZWTkugnV7k/RlVzjC7qu6Mma7ijF5XR2DFGSf9Lj036JaCcoECwbpkbXo0Rc/Igwy3Awko
 RFn4ebYEdCLALH0zIZHkqKzKPxDhf9A=
X-Proofpoint-GUID: oq-o-P8B66fKGW12mz7bDcmTiJko8oCc
X-Authority-Analysis: v=2.4 cv=I4xVgtgg c=1 sm=1 tr=0 ts=6a67267b cx=c_pps
 a=n4nuXP1CjkzMzYAVBY1Wsg==:117 a=iwqwCZQqcuTv3JOpYdM7/Q==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10
 a=V5UXEbMT0ywA:10 a=VkNPw1HP01LnGYTKEx00:22 a=Z8NIEmU8O1QQgoT56wFK:22
 a=fPAWb5peG099m5CrUpKH:22 a=281WbK9POChNeo4cQIsA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-27_02,2026-07-24_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 phishscore=0 suspectscore=0 bulkscore=0
 lowpriorityscore=0 impostorscore=0 malwarescore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607270094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_023603_404075_9EEDB0D1 
X-CRM114-Status: GOOD (  12.71  )
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

SGnCoCBLcnp5c3RvZiwKCkhvcGUgdGhpcyBjbGFyaWZpZXMgeW91ciBxdWVyeS4KCkJlc3QgUmVn
YXJkcwoKR29rdWwgUHJhdmVlbgoKT24gMjMvMDcvMjYgMTU6NDUsIEdva3VsIFByYXZlZW4gd3Jv
dGU6Cj4gSGkgS3J6eXN0em9mLAo+Cj4gT24gMjMvMDcvMjYgMTI6NDUsIEtyenlzenRvZiBLb3ps
b3dza2kgd3JvdGU6Cj4+IE9uIFdlZCwgSnVsIDIyLCAyMDI2IGF0IDExOjQ4OjMxQU0gKzA1MzAs
IEdva3VsIFByYXZlZW4gd3JvdGU6Cj4+PiBGb3IgbXVsdGlsaW5rIFNFUkRFUyBjb25maWd1cmF0
aW9ucyB3aGVyZSBlYWNoIGxpbmsgcmVxdWlyZXMgYQo+Pj4gZGlmZmVyZW50IGNsb2NrIGZyZXF1
ZW5jeSwgdGhlIFNFUkRFUyBwcm92aXNpb25zIGFuIGFkZGl0aW9uYWwKPj4+IHJlZmVyZW5jZSBj
bG9jayBmb3IgUExMMS4gSGVuY2UsIGRvY3VtZW50IGl0Lgo+PiBUaGUgcGxsMSBpcyBhbHJlYWR5
IHRoZXJlLgo+IFllcywgYnV0IHRoZSBleGlzdGluZyBjb25maWd1cmF0aW9uIGhhcyBhIGxpbWl0
YXRpb24gYXMKPgo+IGl0IGRvZXMgbm90IGFsbG93IGJvdGggcGxsMSBhbmQgcGh5X2VuX3JlZmNs
ayB0byBiZSB1c2VkIGF0IHRoZSBzYW1lIHRpbWUuCj4KPj4gQWxzbywgdGhlIFRJIHZhcmlhbnQg
ZG9lcyBpdCBvciBjZG5zIG9uZSBvciBib3RoPwo+IEJvdGggb2YgdGhlbS4KPgo+IEJlc3QgUmVn
YXJkcwo+Cj4gR29rdWwgUHJhdmVlbgo+Cj4+IEJlc3QgcmVnYXJkcywKPj4gS3J6eXN6dG9mCj4+
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
