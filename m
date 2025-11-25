Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D88ED0E6CC
	for <linux-phy@archiver.kernel.org>; Tue, 25 Nov 2025 11:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h5KM6SHIw5KlEUoVnHzJOBBqxGcSxFHATbee8orQfjg=; b=hOXr8IoqYiJr1S
	SM5RNytJ+m80VUN84+ltKoF+3b2D1jzjQ3cXJETRzKL5SLUGaX8E7W3XjYepDPr60I94XTkqKWohD
	O/xSYpqGaRIJUda5fMi97Z8XC1zqfKPlULBUuytkbOTjCko2KC44uU1DPKGECSwCVSKLqvcm7lUyr
	7KYVfvQGjNy2pVs3dyFd/RPxU8tRr/TYxM8VS17Jw/t98zcIyY61w1Gpda4MyCL8Cjc1YlUIda2ca
	MTblXYhyZdC11ymAnplU4nPyNaCIyZN8oIdhyP+DPztTtdP/QNno4PiFlJn+6EJrgQ6LZlMWOg+kr
	9J/garRLIRfBMBH/Jk+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNrYZ-0000000DFJ8-3LuN;
	Tue, 25 Nov 2025 11:50:03 +0000
Received: from mail-francecentralazon11013068.outbound.protection.outlook.com ([40.107.162.68] helo=PA4PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNrYW-0000000DF7R-3cUt
	for linux-phy@lists.infradead.org;
	Tue, 25 Nov 2025 11:50:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YPpAv75+dzFBQ6OhhX6S6M+etsVfkf9hknhPXVMgtu3/S31fSbh+QqZP0vfWXVdB7u2NTojXqZhAhEXGl/ynblo/TMZEqGPFDFSr98Odk8JdNdojeQ5rmbxMOdEpgmcjJ8TIPrfJLXe5qcEduU6VRPDW3UpmrZ/uRQ+TePCUiw7T4n5ytyIa4Aw3vHmTuA5XHVpDN2pEPiDnn5NdC0jYgNUlBwIU9FerBcZBNigPF8EWZXXYtg6VJu2FgLu3D+LxUDOjMPAca9jzGyKjzk6OeM74dmEjOUFxLcr+otRaCDnSy/7RLJ4taR9Tz+TCoakMy/6zzqVPRydjUW+09TJlHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dzOQG97txPTqv5GnhuAz/xO1hcwiceAi4EPAH4/kEwU=;
 b=ZbvAtZW12VYt6ChImecbVeRcB1D4xJ3iI6sMmBHFCMBOn2hJPXhNy1hjeDP0xIqoKaUywxOaBFfZYltquzl6Ap8efnS9Vo0W3JC4TGmZhd9/qaaO212ukpYDRoMJnb9OahFeCPSHpUU3pr1whZhRv89tyzLg7NBqpAJcbuJ2iSNYj/zLKi9N6gwExOo09BGcwfaK6eJeROjV4a7TW/AySMb1DyEIJDUXQCS8HtMqsh8oAmp/zbOVTpPY/xN07QYxUgwTILbLWdMxVtM1EZErtbSku15aNLHhz02juUD75e9pIDEbkJlpoP16ySYI3dk/iZ0kYZ0NPjvLdY/V06xVsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dzOQG97txPTqv5GnhuAz/xO1hcwiceAi4EPAH4/kEwU=;
 b=eU6ysIVBXl0IkSFJdwE+6xMH9JDdxcaKLGT90Od+RvkJ5uAOCDWLsjnYzGNMMXtDKaM8MK1AnCreMJtkskzpRWNUMhMnG/SB8+ObGoPe63HDX4OW/WjB0i/JppPEKGbX9bJw21ns/GJKC5NNDbjtBGzyVCFaf37plWEz5cjT74KjX24obwWfUO2K9HPJJHCNfHGISTCIaAZakS84nFdLJwTWsyepKx4i54I2WdpQGezOXMHFSQ4YtqpjE+FjUkFQ+naZxwMA6D93KfovMQrtNNuavVa/jjiekZ5ii6st39JK3En3cRvr5QTWUOuFa98+0U8auUPBtJ9JVMWjQhq3sQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com (2603:10a6:20b:438::13)
 by PAXPR04MB9201.eurprd04.prod.outlook.com (2603:10a6:102:232::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Tue, 25 Nov
 2025 11:49:52 +0000
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab]) by AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab%5]) with mapi id 15.20.9343.016; Tue, 25 Nov 2025
 11:49:52 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 phy 15/15] phy: lynx-28g: improve lynx_28g_probe() sequence
