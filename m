Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B13FEDF148
	for <linux-phy@archiver.kernel.org>; Fri, 13 Feb 2026 10:45:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fFeMsFjvg5Vl8erSMD7uACbfVHXMdpDWONjugxHfUTo=; b=BIzC9RKZWQVUMk
	Mf50+ftHBBq8IAojnMdU/mAcE9WtNxx2+Vp600a4w+RF8tc+oBz9LPWCZiBB4qRVJ4V/HnyFX3LI+
	uND918LcjbeurROA5EbaJhfq7D0FL9aDT2bM4b8vBwfovEKhO4zxWpbZ4Al3jKi9cF+Pn4IWcXwQW
	ybVALbHPhTwPBRY9I+AOGJYWK4A5bhoXr7s5SFqzCVyW+bOXEqELbSNxbgaZYijTjla/iuITm9GbF
	oxVgElVBd3+urk0TJ/3vVe7RjIDw+s3xQcWQnX7QiEagCAXd6P5oFBS+1MhjYa2vPchTwVM61B01P
	5J1wB7hTWQwxrVoHHOzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqqfm-00000003LK8-3K2l;
	Fri, 13 Feb 2026 10:45:18 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqqfj-00000003LJs-2sqs
	for linux-phy@lists.infradead.org;
	Fri, 13 Feb 2026 10:45:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id B4C0A6132B;
	Fri, 13 Feb 2026 10:45:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64611C116C6;
	Fri, 13 Feb 2026 10:45:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770979514;
	bh=ae4YsFkRL4hT1bL9gebH9ppqG30GrKSaxvB14eYTi+g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XMtFayh5yjGVeQhZs9ejMf7qdV6Fwuh55BkTCd4cZYIOx2vfrHavqWT6QRGRpgzvY
	 /P2mRLr3ZYJ6Rl4qJ531LndLzA/lNna/c615XSbEEzG2T/JrybrXDMoe9xdlLP3pXy
	 aLQmpwH7dZtqgN4L5qpv1h2nAgo725QZDEcgbhJLyIracSsZW3NwtPHAbr+W9OIpZZ
	 VoaYV1gSdhc2hTClN09d3Olv2guQU+A0UFfLMqWfVj120PLjeNqM/qDNGQs2jvBiEn
	 felkYCHczgkXQTZJN+Khm1vJzPqOAsYBy6tzYB82Mvc33a/PTrGUcZBEntPU07w1hX
	 ubGyqSyv7f8CQ==
Received: from johan by rho.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1vqqfa-0000000042q-0HiX;
	Fri, 13 Feb 2026 11:45:06 +0100
Date: Fri, 13 Feb 2026 11:45:06 +0100
From: Johan Hovold <johan@kernel.org>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, dmitry.baryshkov@oss.qualcomm.com,
	neil.armstrong@linaro.org, konrad.dybcio@oss.qualcomm.com,
	Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: Re: [PATCH v3 5/5] phy: qcom: snps-femto-v2: Fix possible NULL-deref
 on early runtime suspend
Message-ID: <aY8Asvu-1u0e02oJ@hovoldconsulting.com>
References: <20260205160240.748371-1-loic.poulain@oss.qualcomm.com>
 <20260205160240.748371-6-loic.poulain@oss.qualcomm.com>
 <aY7pvakkOnaYsd5p@hovoldconsulting.com>
 <CAFEp6-3yk3sPXj+hGuWvAFsFJAXjH4kWLV8k_5_v9Hax0XxaOg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFEp6-3yk3sPXj+hGuWvAFsFJAXjH4kWLV8k_5_v9Hax0XxaOg@mail.gmail.com>
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

