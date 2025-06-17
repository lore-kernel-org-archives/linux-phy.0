Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25803C7115A
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jun 2025 08:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XEe9sBmrA84dYIbTzKEPMOVEn1STQkRiq0gm3RpobUA=; b=JE9Fm7ymjaBlLr
	eJACPnObBNiSxuChJVHkzt4CLIVhzTMk8ai3E2Ub05l5hTU3GRNwHgzTuT2EhpDoSQkpHrpTTkazn
	ieHTjuXzLvdzyfyOPUDJpUFMtkS4P4vMxlzwMiMKRVoZtVdl0Fa7o+dqouJOV5i+KL7Xens7V17yR
	LA5buQHm23uTX25jeiEvr4zkE6Ne0d+xfm9HenXFf7O+hO8+LNdHbX7+5TzbNkBZ4ZVx7YU2r1YD+
	CHBw1UDFxUPoZOPC4D6FT2kh/5MyfHxKwByCQV7BwUBf2Z/jd+DibUlb6q0RUJYJuRBBEvf3jBNPm
	IPKmFWjzOfpkqNDlUMkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRRsp-00000006ctY-3k7I;
	Tue, 17 Jun 2025 08:41:31 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRRec-00000006b6U-2P45
	for linux-phy@lists.infradead.org;
	Tue, 17 Jun 2025 08:26:52 +0000
Received: by mail-ej1-x644.google.com with SMTP id a640c23a62f3a-ade33027bcfso883440766b.1
        for <linux-phy@lists.infradead.org>; Tue, 17 Jun 2025 01:26:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750148809; x=1750753609; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ha51G6QljI8TE+htVqSGE/G45ppcBa69RDzMvs8Q1Bg=;
        b=EvyMGj7BE3mBFyebiNSqNe8rA8tuI2t1MCcRnXx6s/b2clevW9lWAhn3M2DLyAJyUk
         fSBp5syMZ5vu0ILgMQ/tXpG0REWja1JvWgO4bO1tEPuYiykZGP5mBJBX4iv/GCC+ZVAz
         Oo48RSai82jneA42bPg6w0ZrM6IGoson444Lh816d1RdpJcOMfLgkc14kaABvm6VImB4
         j1Z8HB7bjElMZFuBgcfao5OphOn4bvywTaPte0Y6OgUQvtCxpq1liHqrQlfFnYynOX/K
         boFlltliIUFsC82GJyqhy9SnLxc6ro3k5pSlBuchI8hyQ6o0mjsukZBk1DnuhO1EHFPs
         DYww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750148809; x=1750753609;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ha51G6QljI8TE+htVqSGE/G45ppcBa69RDzMvs8Q1Bg=;
        b=alUjvz5KZ/qZXsCROVMb8mfNvYegwv18goqdYB5x0dpbfLFLPx+c5GbEk4aPOXh5Uh
         NLLm7RIkfrnNKcxGaumG9cb+YUN95ZPU5VBcPfdYokjG2I37fEK83DuryG3x0NmKT7v3
         ISvNRsf2OdKly0/JnEdq7a/7q/l3z69Q2Mmbbe6KLkp6A1zl9lQRPl5GMzIxeIGCjceA
         3hfLriTfTbXV92gqTUhfjJdLlq9iTcUjmmY4QnHk5f39wy3HmNq41WyRFUfvgd8/3dZb
         soX8B+vVqEmGntDA06p9iNn10edUzPiSgRPjG/tmvs7z3l6/bs2Wb+vTcM7RIqCvDktY
         Gudw==
X-Forwarded-Encrypted: i=1; AJvYcCUleoKFpweJfythfz7vGsPj0TKtt/z2wjPc3qSO6S00haZvF5NTczV0a+BJKleVoGeVllg0SSFB+1o=@lists.infradead.org
X-Gm-Message-State: AOJu0YyMwZ2yAq8B/ndhPB06v5ixvoy416EU2IT+q93WyZtvENtpjcFp
	7iBZ7sBfl+4gX0N74zEzZSu0Udsfnkh76LAJc+y7y1bDVYR5uR9V7z7nVS0WeLL5iY4=
