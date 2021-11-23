Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16CF5C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 23 Nov 2021 22:15:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EbcOGqYew/WcyMJxNBI2OAHZ8ou85Rn7l0A+qxnVDyc=; b=UkhEzLpjzwiSUh
	vN8/VxoTxA+bFvrE1ER4rhCZ3nt6oV03J/6KgB9nCi793YNTVCLUhTQFTbiW6hM7D0TUebvRn8Vss
	sBXwQflNhGD3YxXVPY5fyZe/wTghq7TIAzhvwruC/vPFMibYFfnfr7EXX3APdPN4nDjTbG94J4eQW
	coQcGbCjq6Yz8q5ybchX2LmzsE+bp4JLP1x6Zg9wD8imwrSrqJ8dy44mUDU5ooHalTBDGKW/aPAHh
	4oDKuf4QrtiZiIQ8vkmgw+boST8ySvbKhGejZoawGoHT90igzlTdxzLvL48wXEFw2fm+bqsInHsRi
	bsYjh+22s7q/7kLubTUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpe4e-003Zcv-HE; Tue, 23 Nov 2021 22:15:36 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpe4b-003ZcD-RW
 for linux-phy@lists.infradead.org; Tue, 23 Nov 2021 22:15:35 +0000
Received: by mail-lf1-x135.google.com with SMTP id f18so1715072lfv.6
 for <linux-phy@lists.infradead.org>; Tue, 23 Nov 2021 14:15:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XnFeyOspOfypCmjDCbPa6IXCzWR48zuEvKJqOdJGMt8=;
 b=P2ZUekwxfmmvjA+uPqcmaCQHbFCaJ3cMTYnTk8S1YJ2pUThZNQfIwN2jmi0lyuST9K
 Zi7u7dVSWx+GOcfUUZ3sGmVavweugsxbZG+gvKBal3ncvXZZuU7U8lE5uSVY2ZO6BwQA
 r63vMutEU07HfRyKaj5o6dyF1g1yKLMsGizhRbfib6KSrts1FM4JHlKpITeQVl7kDaP7
 LDNiPZT/8txqX3JJmE+bhQOUMkgkRfBxKmloBP3OUHxN1i+e5c4GBFc2xLUsKICD3ITc
 7ktc8dobHL9HWISPsOSQAWC7HPl1X+lzNT9MCrUhhh5nfG1d04DMI8qqOgMqIr33hHop
 QS4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XnFeyOspOfypCmjDCbPa6IXCzWR48zuEvKJqOdJGMt8=;
 b=yT0LwMjakg9VnPa6zr877wOUsWgx/h+OKfv0CeI9KFBXN5xDgVh90ImrvgkoRU11U7
 1wXKBs3C8NRu+8yjfgn2iaYSaqxKU1UkQj62zu4rxKlnE58OofHZjZ8jnaFpCZaTLutY
 suorfxM7Vd/T1gdy2ob0YugredTT3yi0pYVVl2LPsdTrWUpLduvJuFDBL5UnwdO4wcAX
 iy8AA2CCY+/y9EU0YQtoXSPU9ElK1mSJPs4pLs8r6tlQbZdpF7q0YJIOscmSJNUgJgtO
 Ba81YIPacqQWN5DWnTo1pVU+uAByLQlce2Y3P9DJKrLS9ALCb+WChO46lQYw0GDxHosQ
 CLPw==
X-Gm-Message-State: AOAM533/ns8WRBcRdJuxK4T4NMQfLrIsw2NeY0Nh39fhwWVhmRPHGt/h
 h24ZO3bLJ98etT/RnYbFvAQ=
X-Google-Smtp-Source: ABdhPJxZNgbdfOlC3TnQxw4gx7zD6fz6gLmohKDdlulSnKPNzffk73rNhzhk4epPRg231jCMLjvV9Q==
X-Received: by 2002:a05:6512:2292:: with SMTP id
 f18mr8529364lfu.18.1637705730423; 
 Tue, 23 Nov 2021 14:15:30 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id p13sm1188467lfu.130.2021.11.23.14.15.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Nov 2021 14:15:30 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org, Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH V2] phy: bcm-ns-usb2: improve printing ref clk errors
Date: Tue, 23 Nov 2021 23:15:21 +0100
Message-Id: <20211123221521.25323-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211123094823.25445-1-zajec5@gmail.com>
References: <20211123094823.25445-1-zajec5@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211123_141533_919967_6551F13F 
X-CRM114-Status: GOOD (  12.12  )
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKSW1wcm92ZSBtZXNzYWdl
ICYgdXNlIGRldl9lcnJfcHJvYmUoKSBoZWxwZXIgd2hpY2ggcHJpbnRzIGFjdHVhbCBlcnJvcgoo
aGVscGZ1bCBmb3IgZGVidWdnaW5nKSBhbmQgZGVhbHMgd2l0aCAtRVBST0JFX0RFRkVSLgoKU2ln
bmVkLW9mZi1ieTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgotLS0KVjI6IFVz
ZSBkZXZfZXJyX3Byb2JlKCkgLSB0aGFuayB5b3UgRmxvcmlhbiEKLS0tCiBkcml2ZXJzL3BoeS9i
cm9hZGNvbS9waHktYmNtLW5zLXVzYjIuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2Jyb2FkY29t
L3BoeS1iY20tbnMtdXNiMi5jIGIvZHJpdmVycy9waHkvYnJvYWRjb20vcGh5LWJjbS1ucy11c2Iy
LmMKaW5kZXggOThkMzI3MjlhNDVkLi42YTM2ZTE4N2QxMDAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
cGh5L2Jyb2FkY29tL3BoeS1iY20tbnMtdXNiMi5jCisrKyBiL2RyaXZlcnMvcGh5L2Jyb2FkY29t
L3BoeS1iY20tbnMtdXNiMi5jCkBAIC0xMzIsNyArMTMyLDcgQEAgc3RhdGljIGludCBiY21fbnNf
dXNiMl9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCiAJdXNiMi0+cmVmX2Ns
ayA9IGRldm1fY2xrX2dldChkZXYsICJwaHktcmVmLWNsayIpOwogCWlmIChJU19FUlIodXNiMi0+
cmVmX2NsaykpIHsKLQkJZGV2X2VycihkZXYsICJDbG9jayBub3QgZGVmaW5lZFxuIik7CisJCWRl
dl9lcnJfcHJvYmUoZGV2LCBQVFJfRVJSKHVzYjItPnJlZl9jbGspLCAiZmFpbGVkIHRvIGdldCBy
ZWYgY2xrXG4iKTsKIAkJcmV0dXJuIFBUUl9FUlIodXNiMi0+cmVmX2Nsayk7CiAJfQogCi0tIAoy
LjMxLjEKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
