Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D886BC4451C
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 06:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Q7PXHtzdo7m7e4dPoQKra/TP4OVeON8vi+TWIYOoIe8=; b=ahRI+WoRhy16/M
	1i6TSt4FSF6nqaRjMmF2qWWvmj3IHaA7Q1pEdyf5kg+4tad7JR8ZmP8z7hCfBWzPTTedRQW4NDlyu
	144a2MTB58KkyA091rDLm2xWya5wGUXf7ItUddvCj1HGzm3hSkaf+K1y2EvZgCuFOkFu2piUvWnqh
	vRY3HF7mQY8EySrT+dE5ikew046Of/MIABDvT1b0+dFKPCjRPCZvkcpxSDPy2GbXrggAJwdSAw2WB
	zrTzXCYjWNuT3S6kh7Gp9OtdGLmXZjXzL1TBOpvM3U58gCS/hGz8c1fzX+/VFmBw99pOrqD7KYlKQ
	iKDAytTvjtUlcttpGV1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmQIY-0000000Axg9-175e;
	Wed, 22 Jul 2026 06:19:18 +0000
Received: from mx0b-0002e601.pphosted.com ([148.163.154.28])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmQIV-0000000AxfH-0IAn
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 06:19:16 +0000
Received: from pps.filterd (m0374955.ppops.net [127.0.0.1])
	by mx0b-0002e601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66M507Q02797164;
	Wed, 22 Jul 2026 01:19:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=proofpoint-05-2026; bh=dHPMqUW9Eb2fB
	C2G568ZLNECVpiZHZMkSw/1ulu48Bg=; b=RlMZ53Fl3xzOi0POQI+4q748WPU1q
	oJRjI/QAuEXnVWXGKd1s36z32Y1ph54y7YDwbxm8bEuOmS4sjrWNjt2ML1J/ulGT
	Fu1p0264A1OnoijeFjOKpqyLrF92GHpgfKpg/NESfgJ5nd6/ARAeyAwwFufv3uZ6
	M+EoSs/196gbOa4qZ8Bm93/myF9UIoElt05RJQF9KRmIOHcShtTzGf7pJzM3U7ej
	hbG9ZRNXsVfDCFGrkEWW05rIPnchqHkc4H/W1jHRmZr1+rV0/uLV3st8CIj1Hmgd
	vAsKhajq0Ei2em7vf33kW2FdrgreXMxiQxERHhVSU9HP43h1xjsu2+bSw==
