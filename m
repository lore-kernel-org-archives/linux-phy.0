Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98CAEC44508
	for <linux-phy@archiver.kernel.org>; Wed, 15 Jul 2026 06:39:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xe4Cz4y5pkxP4vgJ+uzjPdE5vUlsy15WFYZCZoid7o0=; b=xhkNGNMTMO74hJ
	tWbfdClLKAmJPEGKbX1dtVtFXL5vcIKtwPNDmGyLIN+llq5By6TXJkwWu/8Z7RX8uq5p95Ct4BguP
	ejLEGux/0Jba59ljEnVqo5bn0CXD7OnzvjI2wiyUJmsmwckNeGzPkQvSX5qKh5gJbUVdZ7GF903Dp
	n4/Leke7GNqiiTOZ5qZFlqoYQ7w+bTRFem0biq/VEZo1Mmd9U+T5kGe/Ko9g+4HUumnvrvtsgpwa1
	DDmHtV1CdDCBXz9PFEzu+dchdkz4zjI7oQwgzhtwcnj3qNFraLytR2PkQUD+n4MNUOjnPCxs14snY
	oqj1DCT4+AdJi0DSCQ1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjtGw-0000000Dv7S-0jbX;
	Wed, 15 Jul 2026 06:39:10 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjtGu-0000000Dv6x-0kyK
	for linux-phy@lists.infradead.org;
	Wed, 15 Jul 2026 06:39:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5DC776111A;
	Wed, 15 Jul 2026 06:39:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 129BBC2BCB7;
	Wed, 15 Jul 2026 06:39:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784097547;
	bh=DXCPklQlaMdsbJnYQs6c8poFEg6YyAXU0DXLOMPqOgY=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=q4zw1KEy127u+sxMzbAsYqHSxQZX/o9ZRyAn0zz5KcUMJ3nASgotlWO80C9gdG3T3
	 71BKE4mTUWHY5fJO1bKHa9JiMJKI+vgdHLv1uiLUe5su0d7+lX7V+drRQGqLw+kgCf
	 TX49WOdAGJXw/lR/T1anubfgzBV7s215c1HrqoLMlT7fCnuynr05o4YHe38Z6g3pIY
	 /vQK1wWHXMZHaZ6a0x8UMKVsj1+d1tVIKwZcTwP5UQ1r7qwXjO2MWUBoYeyB/dCV2K
	 B5elniRZxfGZxKC73yu2YZK9ferxqQqr+5Id4yaErFxccqJk89sz9Fx2OBEct4xh4b
	 5rHnmB4t+p7Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E96B0C44501;
	Wed, 15 Jul 2026 06:39:06 +0000 (UTC)
From: Esteban Urrutia via B4 Relay <devnull+esteuwu.proton.me@kernel.org>
Subject: [PATCH v2 0/3] Initial PCIe0 PHY support for SM8475
Date: Wed, 15 Jul 2026 02:37:45 -0400
Message-Id: <20260715-sm8475-bup-pcie-v2-0-48bd91a19abf@proton.me>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/22NQQ6CMBBFr0Jm7RhaaousvIdhYesoYwJtWiAaw
 t2luHX5kvffXyBRZErQFAtEmjmxHzaQhwJcdxuehHzfGGQpdWmEwtTXypzQTgGDY8KKKnPWpIV
 TBNsqRHrwey9e2x+nyb7IjTmTjY7T6ONnv5xF9v7WZ4ElWlkbYUlaRe4Soh/9cOwJ2nVdv1tUO
 PK7AAAA
X-Change-ID: 20260714-sm8475-bup-pcie-3e3796e61c4e
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 phone-devel@vger.kernel.org, Esteban Urrutia <esteuwu@proton.me>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784097545; l=1058;
 i=esteuwu@proton.me; s=20260622; h=from:subject:message-id;
 bh=DXCPklQlaMdsbJnYQs6c8poFEg6YyAXU0DXLOMPqOgY=;
 b=0goYS6cTjDxMQMw2HZnPcWJ/7uXDiMnvjqOFKfhc6a3+SijbKl60TY0IUojz1BqgY26QZBANY
 IHaycNsKF9PCKsLJrOhXPvH4oT38mzOv2/4uNxg10W06GxTsfuQ1N7N
X-Developer-Key: i=esteuwu@proton.me; a=ed25519;
 pk=wToFt4mOAWkzbqb15Ye1hrhevI13vK9BcMUFiQ/me1M=
X-Endpoint-Received: by B4 Relay for esteuwu@proton.me/20260622 with
 auth_id=835
X-Original-From: Esteban Urrutia <esteuwu@proton.me>
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
Reply-To: esteuwu@proton.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

This series adds support for the PCIe0 PHY found in the SM8475 SoC.
The initialization sequence varies noticeably when compared to the one used
in the SM8450 SoC, hence the need to add support for this PHY.

Signed-off-by: Esteban Urrutia <esteuwu@proton.me>
---
Changes in v2:
- Split series in subseries (pcie, usbss)
  - Sorry, it should have been like this from the start!
- Link to v1: https://patch.msgid.link/20260714-sm8475-bup-v1-0-b2871be2b4ec@proton.me

---
Esteban Urrutia (3):
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add SM8475 QMP PHY
      phy: qcom: qmp-pcie: Add pcs_lane1 offset to V5 offsets
      phy: qcom: qmp-pcie: Add support for SM8475 Gen3x1 PCIe0 port

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |   2 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 109 +++++++++++++++++++++
 2 files changed, 111 insertions(+)
---
base-commit: cc2b5f627e8ccbae1188ef2d8be3e451d7f933a5
change-id: 20260714-sm8475-bup-pcie-3e3796e61c4e

Best regards,
--  
Esteban Urrutia <esteuwu@proton.me>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
