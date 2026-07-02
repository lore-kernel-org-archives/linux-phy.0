Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87E58C43458
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 08:56:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EKRBzg6R5q0BQHwachRRKeUI4FA8sdqf6zYoHzu8B9s=; b=Y/tqSaDQ0eifeL
	lAuGNo1DMPDRnVARNVitUxh06G5Sm8wccoLf36ySO0f2excv2hgUimptN7MDtJyICt4YeuWd8I0Ke
	XigYQekBFJ1FDZqbCya/1SqMDVewQLbXYQTYOB3VrIEImLC/HEkrMBwicE7wP19Ig0y2svgi8pit+
	xpxEcOMPOx/gCFH93H7K3pSbWZcdFHQTRdCehbCGzWJfdaA6w7x9cJOHfo9QZlaIM8vA8LzV6oUJ4
	kI/r5YcuhzC8NL2iEkqG9Yb/HZnNABWJ2hTLGmKN3w1C0K5id/x4i1DYJJSuRzuZeFGV8luCk6zVF
	Fsrl4wwVZnT2iJxJ0QdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfDDh-00000003vjG-0i8Q;
	Thu, 02 Jul 2026 08:56:29 +0000
Received: from mx0b-0002e601.pphosted.com ([148.163.154.28])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfDDc-00000003viC-45Iw;
	Thu, 02 Jul 2026 08:56:27 +0000
Received: from pps.filterd (m0374955.ppops.net [127.0.0.1])
	by mx0b-0002e601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6628HXT71285378;
	Thu, 2 Jul 2026 03:56:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	proofpoint-05-2026; bh=MyEOdPlTKdbcAtKrg624KtjUsIk2KhUrRxzttUxWj
	/A=; b=hparhK7+IxUlUvp2FPan5V2KItIJRMl8Njk9prmL15F3tpuRltR36qfWA
	JmXayPi2BCxbB9GWybfTmHjs+k5LUZgmqpfQMQF72xtnIAIsR3BtIT1CVrASgS3l
	1LoWj0MzA3E8PkW6W+Ttc0GjcRurV0q6LdyehKNFf8To+STfg2LZLZOu9eYU5/Rf
	fMCB9zUdmUjQLZAirjPK0j56YoHD8PREN6V88PvKbDt697jUYSpHM2vl5M1v3Yq4
	NJ8L/mjV5PIiKhpFKtT8mZofMHmskw57tY/sZE6vVDRJpqb3zIa5RT6ag7uNRBHq
	5pGSEh/I6X/Wtgi8RI1UVBJbN9csw==
