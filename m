Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3D78C761AF
	for <linux-phy@archiver.kernel.org>; Sun, 26 Mar 2023 00:57:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MFegr4VuCaYVgyd8umiqxqF0Wk8ojEfJ/x8VPGillBs=; b=gts/5PoSOWNGjp
	uUdrASL2argCQN2D3h04zo06kABPp76XZD4c6HTOiBGwikm6YISKcyZiuhbImKyK9tirVi2QcqOrt
	hRfg+VeCHZhJ1zBsFdSLUDx8W8RIUJD3DU5ONBeF1wSBVzh01w8OUsRpxnK+s4ECOfGRxM/H9JKeg
	zambMS8Bv4W0R+UfeoRnY5S+ax608+JgAj98WdBWNG0VyPRtmYbeL0/233A/kcumAPtHvAY9Jaznh
	Zu78nqhR8a5qJkMqro2MbNTUFcqv/6wKc9pOnGPLIWaDSP2e81ofiynbRBfBkSCnhQ2Myf2/RCkVO
	/iQw2nAB+Zv71mUYWTiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgEhY-007jrq-0m;
	Sun, 26 Mar 2023 00:57:40 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgEhV-007jpN-2b
	for linux-phy@lists.infradead.org;
	Sun, 26 Mar 2023 00:57:39 +0000
Received: by mail-lf1-x12c.google.com with SMTP id c29so6953839lfv.3
        for <linux-phy@lists.infradead.org>; Sat, 25 Mar 2023 17:57:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679792254;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/q5uxzakrQ9teWALDZWu8oA0wDMjc+3lIyuDRspNANo=;
        b=C74peBWEQJTruG6UIdlaxtou9xL4sBaGPZ/az4/ZI9bpJn7atwdFb5gqMqLOEguJ7p
         LRhYdI6nhyFNJLwA1fI7S9ViiR6zxBE1MBnZ+lExb+jrR1swryf/ceUoGHtwPNOleNVX
         9E7fKdJVJibvqF1bKS0/jk/eYgjb3REU4o+udZymMd8TkuUPGSwCd2l+vu9YYGJ8PhPW
         6o7IZ7L5xHYVkf04slj+iLT4s4n2qV5+esYcrX7jvarHKJC4mENK7SmA9Q/olYCsBuYl
         EXe1bcaf6ofWh2uhWH1jwg0e3Ps2N4avg4lIOXdwr/IbSmJbh48lPY3Ps4ktz3xcXWcf
         +YtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679792254;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/q5uxzakrQ9teWALDZWu8oA0wDMjc+3lIyuDRspNANo=;
        b=mX+8f4TCxalkgGkwU7R9F2zS5atmKy9PVZv9axrDrh2/i1Ovz+ny//W2rfVSu1Ww4n
         zv0+34cAebfTpS657nuIQHx+zLiH5VBLMdWqeUBZwr+6fmecBX6EIm4KFPHEseY7W6SS
         +gjxMxnHpxQJXYByf7yNtBAWWpMhLI7JM6PVwht5w/Yy+L30xLTEzy2VlEkIBdlgX2Lr
         T1xLcCje7IQ2Uc1XV19eSfyXkhNF+SRLvAipRBJbVEK5e342F2IqjnkO9AavbjGpVdcw
         VHgGZZ7xVKa7udbyOBIDio1xymaCxvaHIDMeEMdZXn3ePHqPpYOeSxi69IUSfQHIfAzj
         PICA==
X-Gm-Message-State: AAQBX9flLC3jcPrApEgwJ6oQioz1YnekFiYAELJElqLT4+3UD9z6rKO1
	CjxiTLzadVaaBjjCJwFhOMnZBA==
X-Google-Smtp-Source: AKy350YTa6v5GREGlqyOsKRP7D0hdjtMEaUku5fLe5fC2YHQFnH0bpHq2BaThx+/Ve9BXjkQXJU3JQ==
X-Received: by 2002:ac2:5638:0:b0:4dd:fd4e:5a20 with SMTP id b24-20020ac25638000000b004ddfd4e5a20mr2283885lff.58.1679792254120;
        Sat, 25 Mar 2023 17:57:34 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n13-20020ac242cd000000b004e7fa99f3f4sm3996858lfl.265.2023.03.25.17.57.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Mar 2023 17:57:33 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v2 0/9] phy: qcom-qmp-combo: convert to newer style of bindings
Date: Sun, 26 Mar 2023 03:57:24 +0300
Message-Id: <20230326005733.2166354-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230325_175737_913565_BD27B625 
X-CRM114-Status: UNSURE (   8.13  )
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

Dependencies: [1], [2] (for sm8150 changes)

[1] https://lore.kernel.org/linux-arm-msm/20230323144726.1614344-1-dmitry.baryshkov@linaro.org/
[2] https://lore.kernel.org/linux-arm-msm/20230324215550.1966809-1-dmitry.baryshkov@linaro.org/ 

Changes since v1:
 - Split large patchset into smaller parts
 - Reworked sm8150 too (following changes in [2])
 - Unified bindings with the existing ones
   - use shared list of clocks,
   - added sc7180 as a first grade entry
   - dropped useless descriptions
   - removed ref_clk_src clock
   - dropped second example

Dmitry Baryshkov (9):
  dt-bindings: phy: migrate combo QMP PHY bindings to
    qcom,sc8280xp-qmp-usb43dp-phy.yaml
  phy: qcom-qmp-combo: simplify clock handling
  phy: qcom-qmp-combo: populate offsets for all combo PHYs
  phy: qcom-qmp-combo: add qcom,sc7280-qmp-usb3-dp-phy compat entry
  arm64: dts: qcom: sc7180: switch USB+DP QMP PHY to new style of
    bindings
  arm64: dts: qcom: sc7280: switch USB+DP QMP PHY to new style of
    bindings
  arm64: dts: qcom: sdm845: switch USB+DP QMP PHY to new style of
    bindings
  arm64: dts: qcom: sm8150: switch USB+DP QMP PHY to new style of
    bindings
  arm64: dts: qcom: sm8250: switch USB+DP QMP PHY to new style of
    bindings

 .../phy/qcom,sc7180-qmp-usb3-dp-phy.yaml      | 278 ------------------
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    |  45 ++-
 arch/arm64/boot/dts/qcom/sc7180.dtsi          |  57 ++--
 arch/arm64/boot/dts/qcom/sc7280.dtsi          |  57 ++--
 arch/arm64/boot/dts/qcom/sdm845.dtsi          |  57 ++--
 arch/arm64/boot/dts/qcom/sm8150.dtsi          |  48 +--
 arch/arm64/boot/dts/qcom/sm8250.dtsi          |  49 +--
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     |  79 +++--
 8 files changed, 162 insertions(+), 508 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml

-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
