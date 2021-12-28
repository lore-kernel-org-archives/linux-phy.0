Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67AD6C4332F
	for <linux-phy@archiver.kernel.org>; Tue, 28 Dec 2021 05:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B5YjN6uYRV0u3jHMACmrtJ/y4HLYoSFlu7IbC5ZTpto=; b=kEZijDlC04BBQf
	+x+kB02uTjcNpbAJsAehjHWK4/1vKJb18sABkXap8aFnlEC5S5c7o5xUa5qZrSTvbB47vWsP4aYEL
	wARHaJnGag3cOqaji+fhdsDufGHMRy5giajInCPj9agmDOaHVyc83k6yy6mv82zHCAn/JEjAB2wmk
	HzwAD90ZPPLnTW0NN6TPC80DFxHASDQN0zBroJJ7DDky1a9cJxTkyUvVAueY45ZAC8JBRiCYJclrG
	r0+PNntccbBcxIbkhfy2aCZGVvOXTri3wjo+Ydw5YNsubmXVf6IsCUa+4JZ2WOtXXQharu+zLFjEt
	cmPQfEmAcrhwXSTK/nVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n24uK-000DAL-LL; Tue, 28 Dec 2021 05:20:20 +0000
Received: from mail-oi1-x233.google.com ([2607:f8b0:4864:20::233])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n24uI-000D90-6y
 for linux-phy@lists.infradead.org; Tue, 28 Dec 2021 05:20:19 +0000
Received: by mail-oi1-x233.google.com with SMTP id t23so28398663oiw.3
 for <linux-phy@lists.infradead.org>; Mon, 27 Dec 2021 21:20:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ByvL2Uf/cXpEPeJ2AJET+qvtgysLCEvhZPeq63DSw38=;
 b=B4zhlUAr32kY5oZ8N53jC4N8hPIY76Y5v1jPJEOJ/8WQ/GGjZEEkjMyc62nzUR9fA+
 iwn7SXOmsb3AMDCG7G2wARbdPuxKskTye7cWKkq7ezq1aFwZdRFDIvbp4aaDMdgev2mh
 n7F1qLKmmQwyw5aKDR116G9iStrWa+eiY2wPMCHmXks6ElcXzV7rettiqdDEZ6+MqD6w
 KQ75+fbrRwUTxPrV4tFrmnTSLRGx9+/YVu2ldIlYlJP93Pwva0AUASZGtPKEAvjFEI7U
 0ljq2DhdsSpe3aUhVeYZoitZRvGXgDpIhWniyagk5LDACXH8GsQwmtBukZ0YqCumW61E
 qzOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ByvL2Uf/cXpEPeJ2AJET+qvtgysLCEvhZPeq63DSw38=;
 b=4l/MZ5+9Pw7UHj2NorZU+xnJrEX25bft5EElylha5l/rFFqTaZUywuCbXiyQo+BWED
 bcREsqEBW1n/VM1osoL8Uj6U6jHLNM8iNgb86xSVYfHLAs+yJD4BQTt65xm6hO0EA77j
 I0TTJz5ZiMKtl9tVjKrNPz1/qrIpxZ5VuiPStgJl0axbj6Bd3vVnqJZg/rcrjL6e78TY
 aorP50bVDMovUAbeh7trNDQo64JYHUGM856UtEgGyGzMSxUzKtoj2v5H7tDJM9FFIZ16
 zhr3/VrcPxG6Fn9Z5NQmtWbfBqHQ6DBHqDPWZW2JmCqKm5HotsVtBpph6/XsMVN06tiE
 /FDw==
X-Gm-Message-State: AOAM53053Wq7BQEdLcCBsLmVGH5sHxYNybgboGTRWBE3B5KY1SbU2tAw
 lhwbtSqOpe/66XOOqKkkb5dNIw==
X-Google-Smtp-Source: ABdhPJxct+CkbSvI41JFvkdLrfCsI0wdjHkYbiI93M8uVvOhwpL8J0QsaQ7QXmKuxWERI3iK92ZM+w==
X-Received: by 2002:a05:6808:1408:: with SMTP id
 w8mr15463765oiv.54.1640668817343; 
 Mon, 27 Dec 2021 21:20:17 -0800 (PST)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id j5sm3002277oou.23.2021.12.27.21.20.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Dec 2021 21:20:17 -0800 (PST)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Subject: [PATCH 1/8] dt-bindings: phy: qcom,
 qmp-usb3-dp: Add altmode/switch properties
Date: Mon, 27 Dec 2021 21:21:09 -0800
Message-Id: <20211228052116.1748443-2-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211228052116.1748443-1-bjorn.andersson@linaro.org>
References: <20211228052116.1748443-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211227_212018_287055_255381A1 
X-CRM114-Status: UNSURE (   9.06  )
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

The QMP block deals with orientation switching and altmode switching
between USB and DisplayPort. Add the necessary properties to the binding
to allow it to be connected to a TypeC controller and trigger these
operations.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 .../bindings/phy/qcom,qmp-usb3-dp-phy.yaml         | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
index 60dc27834e1d..f8a745ec479c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
@@ -77,6 +77,20 @@ properties:
     description:
       Phandle to a regulator supply to any specific refclk pll block.
 
+  port:
+    $ref: /schemas/graph.yaml#/properties/port
+    description:
+      A port node to link the QMP to a TypeC controller for the purpose of
+      handling altmode muxing and orientation switching.
+
+  mode-switch:
+    description: Flag the port as possible handle of altmode switching
+    type: boolean
+
+  orientation-switch:
+    description: Flag the port as possible handler of orientation switching
+    type: boolean
+
 #Required nodes:
 patternProperties:
   "^usb3-phy@[0-9a-f]+$":
-- 
2.33.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
