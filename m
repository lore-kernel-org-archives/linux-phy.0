Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEDEDC05051
	for <linux-phy@archiver.kernel.org>; Mon, 31 Jul 2023 07:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z9AsJuBObtlaKS6N2bryrFPOZCzyOz2OtbjjOLGzey8=; b=19stnpCXF3xuGv
	QLAH+7HL57KViTCyDHbgQPhpUFRiZoCmbIwIYbb7fHJpdQIEueF3QR/xo0GdLL2LMcrKm6d/IwR1k
	TdszuC+qro4Mh54Jrw8jBmve7XFJkPEoUzWaCHizNxWxaHW854CHFFSwMSc3osYLCuBXfx6ptSiQr
	/3JXtkC1aqVMdb1P6pV0+aSpUlTAcFVWpXVshZ45OPieSyieHHmJXvvpH1de6+7K004owaqVWgMww
	SJ8UAkAKQfo8EmYpLwlHQtJ6QITKWeimfmPWYrYxgNjtC+gc6O0BAs4DvwUIPwWanUl5q433G5dGO
	Obf5MFxFm6YZI8L51nOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQNBr-00EIWw-1m;
	Mon, 31 Jul 2023 07:19:39 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQNBn-00EISF-07
	for linux-phy@lists.infradead.org;
	Mon, 31 Jul 2023 07:19:36 +0000
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2b9ba3d6157so60508601fa.3
        for <linux-phy@lists.infradead.org>; Mon, 31 Jul 2023 00:19:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690787972; x=1691392772;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HDhfU2FoK8aIJGXr0hUVQrh/P1Qtr8xU+ls50+YP7vQ=;
        b=pKUFzvIbDXE4qehMCnW185ujZVoxzM64vjsTHYaa8ZifxCwJAiCOV4K51poAf0woPb
         muInJ8nf1Af/KfLwxvGlbcAUyoJOZ0qV8NBPaysp7o5K37pth4xxejw2Pg0iBvQYW4JE
         mZzqjyezpf6KybQarU40lVrLbZwaPufKxzExD2aL3F+CsesXxcNMl05REvmtpK25WGrG
         TpdhGXnGeN2HSZR+t8j5Trb59cIfT8YhhM1LT41WTyvF+1QwUcNWCsxOKLZ2MKbSy4Yg
         zdsTSFzD5Xp5hRP3u5GdBIPYiUtm+oUlJptM/AqhbnMiqCNFoAZ/G8n4mCJ9Jhgr4qIw
         CHAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690787972; x=1691392772;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HDhfU2FoK8aIJGXr0hUVQrh/P1Qtr8xU+ls50+YP7vQ=;
        b=ZZM7JJH7Qvw5oAVUWANuNhS9n8+rKkflu3Z98ttRrvY8GzrM/lu9/25C7HMlmwN2f9
         7nzESSXUCvo91ExNEHcOeH4t84IyfcDFT6r0OUnEn/apLGqN1mvSvnqlqDWEH7wBExpa
         AiVHnpkf3ZUO8GW6EhcDuDmUP4OkjT1JPaj1X/kEkJahQU8l4fLpsGrhTaVCtNXSGNOR
         2gAb0LTBqQ3qXOMPQnIkrkRjJrfTueAmdh1DTGwVOky/P3LyxQ+THHGitFv1kVrXZ/Xx
         JHLuXvA8MPtCBHFvpRZIULStV2byY5YMdo8ENkvmmX1u1Ic1KJLfuC89AzRKXHquXMrT
         dfLw==
X-Gm-Message-State: ABy/qLYrFGEBDlGHGkHolpACLMQH7nBpEmCQp46vAxw6gE6QGR6V3TdS
	TZxNLpOfMjesk0KEOUTUE9blYw==
X-Google-Smtp-Source: APBJJlEFmmxgVpsb4VKdX/OmDgm7CzXZk2Cy1ts84q1OxjZfrnZW6wz1kgkFsMhlbMY/DhcQwIQTHA==
X-Received: by 2002:a2e:8ed0:0:b0:2b9:4b2e:5420 with SMTP id e16-20020a2e8ed0000000b002b94b2e5420mr5467379ljl.52.1690787971721;
        Mon, 31 Jul 2023 00:19:31 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id c4-20020a2ea1c4000000b002b71c128ea0sm2413267ljm.117.2023.07.31.00.19.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 00:19:31 -0700 (PDT)
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
Subject: [PATCH v2 0/3] drm/display: simplify support for transparent DRM bridges
Date: Mon, 31 Jul 2023 10:19:27 +0300
Message-Id: <20230731071930.3928150-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_001935_075552_08FA67DB 
X-CRM114-Status: GOOD (  13.54  )
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

Changes since v1:
 - Added EXPORT_SYMBOL_GPL / MODULE_LICENSE / etc. to drm_simple_bridge

Dmitry Baryshkov (3):
  drm/display: add transparent bridge helper
  phy: qcom: qmp-combo: switch to DRM_SIMPLE_BRIDGE
  usb: typec: nb7vpq904m: switch to DRM_SIMPLE_BRIDGE

 drivers/gpu/drm/display/Kconfig             |   9 ++
 drivers/gpu/drm/display/Makefile            |   2 +
 drivers/gpu/drm/display/drm_simple_bridge.c | 125 ++++++++++++++++++++
 drivers/phy/qualcomm/Kconfig                |   2 +-
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c   |  44 +------
 drivers/usb/typec/mux/Kconfig               |   2 +-
 drivers/usb/typec/mux/nb7vpq904m.c          |  44 +------
 include/drm/display/drm_simple_bridge.h     |  19 +++
 8 files changed, 161 insertions(+), 86 deletions(-)
 create mode 100644 drivers/gpu/drm/display/drm_simple_bridge.c
 create mode 100644 include/drm/display/drm_simple_bridge.h

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
