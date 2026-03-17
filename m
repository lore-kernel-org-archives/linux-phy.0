Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BB32FEDA0D
	for <linux-phy@archiver.kernel.org>; Tue, 17 Mar 2026 19:52:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AdT4Lan8tg83fh4fZPlkb3RkcNA8FvByhJUE4iv1W/M=; b=Q7a3YM4CAZ5sGY
	D4cxolfQu6KX7bpknDlr18XJVujZMYMy2cREzy0NI8M2rpVmwHyZ7vRcOlYmsPkh3vPmyvkPkXTvs
	T7BUO9Bia0RZ2fMa+h7g0cH0aTEbUy9LWSBGCBGPQIFjAdbxLdlLPx9btyEJFnbH39ZZtVwlKBL16
	tauvUOD8hO9Zcj6Pk6XroxGCR4IdNHHFyGS7YZ1Ggv+qaUGVCs4DQhTIysHcJUJgd6XM3eQZdkOBE
	Iz5Safagk6ZvAPpyJj5mFCtVvqSN/gnCO+x25gQTO9zCfEyxm60mcR/7dHbGhhQr3cT4bdCIUDp78
	MTxvtHXIEyurNyjVJsNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2aSi-000000079NO-2zg6;
	Tue, 17 Mar 2026 19:52:20 +0000