X-Gm-Gg: ASbGncubQ1u7T5SwaohW9URbGAFuRtL/dyZ1F+LIQuklUFmvV8UWL/eGx0SyiWVcxHC
	3/p6MUmh1nhypyzKKlQmvR55YdjowX/TwWgob13q0dTGnJlixbb4ANLdL4Q1iV3MBhL9icfAWZw
	CEuk1oyDap/n0QgbpsbUy2sbx64uDMjc2/W0mPL69Y7iRHBDF2mBjUmwUs+7trgBCmio4TqMWnv
	yFplo27aoScUd4LUnBnNtAWe3yDtJ3t/s8wybRjTf9yjCOdxp7qVqRgx0+JKr3nljz3oN1Ycpr3
	v5zNcc9nmD5iwig5X+usXD+yTiZjN2bA5rC0Z2NZrUU1Ud946wmkGw3SWS+9QnFhBvMPZjnIj2n
	r71MAKY1paw6a4sncR2EooLJKTnUoU0L/rTbaG9TuTz4=
X-Google-Smtp-Source: AGHT+IHaLMRID3hoXAOduWJ6WVSzCTc3PiOOYPbCMGHsJkWbLuGR1uhowGvy7+2zgZveMdkL4Rhl7Q==
X-Received: by 2002:a17:907:d78a:b0:adb:3509:b459 with SMTP id a640c23a62f3a-adfad329678mr1353406366b.19.1750148808949;
        Tue, 17 Jun 2025 01:26:48 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec88fd993sm840343166b.94.2025.06.17.01.26.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 01:26:48 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH v2 0/2] Fix tuning on eUSB2 repeater
Date: Tue, 17 Jun 2025 10:26:34 +0200
Message-Id: <20250617-eusb2-repeater-tuning-v2-0-ed6c484f18ee@fairphone.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIALomUWgC/4WNQQ6CMBBFr0K6dkxbbImuvIdhUXAGZmFLpkA0h
 LtbuYDL95L//qYyCmNWt2pTgitnTrGAPVWqH0McEPhZWFltnfbGAy65syA4YZhRYF4ixwHI+bo
 2ve8MBVW2kyDx++g+2sIj5znJ57hZzc/+K64GNFwvriHS1FHj7hRYpjFFPPfppdp937+dt31Bv
 gAAAA==
X-Change-ID: 20250616-eusb2-repeater-tuning-f56331c6b1fa
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750148807; l=1310;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=NLs+qWJn+ZP5DPsry/eRPCLoqWTcxBnwPUA0+ZFuPm0=;
 b=rx151nZm2NY70r0BR/IhQqna3HWEfZP2hVL3TqGjnULcMcPD/2K3GYVB43b9pA0Sw6Jws23B+
 aS7VXHp62ufAlpFof88Zsu88DJPzjdCyla1e58LwlwNqIsdZJJa8XSi
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_012650_627430_66F78620 
X-CRM114-Status: UNSURE (   9.70  )
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

Update the dt-bindings to remove the 'default' tuning values, since they
depend on the PMIC and are not guaranteed to be the same.

And add a fix into the driver to not zero-out all tuning registers if
they are not specified in the "init sequence", since zero is not the
reset value for most parameter and will lead to very unexpected tuning.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Changes in v2:
- Fix wrong parameter used for refactored init tables
- Also drop "enum eusb2_reg_layout" completely since it's not used for
  anything now
- Use unsigned int instead of u8 in struct eusb2_repeater_init_tbl_reg
- Pick up tags
- Link to v1: https://lore.kernel.org/r/20250616-eusb2-repeater-tuning-v1-0-9457ff0fbf75@fairphone.com

---
Luca Weiss (2):
      dt-bindings: phy: qcom,snps-eusb2-repeater: Remove default tuning values
      phy: qualcomm: phy-qcom-eusb2-repeater: Don't zero-out registers

 .../bindings/phy/qcom,snps-eusb2-repeater.yaml     |  3 -
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c     | 83 ++++++++--------------
 2 files changed, 30 insertions(+), 56 deletions(-)
---
base-commit: 19272b37aa4f83ca52bdf9c16d5d81bdd1354494
change-id: 20250616-eusb2-repeater-tuning-f56331c6b1fa

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
