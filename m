Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57CC6C44539
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 13:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nNnZk3559V3o8Jl5GuLyJuT+TiBAB25bFGxuUgRrza8=; b=X/ULurb0Sb2FCA
	0TuJS2ts+GI87MP+2m1ZpdMhTRtACjq1I6IWewqapKgpdC6TM4gwtVwb9zXKpyHty2jHg4VBmJjFN
	1Stsm6EsRia63c09HyjBLvwdtKDs5FxCxMC2o41y8kC9VRDmudN5mWeTN+6KiaNLf0w4OIGxANHdL
	Ovj1gogh3cGIl7PLa/Jr/NNiiquEyximAQjm3kGcj5hxaLLRmk/w4xr1Oq4y2KErJrlYbXDtkS+Fi
	CCtCtCIRqP8GEuN9HcS2HMabbAoXBb/n1OZ6ZNfdfQsTQ8euixTSOakFQY1VuPfdafufXf/tzLW4S
	mGt3csFv5uJn93+A1GnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmXGn-0000000BwNt-05dv;
	Wed, 22 Jul 2026 13:45:57 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmXGl-0000000BwNI-13NY
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 13:45:55 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id AFEE660A71;
	Wed, 22 Jul 2026 13:45:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5B421F000E9;
	Wed, 22 Jul 2026 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784727954;
	bh=ctsXSCHHUpMB9s+yG3jwAysx7p0OgehlEmjZtMOy5pA=;
	h=From:Subject:Date:To:Cc;
	b=FBkWl6eACd+lqdzIGzLPCk1smvTMWV7NlZkjzYVBd1Zy/pkZOeLmS8jR9UJYPXrno
	 TP0QLNCUyCsyozNCqY8zN/3S+bDhI6U28DixEAotxhjbll17qRVWTVV/zHH3EWlO6a
	 CKRhNfLfdMf4AN+lZRFHxe4T5DZpzv1zQZNPsKsT6Z7yuG/g0wEN7QwyBjgvvutGJW
	 7rGVkXWzo70Chbd7tZEHZJ3CAUymmylkF8vbu6IGyraJ/jfBjnrb2BEBACDZmhfOna
	 BTljQC0PSdtZA7knAvxIm6bOn/5VhCPKzHBuvMbQohEgMefaxnNaLRjJmblH1f3LpA
	 8F5SQfIDcQMwA==
From: Mattijs Korpershoek <mkorpershoek@kernel.org>
Subject: [PATCH v3 0/2] Add support for SA8255P in the qcom-qmp-usb phy
 driver
Date: Wed, 22 Jul 2026 15:45:43 +0200
Message-Id: <20260722-phy-qcom-qmp-usb-8255-v3-0-e789070b48f7@kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/4WNwRKCIBRFf8Vh3WsQQ6FV/9G0ECSlUhSUyXH89
 8A2tWhanpl7z1mQU1Yrh47Jgqzy2mnTBch2CZJN2dUKdBUYEUxyXGAGfTPDIE0LQ9vD5AQwQil
 wznKOC1kJyVH49lZd9XPzni9vdpO4KTlGWVw02o3GzlvYp3H3r+FTwMAqRknJaUYrcbor26nH3
 tgaxYgnnxr+S0OCJhO5JHl5oAVjX5p1XV/2UvglFAEAAA==
X-Change-ID: 20260708-phy-qcom-qmp-usb-8255-9986907cdbc9
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Maxime Ripard <mripard@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Mattijs Korpershoek <mkorpershoek@kernel.org>, 
 Sriram Dash <quic_sriramd@quicinc.com>, 
 Shazad Hussain <quic_shazhuss@quicinc.com>
X-Mailer: b4 0.16-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=3141;
 i=mkorpershoek@kernel.org; h=from:subject:message-id;
 bh=dlx4OoDIsrgwK7ieA5BGObN8US2aoxJki2clSMhtMrA=;
 b=owEBbQGS/pANAwAKARkNHbRmThk1AcsmYgBqYMmPI6MpOz5OfOcmyJiuzqel7OlteysvcGp/e
 a7lQnq+5aSJATMEAAEKAB0WIQQu6UKnth9qvlMTrQAZDR20Zk4ZNQUCamDJjwAKCRAZDR20Zk4Z
 NfRsB/9qWpYPQCibMtMh+0unNSdFAq8D//BA+JLT5yHYvao5jhlk2/XdGhf5NQka7R1iOwI4vBz
 hZIlwAPBmSrYTPRMG4r7G/thcbLAUF5WcuutcwhmHxU3RHN1Hp+F28gzTfAT9GGV6x1IVGjPoY+
 /ZNeq2zq9qxEKvLAPgkQOR9zitZm99GoxV+jBwAUCd3P+jaT2mep8kRGVYgeAff7oPsnAWLhLf7
 5Yz+Ncv94V8eHfrF7BmGR37U76F6+Dy7nRA/NOUd8CQN0oEiVQKokNi1dl89NAGOMYWCp0QsU6O
 YdFadxXqxw/AmYNaKSlB9pqHMaB3AVPr0ZEJ0qPlMDElzvzZ
