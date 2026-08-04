Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71DACC55ABF
	for <linux-phy@archiver.kernel.org>; Tue,  4 Aug 2026 18:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vKgi+i1cfoE+PrWecVEamR7UONKTMeHrx4CBCTT6gkg=; b=NlN3Mzlt+poNHO
	jzq16brPRrRkHXkr5qsg5PIJdGaw2xbtpdq7QTd//K2C9vfdQPc6NqTuY6bkDRqWnUn9z0a4xI22t
	uFO4hvSkLKt5hKM4dGtpmPmuT+2L9fJYwmpUfJb2qk1+7laOAFVdd+ayQHFxFVnYTzedekS8Vuzcv
	Ib+Vw7UCpw5i1+WIBETgVlUnrXgcqiiae7y8X0krUsFuAKOuUOUUQCL2+fdB4N3pucfUOFwQTi9qV
	Pjs6gZfgHR9D+w50VE3oKwyxEb7TlHiO3pTzB3KnvA/h0cMxc/lNym/3fyqBrIQgAjWsXBvjZkrDO
	HFU3DHo6ZGNQxOa9hnrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrJXP-00000002ZX4-3Dxr;
	Tue, 04 Aug 2026 18:06:51 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrJXO-00000002ZWR-2DoB
	for linux-phy@lists.infradead.org;
	Tue, 04 Aug 2026 18:06:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 89BD060AAB;
	Tue,  4 Aug 2026 18:06:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3D04AC2BCF5;
	Tue,  4 Aug 2026 18:06:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785866809;
	bh=UYYeoFYGn74wN3HBRtWiUwkieFmQvRE83tQm10aXEO8=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=YYpXThW/dImuzbVnljcU+E2waCL8eO2490cqvCs3ii/5IvSpFDdiouFjpmwnCFtq1
	 fkuxINWN253djY3/h0IzbAPeMJB+2lJKcHxA1VjZDBXjsUnG9p1DnDuX2kbx2Y6Hp8
	 zw+F+wICME3JFFE6KsIXTGc+Zaal+0aCSXhIR6IYzDBzCShsQCmT55AqIFJIbGhFQ8
	 XsfYEdkHydTy3DUtFjRFZ1qafB1I9JHP8dExbUlYReWfkuhmqEk1YY/pOeKP5Q8BuT
	 F2nhjTTYhrx/11qbbUDH3zs/H9BrpfD2/z8K1/xvBMe5nLttYJt6VvWNh0kg6/abNC
	 Tjwthut8wipTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 047CCC55822;
	Tue,  4 Aug 2026 18:06:49 +0000 (UTC)
From: Esteban Urrutia via B4 Relay <devnull+esteuwu.proton.me@kernel.org>
Subject: [PATCH RESEND v3 0/2] Initial QMP USB PHY support for SM8475
Date: Tue, 04 Aug 2026 14:06:18 -0400
Message-Id: <20260804-sm8475-bup-usbss-v3-0-9a5b9ebf62de@proton.me>
MIME-Version: 1.0
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 phone-devel@vger.kernel.org, Esteban Urrutia <esteuwu@proton.me>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785866807; l=1598;
 i=esteuwu@proton.me; s=20260622; h=from:subject:message-id;
 bh=UYYeoFYGn74wN3HBRtWiUwkieFmQvRE83tQm10aXEO8=;
 b=L72rDqhmOb52xnhpROj5aEtCiw6jb355ELkkORugIfTAJB/wS+qrYr4lrPMQFOPUreOcjir0n
 SfnUusl8AnKBK41/OEh97Yolcmm5lQxu+NANskHoyOBfHXxirN90Ylo
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

Based on the following patch:
[1] https://lore.kernel.org/all/20260711-sm8450-qol-qmp-v2-2-d14353bd6ff4@proton.me/

This series adds support for the QMP USB PHY found in the SM8475 SoC.
The initialization sequence varies noticeably when compared to the one
used in the SM8450 SoC, hence the need to add support for this PHY.

Signed-off-by: Esteban Urrutia <esteuwu@proton.me>
---
Changes in v3:
- Apply suggestions from Dmitry
- Drop PLL version patch
  - Explain the situation instead of renaming the structs
- Link to v2: https://patch.msgid.link/20260715-sm8475-bup-usbss-v2-0-2d8def39b190@proton.me

Changes in v2:
- Split series in subseries (pcie, usbss)
  - Sorry, it should have been like this from the start!
- Add notice about base commit
  - Reason why calibrate_dp_phy is not present
- Modify referenced swing and pre-emphasis tables
- Move v1 PLL tables to SM8475 support patch
  - Warnings are generated at build time otherwise
- Link to v1: https://patch.msgid.link/20260714-sm8475-bup-v1-0-b2871be2b4ec@proton.me

---
Esteban Urrutia (2):
      dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add SM8475 QMP PHY
      phy: qcom: qmp-combo: Add SM8475 support

 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |   1 +
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 169 +++++++++++++++++++++
 2 files changed, 170 insertions(+)
---
base-commit: 30b4a96d99ce8447f4589af6f7da35d4b43e0af6
change-id: 20260714-sm8475-bup-usbss-e68349473f6e

Best regards,
--
Esteban Urrutia <esteuwu@proton.me>
-- 
Esteban Urrutia <esteuwu@proton.me>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
