Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21D23C7115C
	for <linux-phy@archiver.kernel.org>; Wed, 25 Jun 2025 11:23:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GOnjWC6+UrH3NwxdxOpRtGN0HsfUhtfVYNP9/YH/5cc=; b=Rk9ugTHd8rBWtB
	Ia+yd4O/A+z0pN2Ub2Zm2okbfwApg7U3PdP2CsOjppI0RMqxoSSQBBY5HAtlw6WWJICMdi8hM7MGS
	g9WqbcEH/7Y0QmF2LdBtGAR/mHjqZgx3yLifc+eaeIgoD1LjC//Qg5TweVpAxtW+SBucxVlNkgI2d
	0jHDlFHl4glX+G8hDXJ2VLHfrzSe05MrELcRlwVYdsS+oEypE6eOEGM7NnrUeqFaQjCnKt9OL0CmX
	Sy8egB82dxmYFUuKQxpLFAy5Z8LJGviDNbVbX7nTv7oazi9wWmaMBYyghSD2u4eYU+rYq232n8mn/
	8u/MDvY2TWwL8WQv62QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUOEI-00000008SQq-3jJo;
	Wed, 25 Jun 2025 11:23:50 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUMDJ-000000085fl-2OYS
	for linux-phy@lists.infradead.org;
	Wed, 25 Jun 2025 09:14:42 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-adeaa4f3d07so1194847766b.0
        for <linux-phy@lists.infradead.org>; Wed, 25 Jun 2025 02:14:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750842879; x=1751447679; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tNPdorLxClaT/uQLIG+PJ7OfFR9MMk+m2oDiINzPpBY=;
        b=yTPPs155zmjgz+KNgbNt6NS40TFj5gI0FMAizDGFv/B40EPCS42SwkJv46SDFfMyVn
         VLhyDPbWflqWe5Y1T14ybea2mALYoqvAn9Zx/528X4hGom+n5CZY7Fq//3ydOYVKOgpI
         xofHBKV5mp46qRXcF3jn7qaADPzjrf1+7qvkkvoKhgZEE+eqWxJ042chgCmI9sVQEJ33
         tG7hgeM48+hsgJOQUGOt7tugrGKQTNnGrWg7XnebvWXknEXUpApS4K8nKu0G1aCi/kJG
         ZwvUQaa4hC5vPgudGLXXi1DBnQzYbIQ0sa0D1Ee+MNg/w1Ju0qzCOXi9zcRsNYaIPAR0
         UWBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750842879; x=1751447679;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tNPdorLxClaT/uQLIG+PJ7OfFR9MMk+m2oDiINzPpBY=;
        b=DlKB/lr/8UyPF7bdBm/wJududN4KVKKwkxeJjTHDDfXCumfyCTTyyQhXJh2/CuzByQ
         9ikeAC/IJGjr1tQ5drg8ruwe6zau4tqRprFWwx7W1BEg2gwfJTchWVP3H4IBhgN8MIvl
         sv1JVZGD7WHxJ4N9gscMkwMX/fdLChOwSuzAVwzgKrrXBcXkydmTUnENZ1fQqMtMeMy9
         bwnJwaSMdOMEIbXy9pXR/1uyxLHh3MK5cISRY+p7AzUHl5B6MSBeTbXLWVnxF6VREw5q
         0hDMIjNZ1VZq7Mq+INOIKA+190gnli9eUs+Ao0HbYNb+MBfg6ZfK29GJLlXDBBR0qSUm
         G76A==
X-Forwarded-Encrypted: i=1; AJvYcCWYygA0NsMLq8VtkCkRyZPjBHEORTOCiHSaW3K4HGjB5F08+VEMzAEJCeRopiml+WsDHEuGY52wyhE=@lists.infradead.org
X-Gm-Message-State: AOJu0YzrxjK+K8EFVM3gs7Hbl74DPDZwNNTYn8SoXBmUPJKOQkp3rgTR
	ptp0hbzP+eRC74d2QsEncAVQRTBr0lbimlcSjIWVYNhk4rqkxztY4pKkSeKzOX8m6QXv6oErBS4
	OB0HX
X-Gm-Gg: ASbGncsnE1wPk+OwYC1bOdxHTNtVr+jZZnmptwgAxQ/uI2D+lQMvo6EA6O9tWk1AFKF
	uF6XjeSQLocL2KZgVM5nu4BmAD+Ma0lq3i0TmTiCvRu9Tak6ZT1Ko5nK8Gik4po6u+kzp9A4S/W
	XE4e9f/KWG9Hz37Cog94S2rkdY5YKJK0C94K58JypYj+ZvH8REgaA33My3nfVEccUyuflG9ih8E
	YnSM8/i2CogomTlzttCaa8OT//IeFTUYPWuXYMMdCsBiKU97cW00vVn9+61OJm6kMTgE1vxUPRS
	rpJDPHxnb8y6MgAzyogTq4m1fgj6h1REldoGbNR0se10xWFzBCYeSQxm77HaMO+ZvH9312tAonQ
	byIlEsquJdpT30y7x4+zbIR89GNHE8Gph
X-Google-Smtp-Source: AGHT+IHpq9unqR2oaBvwa38Bk0ZRvwuj5rdTKcuQ+rG7jUe/JThlIksCFQb3sLZOckPwpcJlB25wYg==
X-Received: by 2002:a17:907:d2dc:b0:ad8:959c:c565 with SMTP id a640c23a62f3a-ae0be7fdea7mr236805266b.6.1750842878906;
        Wed, 25 Jun 2025 02:14:38 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae054083c95sm1021480166b.91.2025.06.25.02.14.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:14:38 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH 0/4] Changes for the eUSB2 PHY on SM7635
Date: Wed, 25 Jun 2025 11:14:28 +0200
Message-Id: <20250625-sm7635-eusb-phy-v1-0-94d76e0667c1@fairphone.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAPS9W2gC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDMyMD3eJcczNjU93U0uIk3YKMSt0U46TEJDMTi+SUNEMloK6CotS0zAq
 widGxtbUAVRupiGEAAAA=
X-Change-ID: 20250620-sm7635-eusb-phy-d3bab648cdf1
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750842877; l=875;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=PAGDNepLOywQBabUDSRzPENpMzvIh8vhIPwgCFVMPTE=;
 b=RIhv8EznDuMD7oLSF0eD0DTG+LFSs9onAwJO9X6ATkc4ve/pGpLEQM3tBajj27EkSJyGXiNRG
 gika5+0wZNRDRMnR7hBSfSIOi5tnmca0nZU59SyhOSKu6R+orpFTrxv
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_021441_615603_D3D95DD7 
X-CRM114-Status: UNSURE (   7.49  )
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

Document the eUSB2 PHY on SM7635 and add some driver changes for it.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Luca Weiss (4):
      dt-bindings: usb: qcom,snps-dwc3: Add SM7635 compatible
      dt-bindings: phy: qcom,snps-eusb2: document the SM7635 Synopsys eUSB2 PHY
      phy: qcom: phy-qcom-snps-eusb2: Add missing write from init sequence
      phy: qcom: phy-qcom-snps-eusb2: Add extra register write for SM7635

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