Received: from byapr05cu005.outbound.protection.outlook.com (mail-westusazon11010012.outbound.protection.outlook.com [52.101.85.12])
	by mx0b-0002e601.pphosted.com (PPS) with ESMTPS id 4fjpxvreej-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Wed, 22 Jul 2026 01:19:08 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JLjEb0o8rZ9HpA+FyEdL14eDcLhE20e+rfX9VqI3ch+i51nsJ/s1tIDbjYHeBz9mXFQZgBKaphCCLQdx++IYP9XFh4WnjRCjup5ibm1DrE/3buvzlSIEjl21TgO0ANSUaPIVLQphHf84J7zax8AMFxizr/gR11/LEw2W194eV6Pcp5eY5Fz1SLipn5MjB1h0kWMdXzes0xofgBrDBllerXzrWx3doUCsEd1YX58vjZrXmAlrdVOKyYwnD68dq54yHwH8Fi2aA2ldE7wUso1yDZIIeoI26FxgjxKZA/tLpM5AMwLEZJmZ0tflUtDeIhLMpodpFk7unHcX6bjQVlSElg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dHPMqUW9Eb2fBC2G568ZLNECVpiZHZMkSw/1ulu48Bg=;
 b=WI3t367U2mYQ0TBC2UH9eUvUrJjON/7rUr9gTrp353PLSM4BW+QbdHRcN8RmjGk/h/Cd7wFCf/M7C1GvhRs7CEfv4SZxDtdXHEJ5czhEAB8DAi4JINSc5224Vze5N3msjRsstOXBPGn0yiLWy2MKcOzDdBHScP3lMgQXzMA2d/K5kxO8SettDZcv/lfbJYjRPWBu4YZaEmdpTOMeCyA1UZmUth8aVtGMfDxruFqrgGcUCyMLYA5m8wcvG6od1YpveVTnL0XKj3gex6Jd6WqbVxy4FZ0SDmixDNFSTS9Ll//stcKbmNysSKRYpqhAH/Dxs/YYHQG8l/wR66w/So0waQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=cadence.com smtp.mailfrom=ti.com; dmarc=pass
 (p=quarantine sp=none pct=100) action=none header.from=ti.com; dkim=none
 (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dHPMqUW9Eb2fBC2G568ZLNECVpiZHZMkSw/1ulu48Bg=;
 b=Pdii2b0z0EZ2hmdzgiMjEe72zRnFvfHPoQfR0IilOCku9cmdCxMNVvZg76ey0mBi+BDCew8FuK0GWjsbFAFGBpt89WJ7lvsn1Kf+wy74A+evDswv5nZOxPyGu7hL2KycCk0B1gZ6M/8OOcZm7CUM8gWvKprmifRFy6PYzWVqTx8=
Received: from DM6PR21CA0024.namprd21.prod.outlook.com (2603:10b6:5:174::34)
 by SJ0PR10MB4541.namprd10.prod.outlook.com (2603:10b6:a03:2db::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.245.10; Wed, 22 Jul
 2026 06:19:05 +0000
Received: from DS1PEPF00017092.namprd03.prod.outlook.com
 (2603:10b6:5:174:cafe::29) by DM6PR21CA0024.outlook.office365.com
 (2603:10b6:5:174::34) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.270.4 via Frontend Transport; Wed, 22
 Jul 2026 06:19:05 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 DS1PEPF00017092.mail.protection.outlook.com (10.167.17.135) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.245.5 via Frontend Transport; Wed, 22 Jul 2026 06:19:02 +0000
Received: from DFLE207.ent.ti.com (10.64.6.65) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.37; Wed, 22 Jul
 2026 01:18:36 -0500
Received: from DFLE212.ent.ti.com (10.64.6.70) by DFLE207.ent.ti.com
 (10.64.6.65) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.37; Wed, 22 Jul
 2026 01:18:36 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE212.ent.ti.com
 (10.64.6.70) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.37 via Frontend
 Transport; Wed, 22 Jul 2026 01:18:36 -0500
Received: from a0507176-HP-Z2-Tower-G9-Workstation-Desktop-PC.dhcp.ti.com (a0507176-hp-z2-tower-g9-workstation-desktop-pc.dhcp.ti.com [10.24.53.223])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 66M6IWtr3172910;
	Wed, 22 Jul 2026 01:18:33 -0500
From: Gokul Praveen <g-praveen@ti.com>
To: <conor+dt@kernel.org>, <devicetree@vger.kernel.org>, <krzk+dt@kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <neil.armstrong@linaro.org>, <robh@kernel.org>, <sjakhade@cadence.com>,
        <vkoul@kernel.org>, <yamonkar@cadence.com>, <g-praveen@ti.com>,
        <s-vadapalli@ti.com>
Subject: [PATCH v6] dt-bindings: phy: cadence-torrent: Update clocks for multilink SERDES
Date: Wed, 22 Jul 2026 11:48:31 +0530
Message-ID: <20260722061831.1045884-1-g-praveen@ti.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS1PEPF00017092:EE_|SJ0PR10MB4541:EE_
X-MS-Office365-Filtering-Correlation-Id: 0f1c42ab-ea76-4893-57cc-08dee7b9205a
X-LD-Processed: e5b49634-450b-4709-8abb-1e2b19b982b7,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|23010399003|36860700016|82310400026|7416014|376014|1800799024|3023799007|56012099006|10067099003|921020|6133799003|18002099003;
X-Microsoft-Antispam-Message-Info: iZ9wLX1mt7vbxJtpGUWhMzZK+wgbKXbU+KLk2OUZWPiSys9tswovZVafeCA0U4bBNPdyH2PKWipiLRa54N77RPnpfazvwANDXqqa2oR+sbYRr6+KASY2mP795DmV4IvrMoOlaXQsB00JVKUUnH9TkUayQsefQ6Q4GnGNOU3GxRRTcNrdMPZZ8XSYTbM8B185AgCiGs7R4IsDLyIaMxo9B3fr2jfh+F2tFbj/KMXCzZ2fFAOiRvDZAc8hbvDNuzt/XL1AxgU/HEgME1QTdHfSi2gqyC14Tjg+vnveJY/yESxiL898PoczfOMQm7HWssxdEBMyQjb8qYTx2r903D2JPTr/jvXL4abcHWLE34E0+gS2YaQ7qwWmDDuK2PMy7KxCLb6y8ZAHbWMsk+vO/BXPNybz/nyBb/LfjkSQsR9Btrgor0gq8DUQFxMUB3U07ao2wsLUOySSzzaCC+kL4GHMP3Q5UvVhY9jr4bpiWTYmtoLRmV3zqq4NHblK0ctnZLEV3ebV6sfj2isHrZHVPzESc4q64xpMJm410+jsZoxl+cFHQ4k+jfCZXZATZTsXCTcJgNsxjSJr3+uTo8i+osRUkbydHcOgzd1iky95/e63J69B2Vcrl8HmPXvGzBUJMnZ/zAqaH+cX7/1svPPYceQRaumHDTKoAtIqdZaj3aK1hqD6rvkzNNMIhDKmvByG/SWb7z20y8OUQ0zcDZy5/67kECju4V6VpvYthKl3fBl0I6GaRMiw9fVy9ZaqhpgUWqV0
X-Forefront-Antispam-Report: CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(23010399003)(36860700016)(82310400026)(7416014)(376014)(1800799024)(3023799007)(56012099006)(10067099003)(921020)(6133799003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: dPIm8p72bJSlqJE/7zyGaR0qY3frjGxgM5NwD0oAtajrOjvqDJaj5aV6JjqvZOtg4esm/+ppHjkRoSlBL22yhH8g8O8XH2WTXKZpS6u2Pv+ayICPAMniablJumsY5GNSceq0qho78Q0MnvWDa4M1orQA2fYTG+MlLg33VhaGi5j4R8wNHaaMC07O4Pl5e+qlNZSAVge6f4QWxi8u/0+Ycvxb+IroN9C1fMjFRzXz4f7774RfjSlmZZRAwyP9mdC7CVxrWVPG263NgH2kDCw734xogUspdrXabVQb7Ni4vGFwgSuJprrp44QaRjIjbcLj5v/ZX6gPcVpQn5RKbEJEqi50sneq1g+/io4pHlzOKMAGq1ufI88rv1E49+QTtZ/cFMs6nAfiu8pimZEVijX679aMS5m+O5Ogo/Crjz80Hi5ljLXvZ7N/K0HWWX9Ahmah
X-Exchange-RoutingPolicyChecked: KZAozIxI6B7bd4/cG4pdCmfbZi/7/knJVR+8RTE+khNwlq8ZAV0PSxowQbjh4OtiXYVU3lZwP4bYkFXO04iwMe1QHt9AWuiy31TIy1A5T0HW5Fjl+62POT4U3d2ZEUua6uBuZjh1DD9LurnOJcd7pdomlnTPj4QzN6IjlOq71NL6b3K56p8I4xGBdu0ROzjhrexEHGCSHZp1w8HV5fTRmzAEQ7St06jZ63h5Z4EeG03i0/TYuKNi9+2sTlxr9cxAJBsqaMHppJWb9HJcZMjliJ6PE0rBfgdOdv5AjcOE9x7MoPkwlhKC3cfiYYiNVmP3WBZ674ZPobKCMeBHlZKLhA==
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jul 2026 06:19:02.9990
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f1c42ab-ea76-4893-57cc-08dee7b9205a
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource: DS1PEPF00017092.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB4541
X-Authority-Analysis: v=2.4 cv=J+uaKgnS c=1 sm=1 tr=0 ts=6a6060dc cx=c_pps
 a=cX17BFbqy3c2X70AxBoB8A==:117 a=tJyPKKxUohctrY4NYmUjkA==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=RAioF0-LDSMA:10 a=V5UXEbMT0ywA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Z8NIEmU8O1QQgoT56wFK:22 a=fPAWb5peG099m5CrUpKH:22
 a=sozttTNsAAAA:8 a=uSPA2Th2IVTVKQU8YO4A:9
X-Proofpoint-GUID: SJFobS498pbc09snOLLkVwAjVcm5Ie5g
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIyMDA1NyBTYWx0ZWRfX+8HQIYJC/Udw
 QscFIUTSb3foUqJYW5cUPii31ilVxSSEdrGr+HrbV/gNFwxwjJcbCOb+UdlKXNRuhal7x25WjNL
 XKaTzTZSQrbp8eAQ55V5iEkNEtxkB1ztHkRRkmW2qN3z9sAuoNRnJ773D0f5eKh25O0IDtShPw/
 Kp0lqqP+2yKe+NLC6I6UWwYKwjjzewoL7OMmIOEY1bbpB76JNvQriVL8uJkTRssL0VSIEgbBHA5
 RW8j762c56JSRGO2b0Fn7Z9HYQcmJWv/QqzUxGrfeclFOra8MPBnquO4UhLXt4kf8XM5w+cuzIP
 b590rOZsyAxbaaV3ohhsU80274dYJkub/Pzj75IwXxiTFwJiSxEXS1h5rMmO3kR1tA6R5N8ymmb
 eXVAEmwMaNSrYKL2uNSQLlEP3HKTIad4stNbTIEvLe2E/sPMaU8Tq4oXtOiuFT2yMHXzXmAlziG
 UiUZ6Y9Ofmjpc60o4WA==
X-Proofpoint-ORIG-GUID: SJFobS498pbc09snOLLkVwAjVcm5Ie5g
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIyMDA1NyBTYWx0ZWRfX/QjJ33x0e6cQ
 AQwNaVwXfOtAJ/Rnpd2WWJFJXJH8jJ233SgquZHNyrXN4i3ZkYaQut4V8l3Ao7YQ0QvsiHCeWkR
 VSrFcl1r7R08TrSeeuJhAYGlblB28+I=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-22_02,2026-07-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 clxscore=1015 priorityscore=1501 phishscore=0
 adultscore=0 lowpriorityscore=0 suspectscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607220057
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_231915_354003_01AAA33D 
X-CRM114-Status: UNSURE (   9.70  )
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

For multilink SERDES configurations where each link requires a
different clock frequency, the SERDES provisions an additional
reference clock for PLL1. Hence, document it.

Signed-off-by: Gokul Praveen <g-praveen@ti.com>
---
 Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
index 9af39b33646a..95f536fe861a 100644
--- a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
@@ -34,7 +34,7 @@ properties:
 
   clocks:
     minItems: 1
-    maxItems: 2
+    maxItems: 3
     description:
       PHY input reference clocks - refclk (for PLL0) & pll1_refclk (for PLL1).
       pll1_refclk is optional and used for multi-protocol configurations requiring
@@ -48,6 +48,7 @@ properties:
     items:
       - const: refclk
       - enum: [ pll1_refclk, phy_en_refclk ]
+      - const: pll1_refclk
 
   reg:
     minItems: 1
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
