Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F7D5C46CD2
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jan 2024 07:36:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gltfCxxJLUsJJmZ06PMCrujSM8d1GV6xMmamuh/KBrU=; b=wSKjN1+ZZ9u/CO
	Ixh+yy+K8aoJ8x/NMAcyq0CB90qUuqasZSx96T6T0bhbA/Rs/YQRRYApDFMbt7Qn6rkQhEL7eyFJW
	V6eDl5xiTc43b+YhipLFd+NdAOE5hV4LVXtxbHFKJNH4Ylphz9bPzkfyciF2T5fH+lyYSGXpF7KVX
	aiU8LqvooQ7JvsFLT8xlyR/DpFIGmYBOHvc9RavYdX/HTvFAzanMCaeLJ2CpImRpDHTkOdgfPCIED
	Vrk8tGTaAvQiy61M4HVfGIQcJWUo8A3qg+l6NZ8Kl9NAhwsHab/7+QjYuSMAb+x1bBOqetQKm5L1T
	i7LTalenje4/hI6u5oJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSXoV-001sGs-2C;
	Wed, 24 Jan 2024 07:36:47 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSXoT-001sFI-0R
	for linux-phy@lists.infradead.org;
	Wed, 24 Jan 2024 07:36:46 +0000
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-1d780a392fdso4458775ad.3
        for <linux-phy@lists.infradead.org>; Tue, 23 Jan 2024 23:36:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706081803; x=1706686603; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=L0WO0CYl2/04yEtIdQGCOmoVDUFynJRcTJckMO4oOK8=;
        b=VohdZCIOeiz6uyJzD/pCutLuloDroMkPz8D5HTX6UmnUGbLs4TrP0KzN7pFXC+TmrN
         ivDkf4NJkFACEjyEgUj79QK25zjpGxbWSxxU8nvdJUk1MSOxVHWfZirrDmFs87Ah05xE
         0jSMwXGnPNDavpSBfTofeM0x0EvWC9CT/2JQmrNGgX0PSvCg4tQZDdLkp6Xx/UtVsVRR
         CCZDPeWo+tbzwMzj9A6lXYzFNwnsdt0R80iQJPMvPts4bhhF2L0mGtL//QCiWKWb8a6v
         NWRDvnHainsld/9qypi+wpIfP6C2GDtxW3IUwCNfPVvR2H6Vn2ldBQiCBj26qsXhd7hT
         2jFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706081803; x=1706686603;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L0WO0CYl2/04yEtIdQGCOmoVDUFynJRcTJckMO4oOK8=;
        b=Xm1HIOVvLcZrytKgoLa+FWqS1GVotQB7lviQcf/LOBbFHEclj3pltJM1X/6wE+okUE
         sXi2Ol8au6fTAa5LP4pACCoSzipylbErXSe3A2jVCYGXu/l7tNQpKXyaxPvQd8UzEmBb
         11xNKhdewCh8WQuGRSJUAfsOsrLiyMOxXjk/gUd1oNK1WIOqfMtZj43t+ctXc+GGQlpq
         f+/pAQuPU3eSwaFsPbVZUuuQn7Z344Eifc3rl7nD9zMnCeGztxnrB/Q7II0XP4rxfpZw
         VqN3iLclE59HiwpZL7UmX23RuIvrKl9udbx+7ptS2D+k92gjeO4vE4cHV3305AW42GGC
         kl/Q==
X-Gm-Message-State: AOJu0Yy6GWdJHvD6tu9sUrofqz02yZdfrGeLk1Xroga2Ng9JLAJuwL9x
	SyYVE6U5ieNBOF3GNv9Ys9yMtvPMpGcrFmP1P91yVAVjNgHoKXPRvBzd/UHSHA==
X-Google-Smtp-Source: AGHT+IE7CH/SGuc+7xjw0qQvVJK175DYMK2mpFDNjyVSXN13WBOxq7vs5X3Pc3k+0o5j0S8TsBRNpQ==
X-Received: by 2002:a17:902:6bcc:b0:1d7:5c2c:ddc with SMTP id m12-20020a1709026bcc00b001d75c2c0ddcmr361944plt.18.1706081802977;
        Tue, 23 Jan 2024 23:36:42 -0800 (PST)
Received: from [127.0.1.1] ([117.217.189.109])
        by smtp.gmail.com with ESMTPSA id t3-20020a170902b20300b001d726d9f591sm7386982plr.196.2024.01.23.23.36.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 23:36:42 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 00/14] Drop PCIE_AUX_CLK from the PCIe PHY nodes of Qcom
 SoCs
