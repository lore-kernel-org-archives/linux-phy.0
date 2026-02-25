Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B13F9FCEE8B
	for <linux-phy@archiver.kernel.org>; Wed, 25 Feb 2026 11:34:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:In-Reply-To:
	References:Message-Id:Subject:Date:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=B8V1Cq20fnHjDwyAYTVp0NlV4YRf3TAkEDTlslOqaEc=; b=kSfdDRaWLg95yGRy2UL1Mm+xva
	tDlPevDdou38uDXq2S7uxeEDJxZ76+I52ZGYy4D9dRF6RPC5vzHpp36uXuWPzf+nqH67pJ/1nzEsf
	XqLalv+OotP0Pgn217qER+MOAAceHoweqtgzUkxzEPs/VVV3gFHBs5wq33j/MmvP8F9J2EPWbkT+A
	07s1KXYh0251fGOgh+03GvRu3orTLX8VoHxZWIEy1HX80Ue3k9k26CvPLV9Cj9IVsjDCU5heT3Xh6
	5AMbY4CDJ5zF6edfF1lkvDXxYdprwmphZ7MGq9bVKelOOWNyafBj10CTFnucm212Oq0cFYoc3+DKe
	zdanWsiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvDAK-00000003vI2-1p93;
	Wed, 25 Feb 2026 11:34:52 +0000
Received: from mail-swedencentralazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c202::7] helo=GVXPR05CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvDAH-00000003vGk-36WD
	for linux-phy@lists.infradead.org;
	Wed, 25 Feb 2026 11:34:50 +0000
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=eHIi6RXNThwPMvIEgseHfxhfEA6jVccWnOF77LBgu3ziZGaMjhq4dwa9cSgj89Nk8E5IQkoHGRgF3SZBBX72AD5c9FmbYdU7FY6WfxcQQKsb2VjzrzgI9Hgj6KNUQKjApMV7Aazs+VjAHhKhDdUD5DrLqB7cJOV4Q5FnF1UgwUXDWKb3yp/GPF/Lh9t+6XvcH6da+/1sNYPeB35JVoLU3P71smY0zIIgKk1T/Xwi2fZ6JSpid4SZJDseKk2VcfXotU6vX3uW7lS8oiBHJboJwXxqIYJr38PTwSqDB+wV7tvgdG3kITjyLMWGR7XUzS0AAOYgMbWAgW0fUnsi1qJNDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zKF7I9zOLyZw1miNJ21IT8te9ajBviLlwLCKyU3RJiw=;
 b=drIVyAudhkPl9tnz3TgDUbCPlpHup2psgzyXFOPAaOgv9svdNvB7HmfGMEogeMD/VwVv9C4GNs8obcMItnbWvZexnEJoIcX8bJH8qhLek4Bvx0pdLtZYbUq9ksEE+jGDSYuYY8JAAI7e42NgoNcluiDyJW8wijrkwbwWw7yA5ZmtB9MEAAZj4IfOJDRWsCQr8Fkwm9/e7UqVXd1HpuRnCyLwXsZV8twoyQVEwePBCm+4Z9kF2RQMWQYpZxT20yaHQwTjh4Hvyhi4V+6HxDo2f41oD4Q0FH+KUeltdrJdyMRcl4O6vywfMAO+sUy+0vAgbZIy2PqLSS7kUEgLhTMXSQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=softfail (sender ip
 is 52.17.62.50) smtp.rcpttodomain=atomide.com smtp.mailfrom=solid-run.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=solid-run.com;
 dkim=pass (signature was verified) header.d=solidrn.onmicrosoft.com; arc=pass
 (0 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=solid-run.com]
 dkim=[1,1,header.d=solid-run.com] dmarc=[1,1,header.from=solid-run.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zKF7I9zOLyZw1miNJ21IT8te9ajBviLlwLCKyU3RJiw=;
 b=MDGvtGHI5wI3FI5XcKPGhR9afzrdAstpANCjawjA67u1Z9/XcmAvlXNdAUQ80RuWzXGp54OGFbsWZa/sz+eZXf26QBBZ2Sy0OoUnPJCCAvDkPFPoiTrt1Dr4GieZV6G7Fm1X3gjNXZ68bbmCNkFQJIpvy08qFaWbwVLZVwgDC5I=
Received: from DU2P250CA0010.EURP250.PROD.OUTLOOK.COM (2603:10a6:10:231::15)
 by DU4PR04MB11337.eurprd04.prod.outlook.com (2603:10a6:10:5ee::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Wed, 25 Feb
 2026 11:34:45 +0000
Received: from DU2PEPF00028CFF.eurprd03.prod.outlook.com
 (2603:10a6:10:231:cafe::57) by DU2P250CA0010.outlook.office365.com
 (2603:10a6:10:231::15) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.24 via Frontend Transport; Wed,
 25 Feb 2026 11:34:39 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 52.17.62.50)
 smtp.mailfrom=solid-run.com; dkim=pass (signature was verified)
 header.d=solidrn.onmicrosoft.com;dmarc=fail action=none
 header.from=solid-run.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 solid-run.com discourages use of 52.17.62.50 as permitted sender)
