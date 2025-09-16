Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC4BCCAC592
	for <linux-phy@archiver.kernel.org>; Tue, 16 Sep 2025 17:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yE5gDv+L6UvSsT8TTygoR6lK3qAdI/n0cX0UQCUO0Ro=; b=d6fK/9Ki941CEI
	mEMEvzY4FAl3hdNdCsEEGwF2HChGb49bsbW1RmpwId8vHxMOFh4Fl3F5YYQPKwzM8C6G9eZz4FNVC
	D8U5+DX9pao0NCxUmrSdUmS8+1FKJyvzETXec8xrN6Abz/CMiCbbiMb5Q7zENNun7v55gCnjhdkvw
	bWhWr+Itm+JXgqre3KYYGnB3n4gCVzS1ngo49oC6cX69t01S8gahy6+6JUYRRrnuRRmxwRs5H9Al9
	LM8G/BEM1h0NMAvNtrP5UfQUCrHWQiI4u4jHDUT0VYOx6mfdX1rqIorjIVV0FPjmebdthhjDNEM2o
	JLsuHP1tMmLq0aoFeDxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyZ9G-00000008ZsJ-2U1w;
	Tue, 16 Sep 2025 17:07:22 +0000
Received: from mail-northeuropeazlp170120005.outbound.protection.outlook.com ([2a01:111:f403:c200::5] helo=DUZPR83CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyZ9D-00000008Zrx-4AC7
	for linux-phy@lists.infradead.org;
	Tue, 16 Sep 2025 17:07:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=clREPUiGII0BSXkitUE/TxNBtbhIJHw+CGcf88Go2IHFzNNw7z6Ia8JAIPPU2ujhaWPiQ+lcD/MB9dr1r7lC/54/Eer5DaB2b2QdP9M0JfbMwV3EEE/XmtBqB5SldIQfLDlqrn8vY/LALzIIU2MKJgWlCsNF5/4Z2l/EZ3hgus91Tr9lAShbT+0dbVzbPyHE8o6shazeyPCu6sGT9ySNXATofFM5MWVkK+BN7exkBQLRDn4Q8DGOHCsasrDeQIxCqWDgzyLUgo2xpvneYpoqwy9U7r7WogTZWlK7zRBj9dEns8uMnmSLg8owbmbikpOwnMY7EujIhboXb3BBDYjYvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E0+bqw3GUORmWKiHyvnINkYPYf8D3+FjwkgYXcRk5gQ=;
 b=rrGH9PVvtJ2dIJJu85dFLF9gO4UhTRUVugBMymVhTmH1+oWuFPBC6An2C8ZDuGGYD5EYjWtgbiTuj2Vv9FZKFUg4oIrw+C1oa/u8OaKUasC4fclhfr8hSA8yORiR0r/47s2jw+tfDFtfHo0cjRxGyhfmMuuZ4DHOqLeLtBKpT/WD1chi7jVHAx7+xlpwnQU2/gHStqt3KS5t4N7tTWua9+rW/yCO2pks6K79ypqJuFFW7+oofc+oAy7vBCtKNUlDC9pc/s+BvV5a6ViGjVB+42Wt5icNDDL5/y+TyEAh6MMmyUvJxw7QPUZTfIuhZa4+clRfWpDrwQeqaf2UEdKlaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E0+bqw3GUORmWKiHyvnINkYPYf8D3+FjwkgYXcRk5gQ=;
 b=ZL1UE26LY4Vbw5Qq/zsVVepLRnLhwO79wWBDFqzZUXRNvmDCZ1Yy3NIOLWVq7hj1bbHmGpiVHqfjsZMZEFQKrvMh/pIJL89LhtmfocdMbOU7kP5F06sqDkY3cgC9lFDhNFv32qqjoEfSdVqdAmaXamMLFEpHH0AxB59qe8sIAOl6JVY88EmoI7GLkQ0gnXu5DjNz5iXgSJi13faS3/sPQ+LsGhxMMVx+GnCSQSTytY2LCUwJ49cBRJgsko2dIId2mB3VW4I9d76O/dnM+d5LcCz1H3YPkOz4MzCaKcuRWzJKvk9/48tWMcuVpK5CiHdWjHBEJ+OHz7TeavgMETuTmg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by DB8PR04MB6922.eurprd04.prod.outlook.com (2603:10a6:10:11f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.11; Tue, 16 Sep
 2025 17:07:13 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::b067:7ceb:e3d7:6f93]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::b067:7ceb:e3d7:6f93%5]) with mapi id 15.20.9137.010; Tue, 16 Sep 2025
 17:07:13 +0000
