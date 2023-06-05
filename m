Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B201CC7EE23
	for <linux-phy@archiver.kernel.org>; Mon,  5 Jun 2023 18:45:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CpWPdBVjLB53tRA1VlWj6pECXltPuzTSQuwKD12xvHI=; b=tHTIwYtALQuyQ7
	Ewr/91YOXmeen7tDm3Qb/yebt61FtAqN0rFna8blDDtZUFRi1rHGmMc3BCDUpxRb8zKj2hAGVjCwo
	bAsK8urIvkRjf0WzmhNfx9jWwoladSlfA0qmYZqzmPHYuDPryTlXwcBE9eiuodGCzYOFgLoKUXxxM
	pOTc+ZVAPcNtqTuj3tCyQBhr5HtmQoAsg9sdA5D5ZD+CypPUb4eHRNaNVYU8lJ9fMlU09wr1s5qz8
	52o1mGcs+r2mui5A9UbMQbnWdV+JdXeai2W7hFfSo+y3n7NNX6XiazrDfLqO4ii+iNYgk1cY3z3b0
	y0z10jVSfPMmhmkP32dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6FCy-00GRgn-1B;
	Mon, 05 Jun 2023 18:45:36 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6FCv-00GRgE-0s
	for linux-phy@lists.infradead.org;
	Mon, 05 Jun 2023 18:45:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1685990732;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Pl7VDgr8UNMU74WbMQfkak7oCKY3DAIqgpVAS37cfg4=;
	b=hpcdkgc2lWAyT4ozsQRz1o19//L3sW06Rxx+c1WllQuBrpFu6Qj/dMXBv4oneOydFzlCgJ
	aFEKk/dcXc7CXDWwc1rm2ZRZ8h1wXTe4FrVm/oW1PWQ+ICXuvwLvaQ26Qw5RQRMkyiO45P
	XxJer2YvEU1utPERlwSFojtwAC/5H+c=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-583-7ywg8RFhO8aE3kEHRL_ksQ-1; Mon, 05 Jun 2023 14:45:26 -0400
X-MC-Unique: 7ywg8RFhO8aE3kEHRL_ksQ-1
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-62621cdb1f0so49899986d6.0
        for <linux-phy@lists.infradead.org>; Mon, 05 Jun 2023 11:45:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685990718; x=1688582718;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Pl7VDgr8UNMU74WbMQfkak7oCKY3DAIqgpVAS37cfg4=;
        b=g0JxToUzQS9aJsRwTp4uJGQ44hw01NqOogQsV5v892msVv/NolHtwnEmMIPIm02hW8
         eNFudrkQ6ud4b8X8lAqOaLg2xnD8q7CQ9GTkiXjUegzy6Ax+y2nHHukVtOm9+xdNluIH
         EiE3hDiyn3fBNIk68Zz+ibfRfXAApetGy9qb18DRoZml4oK0XKzO25MhsyogqHTaD0rQ
         KFsdN7mITaDAHXgC4xkB4ZAXnNiqUVWsIob570a9QPv7zdZ1H+AfYATXCgV1KhFMjfVd
         t++ITFtj9pnW2lvFT3l+tDITrXYmuF5a0qEL6zZMGgxb/y8EUrsKUgHNSaJSP+orrgZJ
         0AEw==
X-Gm-Message-State: AC+VfDzY34DKU3AK/wujcbVvmcliyde4nFva/Lz49YdGbHsClAYqtrHO
	WqXfrowsYzWYp/biVXMO+Gg20fsVSue81Ol/sUopOHmkI7tl2GTKwFlMnmm9Ur3xW+ljnpfr2ie
	wuisJKRtKWbLjj96wqzmCz5ytyA==
X-Received: by 2002:a05:6214:20a9:b0:626:1a56:734c with SMTP id 9-20020a05621420a900b006261a56734cmr7864898qvd.40.1685990718104;
        Mon, 05 Jun 2023 11:45:18 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ7wJl9BPrC2/U3KWsQrnPIw8ATJ/8NswxDgCajqUCql/TrB+9mmgBLclfAGijAn2P6Y5nohcA==
X-Received: by 2002:a05:6214:20a9:b0:626:1a56:734c with SMTP id 9-20020a05621420a900b006261a56734cmr7864877qvd.40.1685990717891;
        Mon, 05 Jun 2023 11:45:17 -0700 (PDT)
Received: from fedora.redhat.com ([107.171.218.122])
        by smtp.gmail.com with ESMTPSA id d10-20020a0cc68a000000b00625da789003sm4785771qvj.110.2023.06.05.11.45.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jun 2023 11:45:17 -0700 (PDT)
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
Subject: [PATCH v2 0/2] Clock fixes for qcom-snps-femto-v2 PHY driver
Date: Mon,  5 Jun 2023 14:44:52 -0400
Message-Id: <20230605184455.34832-1-athierry@redhat.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_114533_376285_70998A09 
X-CRM114-Status: UNSURE (   6.70  )
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

This series contains a few clock fixes for the qcom-snps-femto-v2 driver:
- make sure ref_clk is properly enabled
- add system sleep PM ops to disable the clocks on system suspend

v1 -> v2
- keep cfg_ahb clock and use clk_bulk API to handle both cfg_ahb and ref
  clocks (Bjorn Andersson)
- add system sleep PM callbacks (Bjorn Andersson)
- add Link: and Fixes: tag (Andrew Halaney)

Adrien Thierry (2):
  phy: qcom-snps-femto-v2: properly enable ref clock
  phy: qcom-snps-femto-v2: add system sleep PM ops

 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 85 +++++++++++++------
 1 file changed, 59 insertions(+), 26 deletions(-)

-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
