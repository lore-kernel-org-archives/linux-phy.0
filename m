Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1558C636D6
	for <linux-phy@archiver.kernel.org>; Wed,  8 Feb 2023 18:34:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eJ4ZezWUb7VS8RTJ/IaMmSILBAbG31O0CZbjG+GRBIo=; b=ewe6HTH8Jvn+SG
	lTohY4XwCajOFn09y70itw5sEpuCPDz7XFOtVA+2ox7UNOZaG/FyLBlnNs9l+8DhLdXZUacvUzgGn
	bVdMAOhpe/d+F4+qwQAIBmLTZSi1fAxKF8m8C1DwIIembQgV9tk64hfTZ8qrWeJJAvcMuOdBG3sJp
	iM9jyZ2JMY/cQ9G6nOYAzuj7lm2PcDZrUtIe8/6cKfm7M02nbpvXPd8OWTw7Pj/XCDY8il6b/CKxR
	L4qJuGXiog+g1V7b0IgSuHuJ13C66woUXS/WJhZitQ8kEal35gzBY8f0HS0N3UPiieii7egWZ2wJ6
	fmjmZCeHz5KfzbsNJwog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPpHN-00Gcg2-EP; Wed, 08 Feb 2023 18:34:49 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPpHL-00Gcc5-1J
	for linux-phy@lists.infradead.org; Wed, 08 Feb 2023 18:34:48 +0000
Received: by mail-wr1-x42a.google.com with SMTP id o18so17721227wrj.3
        for <linux-phy@lists.infradead.org>; Wed, 08 Feb 2023 10:34:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0RIRS8quKmcuI5WlR3ZOR9P7J9hL8JDRcRIT95B2/tw=;
        b=uDbg+nT7iNBwoXs559bUW3YIhC8/6i7JfWB+EdU4RUJh3KMutF5knCidtqDjorHKKN
         aGxYhI4xg2uYR1DSgscNPlXMc3N1pa8KW7U85hYO2iAH5pqGuIWchD0VZXC1bb7bFsPR
         vR2X4E6kaD72/dWQzraU7aet1nWX1ePCJ0uluRZYeCoRvBTPyQoX77/8V29M1ycovVvO
         52VIJsW5ANosBFQT+OU3Sa5pw3eE6SgKIvPqS3Kuts1GfDK/x+fh4VM9SxtO50wy4Onm
         CZZi9oKOi8RE2X7JsQGcva8ALPhfaWkS1JCTVYtRgynkJV7DBODPksog7mxePyD4aGuB
         N7mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0RIRS8quKmcuI5WlR3ZOR9P7J9hL8JDRcRIT95B2/tw=;
        b=SE/drKVQmHPfrLgFi8w45q0cxs4Pw/vOYdJ73RUwgqEgoo4F7a6ZIIEAroBTIN5D56
         tjMPGD/AQXg8o56xXGFzpaSR8aL5govKVwm7uZR/oAODgFUHPX7laKV0lTKFVDevIXPo
         qnEkTEwLqioeieD82Z5HG0Vb8M7kanK0x1+/j+A22aaiaxhNgrN+7kYRWngeuKsDPyo8
         6wg8jwvzTM6VZHqnfciswP73DLUlGyA5UMCFWzqkdpxuqrWLnvy/JUSxYpcBMASqE6zf
         U4Vmn8fhEK0bDDnYgvlKbIzMoS41gzhHxgiOPY5bTxqfXsqRZSYU/hZ6KUUX0cmJ6BgX
         v2Bw==
X-Gm-Message-State: AO0yUKWzfwnp3VmvYIprFNM+ijByzdphjuA0VErtXY3BosT5o5OJ9Aze
	jeFyO51MfXgpAJWJc37cN4UyAg==
X-Google-Smtp-Source: AK7set+SFfGid0f6zHeiKIhNJ9ePxJlcXfKM1DYwCfErJTVdUkc4Md/L9M3Yc/zaRI6ujIu1B2DgWA==
X-Received: by 2002:adf:df89:0:b0:2bf:95c0:6b30 with SMTP id z9-20020adfdf89000000b002bf95c06b30mr2465348wrl.31.1675881278417;
        Wed, 08 Feb 2023 10:34:38 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id v1-20020adf8b41000000b002be505ab59asm14591304wra.97.2023.02.08.10.34.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 10:34:37 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan+linaro@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-phy@lists.infradead.org,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v6 3/6] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Document SM8550 compatible
Date: Wed,  8 Feb 2023 20:34:18 +0200
Message-Id: <20230208183421.2874423-4-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230208183421.2874423-1-abel.vesa@linaro.org>
References: <20230208183421.2874423-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_103447_102025_9D9FF642 
X-CRM114-Status: UNSURE (   9.04  )
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

Add the SM8550 compatible to the list.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Acked-by: Rob Herring <robh@kernel.org>
Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
---

The v5 version of this patch was here:
https://lore.kernel.org/all/20230207114024.944314-4-abel.vesa@linaro.org/

Changes since v5:
 * none

Changes since v4:
 * added Johan's R-b tag
 * changed qcom,qmp-usb to qcom,sc8280xp-qmp-usb43dp in subject line

Changes since v3:
 * added Rob's A-b tag

Changes since v2:
 * none

Changes since v1:
 * moved to sc8280xp bindings

 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml   | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 0764cd977e76..83944959d394 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -18,6 +18,7 @@ properties:
     enum:
       - qcom,sc8280xp-qmp-usb43dp-phy
       - qcom,sm6350-qmp-usb3-dp-phy
+      - qcom,sm8550-qmp-usb3-dp-phy
 
   reg:
     maxItems: 1
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
