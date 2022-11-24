Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3564C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 24 Nov 2022 08:36:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uNXXlBCGZ4R87mpQSkjWL1XXKnWoLt6YLvjBx/j+mVE=; b=VMTQ3BPUlzrlMU
	c9clWbqx4p0gQGqQHFzJvEcduBs9wFCIGW/wGYktM4LsAVq//5gbIIn5YnnpwtazFfYCzVvWJPnZm
	WBv4aEygTUsSCgAFRC0ZuRJmjwFmDyJ15ZZjU8VSwOGg+hSMC8mPg5t4NUD8IYqfYY/i9d9kvZ9yX
	KZQ4bqMkzv7M9DNhp5Cg+P38zdcU9hRFBni4gmmcipGNNBzX7ddshg9bDOdiWpgK8icYYcopCC1rU
	RIOno4HLwSJQwwNIsTBWX28ywAbXGMDr7iR/7Kwbdfcgc1oh0pmmgwgm/G/hhNo2xBGtba7JD8gQv
	YH4dwmWx3cvVwuGoiulQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oy7iU-006amj-1I; Thu, 24 Nov 2022 08:36:18 +0000
Received: from mail-dm6nam12on2060d.outbound.protection.outlook.com ([2a01:111:f400:fe59::60d] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oy7iR-006ajc-38
	for linux-phy@lists.infradead.org; Thu, 24 Nov 2022 08:36:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bMcih3fJO5BvAVxcSj1/E5zjy+w9yMUOG1lxGbadO0HyrXFv+9Oxe+o5v7ciFy4yCHJ1CscHci1R142oIgLdqjmKJfxTAv4/PIFXNbqlx28IlmcJ4sYkTW8l05byweh+6jdVRSx88S+hpdYqGAf/6dbp05YuX/KG1Lf0CCcIyOq6tYFn7NjWkfNVPSEjTBhYd+VH59T8+StxHOYCtDe5EKSUkelZG3uBCqx5nP8l+BHEv6zQkqh52tumI+0Gkd7ddE2Ta/l9MIntIvdbO2OOYRcMJOXET9R98oJ8+4JImPRFsx6wFOsCh9/6Mfd3oj/RSxmSegGwG2zu6GlyXv4Aww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8xcoN8E8eDV6o27uZ5mych5KBj7KtHVLv7J369H+1yc=;
 b=gvmKTSm62s+Qsw21mfyA4CNvEJuo9br3+Hf/atO2ugJjUZldTWgvajs1JbaYk/QxfDY69W60A56B2udCp+qh1nzpd5+MnT4MZT0m4BZtBzE3q8786OOEOQ4TJLFnjgCzlZCH+jB3pZ20peIFm6reptTWS8Q82fZSUONKoCEzAQ7a5NSvgQTSHMFAjggN7gY3Mfz6mAdKQb4rPXcPuFSAmjk34eeQCpiv1h8OOf+Wy7gIyMOTixI/5xKNSOS/u1F1CrYS7md3zJpGycYbH/zcqnM59hla+K+8W/LNL9+mTuRiOK7tCyNAPY2JDbwDkcNf2boFYZBLHpIIgvZJVHVI/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8xcoN8E8eDV6o27uZ5mych5KBj7KtHVLv7J369H+1yc=;
 b=LxdYCLFGc5OcJPT/yR23ex8L+5XnW6Wf2ctuJxqT8QIpOIiB/3jhZDTOJ6aSMpb+klKqm3OlWasHqBh8oY1jgHxg2E0YVUWEOHJESXV0l80LxvIZNlombwYZYkWeDlxFCq1qdWrzQ2e5Nks8Ar3GjD9mF9BYEr0jtPQ2bPkvON6FLUO/FBCKETQ1IaCkwn5k8XjfRYPJcYttXQsZ+Fzo7FlwgNH/icrpJ6OLr4TaxKFdVXklyD2YxLqu4n4UM3yLiPDtiO5XD2wLWVTP9D3tfoKaSG/h4krUDdj5jWSu+jvOuYxskRWGx88aonu+bOkt8LSl//Hc2jeWv5ypTx9jFg==
Received: from DM6PR05CA0058.namprd05.prod.outlook.com (2603:10b6:5:335::27)
 by DM4PR12MB5937.namprd12.prod.outlook.com (2603:10b6:8:68::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.19; Thu, 24 Nov
 2022 08:36:12 +0000
Received: from DM6NAM11FT068.eop-nam11.prod.protection.outlook.com
 (2603:10b6:5:335:cafe::5c) by DM6PR05CA0058.outlook.office365.com
 (2603:10b6:5:335::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.8 via Frontend
 Transport; Thu, 24 Nov 2022 08:36:12 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 DM6NAM11FT068.mail.protection.outlook.com (10.13.173.67) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5857.17 via Frontend Transport; Thu, 24 Nov 2022 08:36:11 +0000
Received: from rnnvmail204.nvidia.com (10.129.68.6) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Thu, 24 Nov
 2022 00:35:58 -0800
Received: from rnnvmail205.nvidia.com (10.129.68.10) by rnnvmail204.nvidia.com
 (10.129.68.6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Thu, 24 Nov
 2022 00:35:58 -0800
Received: from mmaddireddy-ubuntu.nvidia.com (10.127.8.10) by mail.nvidia.com
 (10.129.68.10) with Microsoft SMTP Server id 15.2.986.36 via Frontend
 Transport; Thu, 24 Nov 2022 00:35:53 -0800
From: Manikanta Maddireddy <mmaddireddy@nvidia.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <thierry.reding@gmail.com>,
	<jonathanh@nvidia.com>, <vidyas@nvidia.com>
CC: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-tegra@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-pci@vger.kernel.org>, <bhelgaas@google.com>, <lpieralisi@kernel.org>,
	<nkristam@nvidia.com>, Manikanta Maddireddy <mmaddireddy@nvidia.com>
Subject: [PATCH 1/3] dt-bindings: PHY: P2U: Add PCIe lane margining support
Date: Thu, 24 Nov 2022 14:05:08 +0530
Message-ID: <20221124083510.3008139-2-mmaddireddy@nvidia.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221124083510.3008139-1-mmaddireddy@nvidia.com>
References: <20221124083510.3008139-1-mmaddireddy@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6NAM11FT068:EE_|DM4PR12MB5937:EE_
X-MS-Office365-Filtering-Correlation-Id: c0ef1cd8-1fe1-414f-b5e2-08dacdf6f15b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	3v+A7gWUu4OKWjB5qNN80iq+RhY3J/9ml4Q2rhUj3KWq6+8BbcGfPCKYk8ofc4gnhu0vCUQv5P5+hFD+RWHR1QjDm6SNFoxkrq8EFraiaHy4H6BzX3YeFIwe4tDt+OUApLPs+xIwRtCI+p0h6Ce1rDExgA2RfS06mXdtV22PBFCEzbJ8mSl+rX423yS3r1KseBFBCd2JVFEMVH9TjzcaKmcYDsz6aOxb3rFEs6A7VbwiDIxSjKBKxIZwp9POAGDfemGYj1XL02qwTazNYOHOGweF3YtAhzpCKIuVULnkL4sgaq3Zv2hk8dlx8OH6WKpl1qfW0cO/mk+RyN/n0cWRup68KWp2B91oDAGVUUH4iv+SanL3EKuOUOOUTny0Z3yLCsiRFI0Tg4zfeEecTrffbxSkpFYdqL62teGlBwO6m4w9dMTbTt0NkPJihe3rbn1GGnXVWM0JzaiG7EWgyiL+xn8q0+dwGTauQGbkw3V8CmPAb682RmGqd93ud8Gw9gkmc5ZacEDLaQT5/aJXa4G9BMJlcCNaNjTD0OgI8dw+3lsoUmi2rZdpC1rZ/FTW3z1tNStMsv7xKGqaEIuzcE1B5jcl7TDEpINA7Mpm7fXceV61ipqCiK9cIWPRmEhf9F5aYLYJmkZpy3gAno1E1DKU+dl9IW0Y1kIa6v1hWdieWDEPYfgusFUtqZ4Cw4w2T1UNHNSGGo3HuFZJIGnAAizgQ5aeVGzFt5IGdsIESAlkOq8=
X-Forefront-Antispam-Report: 	CIP:216.228.117.160;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge1.nvidia.com;CAT:NONE;SFS:(13230022)(4636009)(136003)(376002)(396003)(346002)(39860400002)(451199015)(46966006)(36840700001)(40470700004)(2906002)(82740400003)(7636003)(40480700001)(356005)(7416002)(7696005)(6666004)(26005)(82310400005)(8936002)(316002)(54906003)(6636002)(110136005)(86362001)(1076003)(186003)(2616005)(426003)(336012)(47076005)(107886003)(41300700001)(36756003)(5660300002)(36860700001)(478600001)(70586007)(8676002)(70206006)(4326008)(40460700003)(2101003);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Nov 2022 08:36:11.9752
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c0ef1cd8-1fe1-414f-b5e2-08dacdf6f15b
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.160];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 	DM6NAM11FT068.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB5937
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221124_003615_192250_55904924 
X-CRM114-Status: UNSURE (   7.42  )
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

Tegra234 supports PCIe lane margining. P2U HW acts as a relay to exchange
margin control data and margin status between PCIe controller and UPHY.

Signed-off-by: Manikanta Maddireddy <mmaddireddy@nvidia.com>
---
 .../bindings/phy/phy-tegra194-p2u.yaml        | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-tegra194-p2u.yaml b/Documentation/devicetree/bindings/phy/phy-tegra194-p2u.yaml
index 4dc5205d893b..0ba3f6a0b474 100644
--- a/Documentation/devicetree/bindings/phy/phy-tegra194-p2u.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-tegra194-p2u.yaml
@@ -40,6 +40,51 @@ properties:
   '#phy-cells':
     const: 0
 
+  interrupts:
+    items:
+      description: P2U interrupt for Gen4 lane margining functionality.
+
+  interrupt-names:
+    items:
+      - const: intr
+
+  nvidia,bpmp:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description: Must contain a pair of phandles to BPMP controller node followed by P2U ID.
+    items:
+      - items:
+          - description: phandle to BPMP controller node
+          - description: P2U instance ID
+            maximum: 24
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - nvidia,tegra194-p2u
+    then:
+      required:
+        - reg
+        - reg-names
+        - '#phy-cells'
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - nvidia,tegra234-p2u
+    then:
+      required:
+        - reg
+        - reg-names
+        - '#phy-cells'
+        - interrupts
+        - interrupt-names
+        - nvidia,bpmp
+
 additionalProperties: false
 
 examples:
@@ -49,5 +94,10 @@ examples:
         reg = <0x03e10000 0x10000>;
         reg-names = "ctl";
 
+        interrupts = <0 337 0x04>;
+        interrupt-names = "intr";
+
+        nvidia,bpmp = <&bpmp 1>;
+
         #phy-cells = <0>;
     };
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
