Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09538E95A6F
	for <linux-phy@archiver.kernel.org>; Sat,  7 Oct 2023 14:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hm895NWXDPtXXTfSJStSSQLUhwDLH0wWqtO7ykYNHiY=; b=WFbNPp9N/7ZD/I
	iMF6HXmWPhqjmB7HGOq6cWUrVvr7Zq88BATrl85B6+yeLG37rRIMwnnxuRAUkzEaQ/075OFPVTek2
	MWc4zCugdiUPGn33Zsjy3KiH7OwQ2Jvy72dFmCvHvRQ/Bf1EuSp+FO7c78ZO7h5H0EiN8zrG1wpHd
	YnyO1z0swePQV0aDCzu+kBAKAgamRywVv0JHhVtoStW/nMssNcnTpUuTxYCApGCw8S4V9O/aL/KUw
	S/Tb50lzOV0LGczv/besAYG+G32GP5OgFTpESpHQSWOjTtcwb3fkF0TQnpNOjkGcXtBozAN3kWYuK
	9JpPaTMU5J8g1ZmHedvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qp7re-007cjD-2B;
	Sat, 07 Oct 2023 14:01:06 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qp7ra-007cfv-1J
	for linux-phy@lists.infradead.org;
	Sat, 07 Oct 2023 14:01:04 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-325e9cd483eso2941041f8f.2
        for <linux-phy@lists.infradead.org>; Sat, 07 Oct 2023 07:01:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696687260; x=1697292060; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hntI7Hmvp9NHpiyQmV3a36nodfLUjXNIuHQCuLeWAZw=;
        b=HSRpW/zb+wLI1oVxNtdqdIOrONyQ05EyPPsH2WPMYEZo2YkiALBZ9+VsChXVuJVkOM
         hDPMWobnq0rioaN0aLaz/+2GlVGt8d8K0Z8VUxCELVyrx3KewUKFjoXXybUMQRJ+dkxO
         E+6dizlljiU/4b4CUazBtmPU8EXWL6S6iCnkL2BnHeqeK/2GfM259/D9aFpBrXYNX0Pq
         K0SUFEgho5XqS7zc1/Y9SUe4g66KyaOcOX2Ge7X0yESxdRnDquWsff33nmIsQA5eRbyo
         TpEP0dN6cCBrkAU0S5EwQHRWUGAwoLBMZ6R9GOJHqnlZWreYRoZOHQb6TnNDaWVWY6T+
         UYIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696687260; x=1697292060;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hntI7Hmvp9NHpiyQmV3a36nodfLUjXNIuHQCuLeWAZw=;
        b=cqLnYqXqafx5zBvDiysq20V0XEFqnQPBgkQyN57ByGGATCAn/A0xzj2oyrR/mJ6gij
         xBcm3J/LPN5sSFVp/mksbH4tcsnzdHJxt5sPPGl3x+Snuvwpf3S3MkM1ewbcBkAeT5Kv
         KpTU0b7aoj5Mdui20wDEZytTTtRJIPuxFePwHyzd5fEmW4kFPoeh1ebx4hYyxLZnRCoV
         pWwEeM9XhRCYRT/1y2NQf4po78uOfeuy+lkAsTy/+nenfoaMkySrUrB3xD9NPieUMKPh
         FYJSsZxOvCQf9x/tkebHMUQs7Mjb7B/vxlCLsS4V3y9jC0p5w7n6shqEfyCN+SYPKxwX
         7JTw==
X-Gm-Message-State: AOJu0Yz0dhLN/jGwJA1w18X/anMsSH4MWB8SQasGBEm46MBvbi5BEWyS
	ixSKk4XDWLyI99hf8LzVVH8=
X-Google-Smtp-Source: AGHT+IGmI0hR1r89mbKERJ61t8qbqXeoRI18pH1s9Q/bcuWYAdvgKT2vzmfdQtLVL6VEi3SNgRLgZQ==
X-Received: by 2002:a05:6000:128a:b0:31a:d9bc:47a2 with SMTP id f10-20020a056000128a00b0031ad9bc47a2mr10713714wrx.53.1696687260289;
        Sat, 07 Oct 2023 07:01:00 -0700 (PDT)
Received: from david-ryuzu.fritz.box ([77.22.112.104])
        by smtp.googlemail.com with ESMTPSA id q8-20020a05600000c800b0032415213a6fsm4332043wrx.87.2023.10.07.07.00.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Oct 2023 07:00:59 -0700 (PDT)
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
Subject: [PATCH 2/7] dt-bindings: phy: Add QMP UFS PHY compatible for SC7180
Date: Sat,  7 Oct 2023 15:58:26 +0200
Message-ID: <20231007140053.1731245-3-davidwronek@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231007140053.1731245-1-davidwronek@gmail.com>
References: <20231007140053.1731245-1-davidwronek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231007_070102_441603_FCD15262 
X-CRM114-Status: UNSURE (   8.59  )
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

Document the QMP UFS PHY compatible for SC7180

Signed-off-by: David Wronek <davidwronek@gmail.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index f3a3296c811c..f2eee8b5326f 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -19,6 +19,7 @@ properties:
       - qcom,msm8996-qmp-ufs-phy
       - qcom,msm8998-qmp-ufs-phy
       - qcom,sa8775p-qmp-ufs-phy
+      - qcom,sc7180-qmp-ufs-phy
       - qcom,sc7280-qmp-ufs-phy
       - qcom,sc8180x-qmp-ufs-phy
       - qcom,sc8280xp-qmp-ufs-phy
-- 
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
