Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A07DCD6E5D
	for <linux-phy@archiver.kernel.org>; Tue,  2 Jun 2026 20:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Se/ewKku+JmdIwx5dHOdzKTMa2WNBTY90cx/8FxZOQ=; b=BKLo+qdCG1ndg+
	lN1z39mo22Fc6iz9kbXconVBYHWr19UEbTKtvmhmCirFLNtJz9QB34NObxNjuYepLD9rlPy3Z9DHa
	L2yEULVl4zEV3fcZuVZ97xVLtP/PNFRP8brmxEZp+i/WB1BA4u9KOxjN/+xGl3gkm260todxB8ca0
	s8oH3C4vbRiDhiClCVAuO3WDZOewtW/uxUTo9UvmPE08EW8lnbVG50yZwYqKlUKiRkWuzdAVq4aNZ
	z/ByWXv08rm+eVZ4f8FXUcq6n4ecqsH4DO7CvK7Wunv85Z9G2UEXlpem5nTteZOwnPLEgsBKTCyEm
	/p/C9oxa1qyHh7/3673A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUW95-0000000Dml3-0ziy;
	Tue, 02 Jun 2026 20:55:31 +0000
Received: from mail-francesouthazon11011012.outbound.protection.outlook.com ([40.107.130.12] helo=MRWPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUW91-0000000DmkZ-44dv
	for linux-phy@lists.infradead.org;
	Tue, 02 Jun 2026 20:55:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BwoU0hTzVT4wKiR6tRAs7A1qVbx3qxAju0+REYPYrMM+Td2aAISb9NJ0yWt0UbF0B7TNybxHG6ecGN1rUlfyPJ99rScDsmaTw9BmI6oOiK1H90YspqenUjiDu0KA6okO3QVJI5jVdf4CMPCXCJ/3entBxyGz0uAB7B5DPRr8cRwWKq6zvNJfadQKR9qFlfX9MiaO7p+V/rjIHdpXbevFP/iDASzBvoc7U56vvZdPBkMuNmLg0Tn03ylXDqFEoFnIZV8R67lRdsZAm3fPR+OBbJSsvo6P+UC6zJKBGle6pwXnpUfiCGi0fFTZ21qQfGWN/IKlMJDPICHPVAtugMoOKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sj5QXe8C0GmioY0LUxQHLJ6kxUd+tVWD9fzZRxf0VUs=;
 b=QNBESLPyH+XJzylDhJh8xggaApwoSWOBkaTTsLan0BAR7KODA6CrUVpt8O1NOweYLDZG+oZtYprJ7VQFHYqAUxzd9/zobeRSUe308K+dgnSSiXNuOD2i9p+xlX9l0P5ucMk1NLjDPfFnP0k+dSbfHa6ORz9RFmwaP++BtbGCaTQ5yTW8jVy2LjReSOy6ZpvWjOK5beU0Z1zSilVwtgw/4GK4gkl6MHM4wM7NYux5kH6q0ObXgmnEm6qdRml/QmlUfRP83cNSndhPQezHfuIE2HPqvLUCTWM9tWxC6HG0BRbykqgmqR/UlssZEZ1zZ2J49+nnwgDp7EzlY/O+c5ygDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sj5QXe8C0GmioY0LUxQHLJ6kxUd+tVWD9fzZRxf0VUs=;
 b=AxIdTpqgmywPhKnuX9RioTp5lD/ev0KxSioIyxJJcUu3ltcsoh3pCb87V4KLiDqIInaupbm1HoPiZJKrM2h8hdxBe/2cCp2HxTvJTpfflQMUQx5M65oLnqNmJSNXAEs4BzUHGOD42SsD3vLVSo+NoDPRO2a4MytK0EGiuosg5FMS35RkrLIf0EPbswxfc6BZOZoNqB5SobmiYxVhOj0LeKr3JFLKguRUkhiJOgf7EI/ENyGUOhNdjiumn5vzzUemc3M93YxAvxHUlrKOP7GiORccQMjWv3nodCLt/B/NjTnstIiqzhcobG4Ot/U10SYMhvgED3dAfAEAEQeeGYD1XQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com (2603:10a6:102:2a9::8)
 by GVXPR04MB9993.eurprd04.prod.outlook.com (2603:10a6:150:112::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Tue, 2 Jun 2026
 20:55:21 +0000
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588]) by PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588%3]) with mapi id 15.21.0071.015; Tue, 2 Jun 2026
 20:55:20 +0000
