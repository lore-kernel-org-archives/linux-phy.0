Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0896CECAAA3
	for <linux-phy@archiver.kernel.org>; Fri, 26 Aug 2022 05:00:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dtVr/Wn06/JjgOICuktDK0Pc+7AwMmXXBniPlcoeBCs=; b=XlguGOSxxj/7dU
	W398RvUd1lKaR0P7IcfjAwEEFQYTu3kOOgDn7En9ovVvlSx/+JSNofLeeDjZ38mexTJ3rrjYQTcdr
	KK7CKkO4RW+Ee+hdUqNJy03y/sZeIDTMD2L55Ich20Qb4gS47Mz0la7tNpiNe4iN3kS9b4Z0J9AM+
	aa2PlywWEHqEnu99Ys2cfkkopdMMOWrhbXOgLK8vkX9Av6xWV/25pdEE7dbbJWbT+qGGBQJVDwYeq
	jht1zde2EQuYFphbnBjAMquUxIakiskXrea0JqHIeAOsxOog4+daooOCZjoz1oWaZpBv0cqYW5R+i
	kf5KJxwM3SspQomt9s0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRRSN-00DWrO-Cr; Fri, 26 Aug 2022 05:00:35 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRRSJ-00DWoo-Ul
	for linux-phy@lists.infradead.org; Fri, 26 Aug 2022 05:00:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1661490031; x=1693026031;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=k/Hl8DiwaVSoUOEPwgpjSMSxoWIWS4NX6AZ8dp/Z8L0=;
  b=IdOIwQxUeweyLvEcy3yx3jtELBHa05dEbqS+l40UuVpuciff8Ru82+Jz
   0UlwvvR59A6x8eME7Vdww4oYF8lBDiXZyWO7RclMsGj1lBv0r2XcaNZbc
   gETj3xnGiB+hOo4TJxKfhhw7HVMZz4wJuv5FPbh7/Lr3KDVTlPbGzfR6E
   hhwhVQdvT2qu4z5FRm05MU57b0tcbg2/95LkX7fB17Wz/9QIa38ik1nHF
   2/gCQ7bQG1zyuRX3f7507bgiX3M6nRa0cA3GO3m5xkIrhzBSq4cg9ZvAD
   9UGtkZuAz7vKvjhDfU1CCzh3cBBvZi+wr41YhoKJQNtMCzJPjYUerp+xg
   A==;
X-IronPort-AV: E=Sophos;i="5.93,264,1654531200"; 
   d="scan'208";a="210211964"
Received: from mail-mw2nam10lp2100.outbound.protection.outlook.com (HELO NAM10-MW2-obe.outbound.protection.outlook.com) ([104.47.55.100])
  by ob1.hgst.iphmx.com with ESMTP; 26 Aug 2022 13:00:23 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U9sUGn/fCcfO2037GKV0Bovv0gdTgf41FDbsw+ZLirx8HydG6dvr5pHNK/BcmU3xijoBYmyisk0rVC6YrAyc0HUFo0BBK37TDyfPEMR66OpDk6m/ZEKKFKLrwwFb9Owzi4YHxAG2WMZe6fnzJGmxbkuVgj+kdNa1199kL2WZZX8AqV+LYQzeHxdG+DsNHSZOvfFWdK2nNSezK8FctM+JaS37MjYYiy1PA/VCDNqvKENIA8hu0lP8DjzDRfNXTGtOblrKBZxwJJV6TSE92y54EhSzHeeYIp/x1ltdRjT4RtcnZtKQqfX9tImpoxOD/rHiIhEJs1iVrI1MsGpDmmt3Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k/Hl8DiwaVSoUOEPwgpjSMSxoWIWS4NX6AZ8dp/Z8L0=;
 b=TlE/lJXOHKFZNG3gez3SLOFr0LpheIBLgJB2F83W0I1eeHC4ElVOYsQTOCq3xUgMQ6oxbVqurmbxxCHd1MoqSdUUhfS8Z89Va69wIo1FCV7flro9S24r23PY1DriXH6aIvRltgdBSBmsKFMVgOaYlXY/1YH0aq8TIRYvgslCpXcdKMcvMRbTRNMyU3U4WiLQA76PO0asf56/k+9IdhxiT5am16ZnJWxpQCttZh71zTG2IMwkJHrxeHPRbQBswMWWg7aOGnoBRE8dKTQB7sXtSnKnq/VxU9/Z0Npi+JYkLNSL7lDPRF7QquwOUJ+VBcqyYWYri1SLZoyNdAahh+hToA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k/Hl8DiwaVSoUOEPwgpjSMSxoWIWS4NX6AZ8dp/Z8L0=;
 b=jOSUZvQgwKW+EOyFJPtEVCLB/KXHpMRZMqCK6QZF/rvyOy8Fk0mlyVoR55h+m1jwEc1CYgzy3QEIUSNutgL0yJ9DR2Bv5XPDxsmlfXljeaM1hGzWshbteMfvWoVlzgu+2CpvwWFpXuVidXPeNxpYtGFrjbQTspM8bllazeN/y8g=