Date: Wed, 24 Jan 2024 13:06:28 +0530
Message-Id: <20240124-pcie-aux-clk-fix-v1-0-d8a4852b6ba6@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAPy9sGUC/x2MQQqAIBAAvxJ7bkFFkvpKdNhsq6WoUAoh/HvSc
 QZmXogchCN01QuBH4lyHgV0XYFf6VgYZSoMRhmrtDF4eWGkO6HfN5wloWrt6J0j3YwEJbsCF/0
 v+yHnD7T8we5iAAAA
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=3936;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=0bAo+DjmDYAuM+Ex9Q8ZUzStygNJaMDJB87PuoEd+ww=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlsL4CPWzo4+SR5Na1gb570X2vt2Ge6JWjdpdWW
 tce2HtyVNiJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbC+AgAKCRBVnxHm/pHO
 9bawB/0XUQu+lUtdV1rIUEuXFT8P8HpJPXTIJ+lMtA5ObbJqnZbcNl5XR1z2LWsg4tAijmB/svb
 I3SpxZ2wvr1h1LqY1+6vAudNWgCeNI7k5vHMVejmkn21iY9hE3eQAPrZsuvudQW2G5h87RIiw1Z
 /iD5b3ipQE+lgrwOjnijxCsE4vfyzk6R0Klh4bNt9mFQ8oQnlhyQACvkSyN3HUkmg6roBveew0/
 edDLruGdzlnODmh0H8uQ2wjn7w9+YSxGNs7w59JMJ4olsgdjXsJbBj7CKDnj0Ep2O99+2/kfaAT
 oqMgEVCk0Csif2L7leVYwb5FcGiFIZzqHDp7sAt/XaUpN32s
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_233645_172130_D6441919 
X-CRM114-Status: GOOD (  18.05  )
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

Hello,

This series fixes a longstanding but recently identified issue on Qcom
platforms regarding the use of PCIE_AUX_CLK in PCIe PHY nodes. While trying
to remove the PCIE_GDSC power domain from the PCIe PHY nodes, Johan reported
[1] that he encountered "gcc_pcie_3b_aux_clk status stuck at 'off'" issue on
the X13s while powering up the PCIe PHY without enabling the PCIE_GDSC.

This confirmed that the "gcc_pcie_3b_aux_clk" depends on PCIE_GDSC. But the
name of the clock implies that it is used by the PCIe controller. So I checked
with Qcom internally and confirmed that this clock belongs to the controller,
not PHY.

But on some SoCs, there is a separate PCIE_PHY_AUX_CLK for the PHY to keep the
link stable during the PCIe L1SS state. But due to some reasons, that clock is
powered by PCIE_GDSC.

So to conclude, PCIE_AUX_CLK belongs to the controller and it depends on
PCIE_GDSC, so it should be removed from the PHY nodes. On the other hand,
PCIE_PHY_AUX_CLK belongs to the PHY and it also depends on the PCIE_GDSC. So for
the PHY instances that require this clock, PCIE_GDSC should be added as a
second power domain along with MX domain which is applicable to all PHYs.

This series removes the PCIE_AUX_CLK from PCIe PHY nodes of all SoCs and also
makes the changes to the bindings to reflect the same. I will also submit a
followup series to fix the PHY power domain across all SoCs.

NOTE: I haven't added the Fixes tag on purpose, since the patches are getting
backported by the stable team whenever the tag is present and if both the
binding and dts patches didn't get backported to a release, then it will cause
ABI break.

- Mani

[1] https://lore.kernel.org/lkml/ZY6sh8nlEUyEfL0u@hovoldconsulting.com/

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
Manivannan Sadhasivam (14):
      dt-bindings: phy: qcom,ipq8074-qmp-pcie: Drop PCIE_AUX_CLK from pcie_phy node
      arm64: dts: qcom: ipq6018: Drop PCIE_AUX_CLK from pcie_phy node
      arm64: dts: qcom: ipq8074: Drop PCIE_AUX_CLK from pcie_phy nodes
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Fix the usage of aux clk
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document missing compatible for SM8350 3x2 PHY
      phy: qcom: qmp-pcie: Add a new compatible for SC7280 SoC
      phy: qcom: qmp-pcie: Add a comment to clarify the use of "aux and "phy_aux" clocks
      arm64: dts: qcom: sc7280: Drop PCIE_AUX_CLK from pcie_phy node
      arm64: dts: qcom: sc8280xp: Drop PCIE_AUX_CLK from pcie_phy nodes
      arm64: dts: qcom: sm8350: Drop PCIE_AUX_CLK from pcie_phy nodes
      arm64: dts: qcom: sm8450: Drop PCIE_AUX_CLK from pcie_phy node
      arm64: dts: qcom: sm8550: Drop PCIE_AUX_CLK from pcie_phy node
      arm64: dts: qcom: sm8650: Drop PCIE_AUX_CLK from pcie_phy node
      arm64: dts: qcom: sa8775p: Drop PCIE_AUX_CLK from pcie_phy nodes

 .../bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml    |  9 +--
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 81 ++++++++++++++--------
 arch/arm64/boot/dts/qcom/ipq6018.dtsi              |  6 +-
 arch/arm64/boot/dts/qcom/ipq8074.dtsi              | 12 ++--
 arch/arm64/boot/dts/qcom/sa8775p.dtsi              | 14 ++--
 arch/arm64/boot/dts/qcom/sc7280.dtsi               |  8 +--
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi             | 25 +++----
 arch/arm64/boot/dts/qcom/sm8350.dtsi               | 10 ++-
 arch/arm64/boot/dts/qcom/sm8450.dtsi               |  6 +-
 arch/arm64/boot/dts/qcom/sm8550.dtsi               |  6 +-
 arch/arm64/boot/dts/qcom/sm8650.dtsi               |  6 +-
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 13 +++-
 12 files changed, 104 insertions(+), 92 deletions(-)
---
base-commit: 6613476e225e090cc9aad49be7fa504e290dd33d
change-id: 20240122-pcie-aux-clk-fix-094bc77a16ba

Best regards,
-- 
Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
