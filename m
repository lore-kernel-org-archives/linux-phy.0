Return-Path: <SRS0=U4XZ=N6=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	UNWANTED_LANGUAGE_BODY,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1C3FC433EF
	for <linux-phy@archiver.kernel.org>; Wed,  8 Sep 2021 12:29:57 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6AD626115C
	for <linux-phy@archiver.kernel.org>; Wed,  8 Sep 2021 12:29:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6AD626115C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=cadence.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZNUmFOLxqJ3hTExdsQ41E0aXGT+JDZ49bIzDMoT1GvA=; b=hOjf91AzEyshJz
	fix7V785cRl+czbnsQryGJHGOJ6uccGpTs/LXefL/iGcAUDTQ5MEPk9q9Kz2Zm+PffKz4EVXAMme1
	1Avy5mtM5AxEiBpuge4GrwGWshvHHTc13XqokGyP4CkhZ3qxQ8lpZjHBTAjwOku20ff59vtkWoShv
	Nv4MBAqnrf29RR6JGwtl99rrgL/PRrgOer+dFY7R2Hx9N3s51VZNO/ruR7rwaghIfqvIM2Jly/ouM
	xoWWbLlNUXJp3smBfI2+RRy0WlkfK4xLhmZ7cbT8BSzUaC+0QNLX4mbnKVBtJAHGGjDszVEmzJLqs
	X8FhWq1hGGBlwYtpVWtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNwiC-006hoD-QS; Wed, 08 Sep 2021 12:29:56 +0000
Received: from mx0b-0014ca01.pphosted.com ([208.86.201.193]
 helo=mx0a-0014ca01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNwi7-006hkK-CK
 for linux-phy@lists.infradead.org; Wed, 08 Sep 2021 12:29:54 +0000
Received: from pps.filterd (m0042333.ppops.net [127.0.0.1])
 by mx0b-0014ca01.pphosted.com (8.16.1.2/8.16.0.43) with SMTP id 1886da2D016872;
 Wed, 8 Sep 2021 05:29:48 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=proofpoint;
 bh=+u+eK0GZwGYvnu21onALRnXB08r6qH9xy0j8b2a+Euc=;
 b=Wf2hyD2C9t4UqVcVkVvGJmgiKjF2GcvfhD4ULlD8MNQ+UaC/aTl3EqVx75VWa8pehGSL
 KHuP2bInLiseU+7rpMWR5zxUPs1qITla6N29GqcfxNMQ4S/vcNcE0WQq6BHxLhOTT832
 85P96V2flfn/ho5EYzKan8Tt9DM4pdkGOJ2ltOkzd4oy77pMx1QKF/l/FMkv8+slTsSl
 5UayLNY9a2sNB0v2yXKHXoY3qnD6Wp6O+urLglasb6KoMMoKJCb8LsY2L+Sxf7ilAJ9s
 gQxiQBVd0KNoUNZA4/ih7dpEVwjvejHj2F3W97/BqOEW9bMvjfy9M2Z5/Ol3uX45avZI Zw== 
Received: from nam04-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam08lp2041.outbound.protection.outlook.com [104.47.74.41])
 by mx0b-0014ca01.pphosted.com with ESMTP id 3axcp9k488-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 08 Sep 2021 05:29:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e7rbMMYWzTfRqrRN/bC4tjg51/R8VHx2T2LIcc1KDMSpwkOHQ3XtqnayPKHuESMoqvL8Uh+FbhnqQUkTNPJmRaxPJrS/+wcuwko0jzi3lACOazWA1KKYaCFSNkilN0gy+sh+HfwWkKghA8VEoTkFDVOIIBuwMFeIKH4o8gAdDKcGljMkvx4a/HUYcWkocluqJhJ9m7LPXr38QMKfx+zPdMAhC20YSEACcOcEgE+5qCHc7NqZDPpSKgZfDuON2rRawZPLgV/L78GuQoLivqFHpQ6eKXA/E6p90itNei1Jm8xBHnQj26otlZHY76LGUjI6HqNcF0fjMfG9YDCYTL45aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=+u+eK0GZwGYvnu21onALRnXB08r6qH9xy0j8b2a+Euc=;
 b=dGdB+TgHDvdR6t/M52NbDu1eYGcHUwF08i+6drTvbsHVtDmZcOTpYEQ5msh3RuZsz1rA9B3/voa1PYrvClQWwYfW5/bDqtER7Cw/g76Ispf0pB+0QDvPrhijXAUP8IS9bInSAd8bvQ/VfQLSfGgmAXGCpNIVsRzDTPHu1w3wdFQMWuaKN0sTVHVrKWicOU7aDOj5iheiRAf30TH19ufZFYhakHRRahA5AqeHqbFVLHx7v5qkGO2YJQmdfQl2e88ZShEx1hLWU7AF1aljRAVQ+rS6IPQymQC0L/4anzvHbZyt6Nx+76EeaZBhCndK3aQd8WGRloM5FtseA2Mxg0ftag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 158.140.1.148) smtp.rcpttodomain=kernel.org smtp.mailfrom=cadence.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=cadence.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+u+eK0GZwGYvnu21onALRnXB08r6qH9xy0j8b2a+Euc=;
 b=Bs9tYAmZAExukfWN5DxSkR6NmfP7liXjSFOl0SR5sqJg9703TdFwd0/wx6Y2Sn5wYjUaKOPUVBHP2zVjfyfRJ/rlERLOD03RlmTUDYfutVeF36DXu/TzlcP2fnL4UD9k3kl/MypKFtak3ph+icwfIiECCkCfIW3UJG8A2pugE28=
