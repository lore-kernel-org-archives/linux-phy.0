Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F1E0C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 28 Feb 2022 02:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OzD3v6KYGI8k7HHZRP1Xxv5Eua+OJug3zlOCoWsLbM8=; b=RLn0kCtadrAdbH
	yHhkfu3jgS561smvkjMZG2+zv6X4oex2x+0DCKvEeurcCfC3fRwzpO9Qc7MPmDPBMBjr84z6hflgp
	nGT4XuT465UuwJGD0/Ht3w54H1df4SKUhF6MtTWt5m9VQmFfYiL7hLL8gZovbOoq+RL0d8Xvfbh+b
	ciRVoSk0NnBcwQRPvcHFDIcmQs2viOnDVGiNkcsC4LO7hTgV0WvCQU1mBBP79ZwVrouWQGGTDbgnV
	gnggzdwWySXbpgfZDwF+f0Xjxozr2D+iithf7oIsxCCTMU8LinU0hveetS5V+WT2uXSRJ9Y7vgK7Q
	uUYT/AYBrIJrGkGa4TQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOVcH-00AWa1-WC; Mon, 28 Feb 2022 02:18:26 +0000
Received: from mail-tycjpn01on2071c.outbound.protection.outlook.com
 ([2a01:111:f403:7010::71c]
 helo=JPN01-TYC-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOVcE-00AWYG-Bi
 for linux-phy@lists.infradead.org; Mon, 28 Feb 2022 02:18:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RBTS+rTSjpeOLKDDaQaxWNhVKLBJyf4LSJFZUb6NmLV0u7jHsjZR8Xzu5Zd3GwAf7HIIzqHAAvoTYEjkPBntw8Y27oLS5OH2ITRxGNvkIYKR0myG+0KjMLLiUch0oHPeBCYGN1xZvGSDyhoqHalWi9f8x6E2GcFathh4F85RI3RyBJ7xQYhADJni/ZT0hLa2kIM2SMaI7YC6SuGZ1EU4k2AVJZkl2V674e0epBgJkVBQExLac1dB2Lusr98U+iixt0L5kgJe8Pvr13okgiTGk2lCwLn5KfPrLgUuNa5UG7xiRlxwG2LX7YHVh1lJO4hELqMoRm3FP1iTfEDtj5XSHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3zaT2TNPuA1Bq2I09huwrD/E6uphbpT3EYPL6/eXerQ=;
 b=bypM2i5piaU9E27uCsHSAfCPtGC0C8tvhyrOtlGTyouWYTyW4OYbeo3Y0VsqQPLpImA85JTIsoaJrKt/XPBm+RBJKQrp6osnq7xnSb1GgyJgrPCAjOmY8NCK5XqlL+KDMecJVYsYC5RCRL8S0p+rcUzprm6pIpyneLjNi6/WsT8PfmIBXjrTIg+j40qwZmqFxWJ2qVAPmndBP6OsE9bhyn2LuJdUpUrtda9/+nm4PoAoW0wzgXV5PaPJwCSMcvFzg8rX81z6T6wVm0k9JzI8EjulWcOgqTbEvM5IDS7CxMsx/YhpymPCbruG7tORNFIY7JNtWh8/WN8N5E13EUNlEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3zaT2TNPuA1Bq2I09huwrD/E6uphbpT3EYPL6/eXerQ=;
 b=n+1nJWFC5xx2QNm+0Vf4BO+fG2Lh/HGWkj9pQh2E9At3yVU/CHThDu0A3HZEGisgKMTCkdi/7tWayiBZtwK5DaLhM22ET7eHfpNzPyb6iyaaeKzolasSsrr4DineK4zyNEfbVBGE97j8+Hm0Kl8btdUuCnHE8ovoowMrypU+h9U=
Received: from TYBPR01MB5341.jpnprd01.prod.outlook.com
 (2603:1096:404:8028::13) by OSAPR01MB3665.jpnprd01.prod.outlook.com
 (2603:1096:604:58::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.22; Mon, 28 Feb
 2022 02:18:13 +0000
Received: from TYBPR01MB5341.jpnprd01.prod.outlook.com
 ([fe80::458:e316:da3:511a]) by TYBPR01MB5341.jpnprd01.prod.outlook.com
 ([fe80::458:e316:da3:511a%4]) with mapi id 15.20.5017.026; Mon, 28 Feb 2022
 02:18:13 +0000
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, Geert
 Uytterhoeven <geert+renesas@glider.be>, "linux-renesas-soc@vger.kernel.org"
 <linux-renesas-soc@vger.kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, Vinod
 Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski@canonical.com>
CC: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Prabhakar
 <prabhakar.csengg@gmail.com>, Biju Das <biju.das.jz@bp.renesas.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
Subject: RE: [PATCH] dt-bindings: phy: renesas,usb2-phy: Document RZ/V2L phy
 bindings
Thread-Topic: [PATCH] dt-bindings: phy: renesas, usb2-phy: Document RZ/V2L phy
 bindings
Thread-Index: AQHYLC7weD4cm/YgSEuBSWb5ZIEx3KyoOLzw
Date: Mon, 28 Feb 2022 02:18:13 +0000
Message-ID: <TYBPR01MB5341A5DC3BBB4AA59668AF87D8019@TYBPR01MB5341.jpnprd01.prod.outlook.com>
References: <20220227230817.31094-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20220227230817.31094-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 44a4715c-0a33-4213-b5ac-08d9fa6092db
x-ms-traffictypediagnostic: OSAPR01MB3665:EE_
x-microsoft-antispam-prvs: <OSAPR01MB3665022A29999D6E4BBE73A1D8019@OSAPR01MB3665.jpnprd01.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /7DwOM0IAWxoMFd48NLIb0ftui2ts/aKaRBQr/lbeZXPoK+EhHHeoCHEQxO6F7XE1Oux9z0j9GUdqGhK0yrZ7APD3VvM8aocgOjtsZICQFYrAEriEHncCB70kGcBissdN9C6xRyJ34H8ofj2rlvGuYAgu6rNuojAcloA4oSQjzDRYkyLyNMKZgTWSKwmIIQTpe7F9aUU08HZzt+2nmdYoC6EPMz3bnJcbd0uQzP17gALUJBKEel2MouZsjziIaBi/GjWY4gYgZOn6uagWCqzXD2ZGYNVNtyDb+P26stjtJtPPjBzmPHKkaBY/4smtvzG25xCtNdr2nNw5g3RkPO9U8uUxjZ3QRjpfkTcwhxFz62r5KM/JQEPR/MeOrvByspVi4/Ah4TWUUWWOLTNTj0euZX66Nv1gwdxqr029lq72Oy1cyT4KX1IJ5crWlN43l4kYay95YNTyDfpKibOn2bFD1lL7OhNm9P8SuzPbMMtwZsNJr31Wvv2GDKhAviHKHlfk3HrptubmPG3zhyB7cNQNjoMyf860TgLTej0vf2ysFmjuFJX51BynQGXcfs5z7kX1sb1M2Ldf2IKABo/3oKWuqYf8PsYybT/AzxJetSgHAO7z7WlR9uI5DZ5mWS+73kgTWevPaOVfj2M9QLbo/OLGOHPaY0WoDUHgOCxVLhw01ABY0rQGpg5frdFAjGz7t8j0Eysp45dOOUqygd4uVHWvw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:TYBPR01MB5341.jpnprd01.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(7696005)(54906003)(4326008)(86362001)(8676002)(33656002)(8936002)(9686003)(5660300002)(64756008)(38070700005)(66446008)(6506007)(110136005)(66946007)(76116006)(66476007)(71200400001)(52536014)(66556008)(186003)(316002)(122000001)(508600001)(38100700002)(55016003)(2906002)(7416002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?b237XwRiYkYX6t1sW6aBqqNO1Hz3DvuAwArn9gR+Un6qpFtdseLsaaAa5uKy?=
 =?us-ascii?Q?wO/y/b5r5DIKVv5M818XtK0KZqJFrAoVU+jafbM9Xyp9mXq+zvWt4ML+hA/N?=
 =?us-ascii?Q?MMHwxP/DRuKKokN4DWinEs3NmoGW1a4UYfRK7HDkw7493SjcfRCdlnx4d/RF?=
 =?us-ascii?Q?JKaimNr9vqP5kYoZOuD0LeSYbUReYqSx0e4EQdEkAKZzYklUEfZm9ACWQI7D?=
 =?us-ascii?Q?FWFDahBc1p7yBCZvWAz6Ik5elIKdKWkbKCxyp14z85zD0BqYhVcRVgeecFpY?=
 =?us-ascii?Q?OLoRYQgSHc8TqieWe11X/zOwynB54rJzS8K6OLITpOxfpptcK1lgoOpfIDya?=
 =?us-ascii?Q?fkDPU/esMZhzKCaWLEhEje4JRI80FiQqaBAb7Ge0omFQH0FgfM4TVqUMrhGE?=
 =?us-ascii?Q?RCL7623WLYVSNMihou/daPtKKM6emQj6kwiR4lZH13Z3Fps3qBp8Jo6hJcHw?=
 =?us-ascii?Q?J2wGPx2UWm4LBrxPp7GyFkszOG81wzFZSooAXN/BVWqv+27bBynb23rS8Y4K?=
 =?us-ascii?Q?HeZ4nYxQmKps+XIEQ92GPv9E/2QTeqSKZPytieywMyDdKYDAEYbnN4pTJBMW?=
 =?us-ascii?Q?DeD2P8lOD9ln4SW384tmce0KSRotW1Hk0eprQ45tr8HsRxaRkc+3MrLgjtNT?=
 =?us-ascii?Q?4iwMKZxgjitMEJ3U/1jjPjdVFev4Hnww9wWKNMijWvxJx8qoJgGXTVIS4JRW?=
 =?us-ascii?Q?7a3D30pqiFmjHSBxK9vsCEVapprJyckXeWg5PeW2cofJz0F6yXxjnAS2MAHn?=
 =?us-ascii?Q?lsOm7OcvJRyXJVAibE/ww1EA0PkSikXw+7ro55mSyciS5UaXGVR+51qBBDUw?=
 =?us-ascii?Q?4LfmVRrG5wLgU0tEsDQBTwETyQk1EC2inLeVf6dVS8heLSqggRckrdDOUTps?=
 =?us-ascii?Q?6/FyPbPWOkBVhfZsHhOk/xwuT/aEiWms9L89Q6uWkSuG1ZfW20kbfd2nJS1J?=
 =?us-ascii?Q?w0j6f8hzL1jfHD646sNV8qzaR58fdpKjNYpehlfAjttDhc2Oy1u5er0NXNDe?=
 =?us-ascii?Q?CADAV5lhHFTiMO/Eme3gw/FQGF9RoTjQXBqobQZukzFQFbbanAc5tScq06Xk?=
 =?us-ascii?Q?llOKoIFnWJMxudpnvdrYZiBaVh/BXZRiTyzTt/J7oxV47gW7pHvggqQyECnP?=
 =?us-ascii?Q?txymj8zzwivvF6cjeI1Om8CJRnKubzVmejeKW+g14dg3CKU32zSlN1ewCzgZ?=
 =?us-ascii?Q?u5TLCX1291ad1ig4YCJ7h5xN9ug2WJgDebKQLwdSvZNPko4dEW/2I3QdtFG8?=
 =?us-ascii?Q?n+Zmkv84RziLb/J3aEUyC8hKHBUOZCsOS67PjRCbJ4YCnURcdS9vOyh1Kl0l?=
 =?us-ascii?Q?U+hMIaWBwHT37Cj5062JtVnOWGvo42kwdOU+XlCwG/WCbN5hoC9XudG8LAnj?=
 =?us-ascii?Q?y5DMcx/kkAMGC2yn30zpmSchWkpgHlar6ri5iCljw55zO/DVzbCw5b6/7c4w?=
 =?us-ascii?Q?JHADGpg90547nmNAsl5ux0TBbHmgKYGXYinBLRVhIloSNEROrdf+QJYRJ9hR?=
 =?us-ascii?Q?Tax/x4NFrNGZd2SVRrOf3uGJ/exaGpKMRuDQxRAFx0TlwPCrwv/03rlnK+Xf?=
 =?us-ascii?Q?mJk/WiPwqbwrKPYiN68A2MX9ku5I22FlGsd5DKIorditX7DCh315tGmMjKS7?=
 =?us-ascii?Q?NIWwxZyURJFjHmiDdgE/DfKKA0ely7FjxE7DoDwIqPgDjQupTGbQgftyCWbA?=
 =?us-ascii?Q?P7Vj+WqxxVJw8d7deGYS66Kj7GtU6/1dF2mFRxuUADtGkFqVP96k8V9hGd4g?=
 =?us-ascii?Q?lg4xjtJhTzyddfrhl/D2VTsDJXeDe5Jp7ydURCOn6a3OP7iwdTkz?=
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYBPR01MB5341.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44a4715c-0a33-4213-b5ac-08d9fa6092db
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2022 02:18:13.6844 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0jUm1VTmLjddmn8058bbkrt0oZKXPUjLRjM+eCMxZcQOjbODvKIUHIyrrs+Fr9NyN9BU77MvYvGy//MfpScAXRdsMWqAs3D6UDc44GWMYUjRa9/jLl5tgo96MuKymlQj
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSAPR01MB3665
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220227_181822_432638_BBB7F470 
X-CRM114-Status: GOOD (  14.58  )
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

Hi Lad-san,

Thank you for the patch!

> From: Lad Prabhakar, Sent: Monday, February 28, 2022 8:08 AM
> 
> Document USB phy bindings for RZ/V2L SoC. RZ/V2L USB phy is identical to
> one found on the RZ/G2L SoC. No driver changes are required as generic
> compatible string "renesas,rzg2l-usb2-phy" will be used as a fallback.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Biju Das <biju.das.jz@bp.renesas.com>
> ---
>  Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
> b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
> index 3a6e1165419c..4c475be413ef 100644
> --- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
> @@ -33,6 +33,7 @@ properties:
>        - items:
>            - enum:
>                - renesas,usb2-phy-r9a07g044 # RZ/G2{L,LC}
> +              - renesas,usb2-phy-r9a07g054 # RZ/V2L
>            - const: renesas,rzg2l-usb2-phy  # RZ/G2L family

The "# RZ/G2L family" is not suitable now. I think removing
the comment is better like "renesas,rcar-gen3-usb2-phy".

I don't have the RZ/V2L- documentation. So, I cannot check
whether the RZ/V2L is the same specification with RZ/G2{L,LC}.
But I trust you. So, after the comment was removed,

Acked-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>

Best regards,
Yoshihiro Shimoda

>    reg:
> --
> 2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
