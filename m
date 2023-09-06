Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35C4DEB8FAF
	for <linux-phy@archiver.kernel.org>; Wed,  6 Sep 2023 11:58:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HGeEVrtZjwA9BByi644D/hms/G1/jrpZ6bjajcwQRL8=; b=gtCFDViz38y5si
	7lvq5vOv9+sune5n8bC6HbYpgjoWmb54HR3I3RPyetndbp3QQjnLkw1uh9bLyLMRxu1RLTSbPILd5
	rqZwV1hpsuxDrmDmaFY6CnpfriAGx7KM0XENHLrN+Ig68/LePmsfVfZsqBFGuTkSGgjX71ErdrIs6
	HUPGO2tulHdb+MwCXlBBzDIZ1TTYO4v6khJ7ItF6WB/59nhGWR6hsr+PMHOZjmC20qUEWxcvTfzMv
	0YmBDFFDPeUtu4mwktmXxPjlZhmkvj8SPuAHWCrtwGa3tkkNrt4mRv4+ZbVNzApOBYLH4ubwzZFtl
	JXplFuvu036z9GTijj4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdrAw-0095Qv-2l;
	Wed, 06 Sep 2023 11:58:26 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdrAt-0095NY-2I
	for linux-phy@lists.infradead.org;
	Wed, 06 Sep 2023 11:58:25 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-401da71b85eso33989845e9.1
        for <linux-phy@lists.infradead.org>; Wed, 06 Sep 2023 04:58:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694001501; x=1694606301; darn=lists.infradead.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oOhPjDnEOMsjk3SkalUCSLX+cIFh7ZbR5R6OxJxmEis=;
        b=UF6Ll3VlljffcCs/sE67h+hKdBC4GK0dJ2Ni+QX9sDcMUccfi/Efp4SWuu7qGUiw6u
         v0fY76wIHlFeK9CHs2YF3M0HO+Rkn6cpRZanZ/pj0ohT7gigHgjc5xH7a/K4Egu/71Ji
         N+LS26PcoHiU4kanwWDNCpeU8Lv5ckgFvb81gHixvT28ZU2oKwDDQFrHHmaczFpZxhNC
         NItN8jDbaoiXHbOUWamEgxjNF9hPmvdFd+DrKPPWGH5a7jLTQosoboF4pI0HTbNdh2uo
         8qYlOtSFbxSNVU8OJUl4IRLYMn4yHF8Shwzwbtld30Tf7w5bVcB9jaPdWnstVPgey6sc
         qh2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694001501; x=1694606301;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oOhPjDnEOMsjk3SkalUCSLX+cIFh7ZbR5R6OxJxmEis=;
        b=YvXCsPBaRPUqeipz3dDnn6wKxzHpX7qOjRd8B6xakX+zmej/lrGkP33QHL+7TAhUaQ
         UXEFwjpu9TjPx9/g27QgyU5HU+iKuJTVp2G7TDoIKgXBbXwvL80AeKdleo+ZJcaGt/DE
         i3Ctsg2yP71Y+B1dP0g+8BPT4kENwx2fNajWpVutaBrGuop3ptmYHv6pEet613QUyxoK
         e3vXF3PPFuhUgywWbsXQTxXoWkB0Jh35euc/qx4cm88XwE699Pc3e+bqIBFGrbtDM2Xz
         7YVS93J1+hFhR6Mxqg2wHTHqQotxxs8Oq8LLn/D5/MQaOMERaL1pdzWjLHxUgvnrnW7g
         kMag==
X-Gm-Message-State: AOJu0Yzy/cgGE/40NpSz7KVrM01/XTA0lUxUPUmwwuE/JFziu9gk5da6
	wtLxAqlp2IGbK+AvJOH7Mev2qo0RZghD8e4WIN4=
X-Google-Smtp-Source: AGHT+IE332eLRwXcBDuLlat5jA3t7kbXhDh2Mvex9S/qy7IrobTo0FksSYss05ix6Y63WpISRF7wQg==
X-Received: by 2002:a05:600c:1d1a:b0:401:b204:3b8d with SMTP id l26-20020a05600c1d1a00b00401b2043b8dmr2016411wms.27.1694001501536;
        Wed, 06 Sep 2023 04:58:21 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id l7-20020a7bc447000000b003fe1fe56202sm19680266wmi.33.2023.09.06.04.58.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Sep 2023 04:58:21 -0700 (PDT)
Date: Wed, 6 Sep 2023 14:58:17 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: quic_varada@quicinc.com
Cc: linux-phy@lists.infradead.org
Subject: [bug report] phy: qcom: Introduce M31 USB PHY driver
Message-ID: <cbd26132-c624-44b7-a073-73222b287338@moroto.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230906_045823_793787_30D17CF2 
X-CRM114-Status: UNSURE (   5.10  )
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

Hello Varadarajan Narayanan,

This is a semi-automatic email about new static checker warnings.

The patch 08e49af50701: "phy: qcom: Introduce M31 USB PHY driver" 
from Aug 14, 2023, leads to the following Smatch complaint:

    drivers/phy/qualcomm/phy-qcom-m31.c:175 m31usb_phy_init()
    warn: variable dereferenced before check 'qphy->vreg' (see line 167)

drivers/phy/qualcomm/phy-qcom-m31.c
   166	
   167		ret = regulator_enable(qphy->vreg);
                                       ^^^^^^^^^^
Unchecked dereference

   168		if (ret) {
   169			dev_err(&phy->dev, "failed to enable regulator, %d\n", ret);
   170			return ret;
   171		}
   172	
   173		ret = clk_prepare_enable(qphy->clk);
   174		if (ret) {
   175			if (qphy->vreg)
                            ^^^^^^^^^^
Checked too late

   176				regulator_disable(qphy->vreg);
   177			dev_err(&phy->dev, "failed to enable cfg ahb clock, %d\n", ret);

regards,
dan carpenter

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
