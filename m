Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABEF8C6FD19
	for <linux-phy@archiver.kernel.org>; Mon, 13 Mar 2023 15:20:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VMr5V0opQxXIv+ijIPfSEQrcEPNJRO0Chu8GxQZSUaY=; b=4jq6A2zEghpilUtm1ysDUfELLA
	MPQw1YS+jyIAHe83te80uBeXOa+7sv31I11jUqb7I9HaJ+6wUArVCV1yK1CMIZ+o6OeKwv2JFpZa5
	dRBa+Dtuy8Q2vSw5OSDTI1ZzciYmTHvfLF1V/N+6NN8lB4bt6YuCsETSymERp/FjuRaO/3YP0sDJT
	EwVSowIlEtfHu5V6wbpYTLMamMfaL14Tnqj5ZZtDDFSILb9Vx7Mf/DXklvM8475tYj8Idz+EqSAVL
	BStl1Ph8x2UjdPL/ubljKF8lN8gQA1zBEFxMBO484aKegYFl4Z1Q+vg1mnTjlaI1hRCKxtpm7Gh0T
	qrATgKRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbjy8-006Owb-4Z; Mon, 13 Mar 2023 15:20:12 +0000
Received: from mail-db5eur02hn20310.outbound.protection.outlook.com ([2a01:111:f400:fe12::310] helo=EUR02-DB5-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbjy3-006OuR-UM; Mon, 13 Mar 2023 15:20:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cEs+9qOhDFKKTY8izAGlaf3NYgbcGCxilpGjnpatgQQ=;
 b=EnRSO+ocRTEukPY8696YhDWb+fCylUFnaRKPbmNbo6F9PGNa14xDZqdaq40qdoyhikKxwS+UNmXbuBG3Gh7LnuARcBy5cslZUbBdZtSqkTP+ihAZ3YmoK1ibenzxnABohElqvGvm0llUfd7GFnGo8ql37cBg7rt4E4xYSfQpBExObLpvm4xfmclfMLpmiqzH0Ovkd6X0YgH3ezgbinWKXBl0Fa6SJrkb+ZCl3qNCTfmknqQ3T5xlm23s828Cvkvt/9xBCVvmHKI5ofovFwacU3XibL5MDbUP+pwwAmnR35/IPs1BcjMLScx0PkhW5k4H/k9V8fVSSAe9NCOWJTyFIA==
Received: from FR3P281CA0013.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:1d::18)
 by PR3PR03MB6490.eurprd03.prod.outlook.com (2603:10a6:102:7e::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.24; Mon, 13 Mar
 2023 15:19:59 +0000
Received: from VI1EUR05FT022.eop-eur05.prod.protection.outlook.com
 (2603:10a6:d10:1d:cafe::3b) by FR3P281CA0013.outlook.office365.com
 (2603:10a6:d10:1d::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.25 via Frontend
 Transport; Mon, 13 Mar 2023 15:19:59 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 20.160.56.80)
 smtp.mailfrom=seco.com; dkim=pass (signature was verified)
 header.d=seco.com;dmarc=pass action=none header.from=seco.com;
Received-SPF: Pass (protection.outlook.com: domain of seco.com designates
 20.160.56.80 as permitted sender) receiver=protection.outlook.com;
 client-ip=20.160.56.80; helo=inpost-eu.tmcas.trendmicro.com; pr=C
Received: from inpost-eu.tmcas.trendmicro.com (20.160.56.80) by
 VI1EUR05FT022.mail.protection.outlook.com (10.233.242.130) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6199.11 via Frontend Transport; Mon, 13 Mar 2023 15:19:58 +0000
Received: from outmta (unknown [192.168.82.132])
	by inpost-eu.tmcas.trendmicro.com (Trend Micro CAS) with ESMTP id B1A642008088A;
	Mon, 13 Mar 2023 15:19:58 +0000 (UTC)
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (unknown [104.47.2.53])
	by repre.tmcas.trendmicro.com (Trend Micro CAS) with ESMTPS id D906F2008006F;
	Mon, 13 Mar 2023 15:18:59 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=REDl4vfPJ+6hJDj1QCDj1vNeDHevRJYCyXcwhdy/xfvs2NQfP4GGkDl2YZljD+lw9OfTOZfCUxq9tsuQ2JipjoeXBcX9OfZnGumsCRxd7lEjpBKVY0wO5p1exVhNgFYp4Bfbl+VrLcEG9tvJo+W9fkibPEXw7otBHZLWamm4PL3QoyvY6BHWWk3aASpxJOFj/uuaAnAU9qbr2foaJN5xzDTaVFCgb5LG+QCkAk7T5M86yQmTGhHo4aHDzJOrLzK2mWbxPnUVQs/7RhOkHoRgHHpF+aMZgHt3qAiHl5gddpYOhkjix1H2le0/DqeJuuGavixhwDZV6pmVrArbcx/mGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cEs+9qOhDFKKTY8izAGlaf3NYgbcGCxilpGjnpatgQQ=;
 b=jN1IWAHddy6GPDBqbVcnNajKnKF4HG2e4jtAEVjteVSteyzlxILRevJ1op94vZCSnp8hdzpPXBh5VGCIKicG+d0CDKj696MCgNw6QN5BrRvrj092X9hJlDHtw3JpuDQ83hhIS7xNXgacUVFphBRu9r7R+UyMnXNVTqDr5Jym1cRb7whDPMkapmiya9ypYSLdBR5OHLTKBj8vXddtLRgBdYQZD6PIQ2dt3JeGsn4x8+RNM89I3iluJmqDKWvEADvj0OgwxXUabQo0nwJ3jiCSBNl5xIgNFiydBLrdLC/ZERQAjQFgo/6eZLYXz6nyWtGWIlUmrX8P3i/FwbkykBWzdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=seco.com; dmarc=pass action=none header.from=seco.com;
 dkim=pass header.d=seco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cEs+9qOhDFKKTY8izAGlaf3NYgbcGCxilpGjnpatgQQ=;
 b=EnRSO+ocRTEukPY8696YhDWb+fCylUFnaRKPbmNbo6F9PGNa14xDZqdaq40qdoyhikKxwS+UNmXbuBG3Gh7LnuARcBy5cslZUbBdZtSqkTP+ihAZ3YmoK1ibenzxnABohElqvGvm0llUfd7GFnGo8ql37cBg7rt4E4xYSfQpBExObLpvm4xfmclfMLpmiqzH0Ovkd6X0YgH3ezgbinWKXBl0Fa6SJrkb+ZCl3qNCTfmknqQ3T5xlm23s828Cvkvt/9xBCVvmHKI5ofovFwacU3XibL5MDbUP+pwwAmnR35/IPs1BcjMLScx0PkhW5k4H/k9V8fVSSAe9NCOWJTyFIA==
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=seco.com;
Received: from DB9PR03MB8847.eurprd03.prod.outlook.com (2603:10a6:10:3dd::13)
 by DB3PR0302MB9183.eurprd03.prod.outlook.com (2603:10a6:10:429::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.24; Mon, 13 Mar
 2023 15:19:52 +0000
Received: from DB9PR03MB8847.eurprd03.prod.outlook.com
 ([fe80::dbcf:1089:3242:614e]) by DB9PR03MB8847.eurprd03.prod.outlook.com
 ([fe80::dbcf:1089:3242:614e%4]) with mapi id 15.20.6178.024; Mon, 13 Mar 2023
 15:19:52 +0000
Message-ID: <f5cad70a-aa0e-9f25-d76a-f1149c345b24@seco.com>
Date: Mon, 13 Mar 2023 11:19:46 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v10 03/13] dt-bindings: Convert gpio-mmio to yaml
Content-Language: en-US
To: "Leonard, Niall" <Niall.Leonard@ncr.com>,
 Linus Walleij <linus.walleij@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 Madalin Bucur <madalin.bucur@nxp.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Camelia Alexandra Groza <camelia.groza@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Bagas Sanjaya
 <bagasdotme@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, =?UTF-8?Q?Fern=c3=a1ndez_Rojas?=
 <noltari@gmail.com>, Jonas Gorski <jonas.gorski@gmail.com>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>
References: <20230306191535.1917656-1-sean.anderson@seco.com>
 <20230306191535.1917656-4-sean.anderson@seco.com>
 <4c039e53-e3ca-29d7-e5ea-f24e385d28b0@linaro.org>
 <42ccbac0-53e2-f599-fb3d-064b896bde4a@seco.com>
 <CACRpkdaj-0dyqWdSbQbjyUed+khDLi-awgan1BnuDvuY2JBzFQ@mail.gmail.com>
 <d26bad8d-82ea-ed18-fa3e-081ba0d5dcf6@ncr.com>
From: Sean Anderson <sean.anderson@seco.com>
In-Reply-To: <d26bad8d-82ea-ed18-fa3e-081ba0d5dcf6@ncr.com>
X-ClientProxiedBy: MN2PR18CA0030.namprd18.prod.outlook.com
 (2603:10b6:208:23c::35) To DB9PR03MB8847.eurprd03.prod.outlook.com
 (2603:10a6:10:3dd::13)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: 	DB9PR03MB8847:EE_|DB3PR0302MB9183:EE_|VI1EUR05FT022:EE_|PR3PR03MB6490:EE_
X-MS-Office365-Filtering-Correlation-Id: 0b2aae52-b552-40e2-93ab-08db23d668c5
X-TrendMicro-CAS-OUT-LOOP-IDENTIFIER: 656f966764b7fb185830381c646b41a1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original:  +EvhdVs/uEQBfSOGlKoMsyyGOxQ9aAAdsGsTNgfV9c9oxZyiJQWGUD97ARVPkEzJoOWdaM9zSokhI1ApgnHIKK4k5HUqb/6mpGjI1TFO7DXoCyTinnktuDf6SRjjiGcM0JWC0lt6jdMrw/MPxbqDJ7xrRjz6eHH5YW65OA+fGKph9TvK/6VqOxvxWUHh4NmID6NnIgrmyUGSVD7JM9a4TBMQkgjH6WRcepTbxf4dTgUTtOXWQRnaxguLuNlqFCACIEGrMnUknV3HEYAU0ENJmOQVwzcWQowuQYa5qF9Z4kw3KPAKu7r/YfX5WLHtrAVfvhv0WJZzjMzNMZ4sujjhkapPRWjSHgDmPoRikeKn2OB+33C3hf+8C2qEUEUvtAv4Ze/rmk3JZXTqj1fJ4daNjwawl9AKEmPsr7y9fx4whnDXkdZyKl6I4KASThr6UYlccK3UYQvIC9WvWKNI+LedSk4BzS2rjuV3t3NLXpwqExekKddvkizdY+YyJVSDBXP1drmB6qsgVJBlhzwUAH7pxFyEpOX/G2m5d0Dk6ccfLouuT7wcUl+57lyv12HE0dUcb4oOji9bs/YQMHljUd5ZT4TVLg1xsI4snPvURyMqNgZGO4L34FuA9PSH39cesE057MIAeOkIu7E5dYokDB/C2fa2nttN5YiKZmLYm6Ywl6DFGt2c4IyqvFUlO1FiRC+wYOo5kRjak+cIgvHYjFM5GrfL5IbIMuhdwi/pCNUjSQ+PdQZx/SVB54GZX2hSsO+G
X-Forefront-Antispam-Report-Untrusted:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR03MB8847.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(376002)(396003)(39850400004)(136003)(366004)(346002)(451199018)(31696002)(86362001)(36756003)(38350700002)(38100700002)(4326008)(66556008)(8676002)(66946007)(66476007)(54906003)(110136005)(8936002)(478600001)(41300700001)(316002)(6512007)(7416002)(5660300002)(44832011)(2906002)(2616005)(83380400001)(6486002)(52116002)(966005)(186003)(6666004)(53546011)(6506007)(26005)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0302MB9183
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped:  VI1EUR05FT022.eop-eur05.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 	f994076d-526e-4358-0398-08db23d6649e
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	8K2f4i4gTRAT+AXrRm6PuoEV3B2UZOGQiBNZAWVGty14FU3UXpAeEA55QcKGNDxbX0QE+mmZJKspXiYT68knwPO/6CHFwEcA1ezUIE2MiU9ROJwR8YH2gIlFt4lHt8i0bEOE2AGtlNCvKnOe2rz/hsPzjU6qNAlGFYyBB41noIVLqoVAqzjkVEz9Iw6hM5Qi5uuOaQI8kTrnlNxjFdudfku4NlXH1gg/6+mKFTLwkLgrrU0g+qbF2tr/qaRNBlph7Lnah8hdi0qxhY5LM08g7y8NZE24/7F84VSzR87ySC/KCf4iP3hKGvj9jNfEvymmV1xfbImV9XMB8B9083cgWyms4GMhqcoYLKD06MbbrMuuwI1+OVhpa0uR+UTwVIAySkhNENmAiM5q4M3CQR58i7IYi2nv7PVs4SLwH5hGEcTp31vbWGtxW/0vtD9EwyKCTsMZfKPVnI2NCJQF2nsPKSwmUVPJoNzs8YtBV0NqNPkrTDODaESyD87GJ4a3D3d/0HEu6+QbfFgfwsOFxT+a5tSKj4isSs4ihdRFQfoxXI6pPrW+Th3GXsSeEKEqHn8Orkdzu3kbeYDfVp3C7W4Xc5YLWPPRO6oAQJcJ0Pehnfi74V+6Of4akh/d8R6SCP9A4us/7gX/uH1flkmrxwah1ArTGC1NzjO36UiQErA/jbvs2CdpQClX61mLS5Asf41acOpCB25XTm/+38sM0duIAQtvLLcQTRcQs2PRNwvjFoUyyWGJ33avx8M/Tm9xua01W+i57MdlLlmsJkiatxLHtFjTn06DABpcpdremuMDAUc=
X-Forefront-Antispam-Report: 	CIP:20.160.56.80;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:inpost-eu.tmcas.trendmicro.com;PTR:inpost-eu.tmcas.trendmicro.com;CAT:NONE;SFS:(13230025)(396003)(136003)(39850400004)(346002)(376002)(451199018)(5400799012)(46966006)(40470700004)(36840700001)(82740400003)(70586007)(36860700001)(82310400005)(356005)(2906002)(41300700001)(70206006)(40480700001)(8676002)(4326008)(40460700003)(316002)(478600001)(31696002)(86362001)(36756003)(110136005)(7636003)(54906003)(7596003)(47076005)(966005)(5660300002)(6486002)(26005)(7416002)(44832011)(6506007)(53546011)(6512007)(2616005)(336012)(31686004)(186003)(6666004)(34020700004)(8936002)(83380400001)(43740500002)(12100799021);DIR:OUT;SFP:1501;
X-OriginatorOrg: seco.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2023 15:19:58.9872
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b2aae52-b552-40e2-93ab-08db23d668c5
X-MS-Exchange-CrossTenant-Id: bebe97c3-6438-442e-ade3-ff17aa50e733
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=bebe97c3-6438-442e-ade3-ff17aa50e733;Ip=[20.160.56.80];Helo=[inpost-eu.tmcas.trendmicro.com]
X-MS-Exchange-CrossTenant-AuthSource: 	VI1EUR05FT022.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR03MB6490
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_082008_034006_2DCB9282 
X-CRM114-Status: GOOD (  17.83  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMy8xMy8yMyAwNDo1MywgTGVvbmFyZCwgTmlhbGwgd3JvdGU6Cj4gW1lvdSBkb24ndCBvZnRl
biBnZXQgZW1haWwgZnJvbSBuaWFsbC5sZW9uYXJkQG5jci5jb20uIExlYXJuIHdoeSB0aGlzIGlz
IGltcG9ydGFudCBhdCBodHRwczovL2FrYS5tcy9MZWFybkFib3V0U2VuZGVySWRlbnRpZmljYXRp
b24gXQo+IAo+IE9uIDA5LzAzLzIwMjMgMDk6MTYsIExpbnVzIFdhbGxlaWogd3JvdGU6Cj4+ICpF
eHRlcm5hbCBNZXNzYWdlKiAtIFVzZSBjYXV0aW9uIGJlZm9yZSBvcGVuaW5nIGxpbmtzIG9yIGF0
dGFjaG1lbnRzCj4+Cj4+IE9uIFR1ZSwgTWFyIDcsIDIwMjMgYXQgNDozNeKAr1BNIFNlYW4gQW5k
ZXJzb24gPHNlYW4uYW5kZXJzb25Ac2Vjby5jb20+IHdyb3RlOgo+Pj4gT24gMy83LzIzIDAzOjQy
LCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+Pgo+Pj4+IGh0dHBzOi8vdXJsZGVmZW5zZS5j
b20vdjMvX19odHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyMzAxMjYtZ3Bpby1tbWlvLWZp
eC12Mi0xLTM4Mzk3YWFjZTM0MEBuY3IuY29tL19fOyEhSW40UWx3IXVRS0drdDdkTzVUQS01NjFY
Y3VQTm9xeXRpX0FvZ3FKMGNWM3ltRlpOb2ItUTEtWjF4bWNPdl8yMkpCUDV4Ty1PSWVtYUNaMVZZ
MzduV0xJZTFBWHlPa2llZyQKPj4+Cj4+PiBUaGFua3MgZm9yIGxpbmtpbmcgdG8gdGhhdC4KPj4+
Cj4+PiBJIGJlbGlldmUgdGhpcyBwYXRjaCBzaG91bGQgYmUgYXBwbGllZCBpbnN0ZWFkIG9mIHRo
YXQgb25lIGJlY2F1c2UKPj4+Cj4+PiAtIEl0IGRvY3VtZW50cyBhbGwgdGhlIHJlZ2lzdGVycywg
d2hpY2ggd2VyZSBwcmV2aW91c2x5IG9ubHkgZG9jdW1lbnRlZAo+Pj4gICAgaW4gdGhlIGRyaXZl
cgo+Pj4gLSBJdCBoYW5kbGVzIHRoZSBlbmRpYW5uZXNzIHByb3BlcnRpZXMuCj4+PiAtIEl0IGNv
bnNvbGlkYXRlcyB0aGUgdmFyaW91cyBkZXNjcmlwdGlvbnMgb2YgdGhpcyBiaW5kaW5nIGludG8g
b25lCj4+PiAgICBzY2hlbWEuCj4+Cj4+IE5pYWxsIGFyZSB5b3Ugc2VuZGluZyBhIHYzIG9mIHRo
aXMgcGF0Y2ggc29vbj8KPj4gSW5jbHVkZSBTZWFuIG9uIHRoZSByZXZpZXdlciBsaXN0IQo+Pgo+
PiBZb3VycywKPj4gTGludXMgV2FsbGVpago+IEkgbmV2ZXIgZ290IGFyb3VuZCB0byB3b3JraW5n
IG9uIHRoZSBWMyBwYXRjaC4gVGhlIGhvbGQgdXAgZm9yIG1lIHdhcwo+IHRoZSBjaGFuZ2VzIHRv
IHRoZSBiaW5kaW5ncy4KPiBJJ20gbm93IHdvbmRlcmluZyBpZiBJIHNob3VsZCB3YWl0IG9uIFNl
YW4ncyBwYXRjaCBiZWluZyBhY2NlcHRlZCBhbmQKPiB0aGVuIEkgY291bGQgcmUtc3VibWl0IHRo
ZSBkcml2ZXIgY2hhbmdlcy4KPiBXaGF0J3MgdGhlIGNvbnNlbnN1cyA/CgpJIGFtIGdvaW5nIHRv
IHN1Ym1pdCB2MTEgbGF0ZXIgdG9kYXkuIEhvd2V2ZXIsIHRoZSBwaHkgc3Vic3lzdGVtCm1haW50
YWluZXIgcmVmdXNlcyB0byByZXZpZXcgdGhlIHBoeSBwYXRjaGVzIHVudGlsIGFsbCB0aGUgb3Ro
ZXIgcGF0Y2hlcwphcmUgcmVhZHkuIFRoZXJlZm9yZSwgSSBzdXNwZWN0IHYxMSBtYXkgbm90IGJl
IHRoZSBsYXN0IHJldmlzaW9uIG9mIHRoaXMKc2VyaWVzLiBJZiB0aGUgR1BJTyBmb2xrcyB3YW50
IHRvIHBpY2sgdjExIG9mIHRoaXMgcGF0Y2ggc2VwYXJhdGVseSwgSQp0aGluayB0aGF0IHdvdWxk
IGhlbHAgYWNjZWxlcmF0ZSB0aGUgcHJvY2Vzcy4KCi0tU2VhbgoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
