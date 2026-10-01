Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B16FECA5FCB
	for <linux-phy@archiver.kernel.org>; Thu,  1 Oct 2026 13:29:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w6xkvIdpdnG0oe79+XPSLj+/XZg5io71DzHMtBfWtbk=; b=vVLFl/Zsx/+X1P
	Bg1u/WwAIb5XplCRU1Ug4/6w8T7NW1UjlZ/IVTtabS7o4n/K3v7I+gc2EYdtScfX6SLipv1ghwYW8
	L1IdWtYm9fYPq+KtAhWt9Xx0aiHNN7zpysygg6N37YfZKYS70SoDG4f3zLakpRt5IoFcl10fDV0zg
	bNu0JmmSliQDYtNNebsTs0l+u6W5eKm1QIKIzn1Y4l+oM+tuA0HkXYCS5RckFwva7NcRTzrMuNO3q
	RSMEN1fsPMv2NGyiI5iAeJvdyqISepucAWn0n+1ajojWMqkRCs6cVoxG0IROxzmCTm5Qc3x6bcfxK
	uWRE6ZxOC8dNODYabU+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCGqV-00000009Eh3-16a8;
	Thu, 01 Oct 2026 13:29:11 +0000
Received: from mail-northcentralusazon11012059.outbound.protection.outlook.com ([40.107.200.59] helo=CH5PR02CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCGqS-00000009EfJ-1Mdc
	for linux-phy@lists.infradead.org;
	Thu, 01 Oct 2026 13:29:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w5IUECEKSoLk9pm7JU0wkMDv6at4M1Fj/YndoxOS0fSQdqcNTt258XVPSa/QFbTHZUyzCTcNwfim4DHE85pZpO1pkf1LoaRkAaqlg93B9c/CcCIwKSb9aN4DEJVwqt1jcsxKmIVqvipTBDAanM32/i7zJ4c4laSI9sFHt2Ig9AFtqyAn6f/ar6ZtYZ7EsPpTpa+kqORJyBnC5yK0neSgykTceeBRY4ANBanAd2L9KM3Tt/38MLIjwg/WxqzGOHrniJajt1wKEVGUNK9qfDo3cXND9trsFtqx3oFP+nQbpY0Dd4W0hP5pcn/b2ylOQpsxbCJgvZ/NgVmZWt3Y91QslA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w01HNi85gILdrfK+4lpxE0YX73dSQhH122oO/i5oaS0=;
 b=Y2MzmuBg3veDnQTTcldBgmeX1i3XDZ0OembuxQFt2jMFw1A4CN/TQqcd/QhXCzVbXiDfiNxJgIIuTTr7GlNgSokZRqHvrLNIjcxOhxJUTtimiqUehkWS+FeBqeDmpZAdyKhfA88aHuQe6fuStxtMh04B2o8ZWeAb/Y+kt84wGdRtgr2kCl/UDiMdJGhsiNwXRrJAV2kuw7/zU6M3Xe6QkNr7ClPjHP+nkpoRVmH9IOsBkuH33nHXRmybaaP2j4CmolJMBUij2xxTg3TRi19oQ+vt1ToCBcsCo/C2mRPMoVPbIuklG0ZUulIktilJKodZegR7I//xaWIi31Z9CORqNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w01HNi85gILdrfK+4lpxE0YX73dSQhH122oO/i5oaS0=;
 b=e2VHoW6XA4PhES7V1tSzLb84HKR1RwR2g31ex1N+5NnAirG5rvOURzn6cvznrIH8et4/la7AElo9FCzLkw2CLSxoZ1PpuvWw8KdLZBzbq6XK1LfYIfiXMdafw0Em7dmjT2it6iVU6m0CrnPvHNgU/akDJpJ65rgHk0SP2Jsy6FR2/YBTItC0SXAI5t1/ZZ8x5cPiip+UfmklUdeslzrKU2vGClBG6LxpwDrzjwkjkmGYXqrCDk5gw/CYDTFFbfdIwrndHsMEGKd2WFM4lAv5c6jzEbhiQbM4fPrY5ju5Ew9AsUuakQsvsy3PT9194qkSzi5u/6MRRmk1AMDM4jq17A==
Received: from PH0P220CA0030.NAMP220.PROD.OUTLOOK.COM (2603:10b6:510:d3::30)
 by CY8PR12MB8340.namprd12.prod.outlook.com (2603:10b6:930:7a::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.451.26; Thu, 1 Oct
 2026 13:28:54 +0000
Received: from SJ5PEPF000001C9.namprd05.prod.outlook.com
 (2603:10b6:510:d3:cafe::8d) by PH0P220CA0030.outlook.office365.com
 (2603:10b6:510:d3::30) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.472.17 via Frontend Transport; Thu, 1
 Oct 2026 13:28:54 +0000
X-MS-Exchange-Authentication-Results: mx.microsoft.com 1; spf=pass (sender IP
 is 216.228.117.161) smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 SJ5PEPF000001C9.mail.protection.outlook.com (10.167.242.37) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.472.14 via Frontend Transport; Thu, 1 Oct 2026 13:28:54 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.49; Thu, 1 Oct
 2026 06:28:31 -0700
Received: from [127.0.1.1] (10.126.231.37) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.49; Thu, 1 Oct
 2026 06:28:27 -0700
From: Jon Hunter <jonathanh@nvidia.com>
Date: Thu, 1 Oct 2026 14:28:18 +0100
Subject: [PATCH v2 1/3] dt-bindings: phy: tegra194: Add compatible for
 Tegra238
MIME-Version: 1.0
Message-ID: <20261001-tegra-phy-v2-1-3e453b1fb271@nvidia.com>
References: <20261001-tegra-phy-v2-0-3e453b1fb271@nvidia.com>
In-Reply-To: <20261001-tegra-phy-v2-0-3e453b1fb271@nvidia.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@kernel.org>, JC Kuo <jckuo@nvidia.com>
CC: Thierry Reding <thierry.reding@gmail.com>, Wayne Chang
	<waynec@nvidia.com>, <linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-tegra@vger.kernel.org>, Jon Hunter
	<jonathanh@nvidia.com>, Krzysztof Kozlowski
	<krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Originating-IP: [10.126.231.37]
X-ClientProxiedBy: rnnvmail201.nvidia.com (10.129.68.8) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PEPF000001C9:EE_|CY8PR12MB8340:EE_
X-MS-Office365-Filtering-Correlation-Id: 10ad306b-f4e2-48ff-01dd-08df1fbff0a4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|82310400026|1800799024|23010399003|36860700016|376014|7416014|10067099003|56012099006|11063799006|3023799007|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: hLChb+5NoT2jtn0KoBrMmc8lL6MRF0yKVSB5JawYLqJBbuopNQL4rEe6191Ilmk1zKU0Qvi7kMEYI7w6zi291aJfEsAN3R2IG0LS0Wl7JL93L4Xy1bDfi5KqxOrU+seuqJDzgBA45c0l9dxTrAPm5F12jXKdved7uNP5NIjZBeyj/QqciquaDSMWYHYwz8kjZqWh7M/M4eYcrzp+LCs3TMvxQoUxSimbZ4mUoMO9p8kk58AIogy94luENLoG2v6XLLgZeQpV0j4hmLyybOmuHEzX1CQgBnmfsZbdTTfdfXTXaqELIGfYJ6xNBBJtIAcuN4eTUBPd7zavqwl2JAYcJjqujK2aQTHpD9QDPo3GNvdwumYjBeHEzz70tP08sbKAVrJH051aKk8y4P6xAmD9Fx6jYdv/3TR93hwik5pcT99woNzA4FrDwsUVQSNo0XAM/ro+c7kNrxwZBixMXzbLSbTCzHVUmUolYMlm1+6JBmfmRxUv9hmVobyeaH2OSijShMMhmdmsYTplwKK6FUynKOxYJVgNCtnLWNgTYUgq9Hy5NTwCHl5rwooqse6YxdPJxNr86o/57zjQd5LCFTEffahPrdDlR+UPvCXF7OPp8qHwQ02OBy8k+5SspjIul8IGVjO8fh1356QW8SgiaMlboCYCkzOmHFBJ2yDn93Z55vTuWu0wI0NpLNn/IDzXWbVZ2CHkHJcJRpiL/bwVnvqStA==
X-Forefront-Antispam-Report: CIP:216.228.117.161;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge2.nvidia.com;CAT:NONE;SFS:(13230040)(82310400026)(1800799024)(23010399003)(36860700016)(376014)(7416014)(10067099003)(56012099006)(11063799006)(3023799007)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: bWEN+znxxOlKeiiDYW6BFaKRBAk9EhhmHT3is5LKcnPbdHhJ97plbz/Xiax3ZrDPd48F2uEOJqG4DeJap1rAnSATtEU+ZYSH6Tu5b+RH/cFRmnq/tsI3VHjk0R7TWIdxI4Jd+qkyJHLXRrwiWBgShadALIk2FhZWvqbYAUIf4fM5lmirJpIRuoEPgnxFIhujqcWkJhawdZJEFB1YZkZCpFiMeMhwr9LeVI8PrtK/AyB8uQ07LK0ZH1nIXDdfSdqhN23rUmjOlGGXhI3HU3XS+0wBNkXnhcdQ2j85aRYlNoip7k4Vb8wNkhgh6PuBerFbePjJ3rUVFfV9XnIbx2L4vs24gYgxSvSa+hxBEh8ASRWWRcAHhjn+duTJGEGdJVVpTaWMkPA0VnVMu0HvxI40cUDTMkJbCHXPQXzRm+Q+KvzHKvD02aNL5sKF5HvyqFtl
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2026 13:28:54.6002
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 10ad306b-f4e2-48ff-01dd-08df1fbff0a4
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.161];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: SJ5PEPF000001C9.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB8340
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_062908_371967_F910DE6F 
X-CRM114-Status: UNSURE (   8.57  )
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

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Jon Hunter <jonathanh@nvidia.com>
---
 .../bindings/phy/nvidia,tegra194-xusb-padctl.yaml  | 38 ++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/nvidia,tegra194-xusb-padctl.yaml b/Documentation/devicetree/bindings/phy/nvidia,tegra194-xusb-padctl.yaml
index f6fe3c90b5b048aca9937a4746fdab80eec0c55b..fbafe8eb150bea95d49ffaebd959d4ebc1a92194 100644
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
