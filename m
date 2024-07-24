Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F09BC3DA7E
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jul 2024 15:02:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5HEeLjz8Kzh3dJbCp1YgCY+M0EkkoR9vsThVtwTXmU0=; b=43OAgrZyEX0Tth
	leIEJQvoVb8fABgMurK12KMLUMVONyjkcAWPaiBJUl1IvBzckq2mfs37tuCqTK3GWU6/vnOrqrhiA
	BXjtKhLSAkBcFv2bBmac4e4xR3f2Ku6IA51Zd+5x4lzr7agmmZtGkSx94db4qZuj5Py/iCJbWTsBN
	SllRzdngst4Bvqk5cSkVtjefCtWdKe7ErvM88lj5B/umqjjlKcCmk3ocsDGsOO3gaWKy4zHnVvqTP
	KqG+lE+lnhDKgTXYMzYH6EpHRlN1Y3jtQ6+4auacDQSGypwlNIR9CFS+SWcp95TTGE5mh01IWG35Z
	xIg6h3qStJ6GzUDwwzIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWdVJ-0000000FiHM-0uFl;
	Wed, 24 Jul 2024 15:02:09 +0000
Received: from ns.iliad.fr ([212.27.33.1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWdVB-0000000FiD2-3ln1
	for linux-phy@lists.infradead.org;
	Wed, 24 Jul 2024 15:02:05 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
	by ns.iliad.fr (Postfix) with ESMTP id E615020732;
	Wed, 24 Jul 2024 17:01:54 +0200 (CEST)
Received: from [127.0.1.1] (freebox.vlq16.iliad.fr [213.36.7.13])
	by ns.iliad.fr (Postfix) with ESMTP id CD69D20572;
	Wed, 24 Jul 2024 17:01:54 +0200 (CEST)
From: Marc Gonzalez <mgonzalez@freebox.fr>
Subject: [PATCH v7 0/6] HDMI TX support in msm8998
Date: Wed, 24 Jul 2024 17:01:33 +0200
Message-Id: <20240724-hdmi-tx-v7-0-e44a20553464@freebox.fr>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAE0XoWYC/2XOy26DMBCF4VeJvO5Uvo7jrvoeVRa+jIsXCZFBi
 Cri3WPYQMXySPP9mhcbqBYa2NflxSpNZSj9ow37cWGx849fgpLaZpJLzZEjdOleYJyBc6Ir2ZS
 Cj6xdPyvlMm+ln1vbufZ3GLtKfvNexiCk4+CIC9BCITjjJETSygXBHQb8zpUo9PNnrmuxK8PY1
 7/ttUmt3fMXk4KWTDZTwKRQ22NjfWPSByjUDnWD2mdhSeMVnTtBc4DS7tA0qIxJJoocoooniDu
 0wuwQG0zSZi5dC/r0Dy7L8gaZahOLjAEAAA==
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, Arnaud Vrac <avrac@freebox.fr>, 
 Pierre-Hugues Husson <phhusson@freebox.fr>, 
 Jeffrey Hugo <quic_jhugo@quicinc.com>, Marc Gonzalez <mgonzalez@freebox.fr>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240724_080202_148849_84CBC4A1 
X-CRM114-Status: GOOD (  10.72  )
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

DT bits required for HDMI TX support in qcom APQ8098 (MSM8998 cousin)

---
Changes in v7:
- prefix the labels hdmi: and hdmi_phy: with mdss_ (Konrad)
- DID NOT MODIFY patch 3, based on conversation between Conor & Dmitry
- tested 40+40 boots with/without maxcpus=1 => no iommu panic witnessed
- Collect tags from Konrad & Dmitry (hopefully b4 did the right thing)
- Link to v6: https://lore.kernel.org/r/20240715-hdmi-tx-v6-0-d27f029627ad@freebox.fr

Changes in v6:
- Fold HDMI PHY driver submission into this series
  => [PATCH v2] drm/msm: add msm8998 hdmi phy/pll support
  => Link to v2: https://lore.kernel.org/all/20240704-hdmi-phy-v2-1-a7f5af202cb5@freebox.fr/
     - Rebase onto v6.10
     - Move drivers/gpu/drm/msm/hdmi/hdmi.xml.h to drivers/gpu/drm/msm/registers/display/hdmi.xml
     - Add copyright attribution
     - Remove all dead/debug/temporary code
  => Link to v1: https://lore.kernel.org/all/63337d63-67ef-4499-8a24-5f6e9285c36b@freebox.fr/
- split HDMI PHY driver patch in 2 parts (PHY & TX)
- Use same regulator names as msm8996 (Dmitry)
- Remove printk statements
- Add Vinod's Ack on patch 1
- Expand commit message on patch 4 = HDMI PHY driver
- Link to v5: https://lore.kernel.org/r/20240627-hdmi-tx-v5-0-355d5c1fbc3c@freebox.fr

Changes in v5:
- Fix property & property-names for TX pinctrl in DTSI (Konrad)
- NOT CHANGED: clock trees for TX & PHY based on Dmitry & Jeffrey's remarks
- Link to v4: https://lore.kernel.org/r/20240613-hdmi-tx-v4-0-4af17e468699@freebox.fr

Changes in v4:
- Collect tags since v3
- Reword patch 1 subject (Vinod)
- Link to v3: https://lore.kernel.org/r/20240606-hdmi-tx-v3-0-9d7feb6d3647@freebox.fr

Changes in v3
- Address Rob's comments on patch 2:
  - 'maxItems: 5' for clocks in the 8996 if/then schema
  - match the order of 8996 for the clock-names in common

---
Arnaud Vrac (2):
      drm/msm: add msm8998 hdmi phy/pll support
      arm64: dts: qcom: add HDMI nodes for msm8998

Marc Gonzalez (4):
      dt-bindings: phy: add qcom,hdmi-phy-8998
      dt-bindings: display/msm: hdmi: add qcom,hdmi-tx-8998
      drm/msm/hdmi: add "qcom,hdmi-tx-8998" compatible
      arm64: dts: qcom: msm8998: add HDMI GPIOs

 .../devicetree/bindings/display/msm/hdmi.yaml      |  28 +-
 .../devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml |   1 +
 arch/arm64/boot/dts/qcom/msm8998.dtsi              | 128 +++-
 drivers/gpu/drm/msm/Makefile                       |   1 +
 drivers/gpu/drm/msm/hdmi/hdmi.c                    |   1 +
 drivers/gpu/drm/msm/hdmi/hdmi.h                    |   8 +
 drivers/gpu/drm/msm/hdmi/hdmi_phy.c                |   5 +
 drivers/gpu/drm/msm/hdmi/hdmi_phy_8998.c           | 779 +++++++++++++++++++++
 drivers/gpu/drm/msm/registers/display/hdmi.xml     |  89 +++
 9 files changed, 1037 insertions(+), 3 deletions(-)
---
base-commit: 003a26f5074bfe024603cf76f8fd486a5344f307
change-id: 20240606-hdmi-tx-00ee8e7ddbac

Best regards,
-- 
Marc Gonzalez <mgonzalez@freebox.fr>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
