Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5ADC9CCFA0D
	for <linux-phy@archiver.kernel.org>; Wed,  5 Nov 2025 15:40:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w9z9YSp8FAhsXv48RV7ni1JAInvaPwGLRd+iUikxOIc=; b=nKbmShg1uQSTMh
	t6JmjF0dgw0wQbVfKBtPNQRv8/+Iie7cACI9XRdOTBRViFaoDqc+stOpwHBuumH9dEJvV41h4DKrx
	GnCrMtdpzvUUteGM6Y1qlmpu73I0Jjw7QDpgLsR2srdOlsEeOY3eDODjoGmIUrkfmHB9uDrfvStDg
	hOMjvBg6FI7jncaI57uiLdEHN3gYqMN30YLEqcgSWkuwt2CcrYVI8EyXLxeT70N91jj6C9rZUC+du
	UlXbBJX0dD0rUsWIgdGuC0kappglJNSsxuahZFQTxM8xA/3AtQ6Wj2ze56gYGDxs/SSad530FsBMF
	+JNF46ul440lehzIPm8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGfd2-0000000DxrX-0DKR;
	Wed, 05 Nov 2025 15:40:56 +0000
Received: from mail-japaneastazon11011041.outbound.protection.outlook.com ([52.101.125.41] helo=TYVP286CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGfcz-0000000Dxqf-1AEM
	for linux-phy@lists.infradead.org;
	Wed, 05 Nov 2025 15:40:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MFOHykTgVQbqF0NCzeLBjHwxKKqGmEL5ljoe1RhnPBpcH6b4BG2KCWc+UWlS1GYb6p+Jq+UNEQwH1NTDwNXLfumk8fZDN68x9cLEMIh07WeNXCf4/Hq80cd4xIRU3qn0APh6PkE2HEkyjtqiBTjk3ZGshDAQ1TnpVJUR/v3t/Y7SSTM8pYxc8/pOgobjZarv2NhUd+mGF++pdZllfXk2PliTan7+/Hn/oHsAc0mTWJ1b1SQHWIFTX6AzLRuUDE7hgl4Gsz+/rctwC3kpTlUexqvybGHwbyQfTCcI97N1/x75y3gFq67JGH74T1fQqoN48RAwShaVt9G3awtn8476tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GR9XfJr2qvPCb/6lMfCt4nOTVfTpryAQw/QQZF6SoRE=;
 b=A9VZo84g7NQJ+YswJcaALONbgY8QYGxjZ1btBu/9smgNVNFBT1I7HeROkebwFNVTgD0HcAN4+s9eGe4nC9HCWOaFxmECRZ7rffa4m6opG7JORiKJU01GoX1V1xdFe9UEZfyYfVC9x4jC9t2znDWtYbIkvF8CDdc+X9FOf4W9mazulas5y4+Buq1MVpG+R27az/56Xq3ET0wHyumADhhdZFZ80/grXT/TIvlMYMDUfrqAPuSFag9rXx6x/TJzAU3JEKuegz+HU/lu59icvVF836EqrSmStf+4aQ9pC75pMImJlDDmLnPpAg+QV0GzqES5VoOXlPjs8/G526zQOoGO7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GR9XfJr2qvPCb/6lMfCt4nOTVfTpryAQw/QQZF6SoRE=;
 b=kZcolRTZcJvDT8GcLO9zoKIjJySc9HocOR2n765S9OnEG5GhzAd3alxlL5ngov1Wtt5qlMdgnW4NTH8fzpLCvDtmL5dDusH2RakpGJL6jOQ4L/pbJdpBFMKP1GQtBzOonnrQ6Wl6waij5rpauW5v7CBvbyy2kIrmm1NEvxUtVn0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com (2603:1096:400:3e1::6)
 by OSZPR01MB9329.jpnprd01.prod.outlook.com (2603:1096:604:1d7::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.8; Wed, 5 Nov
 2025 15:40:50 +0000
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::63d8:fff3:8390:8d31]) by TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::63d8:fff3:8390:8d31%6]) with mapi id 15.20.9298.010; Wed, 5 Nov 2025
 15:40:50 +0000
