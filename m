Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74D49C00144
	for <linux-phy@archiver.kernel.org>; Mon, 30 Oct 2023 09:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8ZaP+/TlTci7f8Ue8OugT/zOtr3J0LtWllLn8mN0wTQ=; b=pMOS+ZdOzL3I8b
	t00KbNS9JJhMugkZkpqxGc/jiYOdRPF/q6jRdNyyGyzWUUnKZrfJKmHMnvyZDn1BT6UdJdg9+K5yS
	VLQN2ZsjJE0wqogMCEEYmkdzro1BvBNhrpDFqKmy06pW/7dhowjiqjvtNd1+81cNvhfzSoaGWyNDN
	sdCDRta/6LLN6shjWVASizTlcsLHgu4COIxww9KQX5Ys54Wq2un99E+SFaNuvygTKl1E5cMilATu7
	abCIm29b4UiGClaXf2SjFrLTMWaElqdAktBFToilrNQlFTRBVFLWowQ/r4Q85/X4dMtnvJjDGRF7k
	xfnoUICp8O6bAIbdI6cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qxOss-002w4l-0V;
	Mon, 30 Oct 2023 09:48:34 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qxOsl-002vwU-1V
	for linux-phy@lists.infradead.org;
	Mon, 30 Oct 2023 09:48:28 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-32dcd3e5f3fso2928572f8f.1
        for <linux-phy@lists.infradead.org>; Mon, 30 Oct 2023 02:48:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698659302; x=1699264102; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KPTZJaV/MjL39+P4h6OmYZujDec2OSDGxnH10oBPzHE=;
        b=Hk2oVll46vApJW1+j7aixvd7u1tqeIJMv174SGgb2Cj/rvPqGikS1BLZUDKf/INv9/
         MxwLnf0KYAj0Ylp7MFTmA/QYMPOXzsJZyZ2HypXMo4LjZF7/Bz0zXBEOYCYhQRUqqDj5
         1mkxMgmgr4bp1BoktE/WWHgJRfyLUHyRUjdh5QzXJTK195OTrQ4eBeNqM++OEdMpLycp
         XkFynh0UPummnRvVKP2f7CqkhDav4AI4c37qvIWl2JW7WgQiWut785oXC1frZExrEr0V
         n7XAZacHBfESLGV9wA81zYLZAjA/oFjGZMic0Nq0OujjkTo0xHANS8w+2GZewvXN2jKT
         wdWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698659302; x=1699264102;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KPTZJaV/MjL39+P4h6OmYZujDec2OSDGxnH10oBPzHE=;
        b=W26KtECNyMkZXS68TJP41gdbWUMxitw0V7GDJQDkratJg3IvSyLOMAci5mr/jdlnAq
         /tD2JHqL/ExpUf0xHwAFHwqySAG/88L+UBhwYiFdO5YqsA+w23drLJWPjGqw1IDe9SqJ
         jdjBuosxprygpTTqBPXl2R145JEb4fOsymgkDSt0SqnAZLTShI802vYv4Ipwqw6Xe++s
         jyFTzB93UaIi0bYBBeevbPAKzE66OOKeueIaVEvN3/Xms1mHmzNfG9I0q2Fj4NwqdmtN
         2YHxaEUdy+5cdku1yPGwkAndvoL7UV/XoIRNdvtHVMTLOi69VHVG4Z6yEWuW08kNzO9F
         bY1Q==
X-Gm-Message-State: AOJu0YzAFG+s8ROT13QCt2ivlP58n9l84Ibcg+dvDyNjqMq35HnCD5fR
	u0XizJN6lbLJwnzowaAOSBkeKQ==
X-Google-Smtp-Source: AGHT+IEi+2EnChCdXuC4BZnLb291jlsE8CMuY5f+RKFa/FzCVHA6umqZ7slvZXuTl1qatU8X6D5bTA==
X-Received: by 2002:a5d:588f:0:b0:32f:7e4e:535d with SMTP id n15-20020a5d588f000000b0032f7e4e535dmr4565173wrf.15.1698659302024;
        Mon, 30 Oct 2023 02:48:22 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id x14-20020a5d444e000000b0031980294e9fsm7854256wrr.116.2023.10.30.02.48.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 02:48:21 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v2 0/7] phy: qcom: Introduce PCIe, UFS & USB PHY support
 for SM8650
