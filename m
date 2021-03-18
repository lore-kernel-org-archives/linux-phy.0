Return-Path: <SRS0=ZbHx=IQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 513FAC433DB
	for <linux-phy@archiver.kernel.org>; Thu, 18 Mar 2021 09:58:20 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B79F264DD8
	for <linux-phy@archiver.kernel.org>; Thu, 18 Mar 2021 09:58:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B79F264DD8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=cadence.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KXafzRA3+VbVXwC83zPFfBe9lNtnvMPjI/Lkbd99rLk=; b=qB34gdFSVLIZ+3mKp82U66ZDP
	stiC9njbtEDXH4hr4f8x4FrGGNKbAsbWh0abegeDskOWSeewS8VcHtXg57ZtvGFxnlnGiUalc4HRU
	hOtS+BuY+urtqgl5u6x+2I46Ke0cC6t1dacSs0fd1w1cSWY3gEhz/mWcf9CxLY6C9FqsfCjd0WYpM
	SK8IwqoWclfIBL93NT9HA0Bd3C4tIN0AoOYHBlziM3cTbj9vofj85o+YOIxnGGXTQ2X9PZ5LDHz2N
	5FrqFGHnaCsOi2CzhKykO6Jda0SfeA6JPN8B9Q618mik4f74wPnTYr5q9hpB2YiUEm0uszylHwEbl
	GF+r7RImg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lMpQ1-004xCH-Uu; Thu, 18 Mar 2021 09:58:18 +0000
Received: from mx0a-0014ca01.pphosted.com ([208.84.65.235])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lMpPv-004xBW-OL
 for linux-phy@lists.infradead.org; Thu, 18 Mar 2021 09:58:14 +0000
Received: from pps.filterd (m0042385.ppops.net [127.0.0.1])
 by mx0a-0014ca01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 12I9v0F8016425; Thu, 18 Mar 2021 02:58:08 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=proofpoint;
 bh=UvaWFwdrJhm5xZqsdo/wSB9yY+x9gOk/C9Ym8xHVo/M=;
 b=iCg/dXtBfjkdqV374keliOgxFlPQEUmT45a94IV4pk44XmPm/4T6+qAoJIy6uR+aTHXu
 qgEd1e5K9OG7ENY4DUaCglxbZ0D9k3AEDL0eHS2lnCoz0kNtQ7GNLpQl4TP3+r7fMAU2
 cmwbZrgmyHqdMhQgJD7+Ig0XBUf4K8wFoKor8DmckwEelNhSwRNMPffLR9O4ic5YlA2O
 x8sQH88DK3sR9uHv8gRoMZMrNnJ25T2/FO8HITNIeEDb0iP7yCqqRcp+WWt6ElGjQfMK
 D/GVfBmByj/R83lhquA6CGJ2l94l9+O42z3nfG2YjNrvqEr/A8ynelcIWMcFS1IKJyHZ RQ== 
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2047.outbound.protection.outlook.com [104.47.66.47])
 by mx0a-0014ca01.pphosted.com with ESMTP id 378tu28k0c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 18 Mar 2021 02:58:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YLS2nI7upVWi5JqwIgPRJoFIWMOMLZI8dw5Jeiii5b/P6xoOuXPXMXTnQ725riDXGcpxTIDRKCej8QBb77BnF2ZK00c9nXZ9fcFHKDaTlDqqfh/1lFvLkRZ1M4r33+GFTpJy1mFOY2rzehcrAnsMYeVKP1o2OypoHspjpKXeasjxTtGeFdrPJuO54623wnWAEM74M8wn+UYFGrKnfXCu9UVeXphMhkYPaxK+fZcT1AQvLPkmx+03KMPVl43OwFX9WtQc2jEMuJP/ibTO8pk3wEEqn1j2/0qlRAClGEVr0oHqIoxYawF/lmAqS2TEf4Gx6S99nfiie2o1SoGWxl4Hqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UvaWFwdrJhm5xZqsdo/wSB9yY+x9gOk/C9Ym8xHVo/M=;
 b=Sv8CXmgdsr7aeg5BiYnUKB7u3J9NicNZANR9vo55iUVVZyETSwsSAAxWAxVXC/aHyVvzJ3OhJOl0P8fe1OIxX7mIgdGyogg4ceburysYVc9NyESDfJEY96WhZHSuQS5Ldbd/PnX68gBEMcXGcF5Y6ObnSp2IIvb+Xf89HMzIe8aw9eNsb3mQxW3nKLLiF8cKmkzfa3ilnA/+hH3u1KWYmMjyws+YumJl9PIxc5k8f80nx5peGZO6c6/oHhcC86d8f8mSxnkaclTjdG8P2Vj2EfZZ+tu47OlvhLJv3P/7+N++wecQuxeNrcxkkvWD2aSDeGywBNH28PaKNc+p0srXhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cadence.com; dmarc=pass action=none header.from=cadence.com;
 dkim=pass header.d=cadence.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UvaWFwdrJhm5xZqsdo/wSB9yY+x9gOk/C9Ym8xHVo/M=;
 b=MvDsBu64b0DOjhzTsI8nwaY8VkH7K0xM0/JD0b4AY/YA28cdg4RSFSjrzsHrFYrSvqXTJzFhjnX28CXjFsiZ1ReGRVz3uUCrPZhKfbs4v6t7+vd+6L4xaCXe/94ZQCaUwICpwjRtiPsmrsXsk2idnatF9AbfUwaj9sAksgZdd5c=
