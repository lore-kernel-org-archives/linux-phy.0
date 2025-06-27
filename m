Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8ACE2C7EE31
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jun 2025 08:06:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mPzxuG/rUQbx6q5DfaSdks1MKmSKvOJekMFfciCDvcI=; b=ff728HGL9M+GF7
	O+cnnPvLJMh/JQeOLVsqHvNeNdz1FiS1CbDjtanE/rFXZ+9TbFo8Nq4HmgQEm3KNjbQT8SOyE/Ve9
	OXLyPQV8chNj2jZOey65gbN0KzgsRnrR75e7xZKu1NZAkYU4yWHfCI0J0pe3CUr3+ZhaWp/WXoxOk
	wh7yfzh1alIRaIufqXMbi1mX6XKodDFRR4NIlvBcc8sMNQbxnNMeYpKleLGpxK0AHG1DbmqWO4T1M
	4+H/KndQ30Lu2HRkOBgFqjpSeAD3BGx8jrIlQJE1AKKUgVQR9C36wlCmpxN/daM14kBymF/d4GfB0
	grqnpDDk5vnTmIEY6HZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV46i-0000000Dutu-1Ju6;
	Fri, 27 Jun 2025 08:06:48 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV426-0000000DuMV-2HP8
	for linux-phy@lists.infradead.org;
	Fri, 27 Jun 2025 08:02:03 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-45368313a7bso231805e9.3
        for <linux-phy@lists.infradead.org>; Fri, 27 Jun 2025 01:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751011321; x=1751616121; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aYKyHT6aO5DOvkeXEodSr/zn4tG0sPpdUKZb0fO86vs=;
        b=ALKCMXjBX0W8PkkS/VN8wsPG1vYQ0dtdAknbQAQJ+aLHudUrS/D51/UZp8ipSJ90Cy
         1Ry6ONpydRMwunb6DwgesJjANdsh8EHicb5hfQjRuN/cuwL0zivs678VDHbUHDTZj4AV
         KOm0idR7wIP6Z7Modmpeh5a5rY/YTeNzYuBtndu+UMl6c71jfL5AWy21Lr4lcoc7VrNv
         nrv68ga9prhSawRpAgO8GDO88qBWvZ44LtChQpT3NzFWkoWkGAVvuUd6Wd9pnMFBRAnt
         z56FxN3UvASKRb0P2DJIeYH6PK6wAfROgi8fFmiesGprzWVVquzMR99s4BJS1yaloVzq
         NUcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751011321; x=1751616121;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aYKyHT6aO5DOvkeXEodSr/zn4tG0sPpdUKZb0fO86vs=;
        b=knk/K3Xthtfm9JVQBJlMb6QZnlzC5OhfDgYb0wpZnjiRFbzf8Pvi0OPhM+v47TrrGD
         vIooTRVmnNmTJtLzl/+aCr1SdHSH9PjhXw/6P6UtsCr0efrzpAqMj8bV15DZqVpfD9k+
         1fwsD5wvm6QK/jt4w1dQVX0IuWosuaZNjQcuO1XYusEXCz0QeyOQDNSySOzfuJh53nrR
         3rNhk4w22EkH+sr8AADhJZUiesTWMCBULoLbqN7M4ZN61NYf/c1uDuASY/BVyQTYyoTh
         sNM9hqqaPrzxanXZQ4SPbuKKilqdqHzqRNVpTnDrjA5LuDzbFjkn9EEXqndfjbN6DJ8v
         3WVw==
X-Forwarded-Encrypted: i=1; AJvYcCXyFlZN7iCNEWn0/DUSSvhqtcsToCi9cJizWuLuvn0bKaJP/QGyORtGNCp/PueRk0k7k6B9PIGdbBY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx5dE5fJETbifb9AeVVRTi5TvdQmYFvhLn3fjAHFF/m9q5fJeCR
	7Ape3IcrqDCyXx5KeCob1+HKq5IJcZBVsDspa5hfpzI7d0Cs90FfCkY66JCgOtLJ2uw=
X-Gm-Gg: ASbGncvyPk5F9+91c9XDXKa+K3ArPxheF98pv8SgLWT/TM4vusEqyhe0ePo3LQBj0Om
	YilUG5VwEOlIMinm4VXnlfJzp/UkyvFOxrFMHZ9t2/7mvtBHLvr4qsoA7QFnd343ui/2q3gNTyR
	auDzEo+zE0mA6pdhwFzmlxSe1x0xlHbdLKl0hLtkUBe9ZUP8oiExLANv1aVOmh88iHBYln6R2PP
	0IKHKpnKurKG7txxjF8UK9g+tNeM3xn5Pd5EbpwQbcuor8WNh/1SYd11BLSINxHJZI00JN4qqYx
	lhNfuquVunAPif0Na9QvyCfmySQh4w27Uho+90IOEOQjnYIKMEo091TYz9moVj01rouNefSkc38
	E
