Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2EB8CA9ED1
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 06:57:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sVdVZal+CvS/1Qw7L4SR/3eu9IbG6anmhmOl4v9sutE=; b=Mx3rYzsZzgqrc7
	q050n1hM3hJfx9imIpFa8t0MQ+uHqHNCVRQzj1lfogD/kCmuZKuJM1u3LYibo1u4UP8Wu/U+t1aar
	AczO4ndUlZBfoc98ejJDwdlhiod2fvhjrIesTHgm9HJEBAwttrAulusLlqCHd8D4+/YAPJFJ8nw3g
	IWfVvXz39mRQD6tbCK0I18Lg4sntiqBI/eHVA9fC4XVlRb7bN6N6J1bkyzb36q6wSLXDz8ZEwPMxc
	bg9gQdUIaO6B8eRF06SZXr1S8R1403P/OVe/NPVCvc04qa++6kpuhf5r1jVZFX0+mM1zziICG6JD2
	7YqwHZUJ6O4zBtSOEkKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xG9yL-00000009mU5-2Qtt;
	Mon, 12 Oct 2026 06:57:21 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xG9yK-00000009mTp-25yB
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 06:57:20 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 237EC60AA1;
	Mon, 12 Oct 2026 06:57:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 537C51F0089B;
	Mon, 12 Oct 2026 06:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791788238;
	bh=kIm7lHumSzCOPmYIyrS8Wh8tCWT3Tgo5yalZRvy8W84=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=MpaZJQXBgyKSsvLmlkgYcOIv9gDQEVQFVQpvXsZzrWlPzwAnv29OPF9UaocvcNtK1
	 DYEIccVF8S9q+0Yx40j36yENPC9RfPhDbwlMHg8sgz0pAUiXUajNa/STrz6XJdVZ5x
	 IM/Hg0hxtrX01yQHfC9zshmXH3ZfwzGPQduea+w74G5+wPq0kJzJpbCB0mMBkBBL3n
	 yXNpZFYzU9treGejfOi3PeIA8bao8bzvhaS8GAWITSKXCm+boaLgkjhpxtKWYzRXC9
	 dyx9a1G2D6+tAHwkDLcd0THPuSGT2iHpTyCD8T6mqi6mwvBR0JjDWUfSzipOj3TkCb
	 okwElTY78fMuA==
Message-ID: <sashiko-outbox-167757@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v21 14/14] arm64: dts: qcom:
 kaanapali-mtp-camera-s5kjn5: Add DT overlay
To: "Hangxiang Ma" <hangxiang.ma@oss.qualcomm.com>
Cc: vkoul@kernel.org, media-ci@linuxtv.org, robh@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20261011-kaanapali-camss-v21-14-04fd28d815c6@oss.qualcomm.com>
References: <20261011-kaanapali-camss-v21-0-04fd28d815c6@oss.qualcomm.com>
 <20261011-kaanapali-camss-v21-14-04fd28d815c6@oss.qualcomm.com>
