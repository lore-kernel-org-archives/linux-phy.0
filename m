Return-Path: <SRS0=2YxO=I6=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29F86C433ED
	for <linux-phy@archiver.kernel.org>; Thu,  1 Apr 2021 07:39:48 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AB8B76101E
	for <linux-phy@archiver.kernel.org>; Thu,  1 Apr 2021 07:39:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AB8B76101E
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UiPRtrAGuAnYNn/+EhFJcWruehNay2leKuRHJwO8wLk=; b=HCTwtEFYSLs2V3plxr1YA9qik
	bADXuhUZq3bsNSLKMf+Ke+pytMvagnm0bOQjeWt6D9Yy38ZODXJ2wj1xD+gCM0nqhbuRi9h73dcd7
	0yMLpsmiZkIvV1Inl6L6fFvV+vsoU9NqDHCr/zdt4lWKJcOebhSXO+lDYUGTQJmHhAPAlTHZT9lwT
	zuPb0KxYm4p8HDaodKVpTYR2GShz8k3CJFNO9aYEPLADgwGhcfHQhXzF3lVtsc4O5QnXR7H8UF7D/
	t1ry/wtFJrWhE7I7ixMDOl+/e41uBRtxlEovzeQebeVR33nmliSFx+C2AQpdv9wtMSqHXP2l6NhMq
	XQ5CPvtXw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRrvd-008oMH-Qv; Thu, 01 Apr 2021 07:39:46 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRrvZ-008oL2-Jo
 for linux-phy@lists.infradead.org; Thu, 01 Apr 2021 07:39:44 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1317db29023664;
 Thu, 1 Apr 2021 02:39:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1617262777;
 bh=9fskxeDKcFwVRSaKpjEcEev7N/dbj8ubzqBdyCt3hDI=;
 h=Subject:From:To:References:Date:In-Reply-To;
 b=v+bYs0YG4R2cmwX/Ti7eIlny+UGUEFj8cIoItLPvg4UUiYwj+O1xOEgont4eFNydD
 M8q9szqkcQHKttasOS6Ol3TpFE7RhIr0Dk0HhMGLvRkE9AKlXsinjAFtOAFvMyh3ZH
 f+mR+PoyQD46CFpxHXiA041AgwmYGelzEN3VgQN0=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1317dbAi056025
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 1 Apr 2021 02:39:37 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Thu, 1 Apr
 2021 02:39:37 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Thu, 1 Apr 2021 02:39:37 -0500
Received: from [10.250.234.178] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1317dYvP009919;
 Thu, 1 Apr 2021 02:39:35 -0500
Subject: Re: [Discussion] Uninitialized variable in wiz_mode_select()
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Muhammad Usama Anjum <musamaanjum@gmail.com>, Vinod Koul
 <vkoul@kernel.org>, "open list:GENERIC PHY FRAMEWORK"
 <linux-phy@lists.infradead.org>, open list <linux-kernel@vger.kernel.org>,
 <kernel-janitors@vger.kernel.org>, <colin.king@canonical.com>,
 <dan.carpenter@oracle.com>
References: <943b92c6ac291726cf0e6bd92e88f2110c14b74c.camel@gmail.com>
 <aaa035d2-95a7-00b3-ef76-1aa61c7f8da9@ti.com>
Message-ID: <0ac860d1-15b5-b314-c694-750db6274aa5@ti.com>
Date: Thu, 1 Apr 2021 13:09:34 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <aaa035d2-95a7-00b3-ef76-1aa61c7f8da9@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210401_083942_627205_73BBC2F9 
X-CRM114-Status: GOOD (  11.09  )
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

Hi,

On 01/04/21 1:08 pm, Kishon Vijay Abraham I wrote:
> Hi Usama,
> 
> On 01/04/21 1:03 pm, Muhammad Usama Anjum wrote:
>> Hi,
>>
>> `mode` remains uninitialized when `lane_phy_type` isn't PHY_TYPE_DP
>> or 
>> PHY_TYPE_QSGMII. I've checked the dtsi (k3-j721e-common-proc-
>> board.dts) 
>> and possible values of `lane_phy_type` are justPHY_TYPE_USB3 and 
>> PHY_TYPE_PCIE. If this is correct, the mode will remain uninitialized with
>> garbage value. `mode` should be initialized to what? It seems like it is highly 
>> implementation dependent.
>>
>> /drivers/phy/ti/phy-j721e-wiz.c: 344 in wiz_mode_select()
>> 338             for (i = 0; i < num_lanes; i++) {
>> 339                     if (wiz->lane_phy_type[i] == PHY_TYPE_DP)
>> 340                             mode = LANE_MODE_GEN1;
>> 341                     else if (wiz->lane_phy_type[i] == PHY_TYPE_QSGMII)
>> 342                             mode = LANE_MODE_GEN2;
>> 343     
>>>>>     CID 1503592:  Uninitialized variables  (UNINIT)
>>>>>     Using uninitialized value "mode" when calling "regmap_field_write".
>> 344                     ret = regmap_field_write(wiz->p_standard_mode[i], mode);
>> 345                     if (ret)
>> 346                             return ret;
>> 347             }
>> 348     
>> 349             return 0;
> 
> I've sent a follow-up patch fixing this.
> http://lor.kernel.org/r/20210331131417.15596-1-kishon@ti.com

Fixed a typo in the link
https://lore.kernel.org/linux-phy/20210331131417.15596-1-kishon@ti.com/

Thanks
Kishon

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
