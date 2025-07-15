Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2789C83F1D
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jul 2025 07:34:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=euy1oBjkNDnpuE5tLx6/1ZZ8LpjMmvZzoze2rhXaUbY=; b=kWrXvhSCTHAgLX
	QDpNDRigNwzQIIfGjfbEWBmHF8tZlY1P7jndbbih+lbw/nT2W+CnQ26Hl9idvJWes8qV9skJl7xeq
	6crjxAf4Su8Sw2DrCnGqfsUnx0FXsUJG0jCr3fE3lFOqNXZrPGtpPnZgGj0WrBH36BWXZSLfm0bbL
	rFCJyg+IiX8HGynQ1V2UzWte8IOZt18AKct/ts9LkTvYRpa9fwxUGXW/pBT9SeRpfcN+sRkR147kR
	I1rPigdg2+Hev68oBL0GNHSZcJRdqbhDYQ8AlhyRwQoaRxtyhZhgHSesguHsEHT6lNdrhIjvxGGwr
	kARESkGjzx7cqNMr3RDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubaBS-00000004MhJ-1KUP;
	Tue, 15 Jul 2025 07:34:38 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uba6m-00000004Lhu-2VQr
	for linux-phy@lists.infradead.org;
	Tue, 15 Jul 2025 07:29:49 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4555f89b236so35823935e9.1
        for <linux-phy@lists.infradead.org>; Tue, 15 Jul 2025 00:29:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752564587; x=1753169387; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=f6fKdp/I3oAtJ41AZWsqTeQzY0qXnxN3fwHvXO8WXa4=;
        b=K3jETorFiUN2ESwBzKRlxDNj7JuWb5Pl2X7sojcuAxFK/hJMQui9PxtDQbcGM0gP4+
         nspUuuU3fBOYvFMOntb6BEpU2Q/2kHdbvL9doah7hKH9nPFeQI/8xf1vW71tcfPlX+TE
         OZlp74n71ETTWZMdmRUZHyX4ow1erdKSaGIekkl5vlbru/BBMzHMGpBA7/kycZYA3esO
         JxNpJJG/qwLtGxdNuGcic234PR66oJC+CX41Eq3Br2LXhzgjhd/YuISzvrjSgX7ZxgOV
         TKsUEXFFpWa8uPRArLMTt6o5CDyFwjAqcoiVVydiohZACWcsp0TxpDMOk5ZrVgolB/a9
         6jmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752564587; x=1753169387;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f6fKdp/I3oAtJ41AZWsqTeQzY0qXnxN3fwHvXO8WXa4=;
        b=b2krc93SSTAZ2W/tnP5m1q/NypikxBXuMXd9NSreNmvKAnsI/uWdDPAkunb9pbQNRb
         eQU5Fx33zUMgd+PKoccuHxLlgMaQb8UT6mBTi/cb7ucOZIhU0FWQTypUQk3ovez/cwsb
         AG9H/1zDLbCn9UIHNXZS1SfX9rrZnOZDtzY7IjX87uoI29Ijml1SIFPC1OGPDY1JAZau
         EZnJBXvR380/sLsQpa/f+6SIOmNVPvXxVamIKI3ZRef6nfPGX6pfDcVywaQa9qYkAX7g
         g+TxDhgBiWgjJkteJjtz2If5YgGvnCvoqVySwtbA1VOWOHqYKtw62bMBx0zHPg0EywsB
         66CA==
X-Forwarded-Encrypted: i=1; AJvYcCVeRanuDbM2yyaGsXQ8A3zaJaI2xnvW7WShD90t2C/ptjkevCNPgZK69JUuQjQg92RgUGw7a8D1bdA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyLHvfKYsXX6D3U68QI+jv9HPwwvu3JOTfB2JlTRrcC0eVOn6Id
	myZmsOFEXhPEcJ29iG7yZJFRjtX+ctfqVTHu/EnQuT1bIF5ZsF/kO4cc1MwPJjrvAkU=
X-Gm-Gg: ASbGncuS3q+uEcia9ohM8RCyx2DZdvQr6RKqfroqHpCWd32WV2WXJ2d8kCaFedBvsKA
	X5LkyWPo0COUQH7hqhD8fv741BL2N6Xq51Lvi+qW3pmhZuaGMtVG31M+kprxJMCgjaIRO5e+Exl
	/mEj3ZU+BamZnT3pjWZ++YqbyNF4toj8nmwS766ICgxG6WOeeWg+IGrE9JbaxcqAV4h5TE6w15y
	eHSBg0yxZXr16FqrIEeOyhuzNVq0B4bXaXpvoNYQpoO7kS6nsznUc/5irSP3NJrC9KopHaX3+4h
	gb9ZM/Oo7B+HsnkguVRxB4Ce9OM9drqg3eT9SXkRTjHljKMCOur0fs/WSuMRUunRIpACz2iAcGd
	IyeWc0/JgH9QYepU/13QNad/E2iXDCJ7JVYmsOzPgeIdIGAcdCL1aODM2
X-Google-Smtp-Source: AGHT+IGG5/C3xBwiXlZfBkTPzKSCxIpXMT5JelM0B6XvmfLgCo3iFhVlka1xI/0VqzDpufUqJcL89w==
X-Received: by 2002:a05:600c:350f:b0:456:11a6:a511 with SMTP id 5b1f17b1804b1-45611a6a7e3mr67459555e9.20.1752564586974;
        Tue, 15 Jul 2025 00:29:46 -0700 (PDT)
Received: from otso.local (212095005088.public.telering.at. [212.95.5.88])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-455f8fc5a01sm106703395e9.32.2025.07.15.00.29.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jul 2025 00:29:45 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH v3 0/4] Changes for the eUSB2 PHY on Milos
Date: Tue, 15 Jul 2025 09:29:33 +0200
Message-Id: <20250715-sm7635-eusb-phy-v3-0-6c3224085eb6@fairphone.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAF0DdmgC/2XNwQ6DIAyA4VcxnMdSUGF62nssOyDUwUExsJEZ4
 7sPTZYls7e/Sb8uJGJwGElbLCRgctH5MUd5Koi2anwgdSY34cBrEBxoHKQoa4qv2NHJztSUnep
 EddGmZyRfTQF7997F2z23dfHpw7w/SGzbfq36YCVGgTaVkQJBCKnZtVcuTNaPeNZ+IJuX+M+Q0
 BwNno1KNoB5pEL4N9Z1/QBi9jRk9gAAAA==
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
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752564584; l=1471;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=fbYN3aPb3XXCiKQcnuxlj3EeuZKZPuonSYvZ100x1TE=;
 b=Rjj/7cfLdOoBVZeq1Uex30CfHl4mVnyxTojkjaBXB3wvxI+1Sg0gPtk3KypHpCgYRDpZMiCTv
 fBxKY9XYn3nBqH3/pWsaQOIzRV1+9BRmnl1PtkcifgHnhb/tPXnWY7h
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250715_002948_646907_68D1158D 
X-CRM114-Status: UNSURE (   9.49  )
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
Changes in v3:
- Make "extra register write" commit unconditional for all targets,
  write the register directly as per Konrad's suggestion
- Pick up tags
- Link to v2: https://lore.kernel.org/r/20250709-sm7635-eusb-phy-v2-0-4790eeee7ae0@fairphone.com

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
      phy: qcom: phy-qcom-snps-eusb2: Update init sequence per HPG 1.0.2

 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml | 1 +
 Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml      | 3 +++
 drivers/phy/phy-snps-eusb2.c                                   | 5 ++++-
 3 files changed, 8 insertions(+), 1 deletion(-)
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
