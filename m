Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76BACC982EE
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 12:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kZy74tVhitoTKv3WOcc6BeSEwjgEQwpX1jDAbPQjNWs=; b=UKwRpUPHk9d6tZ
	m79baLHXTXbla+7kotuRJ0pXVOONWvXc9sCAXEg/FOrXUpPGiDMogf16HXCoxhSVP4Te7Ydltdn0K
	8gd9qbGsgHWV8bkGpyIlzT054ARqL7JPT0a3BRqE/lryv6qI9uLq1wm5L2J4/S/+Ire9FwZ/uxSL9
	SKJWHxVlarmP5CfDm/ZwKwHPKuB/njvoJQ31r44l62L04LWUUZnUolymoQyMwLQMort9TVhgrJ+2x
	Fb+IjlHyK0lyNEtTFuY1uxE3fM58e99TQcVCOerOFwT7KNjTxZxrwtDb2tbuhNM225oHpNClaSJe0
	HsqqEnFmMD2QyiVYXQCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8cvl-000000021us-0QX0;
	Mon, 21 Sep 2026 12:15:33 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8cvj-000000021u9-2quS
	for linux-phy@bombadil.infradead.org;
	Mon, 21 Sep 2026 12:15:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=CC:To:In-Reply-To:References:
	Message-ID:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=U5UYcvepGsE1gJcjbopDFDY6mwjJ67mpD602vPzLmRE=; b=EgOw77r5XTDdngNqTwqIhrFS4i
	f1sNVj/UyvzFFsGLzRuJKTQizCYr8ffmQh9U1uf9hgUMjvrMrc4LdwzwgvxlDU6fBcNk9gEmqJlu/
	0vqQElWyvYY2XUZgnN13pCSuIShN6+uY+gf4U8EWs/Q8c2NSKQEGzng3boDzRKv94/3nM0hB+4FDk
	PgO8Se2ow0yecklIHQHV+RXJkHdhJGP9iMU16nqE53RF3YObsu/zWT0/T6qOuWgO12RaFq1XxMXrz
	xcl8xqI063YC5JXhB0TjuMwnTwDawi9wq1Vqi0YtfOFrwZndfO+bmKfaOc1QF2Hhy1xWCHx83iEMS
	9lMvsg8Q==;
Received: from mail-westus3azon11010057.outbound.protection.outlook.com ([52.101.201.57] helo=PH7PR06CU001.outbound.protection.outlook.com)
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x8cvf-0000000CGLN-2LHp
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 12:15:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u2VlvYarPssUI+EI2HOm6VUKRRNZeLqHJMJfHJHIwq8jpXjtMgKQVJX3hlnVCsslo6opSjL7f5vqnphZrx9kW4CkfwF0DOxg2gty4RdRdP4K3emwgiDizPdu6gTKVuM3+dv1RwMYPjyWe710iyYkUpPK18XHTINJ3sDTa+otNnoVWu+EDpwbp8lBa/zTH8DOYQHAj9dTaZd7ey2KT4LJCmR/qpzexyx7aojWpSLJnzC5VeC+95ulZxyLg3lBjGlR/Y3SBcGuIKYTLp0kiN+gevuPFwTwecApY5Us2JIzckhG0pQJJVHxD3bmTg7qDGPSX1F0SfqYJhYEFA2mVFjYDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U5UYcvepGsE1gJcjbopDFDY6mwjJ67mpD602vPzLmRE=;
 b=B97uTWHKoxlVcUKcGYmUo6AQEwDut6rY54p9CVHp/o812Z36SJEN+lDdalOUDJLHluSIJYMeT+7nM6FFURSmjAs6wRC9yJfvxegOrOhMOuguNeUbNeAGkS1DaHWo/3APOBTj7iBPDGrYtbTIdPS56T6CFef8MOuFawyNre1/gg5PrQCmSWpuLHvkWfAPM0kGxbfJu5JjpweQ1n1/GJo3pB14rfUh6QPR1rdkzV/wuynwtN9MEdbKrXePtnminI4wjeoiSpZ6CA2X9+aPIoO9dK/clNg3TsHmsttjCF39GyrwP2Hqf/kxi8VsEGz5fS2aft35rUyrcqomCBWqn2/dPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U5UYcvepGsE1gJcjbopDFDY6mwjJ67mpD602vPzLmRE=;
 b=OotypF0g41KFqph34ddl1ppp1wc7NpGGd/9YKKpWOfm3n7DHteY+dy0z//7nnPIFWxe97JVXA1RKDejFoWJa9BNMNgNaJEhk/0iCPHq5xJPzFE6ZgX6CjwErOaCECBem+q6jypD2EUgldkkiJuJ8j120gY4yp2Bf89A5zTcT3nTqv/RnljuewKZXw+7Kt0NNnB+lcjm7+UEBNi9ZXJHNbq68XEtGV79uDrip1x1rjEB6Rm1ARL9bRGy0k0U8DfZYHMC3aElVq+uewvl5QHjIhlJ7TkkxlBfIaKTyAc8zw1CWTgir/hkjuKpsIcePPI6Fb+rLUv+sfE44VkZ5GNV1Zw==
