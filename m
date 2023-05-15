Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05A45C7EE22
	for <linux-phy@archiver.kernel.org>; Mon, 15 May 2023 09:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xERu+4dbRmPWTiYt6RgqxxJlGGfXMSGjFYydPAkQybE=; b=NowEUYjZ4GDnZt
	1tTMG7un8XJjJMuXM19GVwRCogzP8EzacaiLxHsk1yW8CfDFlwCQdRXmn+P4VkoIhJ8YrNvwkYUmz
	fTcLLHkywXUrdWi27GZoGvC56LBPcK6ub1RbdwlhRcIwO7WjNnP9fnlNhYYdhu9fLfJ1pbpiCZn9F
	jPvm2e2ArKwxO1W3ZsyrRnyVV2OdO1md5aRjW9CQbvmMyigttdEXY2eJIuSnzaL4xkwjVYjVQYvtX
	DjloT3PrDPJPSReJFoJTC3HtDszvdsYdLbUjut939Qc/iWUEz7XtxrXAxf9FLmt12OMyDpCapQAUV
	jVb520swlrDEYHBa7EAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyUtM-001e6T-28;
	Mon, 15 May 2023 09:53:20 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyUtJ-001e5I-2f
	for linux-phy@lists.infradead.org;
	Mon, 15 May 2023 09:53:19 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-30789a4c537so6594471f8f.0
        for <linux-phy@lists.infradead.org>; Mon, 15 May 2023 02:53:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1684144395; x=1686736395;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4xoKLoBtO6JbCjepCa5c12r42aP/CGO4v/y128we9BQ=;
        b=21H8dYaOZv0Nu034SJA5yJfTXlAxp6uvDuHiV/WEDpTbaVXJcFmPyMwDxnaCOeiS/U
         HxqhNJTJfl3A6P48YyRVZZzuJQaPXSjnqQL6LuJ0NwwEcMhsQgbIk0W3IYBb8YRb2DO5
         oDqHoX7ivR91Q93gcXMODInL29kM5lEuOOC+m5/VKPERSN0Rs639hLjfeJt1+K7GgXYB
         lLLBqGyox5z/nboZv0gjYUWjMTRo9vJa1Xzbc3Wk6gM22vrCmIpohBgx5rqrEmUasxYY
         vUGl7IVC1Jf/Nb52OUlLgF641K9pUd6AzBuloMij778+qBcXcfM3+mHhgQbWQAMSDI+x
         CLTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684144395; x=1686736395;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4xoKLoBtO6JbCjepCa5c12r42aP/CGO4v/y128we9BQ=;
        b=Hbs0PEnnypUiZMf51ClN8WNnFMU5WwTtvseAlWHl+Z7Iv4T0iLR13H/+dQdw930tMz
         nrYYjs/lUfEQbmD2wo/+rcQz+MeAnfcO/84L0BmZ6aErj31Yi/YwoxUCNvjjj0IzvYrp
         bL6+SzpU/bVjnAUzUDuedoQDPK+eMLRpAhT8kDHpc/WmSS16+0R2Yr8L+a5KC2lDx+m0
         Rrut9YbhNc1QtdnfaiOgyNgfOC1BXhkmd5Vi5k1TDEVKhynSQIzYzZB1PruIpM8Fu0P2
         TUhtboInlZysWLKBvs4PPXpu/UwT05LePQw8BkCsZ0D2grNEpeOZ475B6y0Ta9YaRr5T
         Ux1w==
X-Gm-Message-State: AC+VfDz/dvacqu1/QFblUjF9tcpnEQbBP9MddCX+1xGFCitYKIfczqMa
	CZ3ipcxGXtTFNtIEmVfFK/RV0A==
X-Google-Smtp-Source: ACHHUZ7uQiiIX7ojRv2QU5h9YTwUl2i38KxCdmaX6EFJ8ZTx9bFauBpjvVJkLmp8Na07xcfW2d3LBg==
X-Received: by 2002:adf:e84e:0:b0:306:35fa:202b with SMTP id d14-20020adfe84e000000b0030635fa202bmr21392240wrn.6.1684144395121;
        Mon, 15 May 2023 02:53:15 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:1388:9f6:c7d9:3b77])
        by smtp.gmail.com with ESMTPSA id q12-20020a05600000cc00b0030795b2be15sm24228443wrx.103.2023.05.15.02.53.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 May 2023 02:53:14 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH v4 0/3] arm64: qcom: sa8775p: add support for UFS
Date: Mon, 15 May 2023 11:53:05 +0200
Message-Id: <20230515095308.183424-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230515_025317_883911_D45EAD18 
X-CRM114-Status: UNSURE (   9.22  )
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

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Update relevant DT bindings, add new config to the driver and add UFS
and PHY nodes to the .dtsi and enable them in the board .dts for
sa8775p-ride.

v3 -> v4:
- drop applied patches
- mark the UFS as dma-coherent

v2 -> v3:
- fix DT bindings: move allOf: below required:
- collect review tags

v1 -> v2:
- order new compatibles alphabetically
- rework the UFS PHY bindings to accomodate more clocks
- add a comment in the .dts regarding a non-standard clock used
  by the UFS PHY

Bartosz Golaszewski (3):
  dt-bindings: ufs: qcom: add compatible for sa8775p
  arm64: dts: qcom: sa8775p: add UFS nodes
  arm64: dts: qcom: sa8775p-ride: enable UFS

 .../devicetree/bindings/ufs/qcom,ufs.yaml     |  2 +
 arch/arm64/boot/dts/qcom/sa8775p-ride.dts     | 19 ++++++
 arch/arm64/boot/dts/qcom/sa8775p.dtsi         | 59 +++++++++++++++++++
 3 files changed, 80 insertions(+)

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
