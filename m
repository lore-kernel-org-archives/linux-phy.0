Return-Path: <SRS0=FSiF=NE=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1E62C4338F
	for <linux-phy@archiver.kernel.org>; Fri, 13 Aug 2021 20:14:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9C5E4610FA
	for <linux-phy@archiver.kernel.org>; Fri, 13 Aug 2021 20:14:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9C5E4610FA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rR+rMmBkFuqZUq7W7IgOLzE+NfFatQRuuAQznjfHEDg=; b=H70c8i9pCYwBzT
	DjBgmrzcYt2rJfxCCzHKIfmpGWdPB2M6I2Mdi4PyyjyGachluLeEg4tczUARhjpc2HSVtvSCqXKE9
	QRglt1tU7KTUHUkTpc9rvM8y9OLzwbvF437keST5EE0yVu6LC3Qwhnphnb0ABtGxYlaKUPRzRSoUd
	TxIkh9JHVLVY18dr/6jBWimd9K2VfE/kcQoJHPYlGK2P1VCoZoBnEcMt4GX3HnmDs9iOjGp4MvFov
	6EX+/VNARWI0WSuwmDsLtBTBdYJ/4521aCQ2e6BrOL7BH2yfTYXe2T2hDc8AIrvmErVxhKE9TtVIe
	FsWUuqcD3edbUPf9XYuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEdZC-00DXZW-5L; Fri, 13 Aug 2021 20:14:10 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEdZ9-00DXI1-Jj
 for linux-phy@lists.infradead.org; Fri, 13 Aug 2021 20:14:08 +0000
Received: by mail-wm1-x32f.google.com with SMTP id
 o1-20020a05600c5101b02902e676fe1f04so8272128wms.1
 for <linux-phy@lists.infradead.org>; Fri, 13 Aug 2021 13:12:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fSjHQTvk0FVejWbp1Z7NELOH8hKVDSmJY2cV0c3KhBc=;
 b=u9LR/E5tFALGowh1x6KniM3RRnYBBPPZjT5Hb39tX66i6/3G4DSBq4ngeYKDTJZXxy
 m+1e5IhkINRukDKwhbaOnThxkSntUiSbJVmek/AM81Xfev+n7YszVUIS1fnVNC8LOSy1
 zCgz6IffmOiCvRMa8eQnHgtSQaF2+CRV60wccNAinhMjqA49a+TWJFey7kWX8nYv8kCz
 dGe/gaYRvS6vtCNltMaiyz///4TWb4ZF+UFSdBj+Kr2yYR/sL01+FLkx6RiC1VehGtaC
 GYQu6I9K7Kwlfy+fmaZ5SF+7Hiy3xQkF9vgEwhWwOV5AcrC0t8ZgoSGB3DurYPN4GQk2
 h7Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fSjHQTvk0FVejWbp1Z7NELOH8hKVDSmJY2cV0c3KhBc=;
 b=UZdGQcEuERNpMSnYQpMekEAauK4kFLm13hC0S5jHNRxfYOxpre5N8dV1AQWQaHkQ45
 9J9N4x0jGQAUE9+U8JNAO2Vp9bqpXx+71vUcBUu8yXNuOYpHIK9YAJZxRNy0EqFW6oWz
 SS4UcYhI5wdohOPwQMP0IOk4/snr9X7oDshXfrHVkrU6z31GUrMQtwC54rLtsRkdwLGC
 PX4Qw8UlaJc0B2521Ak4qlgS/XWmsGt2Txhm5llssgllj5x3vTfVhjKK6R+90cmTML0p
 lDu+1AB/xLIaG4zxHnRkMjKMsQRQwA1ibXfXAjwePzUePtvJelPIVLVoRXcbuc3s0ahD
 IUWA==
X-Gm-Message-State: AOAM530HHeK1u2USYX44AVpb2PpMjlvNOtd1Wx0lzgHPX7GHVKPmA//7
 TXVlZ2cuzDPEaOZv1c7akew=
X-Google-Smtp-Source: ABdhPJz/uCFMtYgo2i8YsjHWNV9msRyMjgaZDArRwjAqpKuxPAI1vz0tcxes0wxJNiGeGnfo7QEcAQ==
X-Received: by 2002:a1c:9dd0:: with SMTP id g199mr4363007wme.12.1628885523760; 
 Fri, 13 Aug 2021 13:12:03 -0700 (PDT)
Received: from localhost ([91.92.14.102])
 by smtp.gmail.com with ESMTPSA id f2sm2501147wrq.69.2021.08.13.13.12.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Aug 2021 13:12:03 -0700 (PDT)
From: Iskren Chernev <iskren.chernev@gmail.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, phone-devel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht,
 Iskren Chernev <iskren.chernev@gmail.com>, Rob Herring <robh@kernel.org>,
 Manu Gautam <mgautam@codeaurora.org>
Subject: [PATCH v2 1/2] dt-bindings: phy: qcom,
 qmp: Add SM6115 UFS PHY bindings
Date: Fri, 13 Aug 2021 23:11:50 +0300
Message-Id: <20210813201151.974512-2-iskren.chernev@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210813201151.974512-1-iskren.chernev@gmail.com>
References: <20210813201151.974512-1-iskren.chernev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_131407_693547_78A94B97 
X-CRM114-Status: UNSURE (   8.79  )
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

Add the compatible strings for the UFS PHY found on SM4250/6115 SoC.

Signed-off-by: Iskren Chernev <iskren.chernev@gmail.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index 242560ff52a4..7c3c8710ab47 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -35,6 +35,7 @@ properties:
       - qcom,sdm845-qmp-ufs-phy
       - qcom,sdm845-qmp-usb3-phy
       - qcom,sdm845-qmp-usb3-uni-phy
+      - qcom,sm6115-qmp-ufs-phy
       - qcom,sm8150-qmp-ufs-phy
       - qcom,sm8150-qmp-usb3-phy
       - qcom,sm8150-qmp-usb3-uni-phy
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
