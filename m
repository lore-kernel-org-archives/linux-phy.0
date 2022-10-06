Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 611ACC4332F
	for <linux-phy@archiver.kernel.org>; Thu,  6 Oct 2022 23:21:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V5pI6yEMva9AuEJpEXqSnRb1HVWCBaQoc98HMAvq5pU=; b=RW6wk4gmzZIZ5b
	qEsL+x8eHTXdX1Ml4tLMUI6iSnr055gkxSjnqoGl2/z5k9geyQPrtEIZTy2tZ04FqiXNyQS58xOQd
	GDWbJhqkFhbxI80TooG1zaYno64BlGHGuOWrLlnujYdRQdtbLCanVouJh/CtKk0Km0fv8yg3l3ySB
	kagetMf5LT0ggHqzcfeIG09S1MRwgZ+fbpKyFGSFaqr3+UFyQC9vwk4hz3ErUKj8SNCGuPfALQ5HA
	oIqklrYrPUAFTFQFOKYcNNOiXI8uu3b9jz9J5QT9/lQ+j97XGbLHSUZefOziyT7yv6q6lAuOgy83R
	gD6WK8DfHpoFT35/qKzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogaBE-005x9C-L0; Thu, 06 Oct 2022 23:21:28 +0000
Received: from mail-qt1-x836.google.com ([2607:f8b0:4864:20::836])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogaBC-005x7b-AL
	for linux-phy@lists.infradead.org; Thu, 06 Oct 2022 23:21:27 +0000
Received: by mail-qt1-x836.google.com with SMTP id e3so1160797qts.1
        for <linux-phy@lists.infradead.org>; Thu, 06 Oct 2022 16:21:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HsUtilPeZlwiKK6ImAsDozMQbGgITU56YSuN7fZPUFg=;
        b=oLvgSk7wyDNAxPsi04wSzI05U8IFD/9D6c0gJSCWFNXXnS7nT63SxHTJMIkMhn7u4s
         W7YM5OXBjrvqpaDC4n3IywUaXI5wfPq95R9NCx8HfeJEHcTr0U2UPBYszrIgLVaDWIWu
         wYb8qWPrBN+sAFLuoheZrQvzmiEsgrZ1nQzaefRUTkQ1//CmL/roECN8+yKNUs+rdNCs
         7y+sbHtClpAjgo9lSYO1j/CMm5hQ4VraD/nNVSP03gIf3u9a1//qLqsGgLCloII0P1Pz
         10s9y1EzNZerXaEyAEsfuEpPzxTgbVlmwGfIIijW7jUosW9wbYUuITiFI5ZAnzIvslfL
         MZPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HsUtilPeZlwiKK6ImAsDozMQbGgITU56YSuN7fZPUFg=;
        b=tQ8fnudJeAK7fTx4PP8FjBzxzaBGVInKavJOslV1x9CQ0qonX78jtopUJ86XdhWJyM
         pN8yqAUatqsnWFToa+CyHgxN3wbLKfXdyq1cM7WqwSditvsAGFgThPcjF0D/BGNltKEc
         drY+R+1NWxO8kTTtj0OZqdvn7aaNUJmrLQtMMLuJZRFMbo34sYIO8fiD79M7QAmC+Ny+
         KC3hzNJyN0I3acRhxqfkjmTRNSOUsXS1Qh0SrTqWqmhykt1iVxMs2fCd5gkijdlQ3tNA
         SWnMOt55KHl7mEqznQdziqWphBjLHG8OFyZkMywhWYYAzSSzcAPH95doX0Pj+BWz0eGp
         7VuA==
X-Gm-Message-State: ACrzQf3sk8QzPKFhhOBRjiOd9RwlSQAE0PgKv6iX5Mh8UeDtFLe9Gjw8
	EByMj0AxEbWBUgTy/zYBYik=
X-Google-Smtp-Source: AMsMyM7UZNC5pCZp5Bpvb39hed0mQQU7FrMrF0YiKgsU7ewt+TMNuQVg1kIrsvbfNI4bAjY64Arj7Q==
X-Received: by 2002:a05:622a:164a:b0:35c:b87f:4839 with SMTP id y10-20020a05622a164a00b0035cb87f4839mr2307111qtj.219.1665098482325;
        Thu, 06 Oct 2022 16:21:22 -0700 (PDT)
Received: from stbirv-lnx-2.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id ay18-20020a05620a179200b006ce2c3c48ebsm386825qkb.77.2022.10.06.16.21.20
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Oct 2022 16:21:21 -0700 (PDT)
From: justinpopo6@gmail.com
To: linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	gregkh@linuxfoundation.org,
	vkoul@kernel.org,
	kishon@ti.com,
	linux-phy@lists.infradead.org
Cc: f.fainelli@gmail.com,
	alcooperx@gmail.com,
	bcm-kernel-feedback-list@broadcom.com,
	justin.chen@broadcom.com,
	Justin Chen <justinpopo6@gmail.com>
Subject: [PATCH] MAINTAINERS: Update maintainers for broadcom USB
Date: Thu,  6 Oct 2022 16:21:09 -0700
Message-Id: <1665098469-19008-1-git-send-email-justinpopo6@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221006_162126_404908_0676006C 
X-CRM114-Status: UNSURE (   8.49  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Justin Chen <justinpopo6@gmail.com>

Al Cooper is no longer the downstream maintainer for broadcom USB.
I will be taking his place as downstream and as an additional
upstream maintainer.

Signed-off-by: Justin Chen <justinpopo6@gmail.com>
---
 MAINTAINERS | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 8656ab7..3e8ecde2 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4078,6 +4078,7 @@ N:	bcm7038
 N:	bcm7120
 
 BROADCOM BDC DRIVER
+M:	Justin Chen <justinpopo6@gmail.com>
 M:	Al Cooper <alcooperx@gmail.com>
 L:	linux-usb@vger.kernel.org
 R:	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
@@ -4184,6 +4185,7 @@ F:	Documentation/devicetree/bindings/serial/brcm,bcm7271-uart.yaml
 F:	drivers/tty/serial/8250/8250_bcm7271.c
 
 BROADCOM BRCMSTB USB EHCI DRIVER
+M:	Justin Chen <justinpopo6@gmail.com>
 M:	Al Cooper <alcooperx@gmail.com>
 R:	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
 L:	linux-usb@vger.kernel.org
@@ -4200,6 +4202,7 @@ F:	Documentation/devicetree/bindings/usb/brcm,usb-pinmap.yaml
 F:	drivers/usb/misc/brcmstb-usb-pinmap.c
 
 BROADCOM BRCMSTB USB2 and USB3 PHY DRIVER
+M:	Justin Chen <justinpopo6@gmail.com>
 M:	Al Cooper <alcooperx@gmail.com>
 R:	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
 L:	linux-kernel@vger.kernel.org
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
