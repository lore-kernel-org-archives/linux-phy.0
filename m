Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69550D11183
	for <linux-phy@archiver.kernel.org>; Thu, 27 Nov 2025 11:49:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jGvkVsBuqcEg5Z/WVGivsbtPThVxJUwAu0T5r07Y8oQ=; b=XtRGalV9TXNX9a
	eTktNP7qqnCE1ZVPwq2YvJW+I6hTVuPkbRet9urmYt+JJ3iiYKYytEIeoyLEGJ8zsTQ6SqHA9My+w
	AZw7fZmgXigRA3X61qfAiiJABOaHs9tkPH1/v8X2s9kHiOY+zizKSpG0Ksbi63D3TiGmmkaJB7BWM
	1p8KDmZnoBX78Ed+2wE2fJVlXTDiXR1RdSqmpcb/PZOJRp06PajuYc63qT6UmxX+u/kb5DxeyeoLn
	qzOeasyMwELWPb0Ehfe8fPyhkKihQINOJCAiWuCBOKHhfUVyi9jR7inY8lTk9vcpl6p2seFK+ZblI
	t3tJYn31tVkYJBVgtNyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOaVL-0000000GUaB-0df4;
	Thu, 27 Nov 2025 11:49:43 +0000
Received: from mail-japaneastazon11010022.outbound.protection.outlook.com ([52.101.229.22] helo=TY3P286CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOaVI-0000000GUYt-07jt
	for linux-phy@lists.infradead.org;
	Thu, 27 Nov 2025 11:49:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OmISEWxl2hN3rkLr8AfPSh39C/nOr3lBxezWNcTxNz3JaRXXncZLi9D43GfE1N9VL4Cx56VdiHv9Z4UNzJWejC90aSavgzXXIhPlmFDRKKv8uDLPzvyxTbLzl1Yl6MUFx2L3Mgrz6ylwCZE08JWHi4br6vUnivXT3XV4Rl7hgGRZqR+p2n6iQ8Hx9A5/68gUZK7IXy2indsht/pbUFmich2tCdtxw7Hnjj2nRfSTCalTyOQcOzG+4S/PUxLIWLoBDXp8VhPo9iczs7rgrVoLgyFNwb0GxXMH9Ts2sqX8hHPSUM3Ybz1mBSTZY/RAco6aBeO2zMrvcHTXrBphJ+pI0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kQS341zfRnj9ZTfAqI8I5YrgZs793z1v7JLNW4PPEFI=;
 b=K+C8kfIB6Zqfifp3xWkowp3ScaQAIAOvdCKXj6jJGjF55o9/+cd4d/ZI4v4TDAC4hJ+ez29Cem0uyv7FqtEC1LJX9N7lf4/ajalahiI+a/20CAXx1ZBFvxNGd6bfCPodrKn3qFpxYwRFWQJXXFWyp5y7qhRap7MZok559YYzHL3Q9/7XR4lmEf6cmVVz/FCZ6De4yeeB7aUB8ov4Id2sHMo9gA9+2gN9gn63/Cn0M+5QZ/QmyscEFmcq5Cn3sf8mVkuYpF5+EsIXK83AvA81TG1xBUCMVHNo82ZFoRc40IQW0p3S2UVkYWdq8hp9oMseCXrJUdqCYtc2kSuNEBvdEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kQS341zfRnj9ZTfAqI8I5YrgZs793z1v7JLNW4PPEFI=;
 b=oD/uJ14xIw4MaCty0137rn0/ry+KqsgWhTczpjDYrdMI6PC0bipOaBb3pePA0zdxr5K5DNLB1+fGmRYvcw21RQyga7yO3wL2fGWGHhGqeVEoNMcvvfUO+YBju/R7+/DCslpeBdEraPs7VxqxSBrkWkZRH61jHjWvvgLTI2F8n6M=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com (2603:1096:400:3e1::6)
 by OSZPR01MB9632.jpnprd01.prod.outlook.com (2603:1096:604:1d7::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.14; Thu, 27 Nov
 2025 11:49:37 +0000
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::33f1:f7cd:46be:e4d8]) by TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::33f1:f7cd:46be:e4d8%5]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 11:49:37 +0000
From: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
To: tomm.merciai@gmail.com
Cc: linux-renesas-soc@vger.kernel.org,
	biju.das.jz@bp.renesas.com,
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>,
	Peter Rosin <peda@axentia.se>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Mark Brown <broonie@kernel.org>,
	Jonathan Cameron <jonathan.cameron@huawei.com>,
	Georgi Djakov <djakov@kernel.org>,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v5 01/22] dt-bindings: mux: Remove nodename pattern constraints
