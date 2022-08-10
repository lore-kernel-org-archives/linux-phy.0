Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87327C00140
	for <linux-phy@archiver.kernel.org>; Wed, 10 Aug 2022 10:37:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E6LReG3uswBChIBYWxzeEUteuCCgcKAlefMc2uGe8Kc=; b=zrLn6Yfol72UAz
	MarK0PJMz+jy1sNnXT1XnqxEnlojycyG7P8HYCnw9MkQwS3xhVNIBILmO+0UOgTQerMH+Mal7gc3a
	7u6JNfkc/i/+G0mOfR9Com5GUFOIkc+v6/sNoKL9sufojcwwdf9CnBtY/ubLfYLtg8e+LifbZWpiz
	WVfJd9XsLVKfYEb6+EjdHrm/r24dirjgxwLs6yHkA5jPD4EJor+oW2QjkJ0kQUQ4DwJKh6sDe9ktP
	vWo19qnrEoZsuhCq+e1ZTJsc6uMXnvOv3e8eaOkd0q3DmDQw/ypVMy/hkRdfaHjBnCOgunZkQwYyV
	oOd7uIvScGVY60aQKgkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLj5Q-00BN9V-NG; Wed, 10 Aug 2022 10:37:16 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLj5L-00BN39-By
	for linux-phy@lists.infradead.org; Wed, 10 Aug 2022 10:37:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1660127830; x=1691663830;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=fuOSOBRhscIU4Qxg8FAI49Sozq9AP1H/9UsTNn32lss=;
  b=XKbRJPVikhTPTXh3xfSa8AJqWoOF5qWBGFkGpyKsJeyW1LQud2m8Vec9
   /5n96X8dWcFTbITqLFzdBLlspAbdjO9bO8r1kGI2tqrimtTWRLNwIYk7j
   8W9FVrcbuoITyTpPC0Yatp9cYzBlBkZxfTHU8JMGIElR1UZWtYRN3JEqp
   TQxXThibF0Th774vibgTAYsItvuAkL2KqjziSSXoPTfiosIY9/epMnqFk
   VbtWK33O3CCLlS1jN8zAKofSCYTWG4R8eiJFE6cbkNUHphUAaEwsKIW7y
   IcwEB5Wnrit98to1XoteFkcwe4aADtmS8SXdIooZu51rqxFMOdYFswAqz
   Q==;
X-IronPort-AV: E=Sophos;i="5.93,227,1654531200"; 
   d="scan'208";a="213353041"
Received: from mail-mw2nam12lp2040.outbound.protection.outlook.com (HELO NAM12-MW2-obe.outbound.protection.outlook.com) ([104.47.66.40])
  by ob1.hgst.iphmx.com with ESMTP; 10 Aug 2022 18:36:56 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XfWS20wydZx28PeAOMXjerqDfp2oVoPz2OiZY02FYz33Oai0bXJhdx/5e/FOkFffQ6EJpqxwPjRxcULtqKfy0fnSXuXypL9VawAlmdxdQcm7WZTnboQ3UdCrs9I5bQKgrvWf7xaH8/481RGy75nKuAfKSO5w+Grr3Ddc4kAu633DqY29kla4kGVX8UB2pAgYGEfCOCadhcT6PdZ6f8X4jaDIrCJq8wkR/w4c+rjVSbmrFY6swNbTUYQmJGjr5wpaqnmpGpidELugkGrIecR/9/WYuAGWYb+kwP1kff1MSy29GQOezcv33dK3+Ax6ooZ21Hi6yeEBMx708EH4sl+QZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fuOSOBRhscIU4Qxg8FAI49Sozq9AP1H/9UsTNn32lss=;
 b=h9hzoiWcESbii2MeaBnYPS7s+bHRljJclGt7T28Na4nr8dGVsYBAQXCXoujOK4BtRDthUZT6CWXvwdPE74E4FUoCuZj6TmZyGrtTREe2cIfLguac8pmxazPYiP8vWluFDh/E748h28HJmIhDR00uvaEGntHVbm5FTPkBOTxL/qX59yQ+hM14JqC8Tz29DRQwbB3sGtXEQJOe8jsTjUiOWacwXDvF6JmXA6YOwBkUA67emoPTzHwo+PKJSZ8uxvmROCK/4f0K0Tf10hKZqoXl6hA8DOlWyxkBxxvIZNuxD+sJhrQEickM9390e3yJ7bsfFLbuykVBLwK+Xm6cuIDt9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fuOSOBRhscIU4Qxg8FAI49Sozq9AP1H/9UsTNn32lss=;
 b=mKLPsRELQI494/OHi5jXddqRqJFqFdyx0ZRrUvFZ8VyEHJZDq5vFRmmNU0AFTRbalx3H6a9IE6LHc7y6GTjlhypT1nM5NcWmtzH0FfweHJxBhLgUk1ulKeLG3gRt+vQgHh6NtfFZYJkFr8R7R1A+oSKSLQJCTyL5kH4zk/2Oz2U=