Received: from ch5pr02cu005.outbound.protection.outlook.com (mail-northcentralusazon11012014.outbound.protection.outlook.com [40.107.200.14])
	by mx0b-0002e601.pphosted.com (PPS) with ESMTPS id 4f5fvyhmcm-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Thu, 02 Jul 2026 03:56:20 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l6N46OZ3EBVmgnLouKJhKd2ofImQxxmWsL8o9b04TnZtxU37hrQ3MheTGQJ7vlGLe5MJj+MpGUyuFR1PCh/UfwdZXBBPK8XbjntE14ooz6IlPDvyREv9mvhxKvHh2DGPn907RhZePMaZpJmFuda4QEOkNS4pVo/lIyD+sZqKfbiYwyiTQZPlUuc3iK2Q/uwV1Syuboe4sjhGvdY2KP/541/QMelDzbSjr9W0e8TQXFkjHJZwUJXTkTCtHlID6erHdN0nh2xXxB8/Ea+wHyJYi2LfylirStimRxdd1ut5BjwXv4tQLRorFZaLgF9GYRGfuPAAGf1kcI3IieeI0a23Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MyEOdPlTKdbcAtKrg624KtjUsIk2KhUrRxzttUxWj/A=;
 b=b53jiAWCaoq5Y1FGc26ItYeU4RQ/yx0ru/HH6P4OEQE6H6JG1iTJTDTkVnWp4T7GFMYdejeRVtA6KhpCXHFKsatrUpxPwxPuRVWnFNwHddv1MvryJAZqIIu4I30J7PeLEbcjOnrbA+EzkpSxFpCdABjLAG1l0VVHCV7rXEFlojY5LtMiWmDcRULM3XdvejE7L7NyznO5Lr01Smu5hfam+mEcAMYoc9e0mvwAG7ImZbmKxLudhHI+8DvTZudsNtWxhdCHaXV2JTOaRjX+EfuA65B8vAWAp0ZxRsBW+yCJ9o23xbsSeS/HxL/8ikNOWjS41QGIFoaclecpOg1urIX0bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.194) smtp.rcpttodomain=cadence.com smtp.mailfrom=ti.com; dmarc=pass
 (p=quarantine sp=none pct=100) action=none header.from=ti.com; dkim=none
 (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MyEOdPlTKdbcAtKrg624KtjUsIk2KhUrRxzttUxWj/A=;
 b=QVzFkj7SbEPTD+CFB0TjERUiXE5/fgBiB3S8+0EjQJrDkGu11cuz5HHK5mVIwwCLu+mU8QoAUBhuTpUXLIh4b0vdmDm/akHyBimYezax9IVBIGVO+X0GfP+Rp3sbBzH0o5rIufITIGQLeQp1D9E5E5RI9PwGVeHFlwLPzj03sGY=
Received: from SJ0PR03CA0352.namprd03.prod.outlook.com (2603:10b6:a03:39c::27)
 by SJ0PR10MB5669.namprd10.prod.outlook.com (2603:10b6:a03:3ec::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Thu, 2 Jul 2026
 08:56:17 +0000
Received: from SJ5PEPF000001F6.namprd05.prod.outlook.com
 (2603:10b6:a03:39c:cafe::77) by SJ0PR03CA0352.outlook.office365.com
 (2603:10b6:a03:39c::27) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.181.10 via Frontend Transport; Thu, 2
 Jul 2026 08:56:17 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.194; helo=flwvzet200.ext.ti.com; pr=C
Received: from flwvzet200.ext.ti.com (198.47.21.194) by
 SJ5PEPF000001F6.mail.protection.outlook.com (10.167.242.74) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.6 via Frontend Transport; Thu, 2 Jul 2026 08:56:16 +0000
Received: from DFLE204.ent.ti.com (10.64.6.62) by flwvzet200.ext.ti.com
 (10.248.192.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.37; Thu, 2 Jul
 2026 03:56:16 -0500
Received: from DFLE210.ent.ti.com (10.64.6.68) by DFLE204.ent.ti.com
 (10.64.6.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.37; Thu, 2 Jul
 2026 03:56:15 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE210.ent.ti.com
 (10.64.6.68) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.37 via Frontend
 Transport; Thu, 2 Jul 2026 03:56:15 -0500
Received: from [10.24.50.145] (a0507176-hp-z2-tower-g9-workstation-desktop-pc.dhcp.ti.com [10.24.50.145])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 6628uAtj3540509;
	Thu, 2 Jul 2026 03:56:11 -0500
Message-ID: <19f71eb8-92ef-49b8-9ca1-580b4b899ab2@ti.com>
Date: Thu, 2 Jul 2026 14:26:10 +0530
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
X-MS-TrafficTypeDiagnostic: SJ5PEPF000001F6:EE_|SJ0PR10MB5669:EE_
X-MS-Office365-Filtering-Correlation-Id: 5a5d0c1b-e736-45e8-0511-08ded817c6f8
X-LD-Processed: e5b49634-450b-4709-8abb-1e2b19b982b7,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|23010399003|82310400026|36860700016|1800799024|18002099003|56012099006|3023799007|4143699003|6133799003|22082099003;
X-Microsoft-Antispam-Message-Info: Znrq+hwQofWIGIzNjaFqS7ZKK0WC3KRkzxO+LG8hQQf3xmHlReZCaQrPLjXfB00ni8OCx+WptmGi4doftx/Ks+BX1Df0dNm3GFXfK+xpLAtHoDsWIJ6o3ixKDSvPWjVdKNwGG/8v42eQxkxFCE6B1s77Oq53LTxwqUroqeJqEdWO5JYruVmAUlZlQK4OqVPcY2BGWAXAV/DqeO8I6hKGmIGj83WeVReALp3AjlU6GrnfP2f/rXEjhiKib3MtRzaGp4UJyQlvQFhYtEvPGt0A+fa4qaZvJIPn9SZ9nlnNAUJmTXvrTVVEqOoH/6amEnNA55J95ZRlkLuGREm6p4/la9NJ1b448h2iK3Cy5VZqAlP0lKwkpNd7oKsqDzTD3QGnhJ54Hx0b7Gv1+4Dhc7NXqW7S7QoeA3TvAheVtkQrCYjqfjehZEE/mIacrXgbEoESA4Kb7BUINbM3tC112YDCSbF/yQLp2Xqurr27ohMKLYl+syVxn0MpWFdWzuotnVtw0/sm9Xf0VRqWsygYZzuBYcrBNfFtorH9/eQUqL8Pd5CjXkGnnkV+D1PoMJq6slU2IRT1SeTt1ybmYkzC7xiDPYcO+7xvEsLWsNwXfBDhcQ10Dlw/Um/tpiPxse0m7KCmClP8jdPR9mLXXF8+xUj0EqagjMpScKyZGmHXyDR6RFVcGvzxHJreWee9kuFbWf6wIsbbklAYwcB8Af29ns2gqg==
X-Forefront-Antispam-Report: CIP:198.47.21.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet200.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(7416014)(376014)(23010399003)(82310400026)(36860700016)(1800799024)(18002099003)(56012099006)(3023799007)(4143699003)(6133799003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: Es5pXb1aG8/+WDYugxSlwZUq5vJwyq2WbwfgqiWTIwRbR/sdmMagJRbmHRYDv4omZq3+AE7Lb6T3vlCVAO6hp6/WzwbWJpgn58dt0yQIfG3hzGraBDgDxP5PyZKVtrQl+UIbWlVZeHo4DOZIxDkT3tSD/diJwFIvI99NGMig8Q9I07Xj6v4nMbI1F0VIqN6TPVt8sp5cgBG2OdBGMog2L+e1Lgkb/Ed7iUEjLMlcJq8q91B2kUWi20obXTziVg+UzL4wy0ynRS2lSfVlklDjwAGhlbQlT5BceJ1BBCRDL/pz9RUjoa0mE2+ENsevwP+wGEVgQvv5LsXJ8BhyBxqiLLDgls5yy/1Rd+1ubort2XQwv710nl2anpAC6stxELAWU8ghf9oO1+BBWUnyux/Cy6IHz+F2ObNoT67pTKmaHQCpheXAvNuxDBn7BkzDqnOM
X-Exchange-RoutingPolicyChecked: QGIHY04Bg2zPXO5eR5uVGi5psX7fWDEGqBYT8SIq6ou7H2/FB2VVV8MrlPZblkYp9F4yYlJp6v1y5XGO8IcsqCjlbsaQu5AVRGufjVjTsYuwGC1hXthzCtqY/wX3r4jF6N0m7dTys56ShYTXU/IR973LAbokqcdnCKEZmXIK7uwZkbm2Hy6VPDa/Q4UUiGnfLXm14RXuHo5RL/9hQuAgAPuppD8U6xBuG41QkM7Dr0PvmblCQxRONQ4e2p/IeEModZYUufCn4FxxR9gSL2zfUZ+k+2eDkltf28DUIZsUh9/9buHAbkMAKKbqkaScaDPJhNB/g++OeNh/JPATVmiMBg==
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jul 2026 08:56:16.5801
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a5d0c1b-e736-45e8-0511-08ded817c6f8
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.194];Helo=[flwvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource: SJ5PEPF000001F6.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB5669
X-Proofpoint-ORIG-GUID: 0dqJzqijbtEIC2u2sfPh21gP4UgRTMEA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAyMDA5MSBTYWx0ZWRfX6Bwc00w9iXux
 uNxkR6lisabbjNgDIgTKN1FjrMQ2gcvt+q+9BjRW2M5WpO5OSdbltLq8SNx6YZTFea4TsO/j+aO
 g0ApGUieDvYrRe8a0tC+G/Bi9jJX5g/EaQPyX2UoKg28lnZWp0vQXYuUMTdeYq39LHqYk2eHsT9
 dB+K0osOy3dTkXUzGh82ivGcBQGImJOAI9175mOgNug4bj8yx39938UAHuBvNbXIJ9ydF1Wo+34
 RcbULWSPDHndGXu7zWfqLzvtALPAOx3Poi0ErvHOAl+ePxKngT4nQjVRYlDdnRJ+oci6m4fbNfV
 oH7RksMZzSZimoz+ROMMIYvXBTdp3f8nOJm57zJT7rV+h0GIAUx1LJg4p0I/NLalrztBbAwSY+G
 bzBzAeiEr4ucRj/pYUvnb2g40XVYbQslC4c6K3MCdX5ZM4JHpOsmzsfuOCSpAYObCY7M0r5s0ej
 gBFxynsyI7RzF1qdv0A==
X-Proofpoint-GUID: 0dqJzqijbtEIC2u2sfPh21gP4UgRTMEA
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAyMDA5MSBTYWx0ZWRfX6zVLzGOEeRqy
 d52urLLEfvqPL5BJCu7lCtTzO3Imv5OXc/Lvol2gLudhj92IAKv0w5TJ1qEusr49S4uEaChl+ox
 kV51ijNtjmpzqUBHk+BrtQ5vrdH1V80=
X-Authority-Analysis: v=2.4 cv=T+q8ifKQ c=1 sm=1 tr=0 ts=6a4627b4 cx=c_pps
 a=3EeCZaq8L1ZepF5DamB/SA==:117 a=iwqwCZQqcuTv3JOpYdM7/Q==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10
 a=V5UXEbMT0ywA:10 a=VkNPw1HP01LnGYTKEx00:22 a=Z8NIEmU8O1QQgoT56wFK:22
 a=fPAWb5peG099m5CrUpKH:22 a=sozttTNsAAAA:8 a=SV126L7JnvFE97WdaswA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-02_01,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 phishscore=0 adultscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 lowpriorityscore=0 impostorscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607020091
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_015626_248222_D1772701 
X-CRM114-Status: GOOD (  22.60  )
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

SGnCoEtyenlzenRvZiwKCk9uIDAyLzA3LzI2IDExOjUzLCBLcnp5c3p0b2YgS296bG93c2tpIHdy
b3RlOgo+IE9uIFdlZCwgSnVsIDAxLCAyMDI2IGF0IDA3OjU0OjU2UE0gKzA1MzAsIEdva3VsIFBy
YXZlZW4gd3JvdGU6Cj4+IFVwZGF0ZSBtYXhJdGVtcyB2YWx1ZSBvZiAiY2xvY2tzIiBwcm9wZXJ0
eSB0byAzIGFzIGRlc2NyaXB0aW9uIG9mCj4+IHRoaXMgcGFyYW1ldGVyIGFscmVhZHkgaW5kaWNh
dGVzIDMgY2xvY2tzKHJlZmNsayxwbGwxX3JlZmNsayhvcHRpb25hbCkKPj4gYW5kIHBoeV9lbl9y
ZWZjbGsob3B0aW9uYWwpKS4KPiBCdXQgd2hhdCBpZiBkZXNjcmlwdGlvbiBpcyB3cm9uZz8gWW91
IG5lZWQgdG8gcHJvdmlkZSByYXRpb25hbGUgd2h5IHlvdQo+IGFyZSBkb2luZyBpdCBhbmQgeW91
IGNhbm5vdCB1c2UgZXhpc3RpbmcgY29kZSBhbG9uZSBhcyB0aGF0IHJhdGlvbmFsZSwKPiBiZWNh
dXNlIGFzIHlvdSBwb2ludGVkIG91dCAtIGV4aXN0aW5nIGNvZGUgaXMgbm90IGZ1bGx5IGNvcnJl
Y3QuCj4KPj4gVXBkYXRlIHRoZSBtYXhJdGVtcyBhbmQgaXRlbXMgdmFsdWUgb2YgImNsb2NrLW5h
bWVzIiBwcm9wZXJ0eSB3aXRoIG11bHRpcGxlCj4+IGNvbWJpbmF0aW9uIG9mIGNsb2NrLW5hbWVz
IHBvc3NpYmxlIHNpbmNlIHBsbDFfcmVmY2xrIGFuZCBwaHlfZW5fcmVmY2xrIGFyZQo+PiBvcHRp
b25hbCBjbG9ja3MuCj4gV2h5PyBZb3UgbmVlZCB0byBkZXNjcmliZSB3aHkgeW91IGFyZSBkb2lu
ZyB0aGlzLCBub3Qgd2hhdCB5b3UgYXJlCj4gZG9pbmcuCj4KV291bGQgdGhlIGJlbG93IGNvbW1p
dCBkZXNjcmlwdGlvbiBiZSBnb29kIGVub3VnaCA/IFBsZWFzZSBmZWVsIGZyZWUgdG8gCmdpdmUg
YW55IHN1Z2dlc3Rpb25zIG9uIHRoaXM6CgonJwoKZHQtYmluZGluZ3M6IHBoeTogY2FkZW5jZS10
b3JyZW50OiBVcGRhdGUgcHJvcGVydHkgdmFsdWVzIHRvIHN1cHBvcnQgMyAKY2xvY2tzCgogwqAg
wqAgSW5jcmVhc2UgdGhlIG1heEl0ZW1zIHZhbHVlIG9mICJjbG9ja3MiIHByb3BlcnR5IHRvIDMg
dG8gc3VwcG9ydAogwqAgwqAgMiBpbnB1dCBjbG9ja3MocmVmY2xrLHBsbDFfcmVmY2xrKSBhbmQg
MSBvdXRwdXQgY2xvY2socGh5X2VuX3JlZmNsaykuCgogwqAgwqAgRm9yIG11bHRpbGluayBTRVJE
RVMgY29uZmlndXJhdGlvbnMgd2hlcmUgdGhlIGxpbmtzIHJlcXVpcmUgMiAKZGlmZmVyZW50IGlu
cHV0IGNsb2NrIHNwZWVkcywKIMKgIMKgIDIgZGlmZmVyZW50IGlucHV0IHJlZmVyZW5jZSBjbG9j
a3MgYW5kIDEgb3V0cHV0IGNsb2NrIGlzIG5lZWRlZCBzbyAKYXMgdG8gY2F0ZXIgdG8gdGhpcyBy
ZXF1aXJlbWVudC4KCiDCoCDCoCBGb3IgZWc6IENvbnNpZGVyaW5nIHRoZSBVU1hHTUlJK1NHTUlJ
IG11bHRpbGluayBTRVJERVMgCmNvbmZpZ3VyYXRpb24gdXNlY2FzZSAsCiDCoCDCoCBoYXZpbmcg
b25seSAxIGlucHV0IHJlZmVyZW5jZSBjbG9jayBmYWlscyBiZWNhdXNlIFVTWEdNSUkgcmVxdWly
ZXMgCmFuIGlucHV0IGNsb2NrIHNwZWVkIG9mIDE1Ni4yNSBNaHogYW5kCiDCoCDCoCBTR01JSSBw
cm90b2NvbCByZXF1aXJlcyBhbiBpbnB1dCBjbG9jayBzcGVlZCBvZiAxMDAgTWh6LgoKIMKgIMKg
IFNpbmNlIG9uZSBpbnB1dCByZWZlcmVuY2UgY2xvY2socmVmY2xrKSBhbG9uZSBjYW5ub3QgY2F0
ZXIgdG8gdGhlIDIgCmRpZmZlcmVudCBjbG9jayBzcGVlZCByZXF1aXJlbWVudHMKIMKgIMKgIG9m
IHRoZXNlIHByb3RvY29scywgdGhlIHNlY29uZCBpbnB1dCByZWZlcmVuY2UgY2xvY2socGxsMV9y
ZWZjbGspIApoYXMgdG8gYmUgYWRkZWQuCgoKIMKgIMKgIFNpZ25lZC1vZmYtYnk6IEdva3VsIFBy
YXZlZW4gPGctcHJhdmVlbkB0aS5jb20+CicnCgo+PiBTaWduZWQtb2ZmLWJ5OiBHb2t1bCBQcmF2
ZWVuIDxnLXByYXZlZW5AdGkuY29tPgo+PiAtLS0KPj4gICAuLi4vYmluZGluZ3MvcGh5L3BoeS1j
YWRlbmNlLXRvcnJlbnQueWFtbCAgICAgICAgfCAxNiArKysrKysrKysrKystLS0tCj4+ICAgMSBm
aWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYg
LS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3BoeS1jYWRlbmNl
LXRvcnJlbnQueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcGh5
LWNhZGVuY2UtdG9ycmVudC55YW1sCj4+IGluZGV4IDlhZjM5YjMzNjQ2YS4uOTZjNjY0ZDUwNjI5
IDEwMDY0NAo+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Bo
eS1jYWRlbmNlLXRvcnJlbnQueWFtbAo+PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvcGh5L3BoeS1jYWRlbmNlLXRvcnJlbnQueWFtbAo+PiBAQCAtMzQsNyArMzQsNyBA
QCBwcm9wZXJ0aWVzOgo+PiAgIAo+PiAgICAgY2xvY2tzOgo+PiAgICAgICBtaW5JdGVtczogMQo+
PiAtICAgIG1heEl0ZW1zOiAyCj4+ICsgICAgbWF4SXRlbXM6IDMKPj4gICAgICAgZGVzY3JpcHRp
b246Cj4+ICAgICAgICAgUEhZIGlucHV0IHJlZmVyZW5jZSBjbG9ja3MgLSByZWZjbGsgKGZvciBQ
TEwwKSAmIHBsbDFfcmVmY2xrIChmb3IgUExMMSkuCj4+ICAgICAgICAgcGxsMV9yZWZjbGsgaXMg
b3B0aW9uYWwgYW5kIHVzZWQgZm9yIG11bHRpLXByb3RvY29sIGNvbmZpZ3VyYXRpb25zIHJlcXVp
cmluZwo+PiBAQCAtNDUsOSArNDUsMTcgQEAgcHJvcGVydGllczoKPj4gICAKPj4gICAgIGNsb2Nr
LW5hbWVzOgo+PiAgICAgICBtaW5JdGVtczogMQo+PiAtICAgIGl0ZW1zOgo+PiAtICAgICAgLSBj
b25zdDogcmVmY2xrCj4+IC0gICAgICAtIGVudW06IFsgcGxsMV9yZWZjbGssIHBoeV9lbl9yZWZj
bGsgXQo+PiArICAgIG1heEl0ZW1zOiAzCj4gRHJvcApzdXJlIGtyenlzenRvZi4KPj4gKyAgICBv
bmVPZjoKPj4gKyAgICAgIC0gaXRlbXM6Cj4+ICsgICAgICAgICAgLSBjb25zdDogcmVmY2xrCj4+
ICsgICAgICAtIGl0ZW1zOgo+PiArICAgICAgICAgIC0gY29uc3Q6IHJlZmNsawo+PiArICAgICAg
ICAgIC0gZW51bTogWyBwbGwxX3JlZmNsaywgcGh5X2VuX3JlZmNsayBdCj4gRHJvcCB0aGVzZSwg
cG9pbnRsZXNzLiBZb3Ugd2VyZSBzdXBwb3NlZCB0byBncm93IGV4aXN0aW5nIHN5bnRheC4KPgpT
dXJlIEtyenlzenRvZgo+PiArICAgICAgLSBpdGVtczoKPj4gKyAgICAgICAgICAtIGNvbnN0OiBy
ZWZjbGsKPj4gKyAgICAgICAgICAtIGNvbnN0OiBwbGwxX3JlZmNsawo+IFNvIGhlcmUgaXMgdGhl
IGVudW0uCj4KPj4gKyAgICAgICAgICAtIGNvbnN0OiBwaHlfZW5fcmVmY2xrCj4+Cj4+IEFuZCB0
aGlzIHN0YXlzLgoKU1VyZSBLcnp5c3p0b2YKCj4+Cj4+IFlvdSBtYWtlIGNoYW5nZXMgd2hpY2gg
ZG8gbm90IG1ha2UgdGhlIGJpbmRpbmcgYmV0dGVyIGFuZCBhcmUgbm90Cj4+IGV4cGxhaW5lZCBp
biBjb21taXQgbXNnLiBGb2N1cyBvbiBXSFkgeW91IGFyZSBkb2luZyB0aGluZ3MgYW5kIGFsc28K
Pj4gZXhwbGFpbiBXSFkgeW91IGRpZCBzdWNoIGNvbXBsaWNhdGVkIHN5bnRheCAoaWYgeW91IGlu
c2lzdCBvbiByZXdyaXRpbmcKPj4gY29ycmVjdCBjb2RlIGludG8gc29tZXRoaW5nIG9kZCB3ZSBk
byBub3QgZXhwZWN0KS4KPj4KPj4gQmVzdCByZWdhcmRzLAo+PiBLcnp5c3p0b2YKCkJlc3QgUmVn
YXJkcwoKR29rdWwgUHJhdmVlbgoKPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
