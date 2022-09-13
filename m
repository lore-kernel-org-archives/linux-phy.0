Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70313C54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 13 Sep 2022 16:52:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H73Fyly/IjLcXXZDA/XXBq10SIUgPAlyI/bqh8ITktg=; b=AvpkSO2RA1p2rW
	FDj6FaaLYucY/tZGPW1J+Q0NBbwzsrhs99RUd48SVzyxwQqAyE1ycSDZQmaAPBRxPNTMFXy/eovSn
	8Iwj7/uA6x9vDLIqJoFF3D8ufQPpAnp8qUAXEdczNWRAucac7jX2BAtigVzg8oqLNun7fb4XHrbGp
	E7ZyOpUEHdzPmOYtslMC1nwOQRghYrDXCuLAkI5IMBODJWDR8p4p77Ewro1N2LfQtp9uezIzHVVvI
	stTxKkUVsuS3/hU5NvTD93Sctsb0HaBnWhbwsqEwl8IaKtf9D9M1pW3JPQ5T1F5j5OcfPeNsbYeYX
	u65Y45+VQPXDvpEeMNPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY99J-00DbOn-2N; Tue, 13 Sep 2022 16:52:37 +0000
Received: from mail-dm6nam11on2097.outbound.protection.outlook.com ([40.107.223.97] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY93r-00DXpN-CT
	for linux-phy@lists.infradead.org; Tue, 13 Sep 2022 16:47:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BG6mfG5CoW6KllP4ACNFhg7DQnvmFpBr9+BJmO7cgaF5Djpe9Dh/7jpj5ujPqVMUBR5r9XWbBngP24Fsy4jULoIsxq9oVoOobkQcZxNG3FHpLTpwgTswKtIpJPcAWA+8FCX00vcXafDgsa6kplcJgG/q/KJS4eZxUsCnQ/COtIdImB/ggG5BCGfeUlYmzGDb81+0nkIUIJXKHvpbFwGUcoLsmFeQUJ/mEr82DSZjmbcdMLYyUbytsMTHlSvAD9HrGnNIKu/dHTGdpjdDg1ogbesPe91aRJKP07I//SUkHipzcCSHetDdnpsknlKJtMM6Kd320GbBsshK62antvDnMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=knQ5zDcXQNEzIZepJrLw3NnFBMAaqRuWjcfiHzfn5JA=;
 b=kO+BwpJ0hFrxt1uRyxiO5zo0oz+egOZYi9b7TDjYpdUxxhq0h5uWzqajVBB4w4oCAvUKIBQOIIHY35dV4qOpgkWwkmergbM8miR7kMB4cg/GV9pAiAnPhiZwnTMHYJoSpYu57ajE5Jp2jq2DWpNDurBsaQ8TUr/yiW6fbEwnOWn7XYemwP6NKyIzrkluGTL09dKo9T+cy/gerHy2FlOwWJilw+uUrLAoreah8VWaoKg0Y/LsFZ9jy/1D+kt1FvXW3dG7lDzV+qW2MsXOxhYKS0OKa5htEhwERMvDWvtuOxpO00jpbkTGr8IxcVu3zcdbXWE4yU83DP5Q3yUt8qketg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=in-advantage.com; dmarc=pass action=none
 header.from=in-advantage.com; dkim=pass header.d=in-advantage.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=inadvantage.onmicrosoft.com; s=selector2-inadvantage-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=knQ5zDcXQNEzIZepJrLw3NnFBMAaqRuWjcfiHzfn5JA=;
 b=ZzXzTssSYTN7ueSvikn/OMhob3nKoz8cOrOURtiXem6lN8vznLD+ar/W41atmKS73i9aHW9NQ+kqs4Rnq8biXf2m0Y/lIwR6vvzY/2wEIcDoqMylpErjtOeir8ztazdBWVxcLwouyxiQgB2MIBjIr3z4kMn42ZzQIW/PgbdFKVU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=in-advantage.com;
Received: from MWHPR1001MB2351.namprd10.prod.outlook.com
 (2603:10b6:301:35::37) by MW4PR10MB5725.namprd10.prod.outlook.com
 (2603:10b6:303:18b::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.20; Tue, 13 Sep
 2022 16:46:53 +0000
Received: from MWHPR1001MB2351.namprd10.prod.outlook.com
 ([fe80::dcf2:ddbd:b18d:bb49]) by MWHPR1001MB2351.namprd10.prod.outlook.com
 ([fe80::dcf2:ddbd:b18d:bb49%3]) with mapi id 15.20.5612.022; Tue, 13 Sep 2022
 16:46:53 +0000
Date: Tue, 13 Sep 2022 09:46:49 -0700
From: Colin Foster <colin.foster@in-advantage.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-mips@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	UNGLinuxDriver@microchip.com,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH v2 1/1] dt-bindings: phy: ocelot-serdes: convert to YAML
Message-ID: <YyCz+XnXrz9FsbWU@colin-ia-desktop>
References: <20220911163715.4036144-1-colin.foster@in-advantage.com>
 <20220911163715.4036144-2-colin.foster@in-advantage.com>
 <YyCyeNq7kxx6C3sE@matsya>
Content-Disposition: inline
In-Reply-To: <YyCyeNq7kxx6C3sE@matsya>
X-ClientProxiedBy: SJ0PR13CA0121.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::6) To MWHPR1001MB2351.namprd10.prod.outlook.com
 (2603:10b6:301:35::37)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR1001MB2351:EE_|MW4PR10MB5725:EE_
