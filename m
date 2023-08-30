Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7F35C83F01
	for <linux-phy@archiver.kernel.org>; Wed, 30 Aug 2023 21:14:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=99DygSeN3f2j0fNApPF5iZjw4SviE39QiY9lZ9d6k4w=; b=qOxJp0BTxXzCLb
	Gi9GNAvCB2Lfybylgu0YUo0tl+eVXL4uue+OGDHNbZCKQBrnuaP7tdsaYLlQHoV7j92HgY8hpfRAI
	ALQDF73zMl2JueVAuiuRpvim5cC4a8/bSNMQStNj2S8yLnSdUhscl5OT+Xa+3bNXkxXEE7mq51EJ7
	mskfVk/SsRmYJVBFuOMF+uJVxC/HQGO3MNOZYltvtcTFlEzZIghcuMKw+BB5a61Qh2S9sitizaQa8
	WYQhqgxpGMbWgEz4LyR0pjN/KvnHbSfKz0Z8ZCn190NiOfYmth/UDc81jWgZbkPqVay1AOnDXp+8k
	oxG7IT4Inc2cKnaiqH9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbSVl-00EBdx-1i;
	Wed, 30 Aug 2023 21:14:01 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbSVi-00EBcy-0i
	for linux-phy@lists.infradead.org;
	Wed, 30 Aug 2023 21:13:59 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-50098cc8967so442293e87.1
        for <linux-phy@lists.infradead.org>; Wed, 30 Aug 2023 14:13:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693430035; x=1694034835; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UyTb34CC8o6Ht8AgxrBaKUd8noms1JfX94fq0UgPdCI=;
        b=rQQ7cw8iti8awHwuO4ymOQq4i1WA4C0xZGkmw2/Nnh8NsQbxP8PDvMdI0ovCtbZ9pC
         IMau4ICYkQR5MFdaX1ph+iXZpxX1gyShh1jCv9Rdn0W60fzACcjXMOyQeyGVBC0pVURS
         9GuUWU484rFawUZTXGsQDGQU+ALg5wFtcDxZcf4dpQ19lTmoKMde9RCtxUGwKfds4nLa
         tWQ5aA33Lq9ZSq/ekgUqYvVqU1LKEBBoidCPd7giUNg2KsQAMJsAFtPsdmF3dKOIQ1Yy
         L/N0mU0hcJ1Vv3AEx+efRTBFsKLOhiQDYw/c3G32w0E/BNUSv9G1KvbuiZABwi3PoLLD
         h+gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693430035; x=1694034835;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UyTb34CC8o6Ht8AgxrBaKUd8noms1JfX94fq0UgPdCI=;
        b=DsOAhi2U6yChErSxWbRbK3LX+luQjeQg6NBBzwqdr3W2JLdQrMaj9/z6S72xxqUA9z
         Mt0y98505JeSYMG+Hzoga7KY8zfiw1CDcYEjEJjAZBIQoAo09+u7Ngo3DPzBgV3VHUNN
         jPtU1sFKp8LR0hfzBfPLghT6JED+tBjWuhwk14bJCpDRZ1Zne/tvdv6F6jc6D2/bq1EQ
         WNQYnPVn+suT3tJmLRzMzFI390PkX4ckMWBtlwo9A6XZHsF7/Emwe6CxwwtkcwTtMMnr
         pytP1l1KDpTi4Exr0lXp4VfOpOgtuD828MpNkH/CHkCLWO3o6xznRdwocik5O+2x/Iey
         zV5A==
X-Gm-Message-State: AOJu0Yx0SeBVEQdyGhjbIV/paYjvM0CSSthXj3/TjKgAX/OFBdwXk3Fs
	COqZRnIsSlsFmThgaAbdfU/9Og==
X-Google-Smtp-Source: AGHT+IEzmGKuK2006TWdjdLApsy6n7D2FXVYkf7FTUBXVsxQ81IWEUBLq0vJch02O7U6IiqOWnnJWA==
X-Received: by 2002:a05:6512:3c8b:b0:500:5d5c:ecc9 with SMTP id h11-20020a0565123c8b00b005005d5cecc9mr2813219lfv.62.1693430035654;
        Wed, 30 Aug 2023 14:13:55 -0700 (PDT)
Received: from [192.168.1.101] (abyl195.neoplus.adsl.tpnet.pl. [83.9.31.195])
        by smtp.gmail.com with ESMTPSA id b3-20020ac25623000000b004f37bd02a89sm2516351lff.287.2023.08.30.14.13.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Aug 2023 14:13:55 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Wed, 30 Aug 2023 23:13:51 +0200
Subject: [PATCH 1/2] dt-bindings: phy: qcom,usb-snps-femto-v2: Add REFGEN
 regulator
MIME-Version: 1.0
Message-Id: <20230830-topic-refgenphy-v1-1-892db196a1c0@linaro.org>
References: <20230830-topic-refgenphy-v1-0-892db196a1c0@linaro.org>
In-Reply-To: <20230830-topic-refgenphy-v1-0-892db196a1c0@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1693430032; l=921;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=vz1a+iPTk87wOT0fjsMmHkhaWg81ePPnVEq7IVR09VI=;
 b=DeUqTuNNnWAlhWqgl4R5rZoKMeEWwhxo81jSLACtmX0W8ScXz/2107XWlPhOWn21pFFsePvgh
 IoQZZ+Zu85uBLJt03N/briK2+2TsjrZ++D8IVfgBxSenH37ey2PQ9lG
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230830_141358_257609_23AB8BC7 
X-CRM114-Status: UNSURE (   7.88  )
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

The HSPHY is (or at least can be) one of the users of the reference
voltage generating regulator. Ensure that dependency is described
properly.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
index 0f200e3f97a9..e895b6c4ee49 100644
--- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
@@ -53,6 +53,9 @@ properties:
     items:
       - description: PHY core reset
 
+  refgen-supply:
+    description: phandle to the REFGEN regulator node
+
   vdda-pll-supply:
     description: phandle to the regulator VDD supply node.
 

-- 
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
