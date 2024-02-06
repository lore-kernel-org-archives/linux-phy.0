Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01AB1C4828D
	for <linux-phy@archiver.kernel.org>; Tue,  6 Feb 2024 10:22:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aDFWXad2aa3IVXzVcasTb/dG4SdTwHhEcAwcQlYOPs0=; b=rKJzMBlypE1v7y
	HktOXQg3jiVE2piD880IOGAwgv/D7R1MTXCZAfldROqDy6Dr2/uJK/REUt/UqlV2KDN8cYonopT04
	+9bFzW6AaSFoKypPFY3PED6sm4ryRT2hxXzHo1F3PgRJgY6FspREZSrX9gvdCPWMP3ED2/JKDNV1N
	mJNa/DD66iBTvTj9yKHobMUw2pW0B7oq3S2uPumruScvXO0IynAhtwEu1XUP8JP4Ni+ixPK0C1Xqg
	meCxHjnvJad4Sq2RXaXWgTzFtusZWX002YUKwiEoNs++gsda193xr1n3I/GNVNsWRfuDNg8QHbwbn
	jVAtMhYbIBNqe6KiEWNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXIbL-000000070Ox-2Tw8;
	Tue, 06 Feb 2024 10:22:51 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXIbI-000000070Nh-3oyu
	for linux-phy@lists.infradead.org;
	Tue, 06 Feb 2024 10:22:50 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-5608f7fd83cso1383174a12.0
        for <linux-phy@lists.infradead.org>; Tue, 06 Feb 2024 02:22:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707214966; x=1707819766; darn=lists.infradead.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=01p2TanSgp861+oxOgEaYMkRj53MZcn6T1MOL6l1VuA=;
        b=BmHPeTakEgKkrQufPF3yyIbbWhA5MytoDxtyExROpQ8EGjmQLuHsrO6jn/x9YawDqQ
         +rF4BJWBtm3VZkPIHcV4bz14Wv+jDm4MyVamiiWQbE+aALksMf9n5l3GVLvh8HI2n3Cl
         wbu+Agc4tPqOxzsjBYmyQcdv2JKdMOxNS2qkxtw4Qpl0Gc55cPip1gohZr7zX2ARezOW
         W1rRaZLyH3vovcCUiQxWxg2c12oQUFOQO+qg6VRE397LLWmDp00LAb/DdyI0vQf14fDW
         lIC5VA0eSVwguVtbYVCmSD6cxGKogEAwON04w5TLJGuKULNHGao5sZSjUOdQM5GPv/Da
         r2TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707214966; x=1707819766;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=01p2TanSgp861+oxOgEaYMkRj53MZcn6T1MOL6l1VuA=;
        b=tqniQIbvSX5oQNBtR6Wmvx/wQ/mw2RP397g+QGYbc6l/HW+Cm9BTW0wSHglrlZhadC
         X6P/qwPVJ73p2CclJzOiRR4hs75ELhJYIke5xGKGwaJXH/l4Oh/RuJVaz6SlAWRnCRZm
         yAztZj9WO4VwGU0+uM25wI9V0y1npb8vBRaM6Oe82VbuFnAjIr+lqyVdoJ2a6maKCp3A
         cKOu65IhIEnvsLxWAZFnjImsgxX+rnaDWESwnSaOGPk3iz5iwdvseMYJ51bRAQb7flGF
         8SmeFd6qfgq5f3CQXcFFNVt+e6ywUg5JwzOSCnmZ1llGNinBIE4JQRiYK4oHvbVvmd1R
         Kv1g==
X-Gm-Message-State: AOJu0Yzp+z1R/C9HzjX7X7DAxMjVU2s/z3cQLzLrWoidAQB7O7Xmnr+Z
	kgYflsj8y91GRF2sBOvU8COx98gWtamHrn8iv8oqMymhmwc83KocQdTDyFgrN2+RPz4+ky3kLm8
	w
X-Google-Smtp-Source: AGHT+IFndRZuvc12h+mSwFOGsA7cSyS1/KsF/FCQhuSPk7kkFhmHLFFBlP3c3JRXEeN5Q9kPlJhczQ==
X-Received: by 2002:a17:906:6988:b0:a37:e2cb:a21e with SMTP id i8-20020a170906698800b00a37e2cba21emr1252988ejr.32.1707214966516;
        Tue, 06 Feb 2024 02:22:46 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCWgvgWn0lKReq/IvOhEppHkUeXxvOGoKNe65rsqNIj9Z6Gq+NndRABDNFX29hoNUBpOVAIX3oLktZIgoSd/O6XVoHFZc62PGxg=
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id lo16-20020a170906fa1000b00a37db24ca65sm956779ejb.152.2024.02.06.02.22.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Feb 2024 02:22:46 -0800 (PST)
Date: Tue, 6 Feb 2024 13:22:42 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org
Subject: [bug report] phy: qcom: Introduce M31 USB PHY driver
Message-ID: <88e2b874-b82d-4b6f-b1c5-761a8d066020@moroto.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240206_022248_980198_95E24E18 
X-CRM114-Status: UNSURE (   6.09  )
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

The patch 08e49af50701: "phy: qcom: Introduce M31 USB PHY driver"
from Aug 14, 2023 (linux-next), leads to the following Smatch static
checker warning:

	drivers/phy/qualcomm/phy-qcom-m31.c:302 m31usb_phy_probe()
	warn: passing zero to 'PTR_ERR'

drivers/phy/qualcomm/phy-qcom-m31.c
    294 
    295         qphy->phy = devm_phy_create(dev, NULL, &m31usb_phy_gen_ops);
    296         if (IS_ERR(qphy->phy))
    297                 return dev_err_probe(dev, PTR_ERR(qphy->phy),
    298                                      "failed to create phy\n");
    299 
    300         qphy->vreg = devm_regulator_get(dev, "vdda-phy");
    301         if (IS_ERR(qphy->vreg))
--> 302                 return dev_err_probe(dev, PTR_ERR(qphy->phy),
                                                                ^^^
This should have been "qphy->vreg".

    303                                      "failed to get vreg\n");
    304 

I can't work out what happened here.

This was fixed in commit 5f7cd740a6b6 ("phy: qcom: phy-qcom-m31: fix
wrong pointer pass to PTR_ERR()") but somehow it got changed back.  I've
looked at the git log and I don't see how that happened...

regards,
dan carpenter

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
