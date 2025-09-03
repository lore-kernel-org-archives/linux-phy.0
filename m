Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C2B3CA1013
	for <linux-phy@archiver.kernel.org>; Wed,  3 Sep 2025 14:48:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5o6nydAmxMNj/Yh6sRDV4RqR+5/78v9JaCbGNn6Xmzs=; b=aUdBYiYNqsSfoc
	D3bzKmWpEveSS2b4vw1fjkETbeVxtcrRXhzMnhDhWQATNG/UI8/KnOnN9n91lLSgZ/sg/uxSC8NVC
	Nu1kmbFsIFYaw3RAxLtIEtXbAHLpMXKHpsSgPNxCYspGOOUbZIGDB/MUyPtCFDC5C2ltGcMJv2xQ2
	BFi/WVjLoBkgvsxfKccimyN9YKlN1jJ90Up7f7OnZ8Iju7SC4q6lPyKY++/yy5LaWLn2+u+Ej6apb
	FqMIfBuvluooXW+8f4FeVpgUCYXrCV3hAi/EOycw1JBE2jaFArsaJih44JQZ2DFnZZE2MgADBDb31
	UiKyKzJJRRytorON5i1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utomV-00000006lP5-16aE;
	Wed, 03 Sep 2025 14:48:15 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utmkP-00000006Pf0-36W7
	for linux-phy@lists.infradead.org;
	Wed, 03 Sep 2025 12:37:59 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-3b9edf4cf6cso5656722f8f.3
        for <linux-phy@lists.infradead.org>; Wed, 03 Sep 2025 05:37:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756903076; x=1757507876; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5M5u+eDt1aXKVkCfHjL06cHPXZqsdO0dil/if3E7tuk=;
        b=cq4UOxLYoz5NxXPpPZUNYQyXp/VB8BLjFEB15Sh7gWAy1UNW104b+q7zkPyLX+vnh3
         ymdqlyG04LnUu2zccfALDWaAZqrZny0B9eBObx2k++ovqDGGoULjiqIEBMm3OPhYlhDK
         aUKaGEIQVcMq7iNxoPwxXSuDROfpjd1kJ6cjGnTGDdp6jZVIuKB65c4tDGK8JMjq77ac
         TK2NIftzTXfPAS32hm7/t+KHIIrQp3aYO6oLGEx+ph9KQ6W3gSRK2QC+10EPK2LRVv5J
         hq8SP8arqx4rrYHBrx2L7QUqYDDMcU7g60AzjhD+PTSLNyx5UKFzPhhrBb4JsE6qnHhF
         Injg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756903076; x=1757507876;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5M5u+eDt1aXKVkCfHjL06cHPXZqsdO0dil/if3E7tuk=;
        b=f3Xe+WS347eLtXN9bC5zZZp1lQxWKPpNidN8evNTuDTjRlkDRJuW4TZRM7osi1NvTi
         VFnShqaE4W0b0G4b3Y257iAEeh1fMlvQ+wTXWcqLbHzF7RCtUcjHzuqYBl7W0E/6wpV3
         hC5GCx9v7NB6Cc9cDv2jIOvt5c1GK6G+YKGFJatKbHjo3Lafwf0Hvd+9LuSb2OW1f6qo
         jTzNF1NTErSYf6wZQhvy/cdHQu/9Gt5MiiUasKeD8jb/lN47WUfBq19i6XMH4NyxhlMp
         2xoxLovhntBXm4HMCFT19O7Qrdp0Eazxq0ykF9AFqTlITFQyLTMbURXDlsaIsI5jfYW1
         aV6g==
X-Forwarded-Encrypted: i=1; AJvYcCUHklFZDCfzqxTg2o2cDCasEkYUuknxR+moSOw+4A8kzzHd04G3zU4MUyM8cxG1+ZHNUky3ubOKew4=@lists.infradead.org
X-Gm-Message-State: AOJu0YxBuCf7m/8vHqCXNw3RKv1sTiAO8BeL75FiBmNA0C2ssG2wU9f9
	abJkiyiJvAg9TsxbCj8A99HCSrvLP9VdUab9gZtsDUni0QuLiTNlu9FfLE7UPIAsDTc=
X-Gm-Gg: ASbGncvkn8m5uHG8kJ/xu20dWtzcjOMkMyc6WTqivDrMZfxb6DQvbsNMlgDXy+L5PHb
	iNA5Syu0s1rqRZbL0d5LOSllqqaVeMkH3ICOQX+BfM6g8U6phXU41LlMIeEqsu1nYYxy/ivU8G4
	pdGblBuHcbma1octdQzroRRDVJP+kkxVXPwsFcT04BwlTTzile5rm1xzEmEnVVV7ps/PKW6JvSu
	Er6SYnqCGQw8SuxxQBq0qYWNSUu2cnS6Oa0QgDQdLDhZTsK69ByIjriNFUQtJiB0u70MVF0k1QQ
	6RrU79xcdLrkAElOxUxigmwXx4V8JfmJ/OtBY1DLuXNfNvDEw/BtUfLFcBNzRYlyn/oYC0G/bMN
	WVbc+6Gv294+dz2b+RXS9nd4q2/J/4F4bdQ==
