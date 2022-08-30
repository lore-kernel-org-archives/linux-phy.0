Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07133C6FA85
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 11:30:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ok8f4abRDTlIMP+vEl7gOAKhEBwGGDQq8LD7wTcMKt8=; b=glKFXfrAokj/ly
	Lti8Z0oL2u7MPW9rmreS1n0jpVU5c6ewXLn45B5O+ZAGeO16Y4nQiFpeCze/dSY5G3pEqX6+XTz85
	TYJWcCORAVxujKnLrYcWtLkygy3oEHV6dlSOaS6bDmWZ/GBzKR/mtWvuh+PjnfNXNeiCndrk4N15c
	giJSzYHh7TS8wbQpmIdboZ0bpVE7wWQ1pJOlNWFgcAcLNjRqm8oh5HovqTOi/evXvo7nsoWEA292y
	epkum4KYYnCIqQ1b3NbCk1/4Eolqu++b66fLeQJp5qg2CT2zEts1aNbWw1L6l5UD+nKhGw721u616
	3LyKZ9HgUN9nP5Z+pOGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSzRq-00GZmG-87; Tue, 30 Aug 2022 11:30:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSzRd-00GZfk-Qj
	for linux-phy@bombadil.infradead.org; Tue, 30 Aug 2022 11:30:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=OQrjISGuDbFopAVj07Ec356ykyfqmHIvQnViKNgnFp8=; b=Ob/UltogWR+CW+hB8gB1EyKBby
	z/HBxvtm2WJiPKtDm0fI4oxxbwrWLXETAPscpOvf3CKkwfvU0KdQBlEVCh82dYlQoVI+SVZT7LrbN
	iTXhgR0EDnuROLONUAAqi4YkQbaSEz4Sr2eRDiLCzwsA/TniKM9/UMe35nziwc4dmSSryX+hTNZ7i
	S+ZtGbwXl2CBhXv8bqp6KmL03b+wOxOlb/suV5fVRtZ/QO2UwbQwJzjR5kGiThBQuo+YdmbwbAOqG
	DWtsyLRGYkyDI4cs7byBtMsbCXXTJzrbwdkggj4zZ1GWwbJLYv6h04xJOeH5H1Omr9TDzxBJSZthM
	+KJgmVhg==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSzRa-007ozi-6L
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 11:30:12 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 813256158D;
	Tue, 30 Aug 2022 11:30:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68032C4FF99;
	Tue, 30 Aug 2022 11:30:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661859001;
	bh=0TMEX2sIYulgXflGHjy1lg+hNS213AhvGg7gZvdhdK0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QlwwcZvbzSnHPt5GLaveoqgzXQdIKx7CjUo8RT+d6EpG+pzGxYOC39c4E6sUDoXS1
	 p7osxszfyApQhQZd2RHPcaH+Lu1rsPFiNjFu0/ncMMTrsbDGhaL1zsMNP15xsvKOIb
	 fNRHORX40QmGtKtQnkbB/i0vpcnAP4FSL/iPMyVoV6X3yNF9kqun36K/IW2TJhLtNZ
	 9Q1Lwz9jUyQ3isuj5H7Yd7eDbxyhmtmND4Sl3meggsAoKhRQ8Vpgu9n5iO8NnJKaEU
	 6flzShnanw6M6LsI3KQNB6KgwtfPVnNzHi7vGe27GfpADHSVH6xuuaefDwuP7/JNDQ
	 7bQgd2LhihkkA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oSzRP-000114-5g; Tue, 30 Aug 2022 13:29:59 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 26/30] phy: qcom-qmp-combo: drop unused lane reset
Date: Tue, 30 Aug 2022 13:29:19 +0200
Message-Id: <20220830112923.3725-27-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220830112923.3725-1-johan+linaro@kernel.org>
References: <20220830112923.3725-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_123010_529750_6993A685 
X-CRM114-Status: GOOD (  10.57  )
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

Drop the unused lane reset pointer which isn't used by any combo PHY.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index d01053c64d82..41e7548ef0b5 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -926,7 +926,6 @@ struct qmp_phy_combo_cfg {
  * @pipe_clk: pipe clock
  * @index: lane index
  * @qmp: QMP phy to which this lane belongs
- * @lane_rst: lane's reset controller
  * @mode: current PHY mode
  * @dp_aux_cfg: Display port aux config
  * @dp_opts: Display port optional config
@@ -946,7 +945,6 @@ struct qmp_phy {
 	struct clk *pipe_clk;
 	unsigned int index;
 	struct qcom_qmp *qmp;
-	struct reset_control *lane_rst;
 	enum phy_mode mode;
 	unsigned int dp_aux_cfg;
 	struct phy_configure_opts_dp dp_opts;
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
