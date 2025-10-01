Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1248CAC5BB
	for <linux-phy@archiver.kernel.org>; Wed,  1 Oct 2025 21:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/xui/0pxh3Fa/N6O8Ar8vL5isxT4YDPMhLxvA8D1euc=; b=xXAeyDb5IrecEd
	mq5b7dTJQnZPXhNVKjVnLJDMum6HUchRjWDj7dg+GeHREW1cZG6yhYmw6mraSrw/rw5hWlX4cvARz
	t/HTO/NQ91sdpfT+sf/CJ9ohHKQ26aVQhr98Mc1YH5KBztVEBlVQvYfINFFCeCKrpSPwzWZzHsvzv
	NEQ00bbrsgfbsf31sbzM9XM9NDDnKgbGoiljUuOpmXoH3Oer2xfBxosckA6Sy8ebp1nYFta/zwGAy
	oWG2LBob6ibALpLttIdHyGEj51q3mJJXQ5A9P5qNdWnS5zZRpqeBJmIhLZHlZQ1dBE2u0kwr5UcSM
	LuNSRPExMOuNH7XX6xuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v44No-000000093PM-1mWo;
	Wed, 01 Oct 2025 21:29:08 +0000
Received: from mail-japanwestazlp170110001.outbound.protection.outlook.com ([2a01:111:f403:c407::1] helo=OS0P286CU010.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v44Nl-000000093L5-2k2R
	for linux-phy@lists.infradead.org;
	Wed, 01 Oct 2025 21:29:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ICZMNtbNneWZKHRi+qw/JZcGRt3f02YLTEQ5Y3T04bNhHfQ4FPTdkSvQEIrH34oUFnZ9Y/0tgXruY4YtoqRUzrYxdmHyO4IKcb1fJTr6ZD7drlK810/ZvaQxsdEiY4B7UkRVioY1FW4KrpgpNY0p+4lXSpgnYFGCuP4T0IW4SW9nrDao7zlZVsXRDfdZI1rCZtQrOiWOQosSGRZDsPfWLWik5UvsWk5JB/aLYpn6KNkHPC9+1wMOe/C6vl0uIaFsP4a0E0DUBPQ7pP5UiaHo+nRD2xekOkvAKrcs8OQZOf/KxkmY5rfow3D7VgjDzCS2KIU5GUgLFrCGEL6GDEXfQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ePNabClqdRSf7Do3q7+Eg9TTqLQO7WsSf52kshOuAE4=;
 b=w25PZH5Khc25Kp6EWnRt4b3Se34PbkYDuk583SwiCEMPyRSWkixQBJHBRDc9bG09BEu+d/0CTHR2NLI5gAXYrAwpqdFamGyJaFVm8Xr64eg4fTjAIrM/xAziSqSl9OpHev5SWhVTC4zJ+18jIfMVjpjXaKHTOaw4ByGTr2cbxYb2PT0r+nAhO3dikRc/ubDUJOZatc+oWIEudLvoW0d2FJvOmy/N5U7o5zQHruoH+xPQOM6YXQzsUnOZ8rBlSDIKbJVAFWQP5qIgVzWZXyeofDcxijSC3XI49PupY2aqUSCoeJLhJCgHnTUhWCcVbQUp7IGY416KsAbqVzS/s+faow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ePNabClqdRSf7Do3q7+Eg9TTqLQO7WsSf52kshOuAE4=;
 b=uBrS9xYTI8VxQgdAiiLZ4/YYSgo6seqUIEmRIlvKdA8iXr3AYAyz//wzArMlbqsonSA3ZbWJmkG36Za9pxQmWs7RuwDkTDQgSQ6T+I9aZo2TAh+J2IrjrTlI7IOqax1c7s0r3nCOVJ5tm51Pr4hiOpsSvccwAkEpkNK0GHkUb9A=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com (2603:1096:400:3e1::6)
 by TYWPR01MB8332.jpnprd01.prod.outlook.com (2603:1096:400:161::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.18; Wed, 1 Oct
 2025 21:28:49 +0000
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::63d8:fff3:8390:8d31]) by TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::63d8:fff3:8390:8d31%6]) with mapi id 15.20.9160.017; Wed, 1 Oct 2025
 21:28:49 +0000
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
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 11/18] dt-bindings: phy: renesas,usb2-phy: Document RZ/G3E SoC
Date: Wed,  1 Oct 2025 23:26:55 +0200
Message-ID: <20251001212709.579080-12-tommaso.merciai.xr@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251001212709.579080-1-tommaso.merciai.xr@bp.renesas.com>
References: <20251001212709.579080-1-tommaso.merciai.xr@bp.renesas.com>
X-ClientProxiedBy: FR0P281CA0134.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:97::18) To TYCPR01MB11947.jpnprd01.prod.outlook.com
 (2603:1096:400:3e1::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB11947:EE_|TYWPR01MB8332:EE_
X-MS-Office365-Filtering-Correlation-Id: 757eec68-e709-4855-359f-08de013182bb
X-LD-Processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|52116014|1800799024|366016|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?9ZaI/QnUWN/9lDZOGC6z6yDoNrVuQBkAnHqtDRvc3BoCSFjzZHvdKJ5m90z7?=
 =?us-ascii?Q?Q6zRtbgkNfrSAYs+2URQJ0fanscNwcZePfBugk3qiwYlSfaNaS6MfsDLiwpG?=
 =?us-ascii?Q?7vOg+zQaV2UTuwuDbbI70C3lHI7k77GAabNMh/824F30HXdZY6fEdjt9jj8C?=
 =?us-ascii?Q?5A9AWHFuB8pj11W/sRR1InGIfKbMLwzDY8uLtbLEPXAzdgwBiebog4oklnxK?=
 =?us-ascii?Q?2WQ7rwkas3SWqJLwBTEoNSANm2BpcnKdE5mmFcMY6S++2PfdJwH9StWkK3Gm?=
 =?us-ascii?Q?gek0WrcazWCMKn4j24GgqiK76tvzA/B/ykU4Er9pE70yaAuXpxFytFVAZC90?=
 =?us-ascii?Q?gPXuR1c05O4jAPvPTHU4p/zDULVXxt1GXSmbWnhOylb9rbFr99Tp2iIxwBzd?=
 =?us-ascii?Q?urhQyKqUPUFcoqVRXMdGOUbznGk+8ljvBU9Y8u8/2u0/p8RmATFbi/YhJOx2?=
 =?us-ascii?Q?kerf0LA8jJ06uUHlwXIeRr31apLhVgassqnrvd6/lYaFfoTZPFY6fmzDa0v5?=
 =?us-ascii?Q?zPBzIJHdgGDFkoHBLx08KpgjLPVKzgJShnjDHjHDuxmIwbs03kxvP9h78BkM?=
 =?us-ascii?Q?crY9PrPmV5impW5N4ABpbxXqHsZwMTOnSgCl/EZiYjJ7KHj8I7BBf7JKjx78?=
 =?us-ascii?Q?EqAznEsDJXvJ8JYRDPA3ksg0pYO8vilNhXKm53eNy8/ghS2gqWcb1IiW7CG+?=
 =?us-ascii?Q?DFhCUNAUd6Vz77tDfEK9or5KzZm3TNq2QDtrTHmdxc5jy+Lpp+ZEBmVSE0Uz?=
 =?us-ascii?Q?efgw4bhsCJ5hw1wy75f/8nYLbhkgHLmzHlJXYHsY7CPzjq7S6Jmyj6leW4YE?=
 =?us-ascii?Q?BhPxwfx1vOsBT7DeaT/LtUlxjEoFtgQRjWfUS7PsZh9uN0Pf7ERPOcXn0pA5?=
 =?us-ascii?Q?K+XNP8dUKvd5Ena41CRHXR13xcULw03HqURF8KFBaoloePgv1h5I5SaLHPBN?=
 =?us-ascii?Q?M2Jvl5cgHXm9ySel0PunHX2wTI3S/WsGYIYOp9YQJW3JvOEsN3ew2NqM1kkk?=
 =?us-ascii?Q?tl8SAr3KS8hFrORAA2P4aqyaUFae2dLtVV8aYHvy94SfcWodQgto/ayTOlHf?=
 =?us-ascii?Q?jSeHpHPmCiADaHnA0TeWleo4rHL1pWuIvIkvav90XDxOmLDqCM3++2+4+rdi?=
 =?us-ascii?Q?udZLM3Ame4jxFsdWBd8Sf8orAznqaJXZ9CaidCutzasIYlkmoXfUxcQclNPo?=
 =?us-ascii?Q?GJ+r1PlIPbUTYC8p56hZ4vmmqHGAhPeAc2eEdumP/fhFcg8lpm18jUjlr+w7?=
 =?us-ascii?Q?XylDlovhrwi/zRtQ8oXL/Jgvw8heXZJ2aqczOGqXy1GdjZpEYd97xsum1+G4?=
 =?us-ascii?Q?cSGHgK11YycDQQjdgThlmgxvMPbvYdUP7rG/1D5bjOkfC1nQsYY2s7eEz1E8?=
 =?us-ascii?Q?xkO4YKW+F3W1PZWOzUQllLlpRDne3ptiNQvnaY+pxV1G2klVgYl7+LvJrBAg?=
 =?us-ascii?Q?mw7mOwrS2MhDm/3aT0A8JIYfk4GG7/tRhUbj+oEzioQOptqlqLX197Qg8Sd7?=
 =?us-ascii?Q?QSIQfTTLovom0o6au670nzOidW8D8vqw4aLe?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB11947.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(52116014)(1800799024)(366016)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?SW5tK2DVeZJy/T1Usl3c8FirMDcXyXp1iCZZmApbNFuas6LDfeUdHN8s9jLg?=
 =?us-ascii?Q?84RuCM7+r4XBHFR4I89uIpJ0FlZQJossGco8bCQjlOouxdUmjbnhNtjmWRXz?=
 =?us-ascii?Q?Cf1mKcp7UYv2m9+xJ6APxwvAVvHbE+mhQBnPyPlbNqkueu2e/POIP+azGaHw?=
 =?us-ascii?Q?sj0F7/WQ3N4R+vjBhOSoTtN74cVlBqwFkm4UCN2zHbf7t37qYNUXki/4wfc1?=
 =?us-ascii?Q?zgenkb/jsjeBzFdhaXUBrjlDh4jCxoB+OXRB7dbFxqUo3MYRnmrCMz+RcfMy?=
 =?us-ascii?Q?97qEtT40XC1xnofUdN9b2MUfHmLkYyDgPwoPIrFsZlDH26Opcf5XgWtWcgLy?=
 =?us-ascii?Q?+1fE1+nAbPXRvi28h85hcfye1+DqU/popy8U5fCUjYHG0QGCH5H3IhWwsXZJ?=
 =?us-ascii?Q?hHFRaJ6iCKsIlXYNQOKhseIzMETe5RpBMBxekh5oNhcaPgNq9JpZslzEe+i1?=
 =?us-ascii?Q?cym0TfOy1dStDgwvU9szSX/5tWt5G/aQgpR4UeURE80oRB/w8rPBsKUd8CS4?=
 =?us-ascii?Q?D8/fNv4NdQ67rHz8t8fWQgTu0CYYXh+q0bwu493+xWYH5wEs1xp5cPd0BZmy?=
 =?us-ascii?Q?efV9yqR13d6ig5hz6sohcsFWRX++CWDiZl52zkyEZXrdDAOWsbFB41nZ0Low?=
 =?us-ascii?Q?wus+0PMsP+V+uXP015emWw9YrFqAsZkPNbInq1thIuwVlBpcxD8f3nGI3jPs?=
 =?us-ascii?Q?VjAFrXeuYegdfw22RyIAq6d+B/bA1nPEms0upOQ2f4zig6/tfpG7iJa/USAA?=
 =?us-ascii?Q?eYOitWjAC/lKdRikTaBHLUnKoCRK0BSQW4tXZzAqb8LcdMekPhUq96UVrvaD?=
 =?us-ascii?Q?vd5ZrLbCOB6Xsx1s9TBSfkUwR0FUTBgbJzKzYp0j1pCjwj1IbqaVw5Jtd0iR?=
 =?us-ascii?Q?8sAB1uj9cGf4NwOOUHnDHLDn6uC/ivvcmdYc62dxCossJ8Kf7c46RW72QXhk?=
 =?us-ascii?Q?92siIXw4ftkioo4kMpZKgQpoX0KYqAHqC3HvwuLNkyzUu4tIrkhUJDHunJny?=
 =?us-ascii?Q?p1trKmW7jtARs4tUnLdlCCTiaKLP7qLdy+6kzbsdmpuSrPeR4rdmyOx4Em3h?=
 =?us-ascii?Q?IRk+lZ55tJIWB9BsVV2kc+5z0ssmBmrRC9rbPsP7g++2s7npPyUzuOJOXb9H?=
 =?us-ascii?Q?l5dltV2zwwq7wMXUePmsOdoQ9PnUy1uIdegpz2AquTE+yP96Pz1FAgVF41Bz?=
 =?us-ascii?Q?1K4P9Iqw88wz8XoOW31HepQFitwPmc9B9tArjpr6+7Xq0II93GEspBvBKyMR?=
 =?us-ascii?Q?bLffvlEQkimYOjFxyy37qhniofko41AoCfgJtajV9q2R1zAJu8OrNrFQPhpy?=
 =?us-ascii?Q?dByUvXmhsb0zsOQd73sZl1xtxUaBlGTynCu6hkERGR4kZKKOdIiCQ2HYBX7i?=
 =?us-ascii?Q?RDpFgEaJnfm6Zpn/vMQ9RYL44LTnY6noQNW2XUxKqymALv+00ArJPFBZZSVd?=
 =?us-ascii?Q?I0Y/0Qb7qcAUhmILNIMO8L39fQXex4tzhmkp/xBpGSXC5u9ETe7lJ2aX6RLj?=
 =?us-ascii?Q?prQ18dgmfB1msVr4fY+hh5zdltdzNzeY70kgEP+4fCvt3DDZLXomF1/Z0PsL?=
 =?us-ascii?Q?Qmy3w1lfA7nD41TjrlUGvotRPkwlZ5W4uSzBwWlQOacZJEr+9cxEF/JRVndS?=
 =?us-ascii?Q?9ZBmQLQm1D1CM6N/FWGaYDM=3D?=
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 757eec68-e709-4855-359f-08de013182bb
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB11947.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2025 21:28:49.5597
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aXQonsg98bZxkpy14AN7Ov84nOx772+Kv3mYCExkvMoa+2r/YqlcYe8k4wtgQVhO3DuBgzF2j39gjVvdqEwMAlVaw5gch+g4KuEtz9CkUtdUq4gCLIksFewJ6hK/5yYa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYWPR01MB8332
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251001_142905_693953_7881DA30 
X-CRM114-Status: UNSURE (   9.97  )
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

Document USB2.0 phy bindings for RZ/G3E ("R9A09G047") SoC.

The RZ/G3E USB2.0 phy is functionally identical to the one found
on the RZ/V2H(P), so no driver changes are needed. The existing
"renesas,usb2-phy-r9a09g057" will be used as a fallback compatible for
this IP.

Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
---
 Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
index dde5269b0db2..80d80b4ce523 100644
--- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
@@ -41,7 +41,9 @@ properties:
           - const: renesas,rzg2l-usb2-phy
 
       - items:
-          - const: renesas,usb2-phy-r9a09g056 # RZ/V2N
+          - enum:
+              - renesas,usb2-phy-r9a09g047 # RZ/G3E
+              - renesas,usb2-phy-r9a09g056 # RZ/V2N
           - const: renesas,usb2-phy-r9a09g057
 
       - const: renesas,usb2-phy-r9a09g077 # RZ/T2H
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
