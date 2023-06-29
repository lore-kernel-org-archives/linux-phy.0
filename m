Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01384C0015E
	for <linux-phy@archiver.kernel.org>; Thu, 29 Jun 2023 14:46:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/fm34mGUamDVsQW81lsVGS7Z6hs6Ra9iKVGfu1Wo5cg=; b=zBIAHJEh3LaY4m
	tYzs7i4z7YOURNACLhuFl8C0gOC2+iUIdDDDPK+XrsYPOREe2fU29FdhKELs/dUSQRVhqhP6M++/m
	sqMlwHNeBNeUSOucVPoaVN4cJ+WJB2gxNt4PmQxfabZGD3Dg2poN2zqs44ztm+doJKx71NDJakY2M
	MZUPzmKywZ59w6fwyWtZsOz1qB0PB88yXSjX8wfg8dyGDr2bWOrUI2zKxMSlaZXW7sMoBRKK9YnxG
	h0oSlJ5tOuEpaGK/bq5JGngrlzRvwp/2Mij/ZqvJQwOY6sZRImrroXPV7dAZLlxac85UO33ZjOLfL
	ZMZPtV130C2+eaJt9ywg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qEsum-001Kfp-26;
	Thu, 29 Jun 2023 14:46:32 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qEsuk-001KdL-03
	for linux-phy@lists.infradead.org;
	Thu, 29 Jun 2023 14:46:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1688049982;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=CNL+hnN23HboCzCP5TjwREUx1ktgKGnxEOC00C2eDE0=;
	b=IA5rw8W6u3hgKLESIXikOMqPuX+CtcgCizpzh4p1blHiW252q2lDBikxizYSQBsWRbBV8O
	tAWyYFk5QgS8xVExGTULkeK8ixZIe1YD5y0W6gwU/9kS6Z7I6fmKA88/ghJB5DawfDbXUT
	3yxeJx1ZcAnPWizhF17ohom3qzkHoJI=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-655-i9QbtnUZO2OmYib5w6OVYQ-1; Thu, 29 Jun 2023 10:46:19 -0400
X-MC-Unique: i9QbtnUZO2OmYib5w6OVYQ-1
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-635e244d063so8683276d6.1
        for <linux-phy@lists.infradead.org>; Thu, 29 Jun 2023 07:46:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688049979; x=1690641979;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CNL+hnN23HboCzCP5TjwREUx1ktgKGnxEOC00C2eDE0=;
        b=We8+cLqhpPRdrHRPKvO6y6+JcoKkZR2AF3QVAsWOFv19WKe0y7ExOwOOVH4wrbzjEx
         yGw+E/sRq1/7RPMY4zEoJ0XHHpGKh5T0m5/LCCQS+qvRtG9oT5twTvyJ9I4iSd51cRQI
         hzrio9LMznW7r6cqOW/fv8V8b76BAtGLkwBqC8+UHCPi13WIFplFPahZl8XaygBJWVbT
         133LypD9pcEZJ9ZEhfhjD41Cs4x+aiUfJ/lK+Tp+ROMaPvAr7ba9E1Esar5n0InDvgJW
         2gMticyfvevc3O42laECvTPUyyOxec+HXSSnn7ZxiZrbZ/VwpI3deuwJWn2ZnZEF3wDA
         Pwgw==
X-Gm-Message-State: ABy/qLbBF/tPs4ri0EC5pVduYcpylsFWgpcbmkW4ay5NDJj03XcoSYNh
	UrtVBob3InxdWEmq34j3WzZjpHYVJPuBsURPkxZ6h3m8D+Rg3ZsmxuKLuI6ZZ1aRmUDDC3HviNv
	kzdKUCQeL+76sLPYzO2oOju4p2Q==
X-Received: by 2002:a05:6214:29eb:b0:636:2169:4298 with SMTP id jv11-20020a05621429eb00b0063621694298mr2089042qvb.1.1688049979428;
        Thu, 29 Jun 2023 07:46:19 -0700 (PDT)
X-Google-Smtp-Source: APBJJlHM3fYxBjd3fdjmDJ0KQXKCOe9yHzW98ieDfK7Cgocpm7rc0LvYNrrxFwg9+YVkOrSgV5Mzqw==
X-Received: by 2002:a05:6214:29eb:b0:636:2169:4298 with SMTP id jv11-20020a05621429eb00b0063621694298mr2089026qvb.1.1688049979165;
        Thu, 29 Jun 2023 07:46:19 -0700 (PDT)
Received: from fedora.redhat.com ([107.171.218.122])
        by smtp.gmail.com with ESMTPSA id a17-20020a0ccdd1000000b005dd8b9345b4sm7055590qvn.76.2023.06.29.07.46.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jun 2023 07:46:18 -0700 (PDT)
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
Subject: [PATCH v4 0/3] Fixes for qcom-snps-femto-v2 PHY driver
Date: Thu, 29 Jun 2023 10:45:37 -0400
Message-Id: <20230629144542.14906-1-athierry@redhat.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230629_074630_128390_B739E12B 
X-CRM114-Status: UNSURE (   7.19  )
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

This series contains a few fixes for the qcom-snps-femto-v2 driver, mostly
clock-related.

v3 -> v4
- remove commit that added system sleep PM ops
- add commit "phy: qcom-snps-femto-v2: keep cfg_ahb_clk enabled during
  runtime suspend"
- "phy: qcom-snps-femto-v2: properly enable ref clock"
  - dropped "HACK:" comment (Bjorn Andersson)
  - check for IS_ERR() for the optional cfg_ahb clock (Bjorn Andersson)
  - don't print an error message in case clk_bulk_prepare() fails (Bjorn
    Andersson)

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
  phy: qcom-snps-femto-v2: keep cfg_ahb_clk enabled during runtime
    suspend
  phy: qcom-snps-femto-v2: properly enable ref clock
  phy: qcom-snps-femto-v2: use qcom_snps_hsphy_suspend/resume error code

 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 78 ++++++++++++-------
 1 file changed, 50 insertions(+), 28 deletions(-)

-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
