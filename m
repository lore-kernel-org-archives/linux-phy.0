Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EA5ACF6BF4
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jan 2026 08:06:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lDcuQaRIyyCGzdE+SULWv++bRzcp8wDmx7umbQwSS+s=; b=iohOaQb6fLIUcI
	93QiQpWZslCY+aHLpPilrJANpLGc9mExsdZRo1hLgu6d6dtom6nYINM031JtPUdMy4hyOyAOA1727
	eCPplX3GwPy7x7cSA4iIkpjQTGy/SMoJpGT4I7Z4rqMIHoKkR89ZzkazxIXGlbj/u1e1doeIpL1n+
	ICxpGVdHD+GC62rR5PPR8odWaYmiybDVbYstNVKRYZgOO9huTSSmeeoPP22AF9En372/YdYroabZI
	DPc0DhlljzX/rfQN5MzAJXWQZ+/yhzdmHNJOR0ow3O/iK/eCArBsWKJAT0wS9OO065LgYGv1u5kJv
	W/Ol7PG1BvJUFbchqtfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdOYS-0000000EMBE-42Hm;
	Wed, 07 Jan 2026 08:06:08 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdOYQ-0000000EM9d-2MiD
	for linux-phy@lists.infradead.org;
	Wed, 07 Jan 2026 08:06:07 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-65063a95558so2478265a12.0
        for <linux-phy@lists.infradead.org>; Wed, 07 Jan 2026 00:06:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1767773160; x=1768377960; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aea4uA3J/1hwOpuMUNDquHCAnGDE82D8jnGDI33DmmI=;
        b=abwaNiHRMjz8FtlBEZs2qSPnjhX7xGH6IgeMNrHObEpdYBFJEvB9NJhBLdpc+ZnRva
         4RnY+hRFIzuI+HrZ6iAQ5+SzgsLagjIMn97Mv8NNKVbIICJIn2ck6hT5YeTfUXpGA+Pw
         pxk38xYKOsJNA8Kb6mVkT7/esCe3a6c6wp+2R7P7r8CKi7nGZINQQDnWgEAG/g1oL2iH
         6xJaSkVcdGnJV+81joSLT1T9ktEtXZy5qdVgQPFglTarILVaSJGez+LIJcI04wVsbhRw
         Ps1TT30Ye8FDLzwqOft5/ez7dtyk80GNIyjWaNqe5JoEDptIat8gIQhiStrIRBFE/abp
         qXPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767773160; x=1768377960;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aea4uA3J/1hwOpuMUNDquHCAnGDE82D8jnGDI33DmmI=;
        b=mIrX1p8OO8ctZE4ChxE8WIf66iWacIDYAtcfBGULiwLpu6C8idm3Vo7Uu9eFcWLDQP
         RhPAxE5RnAOZmmRLPiWaCCP5BqnTSZJ8xhaPjZwOzEelLNR08engOu6XMAMZvEDZan1Y
         VsXa7Y+/A12koK4/8Hot8zc6PjYO6EDLlACa49X5aMEXzcvcy4A6AcuxcyO+aVS2VDvr
         UGGsK0NamudgGW8eZFu+iDR1lUxJGQi3iGDSddsfqnOOVnbVwIGnrZqihuYNfpHXwoVe
         Vy+cP14/dRtHgipVrGJ2QXeNeN9zLr1+rLTRx09vrtC4S1kj6U5pK91MTo2Isiolcgxj
         udpQ==
X-Forwarded-Encrypted: i=1; AJvYcCUdnaOvLbeN5mG87aBFH7ISbagtkzOT13g7xm27j5v3L4y3m9tqfpEtYwJoFyc6uoGoaxgFngW5OWc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy203noDf1ZcJTV5FWC5AZLZAnI+5f/4NnMwYAtnkEqAl+E+vg1
	/OJQUBaARkB9itMFZ/p8mVa165WQpL1WsYx77gkeSLImHMz1hOv6G749unnBJ0363zA=
X-Gm-Gg: AY/fxX55CyZzUMd1mSOt4RGbLGbbBANizY+Te+Xz34xVeBcADypzJfhPsynnIdHRPw5
	H756DlqsWfuuC79oOSQ0HOlfy1r7rz6RHaj5Zg+ILgXHXlKXX13+2uDYPWdpFr7NIJcTXeqdx5Q
	sqxdKGWMSu5e/qFdrDWnWmKny5prMYl2d+ENV85R4zWs6jh3tMmglnnfEdsrQSOqbs3tz/xYrgD
	j9wMjpauHJ729/JRJ/fQHTQEx265mEzam59p2dmiB+H9kOWaKFDUOmyWGgTL+sz4sIORHYM6rzd
	S+PG+DPqydbX+hOmFMFj0PmMq2+jYdHlg+7j1SAtVi3KY8RHuAatfoe9GH/Pm000E3tDpiXjRet
	ZGlCBa0DFt1MVLgkrUE7vBM9r4TVZr1e0Z51qHW9bq2Ai7gNQs7VtE5JKhoFTfe/sW0l4V1D0nN
	T6H3Iuz3cQ+88stYVw2vsfB0VbDg==
X-Google-Smtp-Source: AGHT+IHQhvsajZNsAjIqdeTR55Pw24pMGEFgeV3TrZGwVgpku5ShlzsTTOU37V7fY7XTDRiYIV76WA==
X-Received: by 2002:a05:6402:26d4:b0:649:cec4:2173 with SMTP id 4fb4d7f45d1cf-65097de6edfmr1372195a12.9.1767773160150;
        Wed, 07 Jan 2026 00:06:00 -0800 (PST)
Received: from [192.168.224.78] ([213.208.157.247])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf6d5absm3941299a12.33.2026.01.07.00.05.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 00:05:59 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH 0/6] Enable UFS support on Milos
Date: Wed, 07 Jan 2026 09:05:50 +0100
Message-Id: <20260107-milos-ufs-v1-0-6982ab20d0ac@fairphone.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAN4TXmkC/y3MQQrDIBCF4avIrDtgQomQq5Qs1IzpQNXWMSUQc
 vdKk+X/eHw7CBUmgVHtUOjLwjm16G4K/NOmhZDn1tDrftCdHjDyKwuuQdC44GZj7t4aD+3/LhR
 4+1uP6exCn7WR9RzBWSH0OUauo0q0VbxYA9Nx/ADuaakFjAAAAA==
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
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767773155; l=1231;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=pB3wFfFcfrB8Ff4wD4ThceQT023SqfNJq63rMjQeuWY=;
 b=Ijl4D0+iLyVGZ0M1qfLy2I2IXvmtEOs7o+3vK2uEs/UcQ6h1855hoeK3mjwjmyOcn4UdfWtNz
 38+258XrMLvAUktnYO0rAjq9N0IzcQtdcJnuqwDjihz3MjNAQHtFREY
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_000606_631316_C43D3030 
X-CRM114-Status: UNSURE (   7.90  )
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
 arch/arm64/boot/dts/qcom/milos.dtsi                | 127 ++++++++++++++++++++-
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c            |  96 ++++++++++++++++
 6 files changed, 243 insertions(+), 3 deletions(-)
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
