Return-Path: <SRS0=+yjZ=L6=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB422C11F66
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jul 2021 23:05:18 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9A37A61C93
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jul 2021 23:05:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9A37A61C93
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GAQ/5naX9ybdqEcafs+hD+ZhnLMNPZj72Gvz01LaubA=; b=Ll37zWRCUqwIdh
	TRcopkQaQstjISpdXc7WFJOXV6yk1UwtGew211ldmwKAqXBI1Vfmj1sK1CLFAGFuA/vLaoJo32Hkb
	SXtrWIhfreRRyuaupZpV1OCVP8VPy0E1mUGvYIPWj1YFOgeTFkiD5iu5bMhXBXX9l+6Mnk1XMjewV
	RB5I1JlHz4bd/aE+UB1crcpFDXBL3jHuomIXb0L7F5hMyu4TrNwUCtDw4Htlbwy6wxUA4w0Tx1738
	H/0ZqTtB9sWTM1oCfpoDSYgNUI52I3wUtO1PK8sPR7joSNd9vF1WTeKX3VTE4WtxbL05FJ0FWKGeX
	ok5D3UkRU8P//P4KupaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0u7x-00CzvI-Ul; Tue, 06 Jul 2021 23:05:17 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0u7v-00Czth-5o
 for linux-phy@lists.infradead.org; Tue, 06 Jul 2021 23:05:16 +0000
Received: by mail-wm1-x335.google.com with SMTP id
 j16-20020a05600c1c10b0290204b096b0caso409816wms.1
 for <linux-phy@lists.infradead.org>; Tue, 06 Jul 2021 16:05:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=aZ0FQWFZAWKS6n30bsCIteW1nd9Jxli6BdvQV5WN+qE=;
 b=RPZPFya8gNWecWQegdxw+wHvN2leMUJhk35oy7xhhqLj6OV7IfgyiVjg34tVYIAi37
 Z4WjMGNKjCrjm8mCAcipIOGeRI5DxYA8C7IyzLOhQaPTbMZLfNO7ApsnCgHdskIs/S4u
 T5eN1r9wE4gjRWhoNt4V/sGW2iUIbWFjZKOqsPNJL1hwr9zB0zrg6eo10TWNRcgka2Zv
 XfHhD+4ZH2DjplNDEN0JZIUPvDUz4ioEb3N0EDbjsNFIFVZUnyT65OotEo8PvNSeBY50
 NDE/Z3KmwHh6y6ggwoBPPvy2lxkQoQE1tqpiZafGRBQvnSYu2kpYAdMuxhlBZRO0EYZf
 PlXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=aZ0FQWFZAWKS6n30bsCIteW1nd9Jxli6BdvQV5WN+qE=;
 b=Oo+C0/MAbjJYdSPhe3dDDcxF2izqlvLsDtAEVzDIvka/yIyWZActBUMU7SREaavJGj
 FS94lND8+RvcgpABSLPKfy+pbYL4H7RDlTbT4/OJ4eE8AwPGBAsW2Qy6oFk4KrB0hO69
 6HloNF63S5uqQEYu08NCf44iXEQ2jsE9Vy7bRb2RxvKq6T2xjrRrYVmvpj374jk0TvNz
 6AeCRHLKgVr5+ZaFqLxbQUkO/qCwzE5JjHxdH6ay/HnxOO++cd1DGyrZHw4to4TQ+08f
 H7j0fAMetfeYq3MtdgXVMgeIi1Rx/sqKz7e77cxtsroJEg4S5zINt+k9nKZWqOcN0Rea
 3j9Q==
X-Gm-Message-State: AOAM530ScyexvIb9duaQeBktX/rtdIAdb4tIuOPKdXuPB6R4b1lwlnCx
 Kdk3HRRB9bpljWdL2BOqfwXHtQ==
X-Google-Smtp-Source: ABdhPJyfyy59pl5cDfNN9DbmWJdQQ+QCru+tbYvErRUS1FVN7fuFKhY+1CzL1NGKLHlxSY6Cif4TYQ==
X-Received: by 2002:a7b:cd8d:: with SMTP id y13mr3235017wmj.131.1625612713036; 
 Tue, 06 Jul 2021 16:05:13 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie.
 [188.141.3.169])
 by smtp.gmail.com with ESMTPSA id g15sm14241866wmh.16.2021.07.06.16.05.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Jul 2021 16:05:12 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To: vkoul@kernel.org, kishon@ti.com, agross@kernel.org,
 bjorn.andersson@linaro.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org
Cc: robh+dt@kernel.org,
	jonathan@marek.ca,
	bryan.odonoghue@linaro.org
Subject: [PATCH 0/2] pm8150b qmp phy type-c orientation fixes
Date: Wed,  7 Jul 2021 00:07:00 +0100
Message-Id: <20210706230702.299047-1-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210706_160515_272007_B9D08B2E 
X-CRM114-Status: GOOD (  10.50  )
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

This series is a component of a series which enables full Type-C port
manager support on pm8150b hardware as found on sm8150 and sm8250.

https://git.linaro.org/people/bryan.odonoghue/kernel.git/log/?h=usb-next-5.13.rcx-rb5-tcpm-v2

When we change the orientation of the Type-C cable, we must also change the
lane allocation in the qmp phy to match the reported orientation.

The first patch is a simple typo fix in the original upstream commit.

The second patch implements a reasonably complex dance to reset the qmp phy
for the orientation switch. This necessitates registering for the Type-C
switch, resetting the PHY and then bringing the PHY back up with the correct
orientation.

The second patch is based on Wesley's original submission, reworked by
Dmitry and with a few fixes applied by me.

Dmitry Baryshkov (2):
  arm64: dts: qcom: sm8250: fix usb2 qmp phy node
  phy: qcom-qmp: Register as a typec switch for orientation detection

 arch/arm64/boot/dts/qcom/sm8250.dtsi |   2 +-
 drivers/phy/qualcomm/Kconfig         |   8 ++
 drivers/phy/qualcomm/phy-qcom-qmp.c  | 107 ++++++++++++++++++++++-----
 3 files changed, 96 insertions(+), 21 deletions(-)

-- 
2.30.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
