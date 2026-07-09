Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5DD8C43458
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jul 2026 14:52:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hxaGLTXFJslhVHIUT+3jevUBokW4bh9p5tLpyMig/D4=; b=zbahhadRJEUKnv
	yCp82YBxWgs0D4sR19U3zvykClvtVWhMutHPzhO2etsH098Q4MM6iDg3ay8YzpCdxJX5R/ilFjtXs
	+swYNK3SqKuPzmP9mYK/06S8dF6VgmIqmyrRJdLzO3DkQ7e/YlMblQELQ1HByze82+N+DF7Me8BX6
	uowJqoaBqGP8V7GlUcg9kRZvvbkoh3aDtrlarySjcNhNdOsEmibsYniDbU60eLff+otP4zH947eSm
	aC4uRfFX3Xr+9AKV3zHLE/QIv2kE4EjDYY8OI/vZPA7CZzEW/PioEsFM18izpA/Fmt/Y2b7CK4Xaz
	IlGts1UW4LQ62ljPQXCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whq6t-00000002qKq-1At1;
	Thu, 09 Jul 2026 14:52:19 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whq6r-00000002qKe-3wSf
	for linux-phy@lists.infradead.org;
	Thu, 09 Jul 2026 14:52:17 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 76F1C40BC0;
	Thu,  9 Jul 2026 14:52:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B57461F000E9;
	Thu,  9 Jul 2026 14:52:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783608737;
	bh=3KFQ8VXri7aKSQPbHY93d3EKQrIvP7C1ms7uxiUgmFU=;
	h=From:Subject:Date:To:Cc;
	b=CB+DYJBAQbEcuretqTzsE4dfNn5oxefA8kkIIOyCGLidAUCpGNzjiK0zp9QGZ9vca
	 +Iv9Ff9A57P5qKlqJQ5YBGjtAiBSHRDba3hie376FZ+wpGuHUVoP/Wfmf5h2mcQoGN
	 t57AKX1AA4HGbpR8f4GFZ028wNZRywhMiabCOoNAZMFE+bAQH4JTA2+JQ9uJEwdcHo
	 uSLIRXfZmWBXyT1rrAVFV1igh7zvuZabk6ImElugNfWAsYTH52WjRMkmz1Ns1Ijy2s
	 En2gvKluFiFkMlQJ0NDnwWvwJYNssY0K265gbxzLemi6M9gxk9nkSDx0Z4GYapxMG4
	 9JlXIP48XVdZQ==
From: Mattijs Korpershoek <mkorpershoek@kernel.org>
Subject: [PATCH v2 0/2] Add support for SA8255P in the qcom-qmp-usb phy
 driver
Date: Thu, 09 Jul 2026 16:52:08 +0200
Message-Id: <20260709-phy-qcom-qmp-usb-8255-v2-0-3b6c26a45788@kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/4WNQQ6CMBBFr0Jm7ZhSU2hdeQ/DgrYjVIVCC0RCu
 LuAB3D5kvffXyBScBThmiwQaHLR+XYDfkrA1GVbETq7MXDGM5YziV09Y298g33T4Rg1Si4EKiU
 zxXJjtVGwbbtAD/c5uvfix3HUTzLDHtuN2sXBh/k4ntLd+/cxpchQWil4qcRFWH17UWjpffahg
 mJd1y92HHX2zQAAAA==
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2984;
 i=mkorpershoek@kernel.org; h=from:subject:message-id;
 bh=Bvi+eNARt4IojynIZMIQ56mGSggZiqVNZgsU8FYcSUQ=;
 b=owEBbQGS/pANAwAKARkNHbRmThk1AcsmYgBqT7WedxXhVwvnP+fmW857BDhRa2xeBeNs6Jqv4
 O0ymKVhWpyJATMEAAEKAB0WIQQu6UKnth9qvlMTrQAZDR20Zk4ZNQUCak+1ngAKCRAZDR20Zk4Z
 NXAyCACTpFX1X81pa9KDJSboNTClLhBnFC7RbFqoyY85ZIN5pqcvDt26VWv+ZUfxzPyesUnjOqV
 +o8j7+Nb20bHv+ESLUd4Z50ZV+8yhZNp3BvoSsvrT7Jsqpa8AY8dM4zDPM+PueXZ+zoh0MH3x+z
 OwPoboSAGsmWZExEgZgGw/gdMicyLN+N/bLRxAZ5D1EiVe6pAh0EQoy6mJnBNWX4TFN3mdl3hvS
 o6+hX0kqasmcwdAKAQSDOxWVTzVkqn7oqb3tS4SZDDOxyHzRFCtptw17W7bJUny5lXeFQFS+dU4
 ZiaUSH/SNMZReY1L8KNMhBN5pSCyFK55lUr4Jr+eVEpOUADl
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

Patch 1 adds the binding change for sa8255p. I've considered to create
a totally separate binding like the I2C one [1].
Given that the existing binding already had multiple conditionals, I've
chosen to update qcom,sc8280xp-qmp-usb3-uni-phy.yaml by adding another
conditional for the power domains.

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
      dt-bindings: phy: qcom,sc8280xp-qmp-usb3-uni: Add SA8255P USB PHY

Sriram Dash (1):
      phy: qcom: qmp-usb: Add support for SA8255P

 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        |  92 ++++++++++-
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c            | 182 ++++++++++++++++++---
 2 files changed, 243 insertions(+), 31 deletions(-)
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
