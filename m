Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89580E77173
	for <linux-phy@archiver.kernel.org>; Thu,  5 Dec 2024 07:42:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yptUk0pmqQ4WoYv2vjypnbh8D4+c1boObcch6kOWxRE=; b=fF/prO7yO+W/a/
	Vpgt+qN/0B+sPyCM4wsiTFlvKtz63m9HsaCrM8lS07lVGcNJhbnqtLIMHAtYy0M4OIGakeMEa2WmJ
	TgjGnFg19gOwpWeDlC09/3hvP3wb935oz90sI2bPKZaFvd2axe9eX9EMJJlhpJRCy+gXOQYiOkJL6
	93bv+7wkOVlvyHaQkcd2bQO69pvkbxvHOMHP0Ec5mG7xJ10iuuyihtOo0Pkw0YK8BmVWwLaY5wUwL
	q9JfFQtM5iDLfd3VW/T9DkydAtBzV7uQIOgeenVmEWwdtBI+0FUUFa+WHYrEGTLn8Q+QMh6klCtmt
	E6spbDLRHzUkLV2sbmAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ6Vl-0000000F4Gh-1Fh6;
	Thu, 05 Dec 2024 07:42:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ6MW-0000000F1n3-1Jid
	for linux-phy@bombadil.infradead.org;
	Thu, 05 Dec 2024 07:33:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=nLOfMOwPIHBPvbwfjRUM/XHx6oKInvatLpnoOXJri+4=; b=KLOS7YMAXOOnpJd4a8z+SdiaiW
	dUVu44MnR0t68/AxamUOB4a+Ml7CkW4/ei7jRtnGLNZ/CQo4N1JGREB/QxwNembOJXwDTEq9hJFuu
	bSYoPZJadnhwEoMsyRWXYLCcKnnEIoObOW22p3u3b3KflZ5vLjCnon3OOOdXzcnIXYBf+vMSRpFgQ
	5/XnKmp1cmu9BGB0QpcOjY9VOOWJLSRTEW4NvFvR6XNQdalMEzGtZzEN1CCplgmLmD8yHohULNO1t
	2EGJ7aWjTDHu3fRGuimik9Qk5bYQ6fLJZ2uyKhQ+NCZGt0Cie9XMpim7sedCB+nbrJ5Mj7hw7fEPW
	tW6JhrqQ==;
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ6MR-00000002muP-34VD
	for linux-phy@lists.infradead.org;
	Thu, 05 Dec 2024 07:33:23 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-aa51bf95ce1so107981366b.3
        for <linux-phy@lists.infradead.org>; Wed, 04 Dec 2024 23:33:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733383997; x=1733988797; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nLOfMOwPIHBPvbwfjRUM/XHx6oKInvatLpnoOXJri+4=;
        b=fr2gXkc9eQm0dCvf1bS3I0Iwy2jAeAgVNW6sUqgTaseOxR5+YBWGEAHkE4kGwyH7B+
         /bsrTQgpn+zjcOB8kb3STMO/1aIOClyoDdmoat4P7rp6arNUB5P406KIL48zcuY8ufoi
         AWFugAoi3Qg/yBJsqmTF5aTNayWQAJQYLk5Ay24LcHMFXb6y92liqqIy3pbpQ5AYDyMC
         cWaCYD/AVoNwPcvtxyvEqB5KcbeV9PaD/r+sNAoNxVEvrgKqUwKWR2svSv2U4bu7naZx
         dBeb05Amnwps6QFLI7Ij8zRcdkrSG7CDKJbSAENNAMm2UkYyQf020/DOblOhkKep0MjR
         wTrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733383997; x=1733988797;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nLOfMOwPIHBPvbwfjRUM/XHx6oKInvatLpnoOXJri+4=;
        b=dbSO6jGSskd99lOY8iEQVFkEHKHZG7DuvzUfvlZhpYpnzuwDHenDkkS8EqjNJzr/Kl
         HHeqifOdIwB9vSBuCACnWi+OXvEULTpKeAbW5NUFUKFvH4UcDrCgx+LGAg5RsXQRuXcL
         WqSEMRMObfPRvenhJ/uxl3a9YGVTrb3F0zRnwyL20Lj0d/dskX6p1jt1ay1TdcvlInj+
         1kEB1PHoAW1/CnU2m790QV4H+jQC7pjHKuNj+sZrbz8U/S8eWbSKuiMFvGw8+ukOyY6h
         H+T2NxKN4AUV9BhNFCx+ZXcpj7Xp8m52vx6UmCgnE7uN0axE9EBkcVQUfQtclIE5zKnt
         qp+Q==
