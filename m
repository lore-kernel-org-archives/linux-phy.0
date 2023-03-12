Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A74FC6FA99
	for <linux-phy@archiver.kernel.org>; Sun, 12 Mar 2023 13:33:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Rb0USHPTbYQPze5b8aXP+mhVvoI1x7zGphAvIgyBF1k=; b=ZevSnGS/MN51gg
	6EPPQSey+WraYWDuiKvBgU2Ymj6DxIoJCWy8cFqcuPmtoYWvfCh353xYBnyzCx4Y7qV8mqCQWyafr
	3soCAGKYJT4MashxlMi/W263bEGlG7nH+0224C8ISmWi6yiUSzuAKSawCZkOWCFZ0KtpZjuPy0yBR
	IedsLCzmm4epjxqKl2umCRlzqA/bpL7FxL1u3jL+TJc3DMxL7bRC+dSCUwl0BKrvWRgUml78QBMtJ
	z10W3CF3RLJd4fjhLmXTBL3hSrmaF/TFzOUMLMYtzr5HBycpSkwJ4c0KK4g38VKJXDI6DIKMiBPqj
	fzb3PFnNQMf1uFpH+raQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbLpP-002RUZ-1v
	for linux-phy@archiver.kernel.org; Sun, 12 Mar 2023 13:33:35 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbLiI-002OOl-CL
	for linux-phy@lists.infradead.org; Sun, 12 Mar 2023 13:26:16 +0000
Received: by mail-ed1-x530.google.com with SMTP id ek18so7449586edb.6
        for <linux-phy@lists.infradead.org>; Sun, 12 Mar 2023 06:26:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678627574;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ITdNXxUWkF6uRaUdJ5IgYqC8UK9xSTmThRmPvwuIK4w=;
        b=VCrJ+qsSPBH5uKmgym7NlQb7cxZcgibysEmTXreMFCVhGpU1BW661nlYfvcE1QKoPe
         PTAbvMfrdsBBSoOmNA5IVOVYh3JqniNbmkVLZEq28AsSXeILemDcaIxgKnsazuwNb1HW
         k10IuwSnJ7MF+EM2wm6ArgyUTDITDabRjNvnd0M3aaZX3BM/zMUYA10GkdID+H3CkMba
         B4+pwXPddXRMUv6aJa/rQSTT+1odIcqR03u/6BRpqUG1aAhRWo7iMzIj/DuqPJylQ51G
         DcuaM3wp3a7yb8AugJnFUIWO3nrDq+W7gy80ZgO9Yh3qka8eraGzE89zdw8x7IvmAzOx
         lXOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678627574;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ITdNXxUWkF6uRaUdJ5IgYqC8UK9xSTmThRmPvwuIK4w=;
        b=3hSBcRthYPrGtMmpeaDKxlRnivh28LJj8SKloH/uKFpaqAwwLEn52QQkYAIGW+xfIg
         jZoWVeC1ZFfHmjDylSnK9L6wbnpjRvzL61uJlmgs6IC/WMFubnbLFwu/aGuY1Qa5/juI
         E05hCOcXHsFs3JZ6Bq6f6d3ErDffS2Ou5HE0DRjHKIIDrsEOkTAGZCqxeW+7sqhCKdqv
         85zW9w2a8BGIUuoaZMlJ0mWREcCl4fToMzOBDxfV1uqKaAqv6KdfjAl8P8mBnUe/Iw80
         l0eyWP3LAWokOMOuMq4o+Tusa2m2cqoPyhFdcgfe35aKT+Vq+pf7/Y0s4DFjAgXoiT++
         PW/w==
X-Gm-Message-State: AO0yUKVqW23xJG25ffkYbmu/7RgvYMdT8mF4hYQ8wu9ZwZ3tfppueAmD
	F4mS/RAYGDipSndndkCcMNrCUFCMubCGZFNC5hI=
X-Google-Smtp-Source: AK7set8bE2760pBILj5OUq4ILGA4e9br0TgbpRz+o+vtP+zh4KWxYSBNTi0m82wkO/0GbxdMjLQTOg==
X-Received: by 2002:aa7:ccd5:0:b0:4ac:b69a:2f06 with SMTP id y21-20020aa7ccd5000000b004acb69a2f06mr31618334edt.0.1678627573805;
        Sun, 12 Mar 2023 06:26:13 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d9f6:3e61:beeb:295a])
        by smtp.gmail.com with ESMTPSA id bx18-20020a0564020b5200b004fb542dd8cdsm914001edb.29.2023.03.12.06.26.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 06:26:13 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] phy: marvell: drop of_match_ptr for ID table
