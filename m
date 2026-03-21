Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3835E1094464
	for <linux-phy@archiver.kernel.org>; Sat, 21 Mar 2026 14:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=317She3K9Wyx+GKpmu9te9JW2PtRXegLOkmHCIpBE+Q=; b=ZuxXwsByagTTJ+
	IlrLCHfU72RN/gw5qVav+p/T35BFvPU6QuKFv9++Cu0RNv4AQ1ACgfODqwOJ2yHeAwDAT6Pc9hp+n
	PBqQXa25dxbXx4ljtiBTPrNeWXr4Daxzccw4iPffTen0g59H+qN/wV5nXpylDeA3R3oA491zJAJAH
	ev0eVtDzeN/GOyRSTfHWbBPhSdsmenLRzecJ+UGjcLa/FQaVV/j10chvH2wibwSiFdppZf1xFR9EH
	sN2YbvA72tbpjJ94IGlhreXLvNaXkoZnx3090ITHXsVa/391K4c7mbrLbxG7SF/X/X2piGEuzyuzg
	EorDwilJu9EhV4EItCFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3xXi-0000000EYGe-3AFL;
	Sat, 21 Mar 2026 14:43:10 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3xXg-0000000EYGC-1Xnn
	for linux-phy@lists.infradead.org;
	Sat, 21 Mar 2026 14:43:09 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-439b7c2788dso913040f8f.1
        for <linux-phy@lists.infradead.org>; Sat, 21 Mar 2026 07:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774104186; x=1774708986; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ksXHlPTGSPp+8tlpOXfWaZMv93V/rMflZn8+7Gm04pc=;
        b=C4BAB/MjhJ7FGpq/tH1NaRfVGCc6Staht0wAt2HH/kCKdntuhvliuh4FmOTNwh4wKt
         ZP0OAS2nyJKu97Mh281xbF1uRZXC/1MUYV5axrS2cWOMbH20I1z0bujlRLtfsV4JAb8h
         kHOvQPTwngN4e46m/EPHP55+UnMRLl0LDVR0WaxtFP+7CqECIxz4ZT5oY+jg0irb2gz4
         OjKJmpew5X2takHAp+JC+ARASuWwqQzy9qgLXqUVMlMtJal3tnADNFm/x2elxEEVZ0bk
         Gs36QyvFjdicUysFptIYXzhFdqxgob7qoRMly2UF/hR7kjQGzi6AyApUbrbgxJpTtAqd
         IZqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774104186; x=1774708986;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ksXHlPTGSPp+8tlpOXfWaZMv93V/rMflZn8+7Gm04pc=;
        b=kV4vSpERv4Ix5nx5/uNuGeDu4tUFtZI476GVwrWug/ZLJ1cfcvy+8/Au+TJmjyqNrt
         dTwZJSNfhIzNB7dHB5iGEMBNbkaYfmcQWa8vhLrcY7b8OoonFvdsP8gB5JWgtLtX2jQA
         lgS3fDbwrmjnPjGiJp3qDPkaju5x3F1OvJjlfA2Er2OovEH25YTp9m08eYklqwt06voO
         wslNB4RCENAkCqCZcmL5pDlBALCfKNW6I9OZD04qeeIV63QmgJF0YKvcsIkCA4tgYgZE
         esHPrVp8te8dV6fEUE3Hoyoff4elUdkWk02SgAuluFi6JmKZPoDE7G8jENW2IA5RCt/Y
         xStA==
X-Gm-Message-State: AOJu0YyxKR61Y3Lp/cordMIBmZV4+Kb1bVX0lsvjvPq7JtWy4VfyPdCq
	gAWx+rlLgF8hUxOGoFjzUV+61S5rEcUFttCLhwKz2/1dgvKHpuaBNPaO
