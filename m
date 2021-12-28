Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69FF3C43219
	for <linux-phy@archiver.kernel.org>; Tue, 28 Dec 2021 05:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J7TqaLupQMKVUVGuMh9zWpEN7Z9zAYDhAHVjIKsc/kM=; b=KjccxzA0S3VzPg
	kzDiH1fkL8u4i6W6/+DQxGKNCiWqFGjFsthDJ54HX+gRqJoxX4eOLJGc7VDTI0cvajzQvyUGXIHvP
	CpuU88Oa2FJqSceeFaSoH/p+XqRhKD9JAbRHV9ODP1I342tTfhGz3vT7LBO4juTw8qiRz/Shu+KL4
	yaYsXjwLvE42c+8USYoyGanxhKfYoA+6txJjD/DxlQ2dftYDnWhlINJstbxKWqTXRVPLLggNaPo9p
	AnoqVJthpT0pENmkVCigex5xGTQJ2eC5jdzW/AfgUWvV9wSZCinbDDzL4vgnI9IuVVR8r70oKJL9p
	oEm4ZmGrvHd+VSsHbBVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n24uK-000DAO-Nb; Tue, 28 Dec 2021 05:20:20 +0000
Received: from mail-oi1-x22f.google.com ([2607:f8b0:4864:20::22f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n24uI-000D8z-6w
 for linux-phy@lists.infradead.org; Tue, 28 Dec 2021 05:20:19 +0000
Received: by mail-oi1-x22f.google.com with SMTP id t204so22445329oie.7
 for <linux-phy@lists.infradead.org>; Mon, 27 Dec 2021 21:20:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=t9/Q42cL9IQzn8S0oUqtJHRIk8EihJrAdm7N2Ps38H4=;
 b=AgLNEqgK+8hwY6zV5kthAixDaxQj4eYqUwQrrSkVuXw8TExhoEo6j2FBT9fGKz4kf/
 YcZVzElmrof21IeGPBnzlEb6Ju9RYaIDgVJMhmQCNRtz+pFWvniBQ3vlWc6M+gH4xCcf
 tMuB2vKYz00kxgeN59yM5PK5XNKHi1+81VHVpLF1++FCO+X1cARMY/OxiAPYv3VMnMuc
 6ghjoDOFLyyiMhlxMvZ0xhErBpes+FZsEsVx4w1l3q97Po1wpHxffS+g9JmAWOVdXr5j
 2dSTFpurh/VPmvZlRDLAVR24CQIR2+Tch4UpZ4OrBYNeuCoHULZeISiytecCQcwm5MpX
 lJcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=t9/Q42cL9IQzn8S0oUqtJHRIk8EihJrAdm7N2Ps38H4=;
 b=mxvaLrScis/qmqZV6HRnr395YsCDvM04mvv5ke+MPO1pl+Tg2Z53XjlTTS4KaUnS6f
 JTOELww10V8xTwNnvjx/8xLFTAfTUUECiar6mkudW1LwOhRrER5VTGcPW8UkpseadMr4
 X2dGWEraDkP/yVe2LL4SjQT/nYMp3TzMhN6TZ/mTFsWq1LvIYxkW2dzUhI0PAZ+krV2n
 2ZwUW/ClpFJ1/KDs4gKtLI/ER+yINjyYvj0q2fA6NJKw49iwt4ZabgszE3ufLilx0cRF
 o+BEjJE3kvk7RTYSqY56wf32H9wJJa77hsBRRAfk3d0rgouUMafFwpjeVluGpI94KfGT
 HhUg==
X-Gm-Message-State: AOAM530dW8jVgzlzCY4KL/kqktWbXvfk31IKpeg3zi+u8TGv5/qKICwd
 24AMNszYafVMnueufysNt6OOjA==
X-Google-Smtp-Source: ABdhPJxc8vtB2u0AWKk85NxyiwmI3df7PshPc3CtR9aiP0B23rnjw6FNzRCYvNh1ARtl9vQea5v2ng==
X-Received: by 2002:aca:907:: with SMTP id 7mr15253139oij.128.1640668816508;
 Mon, 27 Dec 2021 21:20:16 -0800 (PST)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id j5sm3002277oou.23.2021.12.27.21.20.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Dec 2021 21:20:16 -0800 (PST)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Subject: [PATCH 0/8] typec: mux: Introduce support for multiple TypeC muxes
Date: Mon, 27 Dec 2021 21:21:08 -0800
Message-Id: <20211228052116.1748443-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211227_212018_287359_7DF67EC8 
X-CRM114-Status: GOOD (  10.87  )
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

This series introduces a level of indirection between the controller's view of
a typec_mux/switch and the implementation and then expands that to support
multiple drivers.

This is needed in order to support devices such as the Qualcomm Snapdragon 888
HDK, which does muxing and orientation handling in the QMP (USB+DP) PHY and SBU
muxing in the external FSA4480 chip.

Additionally integration of typec mux and switch in the QMP PHY is included in
the series, as is the new FSA4480 driver. This is done to deal with the
renaming of the driver-side typec_mux -> typec_mux_dev.

Bjorn Andersson (8):
  dt-bindings: phy: qcom,qmp-usb3-dp: Add altmode/switch properties
  phy: qcom-qmp: Register typec mux and orientation switch
  device property: Helper to match multiple connections
  device property: Use multi-connection matchers for single case
  typec: mux: Introduce indirection
  typec: mux: Allow multiple mux_devs per mux
  dt-bindings: usb: Add binding for fcs,fsa4480
  usb: typec: mux: Add On Semi fsa4480 driver

 .../bindings/phy/qcom,qmp-usb3-dp-phy.yaml    |  14 +
 .../devicetree/bindings/usb/fcs,fsa4480.yaml  |  72 +++++
 drivers/base/property.c                       |  83 ++++--
 drivers/phy/qualcomm/phy-qcom-qmp.c           | 176 ++++++++++--
 drivers/usb/typec/bus.c                       |   2 +-
 drivers/usb/typec/mux.c                       | 257 +++++++++++++-----
 drivers/usb/typec/mux.h                       |  12 +-
 drivers/usb/typec/mux/Kconfig                 |   9 +
 drivers/usb/typec/mux/Makefile                |   1 +
 drivers/usb/typec/mux/fsa4480.c               | 220 +++++++++++++++
 drivers/usb/typec/mux/intel_pmc_mux.c         |   8 +-
 drivers/usb/typec/mux/pi3usb30532.c           |   8 +-
 include/linux/property.h                      |   5 +
 include/linux/usb/typec_mux.h                 |  22 +-
 14 files changed, 762 insertions(+), 127 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml
 create mode 100644 drivers/usb/typec/mux/fsa4480.c

-- 
2.33.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
