Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29920C10F05
	for <linux-phy@archiver.kernel.org>; Thu,  7 Dec 2023 13:17:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3r6X+AyxQYXDSV9XSmL5M5b57M6emoZTYWrjxv7EJxA=; b=Azd5/WooWp02n4
	7uRqVz4bPgNrlNrHyNWsgbVbnfEJ62JYwSLJNNFXlw9Mj+DfDpOxZ46p/edMFnlEm6JHNByAh32xX
	EOH/dnuaHt1PByxikZvPG64o2Fb/ra7frIfBQqDLjrGxTvdi0HVSuOBMVTVm6VvuUmgt9hkNKIghS
	YJCdVEzC+wSmR5WWlVUawt0mFX9UPL/nX/uhJQ+8jnKR6Z89VuPqbj9JW14JKTYjhRIcHDsRpMQHi
	sgjTAVjQqhmK/i5Dh8vytj7+21dw0TCNF6abiRgTmHjuS8teUVsamQZ9eI7SSKGCtRIKGDX48NrBR
	Q3tqIQ0T2+KI9L83Dl8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBEFR-00Csma-2s;
	Thu, 07 Dec 2023 13:17:01 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBEFO-00Cskp-0E
	for linux-phy@lists.infradead.org;
	Thu, 07 Dec 2023 13:17:00 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-9fa2714e828so110148866b.1
        for <linux-phy@lists.infradead.org>; Thu, 07 Dec 2023 05:16:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701955012; x=1702559812; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6VKBYqm6SE1XYHjmHHc0jK2ohHeZYs4QKH10IKvZN/I=;
        b=u+7kAC4duRiSrMcPDJWjWrAVJigDEYmJsUxCVERTx0lo3Fm19JBDi1GPmz/riUTgDt
         P9LWX+fTY03l8x01uiONs+pWk3SqnzNN71d5TRSWJmkip1KlBvLvN5fbStlyMZ/hsfcX
         RIx2lUluNw/sntD9eUELqpXNyTWGSHuT3h9tZ/+jh5p61p8BPTlXWdFPx10+Cg0WTCwl
         /CurweIn11M2xH7Mx2rmaTrFYY1/azPyU8ORh7WPIT2s5aMznqvMnx3/rHzeWnmCGgcP
         U9xIB4NvT+d0ExkbegDtjmuWIvMyS1M45nA2mbZJzfEsaYssw6iuWBM+AgCVIPeZ6Zb2
         YCxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701955012; x=1702559812;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6VKBYqm6SE1XYHjmHHc0jK2ohHeZYs4QKH10IKvZN/I=;
        b=v2nueVVayRhmOaO5bfnLulr3Nq3KnihaUqoiwvv2G4Ch17KuZDAsCCICCdSx6dEl2x
         WP7yMjfLFo6p+nR1qchgQO/YkwGDMOO77swEJUl27BKEyz76GmDbIJn1PGAIEtIRQJDZ
         5vZbAdjtwW8i6QZWvqWiWigQ9mVIgI7iKb4Ly9LqHpbLrwGDUoBpCqJ31njkJG2SljE3
         QEwQTjlb47f9+3ecgSd8M3XPpt+Sd649BHVqUybnF2i2ooxM5dF3n0HQCwTPflSbcD98
         wXn8kLjnkswuWuIUwvJy6q/e7fAjEMnQXTwEtveqWuCtGnrbNSBLykhJC/qebQN6yY4S
         vC8w==
X-Gm-Message-State: AOJu0Yz62gpFFdUTPNrnhwfU08eSSlWL4dt30gJjd8cbFiYPnX3p1Glg
	NhdjoriMcXSDkc4DESiRcJI1lA==
X-Google-Smtp-Source: AGHT+IFXgYRNsF6yo7Y71i+eutWsCukKu1a8B45Cgmn4nuuVkp6JLLtlTLX7lGjP+/ZZxXYQ6eDbUw==
X-Received: by 2002:a17:906:750:b0:a18:f82c:65d2 with SMTP id z16-20020a170906075000b00a18f82c65d2mr1857054ejb.34.1701955012648;
        Thu, 07 Dec 2023 05:16:52 -0800 (PST)
