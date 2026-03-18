Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AD2E103E173
	for <linux-phy@archiver.kernel.org>; Wed, 18 Mar 2026 13:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OeneDuWkgVvCPjKBINYf/Y7aPuqqXQ+iXcOJOD9SwWg=; b=G4P2xKmIZOutdp
	AcY4pYKqaTXDnN6zH2dDwtaDnjpAl90Oreh5CRriWPyuYWOmV/OkySn7X9BupRT8k5VL7I4RKgUPO
	mikeWvAzyxi8u+3/mvDNyQQyZakjMrMhBaOeBYhjJhsEvoFk4uscw1CAtAIL7r4WqTBncYxMTCYk2
	jAxD9Om/PNX5AVf+wqyAQ9ZDQGm1Fpnd/gjEJPEPRZBXT0L5CmB/6gSc0gXh+Vt0eg4xsHA5QN/QC
	4BwpO649Lx9o3i960ZibKzqB1aHOz0rGlbGOHaI1GSIB12xTfr0NMGOSIAHl1TD5X7t8lLX/FdFzm
	1ZUELpTzdCP7Gv5z3Spg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2quP-00000008Tjr-0PTV;
	Wed, 18 Mar 2026 13:26:01 +0000
Received: from mail-japanwestazlp170100003.outbound.protection.outlook.com ([2a01:111:f403:c407::3] helo=OS0P286CU011.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2quL-00000008TjR-3N0p
	for linux-phy@lists.infradead.org;
	Wed, 18 Mar 2026 13:25:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jmPi+2AMELOykPH3mVs6CYSCwCekPGL2ZgJS1mfgp2Uv65+uqi7jbM7gmtDnulw6UPmQsgCiqKDRlEocstfZf5lvST7fNftw1WGRiq+g6G9gLCfBBytUkW1ujbhMrOZ/TGJ35+PYNDRHf++p1COkLJzHXeyWSpIk/Mq6ggxEg17AMUbSFGoQ4/87GXaBCNeuaIoRy2AXinr4ZkDrifLUtXL3vnI3f0Q8YciegHsKp+RSmwsFLMWtROh/scZe2Q8Tt5+AR4JlVjEIsivg+9Q+kCngL8CfSaR2Ib5VACqkFuhUCZMrn2UBs1xT08lkyiDJWfamK7sk3F1Ih9TjJETZiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HpUoh12x2OUzKlY2YV5EmcnnlCifqr5/qBZUoFiD9Q4=;
 b=LmhaNsDn1nrVHBeLqY27YF0tfP9SXSyViUU9k2obXbuGMa/gTHVoBUROJM69YX0RrzxEA6l+H94wVgsJCLJOp/q7wc2iKPK22xiVOFOti35DVxNpq9eFM5jPx+1keYyLFPK7ARhKjpD0wWoWwLqgpbNSCH7A3yjiv47bvjykw4FPNx26ff62d8cOwsYeUMgbZ0e0KfEqsA1Ton8ena9KnQZDOq73xfhz6G6gGFHUYbamtgmc/Hp28iVoTSFHeZ9mPuSyGFFqH9LutlT2WALFYW9QjB8VKhnBXxFVRuEUVGVnxx7SaETDMxkLTb8fXSU0T1BMzRxS993OgCINut5PZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HpUoh12x2OUzKlY2YV5EmcnnlCifqr5/qBZUoFiD9Q4=;
 b=GvYczk53rzQF8/LBtHm75NKSiY4e5V7gKHvNBQ5qrSPuU4uMIKSL3IHlfFS+kJTftqMeoYH9DMFJiHIUNBKuyAzJRNgXQX9bJSRObSX4Lc23sW1G2hLSUtdF4Bu2EU/n4o+aVaXOXqlDH5v0WEFVW1TggXCT4Ohj0adD+5JpLcw=
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com (2603:1096:400:3d0::7)
 by TYRPR01MB12568.jpnprd01.prod.outlook.com (2603:1096:405:1af::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.25; Wed, 18 Mar
 2026 13:25:38 +0000
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::87d1:4928:d55:97de]) by TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::87d1:4928:d55:97de%4]) with mapi id 15.20.9723.018; Wed, 18 Mar 2026
 13:25:48 +0000
