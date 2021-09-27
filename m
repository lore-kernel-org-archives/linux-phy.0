Return-Path: <SRS0=YzZ0=OR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6C8CC433F5
	for <linux-phy@archiver.kernel.org>; Mon, 27 Sep 2021 04:49:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 851DF6113D
	for <linux-phy@archiver.kernel.org>; Mon, 27 Sep 2021 04:49:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 851DF6113D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g/4Cb680ulHjU2Bsj8DXAhsyNs0U4BAjP6pin+GH0pY=; b=vHyizh5IdcsGFb
	u/XG+O+1AZzsTS38IG13bzWER1BJ2JcoqUfyKDz60hr9Ff8mYJbREUIuzWAnu/4p03dOGSuSItEkD
	5dHcPpiGssg1cRSn7RIB+UoMbHFTPnFZ8jYzV6mqVcVvk2BCJZzehq55QdKry6I+j1TA2yWj2TQuG
	ho5knb8xmSifqhx+UTsJLjhzFW7L2FQbRPjndCMqTDmvP2ZXe+pEWRnUMzjtST6yemxVUKjS7rV61
	Pl6B6xABajdhbg33tqRzXngDzRC5XdXZyyVVmtnTEckRTtg0ujUJaB3UditOr+K0BPKD3ha/FX2v7
	wN7Aefqfvm/TESxws+kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mUiZh-001Yk1-Uu; Mon, 27 Sep 2021 04:49:09 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mUiZe-001YjK-NL
 for linux-phy@lists.infradead.org; Mon, 27 Sep 2021 04:49:08 +0000
Received: by mail-pj1-x1029.google.com with SMTP id k23so11569797pji.0
 for <linux-phy@lists.infradead.org>; Sun, 26 Sep 2021 21:49:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=VCLJxOMghD8RaVbA5dWN+yrWOdqhM/FitAV43QdnWcA=;
 b=v4HWkol1Zq2VhH4qtQtAVKhBp7KIbVoceST9LFQCBxkv5ECnN3dX4CfY7bPWod1Rtq
 tKg77idmeZtxwyenmots5LLnqoUaHUaBhc+7ctWVnzBaOLr6HcH0Oixi2feVWeQdbaE1
 NxvHcpNxWWbjTJ0THXDepb6qIDTtiG3VLVglRMPB4fs3eGiD8t32VSZom1cohHRDOQzB
 ttJI6ckSJVfTGaPAUbCRnQ9uhTc9vu0h9r8GV1vRcM/TrBZCrUDKIF+i6fYajSYdnpgk
 KhYC8xqA0DqP0QymE8eRlf875rb16Ib6/FpRj6Vt9Gbyp+xXWifPabTnoADgG67KoLpy
 Nlhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=VCLJxOMghD8RaVbA5dWN+yrWOdqhM/FitAV43QdnWcA=;
 b=6hs/ethNfLy9J4xy5HjFAfLet0WHKGW2z6onAi+9qawnfQgHT/Rg2k6ArYKdwGfDwB
 kDaE4f97bSTgUuhQxKr84ZMW0VkhYEh6pf9H+quARlST1oVnjf8E5eVJuglLj1xd7fDE
 Jv4lPWffUWsVwt1jQwQ7RUlvQscxgg+84Fi/CruazOuejmIBaP00DUz9/baprlzGXLRa
 pqxrn02t+GTXiFbIcjiqAj1zqYuxcY+xWcwhLdIO4EbDkPlXQMOleFNw2sGFnk/PATIK
 kNCAlX8XoqURzl8JCkgTh2Ec4i46B3QkX6PVATNA4VfJm8fvJlP/hB0eQiNaoI5KgVvU
 txdA==
X-Gm-Message-State: AOAM530+3TnY5LTOfKzemNXGFhOElLO9qbfm4UaBOzLJd7DoG4VrLivY
 rIaHjYHb1lsP0MHHNMsP9836+Q==
X-Google-Smtp-Source: ABdhPJwYodALpHMpng2H+jCiibiIx/t6qGhMZwNj8Bl+wKK+zEAM+9zWZtFnqmIdlCoxV1/V66vOZA==
X-Received: by 2002:a17:90a:b382:: with SMTP id
 e2mr11819780pjr.119.1632718145282; 
 Sun, 26 Sep 2021 21:49:05 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com.
 [80.251.214.228])
 by smtp.gmail.com with ESMTPSA id o8sm14550651pjh.19.2021.09.26.21.49.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Sep 2021 21:49:04 -0700 (PDT)
From: Shawn Guo <shawn.guo@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Manu Gautam <mgautam@codeaurora.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
 Jami Kettunen <jamipkettunen@gmail.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 0/3] Add missing vdd-supply for QUSB2 PHY
Date: Mon, 27 Sep 2021 12:48:21 +0800
Message-Id: <20210927044824.30246-1-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210926_214906_796022_7CDB315D 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

The series adds missing vdd-supply for QUSB2 PHY which is required for
digital circuit.  The driver works right now likely because firmware
already sets it up.  Add it to bindings, driver and DTS that miss the
supply.

It should not cause problem for existing DTBs:
- SC7180, SDM630, SDM845 based platforms already specified vdd-supply
  in the DTBs.
- MSM8996 and MSM8998 platform DTBs miss vdd-supply, but dummy regulator
  will ensure QUSB2 PHY driver works as before on these platforms.


Shawn Guo (3):
  dt-bindings: phy: qcom,qusb2: Add missing vdd-supply
  phy: qcom-qusb2: Add missing vdd supply
  arm64: dts: qcom: Add missing vdd-supply for QUSB2 PHY

 Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 6 ++++++
 arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi              | 2 ++
 arch/arm64/boot/dts/qcom/msm8996-sony-xperia-tone.dtsi    | 1 +
 arch/arm64/boot/dts/qcom/msm8998-clamshell.dtsi           | 1 +
 arch/arm64/boot/dts/qcom/msm8998-oneplus-common.dtsi      | 1 +
 drivers/phy/qualcomm/phy-qcom-qusb2.c                     | 2 +-
 6 files changed, 12 insertions(+), 1 deletion(-)

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