Date: Sun, 12 Mar 2023 14:26:10 +0100
Message-Id: <20230312132611.352654-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230312_062614_564798_B735A507 
X-CRM114-Status: GOOD (  13.72  )
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
ICFDT05GSUdfT0YgZXJyb3I6CgogIGRyaXZlcnMvcGh5L21hcnZlbGwvcGh5LXB4YS0yOG5tLWhz
aWMuYzoxOTI6MzQ6IGVycm9yOiDigJhtdl9oc2ljX3BoeV9kdF9tYXRjaOKAmSBkZWZpbmVkIGJ1
dCBub3QgdXNlZCBbLVdlcnJvcj11bnVzZWQtY29uc3QtdmFyaWFibGU9XQogIGRyaXZlcnMvcGh5
L21hcnZlbGwvcGh5LXB4YS0yOG5tLXVzYjIuYzozMjQ6MzQ6IGVycm9yOiDigJhtdl91c2JwaHlf
ZHRfbWF0Y2jigJkgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XZXJyb3I9dW51c2VkLWNvbnN0LXZh
cmlhYmxlPV0KClNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5r
b3psb3dza2lAbGluYXJvLm9yZz4KLS0tCiBkcml2ZXJzL3BoeS9tYXJ2ZWxsL3BoeS1weGEtMjhu
bS1oc2ljLmMgfCAyICstCiBkcml2ZXJzL3BoeS9tYXJ2ZWxsL3BoeS1weGEtMjhubS11c2IyLmMg
fCAyICstCiAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9tYXJ2ZWxsL3BoeS1weGEtMjhubS1oc2ljLmMgYi9k
cml2ZXJzL3BoeS9tYXJ2ZWxsL3BoeS1weGEtMjhubS1oc2ljLmMKaW5kZXggYzVjMTAwNTYzZjU1
Li5lZmY2ZGQ2YjJkZDAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGh5L21hcnZlbGwvcGh5LXB4YS0y
OG5tLWhzaWMuYworKysgYi9kcml2ZXJzL3BoeS9tYXJ2ZWxsL3BoeS1weGEtMjhubS1oc2ljLmMK
QEAgLTE5OSw3ICsxOTksNyBAQCBzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciBtdl9oc2lj
X3BoeV9kcml2ZXIgPSB7CiAJLnByb2JlCT0gbXZfaHNpY19waHlfcHJvYmUsCiAJLmRyaXZlciA9
IHsKIAkJLm5hbWUgICA9ICJtdi1oc2ljLXBoeSIsCi0JCS5vZl9tYXRjaF90YWJsZSA9IG9mX21h
dGNoX3B0cihtdl9oc2ljX3BoeV9kdF9tYXRjaCksCisJCS5vZl9tYXRjaF90YWJsZSA9IG12X2hz
aWNfcGh5X2R0X21hdGNoLAogCX0sCiB9OwogbW9kdWxlX3BsYXRmb3JtX2RyaXZlcihtdl9oc2lj
X3BoeV9kcml2ZXIpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvbWFydmVsbC9waHktcHhhLTI4
bm0tdXNiMi5jIGIvZHJpdmVycy9waHkvbWFydmVsbC9waHktcHhhLTI4bm0tdXNiMi5jCmluZGV4
IDBiMzkwYjlkMmFlMS4uMWIyMTA3ZjgwZjNhIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9tYXJ2
ZWxsL3BoeS1weGEtMjhubS11c2IyLmMKKysrIGIvZHJpdmVycy9waHkvbWFydmVsbC9waHktcHhh
LTI4bm0tdXNiMi5jCkBAIC0zMzEsNyArMzMxLDcgQEAgc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9k
cml2ZXIgbXZfdXNiMl9waHlfZHJpdmVyID0gewogCS5wcm9iZQk9IG12X3VzYjJfcGh5X3Byb2Jl
LAogCS5kcml2ZXIgPSB7CiAJCS5uYW1lICAgPSAibXYtdXNiMi1waHkiLAotCQkub2ZfbWF0Y2hf
dGFibGUgPSBvZl9tYXRjaF9wdHIobXZfdXNicGh5X2R0X21hdGNoKSwKKwkJLm9mX21hdGNoX3Rh
YmxlID0gbXZfdXNicGh5X2R0X21hdGNoLAogCX0sCiB9OwogbW9kdWxlX3BsYXRmb3JtX2RyaXZl
cihtdl91c2IyX3BoeV9kcml2ZXIpOwotLSAKMi4zNC4xCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
