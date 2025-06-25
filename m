Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3415C7EE39
	for <linux-phy@archiver.kernel.org>; Wed, 25 Jun 2025 12:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hxfPrs09ZL25AryOnEnOMv1nsaI7lgra4BIyp+Kq+So=; b=j9d5bURJ8mQvSN
	pzrsC2HfNLy8T1CWbdMaUkbEGMgUnfEsuTP0UtoOalgcMegCJgeQMTASSx921IA03uVTbjS/avuO1
	QTCJuqxz05ZZ08mj3HMQgkMb7l5o1KpZrNlzJSHBbpr62x3qH+2mv2LWvS+jBe5bd71fJeiQbQPIS
	KtkYihSoe9zixob8pAnOVYWIbUJWhIS76JPg66aNSJZK9WjxJNCA//RD6FFvWkTpfQQB1ojEG7IQ/
	EK613nvfswiskcwi0naR5LP7t9H1aGP50cfgJIuzQqdn2gOzVq5wOkpOEn4srtovzqO1pc+P4ZRJj
	hCRDza8SCkvjhNnG3Rmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUPOs-00000008e9A-1vwZ;
	Wed, 25 Jun 2025 12:38:50 +0000
Received: from mail-ed1-f41.google.com ([209.85.208.41])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUMDn-000000085po-08qx
	for linux-phy@lists.infradead.org;
	Wed, 25 Jun 2025 09:15:12 +0000
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-6088d856c6eso2614182a12.0
        for <linux-phy@lists.infradead.org>; Wed, 25 Jun 2025 02:15:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750842909; x=1751447709; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BNbmjsRfs+5MKtBz+Hc1str0LQgPAk3FDVI40gqDF30=;
        b=1jl3b3D7b1LX4Kk0ZO9z1vUs90w40fFYkrW1ViS4ifiZlmKDANfJfjCH2RjPPoUG0c
         9VbKfPpSED0ak70KKJuGcBIZgIcIW5x+Auw0MR0O29TAtGKYfZXIx4BNysn7LPG3tHuu
         BeTblUtZ96ZrC2pPaSfgG7ILoVtELaScjXmbSBBDjo/fIQMVpIEYUVPzsJF0ghITey8z
         ahyuYPUtIbnWv15vWgizj9IImHD39ZMehUaGwZfZlpIUyb/+izFxamMq5qSMF8gSl4sr
         wytoMRhQjGMNlOGCyYbrdpGx8woNtSJSWDzWmfgeWmo37NerMZ2yHtTKbObGCuHCtHY1
         pV4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750842909; x=1751447709;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BNbmjsRfs+5MKtBz+Hc1str0LQgPAk3FDVI40gqDF30=;
        b=ZDDMSClUEHBS/VbYt7Ckj+ILML9InPXpXdPNo6/wYwaNFyi4Ed+X0yYI+lG1bwSSLQ
         GwnJbiGKFT7irbqt5hTXHcHdXgq0r4cXuzeAyTPlC2sr3tWuIPGOa6LHEdJW3spevDHo
         zucZmqSnDn208egQW39qFVnxv3/F06o6elUII2FGpb7qPc/5qZ0YxSJqQ3c5dZkrmvqF
         g+rToffnZEtWAXRFovWpLho3AJgIQPD1yS9yfI2ERybtZ21MbQqOjHZ4msYx8/ULEqp7
         fJ1+nf9Tfh22uTNFV22b4HD9EirqeXHklIUHN8J9q8Lt8WH5/62briE57BpG3ikNKC45
         d+jA==
X-Forwarded-Encrypted: i=1; AJvYcCWpev9rb0hnKQd1jYvCj1OcWNqvWr9Tm4+vNeualiYZ/cdPHt2J00a0fYV977LSBrnpj+sgNQqShdk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy2QcRZe981yR/uqhuE77Rp8ko2W3dITTMT/Ztc5uoUIDbpolOt
	kEY3Jh/tnPJkKR53HCX+v+dX6nZrpAN/aei9pwTzePTriBjPt0k58c+NfzhYhFbBsOc=
X-Gm-Gg: ASbGnctVfiTTu+6pv8cDasrYdoq4KOe2K0YjZ+UpClzfH2wJBjhYz4vQl2HULiL4y8G
	sgT4j3KkbtUBqNsz26iXCsQzccDD/P0tTtEPRgi99/yOIuOFym7ei2V7yJ2295bew8KZIwTsGfg
	R40ej2ZvmyZ8dYuPJLUd3xp8A+z93hnn7ENkbZsAT2BYjvwBySYeWFfKOYWZ3ZFMzuIjAVTRzGf
	vCWn8O2yGfiYFKJjKjizDCgr5BkYx5/wN7lTQNmTYYBlSaCtwV737kIPeNMl9acUH71TgDy73Nd
	Cnp3u/uBiMKo+Ryiq/VreocICdYeHARZFbjxiM6Cs9/5AAEMHYskp6eqMuzrt18QE+efq76yMav
	A1KS2es8kTBhBTN++bLvkliZTaFiPC7z2
X-Google-Smtp-Source: AGHT+IG57CJz1isUSxtWVBBEYQRRLDGKKU4vhjDr8x5m4ljvRrFsAIMJQ9U4pd0h5IliaKEAweVcYw==
X-Received: by 2002:a17:907:9085:b0:adb:41e4:8c73 with SMTP id a640c23a62f3a-ae0bf216613mr160528566b.55.1750842908235;
        Wed, 25 Jun 2025 02:15:08 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae053ee4c2bsm1008972266b.71.2025.06.25.02.15.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:15:07 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 25 Jun 2025 11:14:58 +0200
Subject: [PATCH 3/4] dt-bindings: phy: qcom,snps-eusb2-repeater: Add
 compatible for PMIV0104
MIME-Version: 1.0
Message-Id: <20250625-sm7635-eusb-repeater-v1-3-19d85541eb4c@fairphone.com>
References: <20250625-sm7635-eusb-repeater-v1-0-19d85541eb4c@fairphone.com>
In-Reply-To: <20250625-sm7635-eusb-repeater-v1-0-19d85541eb4c@fairphone.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750842904; l=892;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=aHm0Jgy1AJtO2/QKW2dbDq0Za7rk572Z5sUBzOZUKws=;
 b=VoHPW5DMLvNPMM6DDkiYwX+LlqHDBFUGbIVQ1Nh8rd4tWymfU9M9U6C73Yan+YQLqkLap3kKf
 I7X99swY3UvB8Zq+wjtFZbCPYxBkueCtQoSzMtpo3vM+aIUkFEJTORx
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_021511_082937_2EFCC498 
X-CRM114-Status: UNSURE (   7.50  )
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

Add a dt-bindings compatible string for the Qualcomm's PMIV0104 PMIC.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
index 6bfd11657e2992735998063b3ca390e04a03930d..5bf0d6c9c0256300d00f84307b7f6ccf669f17c4 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
@@ -22,6 +22,7 @@ properties:
           - const: qcom,pm8550b-eusb2-repeater
       - enum:
           - qcom,pm8550b-eusb2-repeater
+          - qcom,pmiv0104-eusb2-repeater
           - qcom,smb2360-eusb2-repeater
 
   reg:

-- 
2.50.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