Received: from [127.0.1.1] ([82.79.186.233])
        by smtp.gmail.com with ESMTPSA id d8-20020a170906040800b00a1d01b11498sm815233eja.24.2023.12.07.05.16.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 05:16:52 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH 0/2] phy: qcom-qmp-combo: Add support for X1E80100 platform
Date: Thu, 07 Dec 2023 15:16:40 +0200
Message-Id: <20231201-x1e80100-phy-combo-v1-0-6938ec41f3ac@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIALjFcWUC/x2NywrCMBAAf6Xs2YXsRnz9inhI0q1ZqElJUCql/
 +7icQaG2aBLU+lwGzZo8tGutRjQYYCUQ3kK6mgM7NgTO8KV5OLIOVzyF1N9xYrxOPoTT+zD+Qo
 WxtAFYwslZUvLe55NLk0mXf+n+2Pff/ikXol5AAAA
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Johan Hovold <johan@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=869; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=s4GzkpBy63ls0/GC+bO/Jon6jFkVJFj3LnWS88SNmWw=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlccW66GJ1GLVxM1RU7ahVYYLf3+NiQzJwqK5er
 jZRiZ64PgmJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZXHFugAKCRAbX0TJAJUV
 ViU1D/0Se05g3QmzM72AvPy/zM7pcAoEburUezIoMaeH6t5DNd345uisEPY2R++mMLydjVlSh/o
 GeR6ggFq5eGF415RwwnrZd3CXHe9wqYGKpW0R/wR4CRFn5t1jkD27rxI1WnK8361S9Oj6+Q4jXk
 A3H+OnwpKkJakVTr+JddwBy8sta1T8kpPnBBUSfJMN3KzR/X/1hwkt/uIOJnWyTDWGobaRban6k
 UGuRuJNWUjueF6XL2w5bfdSDUOLreqV7sh2iJSUR53ljk+n9iLQuDExvKPm71GPyzRuRbzgV6z6
 IVAogtCgxPvLwaPDseJUiUqiB69rCQ1XNSPhwWC+yZkVG8tZFRdj5Qk6bnghpqzskJ4Nou8P1TL
 O/rdhRIdU1HXwnndQQ5UIkZSR4lNzgWmvTH1jQWtMoEb7pBwlqEdieq2ONTxP0qijQqyvK+HfTb
 WAbNFbv7YJ/NzV6NnKUyL3tXJrkvasYOHVr800nWr1qFHmejIzS3rL+wpYQHZpcFMNhqOgmjgzP
 kY64D9bsjWwqrdYs2i456HUA5VEyTOA+ZPFNGkFtHehDJ2rxxRRVrtYgL/fyZXpjDn2jljIpuO2
 z/nfJ0I94V5ewsjq/jT8cl5a/LRgAdEZWwVSxgTvYseni5yiAueaq2I6xhgez+w3K0aGYrP+6Dh
 YZVoa/jKZALUdFA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_051658_113672_AE7E5BC9 
X-CRM114-Status: UNSURE (   6.02  )
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

This patchset adds support for the USB/DP combo PHYs found on X1E80100
platform and documents its compatible string.

It depends on the v6 N4 register offsets added by the following patchset:  
https://lore.kernel.org/all/20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v3-0-dfd1c375ef61@linaro.org/

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Abel Vesa (2):
      dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Document X1E80100 compatible
      phy: qcom-qmp-combo: Add x1e80100 USB/DP combo phys

 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |   2 +
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 170 +++++++++++++++++++++
 2 files changed, 172 insertions(+)
---
base-commit: a2a7cea5da9065b9e34a8bf3275241c1129ebce0
change-id: 20231201-x1e80100-phy-combo-b4d362f23a79

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