X-Forwarded-Encrypted: i=1; AJvYcCUL3ZCeeAPuhUzV4bZuHQ2dKpleYpM5Nfj+IpqATxgfCsASOMF9pusocVH9fD1kDvmeMwgMB0Vj/aY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwKf3T9mK8w4/mz/TDm+Pyv6doGBx5Y5EK7DF3RFT7JEgRJS6iZ
	hKPoQXGm2FW+fDs45s7E7YAITIzd+2G7HNoG/pcpXMN6GB27N5s3EFRjC2z+8cU=
X-Gm-Gg: ASbGnctqQ6fVwBlFqG9MrwSF4B18mv73EPijdV5WcssOSKiCT7e4ov65O4IcqS5fei5
	I44o4KHeFNFS2Kn6JMBWyYSQMZWClabbBq0yXSl8tn50C1BcerNUySvD9JWz2EviS2nPUxpWi5F
	RKaVYl/yQIl9RpwcwAhN9fhUkugzHJgqWy2UyIYwd1weYFM5wK92bpQDSV69d+Uu7D0PR93iQOX
	+vO+didqNbgjSPXiLMjfcGF0X8W44CS4SUoZjrGWtsWG2L05Y+XC4Hg0bRoN92OvguhbWQKeSeC
	XZ0oYqY7P8l/5qUB+WJNTTJ/DQCPhPIMTA==
X-Google-Smtp-Source: AGHT+IGCfTgApqQL3VCgsM1Ba0voYQrJI0iEao7onrk0A/1wy1VpFBbbhBWXXPKS1vKyVfQVWGrybQ==
X-Received: by 2002:a17:906:4ca:b0:aa5:f431:2960 with SMTP id a640c23a62f3a-aa601766128mr687180766b.7.1733383997478;
        Wed, 04 Dec 2024 23:33:17 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6260888casm53371766b.133.2024.12.04.23.33.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 23:33:17 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 05 Dec 2024 07:33:19 +0000
Subject: [PATCH v3 8/8] phy: exynos5-usbdrd: allow DWC3 runtime suspend
 with UDC bound (E850+)
MIME-Version: 1.0
Message-Id: <20241205-gs101-phy-lanes-orientation-phy-v3-8-32f721bed219@linaro.org>
References: <20241205-gs101-phy-lanes-orientation-phy-v3-0-32f721bed219@linaro.org>
In-Reply-To: <20241205-gs101-phy-lanes-orientation-phy-v3-0-32f721bed219@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241205_073319_911792_442FD2C0 
X-CRM114-Status: GOOD (  13.89  )
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

