Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87277C3DA6E
	for <linux-phy@archiver.kernel.org>; Tue,  9 Jan 2024 03:04:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8sJAoOdaBdYlp9fDWJcw6ubZZwSywhxigUEE38mBHOg=; b=pb6E5Drd1alxPZ
	CVLrIHs3lrhJKN3voFRDvMj+47vGvw8t0nnMjYOOEqx14t+GWlmD8AC/CplbTzTO2duthAQTzPQE7
	iCNBBvrbSu5dM6cZMF3jU21mqeV7PFksBYRw19N6XnlA4BCyTFDI7BVoY1LFQHAjdfA+s9ugsGqBo
	Yw+LbaEhGuGyyAoXtdH49jufJhVmLkCAXDW0H2fXem3K3daAEZFidk0S89Wso/4NuSUle+jgPgjbg
	e5axNGM1En3ZcW3Cijfw0itd12t5KikNREeIfRv929EC2kYcls/kLiiiLe1ChVhktukvFyjYZzwYm
	WYsyi1LBWsmABCCuOGDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rN2PU-006kqE-0Z;
	Tue, 09 Jan 2024 03:04:12 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rN2PR-006knK-1D
	for linux-phy@lists.infradead.org;
	Tue, 09 Jan 2024 03:04:10 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2cd1aeb1bf3so23100821fa.1
        for <linux-phy@lists.infradead.org>; Mon, 08 Jan 2024 19:04:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704769443; x=1705374243; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jHq7G5tPYOrJZNq7Usqn+mPLOUEA8a1PkSKcieA2wLU=;
        b=lOXNsxOFbSyPJOqZgr0kQlbM0TZP7Fniq25X9C3VvPfo0RM/ODoFUStG9t6N5HsQdK
         GBmHiP8mYBs2QU6zdu1IMhhLXEIbdje11tqaWt86oM+irJgMhpbCenmHC9V0GoudQbbx
         7BpubJ8/NcYfoMEjizU6Chn3aBDxfXuMmaOqFqMnv5Nv54xNUCqTk5X9y8BXBvLvx4ay
         HSqZHHz1LG2KaMpBjMQ53vN84l0y/abFoVxe+L3sSseUuTz8Gq6maL+a+k3/SGXhl5vD
         H1Qka+3k5n2Udh/vWY/+DMLzJ/lEiX0fOZf6GaJMzT3LsxEW/BtBiFXNaTpWlkKsBBy0
         8ZUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704769443; x=1705374243;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jHq7G5tPYOrJZNq7Usqn+mPLOUEA8a1PkSKcieA2wLU=;
        b=VFd3uYKUjI1FPKUoOdZfsOE2d2dVl12URww+3n8rgcr08Xby5ypf3wdEoiqkEp5jOG
         aXMFcOMqveLFXsQN7L/iTAZlgNwldTAvGhNbR407jlCD8lGH4qhwoJ3uoAAy1bByHJ6A
         pfAUviUKNrThdnWTVOp32N66qI/LY0QGongefA/AyPuKbTrXKt164/bhaysj7qoELB9m
         FjB0U9/n1sNEHwGQCcXaQSAGNKVaNQy6m/zLr+25lbAu54cj9uMXrOBxoQMcWrQUOyBQ
         E5ezCfCeiBnCZh6k2Z1n+NcFw8Y1d8ESr/mELs2smnwl1XVrCAFmFzdihj5W+xFu6gfy
         Zx5g==
X-Gm-Message-State: AOJu0Yz1YzIJkZtOw88ucZgLhwa9m1tzG0RjF7KjtAyGxaw5O8+aur0S
	+q8+pipErubQIxuB+Y6ukIO6PIrlwBHFBQ==
X-Google-Smtp-Source: AGHT+IGnvp9jZLgG6CuumBjIJ0fl9O4JktnPnumRZH0REhZI8N8LyfAF9E9lHQobvOUb9HberpnfrA==
X-Received: by 2002:a2e:330f:0:b0:2cd:2938:417b with SMTP id d15-20020a2e330f000000b002cd2938417bmr38599ljc.21.1704769442617;
        Mon, 08 Jan 2024 19:04:02 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id g30-20020a2e391e000000b002cd1ad3b11csm176920lja.42.2024.01.08.19.04.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jan 2024 19:04:02 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH 0/8] phy: qcom: merge common register defines in QMP
 drivers