X-Google-Smtp-Source: AGHT+IGb4o433CWFzfVQncJkmuar8Ua2Hy06zrH/E8rwKkyk3fo5kKZxbUD43Tb3esauui3f/nzHnQ==
X-Received: by 2002:a05:6000:2dc7:b0:3c0:7e02:8677 with SMTP id ffacd0b85a97d-3d1df53ba96mr11331667f8f.62.1756903075798;
        Wed, 03 Sep 2025 05:37:55 -0700 (PDT)
Received: from hackbox.lan ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d0a7691340sm22526782f8f.39.2025.09.03.05.37.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 05:37:55 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH v2 0/3] phy: qcom: edp: Add missing refclk clock to
 x1e80100
Date: Wed, 03 Sep 2025 15:37:41 +0300
Message-Id: <20250903-phy-qcom-edp-add-missing-refclk-v2-0-d88c1b0cdc1b@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAJU2uGgC/42NQQ6CMBBFr0Jm7ZhSgxBX3sOwKO20TIQWW9NIC
 He3cgLzV+8v3tsgUWRKcKs2iJQ5cfAF5KkCPSrvCNkUBilkI9qLwGVc8aXDjGQWVMbgzCmxdxj
 J6umJjRo6WWY7aqFYlvLz5yg8+sIjp3eI6xHM9e/9351rFHi1bacsKTNoe5/YqxjOITro933/A
 pXOxfbPAAAA
X-Change-ID: 20250730-phy-qcom-edp-add-missing-refclk-5ab82828f8e7
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Sibi Sankar <quic_sibis@quicinc.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>, stable@vger.kernel.org
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1257; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=XG7Td7DnuGT+1Ocz1z2HpzJyJWMqBqprM9ptfTxtNt0=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBouDaZsWCF4HhmlC9eeABt1PuH8cib26mo1idcY
 /8t9u1p0GyJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaLg2mQAKCRAbX0TJAJUV
 VrwAD/4xi5bzb2H/sPLviUBuIQnHt7NPTSpjGPdZuNGUV1R33H7KcEu0FvufrDai8iCYGpZVYXd
 F9WserD49eWmwg5U4tGktvXY7dRQDZSMz/8E5acfkeNAJSQ+c92VKHcx7cxeZV9C91UYhjzKvdm
 cw+DZF2ZkopRC+qQIMcP+g1SlvS4uQoTdh/o6UvtJbrwWn0RVUmJcDUm9FTdhdF/AzE4H654g9p
 JDrvisfub8w2QXd0SMaO93bHGxICkmSjkceMjTD1VP+MWKD+BaQXkrN/XI8NIJhFUGxh9aufOE5
 kzKOLMgou/LjSCTiUZF8xwBw8LyOsZmveFS37rmD+KCjJuvNytDaKh/t158HFFx9haIdACiSvG+
 xBB3Fq2z1Cq4fskqbv6ElUvl4JEc5ITGctgTXWFJ7fUiT3Gx6WyFmvqRaoEG1G++mlG1aXDsoZ6
 FkEHfkvwxOScnurozcwW6XoEKIr2OvnftorYwQi9sfK/QfQ69d65ZMDcQi5uP3G90AZom3QoWv1
 T/iic/+BW+gIh2nBz0bu7BrZilc/V+5eXThNy/EGnaJW4YE9g9GqQdQ80Iy3h9yfaSoBK3ttuvl
 wN2NnMJp1hIDbt0ZkL3WfvlH18RQApCbT95cvku3XYLfIGd+7X87HA9SvCFj9wBFZYVpuRE/kQu
 6frqR/vPm2/KzMQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_053757_805354_F7D3134E 
X-CRM114-Status: UNSURE (   8.20  )
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

According to documentation, the DP PHY on x1e80100 has another clock
called refclk. Rework the driver to allow different number of clocks.
Fix the dt-bindings schema and add the clock to the DT node as well.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v2:
- Fix schema by adding the minItems, as suggested by Krzysztof.
- Use devm_clk_bulk_get_all, as suggested by Konrad.
- Rephrase the commit messages to reflect the flexible number of clocks.
- Link to v1: https://lore.kernel.org/r/20250730-phy-qcom-edp-add-missing-refclk-v1-0-6f78afeadbcf@linaro.org

---
Abel Vesa (3):
      dt-bindings: phy: qcom-edp: Add missing clock for X Elite
      phy: qcom: edp: Make the number of clocks flexible
      arm64: dts: qcom: Add missing TCSR refclk to the DP PHYs

 .../devicetree/bindings/phy/qcom,edp-phy.yaml      | 28 +++++++++++++++++++++-
 arch/arm64/boot/dts/qcom/x1e80100.dtsi             | 12 ++++++----
 drivers/phy/qualcomm/phy-qcom-edp.c                | 18 +++++++-------
 3 files changed, 45 insertions(+), 13 deletions(-)
---
base-commit: 5d50cf9f7cf20a17ac469c20a2e07c29c1f6aab7
change-id: 20250730-phy-qcom-edp-add-missing-refclk-5ab82828f8e7

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
