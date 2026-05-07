Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A7EACD343F
	for <linux-phy@archiver.kernel.org>; Thu,  7 May 2026 13:14:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZQF3JGNo3f4gGAXx9Mz+GPODbhXuN3T63qqiffq16Bc=; b=Uu229dGQwT4C36
	sMeHzoH0R9ORHoYdVIgFCtbFeCiB4+gsgMNAtXfLykD+w0dhpGwq4VLSgClP0Ppy0n7QL9d+zUK5u
	0y62M0lP2L5wiqASLrz5zv5Z8Eh8PB+G4KcGTOzaps7zd73Ot0vjekwpA5/Xb73i6xuCh7kgWxzgE
	n/nmcDF/Vuv3aFEO92ogr83zcpF1z+BGxjdxJJ87wP3b4e6Vmo8gLfxChO403nItKfzRLhQftqxBf
	x4rHcILtviFt3ngIic/RvNk9n/k3YOLNz53RLfv/j7qnVGA6YCWBSSuWZK/7BRZe6mC96xWiyjXUn
	iiXon4Fg+CX1mxrgWVPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKyZ2-00000003sZT-0ScG;
	Thu, 07 May 2026 13:14:52 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKyYz-00000003sYZ-1t3W
	for linux-phy@lists.infradead.org;
	Thu, 07 May 2026 13:14:50 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-488af96f6b2so9898375e9.0
        for <linux-phy@lists.infradead.org>; Thu, 07 May 2026 06:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1778159687; x=1778764487; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0aHr4jVrJBuk/fs3rKxhNRyKDeIrHsvxWAqAg9ExwjE=;
        b=F3iCirEPFmnDYrKqdLgGKgeSfaq5PzjZY5DoPt0c8v9Z9kZxRaFTFCktwPi99+U8dM
         ZL/b9oMfsOp/fRWxjz+XQZti7LrK3kx8J7NoquJmSGyr7SpLKM2CGinRtsv/e9CGN9N1
         lbU3h3R6LYrP4En0Ip8wifqu9t0J11cZ4TfX/Wns1GfSo5Ev6jPcz6yUM0OHjsEgbM85
         PQiveYy6kcnMHnEthajFM3n3Hnfbdd7qNK0GFlN2ZLtFL+TVMsnN2PZ8wR1kOPIPIr+k
         UkOuomAUNoTQ1w1ODVAcCfPy4bIhATyndv6wPwhizYF2Ozelv9B9hmzRuMz0lHD0tTWd
         Q0Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778159687; x=1778764487;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0aHr4jVrJBuk/fs3rKxhNRyKDeIrHsvxWAqAg9ExwjE=;
        b=cv8LExekOY8ugypeND7xfk0Io+yO1fJyMgBfFGpaUY7V5iZE1i+o7gK5HudmLgOEzv
         ZRgaeJBLQWVKXddvod+UkSNDmC465XrcgZuvSTtY2zVABcfIWpY33Hp37aFi0D7f9gKv
         orM+Pv/ewekZDctbGL+tZjQQ8btcplB9wfsVOsYileGE3S4UPnpCXvijBVIF3rMB9XY7
         4ATM68RrwFBUZ03QOSOcgBM+4Ri9XmhoajOy4tWXNm5wzOk5KxGZTlshgryaBBdWUOc/
         C4ZpT7w45RgbJ/RNQF1kyRpl2xwT8ZOCQGzLDu3yNOPs6qVU9owp7wLjEvDvPu19/Z5J
         Dzqw==
X-Forwarded-Encrypted: i=1; AFNElJ9MpRQz+o6VnrWZwaw/7LkzysLPZER7CwZlFbq0rAYLs6Ifqpj5/NX1iudPE1N5r0fhjCQp9NsODZo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz7tW/SO7ve4/3KBjPNU6gfaTRfxZ+Oiez1afJ758w745JXTfxi
	o+IsI8SEhn1JDHDIyeZgzw3FNBHWNmZlZ7gPV6li0HLaYFHbmF1oKqb5ATKyRQo6JoQ=