Date: Thu, 27 Nov 2025 12:48:28 +0100
Message-ID: <d0518a64bac31a5a755471f79d6000aa81657503.1764241212.git.tommaso.merciai.xr@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1764241212.git.tommaso.merciai.xr@bp.renesas.com>
References: <cover.1764241212.git.tommaso.merciai.xr@bp.renesas.com>
X-ClientProxiedBy: FR0P281CA0187.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ab::17) To TYCPR01MB11947.jpnprd01.prod.outlook.com
 (2603:1096:400:3e1::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB11947:EE_|OSZPR01MB9632:EE_
X-MS-Office365-Filtering-Correlation-Id: fc6690d8-8bea-45fd-6692-08de2dab0a6e
X-LD-Processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|7416014|376014|52116014|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?YrQ3C7Pi4BeutBNDIST/tZHJJGiRg87t+QxVLmK1QGY8xDHq96VQC6CwFixa?=
 =?us-ascii?Q?hiNOd5t3tZg2f3SbwOUVq1I2lEbnJ7dTat+GFmw2HfE1jHBR9Ff4/To/ckS2?=
 =?us-ascii?Q?1oCf/grQhWms1OmXdEJeRnMzpX5Qw9FY0hcJRwNR1xicWSL18bu1DcwoGU4M?=
 =?us-ascii?Q?WAsJsRc4bgRZF4SpYc47mgvWUXMuipJ1532v8xUPvFoFD4m0sWdNUtUWyfLU?=
 =?us-ascii?Q?yVD7Vib6ytp5S+flxnXwMP/cdt9SGWIBi0bzEx/DHMZj/Vt1fi789zVSuuYi?=
 =?us-ascii?Q?McN0wGnfEPqpFp1tw30mHV0MyCnt5Q8l5lYvY/v8rbSrbW9SVLPpUb17s4k2?=
 =?us-ascii?Q?kl5Vh9CsY0Gk8QdKYKO6X3IKYf0HxpkWpIGwInkN/Lckl1J4/tZKyV8XZSn7?=
 =?us-ascii?Q?3HeQNnYiyLWQ8GMtYZpbzXbsyzP35AEUvOiMofqfeADkWqe1d36X0J6wQSQ8?=
 =?us-ascii?Q?5dq6OnSOpXhwEgXgsOT7U0OIgGwEZs/jVg/3eRnFT5pN9dPhF/24c8xT9PPX?=
 =?us-ascii?Q?PGZfeCy5/0YlKVmDthflPxBDsX1fH2J/H0pNB2qpLb3K2zONDHjJtsqtLFWk?=
 =?us-ascii?Q?CUcyYmbWAhuAl1NtDZFvu93puPYZ/8A3rWdYab8uUyrMb28VoVipSilfDRR1?=
 =?us-ascii?Q?WTWwivvplGvyMigeJnEhYNEnNqlJW5PzDONkLG5YZ7shmD11/QBpcFp/mnrd?=
 =?us-ascii?Q?gUAWXKrNGpqqYCR+XAsVOUdNInCUE6Tbs9UqASoFHH3atCbexrGnHtVQbt08?=
 =?us-ascii?Q?Sr3Zg0V1wI3ogjegAb54J7ahdGnW0xAngZE/IluHJBOraKQnMPE3aAQUgGn/?=
 =?us-ascii?Q?imggyGmRB8AE/RX9Lr7KRj+6xoCoZDnu6paY7A/ZZGeqeqkKFMPNiQCkBQBa?=
 =?us-ascii?Q?OncyvE8nbwwXd1aas10P42zptTj+bfrZp3sy19Yf4bHfqc5WdZ6Tlh5OEw2e?=
 =?us-ascii?Q?hcKvjQ3DV3qOgfI57eC57MygR6FXcZBAmdZ4gpHpKDu0Sy1nLi809YpWkJKJ?=
 =?us-ascii?Q?UlXqPyL1Xr5lRwm9EZ+jfdyOgN1HUr3kHDkL5W43JKMIRfqtOjm/x0sjGzcn?=
 =?us-ascii?Q?9Mr/TaD/z1gmad3lhMeWYOahahj5a+G71YWdLkTf5GQeTmUnBwvxlIC/CYNv?=
 =?us-ascii?Q?nyQ9kj1iB0ZwrHDXRkvkwJ7F5C6vg9Ji27AyITu/FCt3KEVr1F0TQwViPo2V?=
 =?us-ascii?Q?NMnbpS1pnu73wbEIu01eoCrIljFPZ8UaeAv8WOqmQ+Cbjn8eMmsAHTVSX8/K?=
 =?us-ascii?Q?fjM58XMgEwd+WGrn02Oppw69tXRY5G/0z1/+J2qnzqQ4WiBbGN1Zf0XuLQxo?=
 =?us-ascii?Q?K4HFmfQYHx9lmokr3IRogTWcJiZ0DVUo/5WVV6UTTPH1KWAoPHrLgkVyMBPl?=
 =?us-ascii?Q?xvolnQCCURRb4hTy93Scar73f5pByW7eum4w1kqh3a6mKNPF74cFv2BxJ3ds?=
 =?us-ascii?Q?Od2j+NzwdajSmmUi1WD4VvJMHeaVz71PS3pRHSFDQnE5JSy65mxNaCRdttH4?=
 =?us-ascii?Q?GvDl70R8xxleZE69KxHWfr66Jb1diI6wwdqd?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB11947.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(7416014)(376014)(52116014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1zM1ueVFBkZJwDnG0qMMBnXTJiSfKw6F9nQaFtxww7hXZMy4urrEW2LeOxMj?=
 =?us-ascii?Q?QmMOYAeBfZrppxk1ZF1aGUrVPNWHnHJeXif7xOFnXT0QNwr2hA/jTOjr47cV?=
 =?us-ascii?Q?/VhFamm6/Pp9s2F8yn6Q3iWqs64DBMYAKgNbyKOHY1sx07jbiHaqzpzJT/0C?=
 =?us-ascii?Q?pq6Ljv9DApA7x+iRNwaIRmgVw5VGg7ZxIaMnTpVRWw32aB6FweSKBcYD0Z/Y?=
 =?us-ascii?Q?FvylUi16YW7yTolP0PwFQSgYAfBh1FyKBT4sXyv7t0kJgmtV7tha7g5DGzWZ?=
 =?us-ascii?Q?I+85gTqXByI1fWqQYx/ztl6hwt/sVwuBwLeyWrw707SnN1KmEfWM7TS3aqdj?=
 =?us-ascii?Q?+ecjZzuZZebMZxAB1m3/3LiNs1v8cPD9teTY7Hop/ZLDABqD7AMqmqVU2agA?=
 =?us-ascii?Q?/gbyVOkk8D7J2wBHrOTkRlUcf2PEjJttuJx6p43xdABV1EKaVShmmZOPYE8s?=
 =?us-ascii?Q?1m6/HRQ4/6KClp87xJ2mIwgKXVfTYKIfJLngYjOGId9JtNM6lqzn/9hfLePt?=
 =?us-ascii?Q?v5rDH3D209SVi6tvNW9645xVOAZxVmRf/j7T9VOPeKaYqLJD3cF6k/NjdeIV?=
 =?us-ascii?Q?UWVNK+QJp0LkKDvxknyNHNz+aDt5osXB2FE952qU/DkJK+UnawoB8wG5Y2hy?=
 =?us-ascii?Q?gZF/qnPJQssl65pP9v8iQhyEjKYYCzBCuRkDUnfJUE+HIM1M6geMJfkdHb5C?=
 =?us-ascii?Q?wZjhBHPu3bOB/dBGV64uP25frkEgxCv9C8tT+4T7oO5JgJdBPd1HopCOD//T?=
 =?us-ascii?Q?iM+emWfQ8WUfb4voge3tGa0I1QlwSwyO5XDMssU2aUY+dGKFilgicfg5/Bo+?=
 =?us-ascii?Q?V3lJ5wwMLXSKhGsuKLZU8A3GaK6pSlte7o/7FPry33cOfraOB0Dz15TBHzH1?=
 =?us-ascii?Q?ImSQLbri3QzlvOnsZIGjIzsJs+Mrpjlfi6Keu/Pu9nbj4f8AkB8RBaPrCz1p?=
 =?us-ascii?Q?mwEdpebB/DwCHR6YqcKY18FXQRlaQ0WNRJYTGByrS+jeKeRPTtIE0m3bLfq0?=
 =?us-ascii?Q?G8rkIWcm64q3aPt071lqsWS8DC6Czz8vF7W6hwcZRDXH4hi58tmnNuh8nkDB?=
 =?us-ascii?Q?wuwGFgRKohFdjb1wbLIU4PRUTH9f2g0LIcrN3SX5xK9fVqmhiMFlSfv3WMV6?=
 =?us-ascii?Q?qUMNb3ES4TU0RjtwCI5SyWDOeUkCpkIH07RYpOVOacTf0skZ23piKByiseB+?=
 =?us-ascii?Q?O/Wu3FPKtqmbEJG/6mOQ7P3x9YsxH2cbs51aLAK5TbTFCDGoNqslbwC2k3X0?=
 =?us-ascii?Q?7B0QQ40eMTDUmak7BXWQkFbcKwl025MWEPnjN5jJqACliHrIt2lLiFsXy7Z9?=
 =?us-ascii?Q?yjRTfzZ1WotXLHhxOQKnjO3+UbWW12/d4KtaO4xXZzsp1R3ItyvNP0dyvNGI?=
 =?us-ascii?Q?MicJxJyLtcI3dtBsdxq8ABTIpS9vLT7S5DfEgIbKEmAJFhKhe89Y+YqzB3uR?=
 =?us-ascii?Q?v88VypZKfslFgHmfKqL0Utub3owmWtd7s2ikaMBDeSAejbuI5FNWOLEkM+x1?=
 =?us-ascii?Q?7tu/ty0P0MiMITW7M7YHPWoQwJiIyTxluIHQpoUPFTx3+QfYgQQOx9sIQIzw?=
 =?us-ascii?Q?+U/aa6TbB9qebQVIFa+0BkO/QTMLVw2FYUcD9O98fzahhCj/Yw2qLJwmyfOr?=
 =?us-ascii?Q?SiEj2h+E2f1wYBu1kVErEP4=3D?=
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc6690d8-8bea-45fd-6692-08de2dab0a6e
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB11947.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 11:49:37.2117
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0KLDFEsqdGk9y6jXHX5mjYb8mmENlnoxDcZ4kJT5Gs42R1mB3cIXIjyppIndWvzBtFxwi92BgMoclGzz5zb68JhmfjuAVPiaFNuSoD4IsASphe1T2Q8pj/M5cS8dcLUf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSZPR01MB9632
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_034940_068914_9F3C99CE 
X-CRM114-Status: UNSURE (   7.28  )
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

The nodename pattern in  created an unnecessary restriction that forced
all mux nodes to be named with the 'mux-controller' prefix.
This prevented valid use cases where mux functionality is part of other
hardware blocks that should use more specific naming conventions.

Remove the $nodename pattern constraints from both the 'select' keyword
and the properties section of the mux-controller schema.

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
---
v4->v5:
 - Added Reviewed-by tag from Conor Dooley.

v3->v4:
 - New patch.

 Documentation/devicetree/bindings/mux/mux-controller.yaml | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/mux/mux-controller.yaml b/Documentation/devicetree/bindings/mux/mux-controller.yaml
index 78340bbe4df6..6defb9da10f7 100644
--- a/Documentation/devicetree/bindings/mux/mux-controller.yaml
+++ b/Documentation/devicetree/bindings/mux/mux-controller.yaml
@@ -63,18 +63,12 @@ description: |
 
 select:
   anyOf:
-    - properties:
-        $nodename:
-          pattern: '^mux-controller'
     - required:
         - '#mux-control-cells'
     - required:
         - '#mux-state-cells'
 
 properties:
-  $nodename:
-    pattern: '^mux-controller(@.*|-([0-9]|[1-9][0-9]+))?$'
-
   '#mux-control-cells':
     enum: [ 0, 1 ]
 
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