Date: Tue, 25 Nov 2025 13:48:47 +0200
Message-Id: <20251125114847.804961-16-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251125114847.804961-1-vladimir.oltean@nxp.com>
References: <20251125114847.804961-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4P189CA0047.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:659::19) To AM9PR04MB8585.eurprd04.prod.outlook.com
 (2603:10a6:20b:438::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8585:EE_|PAXPR04MB9201:EE_
X-MS-Office365-Filtering-Correlation-Id: e688b1b3-930a-43f6-70ec-08de2c18be64
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|10070799003|376014|52116014|366016|19092799006;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?OBjIpzPjFL2/WXiDTyE68oSU2LIdhr+9SkTCwgVtZDC9Gvofm4fbfeEDOljF?=
 =?us-ascii?Q?sbvMGWidKtdocjSu6f28fC36GhR5E7pcJloy1yTDTGcI5VZb7nPwcsIjmG11?=
 =?us-ascii?Q?tmjyZw2dxuG9QGqFFq9cSUYXuId91gHtwx3+BVDWRfyYbNF5q2Yxa9l2UYwc?=
 =?us-ascii?Q?1GPqB6MPyzdDCCc30SB8dHnM7uiGbwVpsGvTdiOmW8005YgDrM3ftDTlTT24?=
 =?us-ascii?Q?rHuwNaV+AJ27qs+NxKv5zFCN9x9PqJgCWwfZNOgVjBytu7bTb9vTZKKwpKCi?=
 =?us-ascii?Q?abeZTW1ykHdyhMRPqPPnNgob3BXDJuHCGYIIXyYqk85knUwb6qQFIgSMCsog?=
 =?us-ascii?Q?zProuqxyU1WJeZkOK129+lJ4kA64Yiz0Z7X5LqPOp/+y4olKutPaZQXDJH3e?=
 =?us-ascii?Q?+j6Hg427rHDSX0lgzYSA0JZf+bfx/Ti5BFpivxoUzXLNgydb67DtyAgqih3C?=
 =?us-ascii?Q?7eSI7zSm9gazSLKeTkVvl/QxWfO9bA1FxaTUSabxJQp0A76pBUFkqAUG9Z3V?=
 =?us-ascii?Q?MYnpEIYnsFKLXJ+n80y9g1ss6xCo6Xr5UiWyIA9O6X955Zt56pbJf8ztOAfI?=
 =?us-ascii?Q?9GN+6ZKSs/G3tV428kcFOA0z6edQ1OF7YVRKHSKOTf+dgvzHQkAHlk6lL+qa?=
 =?us-ascii?Q?7dU5/TK6dAbyVRyTbTINMMPDTkKFXMnRu6BEN7ZEyVJO+KCOMLhFEJsCJOfO?=
 =?us-ascii?Q?Eh5XX0rO0XpXjXoXHSn+Du+85Y05SH/HIcClWA6gEaLrvIrNvpioF8/kYhEH?=
 =?us-ascii?Q?nHJKp8ef7np03HWG/+uBfULpaZVpX69XzvNtlqvl1idHP3Zt5ntH0Ti7UOIM?=
 =?us-ascii?Q?N9fdtoYnDw2WvG+ZSiWoMEhpF4TP9XGDGdEc+Xqp4NjY51/RbgeaNyplLCJe?=
 =?us-ascii?Q?ZlFVwQjHmtkhW6q4vcvCYX9uKanIZhy8pET0mwgg/kJ6uGVVeJh4vVEhzmG2?=
 =?us-ascii?Q?VsOWk1HFewobl+guv0pR6BFXV3uaoFQUZJMNgf6mjG7saMGvarwMtvpCTPCJ?=
 =?us-ascii?Q?ifDz43q2xoJUis5vgFxefkI1nDl6diSlL/8qByHnjC/MITp0biKYfbIe/HTe?=
 =?us-ascii?Q?BIrmJCbIaCcCFffnSrGNhA/Oq3WmRkd3tUPDscng6TZv5yxzjHCA7rc1k9oL?=
 =?us-ascii?Q?tfFjK9eVV20tzgMEs3PPli6iSByFgdvdua6NmUokh5/s1Xibiz8ISxNxc+Sp?=
 =?us-ascii?Q?+n8ZP9LJc2dwtTNFQP1Q+3V5hes0DJ9uipAtGQ+mV95zNiUeUa8YUYB9G4MG?=
 =?us-ascii?Q?O2ysFIKMvqTEFFh3TmSynCOFnjdQa7rcVPUwWXmpF5YUjgJePPRmui1tYYju?=
 =?us-ascii?Q?/kVPI0kEdZDa31dWaUJOW2eyhGASbhjUxFB+zU8BjMVh11x9S9H9ko6eH4l6?=
 =?us-ascii?Q?QOe8PdB8LAdHLCgNMZLGxNt0U1N2bNNLszgcaeDgZWdIJqhhi1gJGN/IR+62?=
 =?us-ascii?Q?AE7N4suIFYzV1BQvdSYgRXsF5HSdMQNO?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8585.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(10070799003)(376014)(52116014)(366016)(19092799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/FtNidd3MrXLadvSZKuGffI7fdh1grKBdcFTiPzuZkdr8AN7+7nrh1s+JBhg?=
 =?us-ascii?Q?fGwlXchqNswOYmTkFs/LunPHf2cNj2rkucmIhri6NuIh4cXfG3zuWhmrSV69?=
 =?us-ascii?Q?pqJGBWec9t0w2ZyoAiYdSZ4mvrAH8IS7XKIHZnC5dsxLxw0zJjkl0NT+Necs?=
 =?us-ascii?Q?cdH6mJovSb24salXb4X6e2ct65Oc42onEbI/nkwGflQjQRB9wy2Bp1yPyBYI?=
 =?us-ascii?Q?bVhP6871hOaxsRDr6qPiVXg5aiMChN+LkJkJUqPRyMPleRJ2H+uwgzcSnrgp?=
 =?us-ascii?Q?Rw1S0yPhDxISVpQYoGKiC/GRzDgUXimPDmFlaYOJBnae07YYiySsMoZYr+DO?=
 =?us-ascii?Q?KGTsMoeZlT7PCnCM5/BVgEpc+PBbSjirapp3zj/YsRRP+1xjjL3bb4LhJpcO?=
 =?us-ascii?Q?yigct74+3e60fhprRRI3lFpf5Q7rcq7gDJMoNwCAxRYbuWTIo5Ehywd7SaoH?=
 =?us-ascii?Q?8AizjDud/hiioUoj84CRFRHGbSpDf70HDRA2IM0qQZh9qBpy+6xyXL6ptlZB?=
 =?us-ascii?Q?x+T/WHC2xZ8LPN4FBtyjg8Y/a1iud4RACmn0WMoQkbBl0qCvssdmtWK8M10S?=
 =?us-ascii?Q?P4Go7KV3oYQlgVjcBBt1z96DmRFzxBNYVYBV7oTHgAlLNgkqyrzYR1dsDade?=
 =?us-ascii?Q?TewwnVMkJePORNY9htLvHtzR/01Tn4i3XDbEPqsJd2halVpnhTJQenCXlTIC?=
 =?us-ascii?Q?arZnbZk3DhhlFRnUB6JZKmojSftQinA/4muqpQJVxLCYkcFu9po97Q/fDciZ?=
 =?us-ascii?Q?oXuRJYFhDG62k6xKHs2v/3I8+9wnSYnPgqbNI5HUWi1K5CmXujilsu5R2tzF?=
 =?us-ascii?Q?tJVIZWgjpB8s815lpvjFscK7yI7Uyrixgk1NuQhvbImRXSXev+NV8U3x21xh?=
 =?us-ascii?Q?aSyQR8McyePuXu9nKVFEBPHYFWIGgJD8c/vbbQRwnvOw6ybX1vTd+SpQPtqM?=
 =?us-ascii?Q?THucA7HyoT4hgl/6Zpzy4ifWpxxTCkjeaY+xygsrlZXEGOvqJqXVSgcKZ6dO?=
 =?us-ascii?Q?TYmfOa7+7uJk7vSiC8BwszZWv53nGPwC6VwXdJuFQ7T2jsretmiST2Li7Mw8?=
 =?us-ascii?Q?sSrzMVHTe0LKgZejwHdzk/H/diTtQzQN2cSii1CXNMrTKGAlOJbugbS5MAbz?=
 =?us-ascii?Q?+3wAZXWaF03EIm8c19b2ZToICFQBQT44eZxbi3MbK2gvnjIL1M4i6Qoo2Plu?=
 =?us-ascii?Q?TCuiyJewLdlhtLRfhrCNFRUs85kUJBYjKDGw9fhTfdIBuvJ/L3z3ojzZI28U?=
 =?us-ascii?Q?J8d27QtgU8LMl33gDe8o0VoNxJJF3Z/CDX4dPCTk0rU21vmIjdXVc4YtJJNC?=
 =?us-ascii?Q?1EHRNo3ZswOjwshgi70E+I9ZOFxtrWdHSoAAsot7wKW+uXRfclsk47trTTRc?=
 =?us-ascii?Q?AJ7iFLdyRd+lF0OkENd3780m6j2SAWwqQ5MJApuxDQjwnvmDeOMVy3NyLyOT?=
 =?us-ascii?Q?GEGT1IXzWEk5vXO+QlebvzCOcI0fK0gvFYcY/2PLBUbToGlnYoZ5JXr82S++?=
 =?us-ascii?Q?HkLfizqdhgRR1vvr2p3l1JvE94vIem9mz2vQDI7V348GlDGAPE/DK1/dsqS9?=
 =?us-ascii?Q?VgWPS3cY92XlAE/pCqgywMn87DprKHe9WHtybJT6AbkzRe4GB0SWL5FuSryz?=
 =?us-ascii?Q?qqE7AM60g2mHmPImXrMhIRo=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e688b1b3-930a-43f6-70ec-08de2c18be64
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8585.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2025 11:49:52.0827
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JMoKvA8KodxgMZt5nEKbTaVA7xoHOSogNf3DxhC7oOnOgO4T3YLq8GfFSt6xM8nMIZc7nCQ4h4hZGn607E/4jw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB9201
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251125_035000_908789_E638A2FE 
X-CRM114-Status: GOOD (  13.77  )
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

dev_set_drvdata() is called twice, it is sufficient to do it only once.

devm_of_phy_provider_register() can fail, and if it does, the
&priv->cdr_check work item is queued, but not cancelled, and the device
probing failed, so it will trigger use after free. This is a minor risk
though.

Resource initialization should be done a little earlier, in case we need
to dereference dev_get_drvdata() in lynx_28g_pll_read_configuration() or
in lynx_28g_lane_read_configuration().

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v4->v5: none
v3->v4: slight context change due to the introduction of
        lynx_28g_probe_lane()
v2->v3: none
v1->v2: patch is new

 drivers/phy/freescale/phy-fsl-lynx-28g.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 423223371dd0..2b0fd95ba62f 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -1163,7 +1163,11 @@ static int lynx_28g_probe(struct platform_device *pdev)
 	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 	if (!priv)
 		return -ENOMEM;
+
 	priv->dev = dev;
+	dev_set_drvdata(dev, priv);
+	spin_lock_init(&priv->pcc_lock);
+	INIT_DELAYED_WORK(&priv->cdr_check, lynx_28g_cdr_lock_check);
 
 	priv->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(priv->base))
@@ -1208,18 +1212,14 @@ static int lynx_28g_probe(struct platform_device *pdev)
 		}
 	}
 
-	dev_set_drvdata(dev, priv);
-
-	spin_lock_init(&priv->pcc_lock);
-	INIT_DELAYED_WORK(&priv->cdr_check, lynx_28g_cdr_lock_check);
+	provider = devm_of_phy_provider_register(dev, lynx_28g_xlate);
+	if (IS_ERR(provider))
+		return PTR_ERR(provider);
 
 	queue_delayed_work(system_power_efficient_wq, &priv->cdr_check,
 			   msecs_to_jiffies(1000));
 
-	dev_set_drvdata(dev, priv);
-	provider = devm_of_phy_provider_register(dev, lynx_28g_xlate);
-
-	return PTR_ERR_OR_ZERO(provider);
+	return 0;
 }
 
 static void lynx_28g_remove(struct platform_device *pdev)
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
