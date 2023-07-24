Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B40CC04A6A
	for <linux-phy@archiver.kernel.org>; Mon, 24 Jul 2023 15:00:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NhC+a9+u/+DvIrWeJliemiXFI8GcGtauEE+cRxYh0lQ=; b=x5nZIC4YHf8dMe
	BFsVDt4eSEmu+81smCbePKXB3RFtGqUZIuh0HsEhTsRi1LXvyy8gVNEmWxUYREI3o/A4jRh2M0l6d
	ergCNFsoYgPtixxDKmrz6oC3D5Ei3Nmb86uYRJnoX9loWMjBvMTDAiFQYGE/Y20njNn9FL4oXiufZ
	PxlmfaIVKyy/krZaMOPbBbCPARmdJXLjbq69AJ+3LGXWqu8QIGarEyxkhIRzurwHq4nGzWgChcnGN
	uJ4+hdOQJ/f3Od7DdP7V4rgfzG/KB8MqWV5MbYXVZSdzQh8co95lap4d1cA6DTfEJ2aEjOll286/z
	Yq0IsyC0jOpAmkThSwAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qNx3I-004fSt-0C;
	Mon, 24 Jul 2023 15:00:48 +0000
Received: from mx0a-0014ca01.pphosted.com ([208.84.65.235])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qNx2w-004fN8-1c
	for linux-phy@lists.infradead.org;
	Mon, 24 Jul 2023 15:00:27 +0000
