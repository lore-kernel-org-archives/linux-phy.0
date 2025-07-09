Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75359C83F03
	for <linux-phy@archiver.kernel.org>; Wed,  9 Jul 2025 10:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g8+Co/mDfQPs9tPVVdEC17+dqKRTAosDj95BNf/W4w8=; b=UhRUXmcCPtkO+Y
	JD6AQGnZfUV69ZX92so6j3WueDi/Aqlagyxpg05FsvHWeQgF99WUAKLT1rUH2P7i8cX/XP3pwMZZr
	32XxwI00LMG3oa1TYCCi1mzpYAGE8qHcdTULdpmQhKBDgxKLOLWfRAYYh1QGWSMEDw8pczPGvKUdk
	ZzT3LDCJtIXV2b6DfqA5q5KKblpirTrExg+0Na1NrOYSwFOdjFNG1FLQ5ueBOpdxDq/ZNpyZU+9UV
	lGJ2z3cCNCMtYTo6ssUe/vTHpvslQmHVycFB92wmTc2Sx8OTQArUrXsxsgD+Yl71WvIhDoBwCCHZl
	sFyHBxP6MOS0SHcuVh4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZSKQ-00000008MQC-0eVp;
	Wed, 09 Jul 2025 10:47:06 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZQwt-000000086P3-1tmX
	for linux-phy@lists.infradead.org;
	Wed, 09 Jul 2025 09:18:44 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-ae0e0271d82so1075720566b.3
        for <linux-phy@lists.infradead.org>; Wed, 09 Jul 2025 02:18:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752052721; x=1752657521; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ddjMZCutufz18eoluPVKeaKDVNqg//G7ZHMUNzfUaUQ=;
        b=fuiwbAidhlA/fh7pA7EIVnuFGVGnQlRuWi5Ns4fHeNPXTFcgaEbpc/nwSErGW4UJt0
         zGAX08LbSoTJaWKaVfv66wx2DVLMzvpanV4VYmNC0v3GblA421dm4xFAK82tbOcZDNJ9
         iUambI0UihgrZVwCA/lSg6119L2U5Jh1KVXgIy7BSrC5L58ByDdaKbIA9mqfqRtLJRde
         swheo1e6JF/hE6mspeQVP3t6Wr+FuIdBPKxiel7vUKm8yJ+D2owhQxtUWipZXvgloYrU
         vU7Zj9J5coH3KeNa7Dh6hJp9OTuYhH9ju2yBVKtp6LDJoi+Kcg48VRSgErbAPLUT8uB0
         K/aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752052721; x=1752657521;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ddjMZCutufz18eoluPVKeaKDVNqg//G7ZHMUNzfUaUQ=;
        b=Q3PRVYcgcJxiUCjeUVbWjE9SjQiZ6+Xl3PNc4uEJ3Jk5Akzd8j6b+E1HDvWUsm0zbp
         Zw+3merhYVwV2JZnwIa72gD29rnSYfFc5zISYpNsd3c2XSSw9B/6TMh8295fg/lyWVZB
         eTRRXobv50hhJv8uQ4RQjDvQqzZR9Z+axb3qqKC2XC9E9KR6bf0GVyxtc4CsyBVG316Z
         QgsZ1oNbbl3cRhGDcryTcTetJ7BgjcED3GagMI6wWeWfncqb3yXBmCJapNDyOQrVIqoD
         Sa5Q7rvGlAsCCk0LgGdI2/ifzVcVm/T6U6JNV+LbS/EvLnDDSM4OUh/ncXwqDYg9A+4V
         2JpQ==
X-Forwarded-Encrypted: i=1; AJvYcCWYpPj15F5pseYECKu0qbOV+IiVlboTLHdS5hhLvHRRuZ53uGV/2LPp8NETY9glNkDLri5eFfvoF3w=@lists.infradead.org
X-Gm-Message-State: AOJu0YxP/FDG82P4wYW8FMR70xk3/xRk56AsrPQRY08LZG4sKUH3DLMZ
	6beUtQsMN84kd+xMSBVCTMrMgYTrzrVST8y0miU77nQDxeRMVa5jbqpTy3Z6Mj7GjSo=
