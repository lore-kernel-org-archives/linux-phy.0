Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4F1CC531C9
	for <linux-phy@archiver.kernel.org>; Fri, 24 Jul 2026 13:53:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=o+zHmuhBqlA3mI00gyyMyTUvkeLu9B3wX7sAc0u7XsE=; b=GdZ1DSIALi8099
	8o4AdURFb91OTbKkWhGUxEaRQCKYl2HOQ6keR7lqau4y+AkEaGKHlxcN0izoeVEmH21FdvyPM9FHs
	W6epwtE/5G13x0s6Hs94SXi8nRWikwfxiMyea7CvglQ8gJWr/icEcw/Z3pCzKDbVeU7UxZJM+MLth
	d0sntCR80EaaLUWscT/lifyblEntCciqrEbG+WhhGXuyo1Grji+2OJ0cY3wg6UmQ/tZc+u5olvgsV
	H7Uj+ReGMoscdW3c80sauGabpnoubVdPe0ez/x3EsOQClZuS15SolVfc7npxBXew4VgloKGXSL21z
	9r6LIU6N4dGbDkhURCeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnGLO-0000000GWeV-0M1N;
	Fri, 24 Jul 2026 13:53:42 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnGLM-0000000GWeD-39F8
	for linux-phy@lists.infradead.org;
	Fri, 24 Jul 2026 13:53:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 360F2600AA;
	Fri, 24 Jul 2026 13:53:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32F4E1F000E9;
	Fri, 24 Jul 2026 13:53:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784901219;
	bh=1xJc4tf9wgQ/3dEns3BWeKyJ2jmK21p2ryW65vOwSYY=;
	h=From:Subject:Date:To:Cc;
	b=Hho9MH2U3KOp8JF7s5erG7iWT+G86prKNIHRE6XZN9s9JBhj4beNFZeKId8P80D3s
	 yECR83SWqi7ytUFsOuwg/TCy5Jup/8Xql36TYQd3bHmEeMW3S8ZrMzTPPLKfIpN6WS
	 P2B8OKtWNiLdxhqyZjRlRoSPMhxhtCCBgDu+IGiZ5DBDEd2VKoKr9jCldlmYPmU3rC
	 EcPoFTkNg1KtT6aLPIFX8p/m1REh0tLacH9hUYo8fEO/7DNBEgWI5xonfuK2KbOT34
	 HJcfd2l0fGGPi9Ytqr3VUtq4UsugG2HPoIOPIm/ssqX0HfsjINv5OpOs6Z/zdh2nLN
	 Pc6Gn22ju9Bww==
From: Mattijs Korpershoek <mkorpershoek@kernel.org>
Subject: [PATCH v4 0/2] Add support for SA8255P in the qcom-qmp-usb phy
 driver
Date: Fri, 24 Jul 2026 15:53:25 +0200
Message-Id: <20260724-phy-qcom-qmp-usb-8255-v4-0-a90014fab476@kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/4XPTQ6CMBAF4KuYrh1TB0qnrryHcUHLKPUHsFWiM
 dzdohuNMS5f8uZ7mbuIHDxHsZjcReDeR982KeTTiXB12WwZfJWyQImF1JKgq29wcu0RTscOLtE
 CoVJgDBVGaldZZ0S67QJv/PXprtavHC92x+48YmOj9vHchttzuJ+PvX8b/RwkUEUKS6MyVdnln
 kPDh1kbtmIc6fGdMb8YTExmC4dFmStN9MVkbwziLyZLDGtKX0ub00Z/MMMwPADjUzQzWwEAAA=
 =
X-Change-ID: 20260708-phy-qcom-qmp-usb-8255-9986907cdbc9
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Maxime Ripard <mripard@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Mattijs Korpershoek <mkorpershoek@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Sriram Dash <quic_sriramd@quicinc.com>, 
 Shazad Hussain <quic_shazhuss@quicinc.com>
X-Mailer: b4 0.16-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=3347;
 i=mkorpershoek@kernel.org; h=from:subject:message-id;
 bh=l/m9/rzr8GHaHw1sZHXfdIdZDZ9HIusy/M7QUjve/24=;
 b=owEBbQGS/pANAwAKARkNHbRmThk1AcsmYgBqY25gy/TIe+hthKSOUDUl/yl9pXgqXkQfclB5j
 xnP5cb4ljWJATMEAAEKAB0WIQQu6UKnth9qvlMTrQAZDR20Zk4ZNQUCamNuYAAKCRAZDR20Zk4Z
 NYCWB/9Y/MyZhWY61MiiHmUte46W6poVCoumCvKxK3Qdk8giMxBuys/Vspo0fhZy6tdre4Y5zgE
 mhMU+tkoSTJi+T+FHOZ0XdZR3s+BNBbJDq1wJ6IiaHcH9f3l9GFxYvyHY28bJNkD0xvO9UhTMpJ
 10rtGJwEcrB8Wp2Zd5P6GfYfNTb8vq1rUdkxvdglgb5CGWdlwX4S94w9IsNUJZpUc1XfRUWOxF8
 xlURKAvUv5nqUznKB2lVtuNPtaUto8ijwIX3ycSSvvB1tH9K8zfgoozyEEP0fNU3lGzSb+DabbV
 Q3RqJtm3ZRob+vfZkVakSgNB8D3QOPhMJb5X84seQlYQDj40
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
Changes in v4:
* bindings: Use additionalProperties: instead of unevaluatedProperties:
  (Krzysztof)
- Link to v3: https://patch.msgid.link/20260722-phy-qcom-qmp-usb-8255-v3-0-e789070b48f7@kernel.org

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