Received: from pps.filterd (m0042385.ppops.net [127.0.0.1])
	by mx0a-0014ca01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 36OCkHFe000861;
	Mon, 24 Jul 2023 08:00:14 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=proofpoint;
 bh=bqgJds/w4CVuNNwp3QDQVOmEqkbgcc1ttbY6+n3mxQc=;
 b=F9Kl6EK/LKHS1jjnKW39VOMKO6yD7b/J9DNvsRYPryCHNXDyYEJjZb2MTQYVByNd8Pap
 Cllm7JJzlD2PAF4iiac97lFu1s5u8Wo5qoMgRRW7ctOvlAMFUPwxcHOa+H76Cqua5rfG
 PIiNURp5ct/aOtpsYItcFNDmxZQPFfQMu+Cs+v1gaLsu3AuKHVKn9dKE0nOjP5yuqynv
 BuvaQcpo4xhGECsFRtaIqfKPZwR7teP2qEtPzZCV9mSN9hfwiQSGnPKyWjy0+gMzD2XF
 EPx7wTUuTr15cqal6Plkml8nZGanMZbKvwFACBSU+JBYueNJiGNU7tt0TWpejZWmsNZD 4w== 
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2045.outbound.protection.outlook.com [104.47.66.45])
	by mx0a-0014ca01.pphosted.com (PPS) with ESMTPS id 3s0bnwx66e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 24 Jul 2023 08:00:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OyT+/QkkF8Ub2sWsp8m1T/r9wORNn/QbAR5LO//tobV9vJuYBH5T/X9H2Bn+U0KD8xl5opaf4jqvGaPRzBhGtf1oQ7xjK2QMe0YslDGOSWIh8C9kxYY/nVYom9BVaoDzzl8ryPdZbTdzKWIz+IR63NTdIkRSiaNm+rpheXxZPLrWC5ZZuM21HbGmt9D1Yy5sPL8ANhhlXedrkvAU835cONlLXf4SNSOtT9GtROqjhhuoJxQG/UL5RhSvl2rXf9Ls58ViNw8dBXfp7Acb8ntj93b74nN6sAJNVt9GEL4GFuBuiwGVA3p+pEB4qxlJ5hRj53aW6Fb2+lMugAm2IavBzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bqgJds/w4CVuNNwp3QDQVOmEqkbgcc1ttbY6+n3mxQc=;
 b=VYlPQhTpMgFil8wJ7fRpBilt5BjojpVYCnXGjMuZ3VzDgyODkxYSl/sjPxMYI7KIhmAZPiCp3zLWHIx6VkzxZsNdMljAbbVewCGuqbtVCFVclVxOIT7lEBC11ARjKvUwPzl3lAKge4xkQnT3iKw2iR1QW62PETCpX+lpP4Iy/3WxpvrZsLE4a0BazTvwZ8QPUS3E9EK/Dlg/5JYAu5PqtJM/T7JwKdzydR6xFTVT9oozjFYwkHKf5lEbMVuNLBqoMEHyuckkYVxDssOSaKVkrf3QcLXFDa1HUhbeVZyqYi1TAjp7KGRXxX0F/0qBPTr4GzmbMAzTd7XwHuFfGxE6FQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 158.140.1.147) smtp.rcpttodomain=ti.com smtp.mailfrom=cadence.com; dmarc=pass
 (p=none sp=none pct=100) action=none header.from=cadence.com; dkim=none
 (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bqgJds/w4CVuNNwp3QDQVOmEqkbgcc1ttbY6+n3mxQc=;
 b=zGTVHMj2roSiKG5yWctfTqpf6e7XKJzMlRLbVGea2JFk1DUJHJW3L1SDEsuB1oHTyjOibcpN6how/LhKEsUfaNB3U//bsghEVP9OHomYXKALzka0n6vtia+MLnmkyWyvGvG8BBfiWJxWaK9DKdsGgQsXfSckJVa+DHsNk5awtvc=
Received: from BN9PR03CA0981.namprd03.prod.outlook.com (2603:10b6:408:109::26)
 by BLAPR07MB7572.namprd07.prod.outlook.com (2603:10b6:208:297::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.33; Mon, 24 Jul
 2023 15:00:10 +0000
Received: from BN8NAM12FT054.eop-nam12.prod.protection.outlook.com
 (2603:10b6:408:109:cafe::c4) by BN9PR03CA0981.outlook.office365.com
 (2603:10b6:408:109::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.32 via Frontend
 Transport; Mon, 24 Jul 2023 15:00:10 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 158.140.1.147)
 smtp.mailfrom=cadence.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=cadence.com;
Received-SPF: Pass (protection.outlook.com: domain of cadence.com designates
 158.140.1.147 as permitted sender) receiver=protection.outlook.com;
 client-ip=158.140.1.147; helo=sjmaillnx1.cadence.com; pr=C
Received: from sjmaillnx1.cadence.com (158.140.1.147) by
 BN8NAM12FT054.mail.protection.outlook.com (10.13.183.217) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6631.25 via Frontend Transport; Mon, 24 Jul 2023 15:00:10 +0000
Received: from maileu4.global.cadence.com (eudvw-maileu4.cadence.com [10.160.110.201])
	by sjmaillnx1.cadence.com (8.14.4/8.14.4) with ESMTP id 36OF06HE023464
	(version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 24 Jul 2023 08:00:09 -0700
Received: from maileu5.global.cadence.com (10.160.110.202) by
 maileu4.global.cadence.com (10.160.110.201) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.7; Mon, 24 Jul 2023 17:00:05 +0200
Received: from vleu-orange.cadence.com (10.160.88.83) by
 maileu5.global.cadence.com (10.160.110.202) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24 via Frontend Transport; Mon, 24 Jul 2023 17:00:05 +0200
Received: from vleu-orange.cadence.com (localhost.localdomain [127.0.0.1])
	by vleu-orange.cadence.com (8.14.4/8.14.4) with ESMTP id 36OF05o0005760;
	Mon, 24 Jul 2023 17:00:05 +0200
Received: (from sjakhade@localhost)
	by vleu-orange.cadence.com (8.14.4/8.14.4/Submit) id 36OF05fI005753;
	Mon, 24 Jul 2023 17:00:05 +0200
From: Swapnil Jakhade <sjakhade@cadence.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>
CC: <mparab@cadence.com>, <sjakhade@cadence.com>, <rogerq@kernel.org>,
        <s-vadapalli@ti.com>
Subject: [PATCH 4/5] dt-bindings: phy: cadence-torrent: Add a separate compatible for TI J7200
Date: Mon, 24 Jul 2023 17:00:01 +0200
Message-ID: <20230724150002.5645-5-sjakhade@cadence.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20230724150002.5645-1-sjakhade@cadence.com>
References: <20230724150002.5645-1-sjakhade@cadence.com>
MIME-Version: 1.0
X-CrossPremisesHeadersFilteredBySendConnector: maileu4.global.cadence.com
X-OrganizationHeadersPreserved: maileu4.global.cadence.com
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8NAM12FT054:EE_|BLAPR07MB7572:EE_
X-MS-Office365-Filtering-Correlation-Id: fba6dab4-cfa4-41ae-bc53-08db8c56ad1d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: g3o6s6wTmsh4fsXmBD8UTvCb58azAxh8b0BTcxNzvhCdOVvNOysE1UjZJz1p8qYXaaD8nCDro7/+7SNX8i9b3+6XUAc/xbtiKQvnHk96dwhBSjmufuHQ5pwiR7iPbEFSzVTb++NUw5Qn8enz620p6QsaVKjwWU8742bgIJyRdUkfwezIm9XApbbK8vDmI4KKJjWVKBUt/hFJeSIa5rcQfnSeSq57SBN3jMFNjbg29AvKchwQM5ieRqL3fzfbZJWWg54mF1uyaN7fNYRNd6ETiO8XnLhNwMZtadYRBAm0GYB0rnFlH10fkwn51f5zc6M3QDumXzOF8cmb6ASiiEH4daqx21yH4R+RZ9YDTPhrZ4PtGr/sVNDlRQ1W1eGYDA5PNKn2Y5dWVuFnvtOJlBUuJ1IKpB9nyy+kpmzdFY565/1PyxDBsP1bhv88IjzrCtU9T/apgOwIWwIfk9MpmBewS0CQ2qUAgr1PazSSbsEyFn5K8ExJFPoumUgTQMgbCo1WfjMetzdCqwD8Csy2qc1oIfkew1BnXFv+tj4JOw9tnfdFtBh+clAAmKdzz3Q7nF42E25/lhdm70I3f680c062zZfoxFHtrQDzHXiW7uThYusBSBRxefr2WXJeS6mH+3kdoHN4hngWt9i/AH9/bBgjjXW7gi8Sc23Kryj91fHucb0nGxwlon8i+emfXO3klLiB2W1kCYDoxFI1w7TobhpcF7vIwn/SWrmFjpUTm8P2JDQRnRH9nZjqrNxHNuFTm8YaHE/wIpFENexKHjZMc2bdtA==
X-Forefront-Antispam-Report: CIP:158.140.1.147;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:sjmaillnx1.cadence.com;PTR:unknown.Cadence.COM;CAT:NONE;SFS:(13230028)(4636009)(136003)(396003)(39860400002)(376002)(346002)(36092001)(82310400008)(451199021)(40470700004)(46966006)(36840700001)(40460700003)(426003)(2616005)(47076005)(26005)(336012)(1076003)(186003)(36860700001)(83380400001)(70206006)(70586007)(4326008)(42186006)(316002)(8936002)(8676002)(7416002)(5660300002)(41300700001)(6666004)(2906002)(4744005)(54906003)(478600001)(110136005)(40480700001)(7636003)(356005)(36756003)(86362001)(82740400003)(2101003);DIR:OUT;SFP:1101;
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jul 2023 15:00:10.0821
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fba6dab4-cfa4-41ae-bc53-08db8c56ad1d
X-MS-Exchange-CrossTenant-Id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=d36035c5-6ce6-4662-a3dc-e762e61ae4c9;Ip=[158.140.1.147];Helo=[sjmaillnx1.cadence.com]
X-MS-Exchange-CrossTenant-AuthSource: BN8NAM12FT054.eop-nam12.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR07MB7572
X-Proofpoint-ORIG-GUID: hGpj10OgFqV4XekcBgIYdTolGFliJagW
X-Proofpoint-GUID: hGpj10OgFqV4XekcBgIYdTolGFliJagW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-07-24_11,2023-07-24_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check score=0 clxscore=1015
 mlxlogscore=951 suspectscore=0 bulkscore=0 mlxscore=0 impostorscore=0
 spamscore=0 priorityscore=1501 adultscore=0 phishscore=0
 lowpriorityscore=0 malwarescore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2306200000 definitions=main-2307240133
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_080026_550313_4EB34665 
X-CRM114-Status: GOOD (  12.98  )
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

TI J7200 uses Torrent SD0805 version which is a special version
derived from SD0801 that has an additional input reference clock.
Add a separate compatible for TI J7200 platforms.

Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
---
 Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
index ddb86ee0cebf..e3a1efd61033 100644
--- a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
@@ -20,6 +20,7 @@ properties:
   compatible:
     enum:
       - cdns,torrent-phy
+      - ti,j7200-serdes-10g
       - ti,j721e-serdes-10g
 
   '#address-cells':
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
