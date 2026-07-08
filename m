Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0353C43602
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jul 2026 12:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YtFeHjZvEhRu7y3b4lzG3QtOKtrLOPP2sWthND+eMcA=; b=rp6gLbRUkcTFKM
	397FRM2UdhM29m0635GZ8EM3CTXqpWDzCNonM+ZCb5fzWgdIinJzku7gKRGkZ7iATMVrs8Cc17d5G
	prRlmXXLU1ty5rF1ALERlzgN0tbGmV2EULJPXlMNreiZ8sTqs4LJ4V77IXp+qT7U8QrjAfWGFkVPL
	/Y9XLFMAHSIXHaiMnQWnsjDASwN32UZ/+lDkURrH6b/ZiGaq+qtiU9LSqmzDtSZWOEiNu1HCNwxTl
	1LW/w1VRF7ZXXHJWsPhzQGC4J7fwE16hDUHyS2CUuahgOrJl0Bxs3hk5fI2+B70F3sK7ABDcUvqDH
	WLndX+LijM0m2K9Deu8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whRoU-0000000H9Te-31kz;
	Wed, 08 Jul 2026 12:55:42 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whRoS-0000000H9TF-3Lrw
	for linux-phy@lists.infradead.org;
	Wed, 08 Jul 2026 12:55:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 02E216001D;
	Wed,  8 Jul 2026 12:55:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0AC541F000E9;
	Wed,  8 Jul 2026 12:55:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783515339;
	bh=ut3UarkY4E2iVItnOqyLBKMNCQFGt9UFxYJzpkOH7so=;
	h=From:Subject:Date:To:Cc;
	b=Ye24f+KxIRIZcYkrxtfHqyagQyY4jPqcI0Av7LPB9khBJ/6nVoGJt2VeIO9Zol2WI
	 i7C9TJ/smYnJpk8pIPqdPIeLOp3w+W7h3cnlmvNe2uNgWv6wNHAM+9tg100nGUdP9F
	 q4sv5RkzOpmAdhOKLd9+bN1Z55no+6mxVWv0aBmiUHYPajaDBTQJxmFVR7WF4dNXsr
	 JPyaOpsLGrArouu32uPl/H+u5fHjIHOXuNkOxOyKPAact9InxTYzH0g4LEik9mrXX+
	 xPqYsHv9+VMGZM6a/wPcrezGiuJoh9iv0L5AhRvLOYRdfXhXHpYvlgUsEsCYqiPhwF
	 bg9xr97jXsoqQ==
From: Mattijs Korpershoek <mkorpershoek@kernel.org>
Subject: [PATCH 0/2] Add support for SA8255P in the qcom-qmp-usb phy driver
Date: Wed, 08 Jul 2026 14:54:19 +0200
Message-Id: <20260708-phy-qcom-qmp-usb-8255-v1-0-8d852a9535db@kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMQQ6CMBBA0auQWTtJbQK0XsW4oMMgYwKUDhAN4
 e5WWb7F/zsoJ2GFW7FD4k1UpjHjeimA+mZ8MkqbDdbYytTGYew/ONM04DxEXDWgs2WJ3rvKm5r
 aQB5yGxN38v5/74/TuoYX0/KbwXF8AYOpzwF5AAAA
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2217;
 i=mkorpershoek@kernel.org; h=from:subject:message-id;
 bh=GVKu0sKv6JR2SFwPMl2GMGykm0l1ivf7NRCnKBDggFM=;
 b=owEBbQGS/pANAwAKARkNHbRmThk1AcsmYgBqTkiZMdGzmjxZQHq+vroXk75KX+Q9H0U0bgLeG
 /uB9UlOGlOJATMEAAEKAB0WIQQu6UKnth9qvlMTrQAZDR20Zk4ZNQUCak5ImQAKCRAZDR20Zk4Z
 NWjPCADH7ve69Tmvl67MC++sdD5RCijoAoxlCWG5cmtcRtk54UbA6x+6RTXqY5G/nSMKRa1hEDd
 eHg8rM03dAbwBCKdM9WPmRfuF1gy7mSaTWulmkkZ3J2PTu9x6XGzFZIeD9G/8lHRGbSgycKQRM9
 AqgKzwKtmB0oM3jHlhq9By2REyaPQyCWrF4eDMZ11dygIg4bzS+Gl58tjvJDAThyC4D1KkUtksD
 QZSCjHYNrMisE9nqAwQDMcWwMGQT7V5KOqlRmRFqilFWgUBiJaGMr8RFr5XhQK0iJtrplnGDC40
 lnHDa6umkXlb4in/JuL5xFm549FZl73/VWfYcKOQ8Eomf0UX
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
Mattijs Korpershoek (1):
      dt-bindings: phy: qcom,sc8280xp-qmp-usb3-uni: Add SA8255P USB PHY

Sriram Dash (1):
      phy: qcom: qmp-usb: Add support for SA8255P

 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        |  92 +++++++++--
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c            | 175 ++++++++++++++++++---
 2 files changed, 238 insertions(+), 29 deletions(-)
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
