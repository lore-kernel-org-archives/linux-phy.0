Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A95EEB64DD
	for <linux-phy@archiver.kernel.org>; Thu, 22 Jun 2023 19:40:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lq6UoAjdEQjcI6Wc8KERXulFDhzWZ9PRbWhuzrNJHD4=; b=H4LzLmQi4Up+dY
	MYGZ2V9zdtnjZh7TLgVpq2ByuKxbQu6yg9rssBAhKV62yRO80Fh2Sz78bzPNxXiIcxCaaBGHD3L4N
	FTd4zg4h5nwG7GFU6EYI/3DMS2ABeTwCpqqnDMNuOd+dKGkKzVhY3UFBOnSnqYqgfUhXtMc69vRss
	pMmQjiAwh8/gF8BmSPkS6le/1mSwzBsy0JjHOdM2NhWGUJnNWwo1uc+jHqIXS8kLjvYW62qZGxZ1z
	gP1JrQAD4mYTMwLc8HG+0ZQa/5DDAxWLoS/5C3Ywc0zJ2k5gfk+9enzAOBce6jFTChCzI0flDywcD
	xG+GoapDMY0M+6EPB5PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCQAg-001Zy3-29;
	Thu, 22 Jun 2023 19:40:46 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCQAe-001ZwO-06
	for linux-phy@lists.infradead.org;
	Thu, 22 Jun 2023 19:40:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1687462843;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=YAdDzI7a2w7zSAyjPyNNq/Ev472c8eoVURScYubF4TQ=;
	b=hror7qWs9sQQmsUoSYz1kpv4Mp20q+LVj0IyWNvUvPyluV/gO8wRIAh1zDUkWvbL1mG7/u
	MZhTXjhyuSSrulxuC+qPV9NQ8SfFLZlmJWNa0Ua1agOOBfod2ekx6D4JDxfUitHltCCd6V
	lpPmq/hJA9p8JELN9g/XJRGZgYE0kQA=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-44-UtU85bIFMialkldXIhBkwg-1; Thu, 22 Jun 2023 15:40:37 -0400
X-MC-Unique: UtU85bIFMialkldXIhBkwg-1
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-62fe611af5bso81652926d6.0
        for <linux-phy@lists.infradead.org>; Thu, 22 Jun 2023 12:40:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687462836; x=1690054836;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YAdDzI7a2w7zSAyjPyNNq/Ev472c8eoVURScYubF4TQ=;
        b=NWca4BNHXwWhRkcLx+XODbpVveiLTg14I46cJ8BxsBY5azXVhy++OBFoJMrlQ1VaQ9
         fkI4FmzTTTQhcfQl3Ad4bigmawBeVRmEgrF8nQ9hbAGDf1tAzAG8nUpzbczH2iiiJQdS
         V7TnQ+I6dfixE0qIvTAKIdYDoc3ciQxUvwgEgWZQuWh8kumqOzrV+PCGez0eaU5g1aKM
         K/gcV/hyBToZ6LHVQ6mBJshYN/GX1FN6z1EV04INowacPH4CiAc5uLhp0xN8lFSN1dmr
         43lDptNlMegDIaFMCAErRCXBPt270MaMJdh5k4xOoU+0jgF1yr9t+750/pwBIAAjyCRC
         7yyA==
X-Gm-Message-State: AC+VfDyywEjmhYuMGJyDqbn49DFMIRRX1XB2cv4ji9t04+F/QBXzD3gy
	iETrRj8e8m0kfg+sYZUyArNpOrXdS4b5mTB5zfo/ar0QsHQSiTccwUC2BZ/EOeygwuArIlptepv
	1JBl3y8PmU/FarU199wzZa1aaZg==
X-Received: by 2002:a05:6214:2348:b0:628:8012:bee7 with SMTP id hu8-20020a056214234800b006288012bee7mr23807899qvb.20.1687462835929;
        Thu, 22 Jun 2023 12:40:35 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ6Us4gIajbkbBYAl1GQwlecTXJ2MQWP3hipq9LV+yvMlB+t2tpeI2+qq/juzy83d2qaMcEJfg==
X-Received: by 2002:a05:6214:2348:b0:628:8012:bee7 with SMTP id hu8-20020a056214234800b006288012bee7mr23807877qvb.20.1687462835633;
        Thu, 22 Jun 2023 12:40:35 -0700 (PDT)
Received: from fedora.redhat.com ([107.171.218.122])
        by smtp.gmail.com with ESMTPSA id jo30-20020a056214501e00b006301819be40sm4174183qvb.49.2023.06.22.12.40.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jun 2023 12:40:35 -0700 (PDT)
From: Adrien Thierry <athierry@redhat.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Manu Gautam <mgautam@codeaurora.org>,
	Philipp Zabel <pza@pengutronix.de>,
	Stephen Boyd <sboyd@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Wesley Cheng <wcheng@codeaurora.org>
Cc: Adrien Thierry <athierry@redhat.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 0/3] Fixes for qcom-snps-femto-v2 PHY driver
Date: Thu, 22 Jun 2023 15:40:17 -0400
Message-Id: <20230622194021.80892-1-athierry@redhat.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230622_124044_161775_40D749BA 
X-CRM114-Status: UNSURE (   6.92  )
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

This series contains a few fixes for the qcom-snps-femto-v2 driver,
notably:
- make sure ref_clk is properly enabled
- add system sleep PM ops to disable the clocks on system suspend

v2 -> v3
- "phy: qcom-snps-femto-v2: add system sleep PM ops" - add link to
  downstream driver used as reference (Andrew Halaney)
- add commit "phy: qcom-snps-femto-v2: use
  qcom_snps_hsphy_do_suspend/resume error code" to make sure PM ops don't
  always return 0 (Andrew Halaney)

v1 -> v2
- keep cfg_ahb clock and use clk_bulk API to handle both cfg_ahb and ref
  clocks (Bjorn Andersson)
- add system sleep PM callbacks (Bjorn Andersson)
- add Link: and Fixes: tag (Andrew Halaney)

Adrien Thierry (3):
  phy: qcom-snps-femto-v2: properly enable ref clock
  phy: qcom-snps-femto-v2: add system sleep PM ops
  phy: qcom-snps-femto-v2: use qcom_snps_hsphy_do_suspend/resume error
    code

 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 87 +++++++++++++------
 1 file changed, 59 insertions(+), 28 deletions(-)

-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
