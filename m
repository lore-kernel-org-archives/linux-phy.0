Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C03FBC54E76
	for <linux-phy@archiver.kernel.org>; Fri,  6 Jan 2023 07:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T0dXifCK3l32G/C+Rpe9TLmYF0BKImCEOskdJjRkwNk=; b=xcyxbXeiBKAdey
	LgP/W93upN5270t60qZZclBgzQ3C0HtBjqpDpRvRmxgah1wtjfjPh5+e5hQG1rZSd4FIdTyCDKNBY
	1uHnfPzmjOQWLR5A+ZnOPhlYMloNwoaZQQXB6i232b/nQkk7bwwffWZdlWOe9/Ml2DuCZWHwIL7rk
	cgsmEH90LlBboqzwMd2he3felkp8MqTA8gTgSCm1kHCmzeLyJHhWJufb2oiA8qLjVBsfskljddH7q
	GDbUTXl4cqaqG85Wger1Wm3dhQnmHY4Ji0LaE2Ekc+NWgqNIrb2ZPILBPAEEnucP16jJQmeAP81+N
	KGnWMlljR7OIX0DW/Ghg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDgzM-006JqE-6y; Fri, 06 Jan 2023 07:18:04 +0000
Received: from egress-ip4b.ess.de.barracuda.com ([18.185.115.208])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDgzG-006Jmo-N8
	for linux-phy@lists.infradead.org; Fri, 06 Jan 2023 07:18:02 +0000
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199]) by mx-outbound18-167.eu-central-1b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Fri, 06 Jan 2023 07:17:53 +0000
Received: by mail-pf1-f199.google.com with SMTP id k21-20020aa78215000000b00575ab46ca2cso458786pfi.20
        for <linux-phy@lists.infradead.org>; Thu, 05 Jan 2023 23:17:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Z0A84FGRepsnpr8CikPqo0ZM3qEjlQHpqMQUxyOxzp4=;
        b=lm+whdNFnv08c4xaISy7wKXP/lGpLk0d8GdxBb9eIY3FQ+cNiDssPRuIXM5rQema7R
         VqMXDz++O1FIU054r6i7rRUpIOyvLVec9Z/V4/jjVoVxP+VtijoRshopfeaLv5A+Fc7B
         XJP15ABLzHczCuWVW9GKb21OIH1IfGqz8NmJ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z0A84FGRepsnpr8CikPqo0ZM3qEjlQHpqMQUxyOxzp4=;
        b=fvg2L18uLllyQM7bJf2pTQLAh6fbxu/fTJrF7mUPBDmPewVyHaY99gVIcjFcZatel8
         uBE5UYU/wKFsQ7pnSIEsTlkWuQ8J0Lhv+agI/ikcI8OlmniI4Ak/jzGpM0Wnyk/Pc6JO
         2HWxdEGL0q/QNuyzzh0my0EA2gAb+ryCBNkAxswr8Edq1jfEZwoYkL2XW8HGaOal7hfQ
         JfiWewU/a5hglt6qFceC8jaNh7djQY0oeAujS3kyEYkR1yIM/WoPHhHFAWF38zjG37W5
         hWR/tE4w0VD3CXE84txWt2g9NN0GwmpDmMBMz4GkLocN+evQrUwYEppSNPu6DwZVnSvR
         fncg==
X-Gm-Message-State: AFqh2kqwvFEmJefuMmEHQ3zghok8+UJnIDWyUwW9R06nrKObm+5owZZj
	UC0CcGR2vR2Csq41j33Wssof5vDGu2rSzNy39np9pRTAFFnYwoK7XV5NiFKN2ST+AIAxCVHLZt0
	lzX0/+zJmBinoGfvFjKxvmTRTjbf7MpbiuCFQ4o611rwJMm4H325lJWcIeMZaaA==
X-Received: by 2002:a17:903:28d:b0:192:85f3:5b1 with SMTP id j13-20020a170903028d00b0019285f305b1mr40401639plr.59.1672989471440;
        Thu, 05 Jan 2023 23:17:51 -0800 (PST)
X-Google-Smtp-Source: AMrXdXt4fjNGn4RhXSTCkrWYdQrsIeyYep30bkrbAKiaLpVu+zNcWs/SwuAn9j2YnS0jUWd90VijOA==
X-Received: by 2002:a17:903:28d:b0:192:85f3:5b1 with SMTP id j13-20020a170903028d00b0019285f305b1mr40401620plr.59.1672989471086;
        Thu, 05 Jan 2023 23:17:51 -0800 (PST)
Received: from LAP568U.mistral.in ([106.51.227.150])
        by smtp.gmail.com with ESMTPSA id h5-20020a170902680500b00189348ab156sm138845plk.283.2023.01.05.23.17.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jan 2023 23:17:50 -0800 (PST)
From: Sinthu Raja <sinthu.raja@mistralsolutions.com>
X-Google-Original-From: Sinthu Raja <sinthu.raja@ti.com>
To: Roger Quadros <rogerq@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Ravi Gunasekaran <r-gunasekaran@ti.com>,
	Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Sinthu Raja <sinthu.raja@ti.com>
Subject: [PATCH V2 0/2] phy: ti: j721e-wiz: Add support to manage type-C swap on Lane2 and lane3
Date: Fri,  6 Jan 2023 12:47:12 +0530
Message-Id: <20230106071714.30562-1-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-BESS-ID: 1672989472-304775-5382-49254-1
X-BESS-VER: 2019.1_20221214.2106
X-BESS-Apparent-Source-IP: 209.85.210.199
X-BESS-Outbound-Spam-Score: 0.40
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.245283 [from 
	cloudscan23-2.eu-central-1b.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
	0.40 BSF_SC0_SA085b         META: Custom Rule SA085b 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.40 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_SC0_SA085b, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230105_231759_051436_6D6FEE1F 
X-CRM114-Status: GOOD (  10.51  )
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

From: Sinthu Raja <sinthu.raja@ti.com>

Hi All,
This series of patch add support to enable lanes 2 and 3 swap by
configuring the LN23 bit of the SerDes WIZ control register. Also, 
it's possible that the Type-C plug orientation on the DIR line will 
be implemented through hardware design. In that situation, there 
won't be an external GPIO line available, but the driver still needs 
to address this since the DT won't use the typec-dir-gpios property. 
Update code to handle if typec-dir-gpios property is not specified in DT.

Changes in V2:
=============
Address review comments:
- Update commit description as per review comments.
- Restore code to check only debounce delay only if typec-dir-gpios property is specified in DT.
- Rename enum variable name from wiz_lane_typec_swap_mode to wiz_typec_master_lane.
- Rename lane_phy_reg variable as master_lane_num.
- Update inline comments.

V1: https://lore.kernel.org/lkml/20221213124854.3779-2-sinthu.raja@ti.com/T/

Sinthu Raja (2):
  phy: ti: j721e-wiz: Manage TypeC lane swap if typec-dir-gpios not
    specified
  phy: ti: j721e-wiz: Add support to enable LN23 Type-C swap

 drivers/phy/ti/phy-j721e-wiz.c | 66 ++++++++++++++++++++++++++++------
 1 file changed, 56 insertions(+), 10 deletions(-)

-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
