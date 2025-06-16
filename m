Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C6A5C71135
	for <linux-phy@archiver.kernel.org>; Mon, 16 Jun 2025 06:27:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4oSWfisjm6J3YrmVpzsZcJPes0Jc6ADwStC+hKJHhHw=; b=EmDv74IqEzO7Hv
	XOC+8+w3EckkAA4EhpFBqES41FXDyr1FmGgYzAlRpjgGlKd0ltE2PhvrLRQcHP4cCGPWmSprnqqwt
	Mg/mIOrlJouFLTcSHwk2JQvxTDfHb6RFTT1sn8QFCK4yNnanV7i1/GD+88HFhVbdb6hqSfOecqaTG
	1JWKG/zIq1//6fxkupE0c4oAtgN3RYGoE1feizkuOOkQR4Gge2Y/ojKsJwxJoGdnsrW6c3g8r4ujo
	EUwKJTT0EVeXkV4UIEu7J5OlHrYQb5hhQlLrDRPojeBatwl0G5j6KXQ3dyfNVvFGkC2ZZXL1HNgd3
	ViWo7as+i3XKm8xINbKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR3Jr-00000003Vfz-1Zes;
	Mon, 16 Jun 2025 06:27:47 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR3Hy-00000003VMU-0aCp
	for linux-phy@lists.infradead.org;
	Mon, 16 Jun 2025 06:25:51 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-3a4eb4acf29so542084f8f.0
        for <linux-phy@lists.infradead.org>; Sun, 15 Jun 2025 23:25:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750055148; x=1750659948; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8EQHsf96Ap45pHjzL8MdOZppUdVax0jMIgbyM9QNM/g=;
        b=qS5i6P6hP5NLIPba0xiJL8w9gPPgftVoeFBuFXb6Yx7lgfEIxyReL2AM4x5OfW3fBv
         bajMrS+gJ+VSEQTOUv9z5WfhjGzOs+zPD4fCfjY25lxUgJ+3ZwgDib95LXs1einb2uJD
         Y40oyWFI2ITEstszcbeJ4SBzZpx6zz3N/X5X58pQabNqCbjDFLyZDEv2PgyM1gt9u/NO
         IOunxyxKWhDZEAWRSu5L0L8eJ1ubTA8/dgWr7n0U0ikxjl3XBh9/iURHqNTqam10EkEM
         hh75f9EqpwQ2fMmf5v0Gq4EG2je96X3emLfP5a9U4i4z+zuU5m0rYB8u/0VJv2mrU4ND
         4ccQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750055148; x=1750659948;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8EQHsf96Ap45pHjzL8MdOZppUdVax0jMIgbyM9QNM/g=;
        b=ow4Dm03nsfIoprgTJojnY6h/b86U0dnVg9GO0VP38R3tp4RaXwQOg4SfXhpj/XE0cF
         h+Xn2tt3kfMRkfh/7UprhfBsPayMr3/jcfK1ce06Qex2uJafsmlwditU9m55YcqKicFK
         WR5X+3oOPYfH5WiwayW8R4cKBo0TFfLfRYUsfnP9YILYyr7RrMnfzAWUol953DCFxpID
         wf+ek1rIhSJsmhaeGEAlE6x/KugjHFQCR4kHfq0oi9uzav/ODecg6tBM2hYeyO0ZJAcf
         +tYjnaJV7+5Wj/5Qr9mYDb6ohiReMADMjghaPl0A3gBI3DPPFe5EHndy37LTD6qNpu4M
         tprQ==
X-Forwarded-Encrypted: i=1; AJvYcCWAPs09ryYN2HFpp8ufyWQpdPeITgA9UkYvt4NB4dfKqoMMLb8Mj6nDxqgg2JTd1S5mB4csk/2mSsE=@lists.infradead.org
X-Gm-Message-State: AOJu0YxcCD8XpJBLN5LpAAT1UXqH6/IUA0QVhTKlmdH0gZ8FRR36ubH6
	Ex5MF8OIb9TzpL0QRkdhr2vTB0TkNr+WaorZH28eRoox+X1AxK5IiFHdZVVPlJPHYN4=
X-Gm-Gg: ASbGnctAa99iuNixUMgQpRz5XqfFxoyggsibU6ZJ3f1VCb+zN+NGc5bELZw52EowHKf
	KR6wmLHxFCnZiEeJevFtQ/4bME8qFz9o1zTnTAyrBqQWvMU1YHG8v2VQEMvTMhwSUjtX8pemrNW
	ZSMHJ4Qzj03xnnRQJ5GcdYkkFPOo9BTYzkgMLuFWZzcyIg0k4fm7CradY87oCUeaHt0G/RbVpBq
	4IGFAA5VFLteFAAg//OvCtJYZGAULoKbyg71UB7BMbXF14YEUz+wHgmsLCe4uqodLwhgArKcB1e
	OdnBwcfBWw3sVH8k0zCqzNugYLKIxEs251rmakn0qQBb+US8NcWqm9YXXZRQ51q+q/dtQ16pgQ=
	=
