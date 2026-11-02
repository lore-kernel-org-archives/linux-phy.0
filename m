Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C5E7606A324
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 10:52:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Z0U6JdgW;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=FYbD6M5w
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=AmbeW1qinu23nArZLgHvTsdmMoi9YvjTzw/bbPdiMKI=; b=Z0U6JdgW3TgMPcHyJFqfNM3zwx
	zbj78Yy6gphzRg/aOQeOGUDf0pTm3kWJ4zYXuvK85jhZ6EVorIrqh4dhR5fzIujkBMDxDR05MoZtc
	EXNhmn3MfJWBgiEGmbgz11YZkdHFYUeHNlAu9BlGkX7eP/apuq2W9d/pkH/BlXYmA9nieHWP4olS9
	ClAk15334j4028zUcZAaFc82khzKjwyBx8ajIkSN44kwoTi0MAUt3IkRvjbLuk0tWRs/iq15qESBJ
	oowUlXCjT5Q1hz8hHTL/h1nx8Y8CTuiDDMQAljSxf4EFcOUiSSp0V6bgJD5d0BUBN0HWUGqTtFlBj
	K2uRfW9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNpeA-0000000GDzo-0XZL;
	Mon, 02 Nov 2026 10:52:14 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNpe9-0000000GDzN-14Lr
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 10:52:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id CB38E41405;
	Mon,  2 Nov 2026 10:52:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F8FC1F000C1;
	Mon,  2 Nov 2026 10:52:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793616732;
	bh=nhKWXCgb4p2e/VjQ5h3+rTqX8jqrTz/GdoO6ZmdZNvE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=FYbD6M5wUTWFPlJaLJniHgrOXDZSJCOSV3uFDwUy1CIc2328YXXDNDXLgtx6k8DUH
	 vUtOmiDTKOeRCfBAanNtXCq3KfJKHihe2M35lbUOKI+41ufKNICVOu4NV6/0cU6ucF
	 J/Zs12Pc08kUr5gbWmVxC2+nBjtCd0dpw5jCdijWZ0fNLpJ5y1uqmUkVKRgStNh5Q+
	 TsNcGt14lLlmxeSwbztpHk+gV9b8flCImRFTChKUP9aiqrdGxPaTkVTA4i8ifsDjJF
	 RJmxwMS5rIA6qB4JaUQgfePJ+itSO/0NXe6dYKKy5rqgu39YpraEyMN+OjgYxWLRin
	 NBkc1QxGg86lQ==
Message-ID: <sashiko-outbox-193294@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v24 11/15] media: qcom: camss: tpg: Add support for
 v2.4.0 TPG
To: "Hangxiang Ma" <hangxiang.ma@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, media-ci@linuxtv.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261102-kaanapali-camss-v24-11-d6b8f3f6f66f@oss.qualcomm.com>
References: <20261102-kaanapali-camss-v24-0-d6b8f3f6f66f@oss.qualcomm.com>
 <20261102-kaanapali-camss-v24-11-d6b8f3f6f66f@oss.qualcomm.com>