X-Gm-Gg: AeBDiesEDZLbiUV40iJacBqEId+3DB8+sUOWVvMlH8E+bnn4YD06GX7Wt/Y8wZTpWkg
	VmS2fuwY5KZY5RKKsoWMMx7iB07++PF5nZgz8yQWcpPgIJVMAmF/Yz6ugbgnG13RqN5HWfaHyni
	TIIRYjzgtjZHkVUMVjOwoWUABMJlDcJ3522Gi2y6q9NuDuXmCJb8bI4JKhxlbkYTabimC29TWbW
	9W+NT/XlMr2cIYctrjzXis2Sxq0NDDqOl9W0SElNznE4VNhVu+qV5Suu6f06FQDwLndz8IOyZn6
	Ira7XzDH/tKEQw9y8aHKJjMSRJYwAkNauOxcq/5dDIkUkpSsGAEZiBfxx09dbhJjt1uV2/L74g1
	Lpa6N0x5P06dQhrdt45J23oKr4na8foZkjO0dJ69CS/SEBm78A2kSIXvJMHKyceuTG2zkLmswqo
	+GOOc2la17naSi7vFubj5Bcp+jBJsI91/BsoWPMeKu1OR0X7xLnMQlvpsOdQ==
X-Received: by 2002:a05:600c:a305:b0:489:1c5f:3a9e with SMTP id 5b1f17b1804b1-48e51f36febmr85339865e9.13.1778159686601;
        Thu, 07 May 2026 06:14:46 -0700 (PDT)
Received: from localhost.localdomain ([2a00:6d43:105:c401:e307:1a37:2e76:ce91])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48e530b05d9sm57179985e9.3.2026.05.07.06.14.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 May 2026 06:14:46 -0700 (PDT)
From: Marco Crivellari <marco.crivellari@suse.com>
To: linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: Tejun Heo <tj@kernel.org>,
	Lai Jiangshan <jiangshanlai@gmail.com>,
	Frederic Weisbecker <frederic@kernel.org>,
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
	Marco Crivellari <marco.crivellari@suse.com>,
	Michal Hocko <mhocko@suse.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: [RFC PATCH] phy: ti: tusb1210: Move long delayed work on system_dfl_long_wq
Date: Thu,  7 May 2026 15:14:39 +0200
Message-ID: <20260507131439.264906-1-marco.crivellari@suse.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_061449_506598_2DCD9546 
X-CRM114-Status: GOOD (  11.84  )
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

