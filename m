Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FF18C55165
	for <linux-phy@archiver.kernel.org>; Thu, 30 Jul 2026 13:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mOa69z3NOm7btcSg/Hz6IbmWvIAVzbIW4wv5m858zjI=; b=gMYr76le//gHDT
	DroF3nr09HRubDBAqrqQHY0qj6WRRNQaXFnwebdyw9Y0gUHRu9r/8IBfWp7k75YPQreVRcmxPZb0T
	3u2JF98Qt7cezshD004XBxjymdDGFe5kUVs0s7sW7vkMYeDdUgf7IA3+gpViTg406bIlynt2IDzbn
	Pf66B/Zny6VLH2fC55/qCDVWS6Pv+KQHsSe20jPNicA9QnxBOI/ejw0aOAes6K4SGhgSNt9uY6XqM
	djLbgnq8Xy8syb81TRNHMoUDb5/1mkLBHI+EoF1OiWxMq4UsPabz2PLk5MgYK6YK0DokyJCwdEPYu
	uUMiez2l1yMnR+kd/YkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpRHO-0000000AgHj-0w5d;
	Thu, 30 Jul 2026 13:58:34 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpRHN-0000000AgHP-0xID
	for linux-phy@lists.infradead.org;
	Thu, 30 Jul 2026 13:58:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C96034383C;
	Thu, 30 Jul 2026 13:58:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D0FD1F000E9;
	Thu, 30 Jul 2026 13:58:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785419912;
	bh=1RPw5Bsvh5G/IDrFf7jq3jMC6m/JV32DoTb+VmSrjF4=;
	h=From:Subject:Date:To:Cc;
	b=SpXiF6cuf78g37kngmaeWzbeUC/7bnI1OuuogqstxLOwn/BHnn1A5fLhFVYnNgksZ
	 /BmMHWc4gLvqk+9AFlA1r4T/kGe/2T3AfapNTK6vW1nU0LOIHtA5E0wxlxEGUyz1Ik
	 hICmiXiXhEou6P86EtgAmUj8LaAUEWS1avJFCtQ1+LAn3RrM430GZqCLI6Q6jsvol5
	 +Mas6wfME1xOshlVuvIPlDBVwRiNQxNjN5HhpkaYRYuOgILVbcYVHYsyZjmBAxKd0r
	 L40nN1aeGSWK+Zb4YVU1XLU3kia3GFkA1KXZXY/s9pSECtuZ4O+MxXyTHEvjQPn49x
	 cQZWljK2D3bWg==
From: Mattijs Korpershoek <mkorpershoek@kernel.org>
Subject: [PATCH 0/2] Add support for SA8255P in the phy-qcom-snps-femto-v2
 phy driver
Date: Thu, 30 Jul 2026 15:58:13 +0200
Message-Id: <20260730-phy-qcom-snps-femto-v2-8255-v1-0-8b8bf5105a68@kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMwQ6CMAwA0F8hPdukNMDEXzEcdHYyE7a5IsEQ/
 t2px3d5G6hkLwqnaoMsi1cfQ0F9qMCOl3AX9LdiYOKODPeYxjc+bZxQQ1J0Ms0RF8Yjty325Jy
 YzjRENZQhZXF+/e3n4W99XR9i528J+/4BuPflVn8AAAA=
X-Change-ID: 20260729-phy-qcom-snps-femto-v2-8255-90ffe7674001
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Mattijs Korpershoek <mkorpershoek@kernel.org>, 
 Sriram Dash <quic_sriramd@quicinc.com>
X-Mailer: b4 0.16-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=2057;
 i=mkorpershoek@kernel.org; h=from:subject:message-id;
 bh=XebX5I8rLIYh1NuqEmfYZFPtBrOCqPU7dXaj+0PWtXs=;
 b=owEBbQGS/pANAwAKARkNHbRmThk1AcsmYgBqa1iFBtmTRsUUS7/xlY4D7Up+s+AtmbGWSzR3Z
 VGt/wkxqNaJATMEAAEKAB0WIQQu6UKnth9qvlMTrQAZDR20Zk4ZNQUCamtYhQAKCRAZDR20Zk4Z
 NbXZB/9JPzfUkJ3Y4PyhB0g/nYBGtAeBVwPU3rWtQ/W6VSeBMZsGt12zAMCIaJA21PyKrJm9cJO
 ndRjftc/s+IxT4/yvyRgFj8PuCvirv4xnKrTt7qEwDKrry+rCDO2GrRLP3JaGR2s3PLfTxNuMBn
 rc9lWJ0U4KtTZbY8VB+JU8tsldIbIjy7BLdmn2UiHCWepFTyDwbyw9nUQbNAUieGeGh+zAmdOSr
 mJcaSCcVBPmHToG9EkoPV6Hucd+ohuYtbAEqLyjfCSkW2Vjh9nKKskkNTSiGAgUBJyXMqdcm9fI
 IHD9pUVC+bLYDAGtQbPNz9ZiDHpNyATZw46o7LqIg4B+op1I
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
Mattijs Korpershoek (1):
      dt-bindings: phy: Add sa8255p high-speed USB PHY

Sriram Dash (1):
      phy: qcom-snps-femto-v2: Add support for SA8255P

 .../bindings/phy/qcom,sa8255p-usb-hs-phy.yaml      |  52 +++++++++
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c      | 126 +++++++++++++++++++--
 2 files changed, 169 insertions(+), 9 deletions(-)
---
base-commit: 3652b49adac266a3d27cb41cdfdb7d8790fc3633
change-id: 20260729-phy-qcom-snps-femto-v2-8255-90ffe7674001

Best regards,
--  
Mattijs Korpershoek <mkorpershoek@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