T24gRnJpLCBGZWIgMTMsIDIwMjYgYXQgMTA6NDU6MzJBTSArMDEwMCwgTG9pYyBQb3VsYWluIHdy
b3RlOgo+IE9uIEZyaSwgRmViIDEzLCAyMDI2IGF0IDEwOjA34oCvQU0gSm9oYW4gSG92b2xkIDxq
b2hhbkBrZXJuZWwub3JnPiB3cm90ZToKPiA+Cj4gPiBPbiBUaHUsIEZlYiAwNSwgMjAyNiBhdCAw
NTowMjo0MFBNICswMTAwLCBMb2ljIFBvdWxhaW4gd3JvdGU6Cj4gPiA+IEVuYWJsaW5nIHJ1bnRp
bWUgUE0gYmVmb3JlIGF0dGFjaGluZyB0aGUgaHNwaHkgaW5zdGFuY2UgYXMgZHJpdmVyIGRhdGEK
PiA+ID4gY2FuIGxlYWQgdG8gYSBOVUxMIHBvaW50ZXIgZGVyZWZlcmVuY2UgaW4gcnVudGltZSBQ
TSBjYWxsYmFja3MgdGhhdAo+ID4gPiBleHBlY3QgdmFsaWQgZHJpdmVyIGRhdGEuIFRoZXJlIGlz
IGEgc21hbGwgd2luZG93IHdoZXJlIHRoZSBzdXNwZW5kCj4gPiA+IGNhbGxiYWNrIG1heSBydW4g
YWZ0ZXIgUE0gcnVudGltZSBlbmFibGluZyBhbmQgYmVmb3JlIHJ1bnRpbWUgZm9yYmlkLgo+ID4K
PiA+IFNvIGhlcmUgdG9vLCB0aGUgY29tbWl0IHNob3VsZCByZWZsZWN0IHRoYXQgdGhpcyBjYW5u
b3QgcmVhbGx5IGhhcHBlbiBpbgo+ID4gcHJhY3RpY2UuCj4gCj4gVGhpcyBoYXBwZW5lZCAgaW4g
cHJhY3RpY2UgaW4gdGhlIHFjb23igJFxdXNiMiBQSFkgZHJpdmVyLCB3aXRoIHRoZSBzYW1lCj4g
Y29kZSBmbG93Lgo+IEJ1ZzogaHR0cHM6Ly9naXRodWIuY29tL3F1YWxjb21tLWxpbnV4L3Fjb20t
ZGViLWltYWdlcy9pc3N1ZXMvMjA4Cj4gUGF0Y2g6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xp
bnV4LWFybS1tc20vMjAyNTEyMTkwODU2NDAuMTE0NDczLTEtbG9pYy5wb3VsYWluQG9zcy5xdWFs
Y29tbS5jb20vCgpUaGFua3MgZm9yIHRoZSBsaW5rLgoKPiBJIGtub3cgaXQgbWF5IHNvdW5kIHVu
bGlrZWx5LCBidXQgdGhpcyBjcmFzaCBoYXMgYmVlbiByZXBvcnRlZAo+IHNldmVyYWwgdGltZXMg
ZHVyaW5nIGJvb3TigJFzdHJlc3MgdGVzdGluZy4gSSBoYXZlbuKAmXQgaW52ZXN0aWdhdGVkCj4g
ZGVlcGx5IGVub3VnaCB0byBkZXRlcm1pbmUgd2hldGhlciBpdOKAmXMgY2F1c2VkIGJ5IGFuIHVu
Zm9ydHVuYXRlCj4gcHJlZW1wdGlvbiB3aW5kb3cgb3IgYSByYWNpbmcgQ1BVLgoKQnV0IEknbSBs
aXRlcmFsbHkgYXNraW5nIGZvciAqd2hhdCogd291bGQgdHJpZ2dlciB0aGUgc3VzcGVuZCBpbiB0
aGF0CmluaXRpYWwgd2luZG93IGJldHdlZW4gZW5hYmxlKCkgYW5kIGZvcmJpZCgpIGNhdXNlIEkg
ZG9uJ3Qgc2VlIGl0LgoKQSByYWNpbmcgdXNlciBzcGFjZSBkYWVtb24gcmUtZW5hYmxpbmcgcnVu
dGltZSBQTSBhZnRlciBmb3JiaWQoKSBpcwp0aGUgb25seSB0aGluZyBJIGNhbiB0aGluayBvZiB0
aGF0IGNvdWxkIHRyaWdnZXIgdGhpcy4KCkpvaGFuCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