X-Google-Smtp-Source: AGHT+IGbEV2sUnNrxRFYjuNrRGMB7WXW//KusOejXZ3SR2Oskrso+cf6bF7nRXl/S837W13BPpM60A==
X-Received: by 2002:a05:600c:358d:b0:453:8c5:95d3 with SMTP id 5b1f17b1804b1-4538ee5d303mr8805925e9.7.1751011320856;
        Fri, 27 Jun 2025 01:02:00 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.89])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4538a423abbsm43490295e9.39.2025.06.27.01.01.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jun 2025 01:02:00 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 27 Jun 2025 10:01:51 +0200
Subject: [PATCH 1/2] dt-bindings: leds: issi,is31fl319x: Drop 'db' suffix
 duplicating dtschema
MIME-Version: 1.0
Message-Id: <20250627-dt-bindings-db-v1-1-d5c7072acbee@linaro.org>
References: <20250627-dt-bindings-db-v1-0-d5c7072acbee@linaro.org>
In-Reply-To: <20250627-dt-bindings-db-v1-0-d5c7072acbee@linaro.org>
To: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Vincent Knecht <vincent.knecht@mailoo.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Li Jun <jun.li@nxp.com>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1148;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=PwmTdHsj4/TIhdqdhH2xWAIrULM+XVHbnLKlVFqmrQc=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoXk/zDffaVv55xO33AhhgMDKyChlptnb0LKWur
 /dA0UkREASJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaF5P8wAKCRDBN2bmhouD
 1yO3D/wMQLq1PsZux5RgQ00wXyiyyHfReZ+crthyF6UOADtqrkzEfMMHGxklbh8VFbm4OwQmyVd
 gQCQmXR3RSty42vCDsZK235jY80s6ogQudAcA7sudV9l03aos+6xp7c/FASx8Ziko10NlvSgyIE
 pfX4xD7FqMA//3i5ze18WV1q69K3iCcXy25FYV7bWbJJl1eHBBikOphoDL4HAeSMjG3U0GJ/MCh
 eyqUfl6OuiP2DJId69jXKDhc7OHJt8BGTBlh3KIoGc/3MF1ufLTnUc0cISc9cX7jk6aBSKBXZEl
 +U5JHKpIhuSPNZ4utuTREOV3BUO37GgGhdUnS6jOeLgePHd++txihWJ6zePHEzwGqkC7A7s2BeU
 +y7SXiwWPY45eVNiF5m4FlVdiA7GKi3KnaSu4BGwAg3vqaxS1ykJmQzjCHMmbwQK52sSFzlbnSW
 WPW9Qas3JC74gC623P192CvfOVPvyYv46Ul6REyHemhEo5eg7AduALAPCadm5Bk32gzTgGeOnKG
 uzNXOGn/N+8WVXWWKPBaxl1YaQeOAjaAWdAJ5M6f2iftZWDwXqbRpFmQx+EZXkzUEKWNSR9CVX9
 9P+fR7ARSG9kkSXJPCBWQec9OM4CShzGn9tpkRr7dESn6Gtteg9gCombIJ0NNhiw0s7muTsiNMC
 /rzMX3sNs4DelnA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_010202_590642_365E4B65 
X-CRM114-Status: UNSURE (   8.59  )
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

A common property unit suffix '-db' was added to dtschema, thus
in-kernel bindings should not reference the type.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

RFC because this depends on dtschema changes and should be accepted
after new dtschema is released with this merged:
https://github.com/devicetree-org/dt-schema/pull/166
---
 Documentation/devicetree/bindings/leds/issi,is31fl319x.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/leds/issi,is31fl319x.yaml b/Documentation/devicetree/bindings/leds/issi,is31fl319x.yaml
index 3c0431c51159e549920b17cf2ddfd1b85ecde810..906735acfbaf94fa08244f771139df207dd6e4da 100644
--- a/Documentation/devicetree/bindings/leds/issi,is31fl319x.yaml
+++ b/Documentation/devicetree/bindings/leds/issi,is31fl319x.yaml
@@ -42,7 +42,6 @@ properties:
     description: GPIO attached to the SDB pin.
 
   audio-gain-db:
-    $ref: /schemas/types.yaml#/definitions/uint32
     default: 0
     description: Audio gain selection for external analog modulation input.
     enum: [0, 3, 6, 9, 12, 15, 18, 21]

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
