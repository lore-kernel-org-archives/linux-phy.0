Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0BD4C6FA82
	for <linux-phy@archiver.kernel.org>; Mon, 26 Sep 2022 09:15:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ovmQZyA2Vb626rwszR2g2zMYUJK4eNniRZUBjODbWcA=; b=aEMcV1p9+FNX2Q
	RVGRdHNLdxpzOq9F0brujhBDh5BP1QXyCQL8i2//rfNe3ryYwAZvxCKHOrts4S1FmEQQYZm3KYyS8
	DTjVPRDI/qcmrfqV3CpmBv5pJ1QhMksbliTbgAYv8spAzALpijKf1VzUGdRSWvvMHhOxaIOxlh0+0
	IES8O5Y1cb63GN+Ul2xm6G+29bKxFIAkoLz87qLq6IkiKijnPIfbOVo0CX67TqqglJIkFWDogyHd9
	UMKiwyRbYkg91cl2YNLPM8MGp61M0HRpC8sF+4zGhcSp6aQyNZ9jnkXvhH2+7ai7NBdFfGLz9zbcv
	jXCw6Uzv6CU3ItscoIlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ockCj-003WLv-Pk; Mon, 26 Sep 2022 09:15:09 +0000
Received: from mail-tycjpn01on2106.outbound.protection.outlook.com ([40.107.114.106] helo=JPN01-TYC-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ockCR-003W7L-Rm
	for linux-phy@lists.infradead.org; Mon, 26 Sep 2022 09:14:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KB5JUiSVTc/mfEV4GWacJp6qkRbwAYhunOypJoxK89063kZ56d4Zdl+5WfNmMYVcl0scTITINoe+B13vOHIsCKULcpZUcgD6xxwQFRKOWQZelbCIKv0k2ldl+cVb38Ow53MRhO9121DlzBr4pIlRoK4r6lkIXdv+6UIuWcYUPx5hX4MK9VwjNxm+NPUcSezIYqe5W58B7HLwiLl7dqbQ9HrnbANPtLKCFgo1932qRSAzAm2h9qlTLW35dJ1USWdh0zxnryP/4070gHrUDi3/z/uatkmYYA2rSBA2COrcIzwCZv4dF1sFZO7LipxVZ9VUIKJHCQm3WwDpBnzl/NB/lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/45vLiuHMtwzsqIb3LFNAvIBOKnRr5g2nyvb+900zag=;
 b=J+qvf3UoBmhmshfkJgvCWdjZF/2BpvMrWvMpAgRMQPTPY92Cd9+RW2JF8ka5YfsngoxFQNf8Bz4+KV6yEsZi0cg7AhDs5Ehptg0Zl7kfru5iLVsBl1AInmuDyHQ/RuEs+G7MOYEQFjqeII2qzZIM+n/MpWwjoxlXk40p/WOGKrhkmCfk6SMpFAiej1dTOLnuCEOxUbBdSMbwGKK3o4svBfFxpW0z02t5UQdClt4i36Rt56dTf2Bc9JInKSTQAQokWTLb7E1MSdHrTxpWIEsUjkQaTdJHEti8FbBtD+31Mc9/aKSI6RyIlZaKYAypik67xwj70l27RduZ2xhtYSdXoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/45vLiuHMtwzsqIb3LFNAvIBOKnRr5g2nyvb+900zag=;
 b=L2OzxyXPcfqWbTJz/SZqOWa4tHnxe5vr6qCUjvmB5yy+xziG6B8MT+hmuvT8z6LKgZYRUSbcMFlpNmjIfpk1CGquCyPPWkL6bun+zd/8AQ/tiHQ2ScLiqH7QgCp07nMkulauqgEnFd40YwV+ynJoOsSRhqv/nKxarumskurDNFU=
Received: from TYBPR01MB5341.jpnprd01.prod.outlook.com
 (2603:1096:404:8028::13) by OS3PR01MB7777.jpnprd01.prod.outlook.com
 (2603:1096:604:17c::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.25; Mon, 26 Sep
 2022 09:14:43 +0000
Received: from TYBPR01MB5341.jpnprd01.prod.outlook.com
 ([fe80::2991:1e2d:e62c:37d0]) by TYBPR01MB5341.jpnprd01.prod.outlook.com
 ([fe80::2991:1e2d:e62c:37d0%3]) with mapi id 15.20.5654.025; Mon, 26 Sep 2022
 09:14:43 +0000
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, "kishon@ti.com"
	<kishon@ti.com>, "vkoul@kernel.org" <vkoul@kernel.org>, "davem@davemloft.net"
	<davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
	"kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
	"richardcochran@gmail.com" <richardcochran@gmail.com>, "robh+dt@kernel.org"
	<robh+dt@kernel.org>, "krzysztof.kozlowski+dt@linaro.org"
	<krzysztof.kozlowski+dt@linaro.org>, "geert+renesas@glider.be"
	<geert+renesas@glider.be>
CC: "andrew@lunn.ch" <andrew@lunn.ch>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "netdev@vger.kernel.org"
	<netdev@vger.kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-renesas-soc@vger.kernel.org"
	<linux-renesas-soc@vger.kernel.org>
Subject: RE: [PATCH v2 4/8] dt-bindings: net: renesas: Document Renesas
 Ethernet Switch
Thread-Topic: [PATCH v2 4/8] dt-bindings: net: renesas: Document Renesas
 Ethernet Switch
Thread-Index: AQHYzZbyqNqCKbNV30+Ykc0QZw/71q3rESYAgAYuSTCAAA3MAIAAJx+g
Date: Mon, 26 Sep 2022 09:14:43 +0000
Message-ID:  <TYBPR01MB5341B5F49362BCCF3C168D11D8529@TYBPR01MB5341.jpnprd01.prod.outlook.com>
References: <20220921084745.3355107-1-yoshihiro.shimoda.uh@renesas.com>
 <20220921084745.3355107-5-yoshihiro.shimoda.uh@renesas.com>
 <1aebd827-3ff4-8d13-ca85-acf4d3a82592@linaro.org>
 <TYBPR01MB5341514CD57AB080454749F2D8529@TYBPR01MB5341.jpnprd01.prod.outlook.com>
 <d31dc406-3ef2-0625-8f5e-ff6731457427@linaro.org>
In-Reply-To: <d31dc406-3ef2-0625-8f5e-ff6731457427@linaro.org>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYBPR01MB5341:EE_|OS3PR01MB7777:EE_
x-ms-office365-filtering-correlation-id: 7950c379-85cb-4b33-eed7-08da9f9f8ca6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  4E6IDPaZk4vDdDZFSVNJzm8bWSJohNay8U1OAs8louQjZpC5+uoxCkF6Xa7b74frXELZ9hNC1iCuIbIhRnoo1fsEyMELgFyu//m0jAQKmLm8vyZD3k3OLZMKVDITODbrInga7mneVm1xdeyyYMOsfWOgYB83PcMCRZdisO883si/uZnYeC44m32CEznSxkBIHE7b6sjz2GvkfIUmKxdWBisDzenzU65Fl42QmEL5Eo1odBwvGlumUhrCWYmyK6aKibElgoEnTYfQvnaZVJy3Qe23qhZyF7dz6p2C0pKMEXUiqN68TJaVgDZeNxt3/v3xDcfFoUzHiAaNkYFzQpMo7s17/xbtd1lmWo7RV9Ru9CrC9sc9HKG9BXz3zTLc5q+9GWU2iCpSYtGkig3FwV52rL/uLcjWBE3pV8UM9WBNxVMjGTHbDXAKBfsJSApUa/5j2xzXCe/GdZOtifdvnyB6qd7n2oeu7eFlmXamb/s0gnUDRhvzw9Xxtv0n3alWkPZL5Wbp2V4zXl/GL6YK7uCrBLpaNID2Z/rPgx8CxiLkIncdvUuE+wWLPe2/fbAeBilAgSBmvQWJlkm9VjsmiIs2eqnhSCI5Lw70OKV0R7Rwaas+qvfzyujCPwtVoCB5nwKIKEoN3dZHUaAX58IIjk+qBL1oNd+LPhvN7g4VqY929Hd7gn36nNZSh3Cyg812HUPvgmdAS5HPPlBi6x/Mqw4qnvCyfEwwxWXsBp4WikLQOFJn7/uXfA4AtuJ8HwPHjwx/MS9JueGkDw9xEyiAUs4dBA2w3R037tUGXyrfhSj+Ubg=
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYBPR01MB5341.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(376002)(39860400002)(136003)(396003)(366004)(451199015)(33656002)(55016003)(71200400001)(41300700001)(7696005)(9686003)(186003)(83380400001)(38070700005)(52536014)(921005)(5660300002)(8936002)(7416002)(2906002)(86362001)(38100700002)(110136005)(54906003)(66476007)(122000001)(64756008)(316002)(8676002)(66446008)(66556008)(478600001)(53546011)(76116006)(6506007)(66946007)(4326008);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?utf-8?B?SU5LeHpHVmk1OWUrZWpWbURuZDZFRDI5amNjUFpFSHJQenhQbjJwNHJ2cEdE?=
 =?utf-8?B?ejhnc0ZJMVQ2MHhqTEIvVVdseTd3UTBQMXlicnZnVHUyeGJvR2daZm4wOVQw?=
 =?utf-8?B?UEFjbHdwSjJGVjZZUERvQ1IxbjJyK2hpRHV2NU1aMjU5VnQ4SkYzb1hybHdv?=
 =?utf-8?B?MFA1cGpKOWEwSWJ4N1liYUNJbDRzTSt4bTNUVVEreFhLL25ETW1wWjFockts?=
 =?utf-8?B?SlJpZTdDYmc1THRpSThlV3lRaFByem4ySzdnNlZDUXRKZytNc2JYclBUeUVG?=
 =?utf-8?B?ZkY2eitBakhkbVl4N01VUWw5ajdBYmdzSU1kUjZjcG4ySlNkUFhlRGtENFkv?=
 =?utf-8?B?RFVUNnhpa2RCVG9lM3h4SlJ4VGx0cmMzeXJHYVFSby9Gc2dzcERrQzBuWjM0?=
 =?utf-8?B?NDlsRlc2S0JwMzZoZTE1RlhFUXNlZDMvRXFabmc3dGc0LzYzOXVUUklOK1ZU?=
 =?utf-8?B?cWJpcjRUd3JLT0tYOEhuR3U0YWZQQXJxOGorQWwrY0dEU1JWWDZrUlU5Mk91?=
 =?utf-8?B?Y3VaaVZkeDhnaEdIL21XUGhTWVRaQll6VnRpYyt4bGpjYmxlcnZyUGQweXlJ?=
 =?utf-8?B?RnZWWElES3NRSnhaY3RtTEVnMmtCRHRJZWpNNCs1VjJnRm0vdW9wcU54RGh5?=
 =?utf-8?B?S216aG9uOVdwOTBSbktxVzFwb2pXK001d2VyeDVnTE9Dc3I4WitKaWdxZVht?=
 =?utf-8?B?UG5Jem1lekJQU2gwd3g3YXRuV1QwSmpuWFc3TThTY2I3RmhDdFk5RFFLcnBU?=
 =?utf-8?B?bzJsUE9VZWROOFlJdFhicm1ORlQrQi9RU2lvekVIQlY1VjUyalhnZk9xUVI4?=
 =?utf-8?B?UXJuS3V4bFFGbEpZMjRhdkdpcDNjWjdrclZqZlFVMkdGY0ZvM3VJcUhhNFhr?=
 =?utf-8?B?S1B3bzM2bGI5TGtER25jZklLNnAxOEpyYmNXTlpXY0VYSExtUTZRVjFyZkI5?=
 =?utf-8?B?Y0lPUjYxVFV2cHhQYnd2ZTFMa1V0cDBoak53Z2VQK1AzV0NtbFdPaHdQTnQ4?=
 =?utf-8?B?NTBJTHBab0ttYlF4alpNaWhPVmdHTnhkTzNmZlJoc29GRFd1eEdQMXBnZEVp?=
 =?utf-8?B?Nk9TTS9JVzhwWkgyNmV1azU4MjAyT0pCRlhjTnB5VFNERXZjeEduRjBzdmt1?=
 =?utf-8?B?NTVaTXRJYmVCcXBKTTdsTTl4SUcybXFaSEFjQjM1bG1RSERwOUF3M2xiS1Nv?=
 =?utf-8?B?enpjWk5rR2o3NXMvdGFsTUl1em9RbVpSd05hdEVMVEI0V3BLWEN4N0UxazRz?=
 =?utf-8?B?dUhVV204MHRQQUFlSjZaSUxTcFRkdkNPajNrN1E5dnY3cmhsL2VqTFo1eWs4?=
 =?utf-8?B?VTNOUTBLcVdWS0JaVjJza2xPaDk3SFRWY2RTVWJkbUtEcFErSEN1ZVpGWlFL?=
 =?utf-8?B?OE9yZkV1ZWxqNWdUbHlRd0x5aXNhZ1grSDd0dnloQjNIU3RMMVROZGgrT2k2?=
 =?utf-8?B?b2FvRitFOUhVcGZXNU5jYlhCMTdGVW1HQ0JnYUs5NUxwSjhVWmdSMmZCSUZK?=
 =?utf-8?B?WDVLVzlNNWRVZkRsZWJnV0l0QmcrZEtDWVU2U3U0L2ZIckNsTXlHdzNvS3gx?=
 =?utf-8?B?RmRrMDRFS2dVYnoyV2tONjZ5dHRZdTNwSHJtalB0Z2hQcGVCbkFtaHpxZitL?=
 =?utf-8?B?ajkybkdQdjNOZStody8rUjdVTG90ZkJJbS9heXEydUgxY1VndStuczMxeDg3?=
 =?utf-8?B?MGYwUHFtN2cvTjMycFdGYUsxdkkvdDlkQzFZbXVDMGpFNjBRaTVrNTQxTFBq?=
 =?utf-8?B?L2tCdXh6eE5kUGdpOCsrbDdoTHVCd2RkQmRXQ0VycUFTb0I0VWw4RTdKd2Mw?=
 =?utf-8?B?VFF5UXJ4b2FOUjMveEpBWERQeGVPQ0ZiMHdpOGNGZVB3eHcxMkhnbnVoUnBr?=
 =?utf-8?B?OWp1YkZrTEI3RXNNUU92NTFmWGdzRXVhQzlwSjZNN1l6bU80dDFpSm5qRXkw?=
 =?utf-8?B?Z3B3SWtjRmZ3UyszTXNnUG9lVkN6SDkyRzZYMnpsSEQwL0tTb0k4R1lzWlVZ?=
 =?utf-8?B?UDFkSWVrcUlCeUF1bkVHYmdBOFFlWjlXSC9uTlVNKzhiYmpzTnJ0dkRRRE9S?=
 =?utf-8?B?OEpCb0VNaWswbW5LNW54WnRJcFl6WGlnMVppam1kWHphMkpjdUQ4cXIwMWlF?=
 =?utf-8?B?N1pyT3RYcWdxWmp1Tk9iWW04UzlhTzNLeVpnOXhsbXFSV25EWTAvcGdCVlYx?=
 =?utf-8?B?ZFRha3M5ei9ZK2FyeEtlZlNISXgzTW1LMTBKdDFxRG4zejQxMjM4d1ZEM1dn?=
 =?utf-8?B?M2VWekdPNVZJQ041OGc2SEppVHd3PT0=?=
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYBPR01MB5341.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7950c379-85cb-4b33-eed7-08da9f9f8ca6
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2022 09:14:43.4088
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +Y+GFqwpoSDEztp73mZW5ExOylfVI93tc4dpKaMSAFp4AEs1KtqHU2fjQ6M7e2PzmvUl9L+KPKJw9mYffOoNY85tNztaRwJFtltvjVmRyJ0qRPThQ95I5SwLDY1prH/a
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS3PR01MB7777
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_021452_374522_FD3FD105 
X-CRM114-Status: GOOD (  20.52  )
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

> From: Krzysztof Kozlowski, Sent: Monday, September 26, 2022 3:50 PM
> 
> On 26/09/2022 08:10, Yoshihiro Shimoda wrote:
> 
> > I'll add a blank line here.
> >
> >>> +      '#size-cells':
> >>> +        const: 0
> >>> +
> >>> +    additionalProperties: false
> >>
> >> Don't put it between properties. For nested object usually this is
> >> before properties:
> >
> > I'll drop it.
> 
> Don't drop, but instead put it before "properties" for this nested object.

Oh, I got it. Thanks!
I'll put this before "properties:" like below:
-----
  ethernet-ports:
    type: object

    additionalProperties: false

    properties:
      '#address-cells':
        description: Port number of ETHA (TSNA).
        const: 1

      '#size-cells':
        const: 0
-----

Best regards,
Yoshihiro Shimoda

> >
> >>> +
> >>> +    patternProperties:
> >>> +      "^port@[0-9a-f]+$":
> >>> +        type: object
> >>> +
> >>
> >> Skip blank line.
> >
> > I got it.
> >
> >>> +        $ref: "/schemas/net/ethernet-controller.yaml#"
> >>
> >> No need for quotes.
> >
> > I'll drop the quotes.
> >
> >>> +        unevaluatedProperties: false
> >>> +
> >>> +        properties:
> >>> +          reg:
> >>> +            description:
> >>> +              Port number of ETHA (TSNA).
> >>> +
> >>> +          phy-handle:
> >>> +            description:
> >>> +              Phandle of an Ethernet PHY.
> >>
> >> Why do you need to mention this property? Isn't it coming from
> >> ethernet-controller.yaml?
> >
> > Indeed. I'll drop the description.
> >
> >>> +
> >>> +          phy-mode:
> >>> +            description:
> >>> +              This specifies the interface used by the Ethernet PHY.
> >>> +            enum:
> >>> +              - mii
> >>> +              - sgmii
> >>> +              - usxgmii
> >>> +
> >>> +          phys:
> >>> +            maxItems: 1
> >>> +            description:
> >>> +              Phandle of an Ethernet SERDES.
> >>
> >> This is getting confusing. You have now:
> >> - phy-handle
> >> - phy
> >> - phy-device
> >> - phys
> >> in one schema... although lan966x serdes seems to do the same. :/
> >
> > Yes... I found the following documents have "phy" and "phy-handle" by using
> > git grep -l -w "phys" `git grep -l phy-handle Documentation/devicetree/bindings/`:
> > Documentation/devicetree/bindings/net/cdns,macb.yaml
> > Documentation/devicetree/bindings/net/cpsw.txt
> > Documentation/devicetree/bindings/net/microchip,lan966x-switch.yaml
> > Documentation/devicetree/bindings/net/microchip,sparx5-switch.yaml
> > Documentation/devicetree/bindings/net/ti,cpsw-switch.yaml
> > Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml
> > Documentation/devicetree/bindings/phy/phy-bindings.txt
> >
> > And I'm interesting that the phy-bindings.txt said the following:
> > -----
> > phys : the phandle for the PHY device (used by the PHY subsystem; not to be
> >        confused with the Ethernet specific 'phy' and 'phy-handle' properties,
> >        see Documentation/devicetree/bindings/net/ethernet.txt for these)
> > -----
> 
> Indeed, seems ok.
> 
> >
> 
> Best regards,
> Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
