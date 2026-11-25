Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05CBD606A33E
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 03:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=H/D43PLu;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=JsokBgqQ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=/KB20UNIO55UH9P6xLiUl6vLs4+lTX9TIZGu6UHk4Eo=; b=H/D43PLuYeRr6XZaYehge8Ne78
	mq1uKbw9ycmlQJF5qGrUuuwABxVGUc/DMwEcACpdWSxp9c9oIXAYY6nu56LeHmm3K/fxTJJhsYB7V
	X4o1BybOau8BRek3k4vY08rxAdtsv362Q8uAd+YRMbbHOw1r+Ny+oSh/wmFau9evgZTvu4F4/VNiP
	6oQLmCPnHr9b2Q5pBcTpCavg6FlWf05iexdBWygm8Mrl35LQje5S6tKEfxLO4t5HEoQ82WwQL5FBC
	q8aW75xzGrv7K/hFmq2bbt1lnTjnAPJ8/dMDzXSL1fFTwhZbSPAR0hqVq3Zxe0UeLJkrdy44JvfbG
	Ks80CvIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW3vs-00000008KDS-0Oca;
	Wed, 25 Nov 2026 03:44:33 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW3vU-00000008Js5-0eTM
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 03:44:10 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4bba60271d7so1446715e9.2
        for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 19:44:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795578246; x=1796183046; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=4KIqWeS+3qt6MqJuGRe1uG41SLx0XRfx3eXbs/xUTl8=;
        b=JsokBgqQTKZwrf2ZB168m8jfwF58GchCpZzTq7I+uOLDLhPnSSg4OuEDjuQJvp+aJb
         ev7Lf/VIi6dJ3/rEW/ObmT4P9yn2S5dOAeVw9Mw5aEbAghTKSDFNo18w26dBD9BIOQuz
         yKdpqIphqbQodoYTVOH6ZDw87lZMSCjNZFrLgVE40gKUQFr33x0qL6avz3kTtd8i+/Pm
         d9P5qfnMBDcS9vZIm5Cn9CJwGH39EjyrB8zxOyrggImw03L9CLHGqDsIoQ7l32r20wxl
         cfOlIFdH07hEe9e22wDL1bB4Rz8ezbPBBxxoVxpLDwTcNWse7+nZnY+qQGh530yt/9k5
         k2dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795578246; x=1796183046;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=4KIqWeS+3qt6MqJuGRe1uG41SLx0XRfx3eXbs/xUTl8=;
        b=dh+cr+40pkmSC9U2blDyb5PubrWYXe0I5Rh3kB03QnxmShhxX0WwkvlZ7p2WCtLqkU
         /ICCto4H0uXZcccLGKAZqpTxRbG85kVopGJo/10j71Zfko6P1/jdqC7ERZWCxSHffnai
         i0/a+RjdOUgc1BbN5iQ/kp1GvzAHDYYmuO0q+cfbSW0+1L8G7puJ3CR/rPMj6Y32wo6N
         7DgAKaslSCagOZRNEVL3RvGbKLfF46WFaAmLUtI5ZGntv0oLwP+jcVLo06Y0blQNk7xS
         ECZTrjLVs5kJa+zHVEkQFLTr6qbETD8iToTCtE1LJPSBISPAv6zR+lXnBxdH36vXMvHd
         yUxg==
X-Forwarded-Encrypted: i=1; AL+hErE7vAMdFK1Lvlz+Pd/Z3IKm1JkchoIaKKIphiD+A84u3zNqFskg5hjdZapo+cGP7ltf6lNjW8suo5Y=@lists.infradead.org
X-Gm-Message-State: APuU4Z/d/plCyTKrC7DgEMN7CIMELNNzX6J3B2tf5u+/W07KB3EqgYNq
	7Ea1EP1hftoILzaEVl7zqCMr80nB8U6qgDPPNn1RDvFlC/cUUYYOnPhW