From: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
To: tomm.merciai@gmail.com
Cc: linux-renesas-soc@vger.kernel.org,
	biju.das.jz@bp.renesas.com,
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Peter Rosin <peda@axentia.se>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 07/21] dt-bindings: phy: renesas,usb2-phy: Document USB VBUS regulator
Date: Wed,  5 Nov 2025 16:39:03 +0100
Message-ID: <7fa70815df0e96132acf39ec6b12fe6b421d7948.1762354366.git.tommaso.merciai.xr@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1762354366.git.tommaso.merciai.xr@bp.renesas.com>
References: <cover.1762354366.git.tommaso.merciai.xr@bp.renesas.com>
X-ClientProxiedBy: FRYP281CA0002.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10::12)
 To TYCPR01MB11947.jpnprd01.prod.outlook.com (2603:1096:400:3e1::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB11947:EE_|OSZPR01MB9329:EE_
X-MS-Office365-Filtering-Correlation-Id: a7d123c6-054f-4ae7-3f87-08de1c81b2ac
X-LD-Processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|52116014|376014|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?fuOgrBC+OALzJQej+b7SPpnV1SONCBzgCbZHA5i4jw6aZt5i4MPL3n9YdBsQ?=
 =?us-ascii?Q?5H1UL5PYSdddBG4wnyreu2yrBuQ4m+3hUkwdRd/LdW625Eu+l5RltYDYLH2p?=
 =?us-ascii?Q?AtpgLppUfthXJqLwjOy+o+Vfgd8YSQf3SiU92+KZjeqGs2ktjIP8hJ0oe1WR?=
 =?us-ascii?Q?V5EWMtLRu1T/oWH7LIBb0j4uepdmkUUiwvVywwVr3urN/TMfH9zkUcQaZk++?=
 =?us-ascii?Q?aTdPpkMvk84scEKyzQ1rqmjYrv6NqCbPxBgmj07uAS9EqrRZOP63MGgnYn7o?=
 =?us-ascii?Q?q04IA/4/XtRjSEWQlcM5g545PQNqlfTKOeU0UStqzMhGhtkVtSjODvAekOn6?=
 =?us-ascii?Q?o6m3q66FVGqd4l8XP3CCG5VrMLqCbeYKIQ9Y0GFUhFy8AMPXnJwEP4tram5x?=
 =?us-ascii?Q?mGjMOqzsJ8GIdTJA7aBuXMsDHB1/Hj3J6wn99A8Gf0pKT5N3QNCV9cznG0cK?=
 =?us-ascii?Q?biXq8VdHV0Evco5koQJv1auhzV8lPLtGVVp1AGKqPuZ02MDIfuD/kuTR5LWq?=
 =?us-ascii?Q?HJ26XP6awwzkAuKbW7gLg023pGnJU8oQMCRznOz6pqawSZBvlSgwd/INSxOF?=
 =?us-ascii?Q?1nMltGJP7Km2suRAQgv0Pdn2C1fPW+4fNSx4UJGLvBfIYph+SfZeOPreQRiS?=
 =?us-ascii?Q?8nMzoWFNbULsXgVq3MyzAzJU3HHhSXS0+Hj1KA/MNHmH9IAhqwKQq0+FTSV/?=
 =?us-ascii?Q?8RByIwnT+If0m+21lf4S9yvk6Bla2jbmwfyq8JuI3HsF4M3FhEAZ692rz1IQ?=
 =?us-ascii?Q?mBrOztDHN/RsfH2TqruQUMIAD/xYFeThb/b31a1sngXBw6F8aSvIRpixEF2z?=
 =?us-ascii?Q?3xqKOSdc522q7Bdc4WTbspG2ATMXxBYeLhXqCbWdqHCeXRMMVHST9TDseaxx?=
 =?us-ascii?Q?GLwCFHbx7ZxqdMc/a82IRUm+s9b8DuRXPdNRxnXeF0b52RYv+6gjotWZgBUL?=
 =?us-ascii?Q?T8L2E2sfmreuRz2Id16OwgGE0DktWSCnAQqlPE9uuh9faNcvtrKz7IpEBEpC?=
 =?us-ascii?Q?lUYVXwuYeuXNw+CuDGOzUe/97N0uY1tNbNs3Ursiv+8c2ZXPtY/dvp+bFsDn?=
 =?us-ascii?Q?KgoVrIqcuMdsMhNVVaH+DtHCWvNufSZCrMeaYzWAn0tvfEj/XpZvgPQ8z1pX?=
 =?us-ascii?Q?DIo3yVvQ2w5ZbvkFXXVWm7IYHIc4ynicOcZf7lkoH2jE19U4E1ykNdzNTjun?=
 =?us-ascii?Q?WoDNJF75iSsLCOBt0TekPeahbhfuhrUeFvhCOGsFFAgpxkrcEIErnmE/fOxN?=
 =?us-ascii?Q?E5RwrhT/ASuhV44g3JAt5cKcsVCGpmjnXTozhfBWeKF1XQQ2Z/GJlwQEBM6Y?=
 =?us-ascii?Q?vcvpqmLqpW2WbGeJCdL94ziYzv04mJ8znOuAydt3lO3lq0k/7rQ42ZnqdUOQ?=
 =?us-ascii?Q?XlzWyIssnq8sLSRBo2ObHKR1ziEiXrsO5zIbt+VApLOlQ0BVCFNJteR0fMGS?=
 =?us-ascii?Q?f1Fd6DBMIQRwr2t2o2D0WNMSSSZ+vHbaIrkd/iVDMB+s0JkpLctF0K/trFIk?=
 =?us-ascii?Q?ILnIeUSIoDIHprn57BlBDg7ui3czco/w0HzU?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB11947.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(52116014)(376014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?uIBxdmU8ENVIsxsvMKcpWnmkpupXk+Mf9OkAZLOKqZWJzH/McokRXZDsdRr5?=
 =?us-ascii?Q?+5KqIf0cDk+OUZap0gwsPUfabCLQNJDKJ6hj4LenwlolB0ghihwl2Bpwo9Tr?=
 =?us-ascii?Q?BY2t9HZs875Usx9VtRFCHh4y3vzRlgenICTQARv9X/E+6Vgyulsgc8Rur1g9?=
 =?us-ascii?Q?qYB5SbqDOsS6DMxLQCt6etI6LFahYnxhBwLiJ+gf0XTrTTzrkLVtxQRxqriS?=
 =?us-ascii?Q?As7ZY/Nfh6bpghrZR3M2/6rz/A4T86VAMXeO1DVkfXGxgSMcVSTzhusaWrPY?=
 =?us-ascii?Q?q/K6eWtxjWbhd8Ov1JWh3o4nMEqLqZ5096YWeihRmLlCuAE9186w2ySgQ1Q/?=
 =?us-ascii?Q?OLnxG437UAvwJGfw4ynGacKQ2W9b3Xwvpx6oLnMDrjzfrf3xLXztAHXqdavB?=
 =?us-ascii?Q?Ymp/X+iRKb7YPIC2kGwJQNP4Ej6fsKz+zPgVttpomaheOeK1/SxxrbIjSjhC?=
 =?us-ascii?Q?8Oc3MD2kYM7CSqC7Bc0Msf3VDY3Nu9o1Sacd/Q6QpuO1w3tSpDGuPf2zuP5R?=
 =?us-ascii?Q?BWee14R3GWSEvRKji5PBleok51maqidqu5MOcYdO/TSyQjfoOH/AZXM2Tkbl?=
 =?us-ascii?Q?9Z8+qc3r5i68693S+wrhY79QO106/tWpC5qDWg6HjOsRz/WkiR0mRdh6PF5R?=
 =?us-ascii?Q?b5HaYRM6I3Arp9Swe6DYzrUUaWvEt1E+ZZgASJ8lcBO2i7zZqNo2ugM3mVey?=
 =?us-ascii?Q?7a43D7j/v+hSkY2S8j7sG9SGIy0dlDJ3tpTlMVSyINncHX5Dhzkbp9ncMt8R?=
 =?us-ascii?Q?i3Pb2s2ULjIgdGt2khT/YSXOaXCTeQCfTJ0jkO4r6SfFkzW6JLuGQY+rQWVF?=
 =?us-ascii?Q?mL/TTbwuga7lMjXXg2umTbh1qMfAq8pAA3NJkwYCcZwOKTesDLaa+vsiQ/4F?=
 =?us-ascii?Q?I+HKukyPE0koQJAPurouDBEkb1Yl0js56Ns1YtTAqp5XuDhbC4vKgM3IPuBs?=
 =?us-ascii?Q?U4bO9nj0Kbn/hyvJFJHBrYblI+WT4e1a7kKlLEkpNhfNiY4juewMtH2ExCYx?=
 =?us-ascii?Q?+b2isxjaD11KyC1sopKRKqhM+FQaXClmHoo6j+ZMZMpAJ0vQrKaIQAWuYZti?=
 =?us-ascii?Q?a6bsO31dyhhVUagUGS4zVEVQhFtQksOE4C3Dj6LtMd+NVAb79pc8VX9D2jGE?=
 =?us-ascii?Q?jo6QEva48Kb+28Y2shTJ3zPj9HFp60jDSk1Lfk/CgrdZSWSEas7cLIJyd+eY?=
 =?us-ascii?Q?Sybz7wkGhD4NGU+hWOhf5B21j/qXh2RsUQlnShKRcmCuVnV85V8PSz407BVL?=
 =?us-ascii?Q?CLh6Y04D+XFyxd2GOd19vg3AN68IOzhkbfF+CqozgUrNM6NpHmjGaXdC7xTN?=
 =?us-ascii?Q?hkQn1x/JoPSeN5+l4WcMv6qmFcybfIYqvnw9U7NzH0yaDLTLYlB6+cT2Lelo?=
 =?us-ascii?Q?gULu5XDkgNl8hIXmuMEtx+Aq3OGtcqVEoxkTAhak5QJmKuJWnGQCAMfujuP6?=
 =?us-ascii?Q?Kbf8g+B31SpXSm6aaOVLXvsDooobdrVpV4JDFV+4fpmf4aFIOHeP/Kbjj69n?=
 =?us-ascii?Q?dPMCkgqCnd6YdTOtX8uPGKx4scA83CSObWm1xyLo7HDiXnsLq8nCYkBrbnHn?=
 =?us-ascii?Q?ljwC+YoLBYjsyB6kh5eD+z5MMw07blIbChF1zgqC8QNJuoielQp7dMMNede7?=
 =?us-ascii?Q?ldoUmjlYkJQ7jComDMgW5fs=3D?=
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7d123c6-054f-4ae7-3f87-08de1c81b2ac
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB11947.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 15:40:50.8148
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: psXQtB13aVus6ePy/VzyHPCJL1lc4CpaZFivLmCMABKW4FWSL/TFa3dW+WLhouujEy6FmWLEPe2oXrSFRlgowFUo89bJjC0Z6cd9+UloIbeUEWqf0DrjYq5h8AIYMhO2
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSZPR01MB9329
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_074053_319531_07F4AA39 
X-CRM114-Status: UNSURE (   8.22  )
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

Document the 'vbus-regulator' child node in the Renesas USB2 PHY binding
to describe the internal USB VBUS regulator.

Require this regulator node on OTG channels to accurately represent
hardware dependencies in the device tree.

Documenting this regulator allows device trees to model the VBUS power
requirements of these SoCs properly.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
---
v1->v2:
 - Collected CDooley tag

 Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
index 2bbec8702a1e..2cd0efa75f81 100644
--- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
@@ -89,6 +89,12 @@ properties:
       Phandle to a regulator that provides power to the VBUS. This regulator
       will be managed during the PHY power on/off sequence.
 
+  vbus-regulator:
+    $ref: /schemas/regulator/regulator.yaml#
+    description: USB VBUS internal regulator
+    type: object
+    unevaluatedProperties: false
+
   renesas,no-otg-pins:
     $ref: /schemas/types.yaml#/definitions/flag
     description: |
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
