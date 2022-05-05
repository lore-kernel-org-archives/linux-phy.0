Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CC76C433FE
	for <linux-phy@archiver.kernel.org>; Thu,  5 May 2022 18:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AHRYD17QPvFBuPhi0Ol7Qeb+vp9hDRvW6FhAUFg8wWY=; b=NgCjGwmtTA+xIA
	6wnh08gs63oEJNMClqpYUgwlrXMsh9+FMUpeM5I9TOUsad2JPujv2zOzGIirUQcSsKSmzwl9wI5Sx
	qqZVcdP4HAY6Tj8O33tbHmemo3SDUvIyQIkpw6c8d+3GP7XinV3K5+p445N4L28Tj9N+4EtWR1AbO
	Tla2JnBE5tGWADPYHeW6N8ET71vKj4+6eZ+YBKSJheYv/XI4+BFHdh6T9U+P4+mX3rzMiT0Z0Og1/
	nBh5e9xuB8swcLGwWtkP68XZT3MXUcUArUxQHA2znD+1Aip9wBChw8XMNiuxuqLOaTp3ANWHugfXE
	E1zXnycWT0pbb7Sowi2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmgVh-00HOhY-N6; Thu, 05 May 2022 18:47:33 +0000
Received: from esa.hc3962-90.iphmx.com ([216.71.140.77])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmgVe-00HOc2-1C
 for linux-phy@lists.infradead.org; Thu, 05 May 2022 18:47:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qccesdkim1;
 t=1651776449; x=1652381249;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Y8AcrwkJicKVO/PlBEgosDSKNFGQpROLAVtBFdeZFgw=;
 b=ntCVuTkT0Rz76tS2/PaDR33HomviYBV8E7lNUK6CKRLe47roQ+Kv2F1q
 44hlkBhBx9imq5pMcZnXUVLdGqFDCLFI53p/yw8Kg4WPt5mDx1znjQ+z0
 ECk4NApVIv1TORjUhc6NeIHVAb8bkg7cgwNbl5AD3JF78er7b6Lmp1S/O c=;
Received: from mail-dm6nam11lp2169.outbound.protection.outlook.com (HELO
 NAM11-DM6-obe.outbound.protection.outlook.com) ([104.47.57.169])
 by ob1.hc3962-90.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 18:47:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RuPLAqyq1CFdsZ8d5PlYhhR7M9QQkTXcwi1T17m/XBa4W773+g0qVi0AImZ8iwdIlTVj8dGF7ZQjFdnFquOkA2+Iw2oW+BKROoffcQ5XxQp9p7hrTwpvg80ABbelGDBzNGmIJ4BW+HABF7VBDD4GPo6KgQW+P2YaMyelcvyrlwSngZ8LuGu+GtAwfm+Az8Jyg9fz09tsWhHKxL8XySlSvnuc3FiR1d6Yu3RdSsLtkrzl0+n/jGNzuMzj09CyJkP0qLaeqf5IM4nQo/fK7uSogSFbzjMyzD395itY6jnVdxE2SajIKM6KHKFTLVATjB/9gKCqnlCSmuMM20dwngRi2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y8AcrwkJicKVO/PlBEgosDSKNFGQpROLAVtBFdeZFgw=;
 b=NJJcuMdMCl4UOtcJVTqcP4u4SNCFhVL0Tg75cnUBb+3jFuuQ6UEndozF9HSjLsq1qwfnv2p46Ny96pwJ5v5/y3HV8YIbYN/Z2+B5CrqX05aXWYLlevgUu60atHXQv/JlOGJmUEYFLGwgGj2Cysq2JJ0uu4rt6MsyQT5X/I9HNPQhdY5CdrbLBRmKcZKhinIiSoAsHA6cntspM/g8VcZjL2NZxdx2DbM81iDj4iW5Fw/pjvnJUR0rimi8TWA2+fTuvb9ZsD60LKeUhR9iGX57wgcBdYxbYM0ZoveHdN1nfn99IFB3WT2ApTOB3WwmQ8fCqU3/NAJgHSseAX5/FA6MvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=quicinc.com; dmarc=pass action=none header.from=quicinc.com;
 dkim=pass header.d=quicinc.com; arc=none