Date: Tue, 09 Jan 2024 05:03:58 +0200
Message-Id: <20240109-phy-qmp-merge-common-v1-0-572899a14318@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAJ+3nGUC/x2M2wpAQBBAf0XzbGpHCL8iDzKDediL3RLJv9s8n
 k7nPJAkqiQYigeinJrUuwxUFrDss9sElTNDZarakOkw7DceNqCVmOXirfUOue2ImZj6voGchii
 rXv92nN73A70S0P9mAAAA
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2218;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=Wdbb6JKXTmgqpW4wPGopTy/zUcu1Z0nETpYCYivTf9Q=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ+qc7QtupPY1miW4/rqcknT5RODu5wnTFXmVfKbE+M+o/
 5x4afejTkZjFgZGLgZZMUUWn4KWqTGbksM+7JhaDzOIlQlkCgMXpwBMpNyDg2HJiX8FjxeqnPbs
 L3Tb8Mo0+tadBc8L2X4wTyg7dssi+/1XBaXkeFsGWf0fiY7Jes1Mv3m2TfywVJ9n0k9dXf39MQf
 6c3MDpu45GGNxs38Xn5Rp8sb9bkfShWZWPfM0tf2aoDJdQyezJy45xfaG4MrjEs1Z6zz2Rl6Z5a
 1T+OSkRM6COuEf75ZaHRDnDHgswNHjktyoYSW5f16k1zHZ0M7FJeHmzDkHlv1P8ZbaOndBhdSxv
 ll+6xYKSbBeMTzekn6r/5gSJ0t3iO2k3hMRqaFKbKV5Ms8E30yamuoUcf35ros7r+jPlHlfeqmb
 UYzr89wsM46Tor9N13U2eu/OszV/9MRgrWxIr7vN5l17AA==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240108_190409_464949_A141EF2A 
X-CRM114-Status: UNSURE (   5.82  )
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

After the split of the gigantic QMP PHY driver, individual drivers
contained common regster bits definitions. Move them to the global
header. While we are at it, also remove register definitions from the
phy-qcom-sgmi-eth driver, which is yet another QMP driver with its own
embedde register defines.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Dmitry Baryshkov (8):
      phy: qcom: qmp-usb-legacy: drop single-lane support
      phy: qcom: qmp-usb-legacy: drop qmp_usb_legacy_iomap
      phy: qcom: qmp: move common functions to common header
      phy: qcom: qmp: split DP PHY registers to separate headers
      phy: qcom: qmp: move common bits definitions to common header
      fixup! phy: qcom: qmp: move common functions to common header
      phy: qcom: sgmii-eth: use existing register definitions
      phy: qcom: sgmii-eth: move PCS registers to separate header

 drivers/phy/qualcomm/phy-qcom-edp.c              |   3 +-
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c        | 127 ++-----
 drivers/phy/qualcomm/phy-qcom-qmp-common.h       |  59 +++
 drivers/phy/qualcomm/phy-qcom-qmp-dp-com-v3.h    |  18 +
 drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v3.h    |  21 ++
 drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v4.h    |  19 +
 drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v5.h    |  13 +
 drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v6.h    |  13 +
 drivers/phy/qualcomm/phy-qcom-qmp-dp-phy.h       |  62 ++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c |  70 +---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c         |  90 +----
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-sgmii.h    |  20 +
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c          |  72 +---
 drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c   |  76 +---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c          | 101 +-----
 drivers/phy/qualcomm/phy-qcom-qmp.h              | 111 ++----
 drivers/phy/qualcomm/phy-qcom-sgmii-eth.c        | 441 ++++++++++-------------
 17 files changed, 516 insertions(+), 800 deletions(-)
---
base-commit: 39676dfe52331dba909c617f213fdb21015c8d10
change-id: 20240108-phy-qmp-merge-common-d681dd1d1995

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
