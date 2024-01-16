Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 950F6C3DA79
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jan 2024 01:08:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oDjt2AXlRZsMuAfnNJP1p77TkjTara7qd4K9/V2izpY=; b=ddev9p/UR23FZC
	w0X5JXhmDdy70Jes4YrTrdvJiGGP+F0HszlC+AWOFN0UqcEhzA5aYeFLGYvnuMbcPIS0KkR5b3X6k
	lDNnUWHqWycXqzMbY3kp/jLTWIJ9+OQHlodsm8tIoXzpJaQdsFLIOHCtlirg7PttIl+yl0bQdYGRN
	4pXzWslMMHsFU/JMIHeNLHjWLoshZvP/c4VOyMDLAAHPpjkKtcaNnS6WZdfyzMw7z/zGUH+9xxqA8
	c9P+jMOFXf/Ere/YjtUyI06x0r1gyMOu0EHrRpFcBPVcjnLK7/hHGwdAEDiv8L81+E3HWogiOW2ve
	cTC6GgvE2gacUmB/a/EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPXwe-00Adci-0y;
	Tue, 16 Jan 2024 01:08:48 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPXwY-00AdX5-2n
	for linux-phy@lists.infradead.org;
	Tue, 16 Jan 2024 01:08:45 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2cca8eb0509so114644591fa.3
        for <linux-phy@lists.infradead.org>; Mon, 15 Jan 2024 17:08:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705367319; x=1705972119; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KjAbofYbgQMqfe5mB6yt5wPFLv87tIF7emGg5eJbAI8=;
        b=rPb/4j2ETFr+TCMPccVSQG7ByxxDKwDlzOetwb4/r523SZPhvG19uYXoo6aElwxgut
         iY88jFwDaUA/BuVBmM6xJexv70hgSikgHEjLJqSr2mvwV06VINH/RZzFAAE6XWt0pXMH
         V+UzKDQo/ZQ+fiYVqCBW1qJFcqURiSJfZ1uR7Co7k8dGZPEJM7ykrM/ZPZ1073O+Hzbt
         H3gsw7HrinVRNtA/nuyRbHMefIZfATW9a2jn5WTpm6KVFGv2YNSqkyHdj59E9SuCA9os
         zxhYf1AN99fAJkFjf8fS8eJ+5dd5L6JrSzBChZC7Vnedd44WHJ8aNH2qTtZgFKeWN4JZ
         FfeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705367319; x=1705972119;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KjAbofYbgQMqfe5mB6yt5wPFLv87tIF7emGg5eJbAI8=;
        b=IIuV30wUctt3zZ9Rw8a6LamP3OeDIJm2EonoqZ8CgiN/6zvlns+RdLUuzVaxSyJceJ
         A1zFDIBvmgcHrkPCHTBo+mxw1Dj2snQn2titfeEz73xuYwGCnZW3oovVVrcTONkOwZrf
         G8lR5kzs+qge1kFHMtPRT6Oq1fjv/g7hEI0Nb0sVtQJd6aGv5HjWJoir9k1yARemQsRa
         FAZlTLiB9ER8CW967YMyVuFfcbtFpsw9Tat7eBctyekrEB/gmoTlHINuOxWkmaqdWZwH
         1VhCKxNK0ZipN/wj5bR6K/QO9DPrjx0QgJ697Ow8ndHDItR6P6snsMms7D2d44yv7gWs
         TBuA==
X-Gm-Message-State: AOJu0YysLXVmFbBg/4hxQ3jcXR4A4T9+5lVkD3GexFPtyhYzQTcexUuz
	UIvBGRIoyG+UrJJ26S564iY089CCpP7aqg==
X-Google-Smtp-Source: AGHT+IFueQXJ8ShoFoz9nVCNU/s/96Gc66MS/UQ/2dpc5943PKJcBsJx9cP1+tPjLfKxXUs1ZrgMAg==
X-Received: by 2002:a05:6512:403:b0:50e:9dbe:e565 with SMTP id u3-20020a056512040300b0050e9dbee565mr2488449lfk.8.1705367319015;
        Mon, 15 Jan 2024 17:08:39 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id t3-20020a056512208300b0050eb2325472sm1615507lfr.37.2024.01.15.17.08.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 17:08:38 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 16 Jan 2024 03:08:28 +0200
Subject: [PATCH 2/6] dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: add TCSR
 registers
MIME-Version: 1.0
Message-Id: <20240116-usbc-phy-vls-clamp-v1-2-73b2da7691c5@linaro.org>
References: <20240116-usbc-phy-vls-clamp-v1-0-73b2da7691c5@linaro.org>
In-Reply-To: <20240116-usbc-phy-vls-clamp-v1-0-73b2da7691c5@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Jeffrey Hugo <quic_jhugo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-phy@lists.infradead.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1603;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=aBcQF7l7ykn1twMJr9c0QhEVt66OcJk/Ki8m8VZZ5gA=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlpdcUwW7a37xFdBCpgcJhqWckj1rXkxGi7snJH
 SLCros33d+JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZaXXFAAKCRCLPIo+Aiko
 1a1LB/0R8F87C2htTQS4hraLPGVNqIStbZfamJwSeJQO2gOpDAdXtp9pZdR7iwfDEqosWps99jA
 LpaUXEyagmbPmyqgJUkUBoDBaZ/GD6C/fuC7UhRPINF6DsCDt68VIQBeA77Gkv/U9/mhhb/MNll
 JA0i+lZwYuFXf6CIN6HgRmrhbunt3ZJyLxcC19CUg81yvQzJ7SYOrEATxliPYbeMq8ETLFQu6ZB
 vvWXJ+Vmn3WpcjbzsHplCeB2sIsOYvVlaA+hilh9O3ssflu7UPqySGu29Wmyasj3rzAf7wqujQd
 0ofGcqFLJiQ+g+fpugm4ANRZKMW9iwuWmWg/QZPfMyEwRMiF
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240115_170842_909122_D997F04D 
X-CRM114-Status: UNSURE (   8.24  )
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

The QMP USB PHYs on msm8998, qcm2290 and some other platforms don't have
the PCS_MISC_CLAMP_ENABLE register. Instead they need to toggle the
register in the TCSR space. Declare the registers accessible through the
TCSR space.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml    | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
index da5d4cbca24c..140843347d1e 100644
--- a/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
@@ -55,6 +55,14 @@ properties:
       Flag the PHY as possible handler of USB Type-C orientation switching
     type: boolean
 
+  qcom,tcsr-reg:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: phandle to TCSR hardware block
+          - description: offset of the VLS CLAMP register
+    description: Clamp register present in the TCSR
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
     properties:
@@ -78,6 +86,7 @@ required:
   - "#clock-cells"
   - clock-output-names
   - "#phy-cells"
+  - qcom,tcsr-reg
 
 allOf:
   - if:
@@ -148,6 +157,8 @@ examples:
 
       orientation-switch;
 
+      qcom,tcsr-reg = <&tcsr_regs_1 0x6b244>;
+
       ports {
         #address-cells = <1>;
         #size-cells = <0>;

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
