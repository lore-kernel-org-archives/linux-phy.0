Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A715C61D97
	for <linux-phy@archiver.kernel.org>; Thu, 26 Jan 2023 13:59:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R4t6PsgHnlG8o/81KQoPeVPCToMLYu0gTvjegRA+ask=; b=BZS4GGQTtR21r+
	y5m+66+ldPdUSDLsBmqq5/4+5Tq2xdjW4gapO0kS0E8cuC9zy9HMjxuCmEIoh8s2hAvVpckiGWqmD
	8lw9fidwIPf/q8aaU98OwhZHZ99agYXxLIw60vO0mwqwlkBVPuNxFY+S4HCo6xql6bf7MFJqpRvyi
	prl4v0Dj6+d10Qoad5HghuPb2/e7f7//Mf2gkrYTUWwksAyb1KgJMxG621+AKRjBZBDy1QZGS7Sge
	zURalTlotwoptTOF0JyEtASwJde/pInwV4xhPmT6CO6XCiDe6PW1IWOgzvrAfjQNWt1iQF6GzwQQw
	oGfZ6YV95VbThRupxpQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL2mk-00B5Uu-2a; Thu, 26 Jan 2023 13:59:26 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL2mf-00B5PL-Hx
	for linux-phy@lists.infradead.org; Thu, 26 Jan 2023 13:59:23 +0000
Received: by mail-wr1-x432.google.com with SMTP id h12so1840686wrv.10
        for <linux-phy@lists.infradead.org>; Thu, 26 Jan 2023 05:59:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KlnEmmK+mxpU2hlLI+Gvfd0nScZypGzNM1BgswRGTnA=;
        b=IWzNaHz5W/tmUnW9Hf4TF4SeahLycM87b/32og4hoTlNnMxtsGbBvj2pgWe580pbA6
         NG2hBXvHBVfg9bJVuuEg8VsTYaH+5K46vmwhs3m+RkcDZFiHQlN7h+k43BX9h3z/Qwlh
         8E1mLcjHbb2kS1ybYdVPiPyQsKApiLocOC5pexqBIjbVE5Uvq9Btxw8GEoHGWruPVqFP
         d2Y/WAZ0LfCzHDoeelDlL6eT/otDwdsgQozsqO0eKJZ6T45BCK81yeHo0lY1kUk513B9
         5yzzS64JfwUnaDsdFFMquQ4BHmQg4py42nB65Cy6VNg4nJUyZCpPghDGwwAeaX/dXAf7
         frQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KlnEmmK+mxpU2hlLI+Gvfd0nScZypGzNM1BgswRGTnA=;
        b=7aCP/f9lwN5h3STvh3TFlftKv8IV3x/PhTpd8HxsO7s3lDRZFONuzMXBeUZ2ykeyYW
         2Rr/me92K3tEDta1hInXjdI1MzhxdsVSvDaQrmAaFLTbvQP4v5B3tsDzi7AvEKkYBWtd
         HzYQ7tWck88SQt1eC7RLNEMY6VlvyJohODPWVtYo34oiyd9IcyOcBS19mFJb7S7yjAUk
         qDwk8axmRcsj7aVh6VJbf8t1IVM40sq397Mlh1arFYwtx1xyn4NVKPAuyc/vtfbxCLGS
         O2prxjzrJEIDYoPLby0Xz4dD770lKBw7q1CQtZYO5ZDxOgwi1c0NGK2a4L8mrlfMFW05
         XMeA==
X-Gm-Message-State: AO0yUKXbmRVQuz64WbrvWI06vcT4I/81ya3U2phkVN2OgVVtkJQbLeSe
	/U9vf10keG0jKVc3h7e0edoPTA==
X-Google-Smtp-Source: AK7set8FggxXcVZ9bPoTKpa6BTjp5VcePXjKwDkgSRvp/bmVaGp9bs2/Grj6AF+6XjnS6/2VtV91Pg==
X-Received: by 2002:a5d:6dd2:0:b0:2bf:b0e6:f463 with SMTP id d18-20020a5d6dd2000000b002bfb0e6f463mr8183168wrz.13.1674741557794;
        Thu, 26 Jan 2023 05:59:17 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id l15-20020a5d6d8f000000b002bfb37497a8sm1594067wrs.31.2023.01.26.05.59.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 05:59:17 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-phy@lists.infradead.org
Subject: [RFC v2 3/7] dt-bindings: mfd: qcom,spmi-pmic: Add pattern property for phy
Date: Thu, 26 Jan 2023 15:59:05 +0200
Message-Id: <20230126135909.1624890-4-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230126135909.1624890-1-abel.vesa@linaro.org>
References: <20230126135909.1624890-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_055921_665590_DA3C9787 
X-CRM114-Status: UNSURE (   8.92  )
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

The phy pattern property will be used for providing eUSB2 repeater
functionality. This will be modelled as a Qualcomm PHY driver.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
index adf88245c409..1e6fadec1301 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
+++ b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
@@ -135,6 +135,10 @@ patternProperties:
     type: object
     $ref: /schemas/pinctrl/qcom,pmic-gpio.yaml#
 
+  "phy@[0-9a-f]+$":
+    type: object
+    $ref: /schemas/phy/qcom,snps-eusb2-repeater.yaml#
+
   "pon@[0-9a-f]+$":
     type: object
     $ref: /schemas/power/reset/qcom,pon.yaml#
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