From: Biju Das <biju.das.jz@bp.renesas.com>
To: geert <geert@linux-m68k.org>
CC: biju.das.au <biju.das.au@gmail.com>, Vinod Koul <vkoul@kernel.org>, Neil
 Armstrong <neil.armstrong@linaro.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
	Pavel Machek <pavel@nabladev.com>
Subject: RE: [PATCH] phy: renesas: phy-rzg3e-usb3: Fix malformed MODULE_AUTHOR
 string
Thread-Topic: [PATCH] phy: renesas: phy-rzg3e-usb3: Fix malformed
 MODULE_AUTHOR string
Thread-Index: AQHcts7pZuw6Ks9jpUyRaoUGm0idjLW0PTQAgAAFcKCAAAHWAIAAAyVA
Date: Wed, 18 Mar 2026 13:25:48 +0000
Message-ID: <TY3PR01MB113464A821E0E2C9AA6D92E73864EA@TY3PR01MB11346.jpnprd01.prod.outlook.com>
References: <20260318120102.226118-1-biju.das.jz@bp.renesas.com>
 <CAMuHMdW1ROF3VdKzXVNeKtPZPEwX4MHD-kqdunrNYKBprPgPWw@mail.gmail.com>
 <TY3PR01MB11346D89F6F7C332FEF0D08B3864EA@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <CAMuHMdXph-ns=8hHWoDKoNgUiGQ4=A9+aASim6qrLDdAE_mPMw@mail.gmail.com>
