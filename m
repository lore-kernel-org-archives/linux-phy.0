Return-Path: <SRS0=2YxO=I6=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F719C433B4
	for <linux-phy@archiver.kernel.org>; Thu,  1 Apr 2021 07:33:59 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D41B06105A
	for <linux-phy@archiver.kernel.org>; Thu,  1 Apr 2021 07:33:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D41B06105A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=uv0W5HWsJOwd5NHqo/uss+p7ut6v32CeqHvCB9uNxTU=; b=mrzcqSSf80AM+tXuGgklj0iwPI
	ShDAbaozZCvn2r5wPc96YpZUKZvo0avGE7tC6XiztIPqLYK4HLJZ20gzdGDK0QD7vBmhx6sLeZTUg
	lJAEM8PDfyQYf4WAb20R0JzaSdXPNIeEdoghqhd5eSrosEy2q0lNwr8Aw24+6Dia1Sq01Y2xkdGwc
	Hyn0ZZffSIcGSn81P14YEYWVE2LPlt+2NqZDphibfRU0o3uVq1J6NKlWJCQpzWH35ciehZb0enBI9
	IPON6zcKypgSutDPDZl6cU0Y8fBzLo66OD/gG0O61U3kbKAlLrgg8d46iOvSC24RguZ2u9KqVEdPM
	QYMIDJMA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRrq1-008nYx-7J; Thu, 01 Apr 2021 07:33:57 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRrpx-008nYD-98
 for linux-phy@lists.infradead.org; Thu, 01 Apr 2021 07:33:55 +0000
Received: by mail-wr1-x433.google.com with SMTP id k8so780927wrc.3
 for <linux-phy@lists.infradead.org>; Thu, 01 Apr 2021 00:33:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:user-agent:mime-version
 :content-transfer-encoding;
 bh=M4Vn2x7LYFvskShVgkHnVYDSST8AZ5E8PRowpdD+Pys=;
 b=lSrU7eCkawm4nCmeM2S51RbGiglSJQ98+QDe42WUxlLGsBrYIYquS87IhyUcdQv/Vu
 YCENXL95Tr/OVrkJqEfDg+dbdlHRRII/uHs92Pjck858KHG/dH9eBtNE5P6nFG9MW4e3
 cjiYTZxhpwrWNWJzbfvTVJADYDGAa/I25IqnOOgtGft8hZKCXNdCV88f5sa/SMRe0VbY
 z5+Cbb+/EGrjv22rNzB11wye9hUkSIy0BK4D85dkS3Yx7viW1iYhDI0HFYD/oOvR4bq5
 YH/8lkhhp4Bgu+VAUmK360FvZpkJ0YjAduUzhrRcQOf7Jyvs1i+59Jwt65d+j2qDf8kF
 xzFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:user-agent
 :mime-version:content-transfer-encoding;
 bh=M4Vn2x7LYFvskShVgkHnVYDSST8AZ5E8PRowpdD+Pys=;
 b=DhFbUmCYQCsojKUof4uqh9LCtkOLAui3pEa93WIgkw799u5QEtrerzA3QnNKqHVPC/
 X676l2Fu1pjhUnUcRfu9Cdte9pjDMaLEae15PLibmEDrvFhXvdJSKDxRTWPKpXhxw093
 BlHbD0cfnGmhkQuxGrKOZQg0HL4XAmdXvwcIYjwEuzg/fDjfXVAsyIBeUI6xNIQzI9H8
 CE+GOYsxZzPoeUnKeJmU9U1D1pURq8tiw+II39kAQ2fwwGoREuk5/lZqawYEhhijot9Q
 9hPerJmjcHtqBrgbEvBdZjH0m93bDx0ecdqn/Ggx+sJouh7EBbBllbUBLOhxLuwti4qL
 FE7g==
X-Gm-Message-State: AOAM533tu8EelSOJI5+2XaAGdaUAwl4vHJ7tKnFT3pdKfnTc3dYT0TKn
 BmDiZFT15L3b41YVMKjWE9g=
X-Google-Smtp-Source: ABdhPJwlEJpAlk8h3VfXuVCgX2VnNFUIeLlr6LQfCIxL2291eR/i95pLgC7UsFY8/1hjoqNueTZGTQ==
X-Received: by 2002:adf:f841:: with SMTP id d1mr7911879wrq.36.1617262431345;
 Thu, 01 Apr 2021 00:33:51 -0700 (PDT)
Received: from 192.168.10.5 ([39.46.7.73])
 by smtp.gmail.com with ESMTPSA id f126sm6899718wmf.17.2021.04.01.00.33.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 01 Apr 2021 00:33:50 -0700 (PDT)
Message-ID: <943b92c6ac291726cf0e6bd92e88f2110c14b74c.camel@gmail.com>
Subject: [Discussion] Uninitialized variable in wiz_mode_select()
From: Muhammad Usama Anjum <musamaanjum@gmail.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, 
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>, open
 list <linux-kernel@vger.kernel.org>,  kernel-janitors@vger.kernel.org,
 colin.king@canonical.com,  dan.carpenter@oracle.com
Cc: musamaanjum@gmail.com
Date: Thu, 01 Apr 2021 12:33:46 +0500
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210401_083353_607462_1D682B15 
X-CRM114-Status: UNSURE (   6.01  )
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

Hi,

`mode` remains uninitialized when `lane_phy_type` isn't PHY_TYPE_DP
or 
PHY_TYPE_QSGMII. I've checked the dtsi (k3-j721e-common-proc-
board.dts) 
and possible values of `lane_phy_type` are justPHY_TYPE_USB3 and 
PHY_TYPE_PCIE. If this is correct, the mode will remain uninitialized with
garbage value. `mode` should be initialized to what? It seems like it is highly 
implementation dependent.

/drivers/phy/ti/phy-j721e-wiz.c: 344 in wiz_mode_select()
338             for (i = 0; i < num_lanes; i++) {
339                     if (wiz->lane_phy_type[i] == PHY_TYPE_DP)
340                             mode = LANE_MODE_GEN1;
341                     else if (wiz->lane_phy_type[i] == PHY_TYPE_QSGMII)
342                             mode = LANE_MODE_GEN2;
343     
>>>     CID 1503592:  Uninitialized variables  (UNINIT)
>>>     Using uninitialized value "mode" when calling "regmap_field_write".
344                     ret = regmap_field_write(wiz->p_standard_mode[i], mode);
345                     if (ret)
346                             return ret;
347             }
348     
349             return 0;

Thanks,
Usama


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
