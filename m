Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45790C5AD4C
	for <linux-phy@archiver.kernel.org>; Fri, 17 Nov 2023 20:17:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TwUgSGOqaYqrNqDyQ4rmMwH6976Aifp8lA0/1JDHGmo=; b=x+r8jPKPruWgI1
	efxRS/1dijqusb3SlCDZLXVo0LjOFwER91ozzTN3+T6lWB4Kq4aUe4SXu6GfuMyEnragi5iuxduSu
	igCCjsg1bThBs1Tw4znGyYHnZ5dY/DYBN0supsl9Icy06rtPYLRGDGnSByz500FvT9m1FbZVRnxY+
	vqa7xPQGglK6dm/xuE9XMRd1TP5+V4pVet1JR28va3VkhXiY83Grm5tPX6js4ZWo8TYn2d2raMy3N
	TiIfnKc+SD9ki5F3CAqahmw1jkeygnUDacbTWjvbSOrF30QuGkTgppBgl2+3laY5xdullAT4D2gAB
	6hPOc+yvbGm8CDSC7kBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r45Hh-007Dmb-3B;
	Fri, 17 Nov 2023 20:17:49 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r45Hc-007Diw-2M
	for linux-phy@lists.infradead.org;
	Fri, 17 Nov 2023 20:17:46 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-9c2a0725825so343702466b.2
        for <linux-phy@lists.infradead.org>; Fri, 17 Nov 2023 12:17:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700252261; x=1700857061; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6Mh5GmUMcq2xfhCvIc2otm0+eXXAz6VhZC+Ozpt2Su4=;
        b=VEmcArv0Difh/smr61/4JElTLg6UYizXr5QepgtppDMRRHFIy0KGOe1TTOeoBCNPM0
         K8pMf/C17a5rb2JC6+9CNfTapU8t6VEYgd+aRicy3CONmoA+61MbmFlcFuo17d5kaBq4
         MwWlVFdGviFxdRShimkciZeGXqYsw2kJdg1VBAudu39OJ1NuZc4cQxhJk59mnElPqnXC
         tSUmirxw77JSamZU3t9igCjASCgjgbBK/hYGU7R+GsrB1ABE2bw/c32rp3pmbWAV5qPE
         eHYD6yLQPaepMsWG1/QoLXcLFX/4qYWxWr4dFrySYXj2kJOTw4hUvFfpEdS4FAB3diGi
         cFOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700252261; x=1700857061;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6Mh5GmUMcq2xfhCvIc2otm0+eXXAz6VhZC+Ozpt2Su4=;
        b=mjiIfxNKD9cJ8O/Aobz00v7gC81PBCkQaBLAy4+tFyRWxVTDKv2Q2HDqMQyennwu3W
         JDzoeGEw3VArRn8Sjx/4xpVrQRxWb0jxNe8s4YU0T0gxYYfXunBwiKB2ztNT0gXEjwDT
         UxgiZvXaxik0BnB+2TxNhdjoY/x5IRAs8XyECxVi/ji9tCZHV+aOxxaR7AU50yzVx1Sa
         J3NuwIeC6dFqd1+Nl5SVgwMF0h2fSdwgWsTbXilGkMQRaeTVDOYByhKoB4+zY2hI7Rlg
         9s6Yyli1YimWSvRxZqQm503YYZQbM5Nr7eA8OQ9CS3rtBVocuQcMMEPNMHlWbj/7v76t
         SluA==
X-Gm-Message-State: AOJu0YyfqXG6zUp/EPgeqWcBD2xOqEKxlW505yLiKsZzp+Qvwk0yw45k
	QZuoKxagD5sJtM0dmN9M5Xk=
X-Google-Smtp-Source: AGHT+IGFzp2Kl4BlUBu0DsBtf5SxhIfiMwmtI/zKfpwfYh+MiaGXrNybPT6oMqvJfjF7buYlsRWgKw==
X-Received: by 2002:a17:907:3ac5:b0:9d2:5cf8:e61 with SMTP id fi5-20020a1709073ac500b009d25cf80e61mr136676ejc.35.1700252261003;
        Fri, 17 Nov 2023 12:17:41 -0800 (PST)
Received: from david-ryuzu.fritz.box ([188.195.169.6])
        by smtp.googlemail.com with ESMTPSA id e7-20020a1709062c0700b0099d804da2e9sm1130630ejh.225.2023.11.17.12.17.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 12:17:40 -0800 (PST)
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
Subject: [PATCH v2 1/8] dt-bindings: crypto: ice: Document SC7180 inline crypto engine
Date: Fri, 17 Nov 2023 21:08:33 +0100
Message-ID: <20231117201720.298422-2-davidwronek@gmail.com>
X-Mailer: git-send-email 2.42.1
In-Reply-To: <20231117201720.298422-1-davidwronek@gmail.com>
References: <20231117201720.298422-1-davidwronek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231117_121744_769807_BB672362 
X-CRM114-Status: UNSURE (   9.17  )
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

Document the compatible used for the inline crypto engine found on
SC7180.

Signed-off-by: David Wronek <davidwronek@gmail.com>
---
 .../devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml    | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml b/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
index ca4f7d1cefaa..72aaf9d99b91 100644
--- a/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
@@ -14,6 +14,7 @@ properties:
     items:
       - enum:
           - qcom,sa8775p-inline-crypto-engine
+          - qcom,sc7180-inline-crypto-engine
           - qcom,sm8450-inline-crypto-engine
           - qcom,sm8550-inline-crypto-engine
       - const: qcom,inline-crypto-engine
-- 
2.42.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
