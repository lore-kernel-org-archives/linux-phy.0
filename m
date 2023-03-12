Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89875C6FD1F
	for <linux-phy@archiver.kernel.org>; Sun, 12 Mar 2023 13:33:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=agdwAyyP9jKqGYh/5LfQJ7fKLUto7VWuXYXS9mZ/Bq4=; b=MfS74D7mPnb7Gb
	ZAjVfYfZzKYfyHShvaPBrhT8f9OQOdT8sttS8KclbLdpLAka5vizaT54dipErEPh9q9i8Ks+3hDiS
	d1x02km517zDO7vyx3ASDhgvis9jBNteWWcJYhsS1w9Fy86+e0FYpwXmIgf6LrmS1cmGhi3RGj6yh
	auq22+OFXwvKYVnHOEqHdxDxMuewgzrZq+1OBG0CwNgyf8dgr0EKKX4Lnd+OkLV/ZrzziDBuCUAh4
	UPDDtdhvSuIn1JWJYly6nB4y+HLZkMwKpwjQ9hYyuXns33E8Bm29bPMmhvDmsn0T8FmqbTrmw3OPm
	jIOFF4qMtopfSX+af+1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbLpP-002RV2-NY
	for linux-phy@archiver.kernel.org; Sun, 12 Mar 2023 13:33:35 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbLiL-002OOl-Pa
	for linux-phy@lists.infradead.org; Sun, 12 Mar 2023 13:26:19 +0000
Received: by mail-ed1-x530.google.com with SMTP id ek18so7450059edb.6
        for <linux-phy@lists.infradead.org>; Sun, 12 Mar 2023 06:26:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678627577;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XAl0hh7MzBDS1djmzZy8N/npw+zryqsJ+XNFJQjmF0w=;
        b=NbNR5LANsOffWh56sNJG+hwiy7VGzuNCABzva167Q0RbCyOOlSRkTigycaEPPMZQ+j
         yKxAEuMyavYA/FTZgJLusXKwTy8Q+1qEZGlPV1F/kfqymhHI0c4x2ha+ZVLVqGHuljmy
         k8Dw4RrYsz3kyUgEONOWMEsfUBGASlwhk9cm9/oa2lybveRyTZU+abzLQ/YcRplr8xKT
         ShIsHFoiK2KXYbi+XG9qtHZwhlZU+JaEvdGsp5i5cKF+ikwG8NFN1DbWfxRJQqc0BZUS
         i3UhWbreWeFsGJ15s9/TtrK7bn0gBCDnDZVMRO2oJ4gZo/TyAXshW7xX6YmT7CNjvZuh
         DNvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678627577;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XAl0hh7MzBDS1djmzZy8N/npw+zryqsJ+XNFJQjmF0w=;
        b=rvfy5jM19L6amxawHGdAGnu1Dd4DcuPOGtiqG4Sj/NQkfwbS7RqEHdgYKAzoV6BHor
         pwOS4ObwgXvcj/jDjoD08PRorGM7l9CgLVPryExMcwrfCbT5iF3MB2qpNZtHnwSuG/mo
         tzG0jFaDOC8BV/kEcmTvScAUfvaYHxkXb83h5lHMVtXfH0UkSW52dVjrC5rdJEkQpRgE
         34xmh9hF1nXIzV5icf7YbQtIXwclU1EtbmzWn1N9dn9kpqF/lH5H4gOQEo8QDTEiAn8t
         5Fc6r9WsoKZcQOr0BvGPE3VcGA+IgO53iGqGrTEh28bfoBRwgdTEYmfpree/NG8pfxLo
         OQBQ==
X-Gm-Message-State: AO0yUKV0Fzs8cXqi5581ZKNOUN/oa+Y3WXRrSMTWZ914TBQdDCX9JzFr
	8ir0JN1xPnnvowiCgZQ8HrVldA==
X-Google-Smtp-Source: AK7set9b6H6pNkwZXz/fNyF5cFK7Sqnt4oNSojngkffOCxfXtJlfhWq5XovH4sELe1y6ak+kksGPhw==
X-Received: by 2002:aa7:dad1:0:b0:4fa:d2b1:9176 with SMTP id x17-20020aa7dad1000000b004fad2b19176mr3497860eds.22.1678627577275;
        Sun, 12 Mar 2023 06:26:17 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d9f6:3e61:beeb:295a])
        by smtp.gmail.com with ESMTPSA id bx18-20020a0564020b5200b004fb542dd8cdsm914001edb.29.2023.03.12.06.26.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 06:26:17 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] phy: st: spear: drop of_match_ptr for ID table
