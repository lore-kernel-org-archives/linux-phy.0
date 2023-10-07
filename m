Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 470C7E95A6A
	for <linux-phy@archiver.kernel.org>; Sat,  7 Oct 2023 14:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I/v0jB17OsQNQkirtZvLbueTngTIOu7OI5REtdB36kI=; b=UdPgHfOjPNVxLf
	57H8fFk13eePPGVGDdnlJTCH7dPPluLjF2GMhvM3NAHpClFZnKSHzwXicXTUaC/xKKt9OdKLzTHUX
	OCscXfiiisQ9F7e+x/Qa37+0pCziDMAjWnFpRjx5MJHCrRtETsTFHIu3pw20vkuRHwz5dX2xdY+uD
	arkohcXt2S3ARhZSAQqahZ58abRr5EvL0Y1DvqmefmWBU8f200HpusGGB8Vt4uBhMZ3xyB8q8zrN5
	cBC4y4eKhuabEgVFBjS3yBwCYHdxTW/SibJSWFOlMBKJC7qY9vsRJv62OZE3qLQAANt27n9N7tD6D
	tPQWVrOZJKywWY7zB0eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qp7rc-007chT-2J;
	Sat, 07 Oct 2023 14:01:04 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qp7rZ-007cfs-39
	for linux-phy@lists.infradead.org;
	Sat, 07 Oct 2023 14:01:03 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-406650da82bso27725765e9.3
        for <linux-phy@lists.infradead.org>; Sat, 07 Oct 2023 07:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696687259; x=1697292059; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VGOiBnjw4/x0MkXFgDDiE4Fk7/tgt630it5dnumIjlY=;
        b=nIu23NXo4bDX61Zo29QRLLEAy12pHhkLnEzloY+pnxsBUDew0gJwtmnBeancuigS9w
         WsL22CZ82FPfEAYp9U3XrmOX3WPNUAN7iJ72VcZCwGTWwu7xr59Fjo0wu4Fsr+Q1lNch
         PZfmK5z9oLMQ7azJ3un2kO8W5RmeKrmWDKLYogl9dnJEuIZHClpWX5gzUvmsYtONWNyu
         S6RFkTdi98QeFQvUZFNtaTJipPmUHShyAi+mx7nYUhjw2zIo7/EsiLZ6PWj5YkjOKd6R
         OzmsqoCxEoSYy8H8R5bSd+kiVFJGS983PGHCI6d2vi4RHCcts6s+SMS17b7i3AwBNuZZ
         ZQ+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696687259; x=1697292059;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VGOiBnjw4/x0MkXFgDDiE4Fk7/tgt630it5dnumIjlY=;
        b=Vkrj9srEbKNnG0F1YXytOlWDHSi/CR+8w3WrW9AAtWGSQbbypXbeb7DskfNvOpGxNK
         FCp9CIWp12rwsdvqn5mwbcxmAllQGiQvqP45swBpC6/NEcVZt/l+ZYjLHa7lGm1n5uwa
         lobCl1fKJbhnI5P44C8WH2VokZSImSXRvwrUp4GBrXjAah5mtqwYXe3n5GMJ+WmWRCiO
         dEgn8N+ZWUnWlDmJpGg0s731TwUe0o0/yPpB5YFdeipbO5f1ZOVG9Po6AHWscwz1JHLM
         Hn1anE53Gy3mPHod04sBgoHfUbDOnCKumO2HkPnJAgGXQV9QFdSLkQoU18tK+C53Ab50
         u8qg==
X-Gm-Message-State: AOJu0YzNwBul4RjjmT3NtAa2ObZSVbUYAsZIRkLJG8e9x9wsaZTqxuK/
	INFzMllWUMoF6/+W13U3un0=
X-Google-Smtp-Source: AGHT+IFUlOCstpFBtle9vJcHnRwKqht1Ydvm5Cr8wkCt/VplSUpVI+3bXftOtvU7hIWIsuDALe/TQg==
X-Received: by 2002:a05:600c:b49:b0:406:7232:1431 with SMTP id k9-20020a05600c0b4900b0040672321431mr10355053wmr.33.1696687259174;
        Sat, 07 Oct 2023 07:00:59 -0700 (PDT)
Received: from david-ryuzu.fritz.box ([77.22.112.104])
        by smtp.googlemail.com with ESMTPSA id q8-20020a05600000c800b0032415213a6fsm4332043wrx.87.2023.10.07.07.00.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Oct 2023 07:00:58 -0700 (PDT)
From: David Wronek <davidwronek@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Joe Mason <buddyjojo06@outlook.com>
Cc: cros-qcom-dts-watchers@chromium.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	hexdump0815@googlemail.com,
	~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	David Wronek <davidwronek@gmail.com>
Subject: [PATCH 1/7] dt-bindings: ufs: qcom: Add SC7180 compatible string
Date: Sat,  7 Oct 2023 15:58:25 +0200
Message-ID: <20231007140053.1731245-2-davidwronek@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231007140053.1731245-1-davidwronek@gmail.com>
References: <20231007140053.1731245-1-davidwronek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231007_070102_015985_CD2277EA 
X-CRM114-Status: UNSURE (   9.26  )
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

Document the compatible for the UFS found on SC7180.

Signed-off-by: David Wronek <davidwronek@gmail.com>
---
 Documentation/devicetree/bindings/ufs/qcom,ufs.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
index 462ead5a1cec..f99a933cc217 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
@@ -27,6 +27,7 @@ properties:
           - qcom,msm8996-ufshc
           - qcom,msm8998-ufshc
           - qcom,sa8775p-ufshc
+          - qcom,sc7180-ufshc
           - qcom,sc8280xp-ufshc
           - qcom,sdm845-ufshc
           - qcom,sm6115-ufshc
@@ -210,6 +211,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,sc7180-ufshc
               - qcom,sm6115-ufshc
     then:
       properties:
-- 
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