Date: Tue, 16 Sep 2025 20:07:09 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Josua Mayer <josua@solid-run.com>
Cc: Conor Dooley <conor@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH phy 13/14] dt-bindings: phy: lynx-28g: add compatible
 strings per SerDes and instantiation
Message-ID: <20250916170709.l6ahgfigcbqrlbj2@skbuf>
References: <20250904154402.300032-14-vladimir.oltean@nxp.com>
 <20250905-bulky-umber-jaguarundi-1bf81c@kuoka>
 <20250905154150.4tocaiqyumbiyxbh@skbuf>
 <20250905-pamperer-segment-ab89f0e9cdf8@spud>
 <20250908093709.owcha6ypm5lqqdwz@skbuf>
 <2b1f112e-d533-46ae-a9a0-e5874c35c1fc@solid-run.com>
 <20250908153746.7mfobudenttdi4qd@skbuf>
 <fcfbea96-7978-49f6-88c6-f78fe52edb7c@solid-run.com>
 <fcfbea96-7978-49f6-88c6-f78fe52edb7c@solid-run.com>
 <20250909113543.q7zazfy5slrgnhtc@skbuf>
Content-Disposition: inline
In-Reply-To: <20250909113543.q7zazfy5slrgnhtc@skbuf>
X-ClientProxiedBy: VI1PR09CA0164.eurprd09.prod.outlook.com
 (2603:10a6:800:120::18) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|DB8PR04MB6922:EE_
