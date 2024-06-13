Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 772E3C2BA16
	for <linux-phy@archiver.kernel.org>; Thu, 13 Jun 2024 15:16:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bqlFscgGCwfq3M1JjvJN4AwnATV/wAbTLE5SY4nNfK4=; b=NVi4myi6H3IBlm
	SYm7HxsfSojCTSabOJg+G9OTIWwFTIDvlrBEqMMIhntFlG4gkNcR/FfzCG8I1SYSbcxUxvWWztCdh
	7kd2YFL1ZyBB1zI8UhR3NOjZ8n/UWLI3zbG+0LXmP7DUBTuq5n78G3LRptxtspkUK0T2FuO5Hn6+Q
	efu4sBjstnhpwbMMRvEdU9gA/NdIs2J6nD0BSamuXuyT4zNz6D4mxmbtifRkurQznoRkO+qmKLXTO
	S1Aaj8itPyBbXZGnwr+fYBzHU1kUn2yK6gkVtGYPuxaGNJV27NLkigpEojzcboQR36mog2sj7hFTp
	2qecCaqm2eup6u0tGIIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHmC0-0000000H7uX-3C2E;
	Thu, 13 Jun 2024 15:16:48 +0000
Received: from ns.iliad.fr ([212.27.33.1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHmBx-0000000H7py-1QyA
	for linux-phy@lists.infradead.org;
	Thu, 13 Jun 2024 15:16:47 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
	by ns.iliad.fr (Postfix) with ESMTP id ED20720A8B;
	Thu, 13 Jun 2024 17:16:36 +0200 (CEST)
Received: from [127.0.1.1] (freebox.vlq16.iliad.fr [213.36.7.13])
	by ns.iliad.fr (Postfix) with ESMTP id D378620356;
	Thu, 13 Jun 2024 17:16:36 +0200 (CEST)
From: Marc Gonzalez <mgonzalez@freebox.fr>
Subject: [PATCH v4 0/4] HDMI TX support in msm8998
Date: Thu, 13 Jun 2024 17:15:49 +0200
Message-Id: <20240613-hdmi-tx-v4-0-4af17e468699@freebox.fr>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIACUNa2YC/2XOywrCMBCF4VeRrB3JzdS48j2ki1wmJos2kpRSK
 X13064Elz/MfJyVVCwJK7mfVlJwTjXlsYU8n4iLZnwhJN+acMolVVRB9EOCaQFKEW/YeW+NI+3
 6XTCk5ZCefetQ8gBTLGiOf8OdZVxT0EgZSCYU6Kvm4FAKbRnVyqpHKIg2L5dQdjGmOuXyOabNY
 nf/V8wCGum7gFZ5oWT3a/Tbtn0B30UufuEAAAA=
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
 Marc Gonzalez <mgonzalez@freebox.fr>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_081645_600969_9B4D6F94 
X-CRM114-Status: UNSURE (   7.01  )
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

DT bits required for HDMI TX support in APQ8098 (msm8998 cousin)

Changes in v4:
- Collect tags since v3
- Reword patch 1 subject (Vinod)
- Link to v3: https://lore.kernel.org/r/20240606-hdmi-tx-v3-0-9d7feb6d3647@freebox.fr

Changes in v3
- Address Rob's comments on patch 2:
  - 'maxItems: 5' for clocks in the 8996 if/then schema
  - match the order of 8996 for the clock-names in common

---
Arnaud Vrac (1):
      arm64: dts: qcom: add HDMI nodes for msm8998

Marc Gonzalez (3):
      dt-bindings: phy: add qcom,hdmi-phy-8998
      dt-bindings: display/msm: hdmi: add qcom,hdmi-tx-8998
      arm64: dts: qcom: msm8998: add HDMI GPIOs

 .../devicetree/bindings/display/msm/hdmi.yaml      |  28 ++++-
 .../devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml |   1 +
 arch/arm64/boot/dts/qcom/msm8998.dtsi              | 128 ++++++++++++++++++++-
 3 files changed, 154 insertions(+), 3 deletions(-)
---
base-commit: 2c4f4d94dcbf6f500b92fff5600989ea23a207e8
change-id: 20240606-hdmi-tx-00ee8e7ddbac

Best regards,
-- 
Marc Gonzalez <mgonzalez@freebox.fr>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
