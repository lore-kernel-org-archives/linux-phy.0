Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8BEB606A32D
	for <linux-phy@archiver.kernel.org>; Sat,  7 Nov 2026 15:09:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=JXEJFXKP;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=do6hHgQG
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=sCfU/1WQNfLiFbp0qiNWnPY1dc20CkLtz72yHsynuoo=; b=JXEJFXKPJLzIudngnt1w7wt2ZN
	T1OD7ziWzuEIiIz0LRT5kjeLu1cJxOJFHBDmsgPpH85L4v90xfFfZcHQ06yp0yz6+SWB1RWAZ1J9A
	gw331KWfRP97+g3Fp1zX5A3GZPs3pzXXS8kJTEVLVU7aNJBhbKM1+4X5mTLs+ViZMmbrcxXh/bWez
	zQ4yFn0R3uHIDg5dO6N9NgmOamO6ASlXevpDC9LIPjjFZmNxpb3H0KSQYjnosjKxPv8bLix0k3XBs
	AIPTX9UtbVuhKaiOzDBAI1oa+9fTfRVJDJk2JLu+c19Owyv3mfuGugjnusExbLRa7X/ntBX0EoEOP
	Z6Lx/YcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPi2t-0000000Esir-2rrV;
	Sat, 07 Nov 2026 15:09:31 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPi2r-0000000Esik-41sA
	for linux-phy@lists.infradead.org;
	Sat, 07 Nov 2026 15:09:30 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 138F1611CB;
	Sat,  7 Nov 2026 15:09:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 892FF1F008A1;
	Sat,  7 Nov 2026 15:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794064168;
	bh=rc5hBbbo2msUTIJOMG6pG0hWQS/2UrnL95ThmZ6N6fg=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=do6hHgQGv1oynIhZN9qTojV0qfoJlnlWt0LEyMHESWmJW+zTIW7Wf8fbxj2EMmIv4
	 59jfBOYXe12U8yjbNO4W+IbAZYm2xsYC9R577MKNKHNyRTj7JHYJFxS5xI396mrds1
	 WoBCQCjtsAXiubY02Hdflu/eLUbU2mD17o0GgGU6Ig5Sa75MXeFdWJsJ8/CGDm3250
	 FjsGqgcFlbN51Lz8YQT/35NTqu5gXorUtiAb2Lm7A1BlJjea9CPBYsA4cuDR0lsjAC
	 ++raA0yHXHDJnfqX+onS2tXAC9/i79pRoUHRvi5YvbtETTI8MPpucF3FbyWlnblDWl
	 POCCxYe6eVgHw==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v24 11/15] media: qcom: camss: tpg: Add support for
 v2.4.0 TPG
From: bod@kernel.org
To: sashiko-reviews@lists.linux.dev
Cc: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, 
 conor+dt@kernel.org, media-ci@linuxtv.org, vkoul@kernel.org, 
 neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <sashiko-outbox-193294@kernel.org>
References: <20261102-kaanapali-camss-v24-0-d6b8f3f6f66f@oss.qualcomm.com>
 <20261102-kaanapali-camss-v24-11-d6b8f3f6f66f@oss.qualcomm.com>
 <sashiko-outbox-193294@kernel.org>
