Return-Path: <SRS0=m7K2=OS=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 711BAC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 28 Sep 2021 02:20:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 353DD61260
	for <linux-phy@archiver.kernel.org>; Tue, 28 Sep 2021 02:20:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 353DD61260
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jnF9y8GGHCTBKGkdPA5yjcgAq8JQD7W2yyJZ+LdSay8=; b=zAhMnAlmBf0Fk+
	E5YvPjivGicrKP/2Swe6rLgFZsvhkCTBIw1p1M2kf5hsXH5jY0AW5wlF1bJMI/+RAx6uRM3l4OAbg
	I3ONCmTF/8UPscoxwpzsEOY57Az9NaF0rDcqxylQZjP0jWAwoevwyJNiJRWkO6Ojlpy/Y73ozB+of
	ho/4/WuVC8550WPpPZTv+LHftkDTOrFP4SUVbswfuZ+XhUO0/Bcrq56MpX+mYWPCUfR6Y018Dmy5p
	4FK8cugsHVL+DL1z9eyXF/tJICm1CKsUbwhpFL9zaH5uJNGO6vFLuBzNzapHgjHBKeFVAMPeVvesn
	VJvSDQU59ygKR/P57iTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mV2jI-005FcQ-Ph; Tue, 28 Sep 2021 02:20:24 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mV2jF-005Fb8-As
 for linux-phy@lists.infradead.org; Tue, 28 Sep 2021 02:20:22 +0000
Received: by mail-pf1-x431.google.com with SMTP id q23so17578033pfs.9
 for <linux-phy@lists.infradead.org>; Mon, 27 Sep 2021 19:20:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=kg/GzF/sdW0p0vvfKH2R41tEISnLDtHPzxNdShxqvM8=;
 b=lnEiCT4W2Vt81xX2B3QBWSajzRS0BHhPdyPDg26pxACWSFyjBXtVsl46QeDm39PLvH
 6ddbtIh7sK2NOsWb9ER08iCoqfUFsHxRHOmoGH1lzsLvkUPn0u/n0UIQUvVWQlweW1RB
 wixpgeD/BVudgMhrgkqqxqq8SHWDqCX9glVYjOhHjVfCjjmeWuPMAVvRoxETd/DU1kq0
 xQZLQSTvD64o2x1RCjK4gq1pZfp6pVq11nYoNR0BvoeocH9QSvdal6ymhBlZaBp8OFUN
 a9+Nmn5xcitwz8WrFEUrTdtE/lE6p0ioEPmS7AjxGyE6F32q7+FNO5BL5o9xKUQ6C7cE
 Qv1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=kg/GzF/sdW0p0vvfKH2R41tEISnLDtHPzxNdShxqvM8=;
 b=b3PZFLsIg6xcjLg4xC994G3umYOK6Kd9grUwoDoLh5OOco8KLfqdlzttNZ3MCIkTj1
 R+Ea3cx3jfup6e/iqut+3CDpwazCovoR6LpbY3A4m81++YU+Fdk5wHWn2BQs6ktQ6ZK6
 dwBL/2yIL2/XTO0drLLkwHOrA8PDxihUab+JnyB6JVouDJpkcpnli95ZrEo9STolTUED
 H5m3chxoD5UWUA0VznoCnDAy7E7rSuZythFVzzxI2Ku64U5T8j0gI8cI1qubvHEQ8Tys
 2NtUe5GdWuySPEpYi9y117It46XmoWHQMqS+2tN4oz1a2c/lLoqnjb+OB+CVx8a9+zvC
 Og6A==
X-Gm-Message-State: AOAM532XL4mVzIhcw7/Fn7r641AUQ3SKmK/rctCew76RXXK5NXw2Xzoh
 S131YQmkLnZUq0idxmclJkGRWg==
X-Google-Smtp-Source: ABdhPJwm2OGAXCfz1pcfsnrhgPp8cc3IJ9EYc8O3kZGQEbShcjrda5y+PfksmciTxjhD3HIQPlBtgA==
X-Received: by 2002:a65:6a0a:: with SMTP id m10mr2429816pgu.82.1632795620400; 
 Mon, 27 Sep 2021 19:20:20 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com.
 [80.251.214.228])
 by smtp.gmail.com with ESMTPSA id u12sm19178729pgi.21.2021.09.27.19.20.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Sep 2021 19:20:19 -0700 (PDT)
From: Shawn Guo <shawn.guo@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
 Jami Kettunen <jamipkettunen@gmail.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH v2 0/3] Add missing vdd-supply for QUSB2 PHY
Date: Tue, 28 Sep 2021 10:19:59 +0800
Message-Id: <20210928022002.26286-1-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210927_192021_399963_8083C61C 
X-CRM114-Status: GOOD (  10.72  )
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

Changes for v2:
- Correct copy & paste error on vdd-supply name in bindings doc.


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