Received: from MW4PR02MB7186.namprd02.prod.outlook.com (2603:10b6:303:73::6)
 by DM5PR02MB3704.namprd02.prod.outlook.com (2603:10b6:4:af::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5206.25; Thu, 5 May
 2022 18:47:20 +0000
Received: from MW4PR02MB7186.namprd02.prod.outlook.com
 ([fe80::1d18:abb7:c311:543f]) by MW4PR02MB7186.namprd02.prod.outlook.com
 ([fe80::1d18:abb7:c311:543f%4]) with mapi id 15.20.5206.025; Thu, 5 May 2022
 18:47:20 +0000
From: "Sankeerth Billakanti (QUIC)" <quic_sbillaka@quicinc.com>
To: Stephen Boyd <swboyd@chromium.org>, Doug Anderson <dianders@chromium.org>
CC: "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "dmitry.baryshkov@linaro.org" <dmitry.baryshkov@linaro.org>, Rob Clark
 <robdclark@chromium.org>, Rob Herring <robh+dt@kernel.org>, Vinod Koul
 <vkoul@kernel.org>, "Abhinav Kumar (QUIC)" <quic_abhinavk@quicinc.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, dri-devel
 <dri-devel@lists.freedesktop.org>, freedreno
 <freedreno@lists.freedesktop.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 "Sankeerth Billakanti (QUIC)" <quic_sbillaka@quicinc.com>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm
 <linux-arm-msm@vger.kernel.org>, "Kalyan Thota (QUIC)"
 <quic_kalyant@quicinc.com>, "Kuogee Hsieh (QUIC)" <quic_khsieh@quicinc.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>, Rob Clark
 <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, LKML
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 1/2] dt-bindings: msm/dp: List supplies in the bindings
Thread-Topic: [PATCH 1/2] dt-bindings: msm/dp: List supplies in the bindings
Thread-Index: AQHYWOh0LkcVWva+fESk6uZPP3V7t60BIRCAgAABL4CAD35OcIAABpoAgAADzZA=
Date: Thu, 5 May 2022 18:47:20 +0000
Message-ID: <MW4PR02MB71867A18732B266DE8FA2040E1C29@MW4PR02MB7186.namprd02.prod.outlook.com>
References: <20220425210643.2420919-1-dianders@chromium.org>
 <20220425140619.1.Ibfde5a26a7182c4b478d570c23d2649823ac2cce@changeid>
 <CAE-0n51eZpAKprRQ0HqjLciF_BVQHBDN8SMFNVmmOd=B9UBEzg@mail.gmail.com>
 <CAD=FV=WmVK3wTQf_EAxSi0WPXedSFGCsKdyqRnHsskmMYTHDQA@mail.gmail.com>
 <MW4PR02MB718610FAA14F966ADE1B1585E1C29@MW4PR02MB7186.namprd02.prod.outlook.com>
 <CAE-0n51Q=cGwrMec3JEQENqWHV3pAUjLPT6RwZLA5xV080sgxQ@mail.gmail.com>
