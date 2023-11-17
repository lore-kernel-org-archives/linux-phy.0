Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C0EAC54FB9
	for <linux-phy@archiver.kernel.org>; Fri, 17 Nov 2023 20:17:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lye/utBGreCcLDQrqUibwyJyRijKXP5mqlQ2r1tr44A=; b=AwnLufNfBjX7Aa
	NpF/tAKjQKSqlU8nnIqwt24m5MhbFpZho9OwyaYgXp7PnWZEA9LZucNArkMUcky5RW+GFCyrKAj+v
	Wp6S9cxv6p8aSvproA099cgyiPYVb5/mYhqbSXHMkpzzxKL9KAtZcsYJbbz5I7jFZ10ovuOFOIbf1
	txiCt7x2pWgQIObMDG8m9CWg/lGhwG0m5xmEmyq6T4X4jg99rshe3zRiFHhOokqEMyxWC8HbrkjE/
	bFKOr4ZCRqf3ixjiwaGGY1s6U9vLtpFr1F0imao+Aj5N5plAZzsl6P5ZcQjwt0ZilveBZONpu2amw
	aQALOUYBQ5a6UuVS60fQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r45Hi-007Dmw-0s;
	Fri, 17 Nov 2023 20:17:50 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r45Hd-007Dj2-2r
	for linux-phy@lists.infradead.org;
	Fri, 17 Nov 2023 20:17:47 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-9e62ab773f1so337603266b.0
        for <linux-phy@lists.infradead.org>; Fri, 17 Nov 2023 12:17:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700252263; x=1700857063; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kGuQp1NGPuXoUiEpdYzJcjnNBJsSPeD9FSB3a1HAj1M=;
        b=NyaPJ3f0JQ3yaIAn7c6QDFWZ0LC51SCvYSIzR9IIByxJi6pQI27ZagV9v18CGatq8h
         oCx3TKV6rdoUfV+LGUHOhFW06rlWtAZNGqMywObx3nHW4Si01wB5HbFbj/qChB1MCGH3
         iVSiIKNOcPUOXyGL+HzArBVA/pBlsMDkBh/DDACDr4XAvMBwMw+9+t7DYSOaA0z5ZyUY
         uAZVtE7VznScCT1un2bqawE5oI57RvqFcuRpub3YmB8k1xXUnTEX22cRdsyh7kv5lVBA
         rO6MIML47X8FpKD1zZfAQFMIiJIcVRLhgvdJg7vPf9OEIbwPJTlT3yJ1l5oAvaoamd3w
         ucBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700252263; x=1700857063;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kGuQp1NGPuXoUiEpdYzJcjnNBJsSPeD9FSB3a1HAj1M=;
        b=H3bPkk7EhTZ0cLbGE0y/jPTNnQ09LXHSKyVQKcHBhrTsUpmeLurMpYoe+Md4+smaDC
         XTF9RVGS14o6H+hRvKfPIfqs6zUKM+0VHkaS9rXlwiV1inBtv3O3Rhc/ZSdfNFfKujcz
         6DI2DEPsd3l4cPT96+c4qNXYde9WUFQq1uqsuQKpiGXt999DKwTpUJuKPraemUch6Yjn
         khHOh65/PDlUk4TI6BbzWaSIN37kGZPxgaoVI60hREPdnM9aPyUwPIyYliGKiQ539JnN
         SPfrks5SqGX0kMGpqStNKMJSeeKs6lv7UD/mz+s5K6Uj2sjIuO/yrgkEcXe8hUN3PKsz
         wYbQ==
X-Gm-Message-State: AOJu0YybsmsEEDBlqcfC+czStVYyXxr/LTbWmEUeTYpHGuJSFM0+RK7k
	ISBgdX58UcUY7GrHhs66qnE=
X-Google-Smtp-Source: AGHT+IE3rA8zaqiNTqTRHOawRQfjIKcBn8sQ+QJjTatFpE5dBQnss7wIZFSXu/flSG5JfdkY4fA+LA==
X-Received: by 2002:a17:907:a781:b0:9ae:5fe1:ef01 with SMTP id vx1-20020a170907a78100b009ae5fe1ef01mr207293ejc.37.1700252263223;
        Fri, 17 Nov 2023 12:17:43 -0800 (PST)
Received: from david-ryuzu.fritz.box ([188.195.169.6])
        by smtp.googlemail.com with ESMTPSA id e7-20020a1709062c0700b0099d804da2e9sm1130630ejh.225.2023.11.17.12.17.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 12:17:42 -0800 (PST)
From: David Wronek <davidwronek@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S . Miller" <davem@davemloft.net>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Joe Mason <buddyjojo06@outlook.com>,
	hexdump0815@googlemail.com
Cc: cros-qcom-dts-watchers@chromium.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	David Wronek <davidwronek@gmail.com>
Subject: [PATCH v2 3/8] dt-bindings: phy: Add QMP UFS PHY compatible for SC7180
Date: Fri, 17 Nov 2023 21:08:35 +0100
Message-ID: <20231117201720.298422-4-davidwronek@gmail.com>
X-Mailer: git-send-email 2.42.1
In-Reply-To: <20231117201720.298422-1-davidwronek@gmail.com>
References: <20231117201720.298422-1-davidwronek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231117_121745_948292_38F2085A 
X-CRM114-Status: UNSURE (   8.97  )
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
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml      | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index 8474eef8d0ff..5faa1cb3a12e 100644
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
@@ -102,6 +103,7 @@ allOf:
           contains:
             enum:
               - qcom,msm8998-qmp-ufs-phy
+              - qcom,sc7180-qmp-ufs-phy
               - qcom,sc8180x-qmp-ufs-phy
               - qcom,sc8280xp-qmp-ufs-phy
               - qcom,sdm845-qmp-ufs-phy
-- 
2.42.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
