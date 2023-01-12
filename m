Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB8E0C677F1
	for <linux-phy@archiver.kernel.org>; Thu, 12 Jan 2023 13:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5k5u3VT1rg/3v0bc6k3erlS0FSI9AmDVTaIvdsACGhk=; b=jD46mz5oj9m0EJ
	vM1hCyeyFJTpusXQmf/ZmFsCCh8pyBHMEmngi/hiXfiZt8DK84y97s399OTs8ytWg6bJmfehf43io
	tEPeMxNgXBO+GnyAptcML4TMckJcl6xJU/jV9pEKRcUPpzliKfkU/YPHwJ7jr6cYs+4KjtRjG8NzE
	hnubrWZUTTzO99Ki0RZ13KLC723MUiqtXb2cit3WV+xLeiIT1du1Y8E4EuRNqW26bphjxJc8dKbPs
	2KJlpI/E8PysMOK4aO+jFNpBvoD1F7jr1C2V45zc5zD7oaoWeTqvjhur5S+R00XgWU0hHorb0kA+E
	uWGjVOmwoPVXF7qRC35g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFxHM-00F5eJ-2L; Thu, 12 Jan 2023 13:06:00 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFxHG-00F5c7-Pp
	for linux-phy@lists.infradead.org; Thu, 12 Jan 2023 13:05:58 +0000
Received: by mail-ej1-x62c.google.com with SMTP id vm8so44589798ejc.2
        for <linux-phy@lists.infradead.org>; Thu, 12 Jan 2023 05:05:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Js79G0ew5SBLWV/rp6ARJpWVK36TQx65bfTfHk7gwPY=;
        b=WdwnFkSJ6TcQXJX0/YPUg2u26LJdKuuvmh6a4VmVSCu93pLHHZCqhBDl7C1Mom7mCc
         L+Rw5jcBJjG+adaV+vlEyQ9oAFCmmXgMNWC0mFzirsmDljWLksDNmPVFAEJ4nIAcKWxf
         l/AlaCkYpRXdMvbtZqNPfhJREPhB3M79ZcCqFEQx85zXwPHNOKAxGscs7tJLK8B9Q6WU
         ZAZBBT3XbLWn6mo70gZaZKx22EgIpGuMbRZEkAqMoS9WC3B6c1OMr8jn6+0ycMil6uqF
         9wcmyiDXs30gAuDSnmgm9/AJWGCYLUY34uD1HqX8IOFIeZjfgtO2eKUkleO27LGwx8ZF
         cG1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Js79G0ew5SBLWV/rp6ARJpWVK36TQx65bfTfHk7gwPY=;
        b=SVjeZ/sL+ucmeYbVTnlW5RxY2FAK2J1mS94W5WqHo4efnAYxHDEuXYigcwkKCopv8a
         RO1bNQ5TtztU8pfpYajoBakM97BqAOw3t0f6UwvA3dKlgHdls+HSaVUN519RirZ9WM19
         v20V2Tp1Jypt9tlL0G735uWRy7ap6dYOelO/Fv2Q99vakWvp9fMhodqczwPJfdnXDhwS
         p4o9GqILJAhwyJS9q3NqJY03GRIo65WkA/zedF5V6oIXAdkmH15S9tpy2v2sqBmvuJeJ
         GQXYNNHezxamgL35U9CsVRHV9z59qrM5Da1ICRdpNywmWvPx+uWCUtP59rySLjlqB9r9
         YARg==
X-Gm-Message-State: AFqh2kpRXdiup7NkCKJGCIeRkzcs/UmvblkSRFGzh6aYnl9DWAT1ubyy
	uk5tLNsTIemrxY/JyHqJ8n710A==
X-Google-Smtp-Source: AMrXdXsOc8saCzmD/dXqJ2/l2qrKh7yzarDqaDTYDJKr8FLOUpOP5e9rsoahF5JlLSFJYI/9/P2l4A==
X-Received: by 2002:a17:907:d004:b0:7c0:f213:4485 with SMTP id va4-20020a170907d00400b007c0f2134485mr66310785ejc.73.1673528752001;
        Thu, 12 Jan 2023 05:05:52 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id 11-20020a170906318b00b0078d3f96d293sm7427668ejy.30.2023.01.12.05.05.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jan 2023 05:05:51 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 1/6] dt-bindings: phy: Add QMP UFS PHY comptible for SM8550
Date: Thu, 12 Jan 2023 15:05:37 +0200
Message-Id: <20230112130542.1399921-2-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230112130542.1399921-1-abel.vesa@linaro.org>
References: <20230112130542.1399921-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_050554_877708_09EAE195 
X-CRM114-Status: UNSURE (   8.31  )
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

Document the QMP UFS PHY compatible for SM8550.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index 32ed1886fbae..cd4e877415d6 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -17,6 +17,7 @@ properties:
   compatible:
     enum:
       - qcom,sc8280xp-qmp-ufs-phy
+      - qcom,sm8550-qmp-ufs-phy
 
   reg:
     maxItems: 1
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