X-MS-Office365-Filtering-Correlation-Id: c51e705b-80f7-4487-023a-08ddf5437ae2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|10070799003|366016|1800799024|19092799006|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Jia1+T60HO8F02YFT8QPwCL8HU4kFAuD7FbxFcad+qqcsgrLQ7JGNzVkC8lS?=
 =?us-ascii?Q?pPeWnWaYyLKJm2ya8AaXcR2HJnPjRAsToYfutW9hk0WQgDe30PHS8GsoAG+M?=
 =?us-ascii?Q?yZOKUTJZvmtG6WhbtXTZgidUUtxtb1RwH/yPWtG8Tq/ATE/vmPxhu2kRO0SL?=
 =?us-ascii?Q?vj4DDkAtRq9YuGm69iM6CbL1WYIDmxsSDFKOpmiuNioioDPgm4z5UyC1h01F?=
 =?us-ascii?Q?anvPlQnz3f8fqr2z6Y3KcJXJ/5k9AEHKbdyEDxfVMEIqxwSAXRpYBRjQKWvV?=
 =?us-ascii?Q?pihLPAdfyaWwExpzLDhKpnMYg/q5kqFzvmQqj54eY6YTMl+1tPgs8XN3bpFL?=
 =?us-ascii?Q?bup2c4ub6rakqL7AV1PxIijtNOzAt/9i1GnvZFVh1sP/2OBso9ZbrP214R24?=
 =?us-ascii?Q?fjnM9KAhG+LrrLmDayOsqcj4jThVB4ATa9FCVvRxg6noSrW+pW4p+iPBXoVH?=
 =?us-ascii?Q?JkB99UmDRbbjJvRFFPpG3vj63ryZMWhJqmvn1oqSt+ZGr2B4O6qFdz9DLFdF?=
 =?us-ascii?Q?Pp7lafgVviH2GdTUUwx6V3ZQOsDs4PZiI/LrrlRJb70MyNedul/tff5H35rl?=
 =?us-ascii?Q?iuyobrV35tAdGcuvYcPAogOCNjjR79K2/Yt/m2+e7vMFaiOh1Cjo36AIl9ZW?=
 =?us-ascii?Q?MvhZ96UL5ze+K5T/50NU4TWlDtVsTHX2Zzx4yiiZOidkTT5hyuc/kzsrOXeY?=
 =?us-ascii?Q?2LGSiulxVIhiCUEKXbHGdXplmXL2lDaia2amQRn/4MLMVlK2qtBaiYbCXJWF?=
 =?us-ascii?Q?WWkfozgyW+UjG7XKgEyrkcp/qxKaK1yrh8gMZac/TVdJFwrhKC3HVsihS0Fh?=
 =?us-ascii?Q?8d3HqqTt7crAVhfnjQWJAFlR2sLnV1SPWIQqqdOrLVB+Y2NRpgzQw1tQvTqA?=
 =?us-ascii?Q?PRqdPE9WrUL/sygRUvlr11OTrdvzPhp4C9bBI6GLlTg4fRhQIK/T1x9P53yg?=
 =?us-ascii?Q?z6aSLmhtbLYTK3HIhr1uR+K7tSxVNcbIoLEBw4NfNjXfPcE5L9LoY7YC0tod?=
 =?us-ascii?Q?eWv8iNsQNfOlwAIf8dvxmf/Lj2WQPRfDhrtnMDpol0Bsnc3zXgBc/6j86VLq?=
 =?us-ascii?Q?hFXTpVT4vQ4E/B2lcTwAASJOD1Cj7IXlqgmdr3tt0RcqCgxMLpHeR8WkXtl4?=
 =?us-ascii?Q?t0kezO7TqoTKdB4bLfi0NQGP7L00D4OkFx52rKPghkAfIjOOKIlZJVuab1Nh?=
 =?us-ascii?Q?ZE6bHoktdrAGJ8VuPVMHncgG3VQnRFY0/IocApvYieE7ucWNg0JCcBRokdPY?=
 =?us-ascii?Q?pMgAM0ynRFwn9KGTex6LYoefYI8Grr+lqXagwVphyCBUr4HocbQs+4PhQS1U?=
 =?us-ascii?Q?c9UTZmIegpZ9a7nERBsEX4LO0AnYmherYGAHl4Al2R0wTRqo8Q5ojZq3MIif?=
 =?us-ascii?Q?Rj6K3zL6Zt6GmD/KJv2iMyrc1fbqa0wEDlcj/cWnaMxGRK/nZbZh6mi4ktlY?=
 =?us-ascii?Q?0a9gISKbKRg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8PR04MB7779.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(366016)(1800799024)(19092799006)(7416014)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gfyMIk31bxqEVLssN8TG4bNcfjAKdin/MSV95739QH5AcmMTJDpsJoLwVh0U?=
 =?us-ascii?Q?CgKW+X538p1dBVNn+hbrW9EYHrafcl0MHqrPwFAheNrV6dvhUW+dS/K916Y4?=
 =?us-ascii?Q?qfeOhx22GdW6slH7Ju+bgMpQZPXBqBuGTF6yAzNgJ+9xgwFY4ZDQ/OeoL2uV?=
 =?us-ascii?Q?dIorPmbwW1L5bUeyKFsjHj8pyIAhbAKgvxfwr+yAN8c92wm4woMC09XxuLMN?=
 =?us-ascii?Q?tZ9apLASZNXrweh5Lk7ISSw/Bk3QAFogcK9bkTVXZLFPDelvZZJAt9jXeOkm?=
 =?us-ascii?Q?2LgocA9jUeX/ddiCd7f2G3dUECRKGmxjlqvIuIZKoDTroaMPbwjgfNAhZB2N?=
 =?us-ascii?Q?uL3AokLy1osz+dk34Bu9wNpFDWXXQTBIU6oMMTUw1thneDkXRFjGXfVeAL2a?=
 =?us-ascii?Q?22TkB/zrazJs05Ho2c8bMC0qHkyWrR23ox5wstNTvVtutbeWw+nATlVM2xyR?=
 =?us-ascii?Q?KIaTl6BHpXroiUoEoGndOhYJaIrbo6qhW4/2EkAlGhCwCGPjRmQ+8wDDoqFj?=
 =?us-ascii?Q?tBlaRuCBvk7WHBsW7RyeW6jKYOeIwZe+FO7vWf3MNaTPNOKliMkrl5XZLsfG?=
 =?us-ascii?Q?mT6Bh62/7iGHBSQZCK7RbBiSbiLocdhhtx/LYfUBbIZMEj1Vs81bRwtQrjZc?=
 =?us-ascii?Q?Kds6HZ2RP89ETiYLZkQYYWtW3Ubz1QQ+wkmKkrRDO3zy7pZ/3NBRP4DgCt+L?=
 =?us-ascii?Q?3ZJqPpKeLiAXlZnSSd6FDLi9spmmPslkdUV/vClRK70DXccWdNnukVvSkkUr?=
 =?us-ascii?Q?jNUggiykjzdYhhA2uz+vvT6mQ8B/WHI3JLGMBQZ/D5QrOJo2r8WntoXdsunz?=
 =?us-ascii?Q?oXOLOGkcRAyjwUZrITC1klykuKOuGPcOOj09mG58TxjrepKljjGWiKMEYr3T?=
 =?us-ascii?Q?pa/wTzeshca/cql7sXjZqrQgOdJMa1wX1Pj2pybHQun0TBF6hgQSASueXOct?=
 =?us-ascii?Q?NciZrmeqkYR2aKHWL9oeFIZhSYb4jzTt5Dol2oiniNsCK+MnLMLFFaWC0oyh?=
 =?us-ascii?Q?QL2Yj0TpSNuMuSzbOr1xCxvHqj4k1I84WYQWkmFIRGnb5xGEsHrgu0628XKE?=
 =?us-ascii?Q?B8A+/oNgJjUUvF6F9VE06C6EaYWwVikxiySW94hSEOxRvsl8QMj3Wzu+bElp?=
 =?us-ascii?Q?p8eEZDrzBBQOVMQBDtlbJq5m3JVmJkF8nIca4UPXOQqjGAXVjhjUhfPop1pA?=
 =?us-ascii?Q?vsH3emQESHiUwsUnDD+AncIgEQqFPVrF6gCmbWy+yYbBOQAwB/Ipna/UAesf?=
 =?us-ascii?Q?Y2dLBg9s/0EkJwNgLpeT2Z0rfe7hxFqjKUM6LamNJ+rslkkdJFs2PBaOWrOm?=
 =?us-ascii?Q?XrevvnLXKx18+f7Cs+rq6NPCNx8qs/kP/AoeJPGdapFYPzmqgRRTgDsLYjbj?=
 =?us-ascii?Q?bzxrYmliwyBhcm2vBtmgoMMEUWAUhA7s42uT6+QiLDbirQNUDytlqVR4PQBE?=
 =?us-ascii?Q?LhloL/c41RSrMpWmnH96xi3LOH5s0p+u6XkIVwAW1xZp9lojg+zRD7MhKxS9?=
 =?us-ascii?Q?suLa4fo2jpT0EReflLICUNfvdPIkcdyXAc+yPkckSK1BdMQkuNv/W5GmUbIX?=
 =?us-ascii?Q?QlMqYfA8sGxd8gmCmxz6XcDsaIHgLD4H1LaJaVpRbnA3ib/ak0n7TFFGLNKi?=
 =?us-ascii?Q?g+WD/jYQU1lW/3i3NQXiSUjBqaT8uK6Z76Ae0SAcmBA4QTlEeqjTX9GiNoO6?=
 =?us-ascii?Q?R+kStA=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c51e705b-80f7-4487-023a-08ddf5437ae2
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2025 17:07:13.2466
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nEm6EseKcH2EC7hx1/od+T4AK1SkAXaM9iFFRzEzmRIiNoBTXHAhIv+2158iU+nkMIAQzNfutRnf+vtiZNsqzA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6922
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250916_100720_032628_6BE23AB7 
X-CRM114-Status: GOOD (  13.24  )
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

Hi Josua,

On Tue, Sep 09, 2025 at 02:35:43PM +0300, Vladimir Oltean wrote:
> I've seen your proposal map out on the Lynx 10G SerDes, and it would
> look like this:
> https://lore.kernel.org/linux-phy/20230413160607.4128315-3-sean.anderson@seco.com/
> You can hardly consider it "KISS" when the device tree specifies what
> value should be written to what PCCR register for what protocol.
...
> Anyway, I don't see why the above can be future extensions, and aren't
> my main preoccupation right now. For now we just need to sort out the
> lane capability detection per SerDes.

Do you have any further feedback? I would like to keep the ball rolling
and submit a new version. One thing I could do is I could require
#phy-cells to be 0 when using one of the new compatibles like
"fsl,lx2160a-serdes1", and 1 when "fsl,lynx-28g" is found.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
