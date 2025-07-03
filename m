Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1AF9C83F03
	for <linux-phy@archiver.kernel.org>; Thu,  3 Jul 2025 14:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DF8M00OCnpMWrKBOFmi8TkkNGiPQ8EODWZVuR8kK01s=; b=vWlphbpXxEwe4F
	UAgWEKOcd4JVDEiLoIkU0/p+re4kQ50GIUQP+Z3aeWrEZiQIyQOQgv2r6LL3kmLOHy79VMd+21y8u
	w7oLxSEcSyLw7theU52G6IJXJATMDpZhh4cGrDX632Sj1I1bRzNcRR7WuTTrH5bnDWCDIsZhR1yB2
	WUxf7kE7vrTmj83/wA39PSvgpndYjNr2o7geJkoetpkoVsqUqUJIL7b4XU6n9USb8qng2iJ11wJeW
	TSsOD+rPd/PVe8xkdOMlZ+n5qcT0tDAtqUJXvpLKPNxSVdItP9bt5yfngKZSRcsxDq/oInmssga+N
	FhFAYcArtjwemPrDzJPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXKxC-0000000BfvD-23si;
	Thu, 03 Jul 2025 14:30:22 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXJbB-0000000BQYF-1emQ
	for linux-phy@lists.infradead.org;
	Thu, 03 Jul 2025 13:03:34 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-451d54214adso57295045e9.3
        for <linux-phy@lists.infradead.org>; Thu, 03 Jul 2025 06:03:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751547811; x=1752152611; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=t8sMnLmbVBtviSShW9F4axvuEDVtfhtpbcNw4bBlT7c=;
        b=i7Z9tfywV4guY5YB1r2L+oto81R9ccgRL5SUhdPdr5cNLzlADn1z5ORBh44+jqrAr4
         3vdeg65GCy689fQZK538EgDcAPXt8qX0/j6DoJy2NBoRA29DFkfAlXz3Wz0LFPe9rKPD
         pcHANrD+3dXeTh1yLKe+ONxlUgb4vkdqArZYHwCP59pLPD9FgUk9PojlX1z46/X97o2X
         HgexIAxqi1dFjsxm8QZmlfdeE2iA0TcsTtTUcXo27rxpb9CWbc6x3xgLpq6tvdJDPujo
         pNpN3EANKhiFs7N6Mby39Zdci2lyT+nD/gST9HhjsmVZrFOD7aVP33TVW0SU7V+xQ+80
         AfWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751547811; x=1752152611;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t8sMnLmbVBtviSShW9F4axvuEDVtfhtpbcNw4bBlT7c=;
        b=M9rKIVG15GJwBjCICgv0SzXlAiHud72F9lNSWiX2aq8zYhsAZiAyZyxwHzDqnR0lum
         Ci4cQ6kBhHvnpoHxrsGm2AqeLV1thpvaTovhjxyJF8/HwhB6Wr2lblv9q8In+91Vi+EL
         RMRJrJsqZQ8j3cdKwcoT4WaNyWilJe1jydNoqwNY74lME6f73TlkHml9KDncjwTevPsW
         Kgql9x6iVa0UwAghqnaWzqDXU1I8mh6p2B6OTGVhXQFnJTvuIa83Q54SRZvYQbvoMxsz
         33XXHdGW+fjve5Z4POm6Sm+ElA4Ww44Y8aoZ3Hh1K1e/uI+VuqF5/ea8ZveF450o8rQf
         kjMg==
X-Gm-Message-State: AOJu0YzsrfykysPorDyXKHAUqcrg2nWrx0CoHsa4GGvTIwbxKR0n+6rp
	auwcFatq8u8zzKTo32yh0xlsDEPEsrYAoFMnqVjyTRJOzm7xwYGWXZCP59KnWmBGnwc=
X-Gm-Gg: ASbGnctr5rlPO7mNHU7QaDP/JFz6aMMngXpgn7b6B8fXRAGt4Oq59GUhifQqy2cPUYG
	SGH6lb6EZby+aZuQQ26COEUs4dYBD0/I9JCnzbq61d6GtoW5scmUSOg34u/7O/XR33YGwjqauUc
	FJwoOxudqA84CsR1I4d7vfo5dbRcjC98nXvf5Do0w2feQvtyU3ymqwa5j9YxCwepN6KyoGtgK2c
	6oHefIcDiUrIfH85vJsVeQonuOvo4OrCSjZMIOZXE9gCepMx02oLbJWLyX7FBcwgNV1bWKh4K+5
	bCQMZeA43LeoJX5UU1byFTeUiheWZMv3jykGwt0t5LYLc0sQGK5Q+9SbJRGDFhcJHD9heVRJ4Nb
	1qf4elS7S0Tm9JrRM
