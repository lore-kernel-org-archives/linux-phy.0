Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0224AC5472F
	for <linux-phy@archiver.kernel.org>; Mon, 26 Aug 2024 08:15:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fhBCrM09M4Ubl3DrMzQNg+zD7gGjT03kbeHHqAbT1qA=; b=DGWtljh1tW+zmP
	4FAa/tFIRKtf9DK/a4M0b7rNpXNg3DKlwQg7Y5WFVQt9UwIriUMlc59wL/a8qEIkTDuTx7iBrjimK
	i2Q4FIDSlPyRa4TbguBN8csu8fgS2SlzlPzItdobAPkSgLJK8hz0prIjemaslz7qEYShXmlKj/GCT
	kpQTFTS15AOo9AERAoD3gFMNcaKSxje+F5fbdNk80cxEfFBBfZWzm35SlPMBp9pKno0XifMj9vqCX
	mlrtunOw0b5UMfTgtrabL9PheAKkt5Q/0aDZnN9Jnk0vv899tvV6uNeH7n7VtIJLAcRpVZsRVrWv/
	G2iZEcE716jji8r1Qp3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siUsm-00000006R3u-2fef;
	Mon, 26 Aug 2024 08:15:24 +0000
Received: from mail-dbaeur03on2061c.outbound.protection.outlook.com ([2a01:111:f403:260d::61c] helo=EUR03-DBA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siTpz-00000006CdG-34c4;
	Mon, 26 Aug 2024 07:08:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X+AwlQbcJ4wGF/yVrC+MeHwGXgVg2yZKSQG+LnaIxEcNFrhGp494tMIGqUrWwLu/A4ZeGOXEDgCLEQygsUuVwbSArnaO/f3fon397/u0oTpww7012wfK2kmKrPBMX9PPAO8THFPCEpKqa95bWORctz/oJzOUCECm6zYFdkzvVv6W6Yw+vA40trasPlv6RViFt5i59MvNJ8UfeirgNKue/Sjz+AQHO2BCZeU45Uu+pe38j9PiO94PLbvl99VHD8iPjlzuvNy9NbXjyXFgPvbrdF4Loo7q0lnJkyFDa1LBh9Fexnkb4WXH9tVAyKaMfpmKyT/9yn8GVhp9exYHu+w3Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jUvyS6wBHOdfXUbJ91I/zXi40m/hwyVSSzOM1+9oYwc=;
 b=wUk/27EHWdskmAV+iGY7Ypgr45LZkIG8tR6WifHOGAyyelewPj1AEX/x3MECdpT0DMhuQ1RIoAG0A8ivBJ99xpYTwpGBA7DouR47GSotpyaMU/7hReb9BPhq/9LgHTdqyAWcQgJWFS8Eoc7f+515jJY/ULkSZjbXHQoI40LNp0sW3xABPEi+Rl9Co+MWzlP0OSTd7zDzdrzDd4taAkH/tGs+OVWB/bu/CTNp0MA56T75BrXpp9EZUnUKPUrP6toFXqFStZ/YIyJ7Gq8ysdMEpwWTIBOaLKuxh+SVwxgETXOkkSgjbKuYed9S9xDowB1irp5/JiIkX8VFEV1tgODV+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jUvyS6wBHOdfXUbJ91I/zXi40m/hwyVSSzOM1+9oYwc=;
 b=My7PuXyGlZBL5/ZY0CGXXDlkm5/0bUt+TEbJ4V+mio+MTq6emMCu54wW3XtWMbi8OBjndv7xK/W8ie6foXzXtAeik+i7uy2nKT7kBUllDcsLh29UVCh4ebhAdhC+Cd/6NWFQu1KfXkYaEpXvwNGu8FobQ3BcbzKELTdEOR1Q5dOUtO0Zp7VuYEYQMVWPwT0s5K/0M6vdt/D2m8YhmyveSMyezJ/JcGRHIdgO44rkjF1VDLc0gJHb3oBwfy7iKvwOuupZoLa+3iICcuZFfqkzvTWXhB/aRZfTd4gVpypaPAxGs4mj+QjhNB4E7h7+LVZBUC9D1+f4BXLLd1R4Yp3ojA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DU2PR04MB8822.eurprd04.prod.outlook.com (2603:10a6:10:2e1::11)
 by PA4PR04MB9637.eurprd04.prod.outlook.com (2603:10a6:102:272::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.24; Mon, 26 Aug
 2024 07:08:23 +0000
Received: from DU2PR04MB8822.eurprd04.prod.outlook.com
 ([fe80::4e24:c2c7:bd58:c5c7]) by DU2PR04MB8822.eurprd04.prod.outlook.com
 ([fe80::4e24:c2c7:bd58:c5c7%5]) with mapi id 15.20.7897.021; Mon, 26 Aug 2024
 07:08:23 +0000
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
Subject: [PATCH v3 1/5] dt-bindings: phy: imx8mq-usb: add compatible "fsl,imx95-usb-phy"
Date: Mon, 26 Aug 2024 15:08:50 +0800
Message-Id: <20240826070854.1948347-1-xu.yang_2@nxp.com>
X-Mailer: git-send-email 2.34.1
X-ClientProxiedBy: SG2PR01CA0194.apcprd01.prod.exchangelabs.com
 (2603:1096:4:189::22) To DU2PR04MB8822.eurprd04.prod.outlook.com
 (2603:10a6:10:2e1::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8822:EE_|PA4PR04MB9637:EE_
X-MS-Office365-Filtering-Correlation-Id: 38f988ac-86e0-4e3e-9136-08dcc59ddfd3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|52116014|7416014|376014|921020|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?TW1cewbFOa45xaFBQJPneUij4yL8MKdX3R0Qk1khJW6VSbBWQVSiNpq13AqU?=
 =?us-ascii?Q?o9ULuOcs/aHrzMb2wAzStsV+UCP9dr3k/+XomGH0d6BnWaHSaXzlJACcbbMu?=
 =?us-ascii?Q?nJrFQqqWvcS7Pe/7VAc1BX3cDs3mte4eW6uIHeMsHvkkZGE2wC05C+g8JGoT?=
 =?us-ascii?Q?UkoUzHJ5jsfklFGVNyfUxnt5gYVc9ZVFIufTR6JEB/CzTgaOlIkNea28Zj2m?=
 =?us-ascii?Q?VJbk6lkKY5aUsAX8CUxUEtaZh1+jcxOW6LqPyrzxTtfN9Z8CxDtzvh9JJJQC?=
 =?us-ascii?Q?PI6FztV2Yh0CMs7QpcXUVDFBaixax/nH1xxb8UlF7qpxRcUsHotmVgmc61sV?=
 =?us-ascii?Q?bUmYpt/0TAtOVxgBds8FTSEkfNDFMdT1HFTwmDLVXg/xJU3TJ9nqZx0JoMIl?=
 =?us-ascii?Q?ImidtLa+JDG3UTJ8YFWRyGxlWYmT4j2w6CWVffMijBDlSUxVPsOy2D37HjGB?=
 =?us-ascii?Q?2Sc58Ufyfpe9wI+1gBwxZBZzwRhgpSqjzPlGibKRHz3lkBKPW4//1j4FZcdb?=
 =?us-ascii?Q?knOc+Crnk1UCL+jtrFB1PzPCqCTopFPRehisXDM/k3QWqs/LR6QhfE1aVtSu?=
 =?us-ascii?Q?nqZtVioWmDhlCsjuN+uOh8zauGohubPB3KDnMYPtbRyhllhyNwBmZ3jH3kDb?=
 =?us-ascii?Q?FOcilLtCUqkMho0pICvedtYAaWuwLCD9mV6ohGxroQ4hPVkGrwxml+DU2kRN?=
 =?us-ascii?Q?aRapfxUEt11JG+3nAABnF5Nlu0t442SzV4plaeZ31Fwix1GfoNTpa8JZMf6k?=
 =?us-ascii?Q?JbIZVRuDoA2OPbZhM+lF5y06GY5CRIXNra5GnNvhZfpp9ukwEhLMmNJEqLSD?=
 =?us-ascii?Q?e6URcNgI045ZemjNEXGUpwEZ/ViszZfeou0/fV39Z25FLFmOZFnbAWKnq4qc?=
 =?us-ascii?Q?FSzFhgCKi2SN9M8O/ro/Wi+2pRlS+HTJJESjfGqYUXtjI8kh/c7OlgXwL7Ei?=
 =?us-ascii?Q?heTcvhbXH/ngqJZJTk1/TSNPkLvO7d1v0eGlrMy8CVdyZ+XlGpISdUMoEtZ0?=
 =?us-ascii?Q?E8eQaN5qFjjo01EMHf/BLKyiZCIe88EtVZpaZIzSb67aXK4uPn1thuvwwDIg?=
 =?us-ascii?Q?t63gDrPzS/3q/qlumcZqBbQzGqxXKO/9jF9Kmn7y0zvQ4MzWi0I6B9ruePWh?=
 =?us-ascii?Q?c7hCRLFge+eVrJuTn+REhbooFLaEvpK/acSJWFYhyX3xGi85kCFfm/ozoD3F?=
 =?us-ascii?Q?FoGjXa9eMgZIRXxcxCeJ5u6kjRb5RBRi+42GMTBC56HjojiKst7DAHpjkZlC?=
 =?us-ascii?Q?PEqFsihZ+qvhktLXNNLrYPoXEID47WhD3wZ5F7sx5g65c10INTm6ndPpbApp?=
 =?us-ascii?Q?Kzsc55NZCLYdqCXsGTynHZqlGXbhHgt/+Buc9BfPEht/9PQD0QRS9cZOULLW?=
 =?us-ascii?Q?gxnQ6vUhkkAUVWJGtQXwYjS9FP3XYqkv264vpKEwJqIQJ3c7ak9n/gkj/kVr?=
 =?us-ascii?Q?O/H+sVRi72U=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8822.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(52116014)(7416014)(376014)(921020)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?f7rbPtp83u4/oS5ILNjCpS9Oq+sLUJ1KvUZ3Awu3DxEQ6Z75eCzwVMM66ik9?=
 =?us-ascii?Q?iXBTTbfFnZDdUbK7PkieWUa22efQDJIeIKWrSd10JgWTWpFqczVDCSKAmVKa?=
 =?us-ascii?Q?PXDsWXcI1Ly4erMM5naTJdtsLzb9Ecr+CWNwnDf7HFrBbHnOh3K98KKzomDR?=
 =?us-ascii?Q?YgmHaBqQspvxeqD2ePg5biD45lF2TcLINtzZXSOTKSMOwC23bqsSvRwARFja?=
 =?us-ascii?Q?DXKnhlESzH9ppGgx1wrtcVYqz5q+D6oYYAlJ9AUbkGxO2DTeORQJWgR7Jh8J?=
 =?us-ascii?Q?ALOdFWYNJd0tzg2WRMT9A+UDnK/bjQNQGvAIDkgrDMFwWb3JDu5/vu8iauRD?=
 =?us-ascii?Q?8s6GdKj1T8rg8+Z8K424KYY8QaPJW7eHvCmkBXhemgCS+YaNGaObakTAkETR?=
 =?us-ascii?Q?Zgwetw6zmIUXmq0IxrodsA5xWFB0xZZIZ0nnDWOw0AlpQerD8ILtYfKtfFIc?=
 =?us-ascii?Q?de8c1cVGGccuPYKUOqLQjEEsu66+46GSPJffjEB89kl36p7XHe9CWQSNS7gj?=
 =?us-ascii?Q?GK/2j4ONaGAnctFESE9awizclIastQQFBCBPW4aTzV9T3pwOICIPFk0ahgmj?=
 =?us-ascii?Q?YO6Xs7QmZ5gIibHbZDpWf9v3S6IrPElvrgOuRpxN+ayxEcG0kBsKBrKvB06U?=
 =?us-ascii?Q?aD/WVwbPDOikd8e+10jdW+5KEcRrndUGU7kiFY9vUZ7IruTMTPfCWVBfyW25?=
 =?us-ascii?Q?CXBw6n1J5qtuxhdReYGUwyhmPvbtRPyOhtURQxc/dqiHVV/OlLUNwKpOWrw+?=
 =?us-ascii?Q?W/qLVQPZt7Bk4/rjbQ7GNeXjSNcGahnwLbyjbcbdkCjJLxun7azTKsUnpewL?=
 =?us-ascii?Q?/SVe5YrOfvVXJOQgXADXQ6AGYBUDBLQOku5zUzq8isW/vXbhBURFtoGe6nnS?=
 =?us-ascii?Q?We61rhWWSBMnKDYHest3rnJnNN6eEKYs8fKwX9jx8D+a0qDejZkhXVZmdRIQ?=
 =?us-ascii?Q?KQdikkoYvMJYAZ8lLYafu5fghlWPdk5SDxo6ysF6FcZhXUEFJmsDtJU0x1WS?=
 =?us-ascii?Q?gtHHTWtqF18i8dPrxGELFzYj7ZKzi0GExE0TI8tUItRtzT60ciVTxHCKRuxH?=
 =?us-ascii?Q?LvfRT5pCe3wnXYTTm35j4rtbopX6FPetkSwNCw2IjsHF0JxANt9M/ts8gwY4?=
 =?us-ascii?Q?pvGc1uIO9ftQpwzMLA4cb0hse3s7CBXuoHh5Y/GvvJReDx3eSUZBDVimSP55?=
 =?us-ascii?Q?yaP+AqP9NhBjkRFnkzdpkg3YtwarQ/n3IUzmByNmvKqaDPoD5nXHRwrlwLfm?=
 =?us-ascii?Q?qy4PhKnhOeALkvnlCIIZlnqMbo8ssCmUhoVbkQGuTzGPJuvS39Af2MiHSzcx?=
 =?us-ascii?Q?9TbX3BBisHpe7qKceyT5KXU0Rg5Sk5CDgh88R6F/LpUGahY/yfs3YoTY6hPU?=
 =?us-ascii?Q?kJ6uNSaa0czRDClnKT0bbxrnYlHwwZWN/sSEJlR7cQJzZ6K5UNMmOBlGDwGm?=
 =?us-ascii?Q?92WxghRhIhBCK6mO43rz5/9HW4gqI6tLecaEOSTMD0WUr7BLJ9+FbmD7G1nD?=
 =?us-ascii?Q?5W9OrmKi8fDAem/qTC98r0x3iEsPCg/96DotLcXwgK96GkU52aLNNUQZewSJ?=
 =?us-ascii?Q?QiigM+J6iXZ0DV5ryOSlSdloDN9Z3j4bSTQeEVYZ?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38f988ac-86e0-4e3e-9136-08dcc59ddfd3
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8822.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Aug 2024 07:08:23.8032
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Orn7UkYb32VnhReibHq8x5gi4kTRB+DJ9xhLJJ0TLps7RDPq8YaKfm/SavXTU9HM8BBjoTI5yeh+X630uvKGRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB9637
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_000827_809905_878D1912 
X-CRM114-Status: GOOD (  10.74  )
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

The usb phy in i.MX95 is compatible with i.MX8MP's, this will add a
compatible "fsl,imx95-usb-phy" for i.MX95. Also change reg maxItems
to 2 since i.MX95 needs another regmap to control Type-C Assist (TCA)
block. Since i.MX95 usb phy is able to switch SS lanes, this will also
add orientation-switch and port property to the file.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Xu Yang <xu.yang_2@nxp.com>

---
Changes in v2:
 - replace minItems with description in reg property
 - remove orientation-switch and port
 - refer to usb-switch.yaml
 - use unevaluatedProperties
Changes in v3:
 - add Rb tag
---
 .../bindings/phy/fsl,imx8mq-usb-phy.yaml      | 42 ++++++++++++++++---
 1 file changed, 37 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
index dc3a3f709fea..6d6d211883ae 100644
--- a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
@@ -11,12 +11,17 @@ maintainers:
 
 properties:
   compatible:
-    enum:
-      - fsl,imx8mq-usb-phy
-      - fsl,imx8mp-usb-phy
+    oneOf:
+      - enum:
+          - fsl,imx8mq-usb-phy
+          - fsl,imx8mp-usb-phy
+      - items:
+          - const: fsl,imx95-usb-phy
+          - const: fsl,imx8mp-usb-phy
 
   reg:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
 
   "#phy-cells":
     const: 0
@@ -89,7 +94,34 @@ required:
   - clocks
   - clock-names
 
-additionalProperties: false
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - fsl,imx95-usb-phy
+    then:
+      properties:
+        reg:
+          items:
+            - description: USB PHY Control range
+            - description: USB PHY TCA Block range
+    else:
+      properties:
+        reg:
+          maxItems: 1
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - fsl,imx95-usb-phy
+    then:
+      $ref: /schemas/usb/usb-switch.yaml#
+
+unevaluatedProperties: false
 
 examples:
   - |
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
