Return-Path: <SRS0=XorX=M3=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1F3DC4320A
	for <linux-phy@archiver.kernel.org>; Wed,  4 Aug 2021 09:38:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 777CF60EFF
	for <linux-phy@archiver.kernel.org>; Wed,  4 Aug 2021 09:38:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 777CF60EFF
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=renesas.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ZPNI4cIzb/g5DnQgyaNOv7zEbZtJqVvUEb8aEdto3M=; b=tw/SucJ5iBxQRP
	AfJ3IRA+zbnaU9Y0+KVthSLgUdgo0Hy6Zi9rJRYLxz6RsaAT2HIMwV0Q9DPnIPLzOv/prLJFVA7j9
	43m60HXOUgZgA0BKTNt2FpozWSP7YHbcbn3JIghesWFKxX2QM184f9wGE584svYEJjjinjC3HzBi6
	8tBObvBWH+2ZWLD6LVR8h2/fnyLzswA3TNT79paA+AA8Aty3ZZCmH30Z3IIZ7OUEtElTz7+5uWZQj
	fkuuvIpo5slKPGysdvosgb9zC0cVovTHlO7D+2Mbl0SCvhffrkX9hj0vi88OPw/Rc7liNscc49aYg
	0NXJi0TSok2KKYSzqy+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBDMO-005VKB-PB; Wed, 04 Aug 2021 09:38:48 +0000