X-Google-Smtp-Source: AGHT+IEZcpwBB34LdSCvoGZVWtrYKSw+G3TApJ8ZTvGGFXgDj4RIhH4+oyBw0wZkTYa243/SZJTHFQ==
X-Received: by 2002:a05:600c:3e17:b0:43c:e7ae:4bcf with SMTP id 5b1f17b1804b1-454aeebbbd2mr18095885e9.0.1751547811082;
        Thu, 03 Jul 2025 06:03:31 -0700 (PDT)
Received: from gpeter-l.roam.corp.google.com ([145.224.66.164])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-454a99693fesm26170005e9.7.2025.07.03.06.03.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Jul 2025 06:03:30 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH v2 0/2] Add new phy_notify_pmstate() api
Date: Thu, 03 Jul 2025 14:03:21 +0100
Message-Id: <20250703-phy-notify-pmstate-v2-0-fc1690439117@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAJl/ZmgC/x2NQQ7CIBBFr9KwlgYG0caV9zBdoA7tJApkII2k6
 d2lXb6X/PdXkZEJs7h1q2BcKFMMDeDUidfswoSS3o0FKLDqqoxMc5UhFvJVpm8urqD0Cp7O2gH
 8xYo2TIyefkf0MTaeKZfI9fhY9G733FkrBaC0tbY3xoA2gwSZsCD3E5P3FO4fCo5jH3kS47Ztf
 8gMlG2uAAAA
X-Change-ID: 20250703-phy-notify-pmstate-f02ba5582f65
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 kernel-team@android.com, William Mcvicker <willmcvicker@google.com>, 
 Peter Griffin <peter.griffin@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2003;
 i=peter.griffin@linaro.org; h=from:subject:message-id;
 bh=ZYfjP7FwB1GpkWrGjPRU1WDQ3B9s1Ej+w3TERaVUTTA=;
 b=owEBbQKS/ZANAwAKAc7ouNYCNHK6AcsmYgBoZn+gsenijhnxKUpeWCimXuCgH87uwqGvZ5h9B
 ItzoiuZf8qJAjMEAAEKAB0WIQQO/I5vVXh1DVa1SfzO6LjWAjRyugUCaGZ/oAAKCRDO6LjWAjRy
 ukmVEACZ0M/YG9thUntvvqJNn1ALzw38f/38Op1eJmLNktFegKZPe7cw3exdz9z5Cedz8JKpRdJ
 7OLXUspk0PpOMeSlMxgZ9/I/SosG/NW6FogiUTYp5NP6cJI29frGBmPBa58ESACp2ZmoT6HU4WK
 4iuxz1sz905KPYKeQzbVvDpq7cvUeBU2lDndiUpYca1IIcpABOYdS+vaelSaHOUJ16BijTMUYF6
 LA1Sno7YcJrDHwck9XAiMsRtx1TCxevJ+UOw+MctfARkFmEtby1l5PlEQlkXPNTHZvofoxZ/jMW
 ecICz63mFFrvCfa3AecCmFACrO4CtMilo04/Z0r75qy5guAoel/HytbeDZBZanDRAM4Kz85tPQ1
 I1QYPj1YWVsVwxpASjNuNl5OIbczHipzsEUhKj7pi5x9jao0uOAmE/WP0bDXmSdtbq4CRMo0IHT
 VNdfkbqSEfdT1HaTDTm9zfjYO2UqkmOc6b9eQR4zvYi326n1Q26GI0wfean3GWWwc2uOjxnu7ew
 I9tBJtZsxQ5dDSPxXX7fbvsBMf5kM2KXbL96ImXGDH+kULjShiixR6gZcGbV8nqrEhWkPQZl46t
 eACzHe60dZh/t9eSzVZoRSIaXArw4G4wEjNrLNSTK95TM/UvamybZPR43mJK7borZCi7xrdcz60
 5JvP+ZqhLH1zgZA==
X-Developer-Key: i=peter.griffin@linaro.org; a=openpgp;
 fpr=0EFC8E6F5578750D56B549FCCEE8B8D6023472BA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250703_060333_462401_5F409AED 
X-CRM114-Status: GOOD (  10.80  )
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

