Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E25DC636CC
	for <linux-phy@archiver.kernel.org>; Tue,  7 Feb 2023 13:56:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FtT3R7MqdNbzinJKC3qiNhphRygCtnAgMjffP/ailFU=; b=jJlwm5oG2Dp6pN
	OW1a5DW9EMZVS08uZyJ3CDRetjoFDpRf13sPYfpZvWY9GDgMDq8Ke5/Km/68YOBuYEoxKIZln3ZnD
	CuxzIxSRwA/M2kaRics68gzxZb3Ydi6qZNCsmdkn4MXeRoWTOBqf7hs305JJBqhE6UvxdyRRqMBqb
	CFfrQhRwH77jjsWMaE25RRCJBXCoEaONVX7ZVHSY60DnwIPjg488a8y6aVa9qCgaFo89yVuoi3Khi
	jO2X7xC3EoYBaoa1EZBqwxTr7ST+yb5Eb1unX9ThIzyLjiXWNesswuN4+e8363j3jLE6lGW4+GEq9
	JgNaFMlJ4Vu8Kkm1wIyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPOS3-00CMpU-1l; Tue, 07 Feb 2023 13:56:03 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPOS0-00CMnk-AO
	for linux-phy@lists.infradead.org; Tue, 07 Feb 2023 13:56:02 +0000
Received: by mail-wr1-x42f.google.com with SMTP id bk16so13614020wrb.11
        for <linux-phy@lists.infradead.org>; Tue, 07 Feb 2023 05:56:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AtkmhwFT5j7wowMrMh6FyT6x9TPEWHJ6LPVu2crAaaY=;
        b=yeueLFHd13NZAGnJvHZuHiRYVpoEhoTeSIVMwEFaDaXr5X0uS8p6ut2gDavnB5/VgO
         ufg7Wc06MA0b55lSEfpMo6PFPe22YZHwbfC+LPFuRehpLt4mL/7ka4vKc+wUAqcXsExZ
         3rD5ih/CiTv+4pHMalF8CDQmrrx/ptBvrb/sXDseu+uTw6/uIUtwSYRKlzKlbpxmO3zf
         qUgFykksZcGNShdv57SOn3leRwxKfRKZS1Q9tviP5zlMXE6vCgu+ZEVhel9qvsIXP4pJ
         d+Y8YODSm/EZ8foMFeFgaPwklYAoaCl1MqU8XD8bXpouzbOjMBs1T+2k7T2r4UzyJY2E
         e6sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AtkmhwFT5j7wowMrMh6FyT6x9TPEWHJ6LPVu2crAaaY=;
        b=egvhubA60fbzZe6F1c1K+MxKfE7ZD05jWvShgiz1+GzIgXrdhyUkisNpNmAXFT8ugE
         QaoNjhys7jEkXe4YY92Qt1FpzvnZPokqcz+pj/JPYF+m0Ys9tX43qIPMxMTBaiJ/pUIy
         tYyV8L64Chk9+8RcA6kRd52rCZVo/v46iWZqQOb5DkfBO0L4MB2kjj+6WevquQ/VGhXw
         jhLiulmAwstAVNSuOfkOHgc83hp/cxkkfwqxijfuv9/clDxURtrD12o1VnKSc0+2RN/J
         PtNQ/jjaH8ZP7CToBE8TEA9XoPOVUbIXQctJNbEqjf/F5rxppG9mjVt5w8nht4gOydQU
         9qIw==
X-Gm-Message-State: AO0yUKV97KQUC6/kIsM+4Al/fnXdgRGMKXEB4JRGetSiAlw9UDNCTd/C
	WKtUTRkF2/XyoVdEXeSSSSI4Dw==
X-Google-Smtp-Source: AK7set8sX8qVfXWnL7rMwHmKqSHv+hoK0KTIKBOfrnCPm2yh0mFF/nczg+iG/jdmQKu8ghiXhTpjCQ==
X-Received: by 2002:a5d:49c9:0:b0:2bf:9656:d1a8 with SMTP id t9-20020a5d49c9000000b002bf9656d1a8mr2270813wrs.32.1675778159182;
        Tue, 07 Feb 2023 05:55:59 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id p10-20020a5d59aa000000b002be5401ef5fsm11611312wrr.39.2023.02.07.05.55.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Feb 2023 05:55:58 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v4 3/7] dt-bindings: phy: qcom,snps-eusb2-phy: Add phys property for the repeater
Date: Tue,  7 Feb 2023 15:55:47 +0200
Message-Id: <20230207135551.1418637-4-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230207135551.1418637-1-abel.vesa@linaro.org>
References: <20230207135551.1418637-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230207_055600_379743_53A55C2E 
X-CRM114-Status: UNSURE (   9.12  )
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

The phys property is used for allowing the eusb2 to interface
with the repeater, which is modelled as a phy driver.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---

The v3 (rfc) is here:
https://lore.kernel.org/all/20230202133816.4026990-4-abel.vesa@linaro.org/

Changes since v3:
 * dropped the phy-names property and changed the commit message
   accordingly

 .../devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml         | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
index de72577e34a4..c53bab107b6d 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
@@ -33,6 +33,11 @@ properties:
   resets:
     maxItems: 1
 
+  phys:
+    maxItems: 1
+    description:
+      Phandle to eUSB2 to USB 2.0 repeater
+
   vdd-supply:
     description:
       Phandle to 0.88V regulator supply to PHY digital circuit.
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
