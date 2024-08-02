Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF3F8C3DA4A
	for <linux-phy@archiver.kernel.org>; Fri,  2 Aug 2024 09:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JOKPnb2v/9NkAIR19HTQ48FuEoTDkd3RWg5JxZ2ZbnU=; b=U7GOBfBsmAOUHw
	LeQO90cqPRHRvLDyDFjuMVRNybS//T9VxEcDAoBSFWpECX+o6ny44KTy1XTgkZyfojH7IDyWKYWgl
	GJzDNpm4CRejzz0enKkwq54WrPixsDLNJF0Rqb6KFe+h+9/rIRV3NeZJ5gcCiAYyJ6gflV8d3pOMD
	n8OtJ6nnRhv8aD4Ez8//vQ1g3jWPufFqfUwloXUzEtLmHww5Bq92vyIZwhGX95A/tlnBoyD5cyyuW
	Vu4/oelOaic3qRAhXygfCOhaT++EmIKRpYiXQERvA+TepxIJJskhtyfvBSgur6WlToBROgbrYkex6
	7Q1UFmojrzIKHFVgVZ/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZoRT-00000008FR7-1mxt;
	Fri, 02 Aug 2024 09:19:19 +0000
Received: from mail-northeuropeazlp170130004.outbound.protection.outlook.com ([2a01:111:f403:c200::4] helo=DUZPR83CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZoPH-00000008Ema-01qu;
	Fri, 02 Aug 2024 09:17:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Zy0etvOorRqUHABeHwlT5PEj3u2Axx9uvxhugnvYbyNUPwYBqAWDfdYPqmGqeaMH1RhUZUi+Zv4r59OSBDsMF2lo9SkSR7Z1eEi8cwds9vbh+LImxqHMpy3mT+6EaMevUvnEcDy8p7F3rQV3Vsz/IOebu6yi0PahcDtQQsBKpktrmE7jFwoAFRFRkUnnQcv5w1A02pAurcGQtSB+XiMFJtweHN7Ynz2XXdg7nY2DUVMRJbjgkp0tPkbia//16Rkdy1WkTxawfdM1mTweZ+NBRuptlDI/t8Bh5NDw9K9TQKAIlUD0lOcuoFjdQuHGYSZLEC9bllPEXkJcK9c3PYEYGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GetUt9j2vTQNtzOknZQOPXcwmBWfKLOSEdb6wDca670=;
 b=ZPpBR+LUO0WMnd5wyfOSnGfeGy58EZFbRjTJHHxRA/RrqXrQA1MEHxTmPgtj/mGxbM5DcUPuo+s5XChsDibNVMR8rLMpJDykxAjgB5ZxxxTsiWzJrXfxmXKgJLbLrH8KVrlW0wE7OmGdl7zHn84OO5U1flhfuhg+OWwIhPnKTX6C6pCPyHKcntBV4XX5i0Cjl3EEJUUzs5zNgcBH0dMOG4nfqQ+zT2DrxSPlXtK7XrMLkyCNLMDbfHUrooHHKCSI4xfCnZBrpq/CD8RclPiYaCiAnXwLVE/gJdSrQl90LPtZovH37ruU11UzjuJ3IYxYMFdmXokdk3cORucZErYfJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GetUt9j2vTQNtzOknZQOPXcwmBWfKLOSEdb6wDca670=;
 b=LrjccJzOZlaZHqR/c4e0TBrJn7jrcbzA3G9UWICZ+pCXDtJurE1zCKHYCvw9+JYTcdy+06Z5aPW4uXukChFf1kYPtW6ykRfyunIM2md9ARzSoMsvIdhfy9K7cmVy2UQGhLwGsiKaPAcpW869E6JzyftmGV0z/gvlYbVrxMaFYO41ydmIL6KzKIJ1ib+SLwK6rOoToFf69UvIlbQOZkFEsWb6xucAOCZVmRwN6iTZuXvx7+k77PTR/vOBpOPt7P/kauwh/sgPCIbMxf8nmx/ezW3krHMGNtfY4NFsK6T6nE12ohRPwi4/36/CUE6izjNxZ4Tlnnye9BvrrdmXHeTjvg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DU2PR04MB8822.eurprd04.prod.outlook.com (2603:10a6:10:2e1::11)
 by PA1PR04MB10577.eurprd04.prod.outlook.com (2603:10a6:102:493::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.21; Fri, 2 Aug
 2024 09:16:58 +0000
Received: from DU2PR04MB8822.eurprd04.prod.outlook.com
 ([fe80::4e24:c2c7:bd58:c5c7]) by DU2PR04MB8822.eurprd04.prod.outlook.com
 ([fe80::4e24:c2c7:bd58:c5c7%5]) with mapi id 15.20.7784.016; Fri, 2 Aug 2024
 09:16:58 +0000
From: Xu Yang <xu.yang_2@nxp.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	gregkh@linuxfoundation.org,
	Frank.Li@nxp.com,
	jun.li@nxp.com,
	l.stach@pengutronix.de,
	aford173@gmail.com,
	hongxing.zhu@nxp.com,
	alexander.stein@ew.tq-group.com
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-usb@vger.kernel.org
Subject: [PATCH 4/5] arm64: dts: imx95: add usb3 related nodes
Date: Fri,  2 Aug 2024 17:17:01 +0800
Message-Id: <20240802091702.2057294-4-xu.yang_2@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240802091702.2057294-1-xu.yang_2@nxp.com>
References: <20240802091702.2057294-1-xu.yang_2@nxp.com>
X-ClientProxiedBy: SI2P153CA0021.APCP153.PROD.OUTLOOK.COM
 (2603:1096:4:190::20) To DU2PR04MB8822.eurprd04.prod.outlook.com
 (2603:10a6:10:2e1::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8822:EE_|PA1PR04MB10577:EE_
X-MS-Office365-Filtering-Correlation-Id: 9dc80803-d7df-4ddf-05ea-08dcb2d3dc7b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|1800799024|52116014|376014|366016|921020|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Q8qObAHEgWoODicF94CsFBKnxvqNIpI0jra5laZKDcRaQoqP8WuIWR0L/PEQ?=
 =?us-ascii?Q?nMT8ycNGbKYRQaNII/vczBDTYF2MSTPPGJ+fCOv91S726CZ8GOZqwC2CODvG?=
 =?us-ascii?Q?eijq0L4eZcw+YfZZM7ve+r9Dk7/HVT0bS6bXeJdl8X4b+sdttoZxKstVJgMO?=
 =?us-ascii?Q?Su9yzfVi3672F+1PSlyScjcLYFpatMNaFtY5Low9VNnmdQc/+i8J2vxbEBB6?=
 =?us-ascii?Q?6avmmJo0vhLoxlinR1f+KO/YzIs3zoRqOhWus24EfH0prlbjaBYanI8KOcYk?=
 =?us-ascii?Q?dj18MrYj0PQSj4eiHzu/bpFb73tKZpyvpdrcREbf4aWuHofmQmKDco4XMiu3?=
 =?us-ascii?Q?CY6W/HZZB2fQ0nA0jdR5awWOVnT2DvCjhWBAzz0zPvu3M97Ni6fwX5ZvUKyz?=
 =?us-ascii?Q?a3SFbBhM4fNp/80qrGfPKjJt0roQy1a1uhZQ8Qczt20kiJH8RbN6lMzVy0Bw?=
 =?us-ascii?Q?N7DGQpUlyfsNaHS9IYc+ipPCrn7cNpmzdpi7nmG1fB24hs1d+dcAHuiVRR0z?=
 =?us-ascii?Q?nGQDx1pi6WsIL1pQFYLKtR6FiQdO+fam7WoFV/l9TEKZYqcOSjEsCkAAWvyJ?=
 =?us-ascii?Q?2L2H8XVbIOWSX9NamgFwvosJD45tlkjuBnID3GDSJEDgjSEMZNrJhAuIPiEL?=
 =?us-ascii?Q?GdlA7n8EH5EFjRLPhsO1U7FGvCFV1IJPU/2o0N89wXypdXTyL23blMDV5knV?=
 =?us-ascii?Q?DnNY05b4K0IkKtUKHChORvr7K881r92vLVuRBhyqz8r7MZKeWAkQG5i3uEgj?=
 =?us-ascii?Q?o0hTPJnr+J2C6icsVLdLPoGUWGkzaUvmtEMNj6KQ7iwjsD/7CVOIZBtt+7Lq?=
 =?us-ascii?Q?FQdSrcNfJE547rrNG590Vqjk7dBXWTviG17TIvkoB6a0YnfMqyK5eeL1kY63?=
 =?us-ascii?Q?1jbt8ienj31X2IR24VIwISPyLLkRrkaQYUOrUegwedaGpr/WchPeVbnB6J2i?=
 =?us-ascii?Q?ZbfgUwX/GB0oZqZY0x4+OkKSiqE6HSSmBq9YyTU+BgOH6/B10el+I3zGZc7r?=
 =?us-ascii?Q?37WACTxhD92UGqp7KYJxafbAorC9BTVgFSqtzSTPZ/Wp1yoeFVLatZ9KKXka?=
 =?us-ascii?Q?UPwbBRLrIFTu8upu2jFFRIxdKX/Wvp3nEfK86nvruAcq6TySRy1sQBTIk7EB?=
 =?us-ascii?Q?oNRSbQF3ielrNrIFdqulfgpn70SPgK1sFfYgQeogmu9v5czxKKPyX2PH9aB3?=
 =?us-ascii?Q?J458aQ2rWtB2cXDc9O8TfbyUFh2+Cad9ubcJ9l7CHTmWEVIX/ro5k5Zlxh6A?=
 =?us-ascii?Q?8obnEP3luK0sPwn88hBMLfeUOElac9NNWzgn/UIhqHSW1pgH70kIyEwYgXQO?=
 =?us-ascii?Q?N0RmKX1X5z3NCwytuVEXXUSisZuN+T5gZMjWfSoe63c7XAqXw9DZp6w+NOQx?=
 =?us-ascii?Q?tzTBE0lQ9uTFcZb9laEVCz9VS1mCkUfraSjYM9h004xCxQcO+XuC4T+1TZGz?=
 =?us-ascii?Q?izHjYCTKE10=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8822.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(1800799024)(52116014)(376014)(366016)(921020)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?z+Dy6CvDloy2MhcdQHO9KtBJ0E/PfIPKz7fxG0EV6DsF6Wd1EmPjajtkyLmN?=
 =?us-ascii?Q?FsmujIZti/bpQSP/8kc8N/PkIL7qP5QDRYphzcKBLRFKuUj3ip+n/nIt6lfm?=
 =?us-ascii?Q?XV4PvlzENugBqOmWto1DHDy/BXcZrK3AfnBsp6lRaTHukJ9ppoa8JOYg/qKs?=
 =?us-ascii?Q?RC8Ke6q9SBYVI3kBX/O1UJm7L/tFPYswaanJRlE07S4rmDF08V+3e9TSLmvP?=
 =?us-ascii?Q?k7oUdPZoT3eYFhXM/N/r9VQs9kDFZl/DZRxQD6VOXgeViFFWpNEnfigdmfOt?=
 =?us-ascii?Q?+nvWJv/xdZVUxlLVn+JbonykuJXIUn9jkvAUfANxJTb22G9g74fOWSWT8l3m?=
 =?us-ascii?Q?mrAaI4qn8JeBedURFnzUm9GhX/il8V+qrio7+Gzb3CwOqQXTppnOqkMp4ByY?=
 =?us-ascii?Q?IvPbcE0OSaKKuR+4QbimYwcI3IEN40tvwI/kJqCpCszQQ+s7V5d7zURBF+Xi?=
 =?us-ascii?Q?Ics8FLaF25sfSMMa7tRrpsvADBdE0e5f8Yg+0AlnVGqJhS7lshVefRigiS8e?=
 =?us-ascii?Q?3hsQpcUxp1eUFuXSOKMSiyXh6+9aest0GEC7CwyCIGP/lMk+D+wcxKtYHvi1?=
 =?us-ascii?Q?8/RfyuqJnKunf8X/LcK0FcOlXQPyNhB16u7h00QwNeg/Qxksfm479OeA6kzB?=
 =?us-ascii?Q?it1lEFuQv8aDOUVagH1iNHKwUDhH3dJY9IACNFqLgC8c5igHUsMBKsNk0n/7?=
 =?us-ascii?Q?LqEUQhhhtxvPPqdyVaADOT82pDow0iMsi4FHPTFHCRZPkZU18q8n6dA1Ekeu?=
 =?us-ascii?Q?vEwymkjHjC+lHKsZRb41ueY1yKxNlCnIkGkdsXg6LiwV79Y6ujIjcQmYYlrT?=
 =?us-ascii?Q?KL1aS2MZEktpOZzuhxdrkyW8GsPNQXZKCBZbZACoaQZiQi3rNEvLKsppgUVt?=
 =?us-ascii?Q?OBMIl2nKK6RWMA/pm3CiuH04Cjh+9oEQZpTY3H9ttgdQt05kosV2qNSGYXwL?=
 =?us-ascii?Q?TOqcMgyNwl/5jY5csp1tpY53KJnQ28AZI2qv/rZWccWWt/NrgdNwOAY/iwhM?=
 =?us-ascii?Q?vKAwCl8pS39GSlmn0f8HuAXCy/ANuMf8V/MeRiqPtSJveLQd01wF30aqJyea?=
 =?us-ascii?Q?z4Z4zONn5VLco/mkl+6XEDDWsTYC4jgfLDL8e1w6ylS+DGJOxX/szbyjRZcB?=
 =?us-ascii?Q?cbbtn/vASlndR6dnvsYPCVyFPjlEFg3F5TE99GdhpkyzUrdDVpXo5+sra30W?=
 =?us-ascii?Q?OgmkG0PySo03k+VAew+rgYH2NICgAgGW/RTr+WDf4c2tERt4a0QqnW7I6pe0?=
 =?us-ascii?Q?mmQKVHvN10D8HVjOkzwU+RHtbSILVJeFX+m1vG5qywC4Ji7xNthGp6psIfFJ?=
 =?us-ascii?Q?B/ok+f483Ivw7X6p2L7MZhC8qlDGCA6e4J2IIVUdgyY85ql4ktRTCHLShm8t?=
 =?us-ascii?Q?R4J5LHSuAsbYfjiDRPMMIQ+HIheD3ddwpyIO/io7K3dhJ05J47uW+/SdWynw?=
 =?us-ascii?Q?CyFDnzp0TVXwPV9WGSn1lLRulOPyBglXCcKOBxILk9vpAoNdK7bgRSlEl5LC?=
 =?us-ascii?Q?kjqG7McvXEv88M/XQt/xduPjRLlRxaKkaKwpBN2ysMCeaRfJlO3hnYvEdW76?=
 =?us-ascii?Q?QmwuUL5gkXV+vGXkqO57XF5DhXwkNSyIy3gnqBV2?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9dc80803-d7df-4ddf-05ea-08dcb2d3dc7b
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8822.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Aug 2024 09:16:58.8645
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +4rqxLor/s1j81QOWCxVY1GeXVgVggWK2io3S4l915U8arn1npOZrhbO/PcrFeAS2BJxlDgnGKkleHT4TiQtuA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR04MB10577
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240802_021703_070213_4E4B0BEC 
X-CRM114-Status: UNSURE (   9.63  )
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

Add usb3 phy and controller nodes for imx95.

Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx95.dtsi | 43 ++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx95.dtsi b/arch/arm64/boot/dts/freescale/imx95.dtsi
index 1bbf9a0468f6..06a7c2f1e211 100644
--- a/arch/arm64/boot/dts/freescale/imx95.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx95.dtsi
@@ -1188,5 +1188,48 @@ pcie1_ep: pcie-ep@4c380000 {
 			power-domains = <&scmi_devpd IMX95_PD_HSIO_TOP>;
 			status = "disabled";
 		};
+
+		usb3_phy: phy@4c1f0040 {
+			compatible = "fsl,imx95-usb-phy", "fsl,imx8mp-usb-phy";
+			reg = <0x0 0x4c1f0040 0x0 0x40>,
+			      <0x0 0x4c1fc000 0x0 0x100>;
+			clocks = <&scmi_clk IMX95_CLK_HSIO>;
+			clock-names = "phy";
+			#phy-cells = <0>;
+			power-domains = <&scmi_devpd IMX95_PD_HSIO_TOP>;
+			orientation-switch;
+			status = "disabled";
+		};
+
+		usb3: usb@4c010010 {
+			compatible = "fsl,imx95-dwc3", "fsl,imx8mp-dwc3";
+			reg = <0x0 0x4c010010 0x0 0x04>,
+			      <0x0 0x4c1f0000 0x0 0x20>;
+			clocks = <&scmi_clk IMX95_CLK_HSIO>,
+				 <&scmi_clk IMX95_CLK_32K>;
+			clock-names = "hsio", "suspend";
+			interrupts = <GIC_SPI 173 IRQ_TYPE_LEVEL_HIGH>;
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+			power-domains = <&scmi_devpd IMX95_PD_HSIO_TOP>;
+			dma-ranges = <0x0 0x0 0x0 0x0 0x10 0x0>;
+			status = "disabled";
+
+			usb3_dwc3: usb@4c100000 {
+				compatible = "snps,dwc3";
+				reg = <0x0 0x4c100000 0x0 0x10000>;
+				clocks = <&scmi_clk IMX95_CLK_HSIO>,
+					 <&scmi_clk IMX95_CLK_24M>,
+					 <&scmi_clk IMX95_CLK_32K>;
+				clock-names = "bus_early", "ref", "suspend";
+				interrupts = <GIC_SPI 175 IRQ_TYPE_LEVEL_HIGH>;
+				phys = <&usb3_phy>, <&usb3_phy>;
+				phy-names = "usb2-phy", "usb3-phy";
+				snps,gfladj-refclk-lpm-sel-quirk;
+				snps,parkmode-disable-ss-quirk;
+				iommus = <&smmu 0xe>;
+			};
+		};
 	};
 };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