Received: from CH0P223CA0012.NAMP223.PROD.OUTLOOK.COM (2603:10b6:610:116::29)
 by IA4PR12MB9785.namprd12.prod.outlook.com (2603:10b6:208:55b::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.428.15; Mon, 21 Sep
 2026 12:15:16 +0000
Received: from SJ1PEPF000026C3.namprd04.prod.outlook.com
 (2603:10b6:610:116:cafe::89) by CH0P223CA0012.outlook.office365.com
 (2603:10b6:610:116::29) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.428.16 via Frontend Transport; Mon,
 21 Sep 2026 12:15:16 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 SJ1PEPF000026C3.mail.protection.outlook.com (10.167.244.100) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.451.8 via Frontend Transport; Mon, 21 Sep 2026 12:15:16 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.49; Mon, 21 Sep
 2026 05:14:55 -0700
Received: from [127.0.1.1] (10.126.231.37) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.49; Mon, 21 Sep
 2026 05:14:52 -0700
From: Jon Hunter <jonathanh@nvidia.com>
Date: Mon, 21 Sep 2026 13:14:45 +0100
Subject: [PATCH 1/3] dt-bindings: phy: tegra194: Add compatible for
 Tegra238
MIME-Version: 1.0
Message-ID: <20260921-tegra-phy-v1-1-83466bf9a7cd@nvidia.com>
References: <20260921-tegra-phy-v1-0-83466bf9a7cd@nvidia.com>
In-Reply-To: <20260921-tegra-phy-v1-0-83466bf9a7cd@nvidia.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@kernel.org>, JC Kuo <jckuo@nvidia.com>
CC: Thierry Reding <thierry.reding@gmail.com>, Wayne Chang
	<waynec@nvidia.com>, <linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-tegra@vger.kernel.org>, Jon Hunter
	<jonathanh@nvidia.com>
X-Mailer: b4 0.16.1-dev
X-Originating-IP: [10.126.231.37]
X-ClientProxiedBy: rnnvmail202.nvidia.com (10.129.68.7) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PEPF000026C3:EE_|IA4PR12MB9785:EE_
X-MS-Office365-Filtering-Correlation-Id: e4225e08-1d66-470a-545a-08df17d9ff02
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|36860700016|376014|82310400026|7416014|1800799024|23010399003|10067099003|22082099003|18002099003|11063799006|3023799007|56012099006;
X-Microsoft-Antispam-Message-Info: 6AVp1fRCr7hqT8DcBOQXrjLyB5D6EOF68MfEpfmar9yBmkDQwPMfg3I1RRUTHQA/hZJNtt4nKhq8dmz0SM8NX5uu2jRTvfZKur9zY4dZmIzJAUYE6JcFVVwJLdws3zHAoISc0iFuDxp4V36Xq9zbmppzPSguMs3LzBD3GAJd5P4ApBmvQ2WzCgPaUn+TmSfvheVZ/3x69LPGHUJd6ZsznHWbqf15MDX45JU4G9+x43L62eZoOJxFYz2jPQRfzvqzY9VztDkyL07pQawoeXHfTxZb4GQeDxMTSOVgiv+NUgXarLlE4DFgl9Fcs5zN3jpxCAZdlshs0FrrabIOn3LVm+e3op63oGzXZPncPrsiFV3i3Tw+pMv0wyOWlE5+aDsl2BjM56BqXvowbCAXrASGeTAeXJYc9RuLk3tcQ5CtxyT9ekxeitnPP5WWPcf2tbfERX3LwVVa9O6Tjruhizi0N5meklat9VvbywyCeQhp2WZctQY6CS1G89rLlBRbSPTZs8DTWztYOJI1u06dwH+rCsRNuulzqFstU5dKSiQUtTCTzpWg/A+/80NQH4kuMTpavBW572Cvkasa7hUCrx+r6LAc9TN6yPcdc6I9QmApS95zfRlYYweoyboAFaMV7ws2BwSnJw18aSco2zK1CG8c+U2r9TteWJVqa8ADCYKMVpJ8GVeu3qPrDEsDIBjJzqcfiXxRiCLY7qJko6KxPerZxQ==
X-Forefront-Antispam-Report: CIP:216.228.117.161;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge2.nvidia.com;CAT:NONE;SFS:(13230040)(36860700016)(376014)(82310400026)(7416014)(1800799024)(23010399003)(10067099003)(22082099003)(18002099003)(11063799006)(3023799007)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: p2s/U0CAU68TvR1QbNfUGtJTQ6LqTzmIT+evHcX+yU0j/skAfgWtBDo8ekvHDwWHR2mr7jKn+XZtdbfVARwGLfGf4CRzGu4WPU3wYJ1/XM42ASYhJydD0bpSeqVMZRtrKkamapgvMHioU5S/0i30yulDRj3kENlNgqLLE+5m6F4d3PfszZM64VLF4yV9YZa9SsqB2mjFSE7SyACsoavU1YuTxEu7LJgM4JpJUiT21xblCIu8Pz2AOgY33fXc+WLtp7Kcq8RzeeuW2Ah8NYsRPEspBY6g2VZ1vxUDrld/g7MZqBfe9hBg8JHZD5fa4Lt6M2ejtaiBUotjS9nHkUmKqTrGOuJpvnNIDv9SF1amtYLms8rVrWkweDsfl9nndyhHpwF4CUkbtDroapOZEtBeNUmSfJC+55m+qHj2vk4dUW70e64y5Qlp1PyDi0bf7Lmg
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2026 12:15:16.2147
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e4225e08-1d66-470a-545a-08df17d9ff02
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.161];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: SJ1PEPF000026C3.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR12MB9785
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_131528_299571_6D86CFAB 
X-CRM114-Status: UNSURE (   8.98  )
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

