Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6587EC47DAF
	for <linux-phy@archiver.kernel.org>; Sun, 21 Jan 2024 16:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zrHrr1KI1ddBAAiega7d0PAbEKgyh+1R8t53DNLn/TA=; b=jhym1tIRFFu3+s
	yqb9mtCTj0M+K66d2embJu6XHa8Pjn13w2UZlTqHkKDH8rfRrZSBTTtUNpkuPRNrwbB/kzuuSoEes
	Ci8HlznpcBt5DSKZnH9wX1V6QZAzjvcemMrfajN1wZKQhrGO11JH61TfX0dRBY+Kr1NLO6avDfCjI
	OWs8XRwpOsfNrqpt0xdhjRUn9/ceeVqyC+noiHHMhKa3OH9e6N+YhuvaBcfYL+5vLxy++DDAdhtBy
	MY3xBkdlMEXcZ++mwrNCtKPNgpzSdcZeCRQ+LdlgjWv0bjYOjnnsfvXfECHKPl2N39llehnVPUB/L
	RZXPTfdjVJI3FftAVdjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRbAI-009lvv-04;
	Sun, 21 Jan 2024 16:59:22 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRbAF-009lud-1D
	for linux-phy@lists.infradead.org;
	Sun, 21 Jan 2024 16:59:20 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-337d05b8942so2739669f8f.3
        for <linux-phy@lists.infradead.org>; Sun, 21 Jan 2024 08:59:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705856358; x=1706461158; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lcyy3FdcumLf+0bJAa7WjbUfMZPoJdzKzctDCt5Y3/s=;
        b=dj6VssEo99o+jvHTkOiE0wCPGtvqb4obSWj0jKjDjMVZNdPcRWAMmRctt+XdSf/1Ys
         IU62rA2cUZctXrm2TuKknRJGBWRsAHAWgE5nJH4CNbHAds2/Y2KWAJFTKRBmuX+GOXTC
         mX4gz3KqQmHSVLMI9bw+8tx0ez7I4Sg8eqYgLrBTLN76y6GURDEnud1fSvdQ4cbbRg3/
         Pmi4nWCDxPSf3EjW1r6D0WW2GxuYeAqrACym4VE30LxfO/xEPPGMU+dwJkJxduPHW0tL
         sMEWI6RaWUofiBuVPkMrIrZobu+4zoW6F956oEwbyTDxzwzPnNkl2dNfp1b1yJ0n+M5U
         8qmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705856358; x=1706461158;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lcyy3FdcumLf+0bJAa7WjbUfMZPoJdzKzctDCt5Y3/s=;
        b=ZYfWuxenDcMKXD2OA+PCAqkob64utagNwtBENUyIVnuaRvRDBLgjU5a9/i0tbmiTOJ
         20gY4f5URxlCaCP1BUN3e1TniKmccQxNhLog1H96GLQTJrR+l7Ys7cVVfVl+Q3yGZQ/i
         bItCGAsR/LXHEC/goU5WS6609NlingS0Qd2pwUL/yjOzUF3A1WB6dg0BvciZtpFGj0ZR
         R5f1EGBcntx8ZiY5iyArYEgLYWunHYjfs/g5RXN3KY3dyhI4Sptespzgkd+4SANZV99L
         pFLc309JZObPps6wZHxtcF6UWP6zoGuV2ZAJk/NJssCnJFlU3tMXDAp4dbAev2atBiuo
         qH1g==
X-Gm-Message-State: AOJu0YzlSN7PrtOjLXQ539GtQykOfNfuw+4RaMQeaHTrnIKBF2FLIdB6
	Wisj9EepKy8xvqBhdnUNXOa2fBJvQWsbur3afZnd3X9y+P1lx4/0
X-Google-Smtp-Source: AGHT+IH7vJfDguI9aWHPkY/+pU5zA2sBfQpsz1pmrv8VHhWYH8BCZUCPAUAflbiXwqJ1Jgg+BxdAcA==
X-Received: by 2002:a5d:54cf:0:b0:339:367c:d996 with SMTP id x15-20020a5d54cf000000b00339367cd996mr340629wrv.93.1705856357842;
        Sun, 21 Jan 2024 08:59:17 -0800 (PST)
Received: from david-ryuzu.localdomain ([178.26.111.181])
        by smtp.googlemail.com with ESMTPSA id q5-20020adff505000000b00339214d70b5sm6541115wro.85.2024.01.21.08.59.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Jan 2024 08:59:17 -0800 (PST)
From: David Wronek <davidwronek@gmail.com>
Date: Sun, 21 Jan 2024 17:57:42 +0100
Subject: [PATCH v4 2/8] dt-bindings: ufs: qcom: Add SC7180 compatible
 string
MIME-Version: 1.0
Message-Id: <20240121-sm7125-upstream-v4-2-f7d1212c8ebb@gmail.com>
References: <20240121-sm7125-upstream-v4-0-f7d1212c8ebb@gmail.com>
In-Reply-To: <20240121-sm7125-upstream-v4-0-f7d1212c8ebb@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
 Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
 ~postmarketos/upstreaming@lists.sr.ht, David Wronek <davidwronek@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1705856354; l=1028;
 i=davidwronek@gmail.com; s=20240121; h=from:subject:message-id;
 bh=Jpa+UNNLs24Diq5dowo6GPIXCclVUvmY09+FVLxKwmg=;
 b=lNyeaYS6Qp1ZWD5Kvx5tHZczmo/Kws1qXyoqn1GfwLq811lXacb4y5BNYD9uczSgtcRTGGfwr
 2YR6nTxDvstCETIcABLyxsxqgnh8crG5seFQjjlfTxn/34m273oKeTf
X-Developer-Key: i=davidwronek@gmail.com; a=ed25519;
 pk=PJIYyFK3VrK6x+9W6ih8IGSJ5dxRXHiYay+gG1qQzqs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240121_085919_416120_7E98A97E 
X-CRM114-Status: UNSURE (   8.78  )
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

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: David Wronek <davidwronek@gmail.com>
---
 Documentation/devicetree/bindings/ufs/qcom,ufs.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
index 10c146424baa..9a4f2b43e155 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
@@ -27,6 +27,7 @@ properties:
           - qcom,msm8996-ufshc
           - qcom,msm8998-ufshc
           - qcom,sa8775p-ufshc
+          - qcom,sc7180-ufshc
           - qcom,sc7280-ufshc
           - qcom,sc8280xp-ufshc
           - qcom,sdm845-ufshc
@@ -214,6 +215,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,sc7180-ufshc
               - qcom,sm6115-ufshc
     then:
       properties:

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