Received: from eu-dlp.cloud-sec-av.com (52.17.62.50) by
 DU2PEPF00028CFF.mail.protection.outlook.com (10.167.242.183) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.12
 via Frontend Transport; Wed, 25 Feb 2026 11:34:44 +0000
Received: from emails-8480253-12-mt-prod-cp-eu-2.checkpointcloudsec.com (ip-10-20-5-66.eu-west-1.compute.internal [10.20.5.66])
	by mta-outgoing-dlp-467-mt-prod-cp-eu-2.checkpointcloudsec.com (Postfix) with ESMTPS id A4E7D80048;
	Wed, 25 Feb 2026 11:34:44 +0000 (UTC)
X-Mailbox-Line: From b'josua@solid-run.com' Wed Feb 25 11:34:39 2026
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Wpbb6Z+FQJrUhk48Ieot/8aOk5rBaWpzUd3q31JW1oHZgnED11pKJoL6HXA8J70J/Cs8TyIaaURo4BML2MiddYp4IipQ5bi1ZuE6xf37OqE2Hf8KHlqLn4ani2aFFnQ5Gq9i72YR2BsykzLJjWn8LomlF8WF6AlbrnjhTPa7GVmdOyvTjoxTTgBb+I6aTjTo1yeiGZ++e1sS50Y6STqxr3EcK9HDPzRhHLlJaNzjeSdlx93af/2g9VyDOV9yVL41HvwmHIQpSUaD53MTKBAn5TKgltLZdxeeAnPZBq42Vi1EcyPCYi0scfeJ950Eky7XXbZPf71m2ybq1k5kbVtcpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zKF7I9zOLyZw1miNJ21IT8te9ajBviLlwLCKyU3RJiw=;
 b=CTDv9l4VWma1chtkY+TRRv9VVOZQZhlI+20gavJ3S6AewszJtqebRsSdUuvrjKAFSv7YiHYMkRni5ndUUjN3K+hiJ0jntntyPHgSwsgo7BU82aUozMjCd+WzCDE+MYrg4WK6SRR51URayoiqSkt8scrI3+droq5oL6FHZo0qduvjVgWJtxDbM73rN0fV1oq4axDDyrqKxzKyQ7c3IrdZQ2yHfCTVQWlmV9n+Gwp4MU2kP0233IYHl9aMxSp6NHW/Xzi4nWXIfjSaBAzQN4lm9Hvkq6LSfd2aii0VuVTxCe61i6mwMpFtZodswXH3f7cPLUNXVNV8UVXe5LQfgEiGNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zKF7I9zOLyZw1miNJ21IT8te9ajBviLlwLCKyU3RJiw=;
 b=MDGvtGHI5wI3FI5XcKPGhR9afzrdAstpANCjawjA67u1Z9/XcmAvlXNdAUQ80RuWzXGp54OGFbsWZa/sz+eZXf26QBBZ2Sy0OoUnPJCCAvDkPFPoiTrt1Dr4GieZV6G7Fm1X3gjNXZ68bbmCNkFQJIpvy08qFaWbwVLZVwgDC5I=
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=solid-run.com;
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com (2603:10a6:102:21f::22)
 by AM8PR04MB7267.eurprd04.prod.outlook.com (2603:10a6:20b:1df::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Wed, 25 Feb
 2026 11:34:33 +0000
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::d782:fbb2:be9a:43f1]) by PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::d782:fbb2:be9a:43f1%3]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 11:34:33 +0000
From: Josua Mayer <josua@solid-run.com>
Date: Wed, 25 Feb 2026 13:34:16 +0200
Subject: [PATCH v10 2/9] phy: renesas: rcar-gen3-usb2: rename local mux
 helper to avoid conflict