The Tegra238 XUSB pad controller is similar to that found on the
Tegra194 and Tegra234, but only has three USB2 ports and three USB3
ports.

Add the Tegra238 compatible string for the XUSB pad controller and
constrain the binding so that a Tegra238 device tree can only have three
USB2 and three USB3 ports.

Signed-off-by: Jon Hunter <jonathanh@nvidia.com>
---
 .../bindings/phy/nvidia,tegra194-xusb-padctl.yaml  | 38 ++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/nvidia,tegra194-xusb-padctl.yaml b/Documentation/devicetree/bindings/phy/nvidia,tegra194-xusb-padctl.yaml
index f6fe3c90b5b0..fbafe8eb150b 100644
--- a/Documentation/devicetree/bindings/phy/nvidia,tegra194-xusb-padctl.yaml
+++ b/Documentation/devicetree/bindings/phy/nvidia,tegra194-xusb-padctl.yaml
@@ -45,6 +45,7 @@ properties:
     enum:
       - nvidia,tegra194-xusb-padctl
       - nvidia,tegra234-xusb-padctl
+      - nvidia,tegra238-xusb-padctl
       - nvidia,tegra264-xusb-padctl
 
   reg:
@@ -542,6 +543,43 @@ properties:
             description: connection to a USB Type C controller
             $ref: /schemas/graph.yaml#/properties/port
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: nvidia,tegra238-xusb-padctl
+    then:
+      properties:
+        pads:
+          properties:
+            usb2:
+              properties:
+                lanes:
+                  properties:
+                    usb2-3: false
+            usb3:
+              properties:
+                lanes:
+                  properties:
+                    usb3-3: false
+        ports:
+          properties:
+            usb2-3: false
+            usb3-0:
+              properties:
+                nvidia,usb2-companion:
+                  enum: [ 0, 1, 2 ]
+            usb3-1:
+              properties:
+                nvidia,usb2-companion:
+                  enum: [ 0, 1, 2 ]
+            usb3-2:
+              properties:
+                nvidia,usb2-companion:
+                  enum: [ 0, 1, 2 ]
+            usb3-3: false
+
 additionalProperties: false
 
 required:

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
