Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28E8CECAAD8
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 00:10:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=srzcHBbE1ji6Ic/M+XefzqVzktxY/R5miz/kWV/RAtY=; b=mggAqcbYMw35no
	isJzyWpjYBWpJ1WrJ0+L3EPVroLBuX1XPRtmtCX/T2CM4yLlUtrMp2q76J9d78u2YaT+62SK5VCSe
	at6IiIiHdvcKM7/DTz1eFoOVZGPBl4gBTWgzXYZg0VES7ejDd/jNYrhZm7LK2Rk0cp27d5I9Cqy3i
	5vM+hPIEyT8jh8TF1yfAma7fevXo+caxb1rAnD8v1Q4N5nBXt2NThZoHJBCjzSTruC6GpvGktRJFU
	WW1pWtPHwfWY0DIzQYicHkfkbakWijFL2ZWi6txhlhTEUHa+CD1rNvD33eocUzwW6ATHawJIZIt7O
	VuSpfQBCNaDJyzr1kvuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ob9nb-00D0OQ-EJ; Thu, 22 Sep 2022 00:10:39 +0000
Received: from mail-os0jpn01on2101.outbound.protection.outlook.com ([40.107.113.101] helo=JPN01-OS0-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ob9nX-00D0Nj-Ma
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 00:10:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EYc42iRn+oXVEs8IzjJrqnsjloNJLGSRpp06fuXV7+heka+BszaRrbTpYi4e3Bd+ph4xF3Uym6KRsXyNQvmaeLn6fMxUWBeQuujCuEWIFpwMRwv1zYaV5MYooMtxWEdo8HAzuPGx+gAQ05JsHWRbcvU1s5kuy+4i+EHqSARI3HDQFGS8xU51pOnhVUxhEH73XcbSnZ9WyEsevBmDDJg1fJ5RA/cF4VBcmTRuE3tR2ZJayeZCfX1N0WEEXVuVEiqEsH26Dp9UTvsVNIMQ6VEUvGEjzLHqoe3Q004OViAadWVWvXpamAfdLe5M1xqFA8xTq7dd1RK2Q8x52SMMaDHbGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mJA85SJ0Ah7HAmHWyGR4BDL9bv75NDtwU8gTnxRt9yQ=;
 b=F6jamGLZwn83WqPGTbQ8VT+mRCpLAqCUF7E526lAq5At4OyTJVXIk4c79TbqB7dS+pzqYPaPjN/V8wTFTMBw3UBs0nKkR7dKpk2dP9z5qsce+PYk+P9K8LpH75rPhzSkUbzUBUMW78Hq7Ylan3Gh0oSP1XbN+JImyrONaBRW6Oaatl7sQrKFjvSQzzzobcIOhNVbr0qZVpLLTuKN+WaE4jxPKx69nlZbNOESTrE2rA98BBjSg8rMBscjuzQCSQAPSKjB3UjtDWrmhwyDBs0OSXR0EkGs5KzgS6mZZnu32COEKdeSKTN+VZmTNVHZs4waCsufyKdIHznIwgN8NgDS6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mJA85SJ0Ah7HAmHWyGR4BDL9bv75NDtwU8gTnxRt9yQ=;
 b=bN7A907XZ+H1gjpPMdsLqxhmFDUJcLYCNkLaL34+hkS61LsrAfw5BdoE7cvjlWJ94ZX4WXP52bn8BGfafi9GGrdPKrPFUO9Ag+D7ZpK6bJTP63kqARtZ0Lv4HaMQhiMUr3E5OCjOLOD54Ebr/bOz/T7GydJS9JLBcehwnQN7UfA=
Received: from TYBPR01MB5341.jpnprd01.prod.outlook.com
 (2603:1096:404:8028::13) by TYCPR01MB10023.jpnprd01.prod.outlook.com
 (2603:1096:400:1eb::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.15; Thu, 22 Sep
 2022 00:10:27 +0000
Received: from TYBPR01MB5341.jpnprd01.prod.outlook.com
 ([fe80::2991:1e2d:e62c:37d0]) by TYBPR01MB5341.jpnprd01.prod.outlook.com
 ([fe80::2991:1e2d:e62c:37d0%3]) with mapi id 15.20.5654.018; Thu, 22 Sep 2022
 00:10:27 +0000
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: Richard Cochran <richardcochran@gmail.com>
CC: "kishon@ti.com" <kishon@ti.com>, "vkoul@kernel.org" <vkoul@kernel.org>,
	"davem@davemloft.net" <davem@davemloft.net>, "edumazet@google.com"
	<edumazet@google.com>, "kuba@kernel.org" <kuba@kernel.org>,
	"pabeni@redhat.com" <pabeni@redhat.com>, "robh+dt@kernel.org"
	<robh+dt@kernel.org>, "krzysztof.kozlowski+dt@linaro.org"
	<krzysztof.kozlowski+dt@linaro.org>, "geert+renesas@glider.be"
	<geert+renesas@glider.be>, "andrew@lunn.ch" <andrew@lunn.ch>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
Subject: RE: [PATCH v2 6/8] net: ethernet: renesas: rswitch: Add R-Car Gen4
 gPTP support
Thread-Topic: [PATCH v2 6/8] net: ethernet: renesas: rswitch: Add R-Car Gen4
 gPTP support
Thread-Index: AQHYzZbyaqnNmIfEIUW2oC9QSeubWa3p83UAgACgSNA=
Date: Thu, 22 Sep 2022 00:10:27 +0000
Message-ID:  <TYBPR01MB5341298CC6B2DE1A10AC120FD84E9@TYBPR01MB5341.jpnprd01.prod.outlook.com>
References: <20220921084745.3355107-1-yoshihiro.shimoda.uh@renesas.com>
 <20220921084745.3355107-7-yoshihiro.shimoda.uh@renesas.com>
 <YyshEGhh7zr+gXpa@hoboy.vegasvil.org>
In-Reply-To: <YyshEGhh7zr+gXpa@hoboy.vegasvil.org>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYBPR01MB5341:EE_|TYCPR01MB10023:EE_
x-ms-office365-filtering-correlation-id: 72531ca0-dbf7-42a1-ef90-08da9c2eda50
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  IcEJWdUuqBdd1Fn5XyU2Qvx1hNZpb/tLsZ+e9J4XvKCBukyjk3+audfrV7n6ck3yjkpfEILLkq4YoQZs8KvW2d3AKRe0wkRyKlFqYSjh+qIKX3afGfzwHQCVg+0ipyDdiwLKxx4fgOM5bOysCDZzpdDXbi+/jlktschRV9faCvfLlZIN6jK6JLqA+CzVcY7iJO67uuKZ73PjypTgASjU7gOU3PqPjNbOY7wlgO9mdl+TVHtEzUhKFkTf0BEqQ98HFsI+/HkZLXi0unED18qNo/pZ/bhIsS1H3mMwkO/CzCs28UriAL+75Eux3IvF4KgyAvymjexnfvQrr5hmvEkZOma/REC93F8TZVzNhfFOushiFY9YvI9puBnxMlxu1c85yMINfwWQOH1ecj60/JLhIHr0Un8zHGXbV2jUq72pF51hVtgMyeWHRN9vJHqFw2uSS9Q9B4heN6W/fvGYCFd290sPmUHsRjGjDtLDcKou51LrModrq4KYhycpysSBtsqGLoM6IZpVhNiJ8TeQ7rcFtFTC9GZW0Yx54s6RwDhHVoJVtCFRV8GVJTck5+Wefis53a6X6clS8s0+xBYJLB273XGVQvic6HVXjAvo4paqYp+qC689fPMHKi0WHhyG4SEDCELG4h70zQnpKg1CCKYzIC6akhdpkX363w4AyYYDzA1Fqx0gdv7kvM7VlmNzr1SYVoSv6fAdzj4lOAIGRjuaq0zV3LdV0Z8FGW4WhtRHxnl+F7wfcJZ5/Gb/5EPbeUkvUngsQK3B29GgoXjr/uinGQ==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYBPR01MB5341.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(396003)(366004)(346002)(136003)(376002)(451199015)(83380400001)(55016003)(71200400001)(64756008)(8936002)(186003)(478600001)(38070700005)(52536014)(316002)(54906003)(76116006)(38100700002)(122000001)(66946007)(66476007)(86362001)(33656002)(8676002)(66446008)(66556008)(2906002)(5660300002)(7416002)(6916009)(4326008)(41300700001)(6506007)(9686003)(7696005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?us-ascii?Q?omG4q+LdriqDPgGat0QK/uw/RV3PM8ysm6UlC1EKjBvqhaXckqQNtINwrsEW?=
 =?us-ascii?Q?V5Pe2xo8BruQmlCeMdeHJUs9+IOhz7o9GRX+V6hzlv9e31xWidPRqz/DCNja?=
 =?us-ascii?Q?kMJ+aclVqIJRkPL1in/O+onC3WaBr8gKKW8xd10HPxaglo+x6VVeTR3duICp?=
 =?us-ascii?Q?miYsrurOHJVqxW2UjRDE1SD/2wZQgLY49KMstVBdBXLeSE+TU4shRZu/o4Rn?=
 =?us-ascii?Q?/7nIvNmlePd80BOvh+9qk31ncaaYNsjgZoTDu1fNjnLSz6VX9CPQoSTpPxQ9?=
 =?us-ascii?Q?dq0gHPynR/buMYbzvQ8ED3w/YhnWepRJC/ICB+ip7wJG73KLR4DH18HV4UDH?=
 =?us-ascii?Q?ZMx+vMOyKvFLxVymcHG1cEvdf8fbzoe4862L/PlsPh8ut8wUMH/NuxS7gSaG?=
 =?us-ascii?Q?XvcGz1LXHKbl6psjKLhfqK+8u0cx4ItheSv0FDmtQOWOKCCQ8FJO2smC6mEj?=
 =?us-ascii?Q?P0hkVCp5kMilD33PgDjBoqlanUNRhD5aMcDZYhfeh9JWgAfUFhT2kYW/FZYi?=
 =?us-ascii?Q?b0blx5rNu3se5rTAYV/etWM+T6GUunvz9aFRWU28ckcxYTamaJlXUhZVvl0J?=
 =?us-ascii?Q?twWX01AGlyBCb56U3AEwC48aFjdsUZ/joJL7ibwjqIOYAZkHdMXbVVMYm6mD?=
 =?us-ascii?Q?5payI5fD0m8St9TjDin/1/zygyvppIWD7UjwhGIFGwnka4B7Nt9E5sH2skmq?=
 =?us-ascii?Q?geVQJjlSeAJI97k+/G6KPSvXcpR3xt0t+tcFTdF8oGoYOTlfwO6kIApJrm45?=
 =?us-ascii?Q?AgDpsvvOZjxuKQ3qWazO5+2ak5O7GO3Wh1a0fKIfCsn5xTaQI4Y+PUUzWTf0?=
 =?us-ascii?Q?YzxVjrrETWgAq2RNqMHHNh/BSenFVG84JRdBrMXKOyOPPwwG0OtjwQPTHsTu?=
 =?us-ascii?Q?7EN0mAptrbyjA+dBrtPgs4K0jOMNoysbiS739YOgXYPUWevtKXrcRd15BL3p?=
 =?us-ascii?Q?DZ7yls1MEsRsFbp0cHXUbdRXLqvAzBeukJLQm4rA4ydhlHpUGbm5L5SpcvKR?=
 =?us-ascii?Q?v6K63U5YeR3HQoUA3bUMtB65cjTQxtFbWC1tlWmBAPqd73VaZ1i5n86wBabc?=
 =?us-ascii?Q?NRke+GJsldQPDKYDtKL8qodLiElhi8JVLLdn87Yslqbg8yyZp5cCjOHJL5Uy?=
 =?us-ascii?Q?/6WQgXPDGT2D1VS9dDb9kryP55do2JfhvlkIVmOrXzaOrhyIgF8Gsi94M2bJ?=
 =?us-ascii?Q?RtR5NjE8ki4MVv/AIvdTXTKjmiyWyC7AeFQw+S2f5snEhw4lwd17zlU+PEix?=
 =?us-ascii?Q?l/5qvqdkvSc3NliwAQ0V3Jqn63C/xbDzNgZnpo9q5kZHcnXib/kDL1GwRr1i?=
 =?us-ascii?Q?p2yrpZ/u69JvSoUULop/RrBsqgxTOOU5s6Qh5X2WUWgMfusLEhF8Th23cpjH?=
 =?us-ascii?Q?d1athuw3W5wpR6NetVg2iFr0Y4pKTqpX9wghNLu82Wh/Au/aMKdqe7RePWU/?=
 =?us-ascii?Q?BmmbndvbU8GR3pTrF0SEcDsjAfZ9yLqMBnvApU1mY2RRG9wqx3oxHDXtcIFH?=
 =?us-ascii?Q?rHmmoKyTWwHRg3XJnvBgG2vbwIa60Y+i+wspO+IEbyKLttVLvWDau+fsVYAD?=
 =?us-ascii?Q?rztqTe6+UZvN7+gsZH90aD5zn5BnzYALsXhGN4nj6oO4xhPEuz0xmWg23dp0?=
 =?us-ascii?Q?DTWo/Czn1PN55Bewq8d0FzYLznHiTsSf6nOJqg4pf29m0ijvSGHesKU/23Lf?=
 =?us-ascii?Q?qyIurQ=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYBPR01MB5341.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72531ca0-dbf7-42a1-ef90-08da9c2eda50
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Sep 2022 00:10:27.1200
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7OqKJvM1m5RIuHnBkzdXWGa5NnjpLlpRjzNCb4J2AZTFIECWJQbKkDrqCnw7R5WOGzHKhRHL89T17ePx6hbgQoNn27BCjQtOVlcoCWP3pvvuJku4h0nziJ2NoR8C5x8S
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCPR01MB10023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_171035_782739_4872847C 
X-CRM114-Status: GOOD (  12.93  )
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

Hi Richard,

Thank you for your review!

> From: Richard Cochran, Sent: Wednesday, September 21, 2022 11:35 PM
> 
> On Wed, Sep 21, 2022 at 05:47:43PM +0900, Yoshihiro Shimoda wrote:
> 
> > +static int rcar_gen4_ptp_gettime(struct ptp_clock_info *ptp,
> > +				 struct timespec64 *ts)
> > +{
> > +	struct rcar_gen4_ptp_private *ptp_priv = ptp_to_priv(ptp);
> > +
> > +	ts->tv_nsec = ioread32(ptp_priv->addr + ptp_priv->offs->monitor_t0);
> > +	ts->tv_sec = ioread32(ptp_priv->addr + ptp_priv->offs->monitor_t1) |
> > +		     ((s64)ioread32(ptp_priv->addr + ptp_priv->offs->monitor_t2) << 32);
> 
> No locking here ...
> 
> > +	return 0;
> > +}
> > +
> > +static int rcar_gen4_ptp_settime(struct ptp_clock_info *ptp,
> > +				 const struct timespec64 *ts)
> > +{
> > +	struct rcar_gen4_ptp_private *ptp_priv = ptp_to_priv(ptp);
> > +
> > +	iowrite32(1, ptp_priv->addr + ptp_priv->offs->disable);
> > +	iowrite32(0, ptp_priv->addr + ptp_priv->offs->config_t2);
> > +	iowrite32(0, ptp_priv->addr + ptp_priv->offs->config_t1);
> > +	iowrite32(0, ptp_priv->addr + ptp_priv->offs->config_t0);
> > +	iowrite32(1, ptp_priv->addr + ptp_priv->offs->enable);
> > +	iowrite32(ts->tv_sec >> 32, ptp_priv->addr + ptp_priv->offs->config_t2);
> > +	iowrite32(ts->tv_sec, ptp_priv->addr + ptp_priv->offs->config_t1);
> > +	iowrite32(ts->tv_nsec, ptp_priv->addr + ptp_priv->offs->config_t0);
> 
> ... or here?
> 
> You need to protect multiple register access against concurrent callers.

I understood it. I'll add such protections.

Best regards,
Yoshihiro Shimoda

> Thanks,
> Richard
> 
> > +	return 0;
> > +}

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
