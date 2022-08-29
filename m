Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51361ECAAD5
	for <linux-phy@archiver.kernel.org>; Mon, 29 Aug 2022 00:20:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dmqFIR7czXX7CfbaMOGVSqGer6oCxZXNIUMKuftP228=; b=yP0hPoHssMMUbl
	RmeYX4D5NkWpV0VmDx8xwt9QzzwsArEjlTOyeiZ5fI5PEEnb0xVpBrK4TV5Fa7sSMx7jikQI15uwT
	mxGYN/5KbEVfFxchTW2w9gnyytUjCgXyQCQabqPQt/B0AU38K2Y4739aIG22b19dwQWWm/NLb9ll+
	YR1fh7A18uNHysKe67GWXwRsPDn2tbOZZIugNAYbyy8iJP2NJp4zP4Mqq3WH71jdyYbjvhlyFz7Da
	7oDBhVS4vQVjUKJjf4Nb3tMzUaRHq3oIbHfbwBeM4w6YjikO9zg+YvgJ2KYUi/XIc7EY15v5mBppj
	ldO4bZmD+TIEpteO1ZHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSSVt-0030y2-F5; Mon, 29 Aug 2022 00:20:25 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSSVq-0030tn-3Q
	for linux-phy@lists.infradead.org; Mon, 29 Aug 2022 00:20:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1661732422; x=1693268422;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=iML5Zc3OOFpN8B3Rl8VMWnzzvBs5oy16uRlP8H8m4Mc=;
  b=n/f2r0uCm9ojcoYJBfHl0/WrHWtE4QUlRRemhDjr292Yg7w3Li3XKMsC
   XPeIqxyWsJ+oyp1BOw9PPxzVZ6B78AVciKe7sdSjQzb/gHGLaMzTqxZv+
   eoZIB80OQryQ25f0P7cc2jrSpXDzp9irB0uJ3voFUrE06rRj4noJC2eEQ
   Lrew2kDlzuYIRnjFcDdbFzOFJUaFiac+vC5j2PxBg/RR2FQa0Xi/ssaem
   xI1evfLum04zPMs6qbkgdS0dyhR8TRpV16My8q6c3XJjSeHyAyAIhfs0E
   lR5g6T8l1Ef8w5yH6a89ukZuiReDQVn0KgG+Twu5e2wZrz6d47Ort1NyN
   Q==;
X-IronPort-AV: E=Sophos;i="5.93,271,1654531200"; 
   d="scan'208";a="208319846"
Received: from mail-mw2nam10lp2100.outbound.protection.outlook.com (HELO NAM10-MW2-obe.outbound.protection.outlook.com) ([104.47.55.100])
  by ob1.hgst.iphmx.com with ESMTP; 29 Aug 2022 08:20:13 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G8klzzMwFB+bJhuQlgRvr+FlJ0mGpaxFGgHRnjvwS9epZqSuZ2KDsEXYE1vEfXl83WY4SnvosUefknqRkqjvELPZXg5z3BvTIiqKNwqz9Wjg6OsSX+9/mT4JVEAylJZS+JVquJcpbl3aT8+vbVXAxQuOtCIY8cu37y7gHIcFFcifnEe0QJAwQu3lO9VnCbhbAiSkEpXpTxFnE0yagHc7PDAgTLpsLWRu6MO6AjIN4MdSJO9Sz4znAzT2coW+pBCkTtMnmYZl0viqm7NFMQZePUKt8+HakzKG6q5q48H/ibaz8hBK71/dOZ2EQLb/PbSA1OMF/Zg8S7Y+Kp+JM+6pQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qlXfD1BpMAMvfTqw0wzr8V1AxkI1ncAwYycf7lJyN2Y=;
 b=couW8ecbDf0w/grom7Y2Vpvn9lNhMgOMPIi70Sb+8TKSoMEto8ezHmzbGjtQmiNGzhv8SOvWF/1EkI46Pxa/x5wJk0v8zRJ73SW+ELIm0MiW9G3Wb/J83YyCQj0vHdNsn23N+q5UFGlqVfaeefdUhMfFJ+QUvVsmcMo+GyrMBz0gFnwCi/quFrZPdTM93z7T2SLVqCXuBEZQOsNPsW+NpLxpznSMCJyxodF2pWoeK7YRfdW+iC3fTp8Gn5+60ceekuJVnHdejT/4re/JUDzcx/RZMA8owv56DtTZUT70EUOx0qGEXSR4CPQeRJ33oFxOu++vMEuZTAShucUQ18CpOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qlXfD1BpMAMvfTqw0wzr8V1AxkI1ncAwYycf7lJyN2Y=;
 b=Ka80yGL+LoKf4qywTbnpfJsn6Weu7SbkjKTa8LqDjH6j0QGXYqkksMOgTaBHBaB8qYsb2GzCGpiTmtIeYapSDRqRHUVOpkKOmWbDP3UdT1nTs/oLLdy9a/Did0ru746oOyQvVd0014hByc2T+BKJSEzKyAsXsoCBrUjDqSlRkUY=
