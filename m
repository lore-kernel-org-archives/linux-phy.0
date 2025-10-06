Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59E53CAC5B8
	for <linux-phy@archiver.kernel.org>; Mon,  6 Oct 2025 08:07:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=igjt/JAp+LB2TQuYVP94zdijh2oiIRYWkvl8oZdDFrM=; b=unhZKJH18v9NDw
	EQ9ISeL6zSol7xYHmLdbz8pfzo1o+DIwbQVMs9usaoBf58dEJ9opigxZiZxo2s5C+Z1hR5wyuCcyZ
	mBsNSSD34j1x2MNVIAeVhx/cs+v3VhYmrSyEKLS3/v/93K3hBzgsxdy5R9Ej5Y25aO4WrCSnbgvb3
	2z2+rUuOV9MIzmequmSDqUkLwlhbxg+EY4USk9Q2KilGsyJMsr/HenbTOUMZvVceHwifX34Qds+pr
	lq0vPRA19deEOvow2sjiDH4O2+k69DKHlA611iJ+RFptV81k1IefMuSbZlrjI3Z+2g4xj9h9kxwk8
	23SItnfN70HLUJWbtMWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5gFZ-0000000HA1M-49X0;
	Mon, 06 Oct 2025 08:07:17 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5gFX-0000000HA0R-0Stp
	for linux-phy@lists.infradead.org;
	Mon, 06 Oct 2025 08:07:16 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-b3e44f22f15so679538466b.2
        for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 01:07:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759738033; x=1760342833; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4qerrj6UX/Z0xW9m5oFGqvhu+d9Lea7yfQjzYQpDbWQ=;
        b=yXvTccWu2r1CfmVF1UT/REPTuhRlBv9TIwTvm/dGFSmXmbvPy8N9Li7xthyD3241bB
         XdIe/gRrfL9qXe9PIn/qhMYCpkFdMsT1CVcfmjYAmr+CQMUQfG0wG0IyDfctIN/TZmu4
         j/Vu/bRZvK1LesJtPDWUwfk9526dIXM2GfbPmZS6FDoYDr4VmcpxnVMLgk1btWDrHCHf
         TMKTAo0/Wt6meXG3y1rOcTXaHmjg3Eqt+5jmf2BlZqvWj5VYbolYhBS10F8KQxln4bd/
         9wMSrdFivAgekU5VNXtEf6WJf0t2orOu+KXiVuDUa2aaSCVLQKgnf6Lvgdsw1vCBbUTX
         e6+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759738033; x=1760342833;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4qerrj6UX/Z0xW9m5oFGqvhu+d9Lea7yfQjzYQpDbWQ=;
        b=mO8DxjL2ZGGLCU3BKnELzREm8me9SooSvsJx2bN4/IiwB8xY40aA7iqw18ORIjrRZg
         qoW8H+Pe2+8JgxV+RyIiIW00Wmn3IZBIsucROtr/Z/lidifJBHpCha4yjerfYPdBX/57
         gW/N8EYAAFTGRvFK36fFda798RBEdp7dUyNWMsEPyRfSmFqHp/7SImowMN40FVCOMCuq
         nZcwIj+DEu8Mi6DbMVZ2L21SJaYeTbBKHlS5s/3mQHUVC4d2M6h2aZilLb+X4t85RIYb
         UUlkqm1q5DWZpQjYIKOWbFeyTBYD0hYET+WCgH4Puc9DHrnpj9NRXecxf8eS/dEPVUpc
         IiyQ==
X-Forwarded-Encrypted: i=1; AJvYcCWaJvR7VvvVv9efzVdN5KCSEhAsPldXuTpHFKhKHw6prmMu0iM9334HiYxtqN2xgisyhUkg6pBbkpg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw4WJSh328MEcZBSE9IP1Bp7kVfwHpVcgx/Ecpwu3ED+L1bYK7U
	aoMtcFk2swFsWb+szfjRw252DOhnRE+ZsieDy0sDnikzZXm9w9Uk2pLuPYb9stDfEbE=
X-Gm-Gg: ASbGnctT/kH/C/9Z54v2hTdrmV7mMxKYqehmG6j/ouwkRH3NmzypR6PKKqrpb8ddmyB
	bikj4R0QBahEkbQz1OqXdfcbnoonLVmDTQELVu8L7rv2yMvQ1inXbTlxgQeqbyvaIhLv5kFdIby
	lhLTZOgF46ovym/GuBR00VjwRkHPZagOTiv6C9HFb9wMHR+/tegcMwayT+JuhF553wTUwg24zUj
	4xko7vIMTRog/43syeWP7FAwjUYiR6oMAGtuGXNnHBxkdYPmZUBkgqATYzI0B78tI63deyPp8G9
	bd3l1I8EPEBgNj+fnKKACy54ywNBL2gXohSkuRN8H2t0TRGvgRa9Boea5ShrVtlb1cGWGkStOAT
	DY0uVILf9Ijozd6wH655Ux7o8UMrwGM0Y65qkQnqZ0w+JkCAfgKgAa5MQ4mC3RxLnGaRNoSK4oZ
	KzY15G+kI+LYXVkJA5wGZ9AzucHtEz0/JCDT7Mn+Lv
