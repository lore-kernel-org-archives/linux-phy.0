Return-Path: <SRS0=alUI=MU=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E706C432BE
	for <linux-phy@archiver.kernel.org>; Wed, 28 Jul 2021 12:28:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6BAEF60F9C
	for <linux-phy@archiver.kernel.org>; Wed, 28 Jul 2021 12:28:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6BAEF60F9C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FGyFImcSGQpE98CvcGri7YwpqE+KbbICfJFHF0UNtT8=; b=IVzr4MwpIts/dY
	O4HcFi59rECvxbynWv8Tkb0C3qIATCtB8QjguzNPdDBOLJBSc69o/bGQ6pJ1OPHUXJ5REvSt9TsAK
	sQz33O9BVy+m4Xbzt+2NL9sexQ8NV/rdN0U8zGoA1xGJLKNf6ItPM51uO/eQKVMK+yOMO0AJb1Tk2
	Nhk+LigA9SYPm0jem/UfprxSk1EBkNWDA4fRV4L5zm/9EuPoqFZtKV91U2TkEJs1g8pEqR92jA3ND
	jhDMb/ISGPfkwui8chq1ftnMAUZ5VRn+E9YcH1zcf5v59RmMSPmezD/A3kPGKtNtfXGV/hqIS1T1n
	aD29iMZ0Y9VJsqUjl0xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8ifT-000dMP-Vm; Wed, 28 Jul 2021 12:28:11 +0000
Received: from mail-qk1-x72d.google.com ([2607:f8b0:4864:20::72d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8idi-000cek-99; Wed, 28 Jul 2021 12:26:23 +0000
Received: by mail-qk1-x72d.google.com with SMTP id c9so1911444qkc.13;
 Wed, 28 Jul 2021 05:26:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0uGMLBbvQN8srNkNvfT+Pk/8+H4pNrxtnpo3vhHBUd8=;
 b=gNRzuSOY4nKjngNm7Tvd9GEhb9D25zo/YGvVGrukH8YRQNnbe9rvJuobZUu9KW+Uzw
 v8Aa9Sw21Apf8PnXKfVJ67Os5VGW+rT2TT8NJGYKiHKNjV94h7VQH1J7Th+6/E4MrWQl
 +YSHUZ0B93JeFMSdVDPpWWeMKBeO/9dFvQkPX/SzazJAazqYA+aywP1D/KaPiq7m3i2O
 nuO1O8+O/EmsH4J5hhAofTXEp7OGvHKUTxaJofTpvJ4fxlKhkZuUb3pl9w6JfYT5yaZS
 C2D1ur9LTdqyPc28wVSag3jKx6KcjFASZ1DLj0eGwkapw6+uNz3k+z3pbD00rFiri498
 EGqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0uGMLBbvQN8srNkNvfT+Pk/8+H4pNrxtnpo3vhHBUd8=;
 b=ZXfMptBAaFEqkS9VbL9vz1GZbVPmDo5hVUxvlsCrpY8A/NR1l7b3AmFqgboJdEycL5
 c2ZZ3hnhfqpJzhOj/LiN2icMmRCHT8/XpBzD+iu4JVFBwOIX3Nn+4PTZzutm4iD5rbSQ
 CLf/Bvci1MABhDfvdgx4foTST3TeUvFwDel3/dp8zSnnSk3ldQIwWPQtI2S8yRPEB4h7
 HkDlbuTlvI9Bd9M1HWjSo0WWeJnQO/UJut3hNXr+qy5ozSSfyVCTRKWo5J8Ih3q19rzd
 OWbLhkcsgnTSVDjatlOUZLpXWA8p4ZXJZIi5GCMkmHHiv0teLmE5IECcrxwI4HLQPw25
 mItA==
X-Gm-Message-State: AOAM533sq9rBVi8+vwYF5mffuyVeKmEO4OJ4osJEwtKjUdYI2rip0cw1
 frKtChuyaYjjFk/IfC31OqQ=
X-Google-Smtp-Source: ABdhPJwYGB4iyvpoc8D3mrR5HxybYHOJ0Q1HhDsTfV3Ay9gHOJh3Y3rTnzBm0bWpIYVZZnaWK3Ww1Q==
X-Received: by 2002:a37:487:: with SMTP id 129mr26373367qke.154.1627475180131; 
 Wed, 28 Jul 2021 05:26:20 -0700 (PDT)
Received: from master-laptop.sparksnet ([2601:153:980:85b1:b58:2ae8:d75f:660a])
 by smtp.gmail.com with ESMTPSA id z9sm2842972qtn.54.2021.07.28.05.26.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Jul 2021 05:26:19 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>
Subject: [RFC PATCH 3/9] dt-bindings: usb: generic-ohci: increase maximum
 clocks
Date: Wed, 28 Jul 2021 08:26:00 -0400
Message-Id: <20210728122606.697619-4-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210728122606.697619-1-pgwipeout@gmail.com>
References: <20210728122606.697619-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_052622_359083_41B46B81 
X-CRM114-Status: GOOD (  12.03  )
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

The rk3568 generic ohci controller has four clocks.
Increase the maximum clocks in the documentation to account for this.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 Documentation/devicetree/bindings/usb/generic-ohci.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/generic-ohci.yaml b/Documentation/devicetree/bindings/usb/generic-ohci.yaml
index 569777a76c90..850996e6f451 100644
--- a/Documentation/devicetree/bindings/usb/generic-ohci.yaml
+++ b/Documentation/devicetree/bindings/usb/generic-ohci.yaml
@@ -59,7 +59,7 @@ properties:
 
   clocks:
     minItems: 1
-    maxItems: 3
+    maxItems: 4
     description: |
       In case the Renesas R-Car Gen3 SoCs:
         - if a host only channel: first clock should be host.
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