Received: from MN2PR07MB6160.namprd07.prod.outlook.com (2603:10b6:208:11d::30)
 by BLAPR07MB8308.namprd07.prod.outlook.com (2603:10b6:208:330::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.32; Thu, 18 Mar
 2021 09:58:04 +0000
Received: from MN2PR07MB6160.namprd07.prod.outlook.com
 ([fe80::31af:9129:7ae4:1fb7]) by MN2PR07MB6160.namprd07.prod.outlook.com
 ([fe80::31af:9129:7ae4:1fb7%5]) with mapi id 15.20.3955.018; Thu, 18 Mar 2021
 09:58:04 +0000
From: Swapnil Kashinath Jakhade <sjakhade@cadence.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Lokesh Vutla
 <lokeshvutla@ti.com>, "linux-phy@lists.infradead.org"
 <linux-phy@lists.infradead.org>
Subject: RE: [PATCH 4/4] phy: cadence-torrent: Explicitly request exclusive
 reset control
Thread-Topic: [PATCH 4/4] phy: cadence-torrent: Explicitly request exclusive
 reset control
Thread-Index: AQHXFcXBmkFg2ax2HkatjPh3lIujXaqJi9dA
Date: Thu, 18 Mar 2021 09:58:04 +0000
Message-ID: <MN2PR07MB6160E67E5FECFBBF481DA148C5699@MN2PR07MB6160.namprd07.prod.outlook.com>
References: <20210310155445.534-1-kishon@ti.com>
 <20210310155445.534-5-kishon@ti.com>
In-Reply-To: <20210310155445.534-5-kishon@ti.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcc2pha2hhZGVcYXBwZGF0YVxyb2FtaW5nXDA5ZDg0OWI2LTMyZDMtNGE0MC04NWVlLTZiODRiYTI5ZTM1Ylxtc2dzXG1zZy02Y2VmOTkzOS04N2QwLTExZWItODU0Ny1jOGY3NTA0NDIyZDhcYW1lLXRlc3RcNmNlZjk5M2EtODdkMC0xMWViLTg1NDctYzhmNzUwNDQyMmQ4Ym9keS50eHQiIHN6PSIxODM1IiB0PSIxMzI2MDUzNTA4MjU5Mjk5NzMiIGg9IlIzdlI5Vnk5TmlNbDJxR3JTWkZhRWt2cE9ZZz0iIGlkPSIiIGJsPSIwIiBibz0iMSIvPjwvbWV0YT4=
x-dg-rorf: true
authentication-results: ti.com; dkim=none (message not signed)
 header.d=none;ti.com; dmarc=none action=none header.from=cadence.com;
x-originating-ip: [59.145.174.78]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 68e921d3-4e36-40be-7681-08d8e9f45326
x-ms-traffictypediagnostic: BLAPR07MB8308:
x-microsoft-antispam-prvs: <BLAPR07MB8308099D41FC881428546484C5699@BLAPR07MB8308.namprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: v56aaRSZpfxrzQAFfZ2fTE8ccHYCcKyW9cxSHjgP8I9G5rT/x/0Defg1uvtQc+LztnvGM/aNYRV3Tti5IneFHsRkeWWz6zmNOJubXmzaea5/LX9doVW7GOucfJn9dWKd0gM0abVQkbMUW3Dn758uGKP2b5KbK1GKtbNFAw7OuYSYdKNIwsaadwKpWdDI3d02gJpgux6NSXjU6tJ2L03h/2jZl9Ro/CdxoJp2c6LK3iUm3Vesgz9jwngzgKJBOx/AISAhEcNAjjjOsuA58wDnRRpDeuaJ6TXQw/ncsFlcZAlORMDh1exswbnu+tlJ2fF6Yixfx4VyIaMBi4/lPttcTSItNaWI4RyiWlr5f1+Jl6yptNZwJI0QPCj5Atdwb1K5cFv8CtZLRlYtcWykI7pKPfUq+5fh4yOe5CvLhDLDEI+FPh8CZKlShYV+dK906hunWa6GwkguCPjNP8z5q8GSi94qdB4Bf3+cavvrCpW81PncbGCXPKNBji8ad19wDseWxhXEEZ5WVrb75msQjV+BUqN1rx3ilVoVAHZztRTwgT29zo3lxmwHy7hIIMDIHbtlp8DUnxBoPAG2PtU9wUtH8rd0TxNUtEolC0CHUAcD0/EZpHdUcQtXaZrXSbbVUjeyvhjfFDCYraDUDnuu32s2XA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR07MB6160.namprd07.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(346002)(39860400002)(136003)(396003)(376002)(36092001)(5660300002)(316002)(6506007)(54906003)(4326008)(66446008)(2906002)(66556008)(33656002)(38100700001)(110136005)(71200400001)(186003)(86362001)(55016002)(83380400001)(64756008)(52536014)(8676002)(66476007)(7696005)(66946007)(26005)(9686003)(478600001)(8936002)(53546011)(76116006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?wIozQ4znbwX06PNvoFz8m8G86oaGpeua4IfC+XXt4Is5rv/xf1ZM9MQgHo74?=
 =?us-ascii?Q?ZSgNQ7Go18LKgT/ZSSSRieuJwn/TG4P7B6YQYv+ITXIF0JtCnMskBw++K0pC?=
 =?us-ascii?Q?RZPtbyZRPIfrbcte054Dk9zggz2QfWvSrgyqX59+khRAXI/3ksKoK92KZbDR?=
 =?us-ascii?Q?JYdGXgvEErj6feJ0RIVVeDmzegejWckup+xuhM3cGBjDcQ6mDgWRUFtLnGfB?=
 =?us-ascii?Q?m29h4h+ZYIKPQx2KgyIW/h0jY82+Gi+kGEGUYHu0IFEFn7YDPiZ2OLwgtuuE?=
 =?us-ascii?Q?GPJPLQoLExIhYFOnDyk0mZGUOp3E5xl5tViH7fFt6+vSO4efLArco7S5AYL3?=
 =?us-ascii?Q?os8XFU6i/Jk9fCKkLTW0eh2ZtusjKTHSHk5Wo2fCSuxY8pggLlhjWJps2bT0?=
 =?us-ascii?Q?CG8RWqlCZlTYQjibkHBZISpzzM9G5/tapCkMlrkP8FC0zLb3ZrRm7q0xdX0M?=
 =?us-ascii?Q?ouT/cyfT9TTfVf3QtdjbYtDJdMX9vae+VS6uu9ziqE1zJ7zfE5A2xezbVbq/?=
 =?us-ascii?Q?dW0MoZ/W7s5QF16mKgObv+n9hfq3Nwz2IMH7Nw96eBh3KcNKboi53ola9E1h?=
 =?us-ascii?Q?1u3TaXW0ijceCXgSAlDr3LEYtF8PKxokyVjaIhTkPeNtvyXUxBP1EhO/SQc+?=
 =?us-ascii?Q?hsw9MQgHdfMTGsN4hx9bkR4TWa4CTqftaS58JhPoTPdDzIqwW0w8iZcKlsqB?=
 =?us-ascii?Q?d50tAZ6Fwa7nLxyNpfGeSMvLU6nFsd5oaPSSNF1Zb9+94aSc5/BULT+R/hw9?=
 =?us-ascii?Q?V09JIDCZz7k2HJiutqzJU1MCAOQyJkDX9wkc2Cu59tdU56owc/L7dLGAZadl?=
 =?us-ascii?Q?MVYXY0oBwQ0xUq67yCkctSTnFXK63becghdKcFijlK4M8y/j/hjyBLu/Sm3E?=
 =?us-ascii?Q?mhGHfmuF8y8YBhtT9ZmfDHXg6tu/c0wD0palJpLAyYyNYo+yp6AiElZoY+yc?=
 =?us-ascii?Q?Rz+aSO9be8kOC6W3PpEXcYLssQGZID91LZlW39hBSWkrdgYRU/FO0bPoG3DE?=
 =?us-ascii?Q?Wbp37KQ8jdEt+DTDPPTqh72ZosRvFrNbiPkjjhmVW1AtQDQscFVLiDEUrDTt?=
 =?us-ascii?Q?gNpoJmyannU9MYHR+Gel3tG+CoOxU9e05CUxe7a8xpcWU+2HL2EdodOWJCPv?=
 =?us-ascii?Q?e5jIuXlyzswJuJN5tRyzoiDmHY821uZVcEkex6/YdGEwBJBhqBugOWmUk1UI?=
 =?us-ascii?Q?9JEN9mQITIwKxbmFSBeDuSMok32CJV5mAeThxB0YRFG1yn3ukxAQa58ro+Z7?=
 =?us-ascii?Q?4APUdmXhxOiqMFX3Pi5v6w3UUAJSRp50pZQWDZh2ExwLijo3vttWQv2/9C92?=
 =?us-ascii?Q?eAANGa458yvqs0WLMt8/H+nd?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR07MB6160.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68e921d3-4e36-40be-7681-08d8e9f45326
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2021 09:58:04.8177 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vqrvz0OMs71umBvZYgxWG7JMqflvOpU13Ye1CRytv1XbSfzGoZoXSxHhqpIDKAMHS1c7hMsbYLgEjCNFgjrxPKPQ+ZIhc3V9GEcwaLtlGuA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR07MB8308
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369, 18.0.761
 definitions=2021-03-18_04:2021-03-17,
 2021-03-18 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check
 score=0 adultscore=0
 priorityscore=1501 bulkscore=0 phishscore=0 clxscore=1015
 lowpriorityscore=0 malwarescore=0 spamscore=0 suspectscore=0
 impostorscore=0 mlxscore=0 mlxlogscore=999 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103180073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210318_095813_409392_0D85C8D5 
X-CRM114-Status: GOOD (  20.09  )
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



> -----Original Message-----
> From: Kishon Vijay Abraham I <kishon@ti.com>
> Sent: Wednesday, March 10, 2021 9:25 PM
> To: Kishon Vijay Abraham I <kishon@ti.com>; Vinod Koul
> <vkoul@kernel.org>; Rob Herring <robh+dt@kernel.org>; Philipp Zabel
> <p.zabel@pengutronix.de>; Swapnil Kashinath Jakhade
> <sjakhade@cadence.com>
> Cc: linux-kernel@vger.kernel.org; devicetree@vger.kernel.org; Lokesh Vutla
> <lokeshvutla@ti.com>; linux-phy@lists.infradead.org
> Subject: [PATCH 4/4] phy: cadence-torrent: Explicitly request exclusive reset
> control
> 
> EXTERNAL MAIL
> 
> 
> No functional change. Since the reset controls obtained in
> Torrent is exclusively used by the Torrent device, use
> exclusive reset control request API calls.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  drivers/phy/cadence/phy-cadence-torrent.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Swapnil Jakhade <sjakhade@cadence.com>

Thanks & regards,
Swapnil

> diff --git a/drivers/phy/cadence/phy-cadence-torrent.c
> b/drivers/phy/cadence/phy-cadence-torrent.c
> index 5ee1657f5a1c..ff8bb4b724c0 100644
> --- a/drivers/phy/cadence/phy-cadence-torrent.c
> +++ b/drivers/phy/cadence/phy-cadence-torrent.c
> @@ -2264,7 +2264,7 @@ static int cdns_torrent_reset(struct
> cdns_torrent_phy *cdns_phy)
>  		return PTR_ERR(cdns_phy->phy_rst);
>  	}
> 
> -	cdns_phy->apb_rst = devm_reset_control_get_optional(dev,
> "torrent_apb");
> +	cdns_phy->apb_rst =
> devm_reset_control_get_optional_exclusive(dev, "torrent_apb");
>  	if (IS_ERR(cdns_phy->apb_rst)) {
>  		dev_err(dev, "%s: failed to get apb reset\n",
>  			dev->of_node->full_name);
> --
> 2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
