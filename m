Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0425CE95A6D
	for <linux-phy@archiver.kernel.org>; Sat,  7 Oct 2023 14:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J+YTma99PIqb3mljD82+I9X1fEMBH0NjvRYXyFgWkv0=; b=yicB54yQb9Y7C2
	T7S1KFbiCeQHOwonDUgp3BJNVc16zqJicZGMQb1WIZ6swzUSlsLVd8X0eSz0k8H1TiqExTpZCUXZb
	q1fOC4JDDuJEqY1w9YhmdiTCpsXWWGujuHzUe1UUODY271UjPilm1H4vv3LNkDD6f11QEMLTJL+A5
	6hQdwJvjI38eoKOlbW+/Q7q5MHcSUzJkAU9t1hcCc2DLmCpw0joVE6obnbhjIPLPDh4PS26Ew1x2G
	nn6sIZ/tP4qkF2zVt/UuQuw2VLEIaEeexmTq2q8sfSuQsa5dMFUQEEs4UVqdQv4lrfnqgFf9k+z67
	LztOXaos3eNuNR9K2yow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qp7re-007cj0-1K;
	Sat, 07 Oct 2023 14:01:06 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qp7rb-007cga-1C
	for linux-phy@lists.infradead.org;
	Sat, 07 Oct 2023 14:01:04 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-40566f89f6eso29924505e9.3
        for <linux-phy@lists.infradead.org>; Sat, 07 Oct 2023 07:01:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696687261; x=1697292061; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jw8zYERSqEu+kmYmyCghLNxuUwk+IwP5R5Agq5Rn9uQ=;
        b=BdDaQ5N4yRtqWWOBfmm/1RTW2ysYb5CnEN9UL27URHsU9Ct+b3i6GLs/zEc05WLRRf
         n6Tyiwf4lgEmJl3+kaKVQTm8r+VKdaMccNRdc937J+ZoiZpivFF5Xmc3FdKf3YWtyTad
         0BVOOTpLqvK8YrYS4An8iEknX/T249YUYwBTTW2S4MnVOzAtj/1NkYNyQX8ku0Hsyhzz
         FT1kQ2P5eN9CdkpfDUVApBsZ3KH7adjJlDIrb2ZDFBJaoPeeftrlkSyORKZbI8ZZjP3h
         VYmV3oYNa/zp6QAaHcBBOTJOnzjHLZDu7Rw5NNddJPb3QIclWVHZKXTcvYtxYITaRJ0D
         z9yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696687261; x=1697292061;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Jw8zYERSqEu+kmYmyCghLNxuUwk+IwP5R5Agq5Rn9uQ=;
        b=BzD3iQ5yjeD3lNGIm7Wg78Fud/m69TlrT6uo2jk9finQQRRO0fUCaks5ua2SlcMHuY
         tIf6G+tLxClqviWr4FCVcDzRqkdNh/XDSXPMAjdMTqtsFPVUCs32pjRGHHjxCXfhFu85
         LEqDV4UwHEF6oogdiDNUGW9tzV1NlH19b+ZMJGLHgTuXF8R5F+ShFx+rGOODuku2VY7L
         VS9FrVHwYF/VPCrN2hPTIEKhC3tLgpx5apf9z51UjGoZIONcBcHIEZrnEnv3644uTDvV
         W5uKMOQKfjGjaNfr10xwB7v7SlAUXrfcp0Ju2IiGSFOc3QIQSMw3EJnfPOM+mIHatf/i
         eodA==
X-Gm-Message-State: AOJu0YzYa/yhTVsMkv7VLJ7o4Rc4LoODKQmi0v4/r7Wam3x3t/xz3Noc
	fQeVKxjtcpBdNNJfxcAhPGY=
X-Google-Smtp-Source: AGHT+IFQptrEpwlPW9ot1SQ6UuDVRo1gaRXqfUiACI4NmGULahJnOISsiOOHpR3YvXdLnvR9QM+HrA==
X-Received: by 2002:a1c:6a18:0:b0:405:4a78:a892 with SMTP id f24-20020a1c6a18000000b004054a78a892mr9155691wmc.9.1696687261384;
        Sat, 07 Oct 2023 07:01:01 -0700 (PDT)
Received: from david-ryuzu.fritz.box ([77.22.112.104])
        by smtp.googlemail.com with ESMTPSA id q8-20020a05600000c800b0032415213a6fsm4332043wrx.87.2023.10.07.07.01.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Oct 2023 07:01:01 -0700 (PDT)
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
Subject: [PATCH 3/7] dt-bindings: arm: qcom: Add Xiaomi Redmi Note 9S
Date: Sat,  7 Oct 2023 15:58:27 +0200
Message-ID: <20231007140053.1731245-4-davidwronek@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231007140053.1731245-1-davidwronek@gmail.com>
References: <20231007140053.1731245-1-davidwronek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231007_070103_407692_CA425428 
X-CRM114-Status: UNSURE (   8.99  )
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

Document the Xiaomi Redmi Note 9S (curtana) smartphone, which is based
on the Qualcomm SM7125 SoC.

Signed-off-by: David Wronek <davidwronek@gmail.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 7f80f48a0954..42461b0f19a1 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -984,6 +984,7 @@ properties:
 
       - items:
           - enum:
+              - xiaomi,curtana
               - xiaomi,joyeuse
           - const: qcom,sm7125
 
-- 
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
