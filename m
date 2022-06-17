Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45EF6CCA480
	for <linux-phy@archiver.kernel.org>; Fri, 17 Jun 2022 10:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7DA/WEoCdnRwruiQsbESv86BEUZJQzRbpuw7+2w7Lgc=; b=mIFlbRjLuIrgN0
	oTKBbxJ3Is5OWWs9pKggRwQJ10hkSAZtmIOC88DlY2cOw6dafBahjGUO66Z5FIOuVcPu0Lxc8SCpB
	w/Wtt+Vp8Q6zPmhWGWBdQtWknwy++ZSq4nbql7fBdfXJIMQa8yneVTsw/QDnhkHTcViba12ybcdS+
	+QqbTNu/P0f11n8JTvz64ZpTfzHsWUdanFyFnd0FrYFniODXjTvtlwOXScl/WyrWkU4+DyJW5BqXR
	cofj0pVUVE9+4njUF+QvDQO8G3vo8/wVIMX1pQYhGCI4tArRITrgTP8nKkDp8JVmlvs5iaOYAYiuc
	dDzHKJPbUaXbkNmqJX4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o29Kx-006z3y-GR; Fri, 17 Jun 2022 10:36:23 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o29Kt-006z18-TP
	for linux-phy@lists.infradead.org; Fri, 17 Jun 2022 10:36:21 +0000
Received: by mail-lj1-x234.google.com with SMTP id d19so4269980lji.10
        for <linux-phy@lists.infradead.org>; Fri, 17 Jun 2022 03:36:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=HADbm2Q0iXz5TZbFf0x7dUMSunNE29kysn4VYUvxWAA=;
        b=SEamXvUPZtDClVb+it2ZQnT30PYuKodPn7A/WyVg6obnHTEkPDJ428TlByPbYDKaJc
         4rVdVijNvzxichCr3rxvv5wRQRAeDm4SX5/zz+PtvIRCHR9e39PamDppRJALnU/30JjL
         6q8fQXnUnzi6Uc+c4qGH2mCBIeGphmnL2Ic22c0M3rWbHDs1C4KGccUchgtfge90yokd
         nhF8CyJE2YOWaaSYTHaVz8YzGvV87pFqHKVQPvzoYfgEjbWXY8agLlWZaeYj4/nVwISh
         4t9ey8jeIaDv+dPkYWV3I4QN+pygEz/O5XEdbtIgawfTOmbMAi6KrTQdR2su+liBW+w3
         8bdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=HADbm2Q0iXz5TZbFf0x7dUMSunNE29kysn4VYUvxWAA=;
        b=zYveSqXRf0JSSkiTdzCKZeQRBfbyruLBqpv4SBNwCPyIExLtHoGDQYhkvf8rV8aZev
         bYVGacFDbtPzWvQIuxv2LhiRJqXFwVJG0MnOi1Sf5ae5eAJU437i/O/vnaq7jyRtDDw8
         PL0ZRw/x7aikWTnVHEMLNS5MQqIQUbG7Vf8uJlPwvlAbCndQY2i7rukYo8zwe4ygqFRL
         WarPIWouVInqiK796HF6JAwhuMfrHiSU+EBpnGVXiIMQRzuvMHcZ2N1RBEy8W0We09vo
         7FK0TYRFnqnR+iSoyuSsq4uyVZeFpl8bBLuzCBe7t4vpHoAyh6ApsiF+nubexsumwRja
         euAA==
X-Gm-Message-State: AJIora+89Y2PtSsdZXH5hgY3SnrYrrgtQPMrlrtgtdlAysd5s8C9TeLV
	dgPs8iKYALt1koMJQgX+OGfS5XzylP0zH9qr
X-Google-Smtp-Source: AGRyM1vCISv5DGQKfk8IeXYWAss+EKIjGwI/FSSIK50PMS+dysHBeXd4oFs22JKiVbKZeCeXKkdg3A==
X-Received: by 2002:a2e:9cda:0:b0:255:6bfd:3bd with SMTP id g26-20020a2e9cda000000b002556bfd03bdmr4626470ljj.302.1655462170346;
        Fri, 17 Jun 2022 03:36:10 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id d3-20020a056512368300b00478ff020832sm591803lfs.106.2022.06.17.03.36.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jun 2022 03:36:09 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rob Clark <robdclark@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: Stephen Boyd <swboyd@chromium.org>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	Vinod Koul <vkoul@kernel.org>,
	linux-phy@lists.infradead.org
Subject: [PATCH 0/3] drm/msm/hdmi: turn MSM8996 HDMI PHY into OF clock provider
Date: Fri, 17 Jun 2022 13:36:05 +0300
Message-Id: <20220617103608.605898-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_033620_024607_8796CDF4 
X-CRM114-Status: UNSURE (   5.93  )
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

On MSM8996 the HDMI PHY is the QMP PHY, it provides an HDMI PLL clock
used by the MMCC. Add support for providing this clock to the OF
framework by registerding the clock provider and adding #clock-cells
property to the DT node.

Dmitry Baryshkov (3):
  dt-bindings: phy: qcom,hdmi-phy-qmp: add clock-cells
  drm/msm/hdmi: make hdmi_phy_8996 OF clk provider
  arm64: dts: qcom: msm8996: add #clock-cells to the HDMI PHY node

 .../bindings/phy/qcom,hdmi-phy-qmp.yaml           |  4 ++++
 arch/arm64/boot/dts/qcom/msm8996.dtsi             |  2 ++
 drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c          | 15 ++++++++++-----
 3 files changed, 16 insertions(+), 5 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