X-Google-Smtp-Source: AGHT+IHOrBlTc3G8fJx1xb1aa5RUGG1oL3w34p4Na9dKbV7Y1WMOLPihmPd28RFY8vCtYNB9cSHDiQ==
X-Received: by 2002:a05:6000:18ae:b0:3a4:f912:86b2 with SMTP id ffacd0b85a97d-3a5723a1dd9mr2082389f8f.11.1750055148252;
        Sun, 15 Jun 2025 23:25:48 -0700 (PDT)
Received: from kuoka.. ([178.197.223.125])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a568a54423sm9883073f8f.20.2025.06.15.23.25.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Jun 2025 23:25:47 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Melody Olvera <melody.olvera@oss.qualcomm.com>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] phy: qcom: qmp-combo: Add missing PLL (VCO) configuration on SM8750
Date: Mon, 16 Jun 2025 08:25:42 +0200
Message-ID: <20250616062541.7167-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1398; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=hP8oqMRH0eoAXRKjft8SzhqvyrnpxIF8t2YdwglNn/Y=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoT7jl9HxQJ01hueMCf5wsLpD/COtPu5BUqukRd
 lnXUBpXzaaJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaE+45QAKCRDBN2bmhouD
 16BTD/9m3fBFtzLaw1BvGg4t/4Kp0huLPdfDPZuuhdhcMzhpKmH1o+GQ6HO8SPHWwg3n19fjQmq
 FCVPqFh+sIrCz5qKZHm7TmZveqix1pEloadlV0yPm/4c6o5UEEIfHotbf9ukCjUdhY0a+FrwahZ
 UEurnmeedLssm0PGM7xB4yyscFZPxDnf55+c561SenD12/UuUnIsz0IAmYQ3SvHKe6UB8Ny41xQ
 a5w1b6g+3HFwQMUHw953PqDmqm9tFir5pDUq098kJ2f3cgdk8KiYkAvPxBz8PeY9j07cGGBI8R7
 MYenhC9l3vJFHJfWZt5Oq22URYdrdwQgbY9srxcklh7tegVDKGvAj/j1xMSeHuWWtCnu7poc7sE
 amAKd87PyuhYFw9nwh+Do9g5Nnt8ibZWrnS+oE69ahMDhtsSP8zXeGz1UgSzTCNptf9YsRghP9S
 iFVURr+auZyw8qv1UMOhcxqgFSFh9qoVogzL1vX0RMSSFUDmfoe7aNA7WmxZC/DkfqazPMi3XUN
 tQAAksEslDNvdMhNFkEoJEULGxbvV3X5vprUIGvLLjOn2JXzxSgDB7qsU8MGZ5tnBfRP6GqhcFd
 945KXzeIL1r8hX7NaW1qW+WoaQydbTu3Lb146cXuFEpyZoJA9E7pBtzm4hdRLuEa1obZuBKm3wd YBKiAmnBqWXa1+Q==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250615_232550_217879_60D3D8B8 
X-CRM114-Status: UNSURE (   8.30  )
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

Add missing DP PHY status and VCO clock configuration registers to fix
configuring the VCO rate on SM8750.  Without proper VCO rate setting, it
works on after-reset half of rate which is not enough for DP over USB to
work as seen on logs:

  [drm:msm_dp_ctrl_link_train_1_2] *ERROR* max v_level reached
  [drm:msm_dp_ctrl_link_train_1_2] *ERROR* link training #1 on phy 0 failed. ret=-11

Fixes: c4364048baf4 ("phy: qcom: qmp-combo: Add new PHY sequences for SM8750")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 8b9710a9654a..f07d097b129f 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -228,6 +228,9 @@ static const unsigned int qmp_v8_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_COM_CMN_STATUS]		= QSERDES_V8_COM_CMN_STATUS,
 	[QPHY_COM_BIAS_EN_CLKBUFLR_EN]	= QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN,
 
+	[QPHY_DP_PHY_STATUS]		= QSERDES_V6_DP_PHY_STATUS,
+	[QPHY_DP_PHY_VCO_DIV]		= QSERDES_V6_DP_PHY_VCO_DIV,
+
 	[QPHY_TX_TX_POL_INV]		= QSERDES_V8_TX_TX_POL_INV,
 	[QPHY_TX_TX_DRV_LVL]		= QSERDES_V8_TX_TX_DRV_LVL,
 	[QPHY_TX_TX_EMP_POST1_LVL]	= QSERDES_V8_TX_TX_EMP_POST1_LVL,
-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