Received: from DM8PR04MB8037.namprd04.prod.outlook.com (2603:10b6:8:f::6) by
 SN6PR04MB3951.namprd04.prod.outlook.com (2603:10b6:805:4f::27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5566.14; Mon, 29 Aug 2022 00:20:11 +0000
Received: from DM8PR04MB8037.namprd04.prod.outlook.com
 ([fe80::c7e:a51:e59a:d633]) by DM8PR04MB8037.namprd04.prod.outlook.com
 ([fe80::c7e:a51:e59a:d633%8]) with mapi id 15.20.5566.021; Mon, 29 Aug 2022
 00:20:11 +0000
From: Shinichiro Kawasaki <shinichiro.kawasaki@wdc.com>
To: =?iso-8859-1?Q?Marek_Beh=FAn?= <kabel@kernel.org>
CC: =?iso-8859-1?Q?Pali_Roh=E1r?= <pali@kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, Damien Le
 Moal <Damien.LeMoal@wdc.com>
Subject: Re: ARMADA espressobin SATA drive detection failure
Thread-Topic: ARMADA espressobin SATA drive detection failure
Thread-Index:  AQHYdOvSBcLBZWQYIUC8b9MlWQLEfK2mvtwAgAGhgwCAAsWmAIAAOQWAgAA9WACAAAwygIAAE9SAgACpvICAAAN5gIAADLmAgAAA7ICAAAjcAIAAhS4AgAAnggCAAAIYAIAADPSAgAAA8gCAAKrngIAAAlAAgBIxloCAAJsQAIAAcPmAgAB20wCAA/HkgA==
Date: Mon, 29 Aug 2022 00:20:10 +0000
Message-ID: <20220829002009.q3ypdmybfbohk5pw@shindev>
References: <20220813115338.uq4xbznngjradzi6@shindev>
 <20220813120108.vaiwnzhofz6hy5kc@pali>
 <20220813124729.qondfc7z5eoeoq7p@shindev>
 <20220813125052.hjd6lhh4fcc7jl5u@pali>
 <20220813230233.3hyvkoexqitfnlte@shindev>
 <20220813231050.l5xadzdpavmmtdbq@pali> <20220825130059.5kat4fhddwj2nf4r@pali>
 <20220826001558.5cf887a5@thinkpad> <20220826050019.kvb7vca6fiwzajcx@shindev>
 <20220826140536.68eee458@dellmb>
In-Reply-To: <20220826140536.68eee458@dellmb>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wdc.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: baa85cc1-c858-4d61-8df7-08da89543c72
x-ms-traffictypediagnostic: SN6PR04MB3951:EE_
wdcipoutbound: EOP-TRUE
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  0Bi5Hxrukb0Z1hPUWVx5THljSv/h4xkfXczlWabDTE5/0hRwxCnfIntk/e7Jlnh3WDivpUvCOm3lHnG4hqgiShGxKo5VIOrlhIimtf1hu1PCojVTdBjSpbJiVkApYT21u1sYIFg1BUlM+Xlrz8OKV0vnnnzBwDEGxQpWR2oJfWOUZAelFPhilftCgyQCtkI1TyT0tRV0ph1nLIZcGIxOuz1tLfhT2a5J6sY4yzUknh4ovryTMdHRDJT/hWCJANeYLDCzhc3qkZP4EuXXsttx0PxYE4G5opELpUeaNtu8B4jna8Kgm414yBOUVch1HuXo6lB5U3zm1JU40q0fY1pnIK0mLpNuMyBb5YcMNazzkFZNl0CleV9T1MuD920Y86DUWkRK5mCQ/wZiSXLbxGgTmjf9qgl+bBhJjAOB3ovbqn/OTB0CpEKUeNcCqmIEOXuvgzwT/Ftf/vg9Blh2Ebe4THanFkyUuw//2GTXqlBhSL5IHWaObRRcsLcx9is+voq0CXLJEHErIExswPH64BuqlZG1jSEKuGx+ToXUHWWbRykmMnajntRIK8Rm7jgh3U7bh+mTZOeRynRtVIO/Vzx9AvZP7RAmp1QlR9PCZQX/cLCmFTrFrS4dxH57VqvWQqW2/V4d2tePadzwoUMWMbrWtFztT29kwi4tWJnrr9riALJwu7TFr74bF8fKY+U5PR29YeS8vvZFwIEj80ChYP8auYQ8MvQK3FOtFyyIJ+5il6gHdxvyFgvxiyVc7hJG0lxPYUUTLIJepXLvZagB+sFWbvRRdmnRHr/He/QzBl1Bw5I=
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM8PR04MB8037.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(7916004)(4636009)(376002)(136003)(39860400002)(366004)(346002)(396003)(44832011)(66446008)(64756008)(8676002)(4326008)(71200400001)(966005)(122000001)(6486002)(478600001)(38100700002)(8936002)(33716001)(316002)(54906003)(6916009)(82960400001)(86362001)(66476007)(5660300002)(76116006)(66946007)(66556008)(91956017)(38070700005)(1076003)(186003)(83380400001)(9686003)(6506007)(2906002)(41300700001)(26005)(6512007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?iso-8859-1?Q?mBrBzYlwbfkR4T12KgLbZgN5ChV8/BazLmBNGuMvrVeZNR6SBmVDgaZYe4?=
 =?iso-8859-1?Q?P+71HW8Urdze/YOTQZ5cSrh19UJu4tLP2GWHKnnfIUv3JQQulR/LDWXRzv?=
 =?iso-8859-1?Q?3xLGO/6UaL2qrvvQ65eRsoF62MH1ru5scQtWrfQwlXZu2+zvWfsqgsdn5X?=
 =?iso-8859-1?Q?bRWqVKkKFirb5cQG4bdH5oB20CMlINIP/wehJzPPn4pAW8z87QAAtQM9y7?=
 =?iso-8859-1?Q?SfiJ0+HfQjPChxzmR1VjvyipqOEcr6NvY8UDUtCt+xXt5nY10sjAOmdgcx?=
 =?iso-8859-1?Q?W2mU/94rC+fHdOoK5DCzm2yjrbvTdnocomRk+HTtHEFm/RZfsFUczn5xAl?=
 =?iso-8859-1?Q?ZrYpXnW6HzJ+SmFGTjg/MzcGwyFiUGkCpHYbzuELXGUJA2n9BzJ72TbK+o?=
 =?iso-8859-1?Q?nPAahQpQNZUVxt2WKcGnh0HLD/zbZEou3CYXaLhTO8AzIXOo+4mnNHbF4L?=
 =?iso-8859-1?Q?wY5W4DvhK+csKFyJAuSuMnvtuUTRTA/xR1bPAe4Ceoqoh37+Oy2ysO1vYB?=
 =?iso-8859-1?Q?MCvuZ6ctQKSXWYrMKHsROmF8ZnCXPkYaSdZvle71jDHV984tPmA7d3yORF?=
 =?iso-8859-1?Q?XJGI9bho1dm02JU9SwKnNWHeJPb2iPlVT482A2RRzGB+7s2CqYpajJuSg+?=
 =?iso-8859-1?Q?ehNAFw6bE9PXMYUiBZeQcv1y+hQorxjZAY4/v52zsOCpDFj4lCBPFtmZzJ?=
 =?iso-8859-1?Q?DIcD/QAMXFjA4g2M1KgYHy0nZ+ncOhdUEJ8EDfhnfy3B9axmnOD9KAexQ2?=
 =?iso-8859-1?Q?XVPYqP14uEL/nxSrnnfUIw8/uGTDJOnHgqQmAM1IIZeeEa9H0eKyFqEcNA?=
 =?iso-8859-1?Q?Ijd2f7WblkMZT/x5vk0azFjUGnfC/30TA5eLSZyeKIJOHb0mLYkOcsarPm?=
 =?iso-8859-1?Q?6yQmKwkcwil97viqNFhLaP5bPaOYHj3hMLK/f6Slqki7gIBFiasx0zn46x?=
 =?iso-8859-1?Q?cZ8N3juQLiGdCZTK6qDAZ0YAY66v3s2u/sZjfccp7iwYIlgD8TfHukZXRr?=
 =?iso-8859-1?Q?CPw16UE1f7+SpwF3ZI0ZwaWpUQXbe+L52fs81Bd8H/gLWu1fceao3TGB67?=
 =?iso-8859-1?Q?Rskq1taPg3Pwzm5jZkTNWeXn2+ni03qPIR7TGzSuN38DRsuohApgq+Ax3B?=
 =?iso-8859-1?Q?xrvOw67bkfzhbjQtYyJmRiSMojK+ZdkUAqHEsCkKhmC5I4CHAD4rdzjp5A?=
 =?iso-8859-1?Q?cIKcmQKAz66Zi2VPuUqspSdmN9RVIcpN+pkqeoqX7TP2jvffBoUvpt/s/7?=
 =?iso-8859-1?Q?OcozsetD7hPxaoF7w86mYXaJMcfeUYrNLEuHcJaY4yjQyZ4710PzGgEwFB?=
 =?iso-8859-1?Q?bcLiZOfc+UzdXsiDA+wXdxZVJA8o84DO8Dvoq99BxusRmTsc1Pq/2QYVts?=
 =?iso-8859-1?Q?E7YTOvUSOtYOG31jjILXZwQyDLkYDNWdhAE0IlR7TY0bGeJp8aSbILHzbt?=
 =?iso-8859-1?Q?XfhvRbTGBpSrTfL/YnlY95kpSqcqXcDVDul0NM6B032OoKO8SFxRFvgfpd?=
 =?iso-8859-1?Q?ErEXJNbOJ0BAHLkNWSJNrrcN4XwUYkYfH8pcnF1Ee2yBI7/Pcnv3oFvbUO?=
 =?iso-8859-1?Q?4jlINcOleSDeLZpHt9cyDUAmjWUeZt246UQefA8i9XDe0uOC1dDuraPjUG?=
 =?iso-8859-1?Q?souqzLB7S6GZzaj9LrEf5A6reb3jVrbQbRxcS+Dv6z1bofh1XOg5CXLKW9?=
 =?iso-8859-1?Q?L2ZfM2LRjRzbPlxDuoQ=3D?=
Content-ID: <43AF03B286BC63448FBEEA7631A04C96@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR04MB8037.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: baa85cc1-c858-4d61-8df7-08da89543c72
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2022 00:20:11.0120
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 42P5M0huo0fBEJCiT2hF+qGta8jatG+SWyvoDqidJ1Wo6G2gMx8M4Jbpa7oTUkwhek8vcaVM2FODrpjYIfTzP8OWN0ewdgODRad1s4QN+Bo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB3951
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220828_172022_540430_D50EB307 
X-CRM114-Status: GOOD (  25.34  )
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

On Aug 26, 2022 / 14:05, Marek Beh=FAn wrote:
> On Fri, 26 Aug 2022 05:00:20 +0000
> Shinichiro Kawasaki <shinichiro.kawasaki@wdc.com> wrote:
> =

> > On Aug 26, 2022 / 00:15, Marek Beh=FAn wrote:
> > > On Thu, 25 Aug 2022 15:00:59 +0200
> > > Pali Roh=E1r <pali@kernel.org> wrote:
> > >   =

> > > > On Sunday 14 August 2022 01:10:50 Pali Roh=E1r wrote:  =

> > > > > On Saturday 13 August 2022 23:02:34 Shinichiro Kawasaki wrote:  =

> > =

> > [...]
> > =

> > > > > Perfect! So the issue is with mvebu_a3700_comphy_reset() function.
> > > > > =

> > > > > This function is not in TF-A code and neither in my original kern=
el
> > > > > driver implementation (still available here):
> > > > > https://git.kernel.org/pub/scm/linux/kernel/git/pali/linux.git/co=
mmit/?h=3Dphy-mvebu-a3700-comphy&id=3D4588902a3528195bcfdda9f9e1e14262a1955=
df1
> > > > > =

> > > > > Marek, this function mvebu_a3700_comphy_reset() was implemented b=
y you.
> > > > > Could you please look at it, why you added this function and try =
to fix
> > > > > it? Is this function needed at all?    =

> > > > =

> > > > PING? Any progress here?  =

> > > =

> > > Not yet, sorry. Maybe we could do something like I am attaching, until
> > > I have time to play with it?
> > > =

> > > See attached file.  =

> > =

> > Merek, thanks for the response. I applied the attached patch to v5.18.1=
6 kernel
> > and observed the "ata1: SATA link down (SStatus 100 SControl 300)" mess=
age is
> > avoided. It looks working.
> > =

> =

> Hello Shinichiro,
> =

> would you be able to test another patch I am attaching, on clean kernel?
> Whether your disk works or not...

Sure, but unfortunately, it did not work. With "a3720-comphy-test-2.patch",
still the error "ata1: SATA link down (SStatus 100 SControl 300)" is printe=
d,
and my SSD is not detected.

To be precise, this time I switched base kernel from v5.18.16 to v5.19.4, s=
ince
v5.18.y branch reached to EOL. With v5.19.4, my observation is consistent w=
ith
v5.18.16.

- v5.18.16:
   without patch: error "ata1: SATA link down (SStatus 100 SControl 300)"
   with "a3720-comphy-sata.patch": no ata error. my SSD detected

- v5.19.4:
   without patch: error "ata1: SATA link down (SStatus 100 SControl 300)"
   with "a3720-comphy-sata.patch": no ata error. my SSD detected
   with "a3720-comphy-test-2.patch": error "ata1: SATA link down (SStatus 1=
00 SControl 300)"

-- =

Shin'ichiro Kawasaki
-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