Date: Sun, 12 Mar 2023 14:26:11 +0100
Message-Id: <20230312132611.352654-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230312132611.352654-1-krzysztof.kozlowski@linaro.org>
References: <20230312132611.352654-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230312_062618_379323_92154438 
X-CRM114-Status: GOOD (  14.39  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhlIGRyaXZlciBjYW4gbWF0Y2ggb25seSB2aWEgdGhlIERUIHRhYmxlIHNvIHRoZSB0YWJsZSBz
aG91bGQgYmUgYWx3YXlzCnVzZWQgYW5kIHRoZSBvZl9tYXRjaF9wdHIgZG9lcyBub3QgaGF2ZSBh
bnkgc2Vuc2UgKHRoaXMgYWxzbyBhbGxvd3MgQUNQSQptYXRjaGluZyB2aWEgUFJQMDAwMSwgZXZl
biB0aG91Z2ggaXQgbWlnaHQgbm90IGJlIHJlbGV2YW50IGhlcmUpLiAgVGhpcwphbHNvIGZpeGVz
ICFDT05GSUdfT0YgZXJyb3I6CgogIGRyaXZlcnMvcGh5L3N0L3BoeS1zcGVhcjEzMTAtbWlwaHku
YzoxNzI6MzQ6IGVycm9yOiDigJhzcGVhcjEzMTBfbWlwaHlfb2ZfbWF0Y2jigJkgZGVmaW5lZCBi
dXQgbm90IHVzZWQgWy1XZXJyb3I9dW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KICBkcml2ZXJzL3Bo
eS9zdC9waHktc3BlYXIxMzQwLW1pcGh5LmM6MTgyOjM0OiBlcnJvcjog4oCYc3BlYXIxMzQwX21p
cGh5X29mX21hdGNo4oCZIGRlZmluZWQgYnV0IG5vdCB1c2VkIFstV2Vycm9yPXVudXNlZC1jb25z
dC12YXJpYWJsZT1dCgpTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0
b2Yua296bG93c2tpQGxpbmFyby5vcmc+Ci0tLQogZHJpdmVycy9waHkvc3QvcGh5LXNwZWFyMTMx
MC1taXBoeS5jIHwgMiArLQogZHJpdmVycy9waHkvc3QvcGh5LXNwZWFyMTM0MC1taXBoeS5jIHwg
MiArLQogMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvc3QvcGh5LXNwZWFyMTMxMC1taXBoeS5jIGIvZHJpdmVy
cy9waHkvc3QvcGh5LXNwZWFyMTMxMC1taXBoeS5jCmluZGV4IDg4NzFjZDE4NjMwNC4uMjkyNDEz
ZGI3ZGE0IDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9zdC9waHktc3BlYXIxMzEwLW1pcGh5LmMK
KysrIGIvZHJpdmVycy9waHkvc3QvcGh5LXNwZWFyMTMxMC1taXBoeS5jCkBAIC0yNDYsNyArMjQ2
LDcgQEAgc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgc3BlYXIxMzEwX21pcGh5X2RyaXZl
ciA9IHsKIAkucHJvYmUJCT0gc3BlYXIxMzEwX21pcGh5X3Byb2JlLAogCS5kcml2ZXIgPSB7CiAJ
CS5uYW1lID0gInNwZWFyMTMxMC1taXBoeSIsCi0JCS5vZl9tYXRjaF90YWJsZSA9IG9mX21hdGNo
X3B0cihzcGVhcjEzMTBfbWlwaHlfb2ZfbWF0Y2gpLAorCQkub2ZfbWF0Y2hfdGFibGUgPSBzcGVh
cjEzMTBfbWlwaHlfb2ZfbWF0Y2gsCiAJfSwKIH07CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5
L3N0L3BoeS1zcGVhcjEzNDAtbWlwaHkuYyBiL2RyaXZlcnMvcGh5L3N0L3BoeS1zcGVhcjEzNDAt
bWlwaHkuYwppbmRleCBlZDRkMGUyZGYwNTMuLmMxZDlmZmE1YTMxMSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9waHkvc3QvcGh5LXNwZWFyMTM0MC1taXBoeS5jCisrKyBiL2RyaXZlcnMvcGh5L3N0L3Bo
eS1zcGVhcjEzNDAtbWlwaHkuYwpAQCAtMjc5LDcgKzI3OSw3IEBAIHN0YXRpYyBzdHJ1Y3QgcGxh
dGZvcm1fZHJpdmVyIHNwZWFyMTM0MF9taXBoeV9kcml2ZXIgPSB7CiAJLmRyaXZlciA9IHsKIAkJ
Lm5hbWUgPSAic3BlYXIxMzQwLW1pcGh5IiwKIAkJLnBtID0gJnNwZWFyMTM0MF9taXBoeV9wbV9v
cHMsCi0JCS5vZl9tYXRjaF90YWJsZSA9IG9mX21hdGNoX3B0cihzcGVhcjEzNDBfbWlwaHlfb2Zf
bWF0Y2gpLAorCQkub2ZfbWF0Y2hfdGFibGUgPSBzcGVhcjEzNDBfbWlwaHlfb2ZfbWF0Y2gsCiAJ
fSwKIH07CiAKLS0gCjIuMzQuMQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