Date: Mon, 02 Nov 2026 10:52:11 +0000
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: sashiko-reviews@lists.linux.dev
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gbWVkaWE6IHFjb206
IGNhbXNzOiB1bmluaXRpYWxpemVkIGh3X3ZlcnNpb24gY2hlY2sgaW4gdHBnX3Jlc2V0KCkKLS0K
CmNvbW1pdCBlYTE4ZDM5ZTUxNDRjYTFlOGQ2MjhhYTVhYjcwOGU4NDk4M2UxMGEzCkF1dGhvcjog
SGFuZ3hpYW5nIE1hIDxoYW5neGlhbmcubWFAb3NzLnF1YWxjb21tLmNvbT4KCm1lZGlhOiBxY29t
OiBjYW1zczogdHBnOiBBZGQgc3VwcG9ydCBmb3IgdjIuNC4wIFRQRwoKVGhpcyBjb21taXQgYWRk
cyBzdXBwb3J0IGZvciBUUEcgaGFyZHdhcmUgdmVyc2lvbiAyLjQuMCBvbiBLYWFuYXBhbGksCmNv
bnRyb2xsaW5nIHRlc3QtZW5hYmxlIGFuZCBoYXJkd2FyZSByZXNldCB2aWEgdGhlIFRQR19DVFJM
X0NNRCByZWdpc3RlciBhbmQKcm91dGluZyB0aGUgVFBHIG91dHB1dCBpbnRvIENTSUQgMTA4MCBS
WCB0aHJvdWdoIHRoZSBDU0kyIFRQRyBtdXguCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtdHBnLWdlbjEuYyBiL2RyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vcWNvbS9jYW1zcy9jYW1zcy10cGctZ2VuMS5jCj4gaW5kZXggZDI5ZGU1ZjkzYzE4ZS4u
Y2FiYmIyNjM4Y2YzOCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20v
Y2Ftc3MvY2Ftc3MtdHBnLWdlbjEuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNv
bS9jYW1zcy9jYW1zcy10cGctZ2VuMS5jCgpbIC4uLiBdCgo+IEBAIC0xNjQsMTggKzE2NywyNiBA
QCBzdGF0aWMgaW50IHRwZ19zdHJlYW1fb24oc3RydWN0IHRwZ19kZXZpY2UgKnRwZykKClsgLi4u
IF0KCj4gIHN0YXRpYyBpbnQgdHBnX3Jlc2V0KHN0cnVjdCB0cGdfZGV2aWNlICp0cGcpCj4gIHsK
PiAtCXdyaXRlbCgwLCB0cGctPmJhc2UgKyBUUEdfQ1RSTCk7Cj4gLQl3cml0ZWwoMSwgdHBnLT5i
YXNlICsgVFBHX0NMRUFSKTsKPiArCWlmICh0cGctPmh3X3ZlcnNpb24gPCBUUEdfSFdfVkVSXzJf
NF8wKQo+ICsJCXdyaXRlbCgwLCB0cGctPmJhc2UgKyBUUEdfQ1RSTCk7CgpbU2V2ZXJpdHk6IE1l
ZGl1bV0KQXMgcmVwb3J0ZWQgYnkgU2FzaGlrbyBvbiB2MTcgWzFdLCBpcyB0cGctPmh3X3ZlcnNp
b24gaW5pdGlhbGl6ZWQgd2hlbgp0cGdfcmVzZXQoKSBpcyBjYWxsZWQgZm9yIHRoZSBmaXJzdCB0
aW1lIGZyb20gdHBnX3NldF9wb3dlcigpPwoKSW4gZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29t
L2NhbXNzL2NhbXNzLXRwZy5jLCB0cGdfc2V0X3Bvd2VyKCkgY2FsbHMKcmVzZXQoKSBiZWZvcmUg
aHdfdmVyc2lvbigpIHBvcHVsYXRlcyB0cGctPmh3X3ZlcnNpb24gZnJvbSB0aGUKVFBHX0hXX1ZF
UlNJT04gcmVnaXN0ZXI6Cgpkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3Mt
dHBnLmM6dHBnX3NldF9wb3dlcigpIHsKCS4uLgoJCXRwZy0+cmVzLT5od19vcHMtPnJlc2V0KHRw
Zyk7CgoJCXRwZy0+cmVzLT5od19vcHMtPmh3X3ZlcnNpb24odHBnKTsKCS4uLgp9CgpPbiB0aGUg
Zmlyc3QgcG93ZXItb24gYWZ0ZXIgcHJvYmUsIHRwZy0+aHdfdmVyc2lvbiBpcyBzdGlsbCAwLCBz
bwp0cGctPmh3X3ZlcnNpb24gPCBUUEdfSFdfVkVSXzJfNF8wIGV2YWx1YXRlcyB0byB0cnVlIGFu
ZCB0cGdfcmVzZXQoKSB3cml0ZXMKMCB0byBUUEdfQ1RSTCBldmVuIG9uIHYyLjQuMCBoYXJkd2Fy
ZS4gU2hvdWxkIHRwZ19zZXRfcG93ZXIoKSBjYWxsCmh3X3ZlcnNpb24odHBnKSBiZWZvcmUgcmVz
ZXQodHBnKSwgb3Igc2hvdWxkIHRwZ19yZXNldCgpIHJlYWQgdGhlIHZlcnNpb24gaWYKbmVlZGVk
PwoKWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNjA5MjkwNjEyNDguRTAzNUMxRjAw
MEZGQHNtdHAua2VybmVsLm9yZwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2Fz
aGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTEwMi1rYWFuYXBhbGktY2Ftc3MtdjI0LTAtZDZiOGYz
ZjZmNjZmQG9zcy5xdWFsY29tbS5jb20/cGFydD0xMQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
