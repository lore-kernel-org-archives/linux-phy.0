Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABA6CCD37BE
	for <linux-phy@archiver.kernel.org>; Mon, 11 May 2026 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JfOIyJu73jOH3wiS1zab+6HkXSzYNeulNGjiOoNs4oE=; b=nh9mV9IKU9q1fG
	HekvFqBllW+NNTc6/uzV5uV/pLlEbG8EvTTTaMJIE/jG9sMs+YmDUFCFaDO86Pkp59lErBryKZbRU
	Ai5GprApd/opybH0FdfVbxnPRokzGBlEEkrRP43synFpvclYN4oz2PB56s3pzdGAXz4BpFqfdbXbN
	Qx6AOZN8EW1+PeGErFgjCMJ3BrUUVmzXWGvAgOxJs6L+JqmkKPHlXYihGzXBiLiT9VWsLP7iemXXZ
	I20sRypjI+LJ/clUjVQsiT1vYxJV0vLkoSwr3GChUTzC/Tu/jValuWIMpni/zaLaK7HuX8mCWOAhO
	SfeS9fjj833tz0EnX99A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMS7p-0000000Dz4R-1saX;
	Mon, 11 May 2026 15:00:53 +0000
Received: from mail-westeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c201::1] helo=AM0PR83CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMS7n-0000000Dyzt-2K0R
	for linux-phy@lists.infradead.org;
	Mon, 11 May 2026 15:00:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=p76Q6Osl9hY3tbf9ypgp1rM7RRyxQpbQanG25FBuSb+3nL55ZI2c7TsmqlQTtDuBjVL9jVwhyS84rp48hzQMB6UzkbOj3z6pOIBco0liG62DxihPAnUvrOstHZHlF+sjDGWFe++dugZw+Yhl2gS4tRfBfeYjzSVjJsdoExT2PobJvIz7iiJC4jIbGOh9Oo2zbkSaDz2doCaFUZWYX3j6DW8tJmSdvuJU/ST55TvNWi8FwZdXuPI8bE93s8/t9een62v7ANhPu1Mvw1t0I+iyLbwYmqPRHdFx52tNc+9sGg+LKmejqynf0S320MrwxXQOnQjctWDV/XyYh1tHsUoa3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ssxnr+Z+OXXeGs8K2+IJj6eKRhPpAfCjpgwdqB9xTe8=;
 b=ipYkRDbdriA4L6f58bQefd+9px05PWdHVycEF+AZCHvWrKV7fqZ9gH7OMphp55o/zTooaDv82JDuGntlY1bzcdnBf/mjyFw1RqPIea+ARz5w/OUYbdkEoho1IaX/fVy5B8REAF/5wBPk+ZNqFC+UMkMbKNFhL4s9xQK3sDTcWVWLXZE3Zvhy9rzxsyM7OVS2Hh+dKBWviWw1JFa7X4h6R+Usj+Lh9r8D+S0hLDWN0CdNL3ipuu7xBvejeOBMCVFyVWDG+W9i0wf6lagVEyE/tUZNyzkcdBn3YOePupVtOxAVo05fSNHWO1Dhgy2ZdJSSR1QZilGVvQAmDas07T7tmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ssxnr+Z+OXXeGs8K2+IJj6eKRhPpAfCjpgwdqB9xTe8=;
 b=g1z8hu7Lzu52mCDftt/fYjJ8MgGSMqFvc9FULSzRPVBAi5nZmF3l1HfuuAhv8kwhgHwe4Okhj4BHn3mYx/eRkbzIT7kGPEtweuXtagcVrvvOVVUDJD9j3amP1mA60c2RIzFh9URv9eGNdjvZqPCFIWM1AB02OpT49bkl9k8z3JhJYpJSr3kseRsl71WzEgOIptfgjnm+wc1ovND9zpIXYC4s6beMsX6UljvBJwWs4Tsx73e1N+8ky1jjgz0eN/2Biq3eeNQa+fXRww/MMgxpNeW4gPVWwiwvc9hvDzOnX3sErVB/+3sQKX/a+Tnulctn4aykRwXmnKpM1j74AphCmA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com (2603:10a6:20b:438::13)
 by GVXPR04MB9976.eurprd04.prod.outlook.com (2603:10a6:150:117::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.23; Mon, 11 May
 2026 15:00:40 +0000
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::f010:fca8:7ef:62f4]) by AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::f010:fca8:7ef:62f4%4]) with mapi id 15.20.9870.023; Mon, 11 May 2026
 15:00:40 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: netdev@vger.kernel.org,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH phy-next 3/5] phy: lynx-28g: require an OF node to probe
