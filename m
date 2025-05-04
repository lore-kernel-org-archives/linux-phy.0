Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB7FFC369DC
	for <linux-phy@archiver.kernel.org>; Sun,  4 May 2025 20:40:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p/qUwRtMSJmAFqDmXj3HxoENPWdSI+wQU24bopKc2Tg=; b=wjn+lyXUZN1LIS
	au9ztDRcyqNlk9HKgorqYEcz832K17bg0m6zn8xc34YLdvGAzrCII+qX8BbJCqNxnpeylFZwMdGOS
	HZHpwnJvlgzzpIB9hldSYhwXVblwz6+EM/W/yCinPJ33Uohzyyty6Q/syShl5OmGQNKjv+U8rYyWA
	jBeegx45w//O9lDhs3G6aGpEJc+EVD+Z9p+Fv0yF1jxoa7DorF9Lmzl4L0j0cuBsXMM2WTA6ANd23
	H9yReGadKdhao3Du89A02pWE72Tma3WukMXMdnziBz5BwryE9K4pFvNallpvk1oJSkEIE8DkqqKdH
	zDR857/sMx6LvK2M5NSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBg8v-00000005vhf-1L0i;
	Sun, 04 May 2025 20:40:57 +0000
Received: from mail-qv1-xf2d.google.com ([2607:f8b0:4864:20::f2d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBg8t-00000005vh4-0F7I
	for linux-phy@lists.infradead.org;
	Sun, 04 May 2025 20:40:56 +0000
Received: by mail-qv1-xf2d.google.com with SMTP id 6a1803df08f44-6e8f05acc13so54281846d6.2
        for <linux-phy@lists.infradead.org>; Sun, 04 May 2025 13:40:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746391253; x=1746996053; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=C0s2dBLBP6hSN1djmfjptMhw6J9xUsy7meqkws5R5+0=;
        b=iK2K1HD6jt2fkF6I8sRCaQRFICLpCBeh478K793nT0QcKqbagGPyAyDfyTg2zQhmPE
         tEkOnXskrzeIrt32FZF5JAPZoslz+fwas0Ir6wRAli8qZnLQMwAz1fHSBmMWS7LtHZY9
         KBWdxH1+xdupJQZo2e5pWnY1O/YoQeVkI92O3sYSs7xatp8PAspPOz/2ESS6mJVZ+Ft1
         nvCwSW2QA2cUD5G3oDEuhJXpHkWNw64KRjezM/2JNuzbh2BPTwenFzIqSPpT+m6FxSlZ
         r1JPTKHe61jQ3wQ65hpm0t9YEsPZQ90mAvxYhtX0z7NYZLfQO7p+FPOhGQXPqNQjGqla
         bVNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746391253; x=1746996053;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C0s2dBLBP6hSN1djmfjptMhw6J9xUsy7meqkws5R5+0=;
        b=WIDtdPqIggOM5EvQuJOgW2dURf9i09oM1ylCV3kDxQ0CagZ0nfM16F74iYxb3uS+R6
         AUn4UmEA1EE7QPUGifFEq3hk6FTZcVxtwC2iEPdAbF6+BS6VjZ5tYGZPkGX1dgMplfNT
         TADA5f2jl9pOUMOPkudsDTpoOPBx5xkjQ2OOS3s5mf+ly+xYMucKgT1FGuQZASqUi9a4
         Y5clSnyUcc+BaF1ejGexZwIKiudtbFzbG9oumAwaCCBPzaNRYFEHZgv4nTEcAqj3+o0C
         WSAgWyB1JqQ+g0fHQuV4jf3jfwxLsn0aAuXx2FhC/+3iepbO7TLzzal/zKmEg+Cxj77d
         8e1g==
X-Gm-Message-State: AOJu0Yw01QI2J5hWsHTLtMIAtD/Yog28qZsxBmsIrtM7ltdgkTl5gvZi
	ruDHUdPUVfh6OEis4QePyQnmtGd/8AWXkmPXyMWd9aWfGwnRjgyIsCd4Uw==
X-Gm-Gg: ASbGnctJqM4ycshZrR4+l/urds3qtLZbHLksCCVLZT9Oj8xzX+zVXQuN9XwDArotFHB
	eAJeNQXzPAQWk7lpB2eOXoHae1XYO6VVa54mrh6OAjvGNnh0aH4tUQRZwQOHq0T3D5Hknzm+SbL
	ad19351MoetHIqphTFRILRs4650Kad8W+DkpC8K53VMoO1zVcxVLaCwlj3+ilhA01VgB820vtQ5
	F1M82Vs7JSmodm0vcXDhg+EWZrf9n84bnR0liWwTcAjVmdSAcsPqgKDYSDpzQ5jXeqlZMliMGXP
	lt9Y2dCNzPn1bWJ4kwHgStUVti1FnQBZwpuSfjL5iUym2S2xrPB7YQ7r86cbChfbfdJsyo1rzAX
	5GW4seD8YSBuXkF6mHhmKT2iutg==
X-Google-Smtp-Source: AGHT+IGrOMfHKYgMEG4u4xcEOLbbr0nQ/l6siJ0vTPu109XdvaGVgGXlx8qArEX5wngHMwMb6/CfWw==
X-Received: by 2002:ad4:4eaa:0:b0:6f2:c79b:ef9b with SMTP id 6a1803df08f44-6f528c62179mr78754496d6.16.1746391253437;
        Sun, 04 May 2025 13:40:53 -0700 (PDT)
Received: from aford-System-Version.. (c-75-72-162-184.hsd1.mn.comcast.net. [75.72.162.184])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6f50f3c3892sm46286516d6.34.2025.05.04.13.40.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 May 2025 13:40:52 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-phy@lists.infradead.org
Cc: dominique.martinet@atmark-techno.com,
	frieder.schrempf@kontron.de,
	u.kleine-koenig@baylibre.com,
	aford@beaonembedded.com,
	Adam Ford <aford173@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] phy: freescale: fsl-samsung-hdmi: Rename phy_clk_round_rate
Date: Sun,  4 May 2025 15:40:40 -0500
Message-ID: <20250504204043.418924-1-aford173@gmail.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250504_134055_098147_81621C99 
X-CRM114-Status: UNSURE (   7.52  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

cGh5X2Nsa19yb3VuZF9yYXRlIHNvdW5kcyBsaWtlIGEgZ2VuZXJpYyBoZWxwZXIgZnVuY3Rpb24u
ICBJbgpyZWFsaXR5LCBpdCBpcyB1bmlxdWUgdG8gdGhlIHBoeS1mc2wtc2Ftc3VuZy1oZG1pLiBS
ZW5hbWUKcGh5X2Nsa19yb3VuZF9yYXRlIHRvIGZzbF9zYW1zdW5nX2hkbWlfcGh5X2Nsa19yb3Vu
ZF9yYXRlLgpObyBmdW5jdGlvbmFsIGNoYW5nZSBpbnRlbmRlZC4KClN1Z2dlc3RlZC1ieTogVXdl
IEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BiYXlsaWJyZS5jb20+ClNpZ25lZC1vZmYt
Ynk6IEFkYW0gRm9yZCA8YWZvcmQxNzNAZ21haWwuY29tPgoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
cGh5L2ZyZWVzY2FsZS9waHktZnNsLXNhbXN1bmctaGRtaS5jIGIvZHJpdmVycy9waHkvZnJlZXNj
YWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMKaW5kZXggMTBmYmU4ZGVlMTE2Li40MGYzM2U1YWM2
ZjUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLXNhbXN1bmctaGRt
aS5jCisrKyBiL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLXNhbXN1bmctaGRtaS5jCkBA
IC01MzEsOCArNTMxLDggQEAgc3RhdGljIHUzMiBmc2xfc2Ftc3VuZ19oZG1pX3BoeV9nZXRfY2xv
c2VzdF9yYXRlKHVuc2lnbmVkIGxvbmcgcmF0ZSwKIAlyZXR1cm4gZnJhY19kaXZfY2xrOwogfQog
Ci1zdGF0aWMgbG9uZyBwaHlfY2xrX3JvdW5kX3JhdGUoc3RydWN0IGNsa19odyAqaHcsCi0JCQkg
ICAgICAgdW5zaWduZWQgbG9uZyByYXRlLCB1bnNpZ25lZCBsb25nICpwYXJlbnRfcmF0ZSkKK3N0
YXRpYyBsb25nIGZzbF9zYW1zdW5nX2hkbWlfcGh5X2Nsa19yb3VuZF9yYXRlKHN0cnVjdCBjbGtf
aHcgKmh3LAorCQkJCQkJdW5zaWduZWQgbG9uZyByYXRlLCB1bnNpZ25lZCBsb25nICpwYXJlbnRf
cmF0ZSkKIHsKIAljb25zdCBzdHJ1Y3QgcGh5X2NvbmZpZyAqZnJhY3RfZGl2X3BoeTsKIAl1MzIg
aW50X2Rpdl9jbGs7CkBAIC02MTYsNyArNjE2LDcgQEAgc3RhdGljIGludCBwaHlfY2xrX3NldF9y
YXRlKHN0cnVjdCBjbGtfaHcgKmh3LAogCiBzdGF0aWMgY29uc3Qgc3RydWN0IGNsa19vcHMgcGh5
X2Nsa19vcHMgPSB7CiAJLnJlY2FsY19yYXRlID0gcGh5X2Nsa19yZWNhbGNfcmF0ZSwKLQkucm91
bmRfcmF0ZSA9IHBoeV9jbGtfcm91bmRfcmF0ZSwKKwkucm91bmRfcmF0ZSA9IGZzbF9zYW1zdW5n
X2hkbWlfcGh5X2Nsa19yb3VuZF9yYXRlLAogCS5zZXRfcmF0ZSA9IHBoeV9jbGtfc2V0X3JhdGUs
CiB9OwogCi0tIAoyLjQ4LjEKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
