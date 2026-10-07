Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81C26CA6007
	for <linux-phy@archiver.kernel.org>; Wed,  7 Oct 2026 14:45:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oOPl+f3+SsjDf+x/8a2XlmOveZV062vbOqTmvTzkHNM=; b=k21hgt++9wpBkQ
	4W29I+VTYlvGzE0V4HHuVxizp//fYrhUtIDRFVFQEOeoojOPxSb9+jJhVJxtb3X3ChqW7zJaAZj51
	kgdZJfNJWLuAglzLGn22yIxOhvKGUebzlbEyNwfr3+ox2pkWjvysPImn2ojtZLqJ8XX5U6v7q5CJ0
	/vifGk8ufA696TWrmS1oczZitGAzIs4LOC2EjrUajBnzoK2lQhSFWQp6SgAxEWSU1uqGIWHEp6Xee
	sgLKEAMKKymWkvKs8lHuN3QKJ1wKrn1P4vslc5rmdxcyTtLsRyRaxnq3SzvvVYi2KV+bv2p0B+wmk
	71ebqaVssVxY1wMKt86A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xESu1-00000002e2T-23Pv;
	Wed, 07 Oct 2026 14:45:56 +0000
Received: from mail-westcentralusazon11010058.outbound.protection.outlook.com ([40.93.198.58] helo=CY7PR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEStu-00000002dzk-0tp7
	for linux-phy@lists.infradead.org;
	Wed, 07 Oct 2026 14:45:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mdi0eY3xGKKSbxQ/yDTeg63ZoiH3kbU8Eyx/snPwrhbYibs4GNDT8gDWGJT8ZYIQqx6+Jk7fhbGjoNxu5/Ck9ifRfNm7UL8Qx7PjJaqeHljXMbCrERucft0a7AREnePnJVc3+L3ii+QRTq4gCvW/VSZuUwLjUY7Fut/yPfdkA54AIuLoRPNzrbFL0PPcJCFiSLNDcUWJtCc7hggy1+og8UNJNm64CdF2Cbkc23YGaHKMvqFsK5bIjuXMmg5ZG+/XukSpdrD1r5JG2WXMUR9Gorpv9DONG0WoIqfHBtECqXJZ3DPP+WC9i7CAAk6gercnbwlIKCXiIDmoS+bB9JSeiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HRbddAUug0GI+m66KpY7gC7wGm5RnDpT2Y6PkjC2vZA=;
 b=RS3Jrf3EK/+BKI4hwxcvSFwEcxrNwnyPoEYlEbQCKSmyb224Ds+XrNZLuoCyEjbxDAoHqgCBUJ66WIZzBfngyVJ13Ay0b3n89JlRBdFs4KZhqJtD3yGorkzhH1ptHJGiR2O0kUbBQk4Fwg3iozfapQKukT4xDwwxmYY67A4vUMbx58HvEyt0WaSg9sinOLdzpDxzorD6RtC9YexsarOMOqJnMMrjum2TYwgA2AqntOpU2gXnJvkgK3G+WDk805DAbEe/gHaXet2YrI77qAx17D+X537fZHD4yfZ8uhZIE+aE+GumS3mtWkFZBt5+udul0OKYmHRfd9ZzKT6usC3FJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HRbddAUug0GI+m66KpY7gC7wGm5RnDpT2Y6PkjC2vZA=;
 b=jI8eYyEOGX1ZJz36pFBmufneeyrG1kOGIP3LtvfmK6puTVPsEL/7mPD81O6YHBd3SYJXDYNoYq73WKzHXwEM6sIx62uzdXb9irn/fGR+xfPxAtZ26FD6xK38k+9RRZKC5dCvyz9pqZMSn0BFf9wn7tzNoQtXM82PONCBMnopNFqHyvbW0OtEz5ny+iBPJD2zk26kpmCzbyrGUJ5ac3yKecN5hTeCHs7R5gJyQ/LwQC9MjkJA1TI7SNsNK1UflF+/lG+6M1fSy3biu6iZNFmTIRDL4fi1fIG4JZide2g/+yIAWlBHDOWZfOSBEDU3GuWVvBZFJTQatW1JWdJKEU41Yg==
Received: from SJ0PR03CA0023.namprd03.prod.outlook.com (2603:10b6:a03:33a::28)
 by CH3PR12MB7569.namprd12.prod.outlook.com (2603:10b6:610:146::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.472.20; Wed, 7 Oct
 2026 14:45:36 +0000
Received: from SJ1PEPF000037B7.namprd05.prod.outlook.com
 (2603:10b6:a03:33a:cafe::a6) by SJ0PR03CA0023.outlook.office365.com
 (2603:10b6:a03:33a::28) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.472.20 via Frontend Transport; Wed, 7
 Oct 2026 14:45:35 +0000
X-MS-Exchange-Authentication-Results: mx.microsoft.com 1; spf=pass (sender IP
 is 216.228.117.161) smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 SJ1PEPF000037B7.mail.protection.outlook.com (10.167.244.201) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.496.14 via Frontend Transport; Wed, 7 Oct 2026 14:45:35 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.49; Wed, 7 Oct
 2026 07:45:03 -0700
Received: from [127.0.1.1] (10.126.230.37) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.49; Wed, 7 Oct
 2026 07:44:58 -0700
From: Jon Hunter <jonathanh@nvidia.com>
Date: Wed, 7 Oct 2026 15:44:41 +0100
Subject: [PATCH v3 1/3] dt-bindings: phy: tegra194: Add compatible for
 Tegra238
MIME-Version: 1.0
Message-ID: <20261007-tegra-phy-v3-1-d501de414710@nvidia.com>
References: <20261007-tegra-phy-v3-0-d501de414710@nvidia.com>
In-Reply-To: <20261007-tegra-phy-v3-0-d501de414710@nvidia.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@kernel.org>, JC Kuo <jckuo@nvidia.com>
CC: Thierry Reding <thierry.reding@gmail.com>, Wayne Chang
	<waynec@nvidia.com>, <linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-tegra@vger.kernel.org>, Jon Hunter
	<jonathanh@nvidia.com>, Krzysztof Kozlowski
	<krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.16.1-dev
X-Originating-IP: [10.126.230.37]
X-ClientProxiedBy: rnnvmail201.nvidia.com (10.129.68.8) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PEPF000037B7:EE_|CH3PR12MB7569:EE_
X-MS-Office365-Filtering-Correlation-Id: 2af7d352-61bb-41a0-edd4-08df2481a5a9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|36860700016|7416014|23010399003|82310400026|1800799024|11063799006|56012099006|10067099003|22082099003|18002099003|3023799007;
X-Microsoft-Antispam-Message-Info: tGX5w3G5Jrinvzh3S1kGzVmrE6Sh5kXn7xif2YGwgbmohmM4fNRbfNi5+42HRquVTt/xTyrRRH+q7olDwKq7mtsrMutFatsYLpUNBdx4nQfDvN1MQula6OQLNvM1PEobNjL/J9KnvqAjHFGzIKxl6HBZb7s77x9ekbo/6STdzBGqIIcgXFfONcpZKDWdZiFUde35K0nCD4nIveTtnfOS6Hb8Bt5ralnsWgaZMbtOdkL8s8XLWb9rDJVyHNfo3rnQ+a4pFgni0Vb7jNVgn8vBoAYvoradnu9oHe9Tq6Y7ajmazvscSGC+MjIIn2gyCwCYrsCSgtINNSGYwek7BzrWjQRRoh1TCzQoBIUJXrF1jIItfvKgU2ytE/moE0l/gtYj0q8fWifO5ipI/v9M1FmbfAA/4JRKlnfsvw+lZA5PcZQkumAq+Nx6phhGlNPa6XjKvACkX2LX1po6PrMJsL/HGXtIPTrx97NaJUTBVY9LyAWauQL8ky3NNN9wrXK8l51Tfw/np4xjmae9NNFFun8wCAdjHq6i4GU6fxuF4JIJV+pRz+xrT4DJPRA5k+feGwO9S057uA6A8horKesbX1/xXgM8lcmnZ93qPp08d0Q8pnbEA03a3HeW4VwVbBYIrW+QugkbTpqeaRRrlOD8OwtnNbnmdeZzhK/aRPliEpKFWMLUf6kOL34APDPVFq0cr5Yo5AMXnWH16MHEErgIKLNLmw==
X-Forefront-Antispam-Report: CIP:216.228.117.161;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge2.nvidia.com;CAT:NONE;SFS:(13230040)(376014)(36860700016)(7416014)(23010399003)(82310400026)(1800799024)(11063799006)(56012099006)(10067099003)(22082099003)(18002099003)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 7uViWcwXxkIqUJGSBxF++jc0IPr9rKHt0dp42qNqITEpaz14zaJXqj4RUwgdNrEmonCVd4HA7GULdmqFcyDn6uYFdA7zAhJTFIqamP180K2PVovyPo4KAjsVPRGoZxfv5VBXFu4ttizAzbx9S0AzZlZ99cJs8v5AoomQSyrpJbbbk9hewycFBpJ2Wtx1A/CjBp1tBoJXaNdUkBk7n0V9x2Iu4C19DSlZoeYgmzJLMmChO/x0Ekt/8Xg8ehNIes4m1rgUGUO9d7lLHN8wKjYmrmkU8jhccQpCZN3ECmQES8R/o5eUu1Xcv1WFYl9tGwLFS68OjD8O2CPkuaEj+oGpLOzqmEa6kkdrwWO34/j4PVv0r6myIUu5lnxaiA/ENw3BrBh2sz5Vwnt6ikGw3kEj6HRirjn6oPHkSOETHATyic+ZztjnTbkH8pQGhj+xRtCV
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2026 14:45:35.7323
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2af7d352-61bb-41a0-edd4-08df2481a5a9
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.161];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: SJ1PEPF000037B7.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB7569
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_074548_048345_8D4EBF9C 
X-CRM114-Status: UNSURE (   9.40  )
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