X-Gm-Gg: ATEYQzzDtcfVyY/57lxaU55HZyf2bZkuiGkBPe9v14xWpH7Q2NgSjOLET/4xHFOu2SK
	RHWQIOpgInHfiV+vckLMl+uPJxTqNH1MNXy31tQjpMOVIl+jTrYYdUgUnC+QBNlrBFQ3rUV38ZV
	KlerBcEE+Y7ojNPXOBo2/6zOccAqlhxIQcVZYMiSb/63hXHLFQpuXEII+JYPIrGUwQWpNWU/hUS
	6bBKfyIL3Fb8Quvcmd5ripAqITHevrC1jedN4LVZvxkyzybXuk9NBxBpWbT1zL4UGA2XVzOk4wm
	ZltJJ8i1neuxC4KpTE9Pqo9v0dRh870La39REV4scJr40nFs/oAPMrRUOVLeZZJAfCBIA3uEMdW
	5sPX5Lg31bEjpA27emHZwhlnvI6YrtbEnrLHVbBW9WXqMX8CRBBTSe0eBM2ffzPiIxU7AxkBSWv
	TWrEoWv/a/iAIdAWMpUz4Pj/ZP0ABLqw5/wxE36eG7mu0GSCmCkWRc
X-Received: by 2002:a05:6000:2303:b0:439:b6d6:723 with SMTP id ffacd0b85a97d-43b64287251mr10183654f8f.42.1774104185922;
        Sat, 21 Mar 2026 07:43:05 -0700 (PDT)
Received: from [192.168.0.253] (5D59A51C.catv.pool.telekom.hu. [93.89.165.28])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-43b647120a1sm15096099f8f.30.2026.03.21.07.43.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Mar 2026 07:43:05 -0700 (PDT)
From: Gabor Juhos <j4g8y7@gmail.com>
Date: Sat, 21 Mar 2026 15:42:32 +0100
Subject: [PATCH phy-fixes] phy: marvell: mvebu-a3700-utmi: fix incorrect
 USB2_PHY_CTRL register access
MIME-Version: 1.0
Message-Id: <20260321-a3700-utmi-fix-usb2_phy_ctrl-access-v1-1-6005ff4b5058@gmail.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXNWwrCQAyF4a2UPBuYC3WoWxEpYybagNYyaYtSu
 neDPn7wc84GylVY4dRsUHkVlddo8IcGaMjjnVGKGYILRxeDxxyTc7jMT8GbvHHRa+in4dPTXB+
 YiVgVU9vl4kuiLrZgS1Nla38vZ7AY/7rs+xcrDHobgAAAAA==
X-Change-ID: 20260321-a3700-utmi-fix-usb2_phy_ctrl-access-759ad1d7c935
To: Miquel Raynal <miquel.raynal@bootlin.com>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Igal Liberman <igall@marvell.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Gabor Juhos <j4g8y7@gmail.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260321_074308_419988_36F2141F 
X-CRM114-Status: GOOD (  11.20  )
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

