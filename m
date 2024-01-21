Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6AA1C47DDC
	for <linux-phy@archiver.kernel.org>; Sun, 21 Jan 2024 16:59:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WUVJQAHBKT4Hewb1l3UP7JCQprhmZOStFjh4GK49Pzw=; b=RdeDmsMzqpOGjZ
	Fm1vHuGEuX9S+vkyTjE4ZrvPg2uGYmFtcd8qqEhqeWYd31+EAIKpeLjfICnD+2ZIuhJCwrQ/j4tZ4
	Ylwk7Q8KNTxSjUxFTABVd1tQONGL/hHIILGSja2zSfmqN0SOEWJg1kA/HWj0hHqBM1fi551OWaAhE
	xKYd887+q7gHaIPegQPPRyApYVPrXe+LDGVH8IIffYCSfs7r1IsmhPdzlEXXD0LhkB8iBc44ez1P6
	AZ6VLOztIt23P6YavGpEMeekQvUrD2hZ1o5XwCnDNHgnI/Piii9in49k1m7+nDGI64d7ecO/Kjd9d
	nng/zpjD/+ldv9iFzIpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRbAM-009lyH-0y;
	Sun, 21 Jan 2024 16:59:26 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRbAJ-009lvQ-2V
	for linux-phy@lists.infradead.org;
	Sun, 21 Jan 2024 16:59:24 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-40e60e135a7so24338885e9.0
        for <linux-phy@lists.infradead.org>; Sun, 21 Jan 2024 08:59:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705856360; x=1706461160; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tPmH+29RYhsMvZ/W94dqz0aawqDom5pf3+7eomrNrXY=;
        b=nSTEwGgsL3boB1MJyKz7WwXWJaacX11nZ+6ThQkkowrp2D2IloHM46eXar40hn3+wj
         rOHeLRD25qFVm/e2yt6Zd0e7JZO2qrRH/gVEwmPECJOpsUUUCcfWAVFgK8o30KUnEmjy
         Hd/EKGzMWNXmc7mnhqx/ePTRmjbjhTK6U+rYRAfsdt01erVKLkmn3+n7rvfC7fiTg9rp
         1GSra9RxkU7+ZNlHv9ZiA8YWFn7BCx65J612eeuyCrxEZC61BVrQeeH7wcDq45VB7hx5
         TEcpr5Tpymc1ugBkpKZndAAcFPs1BM7fHpXVtrmPQa+KPq3wjsTZbAuYpL4YVQ6JAj9C
         FQeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705856360; x=1706461160;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tPmH+29RYhsMvZ/W94dqz0aawqDom5pf3+7eomrNrXY=;
        b=hzlL5JwQrHxKTPSvQgGoL1dGGfaVMuDcdBVsqmJajDAJHs+nWlMkzCXsXD6haYvnSb
         fYl9X4cX40qmVFnyzDIzNbGx4+IrtxbIDD3j7BwNLnup6SvICeJmFhUWfDRdYLL6l3Oj
         1iiA33gfGuEPxV+U0wrRALellrjDvnEVy2kowqjnaoA60F7ooPxVGNcry74qy74cdoHF
         rBc4l4Ahk8bm2wiKXjmOMO2kJqutHtVcX/7BAcMpe3nG/+hJnTpCgEfbWDPgSpEjxtSy
         huNi0JmVT44svMUeBS0rEk7RMH43sc+U21OpK6PEFknxccOdrkYZSi4rCirUe+GoXCP5
         +0sQ==
X-Gm-Message-State: AOJu0YxsFLBI5+QeLEiGNJlPl61nGgc2Ju18EwirD2x8dQttf6hJd9s9
	mHtEqsd4acl1amUl7Ci0ARdBKQo1nl9q3PA4lu6A52X1GsRRfl1q
X-Google-Smtp-Source: AGHT+IHd062lUefjKuYSDE1sm0d+aQdF5Lm9X7ZGzR/cGqkeMNk1bVa+M+tTf+NCko2ktDoO+NPlOw==
X-Received: by 2002:a05:600c:3147:b0:40e:4833:8141 with SMTP id h7-20020a05600c314700b0040e48338141mr1949674wmo.4.1705856359854;
        Sun, 21 Jan 2024 08:59:19 -0800 (PST)
Received: from david-ryuzu.localdomain ([178.26.111.181])
        by smtp.googlemail.com with ESMTPSA id q5-20020adff505000000b00339214d70b5sm6541115wro.85.2024.01.21.08.59.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Jan 2024 08:59:19 -0800 (PST)
From: David Wronek <davidwronek@gmail.com>
Date: Sun, 21 Jan 2024 17:57:44 +0100
Subject: [PATCH v4 4/8] dt-bindings: arm: qcom: Add Xiaomi Redmi Note 9S
MIME-Version: 1.0
Message-Id: <20240121-sm7125-upstream-v4-4-f7d1212c8ebb@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1705856354; l=772;
 i=davidwronek@gmail.com; s=20240121; h=from:subject:message-id;
 bh=9P0k3L/QGLlCkBie4meFZUg9K/Pv6h/ZSaFYlC5vj8A=;
 b=7dgjLWpE/KNwH5PdsDAbxrechK9n7aC3A6OOpy7q0P62gZKsZCc5Zuy5ZKyG8P1EnxxYMNGPI
 /A583JCdPVnC3yofzZfDQZVugh9sHjovG4WI20FDjk5v1zqg059dZHg
X-Developer-Key: i=davidwronek@gmail.com; a=ed25519;
 pk=PJIYyFK3VrK6x+9W6ih8IGSJ5dxRXHiYay+gG1qQzqs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240121_085923_814009_343B6CBA 
X-CRM114-Status: UNSURE (   8.62  )
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

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: David Wronek <davidwronek@gmail.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 1a5fb889a444..59430524dac6 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -988,6 +988,7 @@ properties:
 
       - items:
           - enum:
+              - xiaomi,curtana
               - xiaomi,joyeuse
           - const: qcom,sm7125
 

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
