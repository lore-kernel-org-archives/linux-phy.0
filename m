Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BDACC61DD3
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 09:31:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Gd+jB9FGTk9n+lw01ORD9HOSctTcEDGQyrIJ7D3MvIc=; b=Rlomlxjlq8Ovgj
	rlmY6nSEFGPLXGFNMFoXDqSwcobElpEt6IxdCN0Ng5Ou46m1nwrT5QC80qMZMYKFt2Ko4L0oImmfI
	E7vMLJfWruW9CxVrh/0/XqQRuLtG1ea8xynIPmwLkupomPjWcdh4rtFa/CFGlzFJ9XFvySRCn05Fc
	tr2e4PnBabhXUjyGfIRgwGcSn9R/UhzQTzkyQmeN/W+yxNWRhCCjeLY+3l3B5qnF9sYaAIlmLpjUT
	5A3B89fExpqMcIj9tpEDTLqQ9WGdsGjlGBFaVeRGpNHq6r2OgclASTI341T9/n2MJUY0AiyFS6bQF
	BLK0uHHGO4mZ5c9BQ6KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0yMT-000000091RB-2zLO;
	Mon, 31 Aug 2026 09:31:29 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0yMS-000000091R1-2D7C
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 09:31:28 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id EF5DE41756;
	Mon, 31 Aug 2026 09:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 555A91F000E9;
	Mon, 31 Aug 2026 09:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788168687;
	bh=hZ7mYk7ae7HT/7ig4J6jEj8rAJ1B+22kUDWnxyCfm28=;
	h=From:Subject:Date:To:Cc;
	b=Dw1AapgiYTN/ov7W/xSInmssj8i3JhHkYxkmSmu9HggGWUOYsBG/4g7LMayCzCyES
	 J74YpCfzBimLYrahyFy2LjDijgGfKosj7W9lAopD2NOxOI3G2qrozrjnYO9VW4qHIs
	 vWqCSAVHouGPnQ33sxH3hcbNbwZGSaz+g3ZpyB+G2IiyFdJHseYwnUWfzTzmUU4LmH
	 5WggCQbU+n8wm+tZKhP7K+nbBF68wNv0x0YpGjW6X5conaRVWoagxOz3jxq65HesTz
	 d2UGg7mXXDtjTYUcm0/AEhNRELPzmCT8xsus5lGYfYKfbH6ZBPwI/HXrwm0krmM0Q2
	 Nz8H8kTB4WLOQ==
From: Mattijs Korpershoek <mkorpershoek@kernel.org>
Subject: [PATCH v2 0/2] Add support for SA8255P in the
 phy-qcom-snps-femto-v2 phy driver
Date: Mon, 31 Aug 2026 11:31:20 +0200
Message-Id: <20260831-phy-qcom-snps-femto-v2-8255-v2-0-dc6197ffde1b@kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/32NQQ6CMBAAv0J6ds22Wiie/IfhALiFqrTYYiMh/
 F1Azx4nmcxMLJA3FNgpmZinaIJxdgGxS1jdlrYhMNeFmUCRYiZy6NsRnrXrINg+gKZucBAFKCE
 l5Kg1ZWl2RORsKfSetHlv9Uvx5fCqblQPa3I1WhMG58dtH/nq/U4H/HuKHBBUpSotOcoyVec7e
 UuPvfMNK+Z5/gCHmzKb2QAAAA==
X-Change-ID: 20260729-phy-qcom-snps-femto-v2-8255-90ffe7674001
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Mattijs Korpershoek <mkorpershoek@kernel.org>, 
 Sriram Dash <quic_sriramd@quicinc.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2375;
 i=mkorpershoek@kernel.org; h=from:subject:message-id;
 bh=qWiP9khaW7DmVO8gpuo66A5XUr4asSD96P2qgysc1fE=;
 b=owEBbQGS/pANAwAKARkNHbRmThk1AcsmYgBqlUnsJBMVx0MNc5aFZOCbUn7/LKUDdxcBBbo5m
 usAi+qfKauJATMEAAEKAB0WIQQu6UKnth9qvlMTrQAZDR20Zk4ZNQUCapVJ7AAKCRAZDR20Zk4Z
 NQWdB/9IGRPVQK+cpansPIqdm8Nu05pqBY9GFhAUQLJzHelQI+zsBBwGadX3xEOrYbqxWAsTnln
 U1aYrG4hH8F9/Jwgxp7jK2YO+LTaUL0NnIwHBNzjMYYJjcmWzZXQV6jKDf9SGjypKuvtHZST+m8
 ShdHzDt/y8vAsdZAswxD8jeymEst2uyPqhNbQvlsra69z2ipjQADMr7Q1xUl90VkMuzcWMu/2xm
 UqRQeLaRUrg4q0BiNv3cMmC/H9xb7Tqrw84qf9//70CXity4n1ZmlEC6BIskOjmrSN587YK3K+L
 l6FHHecdbw8pFPQOB2rJdXimw7oSaAkd4cmnLv1KZDD9+n81
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
* Changed power domain names to drop 'usb_' prefix
* Fixed various error handling paths
* Added suspend/resume support

This has been tested on next-20260728 with a Ride4 SA8775P board that
has SCMI firmware (which is compatible).

[1] https://lore.kernel.org/all/20260617-enable-i2c-on-sa8255p-v7-1-ad736dbeab57@oss.qualcomm.com/
[2] https://git.codelinaro.org/clo/le/meta-qti-auto-kernel/-/blob/LY.AU.0.1.0.r1-16800-gen4meta.0/recipes-kernel/linux/files/usb/0014-PENDING-phy-qcom-snps-femto-v2-Add-support-for-SA825.patch

Signed-off-by: Mattijs Korpershoek <mkorpershoek@kernel.org>
---
Changes in v2:
- Move 'core' as first domain, before 'transfer' (Krzysztof)
- Reworded binding commit message to be more precise about the various
  domains ('core', 'transfer' and 'perf') (Krzysztof)
- Link to v1: https://patch.msgid.link/20260730-phy-qcom-snps-femto-v2-8255-v1-0-8b8bf5105a68@kernel.org

---
Mattijs Korpershoek (1):
      dt-bindings: phy: Add sa8255p high-speed USB PHY

Sriram Dash (1):
      phy: qcom-snps-femto-v2: Add support for SA8255P

 .../bindings/phy/qcom,sa8255p-usb-hs-phy.yaml      |  52 +++++++++
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c      | 127 +++++++++++++++++++--
 2 files changed, 170 insertions(+), 9 deletions(-)
---
base-commit: e30626823a406725ce29bc75cb8ec467d3e1e326
change-id: 20260729-phy-qcom-snps-femto-v2-8255-90ffe7674001

Best regards,
--  
Mattijs Korpershoek <mkorpershoek@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
