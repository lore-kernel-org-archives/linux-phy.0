Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9C53C6FA83
	for <linux-phy@archiver.kernel.org>; Wed,  7 Sep 2022 11:08:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v92QRqu+m0ZG36VOlNbZWFHZGrinn/lGoT9TOexeX/g=; b=ob5Eow1+eUuTwG
	RAiqoLXrYIIPoDre8RPBXo5mMtVU4v497kMlFo8qpnENTQN7qREZJUgg3evcKMChvj3YwDJUq9DzG
	2+ojn3a/BDFU9Y1LAaOOrIqzASHnj8L0Kqk9LHjtOZQaTbqvFjPSHETOplWWaPqZKr2FZojEuQHRw
	9k57Qb5FlL2Krw+pJxZJdAs2d61W075Vu2oY3+2qGQ3idohE5ZZJoeVe1bqlOYeXz4ZOIYXOGfwCy
	iEwxDwlPqK0n4yqE7AEdlBqmERVfIGVTRIJ3Vj2JsCtXslbS8g+ZaRY1H2T/33JXQ9R0ZrCiyd6F/
	Y1PgGnRDmtYmNGq60+SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVsug-005XNH-W7; Wed, 07 Sep 2022 11:08:11 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVsuS-005XA5-0a
	for linux-phy@lists.infradead.org; Wed, 07 Sep 2022 11:08:00 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id F1C08618A9;
	Wed,  7 Sep 2022 11:07:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2EED2C4FEBA;
	Wed,  7 Sep 2022 11:07:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662548869;
	bh=R/PhWywYtgEKJuMR5zOLfk52NFVBKuOa/xjsqShlLAk=;
	h=From:To:Cc:Subject:Date:From;
	b=kjlhADsS4zS55Ga17a5df6axQz+lgRtS1Ei1laYjWSxZs5seXLUxZTTwAwasXiP9b
	 Mdo+fbMeFwY0hpQGPsZs0dSnOeCQbijejuZ0BKWbMLdJWItEn9XtX5HBFLaZZPGwAJ
	 GRzCUBJALrgRTwva/6wAASBY4VCzclbLZSrDO1DT6MnNC7JifgZUAw+D454OprWqcw
	 CUQotlV0Y2uRtbOISrFjtfekIPrfvUaH+ztDf4FET/C1nPinGmRCjf/cjYpVcqV5z3
	 q1jstqU4mDRN+hVIVH9EEaO34I23yOHfxL6VbAKDYrLdBml4OOkdzN9rFSYkwBwaN0
	 YECHUDRqGXJsw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oVsuO-0004yk-0J; Wed, 07 Sep 2022 13:07:52 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 00/16] phy: qcom-qmp: further clean ups
Date: Wed,  7 Sep 2022 13:07:12 +0200
Message-Id: <20220907110728.19092-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_040756_132663_778D8183 
X-CRM114-Status: UNSURE (   7.45  )
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

This series clean up the QMP PHY drivers somewhat after the recent
driver split.

Included are also some fixes for runtime PM not being disabled on driver
unbind.

Note that these apply on top of the qmp-pcie series posted yesterday:

	https://lore.kernel.org/all/20220906074550.4383-1-johan+linaro@kernel.org/

Johan


Johan Hovold (16):
  phy: qcom-qmp-combo: disable runtime PM on unbind
  phy: qcom-qmp-combo: drop unused defines
  phy: qcom-qmp-pcie: drop unused runtime PM implementation
  phy: qcom-qmp-pcie: drop unused defines
  phy: qcom-qmp-pcie-msm8996: drop unused runtime PM implementation
  phy: qcom-qmp-pcie-msm8996: drop unused defines
  phy: qcom-qmp-ufs: drop unused runtime PM implementation
  phy: qcom-qmp-ufs: drop unused defines
  phy: qcom-qmp-usb: disable runtime PM on unbind
  phy: qcom-qmp-usb: drop unused defines
  phy: qcom-qmp: silence noisy probe
  phy: qcom-qmp-combo: shorten function prefixes
  phy: qcom-qmp-pcie-msm8996: drop unused secondary init tables
  phy: qcom-qmp-pcie-msm8996: shorten function prefixes
  phy: qcom-qmp-ufs: shorten function prefixes
  phy: qcom-qmp-usb: shorten function prefixes

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 189 ++++++++---------
 .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  | 191 +++++-------------
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      |  64 ------
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 163 ++++-----------
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 143 ++++++-------
 5 files changed, 238 insertions(+), 512 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
