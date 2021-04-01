Return-Path: <SRS0=2YxO=I6=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F658C433B4
	for <linux-phy@archiver.kernel.org>; Thu,  1 Apr 2021 07:38:40 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 80FEF6105A
	for <linux-phy@archiver.kernel.org>; Thu,  1 Apr 2021 07:38:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 80FEF6105A
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6Sq9JrUWS60ZRrIs1LLuM7iuzIo8oXn7ox3lf2c7Ubc=; b=XlpYmntuo0U9X91TwxZo2pMtt
	B8gNqdX6KY1WOWKm5LvxZJdepkxASvvzS+yIRnv8+Y8/63ia5a2PHXj8wSRjOBO+3WmnQqKpV0Zi8
	gnCw9wqMbdcmmZUETpTBbfdhqBMwaQVwmzl/Wwlg/hZtojIn86AJI1pPqFd82ISkTEQqe3dx51HKn
	zUdNVnrDM844cQ9Kvbl8ZQXFmxDTB0BL9s06IdIuJf5H9SaHI2w99jHp7lTpacCii5s0REm8nm97F
	I5X4EhQKBIHgRNsI3009vEh9eq1QVSn+9q70NCFjIadzCGV86mCkf3CUhcgNOosOOQLsL0QRWzP7L
	5CqXFwiyg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRruX-008o5p-I8; Thu, 01 Apr 2021 07:38:37 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRruS-008o4F-O9
 for linux-phy@lists.infradead.org; Thu, 01 Apr 2021 07:38:36 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1317cQQq023201;
 Thu, 1 Apr 2021 02:38:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1617262706;
 bh=WWW5KQRNRxIfVZ3a4k8eNejbWBDO6eEvx40V0Y5LbCk=;
 h=Subject:To:References:From:Date:In-Reply-To;
 b=wo9A9F8wsY8c7XJAoOnn3DsjIXe0Se+lIgA6DaWjemTzN8+01TwdtygpxnSitY7qW
 Gbr0HLdl2F6ggdfASq5ZeY9rsrgjv0rKKMT4jZnFUwF3tXtHmiMjuuAxeUBoA+kCTB
 /ClBYaPoryl0Ubi0wYoTetCdBTQdYwNKamzyVmMU=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1317cQT9013766
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 1 Apr 2021 02:38:26 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Thu, 1 Apr
 2021 02:38:25 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Thu, 1 Apr 2021 02:38:25 -0500
Received: from [10.250.234.178] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1317cMoQ047576;
 Thu, 1 Apr 2021 02:38:23 -0500
Subject: Re: [Discussion] Uninitialized variable in wiz_mode_select()
To: Muhammad Usama Anjum <musamaanjum@gmail.com>, Vinod Koul
 <vkoul@kernel.org>, "open list:GENERIC PHY FRAMEWORK"
 <linux-phy@lists.infradead.org>, open list <linux-kernel@vger.kernel.org>,
 <kernel-janitors@vger.kernel.org>, <colin.king@canonical.com>,
 <dan.carpenter@oracle.com>
References: <943b92c6ac291726cf0e6bd92e88f2110c14b74c.camel@gmail.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <aaa035d2-95a7-00b3-ef76-1aa61c7f8da9@ti.com>
Date: Thu, 1 Apr 2021 13:08:21 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <943b92c6ac291726cf0e6bd92e88f2110c14b74c.camel@gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210401_083833_950764_90A634FE 
X-CRM114-Status: GOOD (  12.26  )
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

Hi Usama,

On 01/04/21 1:03 pm, Muhammad Usama Anjum wrote:
> Hi,
> 
> `mode` remains uninitialized when `lane_phy_type` isn't PHY_TYPE_DP
> or 
> PHY_TYPE_QSGMII. I've checked the dtsi (k3-j721e-common-proc-
> board.dts) 
> and possible values of `lane_phy_type` are justPHY_TYPE_USB3 and 
> PHY_TYPE_PCIE. If this is correct, the mode will remain uninitialized with
> garbage value. `mode` should be initialized to what? It seems like it is highly 
> implementation dependent.
> 
> /drivers/phy/ti/phy-j721e-wiz.c: 344 in wiz_mode_select()
> 338             for (i = 0; i < num_lanes; i++) {
> 339                     if (wiz->lane_phy_type[i] == PHY_TYPE_DP)
> 340                             mode = LANE_MODE_GEN1;
> 341                     else if (wiz->lane_phy_type[i] == PHY_TYPE_QSGMII)
> 342                             mode = LANE_MODE_GEN2;
> 343     
>>>>     CID 1503592:  Uninitialized variables  (UNINIT)
>>>>     Using uninitialized value "mode" when calling "regmap_field_write".
> 344                     ret = regmap_field_write(wiz->p_standard_mode[i], mode);
> 345                     if (ret)
> 346                             return ret;
> 347             }
> 348     
> 349             return 0;

I've sent a follow-up patch fixing this.
http://lor.kernel.org/r/20210331131417.15596-1-kishon@ti.com

Thanks
Kishon

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
