Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 421AECD3424
	for <linux-phy@archiver.kernel.org>; Mon,  4 May 2026 01:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AdT4Lan8tg83fh4fZPlkb3RkcNA8FvByhJUE4iv1W/M=; b=SdYIkiVTqdElw3
	Pu14nTKXGJwIG8mJ/5grCTQG3tymKcYG69Kj2+RH0wCZz9SoxV5Fybqtm7XB214c7+3QogS8dAXo3
	5T6wt11SdGsQegrWZe/Yi59cW3E9MUrtKgB9Y+shRmm695D4KOrNrMSSBvZnoNJmmvYvIzpupszmJ
	yy16VX30GJbn5OOd1R5B2BYekYmccM+A7409eY6ejHmI218BR3oDisksniLxKOQY6QWZIv2YB8aVY
	vDgKfRRJQ8xRLCzxcgaaPma/CNI9cEIf3awIsc4XlOjJUyoTNKQF+May8SerKxmcChj0cnJBs1/57
	9pcbCiat/SxNTzwV1nlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJiGx-0000000C6a0-2C7b;
	Mon, 04 May 2026 01:38:59 +0000
Received: from mail-eastus2azlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c110::1] helo=BN1PR04CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJiGs-0000000C6Xh-451c;
	Mon, 04 May 2026 01:38:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z7ho8KuA4zbYpx10i/9yQy0csnu4bw3Of1vWh1xGV7fi8wmaqL10yjXBN+ROWJNChnWWraJisap1Lwd00IKaKrDlI+JQkq4TTJBHFK7aEj5ff6P2f+mJhSIR5gnRvDv0cX21CkHF33OpcbEBYQB/ClsOSNQ2lr8MktXuElFYw3n0u66o9ztdU+zrAdy5E/IBXHJU549jVVzv9/KCPE29nSs5Azm7U2GD9s3dbwiHRwT9pDYi6otaGobNRsobXD+hq4zx21HrkeOGY+b5vp/SweVaI7cvBo5GT66UVgmkUo4j7Zki5bDH7oJlIUWzYkrbf0G3syA2TRLkn2ZiQ1HJdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IYcdBHIqFgEvILxmZRBX4ED3Al8Q+GCzZear3xHG+wc=;
 b=V5uAGLZvQGMkRpdZBeni4pHzQk+E+q8HyZxsrTvYxFblkIbN3oUMfMmB8ci5xzXlwobxb/IUMwzNeciuGmseYWYhvYOLwp1otebiS1u+e0a8gKezwAG2AxYs1JcPe0jKg1kCRpxSY96Cg7oCbmVear4W49LgwM0kXTAPTeB+jYTu2JXsIiBKGRgrA7Ymnt02i0PJiu5gF82o7ogdOv6KTmRE30GD7mTuDeJPXZHLDpGRPdHKMIgWwHsH7uCaL2qPw8B+6yD7kTKton4JKbgm615SMktzyXDM8vtsZogRPy/HEQhTjdBNGNCu/29hlZXW0hyZaanDNJZKQGxNUdPlJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 64.62.143.114) smtp.rcpttodomain=axiado.com smtp.mailfrom=axiado.com;
 dmarc=none action=none header.from=axiado.com; dkim=none (message not
 signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axiado.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IYcdBHIqFgEvILxmZRBX4ED3Al8Q+GCzZear3xHG+wc=;
 b=EO1A0PwHRzNoeqLcb9Rh+jx6pg9MmYBCUIZ7oIMTof6n0BiCpSC0y3CsLy5xMK6OY9wZ444tblzx7TLhz+YxrdIWuW4KbogsDHIxjbRJBKtU8oYwoZjP/xkQdcb/JY1eVZQQBHHa1oxzLpUDhJ+S9Tp9fO9Tg02JGjegnu9rzYwc/fQZ24cyUg5vdAYxJ5exmx3bI0p/IeD9innYXsElGiHIOlPRgb7IFp3s8MbyUYcBfmVU+oorrGuD4wd95us7KzVZV/L7/FXXRKX+y//clEcj5EH+EWIyJmUU1xjPjNDy5LfPJm2iUOgU38iv7FBf1t3eVTIC7y4wp+4JL34d7g==
Received: from DM6PR03CA0076.namprd03.prod.outlook.com (2603:10b6:5:333::9) by
 EAYPR18MB988325.namprd18.prod.outlook.com (2603:10b6:303:2be::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Mon, 4 May
 2026 01:38:47 +0000
Received: from DS2PEPF000061C5.namprd02.prod.outlook.com
 (2603:10b6:5:333:cafe::c) by DM6PR03CA0076.outlook.office365.com
 (2603:10b6:5:333::9) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9870.25 via Frontend Transport; Mon,
 4 May 2026 01:38:47 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 64.62.143.114)
 smtp.mailfrom=axiado.com; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axiado.com;
Received-SPF: Fail (protection.outlook.com: domain of axiado.com does not
 designate 64.62.143.114 as permitted sender) receiver=protection.outlook.com;
 client-ip=64.62.143.114; helo=smtp.corp.axiado.com;
Received: from smtp.corp.axiado.com (64.62.143.114) by
 DS2PEPF000061C5.mail.protection.outlook.com (10.167.23.72) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9891.9
 via Frontend Transport; Mon, 4 May 2026 01:38:47 +0000
Received: from axz-uw1-build-vm02.corp.axiado.com (unknown [10.14.1.22])
	by smtp.corp.axiado.com (Postfix) with ESMTPS id DA0084186B5D;
	Sun,  3 May 2026 18:36:50 -0700 (PDT)
From: Tzu-Hao Wei <twei@axiado.com>
Date: Mon, 04 May 2026 09:38:34 +0800
Subject: [PATCH RESEND v3 3/4] MAINTAINERS: Add Axiado AX3000 eMMC PHY
 driver
MIME-Version: 1.0
Message-Id: <20260504-axiado-ax3000-add-emmc-phy-driver-support-v3-3-3ab7eb45b0c5@axiado.com>
References: <20260504-axiado-ax3000-add-emmc-phy-driver-support-v3-0-3ab7eb45b0c5@axiado.com>
In-Reply-To: <20260504-axiado-ax3000-add-emmc-phy-driver-support-v3-0-3ab7eb45b0c5@axiado.com>
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
 b=owEB7QES/pANAwAKAXgQMF3EWvHXAcsmYgBp9/imCt0F8unvqVG9sFNz2lbvnTw+kWUwuQQq/
 Rurflle7CmJAbMEAAEKAB0WIQSZyWINOowtFmDvdYF4EDBdxFrx1wUCaff4pgAKCRB4EDBdxFrx
 16sHDACpIbPbJIEub3P25V72awHnfbBt1BfnE2L8zeQ2jT766wxs2VnuqT4qRyUxX2ru9UMiye5
 S/Ld4SuHqoljOsz0Ip6xWn7cE1WCnLaitkL7tiQ/8VBFyelO9eFDnVlefMFupbakVXyC4A8Za0y
 //eGa2cFtUNwXbrtlXVQutozMXCS79wYCJamr8YM1xcHIXaL4HP4WkkU5ciOd3zgxHZl8KOEeS2
 6vqPg2Lz4SyGGoAsBoLe9YKY+4f1jLXSTDCC94ho3owJqXioQOPqGpTgxSiIXdf6P5rUbTGHPv2
 w2EFmL/fKW2hO8BmWSd+9n7Au2sLmxN3Dy8ANHNgwuFDpg/klw5nXojUXa504jLj8IyZGsNA/xQ
 3FrDhlZ6mwaELtt2K650z7X81r5l6++isJH/fG7TCx1JkIsGturdMWTZuDXPpgIP4ucgjpVFlyH
 BC5NhSkpJYP1/JGNN4DiRGSzIIwXZxIxi8Pr/TbXODRFMCUj4OvrSs2AUVGbaWGUzMyRM=
X-Developer-Key: i=twei@axiado.com; a=openpgp;
 fpr=99C9620D3A8C2D1660EF75817810305DC45AF1D7
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS2PEPF000061C5:EE_|EAYPR18MB988325:EE_
X-MS-Office365-Filtering-Correlation-Id: 253ec410-f2e9-411f-5c45-08dea97de2c9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|82310400026|34020700016|42112799006|36860700016|13003099007|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: 7+/37unoblo7j3VmPHXUFyMwbd6HWnxl+0rsx3PYwqbFe7kyITomYproIYgyX9gIuqL/SRS3sYeKIT/2W2YsWD0zoqze2LNBIQRUs/acX3cjLDjw21jsjf6KORB31Umo7khtbMkQhgFfvTuUyVAM+jMCsRHKaT0deLaOdknQK6z1y7NVS2b+Q8VZEZ+9eLLfltSGKYnwrDDKnpBzEZxmtLc7lRvqOVjktJ/jNTrtXl0nFacMlXYOWG7rnsGrKeOdazKdedhI/oWhyleDDUabqYR8DcaUcEuz9+DJp9Dh6myixUwzITBYD+5OZKSQi5YSIlzPZ9MHCc24A8zwOrABppFSWnmN9Umgix2VlJcCzjIIXqsj4fYELlwNfjPgIJxBvnW+rAM/o80YcF5+cKBlUd9qRK9zE/jb1oWD2yAwi2osrVlsqgvZsqUdr5HdX9RYwp8ylT7t2ZDgVawxkZPi1emMJPLThWCAWG9fAgIFfO7E4sqlg5u3fekW2k0Z0dUu0P9r/jUOpT/U0u+MFgl15dx+B4ZcSdSnydSX+xINlhFu/YDtuXi2BkdHJ94DxwKR9LiXD1pfmHDUv+xd21MB/9kPt5y9hJlI+egDcYlV1NkjZHJN6p0v5qmLiKwtN6Ujys8onIej0S8y6IOEBKvXm/uSOisRq4KzAWhkMxtTO4gfxWH1EX42IOkr8WrVUJXKq8NvCn35Z4g6gLOW2C58tCVlyOc4NPZdVIBWbCqWQYE=
X-Forefront-Antispam-Report: CIP:64.62.143.114;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtp.corp.axiado.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(82310400026)(34020700016)(42112799006)(36860700016)(13003099007)(18002099003)(22082099003)(56012099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: GAmNrxx/X8aO+Abrv61Dp3ek62Du67HpJATJCmkYSXoGLNFizAGCCHsA4L9AJh6IVswiTtlwAlL4iiJgVwJ+heveFe6yIcDa3xq57atMp56VEve1SK8lmRwjTPgLrUz+W6vB4vJYDS6hzJkh15qRigUqe5F2NgZ1v7oAJPcsPY9tnbVJbP3SFvUoiRG4IvM7s9AwuUR+5Rf3aOTg039lmjs53L2d5sv2BAWrxZQRwjx7usaNXUEVTuR/qpWbQO6Qldmj1+Lwsxcb06qM2KufFlrOo/LgQ8QWa/MRsAWrlChEjiusMOofi2NL+/lr/A99HIRxCPMfRGQFpmIahdDsE9iYDDhEMk5is8smyY3IQFhly4PH4o84eNnTHCTOx144OOIovme2f2KYoWC/r7uxZ40oud6D/8ieSLm6koRMjOdru8okXM2MIRaDK3+HlyIs
X-OriginatorOrg: axiado.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 May 2026 01:38:47.2771
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 253ec410-f2e9-411f-5c45-08dea97de2c9
X-MS-Exchange-CrossTenant-Id: ff2db17c-4338-408e-9036-2dee8e3e17d7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=ff2db17c-4338-408e-9036-2dee8e3e17d7;Ip=[64.62.143.114];Helo=[smtp.corp.axiado.com]
X-MS-Exchange-CrossTenant-AuthSource: DS2PEPF000061C5.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: EAYPR18MB988325
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260503_183855_023951_9F0ACECD 
X-CRM114-Status: UNSURE (   7.19  )
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