Date: Mon, 30 Oct 2023 10:48:16 +0100
Message-Id: <20231030-topic-sm8650-upstream-phy-v2-0-a543a4c4b491@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAOB7P2UC/32NQQ6CMBBFr0Jm7Zh2gAquvIdhQWqBSYQ2UyQSw
 t2txLXL95P/3gbRCbsI12wDcQtH9lMCOmVgh3bqHfIjMZCiXCttcPaBLcaxMqXCV4izuHbEMKx
 YKzKqoK6mooL0D+I6fh/ue5N44Dh7WY/Uor/rz0rlH+uiUaHR+SXVS1K2uD15asWfvfTQ7Pv+A
 VMar0zDAAAA
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2164;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=P+sEQT2Rv1FEwMjfBQ01O/6OblFcpIJuA1P/WnguyMc=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlP3vhUQVNRQTirHoI4ASs8izOOUwzDBGyfp5VSXYs
 TPF2zoqJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZT974QAKCRB33NvayMhJ0S8iEA
 CuqKVtPX8PmzsPKVHBPLVuzhDgroORz8sE72lh4OKElFlUNHHxoOHINYb4ovPfZRgI5OCrmcDxAGNX
 YF8G66klpXUREC/Csw/e52IfnnQe1Nf8F4hYu2UovITfjzwK2gon5mxZuvC2/zNGnltz2/8wy2NCOm
 bDYHHDgILnxi1FM747iRJs1NyfJ8BWGbTTo4a7b/y+H9XM759nY8kigheM6/QqL4ky0I8YwAoDBiXC
 9JycmtxsUsW63RLLmkIMZti8wmFcRBcsBLxC67XAxaHAYxqrXeRdSRGSRubZjSlUJ2eCCf+gYmC3vT
 JmUVuUN42fo+J0wEKN6tdkzi4YCZkLkCsfsLDA4zebASWoAu6LmRmrTQceVK7SNQYGFRYue0MVuejt
 XkeDFulmOEc4sTUS/73A95/9RJNKrdkXndNIaBUGlW+kHHzGgvy/d4e/Vzpcg1eeDw1dz20soCf681
 B0dj3+J2VEu1q6989TJGUt5NzcdX8tbjopn6qsJCI0BcZTIqOlPChWv2UyMLXfVPLNYYecJAQTdyJT
 xKQOQImrYoOHIVIhQui6jpSGbImts5ncT5xp3/+e97cfqeo/5ATxXCRXslRrlDFd5pr8freekAI8ST
 MjWxhrxzTy/Sk8us5yhyst3/+Nwdm1ld/6K1cjo2OGaRBZMQMVLnMsmEUauA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231030_024827_506017_7FD15A10 
X-CRM114-Status: UNSURE (   9.57  )
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

The SM8650 PHYs are similar to very close to the ones found
on the SM8550 platform.

Only a few changes in the init tables are required for the
UFS, PCIe and USB3/DP Combo PHYs.

The Synopsys eUSB2 PHY is the same as SM8550, so only a fallback
is added in the bindings.

Dependencies: None

For convenience, a regularly refreshed linux-next based git tree containing
all the SM8650 related work is available at:
https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm8650/upstream/integ

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v2:
- bindings: Add missing sm8650 entry in allOf:if:then
- Collected reviewed-by tags from Dmitry
- Link to v1: https://lore.kernel.org/r/20231025-topic-sm8650-upstream-phy-v1-0-6137101520c4@linaro.org

---
Neil Armstrong (7):
      dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: document the SM8650 QMP UFS PHY
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: document the SM8650 QMP PCIe PHYs
      dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: document the SM8650 QMP USB/DP Combo PHY
      dt-bindings: phy: qcom,snps-eusb2: document the SM8650 Synopsys eUSB2 PHY
      phy: qcom: qmp-ufs: add QMP UFS PHY tables for SM8650
      phy: qcom: qmp-pcie: add QMP PCIe PHY tables for SM8650
      phy: qcom: qmp-combo: add QMP USB3/DP PHY tables for SM8650

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |  5 ++
 .../bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    |  2 +
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |  2 +
 .../bindings/phy/qcom,snps-eusb2-phy.yaml          |  1 +
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c          |  4 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 65 ++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h     |  1 +
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h    |  7 ++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c            | 86 ++++++++++++++++++++++
 9 files changed, 173 insertions(+)
---
base-commit: fe1998aa935b44ef873193c0772c43bce74f17dc
change-id: 20231016-topic-sm8650-upstream-phy-9026042f9248

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