Received: from mail-northcentralusazon11022136.outbound.protection.outlook.com ([40.107.200.136] helo=CH5PR02CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2aSg-000000079Lc-17j5;
	Tue, 17 Mar 2026 19:52:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OH+kc95gGktTWK1kFO27bAw3YPQjJubdiQ8xnNuWzzmvrP0OBH2WdQRv/zwTEIk2GWgRXxnQziF6iMn7yEEbEE3SF5DPHhfHfw1eiVjy7DtMn55/XO4W2Jpvnr/Upt4qnM9uW0uZGPFcUQ4SBJvpq+vSUVEKoFDqeUDGCGsjVzUqMEZQE82ldP9x+06rP2cLizfptvFb9GrLbsZP5W5Tn5QPiCzITaznSLfj2zatmPgtEL6VjcSOnc0W+2G3zst2obaELhlcBdSop+cx/NPzvIYy6PHZf+rksTrIM/0isedcL1XW72Fkg4jFRwDWus2aTrGTqYqMJTihR4a7SCZoAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IYcdBHIqFgEvILxmZRBX4ED3Al8Q+GCzZear3xHG+wc=;
 b=HwjqrAbEQOSb1vMbhlg5CDTi0Pq1EFTNOUpMH4gsyKEo1KsVwGK0ih2+zZgrBCdl/fK6LmjOwwXRBf/vZQ1wfdSqQW1+MxeMpjMDEW/xvs6DlH3Qi1G5TUAZymZT1ULTnH5FzwjQjYYVyo46i+I9z9vnIaVGesOJ5KLIintXvDTDUKhmEnyBahTJsacdbvsh5PZqQBPzQgWUejFVPphY0WRyaKwZOfbXHoKyvYbU3BpTUk08RTNOwCBwxXc+ZG993OsbX0jMZPM4gOe2HtSINGGkFjwL1QWmUE6/Eqrjj8m7LWntvN3LMMoHi8Y9jpoNGF838Lf0pOu2jOl9YJIZcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 50.233.182.194) smtp.rcpttodomain=axiado.com smtp.mailfrom=axiado.com;
 dmarc=none action=none header.from=axiado.com; dkim=none (message not
 signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axiado.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IYcdBHIqFgEvILxmZRBX4ED3Al8Q+GCzZear3xHG+wc=;
 b=s//xkQB8fU2kIKADvcGrxuwxv+BCPlGNNTLxL3oRNsv+PEIFDIsOSpuC8eYlctmLJB0/WI/j960McP6c7di5TvPBQOPo4ujGDb2RsS3oi15prxOn4OmfygLns4tEfaG4Y6kOoC10+o1XjCTndC6v1WgrzXU1XB/qJQ76XlYfiud5f/aQ5Jci1pywiQDejhHnQbUqdLAU2IxgeDT2S7SI0EJwm3d1ajKlr0Qn6PjRI5ZqhZDbWh0+EnnneVoSTbxSm9pCV1QiIYpdIp9vfaVzAxycx+Hi/gk3pQjqO4+BYDM4V790sg5bP6NUWtuDx88MzFdy5kPQ8GYVdCKxJFt38g==
Received: from SJ0PR05CA0045.namprd05.prod.outlook.com (2603:10b6:a03:33f::20)
 by MN2PR18MB3591.namprd18.prod.outlook.com (2603:10b6:208:264::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.25; Tue, 17 Mar
 2026 19:52:12 +0000
Received: from SJ1PEPF00001CDD.namprd05.prod.outlook.com
 (2603:10b6:a03:33f:cafe::a8) by SJ0PR05CA0045.outlook.office365.com
 (2603:10b6:a03:33f::20) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9723.19 via Frontend Transport; Tue,
 17 Mar 2026 19:52:08 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 50.233.182.194)
 smtp.mailfrom=axiado.com; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axiado.com;
Received-SPF: Fail (protection.outlook.com: domain of axiado.com does not
 designate 50.233.182.194 as permitted sender)
 receiver=protection.outlook.com; client-ip=50.233.182.194;
 helo=smtp.corp.axiado.com;
Received: from smtp.corp.axiado.com (50.233.182.194) by
 SJ1PEPF00001CDD.mail.protection.outlook.com (10.167.242.5) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9700.17
 via Frontend Transport; Tue, 17 Mar 2026 19:52:11 +0000
Received: from axz-uw1-build-vm02.corp.axiado.com (unknown [10.14.1.22])
	by smtp.corp.axiado.com (Postfix) with ESMTPS id 8FE524186B5B;
	Tue, 17 Mar 2026 12:52:10 -0700 (PDT)
From: Tzu-Hao Wei <twei@axiado.com>
Date: Tue, 17 Mar 2026 12:52:10 -0700
Subject: [PATCH v3 3/4] MAINTAINERS: Add Axiado AX3000 eMMC PHY driver
MIME-Version: 1.0
Message-Id: <20260317-axiado-ax3000-add-emmc-phy-driver-support-v3-3-fbf790f3f711@axiado.com>
References: <20260317-axiado-ax3000-add-emmc-phy-driver-support-v3-0-fbf790f3f711@axiado.com>
In-Reply-To: <20260317-axiado-ax3000-add-emmc-phy-driver-support-v3-0-fbf790f3f711@axiado.com>
To: SriNavmani A <srinavmani@axiado.com>, 
 Prasad Bolisetty <pbolisetty@axiado.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 openbmc@lists.ozlabs.org, Tzu-Hao Wei <twei@axiado.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1110; i=twei@axiado.com;
 h=from:subject:message-id; bh=ObP8N1UtvWKp2CtmzxJN3VKa1vOSFezLpJd8KJulKic=;
 b=owEB7QES/pANAwAKAXgQMF3EWvHXAcsmYgBpubDrb1NM2w7EhoDbqiS83WaFUAYmj1y+5kcQN
 EHMtwLX4n+JAbMEAAEKAB0WIQSZyWINOowtFmDvdYF4EDBdxFrx1wUCabmw6wAKCRB4EDBdxFrx
 16skC/0RprPmiwcCS2bL8Mh0rYwUstnXldyM/hHJiZYaOLyEW8nAvYMNDPTek48CfT6IHFYunPW
 LoIdxswwHU7Fm+Be76+mwyRDuD7ur4q29IPQjj5Cv16Q0A6QI8lJSWD8O4Sk4/feJim/0OdB1iU
 hjqn7ZfBWuhiz+Mh6XSv3FLiv5a5h+UGv6qTDUCdvPRFzjaX/yLD+dgTso0UrnW6Z3Ru2La8nSJ
 j9VI43BWYUKTACRgwzXjpZWieeQWGWJNgbHavBOxMBPBoT6rbLSsGBKQVv4XeccfarwZvaOus/7
 j0T2VxOkGv2WuSvpdKq/pYzjLwdrdjGkavNyNe2l9N/FYBVR7jIFr1OD6OpYqnc8K+cImh22GmG
 PxeDHlpcXjbaPURyG652bu3Za5zP5UgRGTO2A8tmPew61fxvpCps5pOdI+VHrziXIf+8YjeHBPO
 7+rvs07XYMe92nTr5oKmfRxWoxqoaw8m9ClkttuGg8t8Ruu/Y2jkVdK6mFyhw1lCq98rY=
X-Developer-Key: i=twei@axiado.com; a=openpgp;
 fpr=99C9620D3A8C2D1660EF75817810305DC45AF1D7
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PEPF00001CDD:EE_|MN2PR18MB3591:EE_
X-MS-Office365-Filtering-Correlation-Id: 87108a5e-88d5-4586-69ad-08de845eae40
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|42112799006|82310400026|376014|7416014|1800799024|36860700016|22082099003|56012099003|18002099003|13003099007;
X-Microsoft-Antispam-Message-Info: nKqhlNenAiXIMD3pICwNNEZH1eiQ6mMbOlkttW/I2zKlAF5KvJI+PbDWLO+knF3Ld365pssmYhMofkiiO82QyMx4HF8p/e3hx0Vp6r8hT7OWxxrT0xZ8n0dsFmZei5Pv696mQySZAjKi//Pu7XFD1d9G29YPK2lNIJP3XYcWw4X1Zbu2A7gfXDYo2uLuWz8ENbxTnNm1RBmPPRLg/VXRr+AQlOGxi9P3i2Usr39CoFZ0MO7WIzCXSsMZb68JKxJfc4G1IAVOKVjApjZy6Yzn3T22RbltAlLh1+bro/jFEenEE1cLXQ+gH29LqKvuj/+CaflUuUi0pug7oXWR9iHAwkF0ihsYsA2DALaHsLMrkyLKzBwuZa02+P9sB5y8R3e6he5IoytZZcIoQlzlZQ+LpDDF1GFkAjkkjHnyYITOR6UhKYXG9IXVWa2X+Iwe1Gkm+wDZIYo0Q/4BtTxzuiHAjv+tcst8pflBpmsmPQZKjNdmMEl2ZXFLBA5IbWF3pjqS83lE4nxIwQVqTwEYI6+IwcJwXl2vxarrHaxYNWBhR8WlZwYuMF2GDGff1UoPcyQC3rm4xGoSmeniHCgFzHi1ui4OYe5a5zVLW06WJG9E0+nAqp8vP2hcXih/igwyPHEvylGcfJnA3RI1sbc2hAc1Zxq0n3bGso0KjEYIwar+rkjKqOGeXgTNLNvhH8B+00TYc41L4mSUziUZWDnP0AocYtAvauzACLO55r+BwHihoQiMF8Hg4tLUK2jzlEEjEcpiE22AAFxSBXydsvzR2fE+uQ==
X-Forefront-Antispam-Report: CIP:50.233.182.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtp.corp.axiado.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(42112799006)(82310400026)(376014)(7416014)(1800799024)(36860700016)(22082099003)(56012099003)(18002099003)(13003099007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 8NnNlaCbU8nlaHc8Nbw7RX93JqV6HuX3Pw097U8DaOg8W7FDxNtBom+0P01BSFFKfgFVwmpnUcvOU8zWlMxxCVu9i2znOzpL/FvKZ6XmcKCPVWTcQU//xV/QRSXflvxv6x/BIQc/dLSOoKlU6EMbm2501zqHYsgTK5Etdzb2EonTzKFrcwzaMezm46irUR0HcvMdBnLKVcofuyRmhCF7iE30UjfixVBgVBJLgpazGVSg3VhhDwfKN9P12vX3ORUXUvMXR8Fog51ARsvsuyoCGwAqkZ7PpngngKC9Mo83HoTSoWSZXWEuKl2Zl7A8lMyu3WtLxZ0PIijgf7Ek1wl5NwAEMjs5SjkZbZ9pobzN0cFjP8TwHqbMh6TPfQLk35lnyLeM2xRX+WmPmRNNFfOy3mxutO3WoiF2JnTRLO0ca2a1Pw1yFZspIBbqSo/4008r
X-OriginatorOrg: axiado.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2026 19:52:11.7923
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 87108a5e-88d5-4586-69ad-08de845eae40
X-MS-Exchange-CrossTenant-Id: ff2db17c-4338-408e-9036-2dee8e3e17d7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=ff2db17c-4338-408e-9036-2dee8e3e17d7;Ip=[50.233.182.194];Helo=[smtp.corp.axiado.com]
X-MS-Exchange-CrossTenant-AuthSource: SJ1PEPF00001CDD.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR18MB3591
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_125218_311955_A6D79D83 
X-CRM114-Status: UNSURE (   6.73  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

QWRkIFNyaU5hdm1hbmksIFByYXNhZCBhbmQgbWUgYXMgbWFpbnRhaW5lcnMgZm9yIEF4aWFkbyBB
WDMwMDAgZU1NQyBQSFkKZHJpdmVyCgpBY2tlZC1ieTogUHJhc2FkIEJvbGlzZXR0eSA8cGJvbGlz
ZXR0eUBheGlhZG8uY29tPgpTaWduZWQtb2ZmLWJ5OiBUenUtSGFvIFdlaSA8dHdlaUBheGlhZG8u
Y29tPgotLS0KIE1BSU5UQUlORVJTIHwgMTAgKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDEw
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9NQUlOVEFJTkVSUyBiL01BSU5UQUlORVJTCmlu
ZGV4IDY3ZGI4OGIwNDUzN2I0MzFjOTI3YjczNjI0OTkzMjMzZWVmNDNlM2YuLmMzM2IwYWE5NGRl
ODFjODliNjc0ZTQ0ZDQ4MTNjNGUzYjk1YjdiMmQgMTAwNjQ0Ci0tLSBhL01BSU5UQUlORVJTCisr
KyBiL01BSU5UQUlORVJTCkBAIC00MjU0LDYgKzQyNTQsMTYgQEAgVzoJaHR0cHM6Ly9lei5hbmFs
b2cuY29tL2xpbnV4LXNvZnR3YXJlLWRyaXZlcnMKIEY6CURvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9od21vbi9hZGksYXhpLWZhbi1jb250cm9sLnlhbWwKIEY6CWRyaXZlcnMvaHdt
b24vYXhpLWZhbi1jb250cm9sLmMKIAorQVhJQURPIEVNTUMgUEhZIERSSVZFUgorTToJU3JpTmF2
bWFuaSBBIDxzcmluYXZtYW5pQGF4aWFkby5jb20+CitNOglUenUtSGFvIFdlaSA8dHdlaUBheGlh
ZG8uY29tPgorTToJUHJhc2FkIEJvbGlzZXR0eSA8cGJvbGlzZXR0eUBheGlhZG8uY29tPgorTDoJ
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcgKG1vZGVyYXRlZCBmb3Igbm9uLXN1YnNjcmli
ZXJzKQorUzoJTWFpbnRhaW5lZAorRjoJRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3BoeS9heGlhZG8sYXgzMDAwLWVtbWMtcGh5LnlhbWwKK0Y6CWRyaXZlcnMvcGh5L2F4aWFkby9L
Y29uZmlnCitGOglkcml2ZXJzL3BoeS9heGlhZG8vcGh5LWF4aWFkby1lbW1jLmMKKwogQVhJIFNQ
SSBFTkdJTkUKIE06CU1pY2hhZWwgSGVubmVyaWNoIDxtaWNoYWVsLmhlbm5lcmljaEBhbmFsb2cu
Y29tPgogTToJTnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNvbT4KCi0tIAoyLjM0LjEKCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