X-Developer-Key: i=mkorpershoek@kernel.org; a=openpgp;
 fpr=8234A35B45C0D26B31C1A2DA570338B018144F28
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

The Qualcomm automotive SA8255p SoC relies on firmware to configure
platform resources, including clocks, interconnects and TLMM.
The driver requests resources operations over SCMI using power protocols.

The SCMI power protocol enables or disables resources like clocks,
interconnect paths, and TLMM (GPIOs) using runtime PM framework APIs,
such as resume/suspend, to control power on/off.

Power domain "core" controls the GDSC, resets, and TLMM (GPIOs)
whereas power domain "transfer" controls clocks and interconnects.

Patch 1 adds the binding for sa8255p. Similarly to what has been done
for I2C [1], this is a separate binding.

Patch 2 adds the driver change, which is based on a public vendor
patch from qualcomm [2].
I did the following changes on top of that:
* Use devm_add_action_or_reset() for dev_pm_domain_detach_list() instead
  of implementing a driver .remove()
* Drop the .lanes struct member since it no longer exists.
* Re-order some functions

This has been tested on next-20260706 with a Ride4 SA8775P board that
has SCMI firmware (which is compatible).

[1] https://lore.kernel.org/all/20260617-enable-i2c-on-sa8255p-v7-1-ad736dbeab57@oss.qualcomm.com/
[2] https://git.codelinaro.org/clo/le/meta-qti-auto-kernel/-/blob/LY.AU.0.1.0.r1-16800-gen4meta.0/recipes-kernel/linux/files/usb/0011-PENDING-phy-qcom-qmp-usb-Add-support-for-SA8255P.patch

Signed-off-by: Mattijs Korpershoek <mkorpershoek@kernel.org>
---
Changes in v3:
* Binding changes:
  * Use a separate binding file (Krzysztof)
  * Remove 'usb_' prefix from power-domain-names (Krzysztof)
* Driver changes:
  * Remove 'usb_' prefix from power-domain-names
  * Moved sa8255p_usb3_uniphy_cfg before sa8775p_usb3_uniphy_cfg
* Link to v2: https://patch.msgid.link/20260709-phy-qcom-qmp-usb-8255-v2-0-3b6c26a45788@kernel.org

Changes in v2:
* Driver changes:
  * Fix comment typo tranfer -> transfer
  * Fix print statement to add a missing '(' in the string
  * Use dev_err_probe() in qmp_usb_domain_attach() to reduce log noise
  * Fix pm_runtime_put_sync() order in qmp_usb_d0_to_d3 (Sashiko)
  * Fix runtime PM reference leak on usb_transfer (Sashiko)
  * Fix runtime PM reference leak on error in qmp_usb_init (Sashiko)
  * Reorder qmp_usb_d0_to_d3() to mirror init ordering in qmp_usb_exit()
    (Sashiko)
  * Reorder qmp_usb_d0_to_d3() to mirror resume ordering in
    qmp_usb_runtime_suspend() (Sashiko)
  * Fix error handling in qmp_usb_runtime_resume() (Sashiko)
* Link to v1: https://patch.msgid.link/20260708-phy-qcom-qmp-usb-8255-v1-0-8d852a9535db@kernel.org

---
Mattijs Korpershoek (1):
      dt-bindings: phy: Add sa8255p USB PHY

Sriram Dash (1):
      phy: qcom: qmp-usb: Add support for SA8255P

 .../phy/qcom,sa8255p-qmp-usb3-uni-phy.yaml         |  52 ++++++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c            | 182 ++++++++++++++++++---
 2 files changed, 212 insertions(+), 22 deletions(-)
---
base-commit: dc59e4fea9d83f03bad6bddf3fa2e52491777482
change-id: 20260708-phy-qcom-qmp-usb-8255-9986907cdbc9

Best regards,
--  
Mattijs Korpershoek <mkorpershoek@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