Date: Sat, 07 Nov 2026 15:09:24 +0000
Message-Id: <179406416444.650304.12581893664974319470.b4-reply@b4>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2380; i=bod@kernel.org;
 h=from:subject:message-id; bh=Sf4TggOlKXCPUOfI4MjCGnRVILqaMiV7kPhZX483Ud8=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBq7z8l8ik65l7DQWlPmiMBBxPJpaUljD9V6COVF
 WLGow+qWheJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCau8/JQAKCRAicTuzoY3I
 OneyD/0aRTIlGSQLtND34Hgout0mOA/8FWfDrSubsMYNlvokmw9WUhtXmSBdcIfnkh7F43XeWtW
 57U7TkyRfvS60Q1WH3RG+ufxpjXtVRuac8Co5q0pg4hHqCElh8c23p1Fl6rAn2BBSwLdS12HdjY
 WHW+2+AxyCze5BTxAfyfG07Qx0SJu8jLIYpiOjRTubruCV+RvPGI7ecwD2xc/J1TwlT+F5IrMJb
 G5CEr/iQ47S5se5RfN0y2QvWojZu1JI1/ukJaSWL60IuoS9qY88cnqnK1YUDYOKEEpXzNVXDt8Q
 aVtpdvq2YThDHjqhBXBJ/3+C2diIXw3wQ6Viu0OB6NW7YC7K21tcSL8uu1s4cIGzbqoZ4ldQiDN
 hOfi9pS+bDnSlR7JmEoQxn5OnDp9kdy9PYR4alh41mgDwVHttfhxiIVzaB44XFYO5CiNsbFHW5y
 soZGbQ+yyeDlp9OeCEbhWPx5GMP2Kub/qxr9KJvLEDru/VrP3IcXH+XD+Q3Q7u1SHb07Y3PMabF
 xdqOo+vTN2yddeQhdbiUTqDBXZhREE0k910ngTYmjSyDOWVsEH3LAfOdRt5/2auc6Hmox620C2C
 bLQl0Rt+awEfXHxdki+a/60EZ6EvXVYW+xO6rMmnR/cgT/EilRRQRSx4ZAzF3BZ4ZjBwRIq3Tgn
 1ys8goMeH0rrCbg==