X-Google-Smtp-Source: AGHT+IHPnvEx2+1A8spGyxDZCYqGJPXGgpZv7W3X/UPXBelvQzXyrYlDdDiI9fhuch4s1Ysd9y+b0A==
X-Received: by 2002:a17:907:86ab:b0:b47:c1d9:51c9 with SMTP id a640c23a62f3a-b49c3f7d31emr1499754266b.62.1759738033192;
        Mon, 06 Oct 2025 01:07:13 -0700 (PDT)
Received: from puffmais2.c.googlers.com (224.138.204.35.bc.googleusercontent.com. [35.204.138.224])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4869b4f1d1sm1073772766b.71.2025.10.06.01.07.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 01:07:12 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 06 Oct 2025 09:07:12 +0100
Subject: [PATCH] phy: exynos5-usbdrd: fix clock prepare imbalance
MIME-Version: 1.0
Message-Id: <20251006-gs101-usb-phy-clk-imbalance-v1-1-205b206126cf@linaro.org>
X-B4-Tracking: v=1; b=H4sIAK9442gC/x3MwQqDMAwA0F+RnA00Za2wXxEPbc006Ko0bCjiv
 6/s+C7vAuUirPBsLij8FZUtV1DbQJpDnhhlrAZrrCNjPE5KhvCjEff5xLQuKO8Y1pATo7ccH9x
 5Gp2DOuyFX3L893647x9CN6EgbQAAAA==
X-Change-ID: 20251006-gs101-usb-phy-clk-imbalance-62eb4e761d55
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 stable@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_010715_404689_6A153F1F 
X-CRM114-Status: GOOD (  10.03  )
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

Q29tbWl0IGY0ZmI5YzRkN2Y5NCAoInBoeTogZXh5bm9zNS11c2JkcmQ6IGFsbG93IERXQzMgcnVu
dGltZSBzdXNwZW5kCndpdGggVURDIGJvdW5kIChFODUwKykiKSBpbmNvcnJlY3RseSBhZGRlZCBj
bGtfYnVsa19kaXNhYmxlKCkgYXMgdGhlCmludmVyc2Ugb2YgY2xrX2J1bGtfcHJlcGFyZV9lbmFi
bGUoKSB3aGlsZSBpdCBzaG91bGQgaGF2ZSBvZiBjb3Vyc2UKdXNlZCBjbGtfYnVsa19kaXNhYmxl
X3VucHJlcGFyZSgpLiBUaGlzIG1lYW5zIGluY29ycmVjdCByZWZlcmVuY2UKY291bnRzIHRvIHRo
ZSBDTVUgZHJpdmVyIHJlbWFpbi4KClVwZGF0ZSB0aGUgY29kZSBhY2NvcmRpbmdseS4KCkZpeGVz
OiBmNGZiOWM0ZDdmOTQgKCJwaHk6IGV4eW5vczUtdXNiZHJkOiBhbGxvdyBEV0MzIHJ1bnRpbWUg
c3VzcGVuZCB3aXRoIFVEQyBib3VuZCAoRTg1MCspIikKQ0M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5v
cmcKU2lnbmVkLW9mZi1ieTogQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9y
Zz4KLS0tCiBkcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jIHwgMiArLQog
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYyBiL2RyaXZlcnMvcGh5
L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMKaW5kZXggYTg4YmE5NWJkYzhmNTM5ZGQ4ZDkw
ODk2MGVlMjA3OTkwNTY4ODYyMi4uMWM4YmY4MDExOWYxMWUyY2QyZjA3YzgyOTk4NjkwOGMxNTA2
ODhhYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQu
YworKysgYi9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jCkBAIC0xODIz
LDcgKzE4MjMsNyBAQCBzdGF0aWMgaW50IGV4eW5vczVfdXNiZHJkX29yaWVuX3N3X3NldChzdHJ1
Y3QgdHlwZWNfc3dpdGNoX2RldiAqc3csCiAJCXBoeV9kcmQtPm9yaWVudGF0aW9uID0gb3JpZW50
YXRpb247CiAJfQogCi0JY2xrX2J1bGtfZGlzYWJsZShwaHlfZHJkLT5kcnZfZGF0YS0+bl9jbGtz
LCBwaHlfZHJkLT5jbGtzKTsKKwljbGtfYnVsa19kaXNhYmxlX3VucHJlcGFyZShwaHlfZHJkLT5k
cnZfZGF0YS0+bl9jbGtzLCBwaHlfZHJkLT5jbGtzKTsKIAogCXJldHVybiAwOwogfQoKLS0tCmJh
c2UtY29tbWl0OiAzYjliMWY4ZGY0NTRjYWE0NTNjN2ZiMDc2ODkwNjRlZGIyZWRhOTBhCmNoYW5n
ZS1pZDogMjAyNTEwMDYtZ3MxMDEtdXNiLXBoeS1jbGstaW1iYWxhbmNlLTYyZWI0ZTc2MWQ1NQoK
QmVzdCByZWdhcmRzLAotLSAKQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9y
Zz4KCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