X-Gm-Gg: AZFdTZc5FjCK4HIMZ4OTlNXy6eKXjvyayLwSqwdmKHS3/4nKB9LjoJ7XThpKPKaJ3+t
	nClaMWCnb84/dpjNA1l7iGph9q0KZ4LzJ7rtepAi0mDSsDjUw/WPHj1oAhbr9erGBcFjueQxEl0
	IlFzO5645o+jMAcgtHDpdJj4fFM1inNNpTbbeoIAH5BcIK2IR1uQmGo+Sf9flQg/jDqi4I6Zcj7
	XnAHY1DHnlJRmpQUJT1TV+xqE3TvQ1cYVCd3sayM7NqG+WvcCe5N9+VqvhJC2Qqh6EnICmscuzH
	sh39Dgo3gxEjSBIsJrAK/kRYAjp/0Fq41L4EyeOF/0NNTrNN0xo+EbitIt/7mR/bqkVRZaHv4Gj
	+x3ZBYNwiPGhyGUhU5BLhOosg9iXVrp1an5sMa2HYC+XvfS3qw9PBYdf6AdIjVpMcgvhn6TMn9H
	BbiuGY1C7Bl03MmWRe48H5qKzJvE9AQAN3SPMyQ6rufn6kYBRpLJ1IwotVSXaELKTQcguHBxdGf
	uNfnojgeoov94TgYjczKYBTQkORWkp0dr3NKR8hktEnx+xAVFmG6Wd7YzcPf9xrF3gNU7Rbl3FM
	gcROgzFtG8MjWX8WleogvH6jvS8Vw7QmBg4wag==
X-Received: by 2002:a05:600c:4e0b:b0:49f:e772:6ddf with SMTP id 5b1f17b1804b1-4bb8881ae90mr345180345e9.32.1795578246276;
        Tue, 24 Nov 2026 19:44:06 -0800 (PST)
Received: from [10.32.31.239] ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb88402ce9sm391107925e9.0.2026.11.24.19.44.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 19:44:05 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
Date: Wed, 25 Nov 2026 03:43:03 +0000
Subject: [PATCH v3 07/14] dt-bindings: ufs: qcom,sc7180-ufshc: Add Halliday
 UFS
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261125-halliday-dts-v3-7-5c8311c0b70b@gmail.com>
References: <20261125-halliday-dts-v3-0-5c8311c0b70b@gmail.com>
In-Reply-To: <20261125-halliday-dts-v3-0-5c8311c0b70b@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Robert Marko <robimarko@gmail.com>, 
 Guru Das Srinagesh <linux@gurudas.dev>, Thomas Gleixner <tglx@kernel.org>, 
 Radu Rendec <radu@rendec.net>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, "Joerg Roedel (AMD)" <joro@8bytes.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Wesley Cheng <wesley.cheng@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Bart Van Assche <bvanassche@acm.org>, 
 Bean Huo <beanhuo@micron.com>, Stanley Jhu <stanleyjhu@google.com>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Viresh Kumar <viresh.kumar@linaro.org>, Amit Kucheria <amitk@kernel.org>, 
 Thara Gopinath <thara.gopinath@gmail.com>, 
 Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Georgi Djakov <djakov@kernel.org>, 
 Sibi Sankar <sibi.sankar@oss.qualcomm.com>, Ulf Hansson <ulfh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 iommu@lists.linux.dev, linux-usb@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org, 
 linux-crypto@vger.kernel.org, linux-pm@vger.kernel.org, 
 Stanislav Aleksandrov <lightofmysoul@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795578204; l=1101;
 i=lightofmysoul@gmail.com; s=20261108; h=from:subject:message-id;
 bh=QhWGZ2nDLik/AVSmlPnUVJyIcZFTcrhPWPSMCAukIeM=;
 b=6AJhs5Z6f/n9pNkfdd62Z4MaOrVcciMknCqzjBkVEi354abH/HUGDZk9PowwAyDuxfg/8VsUi
 qlXYQzCUXxLD5rZQ1VTRb8Bh7LUtJE1bI5xcjBVOagvzX82tdchlf+N
X-Developer-Key: i=lightofmysoul@gmail.com; a=ed25519;
 pk=jeRUlfmkhE53CJPoeIIXgu7rTE0ybDRH0HQrEwbydzg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_194408_453592_F74B17BA 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Document the UFS host controller on the Qualcomm Halliday SoC.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Stanislav Aleksandrov <lightofmysoul@gmail.com>
---
 Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
index 3c407426d697..5d1784baddd7 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
@@ -15,6 +15,7 @@ select:
     compatible:
       contains:
         enum:
+          - qcom,halliday-ufshc
           - qcom,milos-ufshc
           - qcom,msm8998-ufshc
           - qcom,qcs8300-ufshc
@@ -40,6 +41,7 @@ properties:
           - const: qcom,ufshc
       - items:
           - enum:
+              - qcom,halliday-ufshc
               - qcom,milos-ufshc
               - qcom,msm8998-ufshc
               - qcom,qcs8300-ufshc

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
