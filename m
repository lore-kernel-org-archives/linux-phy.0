Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07683C83F09
	for <linux-phy@archiver.kernel.org>; Wed,  9 Jul 2025 10:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6iodVztDMYIzmWNnsA8pwdyBSZcoQRQKhjFg3FdL3Mk=; b=a2lux4FZqTRGlg
	mgv9SV77skJ//kRNn/h81KIfo4hnQfYGUUuJca8PyuZ+MADtSbrzwd/6tv8Xo03kLdIWLAu8BqS5z
	HqhEZs2NwrqH9bTYAVYMOyS2nHSMTavvohnWahuxqERUT+LeY5S78BS6iR1Aqorvlg3lvpO1XRWd8
	y8Xex5FWAhmHcW3JyPJjg5DPmOtZ0PyOoQJ+iX8XsloYbMiAJvgbcKuw0YB6ElCQ30hPEivn2F9p+
	M/76bciMIUUP+unqkBFSjto6DL8d2qmQxDVle/5DTqRjwv6v5Z6VXcqvHIAr05BlD+nP/t7pEvvwi
	Flk2Auf3obOQiCYAWK7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZSKQ-00000008MQc-3LEt;
	Wed, 09 Jul 2025 10:47:06 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZQwv-000000086PW-0Via
	for linux-phy@lists.infradead.org;
	Wed, 09 Jul 2025 09:18:46 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-ae0b6532345so140223966b.1
        for <linux-phy@lists.infradead.org>; Wed, 09 Jul 2025 02:18:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752052723; x=1752657523; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KtyDxcaqf+W6rW1o4o1i13PWl3ydZ1ok9YquBu8um3Q=;
        b=LqHacVuZEfCpd6bNOZszhb+GvcYPrbxnvX2Ooj4V7me/cchEgnYkc/1/zcciHqDLxf
         hlQbIfneSmR1ldT6vmIKmd5Uqtkdr+58pLgtuYuoOs7YdvBKyS85McG9aXb2kX2KoReI
         xQlAvzKQUd3DOFcHtHDTlH5Nh3oQWuLOLIA+b0jHSX/fsjty+I8+Kiq3Y3Li4XQc6az4
         8gDSwM8n3gBIAkKMDwKQH4Hue+cT6Vqv0hRFqx/xwf3PuC+xWh6v3CfhzNvQyDI3ch+t
         kesSMpgumJ3YrUCh61EzWknLZKqL2ws1pQGMVbLHzuLRh6GBPJACGOa3N/b6mx7SgOe6
         cYnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752052723; x=1752657523;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KtyDxcaqf+W6rW1o4o1i13PWl3ydZ1ok9YquBu8um3Q=;
        b=Vz9KNJkKXVN0ioKl2T/CDqZstGaJzvwgIO+jqBzxvwXYreSEGTUMtSbO6/nQcwcYX1
         XGMLgkYB5z8E9I85X2n414m/ThfMICPbouA4rp4qAZ6usgwN0Ei0ngJJ1zpYQD2l3HeC
         nvMOOoBRCvjvQq6P2/g/U9Zpo8QjfFW8PS1oL5iYthvhAl4/tdX7m0wjvy7vHnZpj1qd
         IFiE4mAgcF8D23a9Ea45qiJHW9moAlpAf19DrulRHk9oLfJjX3vMKG9NNFzGBNxVmYRz
         ZCU9fnpv8R8Wwdpme11bpO/aoNllPZaTugeM/NVPLqvLNhy6Er+x67R+RjdGekwJ1D4U
         dMVg==
X-Forwarded-Encrypted: i=1; AJvYcCVUH9rHpMqs3h4SyrtaTYuth7qXwihsq86cMn1qQ21hBYLBH4ErvHtDYo0U/YONYf6zKXYrz1H+k6c=@lists.infradead.org
X-Gm-Message-State: AOJu0YxneVUJaZetXhwYUdlztEpczyVpBwJeGKD/BM+1BkmeHhJn95E7
	p+m88wsZ3jf8iSZ8kK/NC+KjW9JkUDPWHGnQZ+VVN+Bponws2cFIHXtII0+JwGTOloU=
X-Gm-Gg: ASbGncsvMfHwR5P67TiG1Qfwu+h0zSK/R0OBLrs5KtzqC5cPzNHxg+5TMzgsFmoNb3x
	ze2Pz34N3WkFqnipQw169zF07S9i3GTMSuTNwLXWtp+gcaYdyfMU+gBj4+yL0WEqN4foUXtUGA6
	5UE8TUCaMlVrYlSz84/uHkLIgd+26nqp59JkENTgoqIj2g/UeUdAO8O7MUHAEmzAM95/MBibbEj
	nnxU8XleUMbqq2RG1yHXa+AD3dr/RPTylj8QQo+O6kQ4fR5o3mrSiELQ5exnVsuMOttjOMaeM/H
	+D3hNknplhxKVSOQQQWW44MhQnZwlvsTAlh8HBFzENyy4KtY5Md/rAhERWOgF3wXyf9wXa5Omfc
	6U8erHunpJsKggi4HxkVCxrv2BuD+Hbaq
X-Google-Smtp-Source: AGHT+IFjTub1n0rD6n3C//VfI0DUfJzgzG0dPyTmQDEg3WymTFqbXYGq9le/+InO8pAn1caBoGUS2g==
X-Received: by 2002:a17:907:6029:b0:ae0:a7a1:593c with SMTP id a640c23a62f3a-ae6b2721112mr451588566b.25.1752052723357;
        Wed, 09 Jul 2025 02:18:43 -0700 (PDT)
Received: from otso.local (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6b5e737sm1060116866b.142.2025.07.09.02.18.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jul 2025 02:18:43 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 09 Jul 2025 11:18:16 +0200
Subject: [PATCH v2 2/4] dt-bindings: phy: qcom,snps-eusb2: document the
 Milos Synopsys eUSB2 PHY
MIME-Version: 1.0
Message-Id: <20250709-sm7635-eusb-phy-v2-2-4790eeee7ae0@fairphone.com>
References: <20250709-sm7635-eusb-phy-v2-0-4790eeee7ae0@fairphone.com>
In-Reply-To: <20250709-sm7635-eusb-phy-v2-0-4790eeee7ae0@fairphone.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752052719; l=906;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=7JJoxQwx+4/wfRhr6BUnD92Rt+QxpRRv67tdCjuoJ3o=;
 b=oqiJgUa+pEZRn08K3xP+dwnnlVdD43KZEv90EWs1Nrv4/EhFmjFjk3Ol3Z2ZY5J0FzMl9SErh
 Br1G8yHy40UB4v66KWr2gkRj2YnN84GLBloqxJIe/DNzop3jd8tCHDK
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_021845_174820_78967009 
X-CRM114-Status: UNSURE (   8.11  )
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

Document the Synopsys eUSB2 PHY on the Milos SoC by using the SM8550 as
fallback.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
index 142b3c8839d62d91377061ade3a7c400eb970609..854f70af0a6c1ff93615fa8dc1031b4c1ecc2e71 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
@@ -17,6 +17,7 @@ properties:
     oneOf:
       - items:
           - enum:
+              - qcom,milos-snps-eusb2-phy
               - qcom,sar2130p-snps-eusb2-phy
               - qcom,sdx75-snps-eusb2-phy
               - qcom,sm8650-snps-eusb2-phy

-- 
2.50.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