Date: Mon, 12 Oct 2026 06:57:17 +0000
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIGR0czogcWNvbTogbWlz
c2luZyB2ZGRtLXN1cHBseSBpbiBzNWtqbjUgY2FtZXJhIG5vZGUKLS0KCmNvbW1pdCBjMWRmODM1
MjFiNzlkNzhiZGY4M2Q0YzQ5NmJlNGIwZTgyYTlmMDVjCkF1dGhvcjogSGFuZ3hpYW5nIE1hIDxo
YW5neGlhbmcubWFAb3NzLnF1YWxjb21tLmNvbT4KCmFybTY0OiBkdHM6IHFjb206IGthYW5hcGFs
aS1tdHAtY2FtZXJhLXM1a2puNTogQWRkIERUIG92ZXJsYXkKClRoaXMgY29tbWl0IGVuYWJsZXMg
dGhlIFM1S0pONSBpbWFnZSBzZW5zb3IgdmlhIENDSSBvbiB0aGUgS2FhbmFwYWxpIE1UUApib2Fy
ZC4gSXQgYWRkcyBhIGRldmljZSB0cmVlIG92ZXJsYXkgZm9yIHRoZSBjYW1lcmEgbW9kdWxlIGNv
bm5lY3RlZCB0bwp0aGUgQ1NJUEhZMiBpbnRlcmZhY2UgaW4gZm91ciBsYW5lIG1vZGUuCgo+IGRp
ZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20va2FhbmFwYWxpLW10cC1jYW1lcmEt
czVram41LmR0c28gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20va2FhbmFwYWxpLW10cC1jYW1l
cmEtczVram41LmR0c28KPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAw
MDAuLmQwZTM5ODU1ZTBlNjIKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvYXJjaC9hcm02NC9ib290
L2R0cy9xY29tL2thYW5hcGFsaS1tdHAtY2FtZXJhLXM1a2puNS5kdHNvClsgLi4uIF0KPiArJmNj
aTBfaTJjMSB7Cj4gKwkjYWRkcmVzcy1jZWxscyA9IDwxPjsKPiArCSNzaXplLWNlbGxzID0gPDA+
Owo+ICsKPiArCWNhbWVyYUAxMCB7Cj4gKwkJY29tcGF0aWJsZSA9ICJzYW1zdW5nLHM1a2puNSI7
Cj4gKwkJcmVnID0gPDB4MTA+Owo+ICsKPiArCQlyZXNldC1ncGlvcyA9IDwmdGxtbSAzIEdQSU9f
QUNUSVZFX0xPVz47Cj4gKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiArCQlwaW5jdHJs
LTAgPSA8JmNhbV9tY2xrMl9kZWZhdWx0ICZjYW1fcmVzZXQyX2RlZmF1bHQ+Owo+ICsKPiArCQlj
bG9ja3MgPSA8JmNhbWJpc3RtY2xrY2MgQ0FNX0JJU1RfTUNMS19DQ19NQ0xLMl9DTEs+Owo+ICsJ
CWFzc2lnbmVkLWNsb2NrcyA9IDwmY2FtYmlzdG1jbGtjYyBDQU1fQklTVF9NQ0xLX0NDX01DTEsy
X0NMSz47Cj4gKwkJYXNzaWduZWQtY2xvY2stcmF0ZXMgPSA8MTkyMDAwMDA+Owo+ICsKPiArCQl2
ZGRpby1zdXBwbHkgPSA8JnZyZWdfbDRuXzFwOD47Cj4gKwkJdmRkZC1zdXBwbHkgPSA8JnZyZWdf
bDFtXzFwMD47Cj4gKwkJdmRkYS1zdXBwbHkgPSA8JnZyZWdfbDRtXzJwMj47Cj4gKwkJdmRkaW8x
cDItc3VwcGx5ID0gPCZ2cmVnX2wybl8xcDI+Owo+ICsJCWFmdmRkLXN1cHBseSA9IDwmdnJlZ19s
N21fMnA4PjsKCltTZXZlcml0eTogSGlnaF0KRG9lcyB0aGlzIGRldmljZSB0cmVlIG5vZGUgb21p
dCB0aGUgdmRkbS1zdXBwbHkgcHJvcGVydHk/CgpMb29raW5nIGF0IHRoZSBzNWtqbjUgZHJpdmVy
IGluIGRyaXZlcnMvbWVkaWEvaTJjL3M1a2puNS5jLCBpdAp1bmNvbmRpdGlvbmFsbHkgcmVxdWly
ZXMgdGhlICJ2ZGRtIiByZWd1bGF0b3IgZHVyaW5nIHByb2JlOgoKc3RhdGljIGNvbnN0IGNoYXIg
KiBjb25zdCBzNWtqbjVfc3VwcGx5X25hbWVzW10gPSB7CgkidmRkaW8iLAoJInZkZGQiLAoJInZk
ZG0iLAoJInZkZGEiLAoJInZkZGlvMXAyIiwKCSJhZnZkZCIsCn07CgpNaXNzaW5nIHRoaXMgcHJv
cGVydHkgaW4gdGhlIERUIG92ZXJsYXkgd2lsbCBjYXVzZSB0aGUgZHJpdmVyIHByb2JlIHRvCmZh
aWwgd2l0aCAtRU5PREVWLCBvciBpZiB0aGUgcmVndWxhdG9yIGNvcmUgc3Vic3RpdHV0ZXMgYSBk
dW1teSByZWd1bGF0b3IsCnRoZSBwaHlzaWNhbCBNSVBJIFBIWSBwb3dlciBkb21haW4gbWF5IHJl
bWFpbiB1bnBvd2VyZWQsIGNhdXNpbmcgdGhlIHNlbnNvcgp0byBmYWlsIHRvIHN0cmVhbS4KCj4g
Kwo+ICsJCXBvcnQgewo+ICsJCQlzNWtqbjVfb3V0X2VwOiBlbmRwb2ludCB7Cj4gKwkJCQlkYXRh
LWxhbmVzID0gPDEgMiAzIDQ+Owo+ICsJCQkJbGluay1mcmVxdWVuY2llcyA9IC9iaXRzLyA2NCA8
MTI0ODAwMDAwMD47Cj4gKwkJCQlyZW1vdGUtZW5kcG9pbnQgPSA8JmNzaXBoeTJfaW5fZXA+Owo+
ICsJCQl9Owo+ICsJCX07Cj4gKwl9Owo+ICt9OwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0
dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTAxMS1rYWFuYXBhbGktY2Ftc3MtdjIx
LTAtMDRmZDI4ZDgxNWM2QG9zcy5xdWFsY29tbS5jb20/cGFydD0xNAoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
