Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 837DBCD4F35
	for <linux-phy@archiver.kernel.org>; Wed, 13 May 2026 11:22:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e/UdBqXkTBftnOS+dQp6oxZHEAS2wEhlPp919H0XZzc=; b=bdekiTmHujyv+U
	YYsjQOFoQnbd/da80mPxRriRtFsuiCrDFsLVJgq2Uw0ZH4Hrdt7i+Mt6hzcWMrFDYpe6X98Q4VK/r
	ahe7YY7yvJaCuHze16K5FRGla8XEKqPCDo+VBcCy43rJWuAc/OInfC1vuVJsreipfXJlA0/Ore5/n
	2+5OOCzU2B4jWpfEjm+SKKfl0+vvMlwtiDBORCR6NgOeyMVenOI4h9Yxf3B4GWRlO6CmaIHEBRJ7a
	A7fFwAm7p/E7JhtZuCWFjaHvdad+3REc/qEYSRbuCOV2atyX430+/hZMzmm9Oh5obzgG9m2t8q0cz
	iGGQ8Z1ZMy/EYZswOO6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN7fg-00000002Ky0-40Ma;
	Wed, 13 May 2026 11:22:36 +0000
Received: from mail-westeuropeazon11010053.outbound.protection.outlook.com ([52.101.69.53] helo=AM0PR83CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN7fe-00000002Kwy-08c9
	for linux-phy@lists.infradead.org;
	Wed, 13 May 2026 11:22:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yra6sBsmIzVxqzPewEL0QLJ/HTbMweZFc4n47O8s9qQGSa2ci11U2NEyQ9W2UOmki3mvrPwZeAVdlDmXN7RFdqNW0E0FZFIOqcnYteEpRoY0Tlrd3hn0N1ABXd/dEpMrekl7FsWBdoneIyIJYpDvrUAe0uMDHdC6R0tliHr2quwrLsu9fdaC6HWRXyybDoKFJsjXWwXaQ4PWQ5egaYOFYjhR8BSnf5RYTkXCH9+SFlO7cHl5VRZ9susVAopAHKZ/V8kzmT2oOjbH3OwwmfMzNsKKSCQ2H/PKiQhk5O7eIBlxE2fkxyTti7aGFqaUBWuMzgJSD++4HmEz0+AhgSkbPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OSzCNiAMNgsrokD/zhG2PGlc7O3HpjekXfVf21mld/M=;
 b=MoCKX/r3VBsimEvl+5exJxKFYTJ1iGvPym9cVUo+wfLn4TlIibdlTTMPB2YigCd/8vIyjl9eF14mK/KmqhEaZb+CrfAD45Ex6Qo/wmGEplSX5YBeqj6My8Hiq0GVmzwj6q8s67Lb7KVLUMQlGwfTtb38OxOYC9hLk5F5X420wN64UfGXDWRiA2rxJcrDhch/DJ6aod3rZ+NYNqtNvbfw8mksOJwXtXA4Y7MXHG1FqRRNZS2tFxlKn7dLhkOZBC2Kk6WP+3OxY2JggV04J9Hcc3br3IZ7v94LXIRDYNSp11G5SC0BWt3IexFcaVDOpWfZWrsIpFFKklT3WNXOyOEsgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OSzCNiAMNgsrokD/zhG2PGlc7O3HpjekXfVf21mld/M=;
 b=cduMFaZDImlRKsY1BM8KX1MZKRToNczJzhisi8+FHOou/kW04m1Uav/77hKHZSoCuA/AjTh+jwtoaFg4wXLKEkdet3rw4k85hugSRftse0Q9o7cVd9ZgmpiFqhA8MUgL255XlaLso4FBCYNxsVvHmpiBecBkEPzxVHzEs1AEGdc3GCAdbAi5U3knwg5uBj+LoEmjNsPFK4oxLOxJelCr7TiDpUR1J2E6pgOG9S7V4Sk02CxtATpvRd/a4RqofD7XANFRrtGNIBAVR3ILzorFgJ2St5Q2BloFC0YkdDv8I64dP5VcgR70eLI0hu6As0vkpFCmciFJAwtAiRO4imtvOA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by DB9PR04MB10010.eurprd04.prod.outlook.com (2603:10a6:10:4ee::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.12; Wed, 13 May
 2026 11:22:26 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.20.9913.009; Wed, 13 May 2026
 11:22:26 +0000
Date: Wed, 13 May 2026 14:22:22 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Josua Mayer <josua@solid-run.com>
Cc: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH phy-next 5/5] phy: lynx-28g: add support for 25GBASER
Message-ID: <20260513112222.2szwvxptk2udv7ga@skbuf>
References: <20260511150023.1903577-1-vladimir.oltean@nxp.com>
 <20260511150023.1903577-6-vladimir.oltean@nxp.com>
 <375dddbc-385c-4dcb-a280-33292215ae67@solid-run.com>
Content-Disposition: inline
In-Reply-To: <375dddbc-385c-4dcb-a280-33292215ae67@solid-run.com>
X-ClientProxiedBy: WA1PEPF00005B89.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d8::637) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|DB9PR04MB10010:EE_
X-MS-Office365-Filtering-Correlation-Id: d2e351e6-58f1-43f2-1414-08deb0e1e90f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|19092799006|366016|10070799003|376014|22082099003|56012099003|18002099003|3023799003|11063799003;
X-Microsoft-Antispam-Message-Info: HEU45+p1q919sXab1c4zbJe5SmUFfnHh4sCLpy9yltanGjB5a/p1nfATK1KCOKHFKMP0CqJ+FGbzHlnS5IwnB6kpdxcipjwW1Dgaa/hcJMOYw8ICbP+kHkcVRDhTFf0+cdIktE0O7KG7Fs5khL9fTFJL7ABqYxablm6r7N57J055TKQaoB66jMnzhiYAz0LTQNcQCYu9YZI0Tkpo61HjdFfcVgejSUtEOTYAkG7rqRwLSGDYbWqFrk1Nvun8T6G+z4FhesOKYeMImcCP6u5YXt9At0mqyqYAmZsSz3IA+GSAyMAgfnDqM/VBitzoYFBQ5U5GJOUjSE5hZe6IsYKBAOt8nx63DDTQvI+RplOnSe4O0VEVxgRh+1p0vPgmCFzdyRKsEKYtp0Kzy/PN8vQ5URUeM3iwoSVG7fswYI9/jsEgP6+PszJawn3hPV7JK4wRXowxGGC+hT2XHb34mKyeFH1w/x6YO27CQDjuJVxVP9l2spQBViCHGekbAe+x+VrQnDAPq34xOGgdror5tAFwTgTheY2ocFlOEAWVGdyQxebXfJC0XoNMgQI5BPCyaWLYs+nEX4tdK7DoXYbQSFdjbz8R5NmLewI3rEFYsW1oxBGVY8W4J/2M7LuMybwAgV6EpJvqvU3ojufEEqqtO/KMZfsEPfq93ChfMQswD2RZ+D1wHt/UuGRb94W5T5/O27bl
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(19092799006)(366016)(10070799003)(376014)(22082099003)(56012099003)(18002099003)(3023799003)(11063799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?UBbTDmdF+EhZTt+SXRnI9Or4bJ4KqriQwSC+RjRcf8IWTKEGhJy9X7qHlT?=
 =?iso-8859-1?Q?/KMQ52NnAl6sYXfX2aTCSwABJomYyYEcM0HVma6xmUL47RqD7pdWyOhsn7?=
 =?iso-8859-1?Q?1uIioc8TdFkb8/EzCmIgSQ64UaHi3RZapweT4Fwj/d+AeHgz3+nRrXTXl+?=
 =?iso-8859-1?Q?ervNeVQGHsFXAwRymktsi8z/HwcUgvpdeDshbBZlxKvVVTyaxX4tt8gopK?=
 =?iso-8859-1?Q?KrvB0e3nWkqWaAZGOObMahX5yeMQYGkDHtzZ1aFF0U5gJuuw4oGyydjYjy?=
 =?iso-8859-1?Q?vg5K6Fi/ywtQxH+1XIgn6IN6+iUlC4cDVvo5fGQf2W355PLv4Q8H49hWR7?=
 =?iso-8859-1?Q?tTbHCHAOv6cMevPsd2nLsfSnJjT1ZgNPXY+POkG+D5q6di7vutt4+UevBC?=
 =?iso-8859-1?Q?QnhuYgz0B9h51KYLg72c6o8xga6O15aeUOZOmCjWjeSdVxlrniDOrH/hII?=
 =?iso-8859-1?Q?IBGEVeaxROSdFF/x+zxb2WXNb8axM4eJUt86A9cF3NKiw5Aa033MUqZhQX?=
 =?iso-8859-1?Q?K8o9JgvVCNPwyj+iIv7NJWSnzCN83QDkljg+GVSu45I5IgRBrGlj1dVE55?=
 =?iso-8859-1?Q?3U7zlr10g9ujmgjDralS6gqe5VYw7Tw94FVA9SRescwISWCCdKS7e0YBMn?=
 =?iso-8859-1?Q?019PXE/5q7e9y5pPCJtibJXBYRAytMNL/U2OybfFNfppulSQJZ+OWC7hx9?=
 =?iso-8859-1?Q?ipEmXcLwQ2S/kgQhO1zM2QqybjGTJAxB7plO6zrzTFk1uGeS9U14WCOr4e?=
 =?iso-8859-1?Q?lbcl3fZJSUunn+haDqFn1CJjiORDyvKlHwH3igJMnUAxLk5prrdsTTqzNQ?=
 =?iso-8859-1?Q?snot4UsqZUjrUMY8YBKjvd+ROOG7/b+BhyJCWKIpvZUxrZfVgqa9jf5/Pz?=
 =?iso-8859-1?Q?HkZiCZfaJrrAyH/ZLRa6+QMVe1bQBRB0r0RIVei4WQRkOnquiMF1ylIB1j?=
 =?iso-8859-1?Q?q6YPCuJnlB7KmJIjzYmd8EcPYInMwUAXS0T47QSVFJNJLPhxGBzTaGkhje?=
 =?iso-8859-1?Q?7wbKAwLhRyeXgmgzlraPD/nf0rE6hbBYgCeU0uj5VyuztdRQKg6nEuz/gD?=
 =?iso-8859-1?Q?Oh4qZ3AHUtKknoS9N1mAH2ijpD3/REZKQN7JoGDRZwtLiNz69ygAITHr4G?=
 =?iso-8859-1?Q?JlRajbK1rfrrB7PyomMST7l31kMUjBdgRZCnib6vp3l/VhgKlgvzTEZSfX?=
 =?iso-8859-1?Q?gQO5Q1Qkr9G7kR5lf9y2W6sV+pr96k5RQdZyFBGAgDCUgPp9bG1yRhB+Qr?=
 =?iso-8859-1?Q?oOo5uKEaY4fiskhDGS6v4vbQBWuP1ush7B5OOELYACbawf4uFFukuR1y6T?=
 =?iso-8859-1?Q?vPBbThBP8VBSL9unX5Pq1Aqj1dV1ks7lZRlgiK2ulAL0U7tOV/4b/5Wbtn?=
 =?iso-8859-1?Q?sRbxRpqj7toLpSQf3fhDSGHu4Bjttpea94QU3BANa1iwLjoxc4s3kLLPn6?=
 =?iso-8859-1?Q?vk/7O0wpfDP7WrqKj/CNbkIEMjeMW6RxxXYVd+gmveQxkA6R1x5/8W9smv?=
 =?iso-8859-1?Q?RM9TWUdAGNrm20nI/U3Kkq6gHb9YPot6jSWcCm1YpAOwkxV/LStBuxWdpU?=
 =?iso-8859-1?Q?M/dK/0iADT4BljflSxeq32KKWBQJHPDdqXT7Ha+IizGy7A44t4QCFV0T2Y?=
 =?iso-8859-1?Q?DsT0BPzCcoxRyAWBCoQk+Vinju6E0h95LvT1NVX47QEHcwZ8CWjS/xGoPR?=
 =?iso-8859-1?Q?fCxMv+otrd0C1aWK6cFDNt3WIh9coTjCkcjyM4aGs7iXNW6kaYoSzyBWi0?=
 =?iso-8859-1?Q?XkyZS8/v4hHpJYzkhalhEacLn9gWFEzPzoyZ/f4f/jYN21uzTnQSCBRjuc?=
 =?iso-8859-1?Q?Y26Ggp67cdbq2eMh35lwkNOwmHyjFz6QDAsF+ktmi+VUMTIg5+3PF8S758?=
 =?iso-8859-1?Q?rF?=
X-MS-Exchange-AntiSpam-MessageData-1: EDpUzxLiw8wQAw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d2e351e6-58f1-43f2-1414-08deb0e1e90f
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2026 11:22:26.5118
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qM3rkVEbX69/eN6inYEEoyJubWR0kb6juGhpnPc2Ug37+4+bp4Et7bbZee5qY263IV+APZ77LxFOlUoYpbZGCA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB10010
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_042234_073565_AC578EF6 
X-CRM114-Status: GOOD (  11.71  )
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

On Wed, May 13, 2026 at 11:00:32AM +0000, Josua Mayer wrote:
> Wouldn't it be more clear instead of indirect lane offset shift with
> lynx_28g_e25g_pcvt, to instead fix the E25G_CFG definition?:
> =

> -#define E25G_CFG(id) (28 - (id) * 4) /* Offset into PCCD */
> +#define E25G_CFG(id) ((id) * 4)=A0 =A0 =A0 /* Offset into PCCD */
> =

> This is equivalent when inserting (7 - lane) into E25G_CFG id:
> =

> (28 - (id) * 4) =3D=A0(28 - (7 - lane) * 4) =3D=A0(28 - 7*4 + lane*4)

The 'indirect' lane offset shift is actually a two-step lookup:
lane -> protocol converter index
protocol converted index -> offset into PCCD

LX2160ARM documents PCCD fields as:
E25GA_CFG, aka E25G_CFG(0) in code: 30:28
E25GB_CFG, aka E25G_CFG(1) in code: 26:24
...
E25GH_CFG, aka E25G_CFG(7) in code: 2:0

The odd bit is that lane 0 uses E25G protocol converter 7, unlike, say,
1G and 10G where we have a lane:pcvt identity mapping.
lynx_28g_e25g_pcvt() performs that translation.

Additionally, for locating E40GA_CFG, E40GB_CFG in PCCE, I've adopted
the same scheme downstream, where E40G_CFG() returns bits 30:28 for
argument 0 (pcvt A) and bits 26:24 for argument 1 (pcvt B), and it is
called with this lane->pcvt translation function:

static int lynx_28g_e40g_pcvt(int lane)
{
	return lane < 4 ? 1 : 0;
}

Are you saying that merging the two lookups would be more clear because
as a reader you'd get to ask yourself less questions (the code would
flow more naturally) despite the non-trivial lane<->pcvt mapping, or why
exactly? For me it is the exact opposite. I can follow the RM
definitions and then I have a separate function that tells me how lanes
are mapped to the protocol converters.

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