In-Reply-To: <CAMuHMdXph-ns=8hHWoDKoNgUiGQ4=A9+aASim6qrLDdAE_mPMw@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY3PR01MB11346:EE_|TYRPR01MB12568:EE_
x-ms-office365-filtering-correlation-id: e908670d-6ca5-47ba-a524-08de84f1de80
x-ld-processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|38070700021|18002099003|56012099003|22082099003;
x-microsoft-antispam-message-info: VgYClAFJCOOf7E5+C4gYzS1n+hj3y4dJ83GBstFy8KQK6zeU2b9cUxeIAjvVOGlYSaWqT9nNsui5AIy0xvjcaqO8pRLQf9MMqBnZ5YBTLz7fl8krf+P/y9j0yl07wvLpf8bD+AIjuBze+Wr/XrA1p/RlzJFjqqZ5QcH7f4z1Lz5dSgfrzU5xoouuv4sN7IMh7Cts0oQtjvaPOoFKgc4hd8sm332T4PC14Vb+1LXh9RkIvOEUhmny+LvnHepUnrYn0I4apisMK5BBTrwUq/Hph9/nVDcqCBFMwjmGKDNxcePAIVR96RwN59DzvtipphKr70XzGYlKGCf7Na0xEkVIq0rnMzk86Kk2t0ipXLA0v+Bh0w30BGY6O8THSnf95uvk+dxPDf/HEBWQOyRCAbToAZ+7prxzaL80GL/Mo/xWfUfcmd3h37xYH5eESESELRg/V/xmOaXDRCGz6IVUzbRDPI0rSUMZCvpWYEOoTqhdH7krW43ABFcOEKqir2nChDggMMTIW7CVaqd2p4NRFFGA5jLVWhtSK+z2ovDDt0GghvSJxTNpPni/6GpOKfqk/MNObFPSsgJ81+5vBrYwIraAasabGPFTRwevDvcJvACjp/GWoKvs7C3lfK0u7eXeQYXrYrlpdkslk2GStVs4A6d2pW8pOWGuxpz0d98Vs82w9Eb79XoBTukiLNnxNGxEnf9/B8RODtPW1AdE/qw1Vvwr3/Ku9Iu/+/nH7bFDtpzJarzDISCnBifHekrcpfXB4uAq
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY3PR01MB11346.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(18002099003)(56012099003)(22082099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZE01OHhtbTBxWWhYczBoQ2FQODJiY1hMWlNMRkFJS3J5SHZjNmZKaVRiVC8y?=
 =?utf-8?B?eWlwdndGMGVHeFl6dVUxS2ozc1NhVUEyUWJHWnNVRkdQdC9oMkhYN0M3MGlO?=
 =?utf-8?B?UTFiS0gwM3g5QXhUS0xUSHd0ek0vM1dqTklJeTh6M1ZhU2VtOUwrUURXTTU3?=
 =?utf-8?B?ZVhQMXkxOEVqSDYweEUzZGFmMFBHTWFvOWIyNWtjamw5NGpBdWVhTUo0dFFZ?=
 =?utf-8?B?QytXeHBRcWs3Qmx3NEhsV01SL2twN0xHeUNlYzNFTCtFRUVvMEV3NU9FaTJS?=
 =?utf-8?B?cmtXT3ZFcEN6b0ZGV3ZkaThqQlVYYnpVVmp6T2hnYWo1MEhBQ2dyUkhNVU9Q?=
 =?utf-8?B?ZTZmdlRzSlJLSGJicFI5TzBMQnVRTHJEeHZKM0ZJWVFLYU5yeTJEaDUrZTQ4?=
 =?utf-8?B?QUtjbHhZenMxeXVsUXJ1YVZsV0VWVFdmS1NCTkhmRkJkNUdsWURWMXd1dWtY?=
 =?utf-8?B?dkh5UldZYWNqT1ZLWDUzWmtPQitFTjN0b1hPVXUvS2JWZWhZOEJma1BBSDFh?=
 =?utf-8?B?TUs2QlhQTDNROEwvdnl2djYzd05FU3hLblNOaUlTaTBwWVR5Sm4xMm1nMVl0?=
 =?utf-8?B?U2xlckoxaWljVW5QandDUTNyelNPM21UUTQ4TkpVZjNELzZSQXRpRjJvZ0Qw?=
 =?utf-8?B?cjdzMFEwY2dHN3dLdkRwVEpEVTJuNUQxMjUxczRsMlk1bHJDZURrWWl1MHlv?=
 =?utf-8?B?NzJOb2s4Q2xEeVhGNTFqUGdzWndiRXFVY2JqT0lDYnRYd1MvdS9XaHdUQTBm?=
 =?utf-8?B?ZkhtdytteFVzMVpzUGxYSFA3SEtMbm1OU0w5VEMwWVFQcVlIbXBPczdDWHUy?=
 =?utf-8?B?czFWMm5scm9Bb0w2OVhGTE94bFRnN1ZCZnNmak83a1Q0U3kvc0lyQjN2Tk1M?=
 =?utf-8?B?cFlnNlFBMlc5bzFoWmdkYVdzMnJFd0FzdjExQXRzZ1pnZm5xS3RjM0xLNXg1?=
 =?utf-8?B?UThZQ0JjNmM2aXBYcWZGbnUzY25GTWVISU10RXZJZ3U2YnVGRU1rQTN2dUl1?=
 =?utf-8?B?QjZoQUpScW8zNndIdzB4MGJIWWlOMnp6bk5XWk96QlF1aE5HMjB5ZGZXY1JN?=
 =?utf-8?B?WkZxUVk4NjJOUnF2NXN5UzZpeTBQcWlOeDIyWjhxa1B4ODNleW9Cd3cvS0Qv?=
 =?utf-8?B?MTB4UHhqdzNwV0pGVEhLWUlKRG05MVZhWUR2L1FjNVl1L0g3by85dG4yQ0Ru?=
 =?utf-8?B?NkZnbnJZaUZQK05wUGZRNjZpcGRTUkszVWNDVFF0eklvLzdFdmVDTFZLUytE?=
 =?utf-8?B?OGNlbFVrM0RwOU45cXcvSStMOHJaRmwwMitUR0plQy9SVXRZdW8xTkQxdStV?=
 =?utf-8?B?cDlXTGNEd1Jvams1SlBQYStSNzZKZnVYSVJJam5wSytyQVJXZ1Q2T2RrQXI1?=
 =?utf-8?B?cjdkd213b0VxRE9UL3BmTDgzdzJFUlNBTkJhcVVOZ2dWc2dBTE43T2NhOHpE?=
 =?utf-8?B?Q2Y2NmhyU2xGM0JBMlNRSkl3clNtbGtCbjZoeGx6VGprNFBQRlhzczFmSEh1?=
 =?utf-8?B?SmdKeExLQ1VCSndiem5QT3lWaCs0TDBoejFGL2U0aHlNUHJ0MGRBYWx4RzNB?=
 =?utf-8?B?WjR3K3dodTA0ZnFuc25tVGNQTVhJQm5JVFBBQmxBTVlmckRTS2JkeDMwUlEv?=
 =?utf-8?B?dTlzVzJlM1BCdDdFUzhONDkzcUZ6Vm5nTUpuOXM2NmdMdS9LWW5xeGxPR2JX?=
 =?utf-8?B?N0pOcytYSzZmZFk4aVNKOTBreWNhUHM2MnljTlA2YzFNWWdYZE5vMG1oeEYx?=
 =?utf-8?B?RFRDTmdrWGRVZWhtS3ptUUloVW1zaTRNRWZVNWJaMU44Rlc1cU9qSkQ5WWNH?=
 =?utf-8?B?WXdDdjZyVlRmV25IUWM1TmwyRWtja2h6d3VTU2hQdmFhVW1UL2lxWkxLVDhO?=
 =?utf-8?B?ejRhUTFXdkFqRm40b0Y5bGhoWXBzaWN0YXlOeGhSeW9Dd2xXYnNRczZEbVJU?=
 =?utf-8?B?VTNEWDY2VERHNng4UXdCWUU5clE4dXQ1clo5bVpiZ3VXZm43dzRsTkhTSlc0?=
 =?utf-8?B?Skt6bnFCeG9xUy9OTnhMV29kUUhYakNKVmZLellTdUdiaTdJQzRXZ3RFaE1y?=
 =?utf-8?B?SG0vNmlxZUJZd1F5V1ZmdWNueXhScWFIZ2RFMVdSOC9HOVpKeVphbVFacytB?=
 =?utf-8?B?S2xJcFZtUWVhcjRaZ2hwcHpjLzFQZ2lBOW0vWjFDbWlIVlhjNk02L2Q4cERw?=
 =?utf-8?B?NjBIbHNaOGozcGFVcDdSTkU5Wms4bDljVkNRWkV0L3pMcElqbmFGYUZoeVMy?=
 =?utf-8?B?QnBhdEhOUlB3cVdCSGVNcGRDTk9xd1ZMWUtvVzc1ZFN2N1MzS0FYM3NxMWZm?=
 =?utf-8?B?YWZQTEZqcjRPRkxWVmtNYllzaUlYUkNacFJhWWd1V1k0YjVpbGV5QT09?=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY3PR01MB11346.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e908670d-6ca5-47ba-a524-08de84f1de80
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2026 13:25:48.8055
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QO5lLhf4C4R6lN/NTUmjDPdbbtFpflZsHWUgOAFQzj7VJM620Rnwqay2iswmguWuRwgzXEN9WRImA+CA45IK1vsiMitpCXXIB1mN2B08EcA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYRPR01MB12568
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_062557_989942_BDF526BC 
X-CRM114-Status: GOOD (  13.26  )
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

Hi Geert,

> -----Original Message-----
> From: Geert Uytterhoeven <geert@linux-m68k.org>
> Sent: 18 March 2026 13:14
> Subject: Re: [PATCH] phy: renesas: phy-rzg3e-usb3: Fix malformed MODULE_AUTHOR string
> 
> Hi Biju,
> 
> On Wed, 18 Mar 2026 at 14:08, Biju Das <biju.das.jz@bp.renesas.com> wrote:
> > > From: Geert Uytterhoeven <geert@linux-m68k.org> On Wed, 18 Mar 2026
> > > at 13:01, Biju <biju.das.au@gmail.com> wrote:
> > > > From: Biju Das <biju.das.jz@bp.renesas.com>
> > > >
> > > > Fix a malformed MODULE_AUTHOR macro in the RZ/G3E USB3.0 PHY
> > > > driver where the author's name and opening angle bracket were
> > > > missing, leaving only the email address with a stray closing >.
> > > > Correct it to the standard Name <email> format.
> > > >
> > > > Reported-by: Pavel Machek <pavel@nabladev.com>
> > > > Closes:
> > > > https://lore.kernel.org/cip-dev/abp4Y2FVspUgEpCT@duo.ucw.cz/T/#ma8
> > > > 0454
> > > > df129c8cfcbe48d75f3b4abe697925c6f8
> > >
> > > The "/T/#..." suffix is not really needed.
> 
> And after sending, I realized the "/cip-dev" part is also not needed.

Thanks, next time will trim this as well.

Cheers,
Biju
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
