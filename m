Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C767AC9EC92
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jan 2026 13:53:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yrT306p3r9aQN3jNUtFZIP0O6N+IFzWLq6pdoNOseSQ=; b=Rn57V07GhQcSdO
	njtDblXl3/D9594UMQIAtTKmvwzQkRJg9OyWfpa772UUsnryUKuLoreFfW6fWu81yEwNC/sxdDi8D
	GuFlx76JQo814VxUSVLJAtWPJC/8c2C/nBCTjXvVhrKgqFIhGybsX2FTxobgK1vxNaxQ5s21Ks9HH
	g6ehp0fjYUVV8j+V/zI8Hc/P/UCIQLlBQVYkriCrJs5QBWq9B7Di2WbYNrfksvrQYCXL686bL0DS8
	G0XThMZEiWcV5teuW1XiJO6kMsYARmyGTf+ghMtm62KSsH50n6Jn/nAoOjMStF20s1Qcclb8nHx+M
	L6vQVz8sLoDJbjLMzObg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfIMC-00000005SfA-2I0T;
	Mon, 12 Jan 2026 13:53:20 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfIMA-00000005Seb-2cho
	for linux-phy@lists.infradead.org;
	Mon, 12 Jan 2026 13:53:19 +0000
Received: by mail-ej1-x642.google.com with SMTP id a640c23a62f3a-b8722834679so104134366b.0
        for <linux-phy@lists.infradead.org>; Mon, 12 Jan 2026 05:53:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1768225996; x=1768830796; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gaVryPH+6C0Tqtqwm/Yuk9yK3m+Wj3s5OH+GPIlElSk=;
        b=GdG6mOzoiBrqc4+LfWs6M3bioAcwqjnMnwwT3/S+EoQHJ816KcUkANXGzMiPzLLC/Q
         Ge+BTXPM22bTbiLiVLzmEvyrm46ld/4G8VyTLKH4DtQbhSpeP1I+zctE7gQiZUkmk0bi
         aVBcYW6212uRv2Y07y3Ozjlp95p0vmOCAH8n3tlEMD6ks/3Ez5fvo0oQIg/0zSofL7wH
         YzAsj0D6zI4FEKiv0UJbRkemNAMPaXatyZgRsZm8NdtknD/rimtfYZHDbCeApyhtV5dc
         pBDk6f+Zj+C2Ne73B5kK5E5zLEpEqDa36JpE61H11+s0PBtvFlhhYgXPjd9d8v9CbUW0
         HlDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768225997; x=1768830797;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gaVryPH+6C0Tqtqwm/Yuk9yK3m+Wj3s5OH+GPIlElSk=;
        b=sCC45PXYcL+pAgtS8t3S7VDlTXFiCgCpOVxcGQw8heDy3zvOtyjawahJWwFc93xxTq
         w3lXqMpAIs5+gNfmgWJkX/MtFmsWGxPopY+ApBZbMhCRkTmodJ8Fldt+/jQKdlhnt1tf
         ibkIwfyYxpLJC5csm6xO3sYT+xRz54tiD6+zstURTaobaDC3B1ll1mogWgKotTmlrH92
         skb3HzPMT4lHne/E3j9EkmFUW4J5uakK0H2cWqrAD0Dt+7mNRXgzeEGurQXibQq+pufg
         r8Ea/WHj78ZKbCG9FBXXRkjKnRjKwvkBaEUrQ1Em7d1hcuJYZbI8tk+ngR/7We5yI7SR
         WtCQ==
X-Forwarded-Encrypted: i=1; AJvYcCVU91E17SHs9SPTXX4ijPlbNRpzHExCddr56Mw5ME5aeS0vVIOjafBMSS3UAhyk+1c2FtktJKicgSU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxRueBzQcFAzkKp26Wql1qnA8GJvqlD0cLIWhid+SUZmsMXu55N
	tNsOEFXc0WwD4LPsZY9AerB6AxlX1x+hIDjJNQoU1/VY1vb7DLMSmIvEre4TcH9FirU=
