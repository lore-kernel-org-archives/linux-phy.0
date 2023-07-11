Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0647C001DC
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 12:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3S30pLJTeDFtyXwII+DT5Jl12ycaX8W6tzgTo8d7R1s=; b=0cGD2aCF70ufCC
	98aC1xNVzVz8e7DPn/ix/3vJitEkxQAyAdYL1OfAieUKG9p99AjBZkVS+300DJtGQLNBAjukZwCZl
	mJbVqAUXm8InZID86CZ1171/9Y58rr8r3xfLqSGEHGcnVqbgPOf3dfZ+wMXvjKa2GTPQ9ajSlmJME
	EI82m6g29+nBBuSaJgyY8IUEuXSOYNmiiqw17tQFyH7REr5J8UQ+nP/qXgCwloqLXnURRTPzEax4i
	Jy47pChEdvodu3tHtcppj99ANBryq8ZlNnmgFcGXRz8F/LEGRI3QCOtb4wRigFf1gNYX132OySLCT
	7JB6KXEkX32Y7TnmBfGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJCBG-00Epmz-1W;
	Tue, 11 Jul 2023 12:09:22 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJCBE-00EplH-1G
	for linux-phy@lists.infradead.org;
	Tue, 11 Jul 2023 12:09:21 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-4f9fdb0ef35so9097672e87.0
        for <linux-phy@lists.infradead.org>; Tue, 11 Jul 2023 05:09:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689077357; x=1691669357;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TeaN1f+ghedlkK+LVcPEZpCD/0S5oxq1YSE0F/H62AY=;
        b=E1F6tAjkCMrumjeH93rBvrJrPz7T45uTi9GxiD84n4neP68QxZc6L5AS9lLhzz3iUW
         ecH26oJXb4AaoSyF/pQKHFXugNf9FIRbTaES0z/je5PbxyHKqPKl7KD/cEBJA5us7dai
         +oaqDhqapwRMzW/Tq3rRT8yTMm4U8uAzUo1kHqTJtf8C1hKBOjrKfjVvNM/5OaeoozRt
         U6LzelNjWsEEZ3IcURmXoLBDWXxBHAZdxFbKG/IzZOCyrwacodbWFx4Tms6RLPoi3q/i
         bYFqmVT6ekXz9Wu+Ur7QvPrYBi2HGcilxi2dfjXS4Xw/hH+RNWUEiowpavQDTCAecPe8
         c86w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689077357; x=1691669357;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TeaN1f+ghedlkK+LVcPEZpCD/0S5oxq1YSE0F/H62AY=;
        b=h8hTrxMzvcnnq6nDLF1dDAiAmIcUXjFuHomL0n2SJ3YlkZtSfHwrCCMABslPR3Rejb
         6Ub+aMmWDHVA0kkORN45QwpjpEc4oIRl6IOu+etYs00CTzBac5Oc6sZK9ybEhjrhPcS+
         79I3wMaoHzuKWvuEISyW2A3QsMCRbSy6K5orhsHUemmzu1CvYZT3IK0ZtPqPjTEWjGuJ
         1f2FwPEXOct9JePfW4o+W+PyIbqBsNJRhgLYQFjldXvg7gI0m1UjdCCT0fyLn02mEsmN
         X6crw2Oi26K1PuV9VjGtelgKDcxlO9EqFJPWb+XxJMHculk1w8HitsXRYWlMUHgzO1qn
         yeew==
X-Gm-Message-State: ABy/qLYh7KXcsF2Ls9rQCEASN/zAfIZBVthuWvzuaqgUdHd1b7JjRCUk
	JvcBSZizxwEDEHBu+3jDmxUH7Q==
X-Google-Smtp-Source: APBJJlE7WeJ3yWB+z/BuECY6OnDLn2qChRgUx1dpuYqONRQUxUMqqHYI4XzjpfZFo2AMgDwTabTH0A==
X-Received: by 2002:a19:5e51:0:b0:4fb:7618:bac7 with SMTP id z17-20020a195e51000000b004fb7618bac7mr11218680lfi.64.1689077357312;
        Tue, 11 Jul 2023 05:09:17 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h22-20020ac25976000000b004fbbd818568sm291447lfp.137.2023.07.11.05.09.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jul 2023 05:09:16 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v4 00/10] phy: qcom-qmp-combo: convert to newer style of bindings
Date: Tue, 11 Jul 2023 15:09:06 +0300
Message-Id: <20230711120916.4165894-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_050920_429190_9A2B0CE8 
X-CRM114-Status: UNSURE (   9.81  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Reviewing several patchsets for newer platforms made me understand that
having two styles of QMP PHY bindings causes confusion. Despite binding
documents having notes telling that old bindings should be used for
older platforms, it is too easy to attempt adding new platform with
older QMP PHY binding. Thus let's have just a single documented style of
bindings.

Changes since v3:
- Rebased on top of phy/next
- Squashed sm8150 changes from [1] (which were not picked up) with the
  sm8150 patch from this patchset.

Changes since v2:
 - Rebased on top of phy/next and updated [1]

Changes since v1:
 - Split large patchset into smaller parts
 - Reworked sm8150 too (following changes in [1])
 - Unified bindings with the existing ones
   - use shared list of clocks,
   - added sc7180 as a first grade entry
   - dropped useless descriptions
   - removed ref_clk_src clock
   - dropped second example

[1] https://lore.kernel.org/linux-phy/20230521195420.12454-1-dmitry.baryshkov@linaro.org/

Dmitry Baryshkov (10):
  dt-bindings: phy: migrate combo QMP PHY bindings to
    qcom,sc8280xp-qmp-usb43dp-phy.yaml
  phy: qcom-qmp-combo: simplify clock handling
  phy: qcom-qmp-combo: populate offsets for all combo PHYs
  phy: qcom-qmp-combo: add qcom,sc7280-qmp-usb3-dp-phy compat entry
  arm64: dts: qcom: sc7180: switch USB+DP QMP PHY to new style of
    bindings
  arm64: dts: qcom: sc7280: link usb3_phy_wrapper_gcc_usb30_pipe_clk
  arm64: dts: qcom: sc7280: switch USB+DP QMP PHY to new style of
    bindings
  arm64: dts: qcom: sdm845: switch USB+DP QMP PHY to new style of
    bindings
  arm64: dts: qcom: sm8150: switch USB+DP QMP PHY to new style of
    bindings
  arm64: dts: qcom: sm8250: switch USB+DP QMP PHY to new style of
    bindings

 .../phy/qcom,sc7180-qmp-usb3-dp-phy.yaml      | 284 ------------------
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    |  46 ++-
 arch/arm64/boot/dts/qcom/sc7180.dtsi          |  57 ++--
 arch/arm64/boot/dts/qcom/sc7280.dtsi          |  60 ++--
 arch/arm64/boot/dts/qcom/sdm845.dtsi          |  57 ++--
 arch/arm64/boot/dts/qcom/sm8150.dtsi          |  44 ++-
 arch/arm64/boot/dts/qcom/sm8250.dtsi          |  49 +--
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     |  79 +++--
 8 files changed, 168 insertions(+), 508 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
