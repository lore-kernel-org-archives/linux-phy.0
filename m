Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10484606A31A
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 16:03:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=GXL2WWSG;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=michaelburch.net header.i=@michaelburch.net header.a=rsa-sha256 header.s=protonmail header.b=Jt4sLcnf
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=TIij6aQ6lFOO956CJxzN0p0LAfZiwditYwOByfM36SU=; b=GXL2WWSG0fFeaE9qu68IvUMuwp
	TM2YdOMEWO1bQBJ3cZ+btG7se9JAR0KPFugllDuasp5U+arHXVFVK5yI/ykjFE9CmB99+Kml6SHNF
	bGEKVmLRBmk6YuyjLCGyUFxNTeGMV9fnk9O3l+vz/WsYTMIP/CzRSs9Aqmpm9Wy2LiRxliu91r1v7
	9pTv/8vmyYd5PGGfY1UrQhY7H3ONy0axxvknQANYF6F4IcAcQbcbwPs5DiemGUuhMpeurgdkObE0g
	Z+q2CTzbSC7bmAXeyWZUd96VmrHzo9eg9IkVsSvgQVG4h7Zc3sih2atQy4uNe9ivuzZ4aP1XEi4Q1
	6OYbasHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM67B-00000007U4M-2j1Y;
	Wed, 28 Oct 2026 16:03:01 +0000
Received: from mail-106113.protonmail.ch ([79.135.106.113])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM677-00000007U3R-0jcL
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 16:03:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=michaelburch.net;
	s=protonmail; t=1793203370; x=1793462570;
	bh=wKs3vJN4ZKJpeX5LXglj/FvmPaj4cVCU3oClZIx8D0c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:From:To:
	 Cc:Date:Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=Jt4sLcnfHw2wqjq78XGZQKUE3kF6VJbqSCvrO9nhkfFZNTCElSapRkr3tmLid51p/
	 42O2O4HYmn8Wgs45QxT5eMbBKDl1CiZDXRJcm7D5ZE8wVcIGug1NCaJfBg3fg0sjDO
	 XwN+uAE21c1rg7POSH5JUzepdIBq+kkjWxUj/fn0o+LUJfBb+H0eCc4l3V+i5gP4Ao
	 9UEprSoRMQXApBL0mdftZkPVFU9YnKHN1uS/ZgX74YARA1WMvuoUe+ZqqdKDrJs20x
	 zn5KEmXXR/z4ajmSKenJG8DLAhyxrfYX9/L8xHcbb25QjJJyJtEtPZEui0Dwdj80Fc
	 DDKZ2nMWelV0A==
X-Pm-Submission-Id: 4jFBw52kD8z2ScPp
From: Michael Burch <me@michaelburch.net>
To: regressions@leemhuis.info,
	Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
	Qiang Yu <qiang.yu@oss.qualcomm.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Abel Vesa <abel.vesa@oss.qualcomm.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Hans de Goede <johannes.goede@oss.qualcomm.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	regressions@lists.linux.dev
Subject: Re: [PATCH] Revert "phy: qcom: qmp-pcie: Skip PHY reset if already up"
Date: Wed, 28 Oct 2026 11:01:21 -0500
Message-ID: <20261028160121.10729-1-me@michaelburch.net>
X-Mailer: git-send-email 2.56.0
In-Reply-To: <f6a49cbb-e000-4dcf-8b3b-61c3b8d934a9@leemhuis.info>
References: <20261013-qmp-pcie-skip-reset-revert-v1@michaelburch.net> <f6a49cbb-e000-4dcf-8b3b-61c3b8d934a9@leemhuis.info>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_090258_266125_D35C6780 
X-CRM114-Status: UNSURE (   2.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


Yes, still needed. I retested today with unpatched upstream 7.3.0 on
the Dell XPS 13 9345 (X1E80100). It still reports "Device found, but not
active" for 1bf8000.pcie, enumerates only root port 0006:00:00.0, and
drops to dracut with no NVMe endpoint or /dev/nvme* devices. My patched
7.3.0 kernel with the revert boots successfully.


Thanks,
Michael

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
