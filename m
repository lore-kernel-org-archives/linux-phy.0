Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAF29C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jun 2022 19:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=25RFxUTyDpkqaaewM/I3XkxivszyBMcOX6xxdxcpWDY=; b=st290ADNhAURv6
	b9SLQNywcujzvWIISnr76L0fj83VJT9+qstTOzVpAxEAorDip41ltz+Do5SwPoIR4GL/PJHy8Np5N
	HW0yRExtiwROj37qKbEc+u0wVZcjCO5o+VpsyhLI2bH5I7wUnXwwxoSNzmm9gV8tMDz5g55YwsG6u
	dizFUzQKJdU47Qzjgbet0Bbtu0nuKmhbHqDGX4i6Fi/PRVrbRe9gT3CiONOnbw8+cKaoNa9HFihZS
	jLhYYs5U3WgFtVI5XSoABBFXQVvAo/CXBSRfVkBlWQnfy+kTFNP2xLnnAYy0iHPoEekE3IWlP8sLh
	SnUuVQgs0ZGmyLI0VKyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3jy9-006zqO-0h; Tue, 21 Jun 2022 19:55:25 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3jy3-006zmq-U2
	for linux-phy@lists.infradead.org; Tue, 21 Jun 2022 19:55:22 +0000
Received: by mail-ed1-x52b.google.com with SMTP id e40so8285054eda.2
        for <linux-phy@lists.infradead.org>; Tue, 21 Jun 2022 12:55:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=v7nxHvlawisf1+yiWy1FwkyOpuVc183YG++a4GngDmg=;
        b=Of9IoRCLVu5v+Z5ddV72KVppR+laNfguuEbqBT5OxjDsIhtr+p6dJ/ayxexE+Sp95w
         AL7Usr1LVie3Eb1navS8t/NjDHi785NBlKMjwQxUfqRXb7nlwke06jd4rqynA3G/byjs
         Grk2pg+h1sHX1kPsFz8cNXb8NIuw2a9m8NtV4Utxid4HcOR+aO8saZiBTI8ym9I7po1C
         /JBOAqF6Dr83/efUf7dTKR/C9wzPKahL9hsqG7xg78iMZai05Or3WvaUV9+nSqUrgESO
         8Gp6NjYLslicqBfYbhOtT/V1hdNpF3p1pEZWqLX5VQ21b1qmvNkSc5vFhkKs88zKnkP2
         IcHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=v7nxHvlawisf1+yiWy1FwkyOpuVc183YG++a4GngDmg=;
        b=fZEDqK6fgo2LRi0xrbWivNfnsUouCfLiG7WBxJFthh22FHYzndI5zmCEGo8SiN47/M
         yL3yXfgtjzqRulIiKpXMCyYacT3WMh6QlGfx7j4xntryoCPSfYg+fJgnGSIsBocPXVPL
         /6E7wX+FxzW2M5po3oD0aNbuYRWn9CaE0WKX8VHepQtlcciQUGzB6t03JRQvIszWY+Pa
         0gopIROXBH+6vdCKFB8fqGgF7qrskIcndRPZ2TacVRPMNIYRUFiF6dIzo4BYmqTeUxp+
         W7H3mSBzpFAnfgfr9xGq8qwqBGFm6Db0pvBtibZJUuWN55tFU9eWwqhQFfyGbkvXJVtc
         T2Ag==
X-Gm-Message-State: AJIora9awxJtaal3QBc1lI59FnWwoeusnC8w5dd8JdxrvA1aJzohI/0/
	y4N74YQi0EHNT8cO+oP8pw8=
X-Google-Smtp-Source: AGRyM1ulGRkk8/kYxv1RJHx/pF7nhbd80DwOp0kNIGeWuw+yvL/4Hu1TFD9TVkzAJDaXo9RG9b8lFA==
X-Received: by 2002:a05:6402:354d:b0:435:93f9:fc0b with SMTP id f13-20020a056402354d00b0043593f9fc0bmr6587948edd.288.1655841316086;
        Tue, 21 Jun 2022 12:55:16 -0700 (PDT)
Received: from fedora.robimarko.hr (dh207-99-158.xnet.hr. [88.207.99.158])
        by smtp.googlemail.com with ESMTPSA id b14-20020a056402084e00b0043565c79879sm10713114edz.43.2022.06.21.12.55.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jun 2022 12:55:15 -0700 (PDT)
From: Robert Marko <robimarko@gmail.com>
To: agross@kernel.org,
	bjorn.andersson@linaro.org,
	kishon@ti.com,
	vkoul@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dmitry.baryshkov@linaro.org
Cc: Robert Marko <robimarko@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 2/3] dt-bindings: phy: qcom,qmp: add IPQ8074 PCIe Gen3 PHY binding
Date: Tue, 21 Jun 2022 21:55:11 +0200
Message-Id: <20220621195512.1760362-2-robimarko@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220621195512.1760362-1-robimarko@gmail.com>
References: <20220621195512.1760362-1-robimarko@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220621_125519_996000_B8D23C7B 
X-CRM114-Status: UNSURE (   8.14  )
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

IPQ8074 has 2 different single lane PCIe PHY-s, one Gen2 and one Gen3.
Gen2 one is already supported, document the bindings for the Gen3 one.

Signed-off-by: Robert Marko <robimarko@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index 8b850c5ab116..220788ce215f 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -19,6 +19,7 @@ properties:
     enum:
       - qcom,ipq6018-qmp-pcie-phy
       - qcom,ipq6018-qmp-usb3-phy
+      - qcom,ipq8074-qmp-gen3-pcie-phy
       - qcom,ipq8074-qmp-pcie-phy
       - qcom,ipq8074-qmp-usb3-phy
       - qcom,msm8996-qmp-pcie-phy
@@ -312,6 +313,7 @@ allOf:
           contains:
             enum:
               - qcom,ipq6018-qmp-pcie-phy
+              - qcom,ipq8074-qmp-gen3-pcie-phy
               - qcom,ipq8074-qmp-pcie-phy
     then:
       properties:
-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
