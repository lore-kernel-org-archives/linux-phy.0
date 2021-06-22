Return-Path: <SRS0=dFK9=LQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EFFFFC2B9F4
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jun 2021 20:32:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C127061380
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jun 2021 20:32:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C127061380
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K+Anv1yXNQEz0a4Q6Cvg2muIlaKlfxYidsUHOr210C4=; b=oB4dqmJ+m8JyOb
	dExh3fS2H1cZxGmMeuNbflEBnzCrRN6iGxkHKWO92zpsmSNr0+ZTpUOieLnyDrlHacUovtaaxhldn
	ntZFRl1o6+aPl6bcLDoMAh1m6b7bIupzRaD8Ol5S/uIWfj+f9TU1ouzTGZTfSk3WygRST7SHPzG1l
	Vgvp8MDaFODce1TQ6uOD9Er0iBzhlTS/Hf8YXsSZA8pk+Va9Fwav2kPsHPmRjE1Ym3r3T9G0xL7pD
	KwHKy+m5bL3/J7uDzt/NTJcEhVnvkQPt55/U7vY7G6tqVk6eBKiS9oRTlT03Q8YBnDIBwradmkJcX
	YoGnGN9IMayLsXexY39Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvn4n-008MD0-AY; Tue, 22 Jun 2021 20:32:53 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvn4l-008MBM-AM
 for linux-phy@lists.infradead.org; Tue, 22 Jun 2021 20:32:52 +0000
Received: by mail-ed1-x52b.google.com with SMTP id d7so578815edx.0
 for <linux-phy@lists.infradead.org>; Tue, 22 Jun 2021 13:32:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5L9O5W6vqtHlRNNhg8y33uw5t/t1zDmxkWG7/hifX4s=;
 b=TZBvDahborAi1UNMGY6XRxFh2vH0Zu3dPPYZzelTD8D0tt8c9s8JyM8tpgdADXKa7p
 KPSeJszvQti2oEvf2h+zH9eCsxA5z0i1Sz/w1JFPcu6Qeac9kau0UGe1FFAJ3wwyERlU
 4tuYQW5E1s7D9fexVGCoqdMDzIGtZKh3cwI3cjuIeo1gR4izzQjEAxiWH7Rqlh82MbHH
 s2nfD3YQ6PwtZaNKZFQ6niLASjK9pQs3D54M7i2mjO38svMNG83s+pduPgte0rzJ9TOI
 u7hii0lv/AX+GT1/7adc+gIvQ0jBMrlEOM6F8btdh4qiUjJ0Jwswv5fCZ9BEhnjo0xbu
 G0uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5L9O5W6vqtHlRNNhg8y33uw5t/t1zDmxkWG7/hifX4s=;
 b=pHjV/tz+OJvJu/Wag+U6kEv0WiSaI2gwRmr2y0DY9eR/j2GQNwIPIeo3IUB/fLp80W
 mn3gX9DazN/eyi2R783NjeSKszqjEQN9apCFyWPQcGPC/4U46hT8G8+uvU37zfBDYf5g
 ri6FtqsRybCORBSi/o2/Mi8FgKdouaEynBxk/LK6k+5/z5ruyRxfobptjh8S0ueWe+zD
 5Apufb8NlAbCWNd0zrifQuTtaBuvXRlk/OSMfvgU9QYD+E9OsGm9ujRo1Y8OIpSJYu7C
 zml7k5nSifRgipHkxGGLK2m/9iTs/48IjLLzNXUsBt+HMsd2m45qsLpgQstmgSDSMORO
 gB2A==
X-Gm-Message-State: AOAM533yInQzWC2OSGPTvpL1ckAPsI9kZz6Jz9awLsoxGjJta6kMc8QS
 ZCbwopauDm2Sj17Nz3n0s+s=
X-Google-Smtp-Source: ABdhPJwrnzeNol/nOOau418ZZ5VK1eAFoHJoCxe+gbyHT+Zf+yhoz1Q14KpdegTjFaU+N6ysTojBgw==
X-Received: by 2002:a05:6402:2898:: with SMTP id
 eg24mr7527249edb.155.1624393969684; 
 Tue, 22 Jun 2021 13:32:49 -0700 (PDT)
Received: from localhost (178-169-161-196.razgrad.ddns.bulsat.com.
 [178.169.161.196])
 by smtp.gmail.com with ESMTPSA id r23sm7868454edy.13.2021.06.22.13.32.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Jun 2021 13:32:49 -0700 (PDT)
From: Iskren Chernev <iskren.chernev@gmail.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Manu Gautam <mgautam@codeaurora.org>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 Iskren Chernev <iskren.chernev@gmail.com>
Subject: [PATCH v1 2/3] dt-bindings: phy: qcom,
 qusb2: document sm4250/6115 compatible
Date: Tue, 22 Jun 2021 23:32:39 +0300
Message-Id: <20210622203240.559979-3-iskren.chernev@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210622203240.559979-1-iskren.chernev@gmail.com>
References: <20210622203240.559979-1-iskren.chernev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_133251_384776_7270B158 
X-CRM114-Status: UNSURE (   8.75  )
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

This compatible string is for the HS USB PHY on sm4250 and sm6115
platforms.

Signed-off-by: Iskren Chernev <iskren.chernev@gmail.com>
---
 Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
index 9f9cf07b7d45..70258540676a 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
@@ -23,6 +23,8 @@ properties:
               - qcom,msm8998-qusb2-phy
               - qcom,sdm660-qusb2-phy
               - qcom,ipq6018-qusb2-phy
+              - qcom,sm4250-qusb2-phy
+              - qcom,sm6115-qusb2-phy
       - items:
           - enum:
               - qcom,sc7180-qusb2-phy
-- 
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