Received: from mail-eopbgr1410131.outbound.protection.outlook.com
 ([40.107.141.131] helo=JPN01-OS2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBDMK-005VHU-Kb
 for linux-phy@lists.infradead.org; Wed, 04 Aug 2021 09:38:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ltAwU5iPj401+cpivAO4z1xvkrLEeM3q4/VNIhtP19Nxpifqx/kb6kP/xjTTvlUbRHnG58c/zY1gWn58jViT0ebD/5qFrzWbgBS5RZ0fZSSHn8q3v3Dbrs2+brOcYo53O836TdZO3V0ZpwvAMCBMLzbPJ3SSvl32QrEF48Ispcb8sH5ZHwi8zeBFPCS+1TC9019aLyFdxxzX2p3+RltAWeYvX8PXx7pa9TTZW0l8P1heZoKWLs3cDtuUBnYxZtdQFVUXXe8/OLsSk/k8JfG+BhP6BojfM/pARVzEXdbttNFeRhc0h2bFvQAbaiwvXTsSaIwFgy+Hed6Grm39Stul2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RxkGHeWYKsznXRtw7JdxZiZA9EbZ2bEoFWbvicoGQx0=;
 b=jY3yNm26dZf+cu1hb0vjSvXosMyBetgHYS+hLeWvOZdjwq5oadwxLr9+c7tCqwPynwHhFgkcR/amxgiPHvmlm7zMWx/4A5RemIGwuMsZIup4zX4incyDMMtzLFMdqM9JP1CZOX1U/cw546PP7UaIdJ56egIesaCyR0Zaey/a89D/20VhIUVpJMh3nKLMm4ba8DaWcOxbqyFmUpAmswn6bbBFrLvpS0CorPgUDwpYx7iPkCUBTNBzhYgpFPZZFqDEDJzEAIf7isWOd1bQWj0Vumeo4cGxwxlVnMWaA/+LSkpzmc2y3qaFjfh36RlGZSJKOWWWxLwYcTt9y73OX9JAMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RxkGHeWYKsznXRtw7JdxZiZA9EbZ2bEoFWbvicoGQx0=;
 b=fZCijuR2eG639o6WskJkYlTPZoGLcn8bdO6HEf2llyNQVSVZezz3e0+mf2moruDtEdu6oQTxjUA89xZGT/8nJ1kmu4yrBlD90YXJYTZ8Qs/AiLrU8+loqcH0vGLJcA2rIOf1Sa0MxELbUgGLxPxS16iE79W9myEv/DI4X9utTe4=
Received: from TY2PR01MB3692.jpnprd01.prod.outlook.com (2603:1096:404:d5::22)
 by TYXPR01MB1552.jpnprd01.prod.outlook.com (2603:1096:403:11::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.20; Wed, 4 Aug
 2021 09:38:39 +0000
Received: from TY2PR01MB3692.jpnprd01.prod.outlook.com
 ([fe80::7db6:310f:a5ed:82f6]) by TY2PR01MB3692.jpnprd01.prod.outlook.com
 ([fe80::7db6:310f:a5ed:82f6%3]) with mapi id 15.20.4373.027; Wed, 4 Aug 2021
 09:38:39 +0000
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: Biju Das <biju.das.jz@bp.renesas.com>, Rob Herring <robh+dt@kernel.org>
CC: Biju Das <biju.das.jz@bp.renesas.com>, Kishon Vijay Abraham I
 <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Geert Uytterhoeven
 <geert+renesas@glider.be>, Chris Paterson <Chris.Paterson2@renesas.com>, Biju
 Das <biju.das@bp.renesas.com>, Prabhakar Mahadev Lad
 <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
Subject: RE: [PATCH v5 2/6] dt-bindings: phy: renesas,usb2-phy: Document
 RZ/G2L phy bindings
Thread-Topic: [PATCH v5 2/6] dt-bindings: phy: renesas,usb2-phy: Document
 RZ/G2L phy bindings
Thread-Index: AQHXgxkAw3mBso2vnEKBMhI9TQt7CatjIgpQ
Date: Wed, 4 Aug 2021 09:38:39 +0000
Message-ID: <TY2PR01MB3692AD87163F3C1FAD471FBAD8F19@TY2PR01MB3692.jpnprd01.prod.outlook.com>
References: <20210727185527.19907-1-biju.das.jz@bp.renesas.com>
 <20210727185527.19907-3-biju.das.jz@bp.renesas.com>
In-Reply-To: <20210727185527.19907-3-biju.das.jz@bp.renesas.com>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: bp.renesas.com; dkim=none (message not signed)
 header.d=none; bp.renesas.com; dmarc=none action=none header.from=renesas.com; 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 79630e6c-109c-48ec-953a-08d9572ba3e1
x-ms-traffictypediagnostic: TYXPR01MB1552:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <TYXPR01MB15521D37D5648DE65A9F278CD8F19@TYXPR01MB1552.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2733;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: k61YAlMHhxXJb4mCDq4rDape0cmduEQD/lQRMJIM2mjvhgsb44vzJiKasWE9AGWCr0bB4Lrc6hZe/3KjTYFGdUbc7yEXfWbaAgjZ0KetzbwEa1q81T2KCKCj20zLOj1MNW45572vyCEeX/OSKvaQbxfiXgXEpft4D8dRkNsajY1OEtVBhbcW9mlUGQSuUzu8FgfqcGmfMiz/qAfPo16dDXS+GZgUyrF0M9QMhmRVFhiZAol8Qm07APFY04yoH83NAtqVYSBZLsl0dktIprnYxiS8sesw4iuGmBTbyoro9rJRU7J0iROW7Xv2n8tjuiiQEVg+T2389PAGUCxp4JEx+mhAnKLetgLOsKjgQt6Orvr0/6GzvA0uktHwPJUGVtVenVcIRjmZXtIqAdj/yYdFORYN+kcQqTv99MC2hEu+9CLMGj5x0xNsupZZv4SOdUy2hJMP6Ent0r2nU1HYjAvPwfcSvZv3SMT3bB3BUSuaGLKycDrJNV8W7+2SAygjOaM3qk4/GqfZEtVJ64gMTiSepA6uxf/4nZHqHtp66rTW6p2JHiReQa1ccrCsu7VM5AxOCxu8IPXxsAvPtvaRjqt8nRx1/V7b7egm2gzWY6so2365Lsr2ZXH3SJtJ5ZdBhC8QDzuUuJsl2LKDGzzJHArZgwxW9qcAQCW5MQouzEQxMdlIoN9v1toYJH2Mt0p16b59BUoFyGvnXV2VkKj+uAQjxg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:TY2PR01MB3692.jpnprd01.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(54906003)(4744005)(5660300002)(508600001)(9686003)(110136005)(86362001)(55236004)(2906002)(122000001)(186003)(7696005)(6506007)(38100700002)(33656002)(52536014)(316002)(71200400001)(76116006)(66556008)(66476007)(66946007)(55016002)(26005)(64756008)(8936002)(38070700005)(4326008)(8676002)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Q4z5Eqtfb+BRXIkgtJYZml83mMlyep4UgMoWbkw2oxiGq8gSkTGeuzIjelQ7?=
 =?us-ascii?Q?XJHuQq6hKLZlaD0nze+3PSRwaYUInw3Sj5HQpziRlVvdYEvgj054DNgOSn0m?=
 =?us-ascii?Q?KaCTh1U2hRJVpbkD1elUR5R3ZEbjnvvXuQURRkKFIGIEK70Un7+oJAs0o0Tf?=
 =?us-ascii?Q?HN0K6qy68P0DtMQMzRVZ0rKbCLpBrctJmx+zaL6FPvxoHz1bep4JOlio0Duh?=
 =?us-ascii?Q?ICP9QRHQaPt1rNBP3HPBNADv9H7IxTqeS5NN3u/91/EJnoYeRutlnRgrOqJ5?=
 =?us-ascii?Q?hGKU5DF9QHq06+rirffCbnDiy5Z8Gmcne4O3xos0HjnpiA4Tz7kFFwO0Pkzg?=
 =?us-ascii?Q?OEnsQSKkMNUNJw0v6huE6doamZcOlwcc96RwVknsxNuVvAsDWfOQ45AbBsVw?=
 =?us-ascii?Q?qKsj9CkNQgFCS+ILIiaRfA6MigckTXSFzC0kkrdS+UQNw8Ki6Cxq+Fpz0Kmk?=
 =?us-ascii?Q?mrUnq6dT1403WAv7Z4s/fUsqKOson5Z46dxERJkphgFgH65oTTn5R+dGw1Db?=
 =?us-ascii?Q?mnnsEIa05BbXu/xFGbyVD7Wzdho78O+bVZ9elLI8wEbCWAC9vw8aYUqcVxGA?=
 =?us-ascii?Q?UDyeWVEj7KQCs0ZMHV/MoR1DFhQx9x670uMgVxMQfXc1S7ZO1/2cQl95gNBP?=
 =?us-ascii?Q?7G/jxx9Eur3o3XjckxBa02LarbCod+Xva7Ioi13KGn8bFvlQDqJ9lWUo19FQ?=
 =?us-ascii?Q?2jqw3Bi3OxDOl5Rzl1YnhvHLNqxlWzDjXMcRNrSAAL8W04yVcHWSCVNZPF+t?=
 =?us-ascii?Q?/9SqhH64GY9zdZ9JqN8QGQxkTnwIEvzMuctGmb70Dk314X6WzdLcsOLzQN67?=
 =?us-ascii?Q?WyOvzCtfSdEbz4q7ITATWy7oCpLEpnSRWHlg9rq+0qufgMYs8HtPoGr5RKIe?=
 =?us-ascii?Q?EuS/Owv/s20wHzHCe4D0tbCzznVzWjVnuuep90OhrYOY53YIzQ3Pwc8oxgU5?=
 =?us-ascii?Q?D6ciYQTE26qoZVze4kfUezhKoA/+qaU1YHktmGYRjjgJmVnZJo/TQ49d2u/M?=
 =?us-ascii?Q?fsyXHammud60ZAB/lpYiuThpOGkiOSEHVM9r60o7k3i2e5qN5dus/eesFcJ/?=
 =?us-ascii?Q?+cca8nS6epYiPSRkUD6pbBpcyKeqVPCntq0kCJUK5SLhPHnI1C77/ddtk01u?=
 =?us-ascii?Q?GCyT1Obz8g9aG6xiF4Cb3amwzPnb9BvCEt+iSD5Z8vWtFetewyRq7cle5Eif?=
 =?us-ascii?Q?2uGhipyekbPAi7GfqJbHz03HsxFU8hJgLPXmTs6b0tzPXPjKxI9ZqURJeg+O?=
 =?us-ascii?Q?8T58rGwt/46S4di9MH6sjSzcJ1u/PsyT4vk9rA97mpJmVDkbdZEqRuxPXm46?=
 =?us-ascii?Q?tkA2F/J7MzzqKUys0gdPhxhS?=
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY2PR01MB3692.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79630e6c-109c-48ec-953a-08d9572ba3e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Aug 2021 09:38:39.2617 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +l3sAggNM1gMZ6Nk+tc2eFClpllRFrjbDtfoVKt96/DX475ZfWsv92/fsG2gBMedmKNgBSbyNtRQln5ueoMUfoCkPUWqw2ZQESJ5t7IW+5x79thSohjwuxnqPIyuz+Ud
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYXPR01MB1552
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210804_023844_740358_BFE47CD6 
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

Hi Biju-san,

> From: Biju Das, Sent: Wednesday, July 28, 2021 3:55 AM
> 
> Document USB phy bindings for RZ/G2L SoC.
> 
> RZ/G2L USB2.0 phy uses line ctrl register for OTG_ID pin changes. It uses
> a different OTG-BC interrupt bit for device recognition. Apart from this,
> the PHY reset is controlled by USBPHY control IP and Document reset is a
> required property.
> 
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Thank you for the patch!

Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>

Best regards,
Yoshihiro Shimoda


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