X-MS-Office365-Filtering-Correlation-Id: 5de99b24-3758-48f6-e519-08da95a78f9b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	dC5ZrM19+W0deyBPAKX2cG4Ya0t0VCN8irGVo86eNkN0Jkbg2K1LhORYhkofK/8vJi9zWNcR1zjGldyowo8F1F7J2tHoBWWqLQ0JcQMmchPq7cGbZUYMNOuv98SeN/62F6dIT80EEbYQBtprq/tsDkwuI0IFswao1XWsClIxL92ffh8wmaRwFROsHtuMx1jQRczo6xgZcwCTndmZlwbYHzeigU9Xe1/v/O3l+fYtU8zTYLWP/siOw9oFhAqiewXeIzO/Pg7y1GkAQhzvfMQcilw3fGD7heY3y4teLyD2eC7XowwmUvIv3lheR7y5f/eeafk6cTyd9wIm8tetF8stuQK0MYiSR8lt1sm/hOyuewaUPHLh3XEJme1JRNoUaRV3k1JqczkW7BcaCComzP+5ccu3YjQXz8gxP+AsytwyTQy1yWudH7Rcl6U/a+9ndxUl5tbpe0W7sJb70BdU01WhRifwU4CE8iKGPUlTXsJnAOYGWk7v9dGibOfB/wsOn4T4f7RKbhTJ0nz+Wsw/Rubw+ajjUizjrBTcTs3jNRAhJuG9ajdhs4WDfA7ZOtwakgw1qiJrwsXVVKFfGwN9Fea+MKgIusP5806ultMnhMpCC3wVmCRCoh9bpQVjlYQ3Em6oD5Dpy+4il2YOoVCjti8lgk7hnE2RHr/N+KZiW6sjmFjt0qBOCe/aDpDRyXUu1BK1XVdqL5PJyB+fS3YQJUI8fS/1+jZVvcVpYoRRhUbe2ooK1yO6JNTB8IV655ps4CtGWttahCin6wLpQnvZ1oxELw==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MWHPR1001MB2351.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(7916004)(39830400003)(346002)(376002)(366004)(396003)(136003)(451199015)(6916009)(186003)(53546011)(41300700001)(6512007)(26005)(44832011)(2906002)(4744005)(66476007)(66556008)(6666004)(9686003)(6486002)(5660300002)(8676002)(33716001)(54906003)(8936002)(316002)(4326008)(38100700002)(86362001)(478600001)(7416002)(6506007)(66946007)(67856001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?/MOp20bfHanoS/Wh2GwbXL/Gm/djzC9JE3HgdamkhUuVdHSbLpNV7UvlrWxU?=
 =?us-ascii?Q?cplTExMJ/jjD+TWCxf7uuw28e8uY/sfsgIcLvdZxtcpciLGjxhQlWapNAu9Q?=
 =?us-ascii?Q?E6ncetE+6RcS4brObzkT5JknZUpH26R/r5audGh/zyLDHPchHtpVMjOomcLK?=
 =?us-ascii?Q?7EqbelXXE2gLDSCVyYvc7sSvrlBFfwbmDTgbGYGeaXEzGKSSXam85//xw7F0?=
 =?us-ascii?Q?Ww3LVIvAtOmlK47TXL7Q8IgBfd0hJxxtWw8OwdB/r5SUNRktVLkxohMdOkmE?=
 =?us-ascii?Q?p5x5L5mADkNHlRmvlA4jFJdgmrpu+cCpMJr6ftdyx89yQXPPHoGsqTkGdaOk?=
 =?us-ascii?Q?giHnqawn/puUwiqf3tDpb7p4HcDiF4qu8rkyJtKFuEgdD+Pl6WbZk2HL++zS?=
 =?us-ascii?Q?+xO3dpL3h8WqSOLgFsg8CAwMo0JL8ILL2msDugY9801R1VKK2rzLbttQpbsa?=
 =?us-ascii?Q?Rf0Hnp/IhfOvVVlz1+S/QnDvVoFjU6Wkv0nerdn6aUTMjeubbeqfz0VV2j2V?=
 =?us-ascii?Q?M3JY/yfdAmuAgM1CZBUwFW9wx3TVRPCFSy8hf11YKkecyg9D/HNfvdCZE8Sx?=
 =?us-ascii?Q?iFEofOdlbUrSGjRhyLp8d94ufkMdSJlhbc2+yrHZMibuhxGpg9uGlV7vL95V?=
 =?us-ascii?Q?aXUjmWgRp2Onc00DSpiaU7Qbc6MBrtwgpqR1DYwWxjl6E1/HNaXeoxxPk534?=
 =?us-ascii?Q?HpkSrqJ1qctb27JkVpc3Ni5ohyl+9uFCJRx/XeKXQ+n4/o1xDCMFlPDmhnns?=
 =?us-ascii?Q?hrt9GPTe1iZl1t36hpWVE49bINW3PqgNNP71cm0FIfidfWYNtfQ7N741R5l3?=
 =?us-ascii?Q?k8+65/zwWShkCEKYmNa6esQ8CjXxNJPRokfbLbMJmLrucOjjHvtlEhar4Qc3?=
 =?us-ascii?Q?RFeRhdxm6bmCvTH/ZhpZGsAdpx7ncrZYAdgrxGoJEc7fzKbykor1hGOyZ1KJ?=
 =?us-ascii?Q?V9eQ2CzkumQyYXjzOkvOQrmF5QD4pdZtEkMd51AOFI8d4ZqscYDOzGW56n/4?=
 =?us-ascii?Q?Z6/mh65Y/fgBjycwWyXORIbFQFwYETlllBwBsNZCAqq6VUi8sMpmvIQR2TiG?=
 =?us-ascii?Q?Zy4zkOgLipJLi0eC1ngu0gX4fq81/wHubvrsaTtrBiQ2OjCz5gFVtBDCmuPE?=
 =?us-ascii?Q?8eydYNPIaqIwb9ZXsJW8HXT5MqBZtRw3FEqGsjX8oEiV5XmhAXN2kxfgKkC3?=
 =?us-ascii?Q?R7piFlqc6/EYLUgMTr7Ul1ZdwsVQPU2eRua7XMApFoGxXs1k4emgBvZ3dBvE?=
 =?us-ascii?Q?2TdejeMFtnBbO5UGWpHFb0ND0TIfg/7kIvv/etauTN/9swU1UUn3XBXTT02s?=
 =?us-ascii?Q?YQ2fPhqh+8SyaIS2kJUCXqN5hjoNiZmAKMS+0TIPZ2vONTJB+B8mCAJVDgry?=
 =?us-ascii?Q?+uiCnJlww9O9Fnvsf5i3Nr/7j5WLTzS4yXptix9FeoX1pyNci309WM19Vben?=
 =?us-ascii?Q?8XfayfuLaA/7xqkmqQKstVmm4YakN79e/9uLBQQ9lIeneAKXXyWgRAbOacqL?=
 =?us-ascii?Q?w1+OqYh28TTHlsvElWX/7vrRoEjJ/EtoAcHUqqNgrWK4+CcTub5J19pyt+Oo?=
 =?us-ascii?Q?BWOgFQEyd7ZsWjTUTCaW7V0SqwjnylOhcGf1XXn1shtuqnHBUibjxrnontD8?=
 =?us-ascii?Q?v9a4yyj5U8TUfvFoZuj3wcM=3D?=
X-OriginatorOrg: in-advantage.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5de99b24-3758-48f6-e519-08da95a78f9b
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2351.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2022 16:46:52.9657
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 48e842ca-fbd8-4633-a79d-0c955a7d3aae
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5nRB0fZNbAtgZtsgipY2q9K5a9+C9xyVHmv30I7FgTICZd0qsSQsJUVPN41aaak7AyDhu34hg2HvLlzXD5qIFqGPkdldAp9Jiv8W9bECc9U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR10MB5725
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_094659_493918_C28BBECB 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
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

On Tue, Sep 13, 2022 at 10:10:24PM +0530, Vinod Koul wrote:
> On 11-09-22, 09:37, Colin Foster wrote:
> > Convert the phy-ocelot-serdes device tree binding to the new YAML format.
> > 
> > Additionally, add the file to MAINTAINERS since the original file didn't
> > exist.
> 

Oops,

Disregard my last email. I was confused about which patch this was - no
need to bring this into net-next.

> Applied, thanks
> 
> -- 
> ~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