X-Gm-Gg: ASbGncsbPZBr4Mr1THGXVhe4oaUnoVX0D4QXiempPlcE4z4jwx4tRQhIKnZn2e8nXkt
	rbpZ8kV/NjABSSqCf7t35TncTriIaDPqv9nbM2q+5NDBD6rOHK9CicZT3vV3NR1xIW95xtve2yG
	pHfahvDi8M7v69eeHjE3iaNCpUy74w8SnXtqwR+j2iEjJu3SErxR208PDl+GkJogYPqPI/qiMjQ
	z5owW6lVLRd9QW9Vmyvi6L/6PUO8oudrMvpjOoEZGmiCeTsCYwpbhLnwGdOxfvMwDCG1C3Obe5b
	eA207qGLFnC6HGz1zZXUGLXVm0AHBfMpdIZ7d2m8as1v9EAsmSrTp8eMf4UTGfmdhtZuj9SaeCR
	Evv8sLuh74s9cx68icEKVSTEUvHbmPnkW
X-Google-Smtp-Source: AGHT+IGK3bAftfEkjpmdqalxkrTWESjz3MCvrr9nzk+X9vGMEXTSCOonJxgJBiArXN52o0c+vXAJuw==
X-Received: by 2002:a17:907:7288:b0:ade:867f:1e9b with SMTP id a640c23a62f3a-ae6cf545dc8mr168060166b.9.1752052721104;
        Wed, 09 Jul 2025 02:18:41 -0700 (PDT)
Received: from otso.local (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6b5e737sm1060116866b.142.2025.07.09.02.18.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jul 2025 02:18:40 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH v2 0/4] Changes for the eUSB2 PHY on Milos
Date: Wed, 09 Jul 2025 11:18:14 +0200
Message-Id: <20250709-sm7635-eusb-phy-v2-0-4790eeee7ae0@fairphone.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIANYzbmgC/2WNQQ6CMBBFr0Jm7Zi2QFFW3sOwgHaws4A2rRIJ4
 e5WElcu30v++xskikwJ2mKDSAsn9nMGdSrAuH5+ELLNDEqoWmglME2NLmukVxowuBVtOfSDri7
 GjhLyKkQa+X0U711mx+np43ocLPJrf636r7VIFHitbKNJaN0YeRt7jsH5mc7GT9Dt+/4BitOXv
 bIAAAA=
X-Change-ID: 20250620-sm7635-eusb-phy-d3bab648cdf1
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Luca Weiss <luca.weiss@fairphone.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752052719; l=1202;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=MV3Dv7givJVTh/7aMdoHauUQLRrYUXGf0nE/cB3bHng=;
 b=TC3jsdtAaGPDvRxWi6boglngHAlDnksgBGQq8S9tpXg1SjQUdqq4+co+KVLo05+XfgmXWX1Oz
 gTuLU8NPuGJCMRJ3mNYWVqGXOXOuOEAav4nFKT4PSVvhJtoRakiZPKE
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_021843_507251_85B3737D 
X-CRM114-Status: UNSURE (   7.95  )
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

Document the eUSB2 PHY on Milos and add some driver changes for it.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Changes in v2:
- Rebrand SM7635 to Milos as requested: https://lore.kernel.org/linux-arm-msm/aGMI1Zv6D+K+vWZL@hu-bjorande-lv.qualcomm.com/
- Clarify commit message for "Add missing write from init sequence"
- Pick up tags
- Link to v1: https://lore.kernel.org/r/20250625-sm7635-eusb-phy-v1-0-94d76e0667c1@fairphone.com

---
Luca Weiss (4):
      dt-bindings: usb: qcom,snps-dwc3: Add Milos compatible
      dt-bindings: phy: qcom,snps-eusb2: document the Milos Synopsys eUSB2 PHY
      phy: qcom: phy-qcom-snps-eusb2: Add missing write from init sequence
      phy: qcom: phy-qcom-snps-eusb2: Add extra register write for Milos

 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml | 1 +
 Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml      | 3 +++
 drivers/phy/phy-snps-eusb2.c                                   | 9 +++++++++
 3 files changed, 13 insertions(+)
---
base-commit: 19272b37aa4f83ca52bdf9c16d5d81bdd1354494
change-id: 20250620-sm7635-eusb-phy-d3bab648cdf1

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