In-Reply-To: <CAE-0n51Q=cGwrMec3JEQENqWHV3pAUjLPT6RwZLA5xV080sgxQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=quicinc.com;
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a25f7260-ded6-4afc-4217-08da2ec7af9c
x-ms-traffictypediagnostic: DM5PR02MB3704:EE_
x-ld-processed: 98e9ba89-e1a1-4e38-9007-8bdabc25de1d,ExtAddr
x-microsoft-antispam-prvs: <DM5PR02MB3704564FA513AE3B5679BC219DC29@DM5PR02MB3704.namprd02.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gUl5pJrT3P6pllD1iYt8zrpqWCC695vVifHDIk8lR2iHKb/6pTYOR/yY1nr5T1ARxUQbJ++7WuCn10hdRzcp3WifvwlC+Ypj/UnPvACSDIGJ8zFmrfJChekHa6xUPVdatUyftLgMRYjCj+swVt0bbQ10T/85rcKxI4FTnHzu+ZVpX81BEEO1VkG7ryJoV9bqPS3ycImRRLFzj2vqUah/GHu5j4dFsugPwIESIFzTvIm1bfIcZHyTIsp2zg9f24ldB37/hbVQ7+c3EPkpEBKrO0lI8kuEogPKtQqVYItiyed07wyyhkXmG6HZ46mT6Ojm3KCnYm5yOMQv3wDHGeLep/pQ91Vqctd9CKEA/TtmRYI8bnt82ik28jX8UJJ44Ecs+fV9+tigcNFRZv1LUMxnv01BhPI5IBqBApDKLEAy/71UJQVLkkP6RT7MNeOkZnuNm/hZunulmXCtWHq+r/XiQ2phLAQlEUdPQBia18gsctAxHxMU20pNitNoX8msPmyGO46b+Dy+u+qz+L9/b93dvFlT2RMmWlRWvW2jiyDjciUdhY1UTFpIxtK0cLiqDOwdnZtCtNpZEYZD4vNw9IzJVuLvNJckwn0FGQtJdsHksgJeBT6HZLubS6me3KnhOhZStw1WEkPNKzKLjfxtV1KiXi1gtbgw2W9l9e/sVWSjaYkcHAURXJH/R4D2Kyo97QbfTFJtKwZ0ivNaIK+dvgnaSQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR02MB7186.namprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(186003)(6506007)(26005)(33656002)(7696005)(9686003)(122000001)(8936002)(86362001)(38070700005)(38100700002)(55016003)(54906003)(83380400001)(110136005)(52536014)(5660300002)(7416002)(508600001)(316002)(66446008)(66946007)(66476007)(64756008)(71200400001)(8676002)(76116006)(66556008)(2906002)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WGZoQll5UXlvQ2dUUTYwY1lxNmQzSWpUMnJvQ2JLTFZLZ3dYRGw5dUN4TmlY?=
 =?utf-8?B?YzV4RXUvcWlQcHA1elZTMUREL0ZucUdmdGxVNWd1N2N3S1l1VnU2dmkrZ1l0?=
 =?utf-8?B?TDFMS2JYSWw4Z2xLdm1ia2dlcm9DMGE3ZXQ5Tlh6NzYzNmVaaEZpMlF4K2l3?=
 =?utf-8?B?N1BRRlFVUUtYNFQxVXhnKzJ0dG01aWlNSU1aUzNhRENEMkxFNHNaYWpWRGtv?=
 =?utf-8?B?WHFxelAwM2RIbS9xVll2enRFN2kvdDhlWUV1cEE2K1NQQUpvd2xlWkVRb3Av?=
 =?utf-8?B?enNKT1k2NERsSzRONGFiNXY4RDRkeWJMVEFTZ3hGNmZIMHRMMmpZS0JUMlU2?=
 =?utf-8?B?VlR2T3kya2RWMHB5ekpqc1Uwd3lIN1NKaTFQKy9HYXNCZ1Q1TlZqSmtROVNi?=
 =?utf-8?B?SWFWbGorVXU4SHFWQXB1ZGdZK3lUS2k3WDB1MCszTDh2QjRISjdtZmtsUzh6?=
 =?utf-8?B?dTBLRlVHSzhtYmlwMGRDS01wc0JLdmplM0hnMEljSW5ObytFdnpZS013S0Ey?=
 =?utf-8?B?V3RQYjJ4TjNVdmVxQlJtS0hIZzVBaS80UnhrdDlaV01kT3VseStKZHRNZWFD?=
 =?utf-8?B?YUhON0YrMGtqM0lNbGc3K3JpRFI5RFdMSFNjOVdYbVNZREdyb0tTRFkvVmZv?=
 =?utf-8?B?WitGbmQwRXV6Qzh4ZjhTVEVVd2NuakkvN0dYODBFOUhkT2M3SzlyOG5CM1dI?=
 =?utf-8?B?czRUYk9kdHY2RVl0TFNIQzNrcWRLQXRIWlY2d2dsK21uVUlBMVRBdXJDajJr?=
 =?utf-8?B?cGVZSUphUTVBRGtxRVRkWmlCNldJQXpBMjRjN0d0YnpXRTNqeGVJRklDZGh4?=
 =?utf-8?B?bzkwOW5Nc3BpdmFKY1VjclZaOGJteGxZaHU2bmNodGFHdmxIWWhDUStHREdF?=
 =?utf-8?B?RXFGQ3lBWDI1ZkwxS0FSN2tpQ1VWN0dXN1krZGpveHVTc0tqdHZ4NVJXRDY2?=
 =?utf-8?B?bG5sR09IOElST2xSKzVnSUVvL3A3ZGhTUG1yTDhBWWhTZXRPWng0cllONldK?=
 =?utf-8?B?QkEvKzAvcEJ6b1ZNTGwwOVh3T3VaYXpJU0xGNFVMajVJR2daRUo1Y2N4UnFj?=
 =?utf-8?B?SWRYUWZNNnRUN1A0WDFNYmVyUXh2dUloM0J4b3NMQWd3THg1eklpOXlrU2JB?=
 =?utf-8?B?d2svbjBkWEU0ZUxnQThyaHc2R0w5QkNDZ2JvWGpkWVZMS0hLbDlOUDFTWWxs?=
 =?utf-8?B?ZFUwZjJMN3lscXRrbmNteTJSZnN2dlREMkp3N29DMzI0dXNxeXN4Q1VRUkVs?=
 =?utf-8?B?Z1VvMkxMRFpLRXRIc1J2V3Z4a0pJSFVkOXRkWnNRdlJGQVRsN2d2cXBIaFh0?=
 =?utf-8?B?TWxiZVhkb3h1STJkMHJhMjRUNlFRRmJMSnJ0a2tZcXdjM3lQblpiQkc0c01O?=
 =?utf-8?B?RXlBT0lKUnQrOFFCQUd5NkY4REN4RFhMRDM2Q0dxQmNxaTZJZXBtNnVMcnFv?=
 =?utf-8?B?d3Fwb0ZyWm5PdkVScklGSEkzWDVYT0tHMVZ3WXVhZHFsQlBXcTljQmxOOVBp?=
 =?utf-8?B?TkYrTXFreFlGWjNWbUdkNVRaTFZ5cDZ4OEFuZi9RRUV0ZERxUVRjeGNnYTFo?=
 =?utf-8?B?eXI3YVFSbzVBckN3RkhYcWliSHhFemFUNlRUb3d0SVVDd1hoaGk2Y2Y3NDVQ?=
 =?utf-8?B?N0VqWEF1dVpER3p5bUMyV21Na0RLbjQybHlzekUvLzFzZE5WaUJRb0xCV05L?=
 =?utf-8?B?SSsrc3BRQlYrdWphdjlrS2xXcElYZi9rU2pZVjhlWURJU0tFUzdxT1hpWGln?=
 =?utf-8?B?eTJMSlNGYjJ1Zk5meHhud2dzTmxyR1JReFdIemF5M1NuTktubElUallWTlpw?=
 =?utf-8?B?STAwR0YyU0QxQk9TT2dnUjJJcHVqbk5kaTMzWU0yRG8xWjBzMEJ4bUk0TjFB?=
 =?utf-8?B?YzhwNUxKR3VIMjRHNEtZdjJQUGJVOHpPcTRJa0xYa2F3dTlUUFBLdHEzOFRF?=
 =?utf-8?B?Z2RPYzZkTUtwVXAvcVpnRFM0djI0UGxIVnlqaEFHaHUyTkpvOG1uK2RvQWtj?=
 =?utf-8?B?MTZvcEQzZzhoRzA2a094NmU2Y0QwQkhvdjBrZGZNbVZORzZqd0x3Nm1yaWxw?=
 =?utf-8?B?MG9waTkzTzlBWlNOYWZSSVV1VW9TSnp6RFNBSWdobnN2N3RvZWROb3E3Y0lw?=
 =?utf-8?B?SEI0RExlS2ZSLzJ3b0VMZFIzOUZYNlFSSU9xS24wdzdBSHFKV2RGa0pZL0hG?=
 =?utf-8?B?NUNTOEtMZUZSNmJJcWhJQUFBbmlJVVd5OUhtQTNSUEpsWlFLVTZDRjNYcUY5?=
 =?utf-8?B?by91QWZud2VnTFpHUWI2OE1ta0xYeVRGN2NLWUNQQVZBRmtldEcrYlAySFo1?=
 =?utf-8?B?MmNUZm01dVMrZFVNbmVUUnowNnhOSWtxOHhlUlh4cWVtdVpCTG1LZz09?=