VGhpcyBzZXJpZXMgYWRkcyBhIG5ldyBwaHlfbm90aWZ5X3Btc3RhdGUoKSBBUEkgdG8gdGhlIHBo
eSBzdWJzeXN0ZW0uIEl0IGlzCmRlc2lnbmVkIHRvIGJlIHVzZWQgd2hlbiBzb21lIHNwZWNpZmlj
IHJ1bnRpbWUgY29uZmlndXJhdGlvbiBwYXJhbWV0ZXJzCm5lZWQgdG8gYmUgY2hhbmdlZCB3aGVu
IHRyYW5zaXRpb25pbmcgdG8gdGhlIGRlc2lyZWQgcG0gc3RhdGUgd2hpY2ggY2FuJ3QKYmUgaGFu
ZGxlZCBieSBwaHlfY2FsaWJyYXRlKClvciBwaHlfcG93ZXJfe29ufG9mZn0oKS4KClRoZSBmaXJz
dCB1c2VyIG9mIHRoZSBuZXcgQVBJIGlzIHBoeS1zYW1zdW5nLXVmcyBhbmQgcGh5LWdzMTAxLXVm
cyB3aGljaApuZWVkcyB0byBpc3N1ZSBzb21lIHJlZ2lzdGVyIHdyaXRlcyB3aGVuIGVudGVyaW5n
IGFuZCBleGl0aW5nIHRoZSBoaWJlcm44Cmxpbmsgc3RhdGUuCgpBIHNlcGFyYXRlIHBhdGNoIHdp
bGwgYmUgc2VudCBmb3IgdWZzLWV4eW5vcyBkcml2ZXIgdG8gbWFrZSB1c2Ugb2YgdGhpcyBuZXcK
QVBJIGluIHRoZSBoaWJlcm44IGNhbGxiYWNrcy4KClRvOiBWaW5vZCBLb3VsIDx2a291bEBrZXJu
ZWwub3JnPgpUbzogS2lzaG9uIFZpamF5IEFicmFoYW0gSSA8a2lzaG9uQGtlcm5lbC5vcmc+ClRv
OiBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPgpUbzogVHVkb3IgQW1i
YXJ1cyA8dHVkb3IuYW1iYXJ1c0BsaW5hcm8ub3JnPgpUbzogQWxpbSBBa2h0YXIgPGFsaW0uYWto
dGFyQHNhbXN1bmcuY29tPgpUbzogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3Jn
PgpDYzogbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKQ2M6IGxpbnV4LWtlcm5lbEB2Z2Vy
Lmtlcm5lbC5vcmcKQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpDYzog
bGludXgtc2Ftc3VuZy1zb2NAdmdlci5rZXJuZWwub3JnCkNjOiBrZXJuZWwtdGVhbUBhbmRyb2lk
LmNvbQpDYzogV2lsbGlhbSBNY3ZpY2tlciA8d2lsbG1jdmlja2VyQGdvb2dsZS5jb20+ClNpZ25l
ZC1vZmYtYnk6IFBldGVyIEdyaWZmaW4gPHBldGVyLmdyaWZmaW5AbGluYXJvLm9yZz4KCkNoYW5n
ZXMgaW4gdjI6Ci0gQWRkIG5ldyBwaHlfbm90aWZ5X3Btc3RhdGUgQVBJKCkgaW5zdGVhZCBvZiB1
c2luZyBwaHlfc2V0X21vZGUoKSAoVmlub2QpCi0gTGluayB0byB2MTogaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvci8yMDI0MTAwMjIwMTU1NS4zMzMyMTM4LTEtcGV0ZXIuZ3JpZmZpbkBsaW5hcm8u
b3JnCgotLS0KUGV0ZXIgR3JpZmZpbiAoMik6CiAgICAgIHBoeTogYWRkIG5ldyBwaHlfbm90aWZ5
X3Btc3RhdGUoKSBhcGkKICAgICAgcGh5OiBzYW1zdW5nOiBnczEwMS11ZnM6IEFkZCAubm90aWZ5
X3Btc3RhdGUoKSBhbmQgaGliZXJuOCBlbnRlci9leGl0IHZhbHVlcwoKIGRyaXZlcnMvcGh5L3Bo
eS1jb3JlLmMgICAgICAgICAgICAgICAgfCAyNSArKysrKysrKysrKysrKysrKysrKysrKwogZHJp
dmVycy9waHkvc2Ftc3VuZy9waHktZ3MxMDEtdWZzLmMgICB8IDI4ICsrKysrKysrKysrKysrKysr
KysrKysrKysrCiBkcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1zYW1zdW5nLXVmcy5jIHwgMzggKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvcGh5L3NhbXN1bmcvcGh5
LXNhbXN1bmctdWZzLmggfCAgNyArKysrKysrCiBpbmNsdWRlL2xpbnV4L3BoeS9waHkuaCAgICAg
ICAgICAgICAgIHwgMjUgKysrKysrKysrKysrKysrKysrKysrKysKIDUgZmlsZXMgY2hhbmdlZCwg
MTIzIGluc2VydGlvbnMoKykKLS0tCmJhc2UtY29tbWl0OiA5N2JkYzMwZjM5YjYzNzU4ODY4ZjY3
ODQxY2ViYjhjNTA4NjllMTZkCmNoYW5nZS1pZDogMjAyNTA3MDMtcGh5LW5vdGlmeS1wbXN0YXRl
LWYwMmJhNTU4MmY2NQoKQmVzdCByZWdhcmRzLAotLSAKUGV0ZXIgR3JpZmZpbiA8cGV0ZXIuZ3Jp
ZmZpbkBsaW5hcm8ub3JnPgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
