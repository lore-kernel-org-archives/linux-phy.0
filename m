Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10812C001E0
	for <linux-phy@archiver.kernel.org>; Wed,  2 Aug 2023 01:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HSOvHinmgvGSNH4Gg52rnOcYwkbzPJkcnYM6RqP5dbs=; b=J6kRZk3B/rqzuc
	L+AEPYJRjn3Avp5EKDbr7rIstHsDrhNnCiWcXXvpBfvIj8GYfIv8fs9ET+mu9izJ0ZJClVb1dCP98
	Tvt6oJpaJ7cPRjvNQrN/hdxw9b+P4B/3KkQ+PqaR6DYT7TFp8rT9eEVjV0T+9nf886F3a8xezF/2h
	8MsRaJjBTc525MFaXVMCFZYTSXC6ayVuKMybL6ZvlC3HFKKq5Ot5xVHugTkHxe2CT3A2s71GBvlVP
	3CtCP2eMRe0uISaoKpK871IT5CM/Zdo77c73D3MnO+wqjLwvhR9lbZ/C33V31uguNhy9DQZLPkgjB
	O4UfJl1vFQQlUOTuGnwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qR0Vp-003fjz-28;
	Wed, 02 Aug 2023 01:18:53 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qR0Vm-003fiU-0q
	for linux-phy@lists.infradead.org;
	Wed, 02 Aug 2023 01:18:52 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-4fe2de785e7so5429533e87.1
        for <linux-phy@lists.infradead.org>; Tue, 01 Aug 2023 18:18:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690939127; x=1691543927;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=V+gWA/tO3az5qnPtCpr5Q7+4MvP6fpYV/Vi7gO7EqLw=;
        b=WkuenX1ZTdY/VOYXWxbQJV8Vc00bZbCUdBzSDngguxOoG6ibp25OywDJSSx75jNId8
         jEp4UwttDm1pFZfJzhWp2WIC26nRfduG+Xj1bwckcg87vt1Rv5z+dyqKqMtVMWv/fk1r
         8eCoraLT1t5H4p7VcZUH7mNNXZi5x3qcTSK7qeTzNSBlEae8I15/yGpZW1cKnJQxdXRt
         Cf54hC/ZeMUw2oCwHMmhkZapJFk8YDQr0HSpMrvpR9Uua+ODp+fWyy69iFkIXzWmDZE6
         bqzMpzt1MyzIfu8TXYeFCny+buMiUmGpa+ZU2Ws+bfzwyo0Yvq+KRWYBlzB4F9nuXUXo
         /1cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690939127; x=1691543927;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V+gWA/tO3az5qnPtCpr5Q7+4MvP6fpYV/Vi7gO7EqLw=;
        b=IUJBojZRDKXIYhNT0rjXq1bhTQYenGRG3jY6KcOHgSfgXuRylQ4UaLIQF9G30RVshU
         kp/GU8rMmgg2HXdwuGTLUdHIKyxxTkyauuOX4MRst8UHe5Be7JNQmexiyTpXxTaDand1
         tyhtoToMlYGlpsNcwJmtgOR5Im3vU52H/Gi/fzwg6O7KBtzaGtGHeuj7+BZFnQAgrCFs
         LPgoL5h8d5psrHrfUZeTpWob6hc/OkUfvXDstTgARkzHgyQqLFQi+MRpqNce0Y0HHWCt
         2p4sZRn2Ty4lB82+2H78xu8DOYcH7kUSqiH4p3vTU1Gqp0q7e99IPCeRQVaqBxHXkZVj
         IqmA==
X-Gm-Message-State: ABy/qLZk9iZV/RHRI9jsd+xRemjcXlUtRU1PsaKUsn9tFx/AFXQBB7Vb
	ydXdLgxiaxeBcB2sPb5JQmuuHQ==
X-Google-Smtp-Source: APBJJlGTXU+qU/iB+Qs91qxaj6dsnClWjqfDO9bvss9c5WHdTTrVKMq8s3kynB6XVZ1Gf6nY1uUfuw==
X-Received: by 2002:a19:2d4b:0:b0:4fb:89e3:5ac6 with SMTP id t11-20020a192d4b000000b004fb89e35ac6mr3626211lft.62.1690939126825;
        Tue, 01 Aug 2023 18:18:46 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n14-20020a056512388e00b004faeedbb29dsm2775842lft.64.2023.08.01.18.18.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Aug 2023 18:18:46 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: dri-devel@lists.freedesktop.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org,
	freedreno@lists.freedesktop.org
Subject: [PATCH v3 0/3] drm/display: simplify support for transparent DRM bridges
Date: Wed,  2 Aug 2023 04:18:42 +0300
Message-Id: <20230802011845.4176631-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230801_181850_347570_94BDBFF9 
X-CRM114-Status: GOOD (  13.93  )
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

Supporting DP/USB-C can result in a chain of several transparent
bridges (PHY, redrivers, mux, etc). This results in drivers having
similar boilerplate code for such bridges.

Next, these drivers are susceptible to -EPROBE_DEFER loops: the next
bridge can either be probed from the bridge->attach callback, when it is
too late to return -EPROBE_DEFER, or from the probe() callback, when the
next bridge might not yet be available, because it depends on the
resources provided by the probing device.

Last, but not least, this results in the the internal knowledge of DRM
subsystem slowly diffusing into other subsystems, like PHY or USB/TYPEC.

To solve all these issues, define a separate DRM helper, which creates
separate aux device just for the bridge. During probe such aux device
doesn't result in the EPROBE_DEFER loops. Instead it allows the device
drivers to probe properly, according to the actual resource
dependencies. The bridge auxdevs are then probed when the next bridge
becomes available, sparing drivers from drm_bridge_attach() returning
-EPROBE_DEFER.

Proposed merge strategy: immutable branch with the drm commit, which is
then merged into PHY and USB subsystems together with the corresponding
patch.

Changes since v2:
 - ifdef'ed bridge->of_node access (LKP)

Changes since v1:
 - Added EXPORT_SYMBOL_GPL / MODULE_LICENSE / etc. to drm_simple_bridge

Dmitry Baryshkov (3):
  drm/display: add transparent bridge helper
  phy: qcom: qmp-combo: switch to DRM_SIMPLE_BRIDGE
  usb: typec: nb7vpq904m: switch to DRM_SIMPLE_BRIDGE

 drivers/gpu/drm/display/Kconfig             |   9 ++
 drivers/gpu/drm/display/Makefile            |   2 +
 drivers/gpu/drm/display/drm_simple_bridge.c | 127 ++++++++++++++++++++
 drivers/phy/qualcomm/Kconfig                |   2 +-
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c   |  44 +------
 drivers/usb/typec/mux/Kconfig               |   2 +-
 drivers/usb/typec/mux/nb7vpq904m.c          |  44 +------
 include/drm/display/drm_simple_bridge.h     |  19 +++
 8 files changed, 163 insertions(+), 86 deletions(-)
 create mode 100644 drivers/gpu/drm/display/drm_simple_bridge.c
 create mode 100644 include/drm/display/drm_simple_bridge.h

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