Received: from MWHPR1401CA0001.namprd14.prod.outlook.com
 (2603:10b6:301:4b::11) by MW2PR07MB3994.namprd07.prod.outlook.com
 (2603:10b6:907:4::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14; Wed, 8 Sep
 2021 12:29:44 +0000
Received: from MW2NAM12FT033.eop-nam12.prod.protection.outlook.com
 (2603:10b6:301:4b:cafe::c4) by MWHPR1401CA0001.outlook.office365.com
 (2603:10b6:301:4b::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14 via Frontend
 Transport; Wed, 8 Sep 2021 12:29:44 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 158.140.1.148)
 smtp.mailfrom=cadence.com; kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=pass action=none header.from=cadence.com;
Received-SPF: Pass (protection.outlook.com: domain of cadence.com designates
 158.140.1.148 as permitted sender) receiver=protection.outlook.com;
 client-ip=158.140.1.148; helo=sjmaillnx2.cadence.com;
Received: from sjmaillnx2.cadence.com (158.140.1.148) by
 MW2NAM12FT033.mail.protection.outlook.com (10.13.181.41) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4500.6 via Frontend Transport; Wed, 8 Sep 2021 12:29:43 +0000
Received: from maileu3.global.cadence.com (maileu3.cadence.com [10.160.88.99])
 by sjmaillnx2.cadence.com (8.14.4/8.14.4) with ESMTP id
 188CTX9X026939
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 8 Sep 2021 05:29:42 -0700
X-CrossPremisesHeadersFilteredBySendConnector: maileu3.global.cadence.com
Received: from maileu5.global.cadence.com (10.160.110.202) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 8 Sep 2021 14:29:33 +0200
Received: from maileu3.global.cadence.com (10.160.88.99) by
 maileu5.global.cadence.com (10.160.110.202) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.1.2176.2; Wed, 8 Sep 2021 14:29:33 +0200
Received: from vleu-orange.cadence.com (10.160.88.83) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Wed, 8 Sep 2021 14:29:33 +0200
Received: from vleu-orange.cadence.com (localhost.localdomain [127.0.0.1])
 by vleu-orange.cadence.com (8.14.4/8.14.4) with ESMTP id 188CTXqQ010325;
 Wed, 8 Sep 2021 14:29:33 +0200
Received: (from sjakhade@localhost)
 by vleu-orange.cadence.com (8.14.4/8.14.4/Submit) id 188CTXae010324;
 Wed, 8 Sep 2021 14:29:33 +0200
From: Swapnil Jakhade <sjakhade@cadence.com>
To: <vkoul@kernel.org>, <kishon@ti.com>, <robh+dt@kernel.org>,
 <p.zabel@pengutronix.de>, <linux-phy@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
CC: <mparab@cadence.com>, <sjakhade@cadence.com>, <lokeshvutla@ti.com>,
 <a-govindraju@ti.com>
Subject: [PATCH v2 14/15] dt-bindings: phy: cadence-sierra: Add clock ID for
 derived reference clock
Date: Wed, 8 Sep 2021 14:29:29 +0200
Message-ID: <20210908122930.10224-15-sjakhade@cadence.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20210908122930.10224-1-sjakhade@cadence.com>
References: <20210908122930.10224-1-sjakhade@cadence.com>
MIME-Version: 1.0
X-OrganizationHeadersPreserved: maileu3.global.cadence.com
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f42fa0bd-5d96-487d-473a-08d972c4563a
X-MS-TrafficTypeDiagnostic: MW2PR07MB3994:
X-Microsoft-Antispam-PRVS: <MW2PR07MB3994AA410979338E1B975440C5D49@MW2PR07MB3994.namprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1079;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AiTqATh9srU4LtKemwW1DTZJ7c+EKAhzhtsN6aTAJ39pwyxXuAJ60Um+ChWaYuMu2NhjvB7xGx5W+VR5L07UKessjvsYjLg6FJg13pKe6ltqieUDdCh8wrB5JlAHI6+o8cvYG2mojjNwZM8x/V4cuhSdpdUCTVezZvsTFi9QBgFzQECc0hPXseskFB4rWuww2EX7M9NDdfLvYrQMAJPD5UZNumLud49QGMcrKqcl+EhIyWvA/rVuyxni1PdZPCp7DV0sAKz4Z0eP+lNZHgzoEkt+qrmtFZHsRffqq38R77FT1V0RVKnuuWxj62/ma8mMTVWGT1zQ1QW2ljjqdAQbHAvP7mZEFHFsSq3asADTYFW4JT4Kz9wucAv8xgqFFD3KE4ei1If8sMh17vuq2Gk3cz2ibbA/BzEyxzC5emp72j6X1N9VcYzBJxjbzgCnFcVzUn0ehOy+4oDcEFGFg8I0RebxDhEQZF3ceFtd2pqaEaHrg7rue6nzm5pGTkQEoUaTnAE5tzGywJzA/vxzg0S7UHpN7P3fZ/F2aYNhSo2I4UQ9uqRZjRpUMu9mTLgoQWwRrFcePx34To2446ZzIvFAHksHjMFoLA6H6Wnw/7z07zAvwDYVeoatt4VlG/xghiTCsMe7tWpp+Ol36kdee74qCqsQ3d4pZXEN4Tv7DkSjwZX19mQpwJJVk/6VB+vm5BI74LHCqLeW0DRlpNLjqNOSUs7o8blKgvYvRUGU0ZYjU0Q=
X-Forefront-Antispam-Report: CIP:158.140.1.148; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:sjmaillnx2.cadence.com; PTR:unknown.Cadence.COM; CAT:NONE;
 SFS:(4636009)(136003)(376002)(346002)(396003)(39860400002)(36092001)(46966006)(36840700001)(36860700001)(5660300002)(2906002)(83380400001)(336012)(426003)(6666004)(82310400003)(8936002)(356005)(1076003)(36756003)(82740400003)(7636003)(4326008)(2616005)(42186006)(110136005)(8676002)(316002)(54906003)(478600001)(186003)(47076005)(4744005)(26005)(86362001)(70586007)(70206006);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2021 12:29:43.4422 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f42fa0bd-5d96-487d-473a-08d972c4563a
X-MS-Exchange-CrossTenant-Id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=d36035c5-6ce6-4662-a3dc-e762e61ae4c9; Ip=[158.140.1.148];
 Helo=[sjmaillnx2.cadence.com]
X-MS-Exchange-CrossTenant-AuthSource: MW2NAM12FT033.eop-nam12.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR07MB3994
X-Proofpoint-GUID: pGxmua2-SQ8bhCsloOMbgBaJZqWwR9e-
X-Proofpoint-ORIG-GUID: pGxmua2-SQ8bhCsloOMbgBaJZqWwR9e-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-09-08_06,2021-09-07_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check
 score=0
 priorityscore=1501 impostorscore=0 malwarescore=0 suspectscore=0
 mlxlogscore=961 spamscore=0 phishscore=0 adultscore=0 bulkscore=0
 clxscore=1015 mlxscore=0 lowpriorityscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2109030001
 definitions=main-2109080080
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210908_052951_614190_93CCD9B5 
X-CRM114-Status: GOOD (  14.17  )
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

Add clock ID for Sierra derived reference clock.

Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
---
 include/dt-bindings/phy/phy-cadence.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/phy/phy-cadence.h b/include/dt-bindings/phy/phy-cadence.h
index abc4ff81aa7b..a6c58fd46b35 100644
--- a/include/dt-bindings/phy/phy-cadence.h
+++ b/include/dt-bindings/phy/phy-cadence.h
@@ -16,5 +16,6 @@
 /* Sierra */
 #define CDNS_SIERRA_PLL_CMNLC		0
 #define CDNS_SIERRA_PLL_CMNLC1		1
+#define CDNS_SIERRA_DERIVED_REFCLK	2
 
 #endif /* _DT_BINDINGS_CADENCE_SERDES_H */
-- 
2.26.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