MIME-Version: 1.0
X-OriginatorOrg: quicinc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR02MB7186.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a25f7260-ded6-4afc-4217-08da2ec7af9c
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2022 18:47:20.5500 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 98e9ba89-e1a1-4e38-9007-8bdabc25de1d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1lvC3a1lWP/vHW+GTclxsOIq0A6SSa7FtkG2OJoDA2wh3zJZClfe3MLb5ibANDqqlWntCUS8Wu7lkR4B0vZao6HddPeGSMV6d/wK6y3xKyg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR02MB3704
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_114730_222522_87C00BDD 
X-CRM114-Status: GOOD (  18.37  )
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

>Quoting Sankeerth Billakanti (2022-05-05 11:02:36)
>> >>
>> >> Quoting Douglas Anderson (2022-04-25 14:06:42)
>> >>
>> >> Having 'a' in 'vdda' typically means 'analog' for 'analog'
>> >> circuits, so I'd expect this to only matter for the phy that
>> >> contains the analog circuitry. It would be great to remove the
>> >> regulator code from drivers/gpu/drm/msm/dp/dp_power.c and move
>the
>> >> regulator_set_load() call to the phy driver if possible. Hopefully
>> >> qcom folks can help clarify here.
>> >
>> >Interesting. Oddly enough, the sc7280 datasheet doesn't list the "_A".
>> >It calls these "VDD_VREF_0P9" and "VDD_VREF_1P2". However, on the
>> >schematic in front of me someone labeled these pins on the sc7280
>> >with the "A". ...and the driver looks for a supply with the "a". :-/
>> >
>> >It would be good to get clarification from someone with better
>information.
>> >
>> >-Doug
>>
>> Our internal power grid documents list the regulators as VDD_A_*_1P2
>> and VDD_A_*_0P9 for all the platforms.
>
>Do your internal power grid documents indicate what these supplies are
>powering? The question is if these supplies power any of the logic inside the
>eDP controller or if they only supply power to the analog circuits in the eDP
>phy. If it's the eDP phy only then the regulator usage in the eDP driver should
>be removed. I would suspect this is the case because the controller is
>probably all digital logic and runs at the typical 1.8V that the rest of the SoC
>uses. Similarly, these are voltage references which sound like a PLL reference
>voltage.
>
>Please clarify this further.
>

For the DP driver using the usb-dp combo phy, there were cases where the usb driver
was turning off the phy and pll regulators whenever usb-dp concurrent mode need not be supported.
This caused phy and pll to be powered down causing aux transaction failures and display blankouts. 
From then on, it became a practice for the controller driver to vote for the phy and pll regulators also.

>>
>> So, as a practice, we put the same name in the DT files. Hence,
>>
>> Reviewed-by: Sankeerth Billakanti <quic_sbillaka@quicinc.com>
>>
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