VG8gbWFrZSBVU0IgcnVudGltZSBzdXNwZW5kIHdvcmsgd2hlbiBhIFVEQyBoYXMgYmVlbiBib3Vu
ZCwgdGhlIHBoeQpuZWVkcyB0byBpbmZvcm0gdGhlIFVTQkRSRCBjb250cm9sbGVyIChEV0MzKSB0
aGF0IFZidXMgYW5kIGJ2YWxpZCBhcmUKZ29uZSwgc28gdGhhdCBpdCBjYW4gaW4gdHVybiByYWlz
ZSB0aGUgcmVzcGVjdGl2ZSBnYWRnZXQgaW50ZXJydXB0IHdpdGgKZXZlbnQgPT0gRFdDM19ERVZJ
Q0VfRVZFTlRfRElTQ09OTkVDVCwgd2hpY2ggd2lsbCBjYXVzZSB0aGUgVVNCIHN0YWNrCnRvIGNs
ZWFuIHVwLCBhbGxvd2luZyBEV0MzIHRvIGVudGVyIHJ1bnRpbWUgc3VzcGVuZC4KCk9uIGU4NTAg
YW5kIGdzMTAxIHRoaXMgaXNuJ3Qgd29ya2luZywgYXMgdGhlIHJlc3BlY3RpdmUgc2lnbmFscyBh
cmUgbm90CmRpcmVjdGx5IGNvbm5lY3RlZCwgYW5kIGluc3RlYWQgdGhpcyBkcml2ZXIgdXNlcyBv
dmVycmlkZSBiaXRzIGluIHRoZQpQSFkgSVAgdG8gc2V0IHRob3NlIHNpZ25hbHMuIEl0IGN1cnJl
bnRseSBmb3JjZWZ1bGx5IHNldHMgdGhlbSB0byAnb24nLApzbyB0aGUgYWJvdmUgbWVudGlvbmVk
IGludGVycnVwdCB3aWxsIG5vdCBiZSByYWlzZWQsIHByZXZlbnRpbmcgcnVudGltZQpzdXNwZW5k
LgoKVG8gZGV0ZWN0IHRoYXQgc3RhdGUsIHVwZGF0ZSB0aGlzIGRyaXZlciB0byBhY3Qgb24gdGhl
IFRDUEMncwpvcmllbnRhdGlvbiBzaWduYWwgLSB3aGVuIG9yaWVudGF0aW9uID09IE5PTkUsIFZi
dXMgaXMgZ29uZSBhbmQgd2UgY2FuCmNsZWFyIHRoZSByZXNwZWN0aXZlIGJpdHMuIFNpbWlsYXJs
eSwgZm9yIG90aGVyIG9yaWVudGF0aW9uIHZhbHVlcyB3ZQpyZS1lbmFibGUgdGhlbS4KClRoaXMg
bWFrZXMgcnVudGltZSBzdXNwZW5kIHdvcmsgb24gcGxhdGZvcm1zIHdpdGggYSBUQ1BDIChsaWtl
IFBpeGVsNiksCndoaWxlIGtlZXBpbmcgY29tcGF0aWJpbGl0eSB3aXRoIHBsYXRmb3JtcyB3aXRo
b3V0IChlODUwLTk2KS4KCldpdGggcnVudGltZSBzdXNwZW5kIHdvcmtpbmcsIFVTQi1DIGNhYmxl
IG9yaWVudGF0aW9uIGRldGVjdGlvbiBub3cKYWxzbyBmdWxseSB3b3JrcyBvbiBzdWNoIHBsYXRm
b3JtcywgYW5kIHRoZSBsaW5rIGNvbWVzIHVwIGFzIFN1cGVyc3BlZWQKYXMgZXhwZWN0ZWQgaXJy
ZXNwZWN0aXZlIG9mIHRoZSBjYWJsZSBvcmllbnRhdGlvbiBhbmQgd2hldGhlciBVREMgLwpnYWRn
ZXQgYXJlIGNvbmZpZ3VyZWQgYW5kIGFjdGl2ZS4KClNpZ25lZC1vZmYtYnk6IEFuZHLDqSBEcmFz
emlrIDxhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc+CgotLS0KdjM6CiogdXBkYXRlIGV4eW5vczVf
dXNiZHJkX29yaWVuX3N3X3NldCgpIHRvIG5vdCB0ZXN0IGFnYWluc3QgcHJldmlvdXMKICBvcmll
bnRhdGlvbgotLS0KIGRyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMgfCA1
MCArKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQyIGlu
c2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvc2Ft
c3VuZy9waHktZXh5bm9zNS11c2JkcmQuYyBiL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5v
czUtdXNiZHJkLmMKaW5kZXggNmRjYzNjODBjMWQyLi5hZTQyZTI5OWJhNDIgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMKKysrIGIvZHJpdmVycy9w
aHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYwpAQCAtMTEzNywxMyArMTEzNywxNSBAQCBz
dGF0aWMgdm9pZCBleHlub3M4NTBfdXNiZHJkX3V0bWlfaW5pdChzdHJ1Y3QgZXh5bm9zNV91c2Jk
cmRfcGh5ICpwaHlfZHJkKQogCXJlZyB8PSBMSU5LQ1RSTF9CVVNfRklMVEVSX0JZUEFTUygweGYp
OwogCXdyaXRlbChyZWcsIHJlZ3NfYmFzZSArIEVYWU5PUzg1MF9EUkRfTElOS0NUUkwpOwogCi0J
cmVnID0gcmVhZGwocmVnc19iYXNlICsgRVhZTk9TODUwX0RSRF9VVE1JKTsKLQlyZWcgfD0gVVRN
SV9GT1JDRV9CVkFMSUQgfCBVVE1JX0ZPUkNFX1ZCVVNWQUxJRDsKLQl3cml0ZWwocmVnLCByZWdz
X2Jhc2UgKyBFWFlOT1M4NTBfRFJEX1VUTUkpOwotCi0JcmVnID0gcmVhZGwocmVnc19iYXNlICsg
RVhZTk9TODUwX0RSRF9IU1ApOwotCXJlZyB8PSBIU1BfVkJVU1ZMREVYVCB8IEhTUF9WQlVTVkxE
RVhUU0VMOwotCXdyaXRlbChyZWcsIHJlZ3NfYmFzZSArIEVYWU5PUzg1MF9EUkRfSFNQKTsKKwlp
ZiAoIXBoeV9kcmQtPnN3KSB7CisJCXJlZyA9IHJlYWRsKHJlZ3NfYmFzZSArIEVYWU5PUzg1MF9E
UkRfVVRNSSk7CisJCXJlZyB8PSBVVE1JX0ZPUkNFX0JWQUxJRCB8IFVUTUlfRk9SQ0VfVkJVU1ZB
TElEOworCQl3cml0ZWwocmVnLCByZWdzX2Jhc2UgKyBFWFlOT1M4NTBfRFJEX1VUTUkpOworCisJ
CXJlZyA9IHJlYWRsKHJlZ3NfYmFzZSArIEVYWU5PUzg1MF9EUkRfSFNQKTsKKwkJcmVnIHw9IEhT
UF9WQlVTVkxERVhUIHwgSFNQX1ZCVVNWTERFWFRTRUw7CisJCXdyaXRlbChyZWcsIHJlZ3NfYmFz
ZSArIEVYWU5PUzg1MF9EUkRfSFNQKTsKKwl9CiAKIAlyZWcgPSByZWFkbChyZWdzX2Jhc2UgKyBF
WFlOT1M4NTBfRFJEX1NTUFBMTENUTCk7CiAJcmVnICY9IH5TU1BQTExDVExfRlNFTDsKQEAgLTE0
MDcsOSArMTQwOSw0MSBAQCBzdGF0aWMgaW50IGV4eW5vczVfdXNiZHJkX29yaWVuX3N3X3NldChz
dHJ1Y3QgdHlwZWNfc3dpdGNoX2RldiAqc3csCiAJCQkJICAgICAgIGVudW0gdHlwZWNfb3JpZW50
YXRpb24gb3JpZW50YXRpb24pCiB7CiAJc3RydWN0IGV4eW5vczVfdXNiZHJkX3BoeSAqcGh5X2Ry
ZCA9IHR5cGVjX3N3aXRjaF9nZXRfZHJ2ZGF0YShzdyk7CisJaW50IHJldDsKKworCXJldCA9IGNs
a19idWxrX3ByZXBhcmVfZW5hYmxlKHBoeV9kcmQtPmRydl9kYXRhLT5uX2Nsa3MsIHBoeV9kcmQt
PmNsa3MpOworCWlmIChyZXQpIHsKKwkJZGV2X2VycihwaHlfZHJkLT5kZXYsICJGYWlsZWQgdG8g
ZW5hYmxlIFBIWSBjbG9ja3MocylcbiIpOworCQlyZXR1cm4gcmV0OworCX0KKworCXNjb3BlZF9n
dWFyZChtdXRleCwgJnBoeV9kcmQtPnBoeV9tdXRleCkgeworCQl2b2lkIF9faW9tZW0gKiBjb25z
dCByZWdzX2Jhc2UgPSBwaHlfZHJkLT5yZWdfcGh5OworCQl1bnNpZ25lZCBpbnQgcmVnOworCisJ
CWlmIChvcmllbnRhdGlvbiA9PSBUWVBFQ19PUklFTlRBVElPTl9OT05FKSB7CisJCQlyZWcgPSBy
ZWFkbChyZWdzX2Jhc2UgKyBFWFlOT1M4NTBfRFJEX1VUTUkpOworCQkJcmVnICY9IH4oVVRNSV9G
T1JDRV9WQlVTVkFMSUQgfCBVVE1JX0ZPUkNFX0JWQUxJRCk7CisJCQl3cml0ZWwocmVnLCByZWdz
X2Jhc2UgKyAgRVhZTk9TODUwX0RSRF9VVE1JKTsKKworCQkJcmVnID0gcmVhZGwocmVnc19iYXNl
ICsgRVhZTk9TODUwX0RSRF9IU1ApOworCQkJcmVnIHw9IEhTUF9WQlVTVkxERVhUU0VMOworCQkJ
cmVnICY9IH5IU1BfVkJVU1ZMREVYVDsKKwkJCXdyaXRlbChyZWcsIHJlZ3NfYmFzZSArIEVYWU5P
Uzg1MF9EUkRfSFNQKTsKKwkJfSBlbHNlIHsKKwkJCXJlZyA9IHJlYWRsKHJlZ3NfYmFzZSArIEVY
WU5PUzg1MF9EUkRfVVRNSSk7CisJCQlyZWcgfD0gVVRNSV9GT1JDRV9WQlVTVkFMSUQgfCBVVE1J
X0ZPUkNFX0JWQUxJRDsKKwkJCXdyaXRlbChyZWcsIHJlZ3NfYmFzZSArICBFWFlOT1M4NTBfRFJE
X1VUTUkpOworCisJCQlyZWcgPSByZWFkbChyZWdzX2Jhc2UgKyBFWFlOT1M4NTBfRFJEX0hTUCk7
CisJCQlyZWcgfD0gSFNQX1ZCVVNWTERFWFRTRUwgfCBIU1BfVkJVU1ZMREVYVDsKKwkJCXdyaXRl
bChyZWcsIHJlZ3NfYmFzZSArIEVYWU5PUzg1MF9EUkRfSFNQKTsKKwkJfQogCi0Jc2NvcGVkX2d1
YXJkKG11dGV4LCAmcGh5X2RyZC0+cGh5X211dGV4KQogCQlwaHlfZHJkLT5vcmllbnRhdGlvbiA9
IG9yaWVudGF0aW9uOworCX0KKworCWNsa19idWxrX2Rpc2FibGUocGh5X2RyZC0+ZHJ2X2RhdGEt
Pm5fY2xrcywgcGh5X2RyZC0+Y2xrcyk7CiAKIAlyZXR1cm4gMDsKIH0KCi0tIAoyLjQ3LjAuMzM4
Lmc2MGNjYTE1ODE5LWdvb2cKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