Date: Tue, 2 Jun 2026 16:55:12 -0400
From: Frank Li <Frank.li@nxp.com>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Bryan O'Donoghue <bod@kernel.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
Message-ID: <ah9DMPcKUaTm324I@lizhi-Precision-Tower-5810>
References: <20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org>
 <20260523-x1e-csi2-phy-v8-1-a85668459521@linaro.org>
Content-Disposition: inline
In-Reply-To: <20260523-x1e-csi2-phy-v8-1-a85668459521@linaro.org>
X-ClientProxiedBy: PH7PR17CA0007.namprd17.prod.outlook.com
 (2603:10b6:510:324::18) To PA4PR04MB9366.eurprd04.prod.outlook.com
 (2603:10a6:102:2a9::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB9366:EE_|GVXPR04MB9993:EE_
X-MS-Office365-Filtering-Correlation-Id: 14e46012-2734-4b04-6b4c-08dec0e94270
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|52116014|376014|7416014|1800799024|19092799006|366016|38350700014|56012099006|11063799006|4143699003|3023799007|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: wRTlih9HPhQ2NWk5R8fNBC0Ad/LWU0cV64kLOXJOdpIc+4GQvAahrNkGC4Yh8L2fOKqYZiNemkjLhw5E5dFH44u1m32pGsAdp6DYsm703ITrIBX2ZW+BPcelWvPDfnGW3NRHGl8uhgMhGrzwo5FEvC6W2O98bdf3+6v9EBoyVSeipCwTdBytqhbtVdju1QaI6F3PCnq1/8F7se1rosvEUoGclGHewQojkKPEVx4FtNOvXcBlOuZZPztmoZTUqziwkoylMIfMGB4ydGHGyAypjKISXqNU/9LqaJICTzFhb6rZ8Bdwfb2JibCycylc89lvbuURA64nE1k7Oz7z2ljVK/P36JUrPI9FjMkZdHOnhzxCUru1IP22KBnJcitkhgnct4kw4TccPniFag8GyCCJrAXe4OxmbP9J+EGFNSyVJAWP1f9qftgH/Y6XdUL88N1qg9xpGw4gLXo7tz2fIjQb0oO3dHWyVi/KLI8CRDXOVa5CLQHEng2+0EuMbOlkY2GmmJbdS6OEoRQ2JB3BZdEvU2woSDk+M457aXBL0BQC+V2HrgckOH9uJd7XeDW7g2PQt1tU6JvlL5WiFETZxPqGA/DaMdrIbnZWThqa9NI/x9J+F6dxYHhwY4KRCgf1FCDc+eavaUMEm4ZhYXtvcT6/gR96s45BGIS0oeu17itXz+TSfdZvXf2leeTZmgDLglm2ILYbPC/Q37AuBa5U6hxyrmTSUBDvG6eZ9EQHTilhQnbx/T8kT3BdT60qR3ByxMrt
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9366.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(52116014)(376014)(7416014)(1800799024)(19092799006)(366016)(38350700014)(56012099006)(11063799006)(4143699003)(3023799007)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?PmT0Od2sbfgzu/gL/u4bhR8R9JmZ/6x176qwZGLvN75QzFBmSXa4FQ4pXecN?=
 =?us-ascii?Q?bSPrg4fViCs5P/ttuIdDvKAsVBkRszRFWbhsqNC9bYrsqbmOSWe0rkCkxKng?=
 =?us-ascii?Q?ij/jIws+g/t4Yx9nwzTJZ5oEDVqQ+OQz4FIvADtsjepE5DnS5EwJo1njqOKY?=
 =?us-ascii?Q?lI2HXOr2j/LipuCdYmQgwI+wjoIBSwgEjWduUWp/vzPkZN4ujM57eQmj+5sp?=
 =?us-ascii?Q?xT2JKHWHM2GnNAnbhOAuhUrqaBtpilFtm0vxT69bfCLJlT+7X/1hc5LB18A5?=
 =?us-ascii?Q?0XJwNqXiR1VwbxfyVQeDdh01PhX+bpTBn5ZdUJe4nfRGC1Xbgw5IC9RP5QyO?=
 =?us-ascii?Q?7Ly4xfbFS/zgcFGT/rd0iP3mEILOps5Li3QbX1LzQUpq1GmsmfnYTSNT56wV?=
 =?us-ascii?Q?yEOZkgmr5hKWBxnp4L7kzY6vkxk0Cf++lL+4G8mUAxb0jhELZFp0Dxv5WSLN?=
 =?us-ascii?Q?QxRiqpi7U70ySPmeAKjiNgl3XEjaR+Ygbk1knu8Rm65kpMsght2ZvJtX6SN+?=
 =?us-ascii?Q?z0WVC4RMT3vhucAEFT2LSxxoW1F0npVnhG2vraaVUnjOTSZ1c3unXwoQMg91?=
 =?us-ascii?Q?D4xc40E3wfVsXcxzdFaEDkYKUClVfMJYJ32ST56lT9uB7w4AGszYlmb4Ub7o?=
 =?us-ascii?Q?twXosR1WbM2RHKQlkleINqlWPvEsglmmgkxBGMzqSwKgKPhpakyrUtbjApU9?=
 =?us-ascii?Q?rRgW16PJI9GKLPxGyruRIYXNmERkGdNBP/p/66b6C3ZIxLRASHb1Zyld1Z1v?=
 =?us-ascii?Q?ZsZQICZoWVH/4arSgvcCyWN9N8inxE5pXOcCESgj0iOtWKEHp7W8KO5yjZnE?=
 =?us-ascii?Q?dvvcj8kIukxSrSXAgENpWr5QOu9yxR0lRacZnydix2DVHA3zOO06CmUL0z6Z?=
 =?us-ascii?Q?VM/TObaVl2k/qj9u5wMgIUoicRzObQ52gfm6kHUMjK6TwnGXnh+DuRvbqQYQ?=
 =?us-ascii?Q?QHpYN2BuzJ8oPkncHaWnlnOMx0Ma5IL+YGO7BxfotHWCElX+oW6JM+2qhYZ/?=
 =?us-ascii?Q?AMqmWMRyITjzLajvlbsSD/WY9XSWmsKhql24214NgPsLLabiBIzmszL7Yr8j?=
 =?us-ascii?Q?U7c4eoO8HMTI5cA5TDxXCWzk8z4BzqxKYAlXcVN3c5prVboTRU0XH44p/w0v?=
 =?us-ascii?Q?ujl2GO6c/sqCba5sJsdY3ZKPlkFczGP7JZ5kNf/FdSzHjq4QnAtpwygOKmEd?=
 =?us-ascii?Q?FQSo8aDQwANpdljUL6T5wSjJfDBdok7/lCVEh7VSDHbx5m92Tn1uH77gOPMN?=
 =?us-ascii?Q?viukHp2GvoKYSymG/hXwNtU555dpRc/GLN4FAQe18+U6gsuljZ0tgZXM29Pd?=
 =?us-ascii?Q?TIaTkLVFE17d4487Xl1ILs3/P5QsHihwAJlSIi9H1ZMGbecSWXXWxf0iPgw4?=
 =?us-ascii?Q?oAT6TZBwu9BRVp6BH5W2WffX2ZUNITUoSh4FyD/AXrLh7lPpx0/0/6l/cVMe?=
 =?us-ascii?Q?PXSAKC57pqDOiGIJubuD0sEvecMxkL7IMUuIWH4fuiNDsgQXrUEbc8KHXgMd?=
 =?us-ascii?Q?iAE0c75afHZMC6vI63jwBpl4CLfCVBwQ/6iPKO4PFJCkcZQ2lgBi+JW0bsEY?=
 =?us-ascii?Q?0J9C22OW9iazTvmBCfTUeFDwzkkklrTIfUs7CQ1rJZRILhmk/KGRzKn0zZvU?=
 =?us-ascii?Q?30oNuG8YQQmttzVL7MtRX3sHHA5nM2REpdhsSu+jyBmlm+RoHpBD1LK5GEN4?=
 =?us-ascii?Q?YkYjAkZYjt0LnCWK2pZX9GmjrMiXvwJPsGi7NSFetSD6HBPI?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14e46012-2734-4b04-6b4c-08dec0e94270
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9366.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2026 20:55:20.9100
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bl9l7WzfD8pPNW95DWYYLFm/iTP5/ha2UGPJ0fAKSn5lplOScNxDFewi0rX4aF0HQ4nXhDZEXXw83iQy3QDRBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR04MB9993
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_135528_025590_64A0F768 
X-CRM114-Status: GOOD (  10.22  )
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

On Sat, May 23, 2026 at 03:48:47AM +0100, Bryan O'Donoghue wrote:
> Add a base schema initially compatible with x1e80100 to describe MIPI CSI2
> PHY devices.
>
> The hardware can support both CPHY, DPHY and a special split-mode DPHY.
>
> The schema here defines three ports:
>
> port@0:
>     The first input port where a sensor is always required.
>
> port@1:
>     A second optional input port which if present implies DPHY split-mode.
>
> port@2:
>     A third always required output port which connects to the controller.

Most likely CSI controller binding to descript connect graph. PHY should
be simple and straigh forward to change digial signal to analog signal.

most system work like

phy {
	...
}

csi2 {
	phy=<&phy>;

	port@0: {
	}
	...
}

Frank


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
