Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 017B1C10F1A
	for <linux-phy@archiver.kernel.org>; Wed,  1 May 2024 04:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UilHA5x8l6aAZH7kqACMsAi2u9Zubi0T6Ohp7M4Xjtc=; b=0qSkEVVolA72cN
	lBGz7zVHeuO3NqrAwHvclyMqYXIXZ2gIc45YKJDYKDQdpRYtVHHUO9VeVKnqWdy0wy9MpEz3+RPns
	KaZ6TA4+WZo/XoLjxyXAqWkjATpkZGjsrWQj13r99c0eLyYPfXpuCOBOyF6fSNIQgSa0LylM4o0nS
	w9YwbApX0zZUv++FLXEogmg1S5z8OM5hHuw/ElaZuyBxgkmkFXloRki8co/pFl2mvnX3z4vJEg8Zp
	771NlPG4yhDMi+9psxfyjVvSbv2iAwl6jecozM6jw6O98rPuJOaZXmVE0KVMuPVk0+L8wDgIAq9rv
	NBqNXVeZwN/6Hj4KDIow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s21Gi-00000008VRR-2dub;
	Wed, 01 May 2024 04:08:32 +0000
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s21Gf-00000008VPL-2HeR
	for linux-phy@lists.infradead.org;
	Wed, 01 May 2024 04:08:31 +0000
Received: by mail-oi1-x22e.google.com with SMTP id 5614622812f47-3c84bb69c6fso3376481b6e.3
        for <linux-phy@lists.infradead.org>; Tue, 30 Apr 2024 21:08:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714536507; x=1715141307; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ghcu5svxDDMwf9Ya6V/1d6nG/9vm8dM7H011zLAoFaA=;
        b=l0nCuuDpgXrWSLxD1ykdKRnCqkwSQlFazx0eLdKTY+QtIzV5Mkqsp/icyBeptHQ5J7
         BD7m7OpT0E3YQNbFVSCv9d6Bdpq7ubAzaedyQFa2PfHLEBvFTMdgFS5ZZP8sq9WfOpDy
         wQhXH6bdfHUBrJHrupMZ2UXqWtC6YUegyTHmobLrq95FklN3HuAueFOVlipqfoBQKbzl
         M0YmddMlmO/7SFiKDImL+xhu9QLppn7k1ouwdZkf8j+cvcpw2y/ZabKbMEGNV9piU+R7
         o5ZUGdRyQKVS4GA/3mME+OaBeopXtVbHR6uXcU7fODmNuvg5biYv7ETInK/obl6gXllD
         VroQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714536507; x=1715141307;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ghcu5svxDDMwf9Ya6V/1d6nG/9vm8dM7H011zLAoFaA=;
        b=boaU9krw0AxlI6LrvKJn7KqqPtkEwY5FDjMNM9Xk1QFhwELH1iu5Y/Xa2LHNyv6myN
         sMEUKGpRwuvfFkNJAmdmtnIxB1uXyDFwolDqyYMR5jA66WlO1aE3x0qyMpGQXIWa2qa1
         LYp5Zz2sC+jUu4KceNT0qMKUCWfb3Uxb6EFyPmBwgF74kdvPL0vxe6lvL4HkPUZc8UJ2
         SQHIG9JAFp0ol/Sw9q4XRD+8pd5ztu0YgYH3cnvU8mPT060YZbXkZJAJGMXzdwiigGMJ
         Bx2gtWiZuv743bHDhuOu+snkuZ5RHlhmvLxVA2ghoNbi+sPag2C+taa4cnvVhJQsrt3c
         bC9Q==
X-Forwarded-Encrypted: i=1; AJvYcCVOEAhcQ0jxHxjv06Twa69K/VpVA8r5bQbZe55rBR0oeXbJnKAymuyMdxn3JxbDh4Q4fIQDu3yKKayFKAAsfhC4ikbL+UCru2Cv9KYLAw==
X-Gm-Message-State: AOJu0YxkXiqBYAfZkpLLQpAk4/ioPhPwYYow4XDaJmTO6MERf++Rc5Nc
	D7ItMKj/tmhSGM/Zsvaqw9LGKo1MyU8vCa0NSiSJ11zjYcQfW2HP
X-Google-Smtp-Source: AGHT+IGzsSP6HTqUq08TCgftQdBYcecsnJuXxz+gqYPzPUH+wcP5U0uuwhVYuL1b5TbHT7DYBIxszw==
X-Received: by 2002:a05:6808:2381:b0:3c8:2b8e:6982 with SMTP id bp1-20020a056808238100b003c82b8e6982mr1858496oib.18.1714536507521;
        Tue, 30 Apr 2024 21:08:27 -0700 (PDT)
Received: from nukework.lan (c-98-197-58-203.hsd1.tx.comcast.net. [98.197.58.203])
        by smtp.gmail.com with ESMTPSA id w2-20020a056808018200b003c8643f0e5csm1067872oic.16.2024.04.30.21.08.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Apr 2024 21:08:27 -0700 (PDT)
From: Alexandru Gagniuc <mr.nuke.me@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	quic_kathirav@quicinc.com,
	Alexandru Gagniuc <mr.nuke.me@gmail.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v4 6/8] dt-bindings: phy: qcom,ipq8074-qmp-pcie: add ipq9574 gen3x2 PHY
Date: Tue, 30 Apr 2024 23:07:57 -0500
Message-Id: <20240501040800.1542805-16-mr.nuke.me@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240501040800.1542805-1-mr.nuke.me@gmail.com>
References: <20240501040800.1542805-1-mr.nuke.me@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_210829_599353_D90459EA 
X-CRM114-Status: UNSURE (   8.21  )
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

The IPQ9574 gen3x2 PHY is very similar to IPQ6018. It requires the
same parameters as IPQ6018. Add a new compatible string for this PHY.

Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
---
 .../devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
index 634cec5d57ea..8a8e23282d1c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
@@ -19,6 +19,7 @@ properties:
       - qcom,ipq6018-qmp-pcie-phy
       - qcom,ipq8074-qmp-gen3-pcie-phy
       - qcom,ipq8074-qmp-pcie-phy
+      - qcom,ipq9574-qmp-gen3x2-pcie-phy
 
   reg:
     items:
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
