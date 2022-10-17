Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A773CC4167E
	for <linux-phy@archiver.kernel.org>; Mon, 17 Oct 2022 14:54:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oVCmNJT+bMNEHz2ow+jrQqMRlXix04N29DuvZg3nrOc=; b=iRGJ2VMWfPIf/D
	ZeFxCMwOWarYQTA5ABiVYRIKZLw2Vjg6cla+06f/mq9C6UtlnYus4kZ6eHdV9kpbeBh2otmdUlb15
	uT5qfMuIRgVTOW8u1F/3S/izQuCHO883DdMT+5HFBg4E4rJH6NFt68b1luAwYjN47wQxGTl2TEqs0
	GDcnpJTD0FQvBUwbEl02hL5HH9ZAmuegu6aOW1PIs8HwPytm+ZYbM057xaqILDm9Fb2gSe4M/4XOb
	Xf8rA9eG9bQlggrV/zMqBfAjRDAH5B3PBmd0kmHUZvejIN3lzxOuzUM9netzGUdWIKKlMXheBYlXg
	EfhH/oxhKrFuDWzFhBJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okRVv-00D00P-UY; Mon, 17 Oct 2022 14:54:47 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okRVr-00Czun-8I
	for linux-phy@lists.infradead.org; Mon, 17 Oct 2022 14:54:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 728B8611CE;
	Mon, 17 Oct 2022 14:54:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19F10C4FF15;
	Mon, 17 Oct 2022 14:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666018479;
	bh=zIA+ml8wbUJ1pYtOiAw0rtWwlGesij42jZ74b5odlbA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=m1fqAVB4HQfkmNYpScXt6Ppg3atb5I/79VRYDcdqH63Lsl7aL3NTLhvf0LD9nGIdm
	 8d8zVzRxxo+39f2LqXdFJWN4RhhUoGr9uB0YpV795LwYYMFWQa1wwVZuxAnZs27Dmd
	 tFQLZZ8StlDISMCxZZDGB44IirNOmkPeAL/7BrUc/qIpWEk+praY+Ih9k3uWxqD7iI
	 ndrPPbzwcH4dMxgb73zqUlH4lpmv6dr5BtjE5sE54HWZMsLYEDuYwhvD7EV1taLJ6P
	 nb03Vb9xwIY5kvx0dh9FbncoFyINbD9uDBRn9HJBlGvlT7Z5bdsJ6owk+TJ2+VJefX
	 NdVmJ8MebVaFA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1okRVd-0005mT-GC; Mon, 17 Oct 2022 16:54:29 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 12/15] phy: qcom-qmp-pcie: fix initialisation reset
Date: Mon, 17 Oct 2022 16:53:25 +0200
Message-Id: <20221017145328.22090-13-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221017145328.22090-1-johan+linaro@kernel.org>
References: <20221017145328.22090-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_075443_390584_1214A82C 
X-CRM114-Status: GOOD (  12.57  )
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

Add the missing delay after asserting reset. This is specifically needed
for the reset to have any effect on SC8280XP.

The vendor driver uses a 1 ms delay, but that seems a bit excessive.
Instead use a 200 us delay which appears to be more than enough and also
matches the UFS reset delay added by commit 870b1279c7a0 ("scsi:
ufs-qcom: Add reset control support for host controller").

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 2f4bdef73395..9c8e009033f1 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1866,6 +1866,8 @@ static int qmp_pcie_init(struct phy *phy)
 		goto err_disable_regulators;
 	}
 
+	usleep_range(200, 300);
+
 	ret = reset_control_bulk_deassert(cfg->num_resets, qmp->resets);
 	if (ret) {
 		dev_err(qmp->dev, "reset deassert failed\n");
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