Received: from DM8PR04MB8037.namprd04.prod.outlook.com (2603:10b6:8:f::6) by
 MN2PR04MB5598.namprd04.prod.outlook.com (2603:10b6:208:39::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5566.15; Fri, 26 Aug 2022 05:00:20 +0000
Received: from DM8PR04MB8037.namprd04.prod.outlook.com
 ([fe80::c7e:a51:e59a:d633]) by DM8PR04MB8037.namprd04.prod.outlook.com
 ([fe80::c7e:a51:e59a:d633%8]) with mapi id 15.20.5566.015; Fri, 26 Aug 2022
 05:00:20 +0000
From: Shinichiro Kawasaki <shinichiro.kawasaki@wdc.com>
To: =?iso-8859-1?Q?Marek_Beh=FAn?= <kabel@kernel.org>
CC: =?iso-8859-1?Q?Pali_Roh=E1r?= <pali@kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, Damien Le
 Moal <Damien.LeMoal@wdc.com>
Subject: Re: ARMADA espressobin SATA drive detection failure
Thread-Topic: ARMADA espressobin SATA drive detection failure
Thread-Index:  AQHYdOvSBcLBZWQYIUC8b9MlWQLEfK2mvtwAgAGhgwCAAsWmAIAAOQWAgAA9WACAAAwygIAAE9SAgACpvICAAAN5gIAADLmAgAAA7ICAAAjcAIAAhS4AgAAnggCAAAIYAIAADPSAgAAA8gCAAKrngIAAAlAAgBIxloCAAJsQAIAAcPmA
Date: Fri, 26 Aug 2022 05:00:20 +0000
Message-ID: <20220826050019.kvb7vca6fiwzajcx@shindev>
References: <20220813013534.l5hzxv7mc5fylx7m@shindev>
 <20220813093214.6ved4ka3l2thkn2n@pali>
 <20220813115338.uq4xbznngjradzi6@shindev>
 <20220813120108.vaiwnzhofz6hy5kc@pali>
 <20220813124729.qondfc7z5eoeoq7p@shindev>
 <20220813125052.hjd6lhh4fcc7jl5u@pali>
 <20220813230233.3hyvkoexqitfnlte@shindev>
 <20220813231050.l5xadzdpavmmtdbq@pali> <20220825130059.5kat4fhddwj2nf4r@pali>
 <20220826001558.5cf887a5@thinkpad>
In-Reply-To: <20220826001558.5cf887a5@thinkpad>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wdc.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d7c889a8-f111-45c7-44da-08da871fe02c
x-ms-traffictypediagnostic: MN2PR04MB5598:EE_
wdcipoutbound: EOP-TRUE
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  Tlhvj+NlCwVJUR9yGIqvbGCTWoZtWcps/If8E7Vkd+93ghXQrteQkfyjR0x6N5ZlKdwNc2FekJD07xTvsgIElz6VQTy3/SZ22XGkdRw3i9mV4BZRGzWvjshVy/IxA2BrjZWoW3Eo0uPDGUW2EjRbNU0TljJbu9jqyKkQDN8ZiWeUKSPjouP3TR3SLrKfTyuSN+eEKPPZXmDo/AJKG684mSBk0uGmK3P0LYvCyP65M/YvHr4LsWZPbLyB0f20/qN4OL2IhmPIles2ZNKBVcTo+/gZLRzKS4D044Xa5E4UOv9i+76J917TP2dz0ykjRDaEi4f9P5B6+nr8BXnEHeZ4sQpYkYyAxj9txWLQEE+ndX5B5EA6QlguU9eTFL3nGil8ltwvN7xQS+eDMB/8NVEVRcldYZoAk+2qddeVL5UQmRVyRmfmi+xl6m727pzlKOIVlACaGkkWr74TuMMPy3ZkzXK4Ux/S2nWmU6E5soJJPhiYQ95H1jlbdvFcXkwyXAJfyfjotJjBWc09rYnDMgKgRhfrd14rRk1RDH6cxiAZOWXhezEp8wKKypplMlOnbXr0tblZQFELHMPUGGOkDz83w3U5arUnRwSyh14I8wPWSAbydwL3DirmV0qRrtsrMLMg/ovBBUs7UIPCZYK0RtZMHFyfBGzg8kG+v/DzxOXkzoUQr3TMAuG5HKP+SU0kAr1NE9rWpxFzEJgLMbJCfho4eLydrv7ZngaDbQxO6TycSKSPOb3oQmYFcNJBHceee3wl7GCdU8rr9tonCMs5h3WsXYwKvspIG6hlCu4t9Nq8ers=
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM8PR04MB8037.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(7916004)(4636009)(376002)(346002)(136003)(366004)(39860400002)(396003)(478600001)(6506007)(6512007)(9686003)(41300700001)(71200400001)(26005)(5660300002)(91956017)(44832011)(6916009)(316002)(54906003)(4326008)(8676002)(64756008)(66446008)(66476007)(66556008)(76116006)(66946007)(82960400001)(38070700005)(86362001)(2906002)(966005)(6486002)(38100700002)(83380400001)(33716001)(186003)(1076003)(122000001)(8936002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?iso-8859-1?Q?1Tp3foWz9ZK/aZpC90A1FHV32kiqdIXg7PyPD7t5SSYn0tgz2cATJxkF0Z?=
 =?iso-8859-1?Q?Z/Wz2FzJWwImEpC4EfDI6IReSaCnlkfYMaXjhYel/o8S1DG2i/zyVNF7jF?=
 =?iso-8859-1?Q?xnOsO+B7zBq2BtRNpglB6fNmaEPYbbwkMQrSQMD8ha0MzNNVJdLvd9d3nE?=
 =?iso-8859-1?Q?uM4gmqM7CAJjuXgYsU0lz351ltRjsSaVOb0J+W5NjQvzptAoHhGlFnc75u?=
 =?iso-8859-1?Q?uY3fvyJ70I/Za5eDXeESzJM/Tq+ngDVCaE6jC7L8zDO3cws5nw/SsVlFMS?=
 =?iso-8859-1?Q?/kGz8CL7mlYydcoriTyObrU4qrB6Av34m9qWdU6UdRkcvKvgqHquGVJ563?=
 =?iso-8859-1?Q?qjnaVXC8NnLcLvNojm7HyxP/vStyWfHMOY09a8oS3yAFs6ugTBCm/sRMbG?=
 =?iso-8859-1?Q?8A0qkxLZ5PE1L/WgvbmJOTDWpVy3jc/rnfHRiIYQXkjoJ/MIZcZtiySD4t?=
 =?iso-8859-1?Q?htz0yG21ae48PY7uVdY4aUh0NLecyZNdeT04/F6vFiaEOY84Mm+5+3KrFU?=
 =?iso-8859-1?Q?qKs3c2+j2dAtNV7GXeLjG12y/T8D70sKzt0nEpcBShuwaXyladHy5kzJkT?=
 =?iso-8859-1?Q?lyKzhSY+gSdAXW7PolK6y3pGISwJbcsmNriA1sffiWAeNQr66qcOX0csV3?=
 =?iso-8859-1?Q?ty8WCitknnVjVGPdmTz56lTr3il7P8Z1bASSAEJUrQoyd+nyNxhXHjmcwD?=
 =?iso-8859-1?Q?ORMyxnMCZt5IdeaboVdjbIak81pMZx+7HaebkcDOzmy+DfsSIXih4chkFQ?=
 =?iso-8859-1?Q?6Djm2cffCDfxZqMQWai5FpeqYe6R/mJ5CFBzub4iFiPzVTAS51uTP5ZcE5?=
 =?iso-8859-1?Q?BTNc+jRyHxEKwN3BPM1LBD4a1O704cBTAwXWtbY6xTAynLQPaMSQsxRiDx?=
 =?iso-8859-1?Q?qtWqh8UcMUX6uVUpC4sQJFaHa/mcCODeF59qFk7W5GR3SncRINuzLtMbY/?=
 =?iso-8859-1?Q?Scy5Uijjyc6InTvKpH1Rc2h8Z48gwm32VK9DvoWsaShSJNDZhcz0XRCG6M?=
 =?iso-8859-1?Q?TS3c/oHI4jh4ajgWW7OW3jVlPEZXEL6lI6RnXdtHJrDlFXIkVQmLtlAVvd?=
 =?iso-8859-1?Q?3dAcBhzmh1jFOnQxnqE8f7gruTEhLWb6LZlOz+nM/VNyCYpB30cyCuNYpk?=
 =?iso-8859-1?Q?Dp7oE+3bORFCKWZEu8ptI8c5Seth4cnyNoPWjixN5pn46zmJXWH00Y2xOu?=
 =?iso-8859-1?Q?aeHFTwht3yZ9S7ykJr6Bx1JI0q3B/tgpinavq8qCAa8UVchcKqcwM/iUKI?=
 =?iso-8859-1?Q?MlgNeaghW84adH3CC+pvD1w+cEeQC+SL9pEQkbVmK3uVp9MzVTsubdrfH9?=
 =?iso-8859-1?Q?Rzf4cvlwMEHPNXz3WmzhrMI+isUJCXHg2Tf2vJvpZn8q+eJ6BMc+AAt/gA?=
 =?iso-8859-1?Q?+/8ss03Z7LF0R9N9E88cHDo7b2rWyKOcjFpUc+F1qyWtRrLCi872XcHOOy?=
 =?iso-8859-1?Q?3qvCXUkwTZqKKbEWM3Y4TO8Q+wa1PsCMT9zI1jDlNTwgu2oX986/sRbgvZ?=
 =?iso-8859-1?Q?Zgc7DQcrUpR+JlPXrTq+hXtp946t/znxvLejFe3/+9Xfc2bDabmBuBsmSj?=
 =?iso-8859-1?Q?iV+axGa2fRypEyRBjNoT3YtTgcPb2RL4viexeYeb+k0I0TTkRDMRZWfRZf?=
 =?iso-8859-1?Q?v4LEIyQbHxdP48uQycWskJ2iym4+ojY0/SyxwUc5kgBYkxVlgg2FVZXPHm?=
 =?iso-8859-1?Q?kDJidq6n5x5OtdRem+Q=3D?=
Content-ID: <39185D21456B9843B35DED349AB087C4@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR04MB8037.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d7c889a8-f111-45c7-44da-08da871fe02c
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2022 05:00:20.0923
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IOhr6u8O9acwr571QKbrv4dZMJxZ6RwjWGQUdaI4l12Nq7cGJIN7wcgAFCw0+bN+Z2+LGPV3Na7aZaFErrBTCgETvCpBwdGCS6JaGGoLSJo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5598
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220825_220032_077895_5D86720A 
X-CRM114-Status: GOOD (  20.51  )
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

On Aug 26, 2022 / 00:15, Marek Beh=FAn wrote:
> On Thu, 25 Aug 2022 15:00:59 +0200
> Pali Roh=E1r <pali@kernel.org> wrote:
> =

> > On Sunday 14 August 2022 01:10:50 Pali Roh=E1r wrote:
> > > On Saturday 13 August 2022 23:02:34 Shinichiro Kawasaki wrote:

[...]

> > > Perfect! So the issue is with mvebu_a3700_comphy_reset() function.
> > > =

> > > This function is not in TF-A code and neither in my original kernel
> > > driver implementation (still available here):
> > > https://git.kernel.org/pub/scm/linux/kernel/git/pali/linux.git/commit=
/?h=3Dphy-mvebu-a3700-comphy&id=3D4588902a3528195bcfdda9f9e1e14262a1955df1
> > > =

> > > Marek, this function mvebu_a3700_comphy_reset() was implemented by yo=
u.
> > > Could you please look at it, why you added this function and try to f=
ix
> > > it? Is this function needed at all?  =

> > =

> > PING? Any progress here?
> =

> Not yet, sorry. Maybe we could do something like I am attaching, until
> I have time to play with it?
> =

> See attached file.

Merek, thanks for the response. I applied the attached patch to v5.18.16 ke=
rnel
and observed the "ata1: SATA link down (SStatus 100 SControl 300)" message =
is
avoided. It looks working.

-- =

Shin'ichiro Kawasaki
-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