Date: Mon, 11 May 2026 18:00:21 +0300
Message-Id: <20260511150023.1903577-4-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260511150023.1903577-1-vladimir.oltean@nxp.com>
References: <20260511150023.1903577-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM4PR0302CA0028.eurprd03.prod.outlook.com
 (2603:10a6:205:2::41) To AM9PR04MB8585.eurprd04.prod.outlook.com
 (2603:10a6:20b:438::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8585:EE_|GVXPR04MB9976:EE_
X-MS-Office365-Filtering-Correlation-Id: bfef3ddf-3eb1-4089-dc76-08deaf6e1164
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|19092799006|376014|1800799024|366016|3023799003|11063799003|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: AV7fQpOKYeBhhHv595R6HpJUvR0jn++WMqjO7QG9iykCXXTlxs+oUxqZtTRWVY6Ygkf6N4+GBjnzQi7gOY7xdV1L+qROyoEmIsRgnAu513kVkLH9fPc/LMF94PYPGyi0+HShl3mzVUj2XlgOHDCkdewe2lfPOzYMFx8EiUauG8ZaERctvvR3O2d/Zd5AU8YsbvvYPSO5H6WZ27MBE7xBA2p3kgI4hjfHTyBcpzblM2Tu7MfESl/AlqKJafZIj2FWIboNeRa+lnj31Ts9JG+cmBCRvrwJVmQketl8SoKesBzeiVgwnoXhNBzHH/X4DjfkzvYUbro7xAUdpRVxLtGvtzs2DczAKofybKRneRXlfqU0Sdi9Sh1h5qRuhCG/Qhut7+2DQ1GNGHnqlAFrOnbsOpCWgpW4M8lYPBHBfGN4Gx2mRklYUUllWCanqbO2lHBv7wzVPIvGFRjgIVT2fjrsz2uVMImFJNIhit2gTi/opETBTlErvhCOOLBNbqa9HEuuuNKoBQFF/mskf/YTIpcgA46Mfa5DkEfMorRGhn+t5CiXq83D8ZGfVy56h8GycLL6/TrgP3COwJ9b36ATfCFoMAj4oKw9f+3jdGq4UNhdXFDe15zv/4hrQHvvTiWXlT0FkXzv0OzH7AmeAYlcX3HXfWxgLmPKlnwyN3lu23CQgUXWCwO1Puw/bJ/D4mN77t7K
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8585.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(376014)(1800799024)(366016)(3023799003)(11063799003)(56012099003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wz8wgRGODD2xX1+rHBl/P9+jZhn983w6XFwC3VPpLXthfHt0GS2CoOlUhLz9?=
 =?us-ascii?Q?7B9cy8Ru9A7A9LZGu5V1QhxE3k987hWUi6iTqvwywwxi26WP5xkEDr4uj9un?=
 =?us-ascii?Q?DvOrrSxMN1aKg2EJ+tDA9CbwfT9dJIwSxAcQtA9T+RPQHcqyZzvxePXXXqZX?=
 =?us-ascii?Q?5QotHRmPfTkUpgxegk2ehB8MVN9aSxednIhDn7XVEKJDdMgn0ikYBqALbR49?=
 =?us-ascii?Q?PqcbiR+tRmBAh6H+oMnxj/65FYrB6TNxIWDDK/83XvgeR1cjtK8JtTY1ibUH?=
 =?us-ascii?Q?mA04oXbBJS64Vetcg/4q9bGv2VkkhVzw9HAlcGnSferQX5n+s3ECNXvMLVV+?=
 =?us-ascii?Q?AFANhmNWmZSkrE7HoP3cyHqV1OYmf4KeO9MB2lEp/yUQR2aZOl6X+Ilogrk/?=
 =?us-ascii?Q?nUwZRf1+umDTX36aGCHP67Wqob2I6VVTPTYbuZKWzVbohE/g3Yf0uxedVjRw?=
 =?us-ascii?Q?jOh09MQi6dkXd9DkUxA2j8rqfNvihfIQbCIb9EPVZALrItmm2nVgPxUiBZwn?=
 =?us-ascii?Q?jSBiSSSqvfdo4OAEPmvv7fsZqXgn45Tis3gkBIkwhTV/0Oi4IevbfGaJfbfx?=
 =?us-ascii?Q?MsiTCmlUIoS+gA6L+cHlmlauxYqNvKrEf4kcTy/NsFJS6lKt7vGd2XpehNU8?=
 =?us-ascii?Q?e4tWL8KXeB8tArjJZ/BMUeYckUgn9hP+6JmN0guv4snj38lK8nD0Sd9tzDRJ?=
 =?us-ascii?Q?zSLRqaAYw7Xdoqyl8kA9I9uLUo/boZuf4JwSioiE1CyhHw/7Y2T8EYbhvV7e?=
 =?us-ascii?Q?rKDt5ipgIbeCJWYTAASD48/tJt6xy7gAQbnnoeISD/Q3ZEmWtcDQqbKS3FdH?=
 =?us-ascii?Q?Fc0k7FLy7YK/Spz5C5BpOt5kXuMJgaJ04HLMgHEb56NX3quJlSzCmHOOLm1j?=
 =?us-ascii?Q?WOgo0svhdxwX8BeJrrnteoY98/iWtLMHiLfdVUquE5KpmHtDYDhuEoldTOnC?=
 =?us-ascii?Q?YYooRhShw96w74DGc6y4801rgbQKD5GTBN92ri3ls07c1gLK+kh4u6hJzmCw?=
 =?us-ascii?Q?s4jwQrAAepAZS64oEfRezCWiBdhuEYhZf3jOzFhHXNYl71ZS4rMx5Rfxdsl8?=
 =?us-ascii?Q?WUZjJynSgjOjAtPEsiEl1/BuWNkBQnxph87YleFw74tT7Q/BORfjVWg4KW/v?=
 =?us-ascii?Q?HnL52LOXFjpSRsksHJ27LkdGexI/LbdSp2TsfcH6LQyaDpSPP+bX0KTaLuNl?=
 =?us-ascii?Q?eh/5WxPkNaQuPUIGP6FJQ+MeSCPGROg+aK5avTJtx+yjOKZFvG7PcRmoNxlv?=
 =?us-ascii?Q?FsiibmMtZ+43nLfSCsCM8Gkv38VMDl1ItZXanFHszhoMSNhNxT8wf4hwjI8x?=
 =?us-ascii?Q?prsqgq+ZBNoE6sVlxnMa4ofZ6TQ0JIZcyl7ipyMSi9Ks5l4uIPYfroCjXEDp?=
 =?us-ascii?Q?0ioOT1tEDSGkxCGG6+1jXAS3Gs8FjvZE25vXT5w44lvquVNpJ2BKOCjo/6Q/?=
 =?us-ascii?Q?RS1hSTkp+e86hYyPy1o0bRCQ8ewQ8hb69Itvg6asQgVjuZWUy/5NV4OLkWkV?=
 =?us-ascii?Q?avOTLHSQkWJjLu9/2JfKUvslOyLNv/2JT6uF7v1OqQeLRzMVrIiSJkdz3ItD?=
 =?us-ascii?Q?i6acLzxbGg9Ls9mIdnminr4mQuV8Guy8gTnEun6s4/1XNkhINLAiNE4D813h?=
 =?us-ascii?Q?uxsYzRWYt2kgBtwfNkCztUeS1ny5z79X22qJ5fen8ZsUUzOPmVbvgPMI7Oys?=
 =?us-ascii?Q?LG8aFuS1UuTP1iFX3Q56qh1lcVaJjgc0pYkTTH1qZZ5bfkE4wdD+MGOfTezv?=
 =?us-ascii?Q?8QQol0NkzA=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bfef3ddf-3eb1-4089-dc76-08deaf6e1164
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8585.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2026 15:00:40.7891
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Tpfm9ji8i8jvJhxVSFO9m4IL3veA2PACZ5ubIvpOqRFZxeD+CkA1G5y7kEAv6onLAAHXJmp0cLrhzhx4mhnojw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR04MB9976
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_080051_595486_A9D056CC 
X-CRM114-Status: GOOD (  12.71  )
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

The driver will gain support for variants in an upcoming change, and
will use of_device_get_match_data() to deduce the running variant from
the compatible string.

Currently, the driver expects the schema at phy/fsl,lynx-28g.yaml, and
OF-based consumers, but doesn't enforce this. And it is possible for
user space to force-bind the driver to a device without OF node using
the driver_override sysfs.

To avoid future surprise crashes for an unsupported configuration,
explicitly test for the presence of an OF node and fail probing if
found.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
Change is new.
---
 drivers/phy/freescale/phy-fsl-lynx-28g.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 4ec3fb7a0d69..6d0c395d20e5 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -1286,6 +1286,12 @@ static int lynx_28g_probe(struct platform_device *pdev)
 	struct device_node *dn;
 	int err;
 
+	dn = dev_of_node(dev);
+	if (!dn) {
+		dev_err(dev, "Device requires an OF node\n");
+		return -EINVAL;
+	}
+
 	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 	if (!priv)
 		return -ENOMEM;
@@ -1301,7 +1307,6 @@ static int lynx_28g_probe(struct platform_device *pdev)
 
 	lynx_28g_pll_read_configuration(priv);
 
-	dn = dev_of_node(dev);
 	if (of_get_child_count(dn)) {
 		struct device_node *child;
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