VGhlIG12ZWJ1X2EzNzAwX3V0bWlfcGh5X3Bvd2VyX29mZigpIGZ1bmN0aW9uIHRyaWVzIHRvIG1v
ZGlmeSB0aGUKVVNCMl9QSFlfQ1RSTCByZWdpc3RlciBieSB1c2luZyB0aGUgSU8gYWRkcmVzcyBv
ZiB0aGUgUEhZIElQIGJsb2NrIGFsb25nCndpdGggdGhlIHJlYWRsL3dyaXRlbCBJTyBhY2Nlc3Nv
cnMuIEhvd2V2ZXIsIHRoZSByZWdpc3RlciBleGlzdCBpbiB0aGUKVVNCIG1pc2NlbGxhbmVvdXMg
cmVnaXN0ZXIgc3BhY2UsIGFuZCBhcyBzdWNoIGl0IG11c3QgYmUgYWNjZXNzZWQgdmlhCnJlZ21h
cCBsaWtlIGl0IGlzIGRvbmUgaW4gdGhlIG12ZWJ1X2EzNzAwX3V0bWlfcGh5X3Bvd2VyX29uKCkg
ZnVuY3Rpb24uCgpDaGFuZ2UgdGhlIGNvZGUgdG8gdXNlIHJlZ21hcF91cGRhdGVfYml0cygpIGZv
ciBtb2TDrWZ5aW5nIHRoZSByZWdpc3Rlcgp0byBmaXggdGhpcy4KCkZpeGVzOiBjYzhiN2EwYWU4
NjYgKCJwaHk6IGFkZCBBMzcwMCBVVE1JIFBIWSBkcml2ZXIiKQpTaWduZWQtb2ZmLWJ5OiBHYWJv
ciBKdWhvcyA8ajRnOHk3QGdtYWlsLmNvbT4KLS0tCiBkcml2ZXJzL3BoeS9tYXJ2ZWxsL3BoeS1t
dmVidS1hMzcwMC11dG1pLmMgfCA1ICsrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25z
KCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L21hcnZlbGwvcGh5
LW12ZWJ1LWEzNzAwLXV0bWkuYyBiL2RyaXZlcnMvcGh5L21hcnZlbGwvcGh5LW12ZWJ1LWEzNzAw
LXV0bWkuYwppbmRleCAwNGY0ZmI0YmVkNzAyNGM5MzMxOTBiYmQ5MzUzNjE1ZDU0YWMxNzJjLi5m
ODgyYmM1NzY0OWM3NzM0M2MzY2I5YzUxMTFkYjgyODEyOTkzYzNlIDEwMDY0NAotLS0gYS9kcml2
ZXJzL3BoeS9tYXJ2ZWxsL3BoeS1tdmVidS1hMzcwMC11dG1pLmMKKysrIGIvZHJpdmVycy9waHkv
bWFydmVsbC9waHktbXZlYnUtYTM3MDAtdXRtaS5jCkBAIC0xNjgsOSArMTY4LDggQEAgc3RhdGlj
IGludCBtdmVidV9hMzcwMF91dG1pX3BoeV9wb3dlcl9vZmYoc3RydWN0IHBoeSAqcGh5KQogCXUz
MiByZWc7CiAKIAkvKiBEaXNhYmxlIFBIWSBwdWxsLXVwIGFuZCBlbmFibGUgVVNCMiBzdXNwZW5k
ICovCi0JcmVnID0gcmVhZGwodXRtaS0+cmVncyArIFVTQjJfUEhZX0NUUkwodXNiMzIpKTsKLQly
ZWcgJj0gfihSQl9VU0IyUEhZX1BVIHwgUkJfVVNCMlBIWV9TVVNQTSh1c2IzMikpOwotCXdyaXRl
bChyZWcsIHV0bWktPnJlZ3MgKyBVU0IyX1BIWV9DVFJMKHVzYjMyKSk7CisJcmVnbWFwX3VwZGF0
ZV9iaXRzKHV0bWktPnVzYl9taXNjLCBVU0IyX1BIWV9DVFJMKHVzYjMyKSwKKwkJCSAgIFJCX1VT
QjJQSFlfUFUgfCBSQl9VU0IyUEhZX1NVU1BNKHVzYjMyKSwgMCk7CiAKIAkvKiBQb3dlciBkb3du
IE9URyBtb2R1bGUgKi8KIAlpZiAodXNiMzIpIHsKCi0tLQpiYXNlLWNvbW1pdDogODFhZjllNDBl
MmU0ZTFhYTk1ZjA5ZmIzNDgxMTc2MGJlNjc0MmM1OApjaGFuZ2UtaWQ6IDIwMjYwMzIxLWEzNzAw
LXV0bWktZml4LXVzYjJfcGh5X2N0cmwtYWNjZXNzLTc1OWFkMWQ3YzkzNQoKQmVzdCByZWdhcmRz
LAotLSAKR2Fib3IgSnVob3MgPGo0Zzh5N0BnbWFpbC5jb20+CgoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