X-Developer-Key: i=bod@kernel.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMjAyNi0xMS0wMiAxMDo1MiArMDAwMCwgc2FzaGlrby1ib3RAa2VybmVsLm9yZyB3cm90ZToK
PiBUaGFuayB5b3UgZm9yIHlvdXIgY29udHJpYnV0aW9uISBTYXNoaWtvIEFJIHJldmlldyBmb3Vu
ZCAxIHBvdGVudGlhbCBpc3N1ZShzKSB0byBjb25zaWRlcjoKPiAtIFtNZWRpdW1dIG1lZGlhOiBx
Y29tOiBjYW1zczogdW5pbml0aWFsaXplZCBod192ZXJzaW9uIGNoZWNrIGluIHRwZ19yZXNldCgp
Cj4gLS0KPiAKPiBjb21taXQgZWExOGQzOWU1MTQ0Y2ExZThkNjI4YWE1YWI3MDhlODQ5ODNlMTBh
Mwo+IEF1dGhvcjogSGFuZ3hpYW5nIE1hIDxoYW5neGlhbmcubWFAb3NzLnF1YWxjb21tLmNvbT4K
PiAKPiBtZWRpYTogcWNvbTogY2Ftc3M6IHRwZzogQWRkIHN1cHBvcnQgZm9yIHYyLjQuMCBUUEcK
PiAKPiBUaGlzIGNvbW1pdCBhZGRzIHN1cHBvcnQgZm9yIFRQRyBoYXJkd2FyZSB2ZXJzaW9uIDIu
NC4wIG9uIEthYW5hcGFsaSwKPiBjb250cm9sbGluZyB0ZXN0LWVuYWJsZSBhbmQgaGFyZHdhcmUg
cmVzZXQgdmlhIHRoZSBUUEdfQ1RSTF9DTUQgcmVnaXN0ZXIgYW5kCj4gcm91dGluZyB0aGUgVFBH
IG91dHB1dCBpbnRvIENTSUQgMTA4MCBSWCB0aHJvdWdoIHRoZSBDU0kyIFRQRyBtdXguCj4gCj4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLXRw
Zy1nZW4xLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtdHBnLWdl
bjEuYwo+ID4gaW5kZXggZDI5ZGU1ZjkzYzE4ZS4uY2FiYmIyNjM4Y2YzOCAxMDA2NDQKPiA+IC0t
LSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy10cGctZ2VuMS5jCj4g
PiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtdHBnLWdlbjEu
Ywo+IAo+IFsgLi4uIF0KPiAKPiA+IEBAIC0xNjQsMTggKzE2NywyNiBAQCBzdGF0aWMgaW50IHRw
Z19zdHJlYW1fb24oc3RydWN0IHRwZ19kZXZpY2UgKnRwZykKPiAKPiBbIC4uLiBdCj4gCj4gPiAg
c3RhdGljIGludCB0cGdfcmVzZXQoc3RydWN0IHRwZ19kZXZpY2UgKnRwZykKPiA+ICB7Cj4gPiAt
CXdyaXRlbCgwLCB0cGctPmJhc2UgKyBUUEdfQ1RSTCk7Cj4gPiAtCXdyaXRlbCgxLCB0cGctPmJh
c2UgKyBUUEdfQ0xFQVIpOwo+ID4gKwlpZiAodHBnLT5od192ZXJzaW9uIDwgVFBHX0hXX1ZFUl8y
XzRfMCkKPiA+ICsJCXdyaXRlbCgwLCB0cGctPmJhc2UgKyBUUEdfQ1RSTCk7Cj4gCj4gW1NldmVy
aXR5OiBNZWRpdW1dCj4gQXMgcmVwb3J0ZWQgYnkgU2FzaGlrbyBvbiB2MTcgWzFdLCBpcyB0cGct
Pmh3X3ZlcnNpb24gaW5pdGlhbGl6ZWQgd2hlbgo+IHRwZ19yZXNldCgpIGlzIGNhbGxlZCBmb3Ig
dGhlIGZpcnN0IHRpbWUgZnJvbSB0cGdfc2V0X3Bvd2VyKCk/Cj4gCj4gSW4gZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLXRwZy5jLCB0cGdfc2V0X3Bvd2VyKCkgY2FsbHMK
PiByZXNldCgpIGJlZm9yZSBod192ZXJzaW9uKCkgcG9wdWxhdGVzIHRwZy0+aHdfdmVyc2lvbiBm
cm9tIHRoZQo+IFRQR19IV19WRVJTSU9OIHJlZ2lzdGVyOgo+IAo+IGRyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vcWNvbS9jYW1zcy9jYW1zcy10cGcuYzp0cGdfc2V0X3Bvd2VyKCkgewo+IAkuLi4KPiAJ
CXRwZy0+cmVzLT5od19vcHMtPnJlc2V0KHRwZyk7Cj4gCj4gCQl0cGctPnJlcy0+aHdfb3BzLT5o
d192ZXJzaW9uKHRwZyk7Cj4gCS4uLgo+IH0KPiAKPiBPbiB0aGUgZmlyc3QgcG93ZXItb24gYWZ0
ZXIgcHJvYmUsIHRwZy0+aHdfdmVyc2lvbiBpcyBzdGlsbCAwLCBzbwo+IHRwZy0+aHdfdmVyc2lv
biA8IFRQR19IV19WRVJfMl80XzAgZXZhbHVhdGVzIHRvIHRydWUgYW5kIHRwZ19yZXNldCgpIHdy
aXRlcwo+IDAgdG8gVFBHX0NUUkwgZXZlbiBvbiB2Mi40LjAgaGFyZHdhcmUuIFNob3VsZCB0cGdf
c2V0X3Bvd2VyKCkgY2FsbAo+IGh3X3ZlcnNpb24odHBnKSBiZWZvcmUgcmVzZXQodHBnKSwgb3Ig
c2hvdWxkIHRwZ19yZXNldCgpIHJlYWQgdGhlIHZlcnNpb24gaWYKPiBuZWVkZWQ/CgpIYW5neGlh
bmcgY2FuIHlvdSBoYXZlIGEgbG9vayBhdCB0aGlzLCBzZWVtcyBjcmVkaWJsZSB0byBtZS4KIAo+
IFsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjYwOTI5MDYxMjQ4LkUwMzVDMUYwMDBG
RkBzbXRwLmtlcm5lbC5vcmcKPiAKPiAtLSAKPiBTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczov
L3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjExMDIta2FhbmFwYWxpLWNhbXNzLXYyNC0wLWQ2
YjhmM2Y2ZjY2ZkBvc3MucXVhbGNvbW0uY29tP3BhcnQ9MTEKPiAKCgoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
