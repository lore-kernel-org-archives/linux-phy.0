Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2C16C43217
	for <linux-phy@archiver.kernel.org>; Mon, 25 Apr 2022 21:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PTVFVmvCXgHJpJ6NOXayiB7qkRppzYnuQdI400sagZs=; b=Hu28etNOC/MMmn
	mQ0fYgFQu2dMtigZhK1/4qGtm8uDyl+9tj5hzDDWQ6Jo7aNqdoyvkppJvMpPtXfHdh4onHk9BBz5T
	j0cGLMvuqNsKCY3VHAQ92tEEDXiMH38319+/ADFm8NrppTeCn+Ma7FkzTCh53hZAbyPdlCgPfucOA
	iPrLjJxk6DE5DVrohjilDw7t+QEymh/3Rj8p61iY7bSCMnYMqFRrZPSqy6bUu/TKERhWcKK/wSF7/
	qFYQfaUs05/uRwfkYSFgCcYAUHI5ZXpGrjiY99xjUIXI/ljKL+aQjcTMtAp25Q/vYFsm1RbOoh7zI
	RrQkmjiw8LbNccqFIdfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj5vW-00BS6H-7W; Mon, 25 Apr 2022 21:07:22 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj5vS-00BS2Q-Fu
 for linux-phy@lists.infradead.org; Mon, 25 Apr 2022 21:07:21 +0000
Received: by mail-pj1-x102c.google.com with SMTP id
 j8-20020a17090a060800b001cd4fb60dccso554639pjj.2
 for <linux-phy@lists.infradead.org>; Mon, 25 Apr 2022 14:07:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ho4lFHBriP83EBuh7im6oUALrBEwYKd1HOs+QqrsoEY=;
 b=akQVBkH/VtMlmKfIuInlT+qJDziMVsZPpZ+hQ5uV3NeVNRFOVaH7CY1xTOQH14tJuw
 9+tODS+z8YOYzTHVdwEEGgsej/Zlk7M/54/cctu2l86RumWCo+GvIQ1ryP6QoC8Fzvx0
 WV/ceo4PnlqfPWY3LRXcb3JxC7fsxQyjQwzzE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ho4lFHBriP83EBuh7im6oUALrBEwYKd1HOs+QqrsoEY=;
 b=VAoinq+heFJz+GpndMxKiqXuGxlOa4EebU2LBPmqD6yJwkWR88hn8Sfl5WdAb8qF1j
 GkiA9HeFuA7DT23VX9Vg5YYACwZ1kziEqxv4UJb67+2LhLspmOEoal32B5etfqBzxH82
 Wep4UMMXaeNiwCP71t1GqRlDXAF8Ux371zwIwGoa5S8gbjt98tJXKWfmTTISebf7Xoeq
 f4uWcTeuJLSrd7GQnNVhiXR5KAgCVaxDmQj2WRwElZd2h9Pa4PskKromFeNAloi24ylB
 0BpNgaM9MtAtuaX8jgckWeQrIdT/zAZNA8CtcQELiwTi5iSsNeEbFGpycPEdXdcmOf3J
 9Y9g==
X-Gm-Message-State: AOAM533uEkE/r+lEmtNWiXo2rkmpcSNKyHupTz3mxxCo2iDVZ+vsz59k
 d0v5bUsCr0DAz038vTUioKGqKA==
X-Google-Smtp-Source: ABdhPJz9TipniGjuLfdSJHo77yegNcYEj0amTSj6sKn2dZa2BF4vcvsJfC2yD92BSkXEdeOLzSPIxA==
X-Received: by 2002:a17:903:181:b0:15c:9035:2b18 with SMTP id
 z1-20020a170903018100b0015c90352b18mr16668520plg.8.1650920831241; 
 Mon, 25 Apr 2022 14:07:11 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:201:b820:7f63:f3dd:3da])
 by smtp.gmail.com with ESMTPSA id
 b20-20020a62a114000000b0050d231e08ffsm8523202pff.37.2022.04.25.14.07.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 14:07:10 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Rob Clark <robdclark@chromium.org>
Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>, linux-phy@lists.infradead.org,
 Stephen Boyd <swboyd@chromium.org>, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Sankeerth Billakanti <quic_sbillaka@quicinc.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, quic_kalyant@quicinc.com,
 Kuogee Hsieh <quic_khsieh@quicinc.com>,
 Douglas Anderson <dianders@chromium.org>, Andy Gross <agross@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] dt-bindings: List supplies needed for sc7280 eDP
Date: Mon, 25 Apr 2022 14:06:41 -0700
Message-Id: <20220425210643.2420919-1-dianders@chromium.org>
X-Mailer: git-send-email 2.36.0.rc2.479.g8af0fa9b8e-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_140718_565053_CB77E22A 
X-CRM114-Status: GOOD (  11.11  )
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

While looking through dts changes for sc7280 eDP I found that none of
the regulators that were being defined were listed in the
bindings. That being said, the current Linux drivers _were_ looking
for regulators. This series tries to document the reality to the best
of my ability.

If someone from Qualcomm has better documentation than I do and wants
to correct anything here then I'd be more than happy. For the PHY
patch especially I don't have a great way to map what I see in
datasheets / schematics to figure out which is the supply for the
"phy" and the "pll".

Assuming these look OK, I'd expect the PHY patch to land through the
PHY tree and the display patch to land through msm-next. I can split
the series up if need be--the two patches are just in one series
because they have a similar topic--there are no actual dependencies
here.


Douglas Anderson (2):
  dt-bindings: msm/dp: List supplies in the bindings
  dt-bindings: phy: List supplies for qcom,edp-phy

 .../devicetree/bindings/display/msm/dp-controller.yaml      | 6 ++++++
 Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml     | 6 ++++++
 2 files changed, 12 insertions(+)

-- 
2.36.0.rc2.479.g8af0fa9b8e-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