Received: from DM8PR04MB8037.namprd04.prod.outlook.com (2603:10b6:8:f::6) by
 CY4PR0401MB3603.namprd04.prod.outlook.com (2603:10b6:910:8d::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.10; Wed, 10 Aug
 2022 10:36:54 +0000
Received: from DM8PR04MB8037.namprd04.prod.outlook.com
 ([fe80::59dc:25d4:781e:2a89]) by DM8PR04MB8037.namprd04.prod.outlook.com
 ([fe80::59dc:25d4:781e:2a89%6]) with mapi id 15.20.5525.010; Wed, 10 Aug 2022
 10:36:54 +0000
From: Shinichiro Kawasaki <shinichiro.kawasaki@wdc.com>
To: =?iso-8859-1?Q?Pali_Roh=E1r?= <pali@kernel.org>
CC: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"kabel@kernel.org" <kabel@kernel.org>, Damien Le Moal <Damien.LeMoal@wdc.com>
Subject: Re: ARMADA espressobin SATA drive detection failure
Thread-Topic: ARMADA espressobin SATA drive detection failure
Thread-Index: AQHYdOvSBcLBZWQYIUC8b9MlWQLEfK2mvtwAgAGhgwA=
Date: Wed, 10 Aug 2022 10:36:54 +0000
Message-ID: <20220810103654.w3yurhdeulgyepbb@shindev>
References: <20220531124159.3e4lgn2v462irbtz@shindev>
 <20220809094234.cpv6tdpmqfb3cfqq@pali>
In-Reply-To: <20220809094234.cpv6tdpmqfb3cfqq@pali>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wdc.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c8b56c62-c556-4b72-1d1e-08da7abc3e85
x-ms-traffictypediagnostic: CY4PR0401MB3603:EE_
wdcipoutbound: EOP-TRUE
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  UNBUZe6nRPGDLCeEAaqA30j5dRF0sBdjW3P1mEgJfZW+YdpalnY5uASWR+Iu355tWLxxTgSOTDpoRe1/6JOCmrBFb55hJLTl4Le2+Et5pG5cll1ZEmNH1TeC91qdqHSDSHwDoVaQuioMK47Ucod34sJCO22P2ODu3O6RxtQTOKa+sYNhTsISWYdHTRL24unrBvbBYY6wEzVsfoKzotICd9HkDSsqkqFOwZhqM8jTuXeVUPUISH1ICGGQH/CPkQkutbunXBjEBcjHhbyXykFLg7dtiJvRe2iFkty2PUTrR2opm+nny8Y5lggPpJSmzQUi5T6D95Pw0x4q+4dcPoAxuYvixB+tXfGA4pjOEtP7IoZWiykCqIY4j9u7z2wKdv6Ntvxwf97fv9nTM9MqrgaR++WIoVBvIpEZcDN7ZImh0guUX1MOfP6RFpMh5miOxae4h5fDpdl/VzFQfKVjXxd9qcvWrgeSnL5l01USAgI/fmHkFp6bVg4+duKgACfxhR217aC2V81pxer/Ee85r4tlT0xhsmdjIGGrUlvzouvUamqjBiRhmFeTggY85LJRUrB6rQTvZafSV0Dy4DjZwhNFwiAPg2y4kSwKfFBnWTIKbQb44lQQGCXVu2iRcdulf0X4urPbby/nvhK7suJY8+QCltMXo9JFeLxvZtORvCjlUh9fgdu5O2QMxfxiMh22a5SupsjvpRKP0G/VNnYK00wVH5xyKGllP0m0bjGJ/tUWOc2+SyPZVcZJSnUvzT6gXiL4sXKsAJ0IfSQL1/+ZeUt02VBVRqlNfk6iXFQ5p38OsVK9x1I+IU3GstLjFx5SZmql
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM8PR04MB8037.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(7916004)(136003)(376002)(396003)(366004)(346002)(39860400002)(66574015)(66476007)(9686003)(6512007)(83380400001)(1076003)(186003)(26005)(38100700002)(6506007)(38070700005)(122000001)(82960400001)(66946007)(8936002)(4744005)(5660300002)(76116006)(66556008)(4326008)(8676002)(64756008)(66446008)(2906002)(44832011)(33716001)(71200400001)(41300700001)(6486002)(478600001)(86362001)(91956017)(54906003)(6916009)(316002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?iso-8859-1?Q?sKgt0lFBCpb3BGP/Q7mEjOQAEZPfz+5dzheclQvt5bWO5EENn1x5paRiEC?=
 =?iso-8859-1?Q?F78pYcWnm0wbEzuztJCrUtgKvMux5celhnPgzdQkgEx3ugGYu+Qvoqz71e?=
 =?iso-8859-1?Q?HwjvES6xgB8MIIyfUf0JGXLHrAqtBZHg+aIpp3Sn+o+fGEULTKS4Zv+N8/?=
 =?iso-8859-1?Q?kt8Cfj2TBkDoirMSayjNfejadvbpaNGpLjrW7G+8in5Kdg5kf9brTnfM7D?=
 =?iso-8859-1?Q?dGNtup9TT9JYueyyNoeP7a0Q/NtpGCmbunct+9R+nHGSZdSGGNUzCqlQ+W?=
 =?iso-8859-1?Q?nJZIZcu5lrHq3HuvhAk3Ue+aOIxo7a/3u/568tJyTb0fuO/hBLTqdEQlM9?=
 =?iso-8859-1?Q?ZVNZV8SlXMIoC8Jpvzci2gPFswfh0Jh5xUnxB90PQeqEyWS+ZyJ8eiB9Kr?=
 =?iso-8859-1?Q?ec+x2jWRB+i8YPO5knT6i87fY97zZ7IwGhSQVwfK1xokOiZMjQkiuoSvbp?=
 =?iso-8859-1?Q?1+AFd5gfgKChC0vr0B5fAHw7kWQN0xu6ahO+9HlvlD5+VE4ghn/k2fRj8/?=
 =?iso-8859-1?Q?Ocf3BLj5Fayt2FZQlCng1x/lsaAFPbqI8yLtepGVBz93srDuCf5Zopzc4e?=
 =?iso-8859-1?Q?z9BIFJ5G6ifR9O6Lv1QK02KzJ8QXKI+rKq6zNs/1m03nX/VpKGt5SbeBqc?=
 =?iso-8859-1?Q?TvfyDN9Qj0YxXacMvdZhHpLqZIX1w+NlhmlmfeObvNpBc55Reh9rUzOg71?=
 =?iso-8859-1?Q?yxJPdBB9SH5xVg66w0YUjHHNki09ZjSWnCC1V62Z8HK1g5MRrRdx4+gRhc?=
 =?iso-8859-1?Q?In1MGlVGFmT2FkGl16p1UsffhGm1Oqg0yxQH9adyNadMni2K522NWw3KlV?=
 =?iso-8859-1?Q?AMsnibsfWicqOnvEg2v3BvGpN+RxUvLg35zaXf4ax3y8kH2RAe+UdKMtM8?=
 =?iso-8859-1?Q?u/PriOxwSXNG72CHZx7eQvTJEr6fA98JYDPwd3z1ffHMzdM/CpEzCJPgN0?=
 =?iso-8859-1?Q?seaKl11Mn3AuXJvrCPk4wBGLv0usEdnmT8AYvtdAz9A2PwTuel5OEggqWK?=
 =?iso-8859-1?Q?0VxRqjxVmz+xl+UIS1vPgJvwlOASAC+grwfFszHkJg5YyiD5r0HoJrwg8k?=
 =?iso-8859-1?Q?/sLjN1ySVpKv5otIPhTaqbA0MN3fGG4Mvwn2HsJ8C6YbczlcgIRoCEXRg/?=
 =?iso-8859-1?Q?xPZAKVyA8z8fhCIGRN7EEYgqDU3RGu/unjYGSE8scircIxy4xCOm2FobhL?=
 =?iso-8859-1?Q?kb9P59xbSVVLpoVim4LXCvd+9b5Lr0rulS2BeDgLa5avIHPUcTYL4JYpuU?=
 =?iso-8859-1?Q?c8BEhbzehp9yQbsdWwQLl+TsQV21VTuSsdLZuxylSHPb0S8zjkzViI11iv?=
 =?iso-8859-1?Q?NrZy+n8GZ2AH9stNgnFntpVs6RmKpEJl/zZUK8IznQVcjM3Ym0WfWJF2H7?=
 =?iso-8859-1?Q?Urj5o4Od+xBZ6kax/sF9d6TgFSDdHWG1t2jWmKvRGDNSLHmfTZfJZWzgWG?=
 =?iso-8859-1?Q?lzb9vvzetbgdbUcqzOPAqmJXXKaduCh358QUeaDIMKaj1B10v01/wXSE5k?=
 =?iso-8859-1?Q?SCkW29O5J6BlZY1UJ5AHEl/5wmNTIOzdUHwpgcpHJRlmuDxY6pt7PIMCnA?=
 =?iso-8859-1?Q?xTSCyHUxGKU0g2cpNJlNgnDYTzx2+eTeLK9XyF2hcXuVawt8cwcGwBWTV/?=
 =?iso-8859-1?Q?C/jpHmMNyymiDG8I4AQt7sTbSkCr+rEKcm6/MJihF4lVImqYuILV9m0T4N?=
 =?iso-8859-1?Q?3syrKXAbK3t4u2PjFcY=3D?=
Content-ID: <EA05DFE5C07ADD409E774E1CD22A5BCE@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 	e+5R9KjwiNFdPhS6kcjdUoaEEsv4rolB2LkQG7+jXyXTj/lB9iZ8GWaiRgf1vCpr80cyVvYfoNiElcYrJAnqz9Yzc8h8QQ4tKI8TK0Fda+IyPfhGYwz2ze8pY7Bb9Pd6A1Bsv4UtH7EwEZPt7yYTjwEzjN2rHWgoxApuO71vqn4YlsDhSGcjbWXbrf0qRU5RmAASBPZgZ8HV/oaIGIWGmRwfjpwQ+leJYAC3eumYH6z29Dx50nDA4/CSXsVzZ+6t0VAI83tBx1sglYqr9sFUE5LciXsbbOOb3hOD2izHj2JfaL2sBfQQ/Hdn/pU1Nqy/n5g248wOPyk4zp83Kfm4P3zzaMKm4WBbT5m/t3fCXC9A6GBVYNBVKfrs+9UsjT0WTTZbOsVCawzoy8MQGfEMBHtpwtdAJmtGhQk5u76w+hK1S+Vm9p8i+qlGVoUyBICmw/Vp6/QGP9rxT8rKXFzE5e8rl3M9qXpxfEIZuOkJO9NV1Ckgf4d7azdS2MXxJNeqAZ0V8BcWfj3Bee1LqX9v8YvvMw0OjJovSgyT2QXh2gqrO3P1mayq1dpehAk9iGFChvn0P9lzpGU8I2BcaLvCPyY//7ROh3a/vMPqrggnOI51rLg1AFiUeWLa7jf2JawnhiNiJ2pqS0tH3leejWk0bD4yylgWdHmsOYyikQ6OvX+mBMyIz2TDGZ9EmVMcalBBSGCKUiC+fSR9Brn3lPE5THJu2w73+LWiJKCOMBdpAeMtYwzSwH7J6xNqJ1aSaEyA2EwrJpE/tWZ60xPCSdlO/Ytfz3R/6B35GPWyIJB117VVQ+tHDcV+LF2TDHC4NSYeDRg5CoCW0GWYz2+3cts23Q==
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR04MB8037.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8b56c62-c556-4b72-1d1e-08da7abc3e85
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Aug 2022 10:36:54.7541
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3xpIVvYEkb5mlodEH+0urcNz7LKgSNDqZ7wiqgebVDy8joqDP9fKWcZgfNhn9P3jcQ0CdcJ/sWVgx1NklbfG/3YJ0oDus5QKqHCoY6Vu6yM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR0401MB3603
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220810_033711_708069_6491BBD4 
X-CRM114-Status: GOOD (  14.27  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Aug 09, 2022 / 11:42, Pali Roh=E1r wrote:
> Hello Shinichiro!

[...]

> Sorry for late reply. At the time when you sent this message I had
> issues with office station and was waiting for repairing support. And
> after that I forgot about this email.
> =

> Now I have looked at it. For testing purposes I took Espressobin V5
> board and some random SATA disk (some Samsung SSD). I installed latest
> firmwares (secure-firmware, ARM trusted-firmware and U-Boot) on
> Espressobin's SPI-NOR and Linux kernel version 5.18.16 on SD card.
> =

> Disk is successfully detected in U-Boot as:

Hello Pali! Thank you for looking into this. So, there should be something
different between your system and my system.

> Could you please check if you still have these issues with the 5.18.16
> kernel version (IIRC it should be the latest 5.18 release)?
> =

> And could you please check if your disk is working fine in U-Boot?

Yes, I will check these points. Let me have several days to work on them.

-- =

Shin'ichiro Kawasaki
-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
