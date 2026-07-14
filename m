Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20D9EC44501
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jul 2026 06:36:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=r/aKLANzoJTJ+RSeVDxlL1EOnXTClA4JyBYDVFS7RCs=; b=CLT2cNwXiEMDoA
	py2vvPT+mpDYS30CSa+o71sHMEMAD5VFIjNd2dtC6zGwgrw2fb3OtD2Jafu93sSh8BY1xvdTLtXY0
	a2ui1zkoZAOEv5n8uaOBPct2jIuJojLwYQ5Qf1wM7y6+MifNzGfMHk5xzBkPTy428BqHklQe0at/E
	tHkWjulJjHY7pNmFYBnGi0izYCW81XC1ZPeCID008LMRPelQaVJfnyr/eNlFFd4so5BpZHGxp3ChL
	+t7hzelh75JjOqSyHrpG11yDOujl3NxAyBMPdzYG1xPU8nSYPupyPCfU+3B1rNMYjGMkdR8yH+FGO
	Wk+/jprkLXwuSQiqhVeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjWlE-0000000B4Ag-2bJ1;
	Tue, 14 Jul 2026 06:36:56 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjWlD-0000000B49n-3n7i
	for linux-phy@lists.infradead.org;
	Tue, 14 Jul 2026 06:36:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4A08841A40;
	Tue, 14 Jul 2026 06:36:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 267C0C2BCB8;
	Tue, 14 Jul 2026 06:36:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784011015;
	bh=loOVyJQdNo2C/7b6M2ZU7HXekbM+vRvrsTr0PcS5i0A=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=cbsZ7DbARYYRKCkPeeeSd+fbI4nSJXyAanHl+adiOga5VyzRQaOB6NMy0Ri7C8zXK
	 Laoy22nWdcdoExHig7apqoWZ7WAkQ0sJtIwXhSe+gUCuPHFcC77E7EVeZkMC0jlwsm
	 pQ7Q3JyBYt6OD0+uiSk2Wx+LmfKf4wcwteaowGQ6YzxNrTRRWTcsy/Nw0uX54LjlQg
	 K0Xm44KjH/3tVrA9itvShiuVJc78JsWYx5uf01EahMissc5AcW5UPQT43n0Ip726x3
	 2yKrjpgPFJNbdhB5exPnWNk7De/4G6RZI8Ccvmif3IsibNgRJHqimAFBBH1rX0lPkZ
	 GLLBQBpZrHp8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 072D8C43458;
	Tue, 14 Jul 2026 06:36:55 +0000 (UTC)
From: Esteban Urrutia via B4 Relay <devnull+esteuwu.proton.me@kernel.org>
Subject: [PATCH 0/6] Initial PCIe0 and QMP USB PHYs support for SM8475
Date: Tue, 14 Jul 2026 02:36:38 -0400
Message-Id: <20260714-sm8475-bup-v1-0-b2871be2b4ec@proton.me>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMTQ5AMBBA4avIrDWpRrVxFbHQGozETzqIRNxds
 fwW713AGAgZyuSCgAcxLXNElibgh2buUVAbDUqqQposFzzZ3Gjh9lVob2WrO+mUayAGa8COzm9
 W1b95dyP67T3AfT9v8AbObgAAAA==
X-Change-ID: 20260714-sm8475-bup-5c80d5f0b2ba
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 phone-devel@vger.kernel.org, Esteban Urrutia <esteuwu@proton.me>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784011013; l=1233;
 i=esteuwu@proton.me; s=20260622; h=from:subject:message-id;
 bh=loOVyJQdNo2C/7b6M2ZU7HXekbM+vRvrsTr0PcS5i0A=;
 b=2itTSQOEtB51eyLG5Ly2sH889FWi31qrOSgVL8uSfy7U8P+fKSBTFKWN5YEkKPK7gJs2Df/H2
 dOWy4a03DFPAiwLJ2r6Y0JDnVtWIDgpSzBNshzM3bkrsB1POy+5cDDL
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

This series adds support for both the PCIe0 and the QMP USB PHYs which
can be found on the SM8475 SoC.
The initialization sequences vary noticeably when compared to the ones
used in the SM8450 SoC, hence the need to add support for these PHYs.

Signed-off-by: Esteban Urrutia <esteuwu@proton.me>
---
Esteban Urrutia (6):
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add SM8475 QMP PHY
      phy: qcom: qmp-pcie: Add pcs_lane1 offset to V5 offsets
      phy: qcom: qmp-pcie: Add support for SM8475 Gen3x1 PCIe0 port
      dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add SM8475 QMP PHY
      phy: qcom: qmp-combo: Add serdes and RBR/HBR/HBR2/HBR3 tables for v1 DP PLLs
      phy: qcom: qmp-combo: Add SM8475 support

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |   2 +
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |   1 +
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 259 +++++++++++++++++----
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 109 +++++++++
 4 files changed, 326 insertions(+), 45 deletions(-)
---
base-commit: 49362394dad7df66c274c867a271394c10ca2bb8
change-id: 20260714-sm8475-bup-5c80d5f0b2ba

Best regards,
--  
Esteban Urrutia <esteuwu@proton.me>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