Q3VycmVudGx5IHRoZSBjb2RlIGVucXVldWUgd29yayBpdGVtcyB1c2luZyB7cXVldWV8bW9kfV9k
ZWxheWVkX3dvcmsoKSwKdXNpbmcgc3lzdGVtX2xvbmdfd3EuIFRoaXMgd29ya3F1ZXVlIHNob3Vs
ZCBiZSB1c2VkIHdoZW4gbG9uZyB3b3JrcyBhcmUKZXhwZWN0ZWQgYW5kIGl0IGlzIGEgcGVyLWNw
dSB3b3JrcXVldWUuCgpUaGUgZnVuY3Rpb24ocykgZW5kIHVwIGNhbGxpbmcgX19xdWV1ZV9kZWxh
eWVkX3dvcmsoKSwgd2hpY2ggc2V0IGEgZ2xvYmFsCnRpbWVyIHRoYXQgY291bGQgZmlyZSBhbnl3
aGVyZSwgZW5xdWV1aW5nIHRoZSB3b3JrIHdoZXJlIHRoZSB0aW1lciBmaXJlZC4KClVuYm91bmQg
d29ya3MgY291bGQgYmVuZWZpdCBmcm9tIHNjaGVkdWxlciB0YXNrIHBsYWNlbWVudCwgdG8gb3B0
aW1pemUKcGVyZm9ybWFuY2UgYW5kIHBvd2VyIGNvbnN1bXB0aW9uLiBMb25nIHdvcmsgc2hvdWxk
bid0IHN0aWNrIHRvIGEgc2luZ2xlCkNQVS4KClJlY2VudGx5LCBhIG5ldyB1bmJvdW5kIHdvcmtx
dWV1ZSBzcGVjaWZpYyBmb3IgbG9uZyBydW5uaW5nIHdvcmsgaGFzCmJlZW4gYWRkZWQ6CgrCoMKg
wqDCoGMxMTY3MzdlOTcyZSAoIndvcmtxdWV1ZTogQWRkIHN5c3RlbV9kZmxfbG9uZ193cSBmb3Ig
bG9uZyB1bmJvdW5kIHdvcmtzIikKClNpbmNlIHRoZSB3b3JrcXVldWUgd29yayBkb2Vzbid0IHJl
bHkgb24gcGVyLWNwdSB2YXJpYWJsZXMsIHRoZXJlIGlzIG5vCm9idmlvdXMgcmVhc29uIHRoYXQg
anVzdGlmeSB0aGUgdXNlIG9mIGEgcGVyLWNwdSB3b3JrcXVldWUuIFNvIGNoYW5nZQpzeXN0ZW1f
bG9uZ193cSB3aXRoIHN5c3RlbV9kZmxfbG9uZ193cSBzbyB0aGF0IHRoZSB3b3JrIG1heSBiZW5l
Zml0IGZyb20Kc2NoZWR1bGVyIHRhc2sgcGxhY2VtZW50LgoKU2lnbmVkLW9mZi1ieTogTWFyY28g
Q3JpdmVsbGFyaSA8bWFyY28uY3JpdmVsbGFyaUBzdXNlLmNvbT4KLS0tCiBkcml2ZXJzL3BoeS90
aS9waHktdHVzYjEyMTAuYyB8IDYgKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25z
KCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3RpL3BoeS10dXNi
MTIxMC5jIGIvZHJpdmVycy9waHkvdGkvcGh5LXR1c2IxMjEwLmMKaW5kZXggYzNhZTlkNzk0OGQ3
Li45OTU2OTIxYzA5NGIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGh5L3RpL3BoeS10dXNiMTIxMC5j
CisrKyBiL2RyaXZlcnMvcGh5L3RpL3BoeS10dXNiMTIxMC5jCkBAIC0xOTcsNyArMTk3LDcgQEAg
c3RhdGljIHZvaWQgdHVzYjEyMTBfY2hnX2RldF9zZXRfc3RhdGUoc3RydWN0IHR1c2IxMjEwICp0
dXNiLAogCQkJdHVzYjEyMTBfY2hnX2RldF9zdGF0ZXNbbmV3X3N0YXRlXSwgZGVsYXlfbXMpOwog
CiAJdHVzYi0+Y2hnX2RldF9zdGF0ZSA9IG5ld19zdGF0ZTsKLQltb2RfZGVsYXllZF93b3JrKHN5
c3RlbV9sb25nX3dxLCAmdHVzYi0+Y2hnX2RldF93b3JrLAorCW1vZF9kZWxheWVkX3dvcmsoc3lz
dGVtX2RmbF9sb25nX3dxLCAmdHVzYi0+Y2hnX2RldF93b3JrLAogCQkJIG1zZWNzX3RvX2ppZmZp
ZXMoZGVsYXlfbXMpKTsKIH0KIApAQCAtMzgwLDcgKzM4MCw3IEBAIHN0YXRpYyBpbnQgdHVzYjEy
MTBfcHN5X25vdGlmaWVyKHN0cnVjdCBub3RpZmllcl9ibG9jayAqbmIsCiAJc3RydWN0IHBvd2Vy
X3N1cHBseSAqcHN5ID0gcHRyOwogCiAJaWYgKHBzeSAhPSB0dXNiLT5wc3kgJiYgcHN5LT5kZXNj
LT50eXBlID09IFBPV0VSX1NVUFBMWV9UWVBFX1VTQikKLQkJcXVldWVfZGVsYXllZF93b3JrKHN5
c3RlbV9sb25nX3dxLCAmdHVzYi0+Y2hnX2RldF93b3JrLCAwKTsKKwkJcXVldWVfZGVsYXllZF93
b3JrKHN5c3RlbV9kZmxfbG9uZ193cSwgJnR1c2ItPmNoZ19kZXRfd29yaywgMCk7CiAKIAlyZXR1
cm4gTk9USUZZX09LOwogfQpAQCAtNDU4LDcgKzQ1OCw3IEBAIHN0YXRpYyB2b2lkIHR1c2IxMjEw
X3Byb2JlX2NoYXJnZXJfZGV0ZWN0KHN0cnVjdCB0dXNiMTIxMCAqdHVzYikKIAkgKi8KIAl0dXNi
LT5jaGdfZGV0X3N0YXRlID0gVFVTQjEyMTBfQ0hHX0RFVF9ESVNDT05ORUNURUQ7CiAJSU5JVF9E
RUxBWUVEX1dPUksoJnR1c2ItPmNoZ19kZXRfd29yaywgdHVzYjEyMTBfY2hnX2RldF93b3JrKTsK
LQlxdWV1ZV9kZWxheWVkX3dvcmsoc3lzdGVtX2xvbmdfd3EsICZ0dXNiLT5jaGdfZGV0X3dvcmss
IDIgKiBIWik7CisJcXVldWVfZGVsYXllZF93b3JrKHN5c3RlbV9kZmxfbG9uZ193cSwgJnR1c2It
PmNoZ19kZXRfd29yaywgMiAqIEhaKTsKIAogCXR1c2ItPnBzeV9uYi5ub3RpZmllcl9jYWxsID0g
dHVzYjEyMTBfcHN5X25vdGlmaWVyOwogCXBvd2VyX3N1cHBseV9yZWdfbm90aWZpZXIoJnR1c2It
PnBzeV9uYik7Ci0tIAoyLjUzLjAKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