X-Gm-Gg: AY/fxX5DWiJNxX9MPtF7/vOouYhTlg1RQmIOLQCMRh+vHuSDB/TmIGAn5AZ12iXAtJs
	zh/A4uimWzp2FcX5SHmMUozraa84149CCFO1YLjsbRc9eGn+/HXqpS0mVARy4Bh4q18A4fIAsXU
	mEyjK9lnp0158BBKuBSkDZ8NCVGaDnpUPJfARkegk00N5lu8E3ROBl9JoOw06ZQ+H4GZvKKB19+
	1HD895B+NCnEB9GzPLX+m67AEVHDxC072ADY4PXf8XgbuJX5vochV+PY7DkLtIX5lRxoOWRIRZW
	ygYZ+gn76x6NKYAN7HhTOLRi6WtntQSVBu+syddxKojTZueG77OPG7zrWc80kRFSUM3xeeM+lVz
	ltiRta4gcPHVwWF5S77mxHHazSYC/N9vbMzD23E7jMQAZR3cMlJY09sqrVyKpKmY8EVdFfSUaCV
	jcLtgMH1sQQSDwPmAdURk36HJS/jA6SGOUYG5fWB2umissOFvVgKOVCNNbB/5RyE55
X-Google-Smtp-Source: AGHT+IHzxEgz2KsBSO+arQBHVhJujP60zEh8vnZJ9xXT+N10U47A31S2v+8UfRza4bfmALX8ySwXSw==
X-Received: by 2002:a17:906:fe0a:b0:b83:3773:dd96 with SMTP id a640c23a62f3a-b8445030d72mr1887365266b.3.1768225996535;
        Mon, 12 Jan 2026 05:53:16 -0800 (PST)
Received: from [172.16.240.99] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8731f071e4sm25700466b.66.2026.01.12.05.53.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 05:53:16 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH v2 0/6] Enable UFS support on Milos
Date: Mon, 12 Jan 2026 14:53:13 +0100
Message-Id: <20260112-milos-ufs-v2-0-d3ce4f61f030@fairphone.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/02OQQ6CMBBFr0JmbU1pDFVW3sOwaMtUJpEW20Iwh
 LtbQROXb+b/N7NAxEAYoS4WCDhRJO8yiEMBplPujozazCC4qHjJK9bTw0c22siktrqV8mSUNJD
 zQ0BL8+a6NTsHfI5ZmfYhaBWRGd/3lOrC4ZzYVyvhU+goJh9e2y9TuTV++7+zU8k4qy5nobTgL
 VfmahWFofMOj9kNzbqub5GInBHXAAAA
X-Change-ID: 20260106-milos-ufs-7bfbd774ca7c
To: Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
 Bart Van Assche <bvanassche@acm.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Abel Vesa <abel.vesa@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768225995; l=1410;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=869qKXPKp/5HVz58yGdlPkNK/AkfXAZ4HLSxUNKXhtM=;
 b=ya0h1GWx9MbkL8J1GPpxKxKEPorYhGvXMWiaky/iNsRq8ZRWCVWK6G2OODVWZ8CbyrFGEcgyH
 tvHqCQKfapfACq0UkxcYG5jly+DRCv9gxdUuVrllWQA3147ZU6tLlAT
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_055318_699533_E0322515 
X-CRM114-Status: UNSURE (   8.83  )
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

Add inline-crypto-engine and UFS bindings & driver parts, then add them
to milos dtsi and enable the UFS storage on Fairphone (Gen. 6).

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Changes in v2:
- Add missing dma-coherent in milos.dtsi (Neil)
- Pick up tags
- Link to v1: https://lore.kernel.org/r/20260107-milos-ufs-v1-0-6982ab20d0ac@fairphone.com

---
Luca Weiss (6):
      dt-bindings: crypto: qcom,inline-crypto-engine: document the Milos ICE
      scsi: ufs: qcom,sc7180-ufshc: dt-bindings: Document the Milos UFS Controller
      dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: document the Milos QMP UFS PHY
      phy: qcom-qmp-ufs: Add Milos support
      arm64: dts: qcom: milos: Add UFS nodes
      arm64: dts: qcom: milos-fairphone-fp6: Enable UFS

 .../bindings/crypto/qcom,inline-crypto-engine.yaml |   1 +
 .../bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    |   2 +
 .../devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml |   2 +
 arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts   |  18 +++
 arch/arm64/boot/dts/qcom/milos.dtsi                | 129 ++++++++++++++++++++-
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c            |  96 +++++++++++++++
 6 files changed, 245 insertions(+), 3 deletions(-)
---
base-commit: ef1c7b875741bef0ff37ae8ab8a9aaf407dc141c
change-id: 20260106-milos-ufs-7bfbd774ca7c

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