Message-Id: <20260225-rz-sdio-mux-v10-2-1ee44f2ea112@solid-run.com>
References: <20260225-rz-sdio-mux-v10-0-1ee44f2ea112@solid-run.com>
In-Reply-To: <20260225-rz-sdio-mux-v10-0-1ee44f2ea112@solid-run.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>, 
 Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Peter Rosin <peda@axentia.se>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 Janusz Krzysztofik <jmkrzyszt@gmail.com>, Vignesh R <vigneshr@ti.com>, 
 Andi Shyti <andi.shyti@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, 
 Wolfram Sang <wsa+renesas@sang-engineering.com>, 
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: Yazan Shhady <yazan.shhady@solid-run.com>, 
 Jon Nettleton <jon@solid-run.com>, Vladimir Oltean <olteanv@gmail.com>, 
 Mikhail Anikin <mikhail.anikin@solid-run.com>, linux-can@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org, 
 linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, Josua Mayer <josua@solid-run.com>
X-Mailer: b4 0.14.3
X-ClientProxiedBy: TL0P290CA0012.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::12) To PAXPR04MB8749.eurprd04.prod.outlook.com
 (2603:10a6:102:21f::22)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: PAXPR04MB8749:EE_|AM8PR04MB7267:EE_|DU2PEPF00028CFF:EE_|DU4PR04MB11337:EE_
