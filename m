Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D71C606A332
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 11:13:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=xR+lyZiV;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=PLVPuZMg
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=w3qrxeTQOOI96mOL04/cYb8a9KDp1Z5tPyFd7Nouyc4=; b=xR+lyZiVlFLzae2XhrTH429iid
	+zb6k9WmzYB3ITugLxZcRz2nCVoj/gAVqLUn+BijncuVF98D60qrWiFYBa2l7wK0EKnukUNcbpgZM
	qjQ1MRVR6GhiDbiiIo/oYwpV53eZ4FqYEWa8ENSRtdFQ71kCqmyU2mQqWtXusDbJ3ua2+gOR47c+P
	iQUHm7ip7I2nomWI1TdCOnklwkFdZDVxwxzCmqClaXRCOM3b1Cz1J7IiV+LE26Lea8QPVyXQTqHOa
	Q8bWJecWyVF4LR4JRdvIDPEwseDDYbWu3W3gzdwrf2CBE/4iCYrz3eOOqf6GK+X1yCbM4wjlNeSIM
	/omhvJLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWtt0-0000000FkvM-01PK;
	Fri, 27 Nov 2026 11:13:02 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWtsz-0000000Fkv0-07vA
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 11:13:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B29184233D;
	Fri, 27 Nov 2026 11:13:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DFAE91F00893;
	Fri, 27 Nov 2026 11:12:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795777980;
	bh=KCNW0A2eLtsZJTW28kFA+jvGmbYpUN66AAzDwzgAjdc=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=PLVPuZMg7tJVBF/D3DWrg4KHoPhVJkQ63P3WTADZ6ET88pGeGEkX7oj0a/MPfWZPf
	 xPe7+CXrt9D9/VuZ+Y3xORs0Fi5Oyfn645q2D3Y1ZbfXK8CaL3vfCJCBfnzvHM7etN
	 G/XEIQp9ryhlNxVmLqiD43SGtqZYSb5lTmi6W5XQh50l2OBiQsZbreKDYr2RcWHZEZ
	 dGEKZ8bq8m9opy8LDzRWRNyVxiXacKXgegCi7eml7OH6cPf/qgtYEM6FDwCpgDzqrl
	 1mZ7MZefJor3gPEOWGMAYP+60mBUH4jwTVb26DHtJVskz4mZdmmcRLeB+FaJPMVt9j
	 lXHAZ+m5Fp/bA==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v3 09/11] phy: qcom: edp: Generalize power-on path for
 per-SoC overrides
From: Manivannan Sadhasivam <mani@kernel.org>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Rob Clark <robin.clark@oss.qualcomm.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, 
 Abhinav Kumar <abhinav.kumar@linux.dev>, 
 Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Kuogee Hsieh <quic_khsieh@quicinc.com>, 
 Shawn Guo <shengchao.guo@oss.qualcomm.com>, 
 Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>, 
 Mahadevan P <mahadevan.p@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org
In-Reply-To: <20261116-nord-drv-dt-v3-9-e3d3bf0e2c49@oss.qualcomm.com>
References: <20261116-nord-drv-dt-v3-0-e3d3bf0e2c49@oss.qualcomm.com>
 <20261116-nord-drv-dt-v3-9-e3d3bf0e2c49@oss.qualcomm.com>
Date: Fri, 27 Nov 2026 16:42:47 +0530
Message-Id: <179577796721.3421.2624975183019402159.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1231; i=mani@kernel.org;
 h=from:subject:message-id; bh=XdRjfs9vyNWIYRnMFCP5sRKg9fFa3IxHZ07qY5a3lXc=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBrCWWyJzVnFqVakHuL1+tEwJRcWfzpN5VDPNWtR
 8pu0fz/ri+JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCawllsgAKCRBVnxHm/pHO
 9fGiB/9fqFbg7HsMmFlTHqHeWJBhMB94jJelxQfeMG1DJwdOpTbpEic7YUer1jDKR+4/PTN+qNe
 SLd7KUGHj878lnSkRPFi3DuhMaBcAic1ILya17u/9RgbjVX+uH9GBaNep99Xp0yJJ734YBUFF+z
 Fi3w6mLdPrCAn1oA/z7QObZ/ITUkOLBnMakpizCnBJIjJCRbePOUYDEoDzZ7zUD1if9Nawh7D4m
 u9i/+waRSH/bNotlbnstaU8nkCALhseon4S2F+Cah8NvuA9Q+6xW10tS9xh5sB/IHQVI1B5VtmV
 tECh6jZTNtRZ2iA3HQhyIMAKbgNWGrG+lroE4GE/5xkQgzmu
X-Developer-Key: i=mani@kernel.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
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
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 2026-11-16 18:46 +0530, Nabige Aala wrote:
> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> 
> Add tx_res_config() and set_voltages() callbacks to phy_ver_ops so
> SoCs with different register layouts can override TX resistor
> calibration and TX drive-level writes independently.
> 
> Move the TX_BAND and RES_CODE/TX_EMP writes out of the common
> power-on path into qcom_edp_tx_res_config_default(), which is
> assigned to all existing SoC ops tables.  Likewise, dispatch
> set_voltages() through the ops pointer in qcom_edp_set_voltages()
> before falling back to the default TXn_TX_DRV_LVL writes.
> 
> Add phy_status_reg, tx2_tx3_lane_ctl and bias1_en_2lane fields to
> qcom_edp_phy_cfg so the power-on path reads register offsets and
> the 2-lane bias value from the per-SoC config rather than using
> hardcoded constants.  Populate these fields for all existing SoC
> configs with the current values, preserving existing behaviour.
> 
> No functional change for existing SoCs.
> 
> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