X-MS-Office365-Filtering-Correlation-Id: c7819376-b354-4220-b252-08de7461dfc2
X-CLOUD-SEC-AV-Info: solidrun,office365_emails,sent,inline
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230040|52116014|376014|7416014|366016|1800799024|38350700014|921020;
X-Microsoft-Antispam-Message-Info-Original: B2CgMxJYmaWd6r6TG2RPDHGEUK2mqbu0w4UuYHvx3NLsQZ+kg0HhIOcTG+u0axXtvYB/Qyyt0E8nB7GgbIVFhs1/rZiPB2QsMpqJKMkV2ZupWXx20Y1oR7TgI6rYsVp88c6Oqeqha1YoXLeUjPwbbC2y/ybCpOxBWshYj0doUGnE/9+y18XkgK+90+t0gWHMXlWn4HiiGKeYHhSpcyvSPZDprU8b3lRWtFXiowMj/vOTJSOCoOAXoZeSqkXg4H2HomljamMdMB9x04GabksmhParS9Uao6o3tckSpcxELqG5oIiCldU8QT1x7v1L0N6IUsM1ZwLH1peYZx5EWBqt8pIM36fyfp8og38hy0O/uYi3Ed5BS7l1jU2jnzi4XH5n1xEBEnbwNqzOV2mRGc+q4ugDoXQjBDbnXc8Ls6sWtfHQA9a55oR4Ivzv/VsFK3SlwBLHdaW02ECbTnAIrbrIflfZ9ZD5eYVOE/uZ3Cu3kHZxY9VudxOLQYNjH63swwtXM2+biNp05b2dGXkSSvRNbxWQ05rQLN9qQt9DLJqZMMoWOH+DFja1p4XyIC2GwiD4leaeFPZlxvnfr7XH8IQns6rH+ZvffrHv+CeVDFSWdLNRkxa/CzDWG3XbhMx6C0AS/NWC4qVjBypPqOmEGroU3IogPJBsMiWrGe2n6/nQ9+a3YTab8rlKw/RWWHGFvAWXrUlPqaxjsPJmWwA2FYBKgbVI9riVip0cKhF6qaOqDYyta++cUxhe3zl55jLClb+6DJKLusaW41/PyPwDd9MSBILM2ohvUKHiShvi8Um18MQeyjDrRjKNx29feZfx9qv/
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8749.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(52116014)(376014)(7416014)(366016)(1800799024)(38350700014)(921020);DIR:OUT;SFP:1102;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR04MB7267
X-CLOUD-SEC-AV-INT-Relay: sent<mta-outgoing-dlp-mt-prod-cp-eu-2.checkpointcloudsec.com>
X-CLOUD-SEC-AV-UUID: 3ce681fb309a46f090b3f8f3cf703569:solidrun,office365_emails,sent,inline:c1cd8ff72a3c708341fd9de96626bab6
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DU2PEPF00028CFF.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 16e06aef-79c2-4d64-deae-08de7461d905
X-Microsoft-Antispam: BCL:0;ARA:13230040|36860700013|35042699022|14060799003|82310400026|7416014|376014|1800799024|921020;
X-Microsoft-Antispam-Message-Info: tQsJgTxOO/BQ6jgiUAVe22lfTOilyKKqA6tkxtoX1gO9Kp+unKN547eyiS9cmA16TCuSxZIWL4lRJpLgK315Y/hd3NfUzWp8eAZzgHChHwXMzktYJfonacabA130CJnc5/strtsJhf7TPDA0d5WAA6qsWbyyJk+Ea5XvdK6slDulcLe81khc0RoFIDVxbuemeV9/51yf4d3da/4uxhPshUIG5zv1nwqys9eeG584lUFv2uAQ86R9KrwNhdlIJl/n1hZgSxb/B4ZEFO7M1hRh7Kt34hD5FkESDCfjcbn/cjRAAmr45iFgaHv/CgTiLNo7Z9bP4V9HuGkWc80FTgb5xf6o7qMyDVLyb95THytEIPM2S4Utrwxyn2nIHE7OKvDgdK6jHVjkHLJIkCvWwVU8+JeoQO1K86lh/hFqF/46zj4s7LkuF3ZiJAHP76K+oEHW9d0wrCBtqmb2G9Y3OAOVyGIjokghyT0BS5F6R87muLGfYMXKNA0WGXenHgASpVUEXjYafQxm3vTrzVicT3LsrpISxdL3EFzna7lfdtK0+olHMXeXqxg3D2Ki7B1Nalr58wQTHVbYDQePPjynfKw6/cat2jI1PpYlOgcsFQJQPmqp2844uHH3XVLjiJhRanGwoC03sNhsGE24HvAO4hh7AvEuFhBte3vDl8fF9TYtiPtVEpM/qjqjgGOWz01sQ2Swngfk9d1VrCkroM5sEEDepnAAdtYs6r7CYLYimaUwQl+kkx5GoNchZxq5PuCmav+D9KpC5r3gwI2x7YqMClESp1FLAxLGd6ezg8acH0cmIOu/UaPDQqMXhLg9rVHJmnejeRVBhDAvGUEOCJn8QjjPP5Qk1cvCKdTDEG8zoYybVso=
X-Forefront-Antispam-Report: CIP:52.17.62.50;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:eu-dlp.cloud-sec-av.com;PTR:eu-dlp.cloud-sec-av.com;CAT:NONE;SFS:(13230040)(36860700013)(35042699022)(14060799003)(82310400026)(7416014)(376014)(1800799024)(921020);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 6l++/T3GD/Y0d9IE1ViIrifIh9RNOW2Ev4HKr8mzJ6XT3n0ILHr1aUY0HJDFdQ6IaDXSdCLlIiecW08ZnLnYSpngAcTgEOEA63nrk9O+ntL3YxiOU8eHkdhCMsbfeHNiCdIs5/TotdD/LYbt1hMQQL+uEBCRTgtGKIcGj53hIRP03fDIy/lYEL7jk1TanTnXrAQj8bf2MaUN2tga/hyvgnmc/78BwJMYSAlmCoM9a93iXIFS7HKoxkFu0J8Ydtu9zD4oGq0HAOCok3Relc7qcu6nc+cveFsaHTNXnKmnaleTkzD7rs01YAxBKhUy631bo4BihxBNvrS3ZZdH+WjKrz11rgc/9SjdNl0TIcNkgk3cUl5MlF3hqNdR+cEIvwN8vdk0V2v2XrAtwj2TWK9WXRMumidkJjxWaO15yIGvsEyj9dj5eE8IGVq0quzL6fxC
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 11:34:44.7488
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c7819376-b354-4220-b252-08de7461dfc2
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a4a8aaf3-fd27-4e27-add2-604707ce5b82;Ip=[52.17.62.50];Helo=[eu-dlp.cloud-sec-av.com]
X-MS-Exchange-CrossTenant-AuthSource: DU2PEPF00028CFF.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU4PR04MB11337
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_033449_785256_5B787DE0 
X-CRM114-Status: GOOD (  10.47  )
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

Rename the temporary devm_mux_state_get_optional function to avoid
conflict with upcoming implementation in multiplexer subsystem.

Signed-off-by: Josua Mayer <josua@solid-run.com>
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index cfc2a8d9028d..1155b111420a 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -941,7 +941,7 @@ static int rcar_gen3_phy_usb2_vbus_regulator_register(struct rcar_gen3_chan *cha
 
 /* Temporary wrapper until the multiplexer subsystem supports optional muxes */
 static inline struct mux_state *
-devm_mux_state_get_optional(struct device *dev, const char *mux_name)
+rcar_gen3_phy_mux_state_get_optional(struct device *dev, const char *mux_name)
 {
 	if (!of_property_present(dev->of_node, "mux-states"))
 		return NULL;
@@ -1036,7 +1036,7 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 		phy_set_drvdata(channel->rphys[i].phy, &channel->rphys[i]);
 	}
 
-	mux_state = devm_mux_state_get_optional(dev, NULL);
+	mux_state = rcar_gen3_phy_mux_state_get_optional(dev, NULL);
 	if (IS_ERR(mux_state))
 		return PTR_ERR(mux_state);
 	if (mux_state) {

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
