Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EEA9C4452F
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 13:14:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IGN0JnTIoyq72zAwHpZPZc4sMoZ4hnA1elFa4AUOiFQ=; b=ggDtW07g3ByDK6
	U18qsETINGgDhIa+QxqZVoLeoTwC2HndrnNw2AIgyFMrUT/JOJysMGK+IRedquKq59dNxqp1MJFM3
	XSMZzfSdK+Ghmb4TSOl0UVIyx+5DBzrMqg+bgIrRqYOqsZSJL3DOH0rB6dRaMOi0APEa27xtz/v9E
	7gXuaCygGRaRU3USsX0UhFbJqt6WOphsc6853yc+KKXBnoS6VwbPMOvIi4BAm44FuDNc0nV52nzhR
	p1JGVAdiDobww6+jjcJDqyLmFweN7la/eDH/dTjUERTOKkWMEPdG+AoIozxht32z7udlsMvO7vVMz
	xdzpCgdpmvpaEoZv8TlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmAIL-00000009Uoe-3wA0;
	Tue, 21 Jul 2026 13:14:01 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmAIK-00000009UoV-11oF
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 13:14:00 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 878D06001A;
	Tue, 21 Jul 2026 13:13:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E53A41F000E9;
	Tue, 21 Jul 2026 13:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784639639;
	bh=jx1cboEXQ359GodULHqwTu/fmJqE1kURcifOpbQj98o=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=E5ZYbLDPSeM8YN1yYvJ1yRU0IiRWWCYmAVwR9Lsb+2SVLHOo/5Ns7ZxbEC1pr2AvO
	 MK93wdRWnbiY0qi2uutI21w3jX0+QhP6K0tf2u8/esTyAIixqKHLW1LIPXcB8iQzax
	 WM8fSzgI3SCQOUIQySZ0l+FVvAZ1JXz9PLrlNVvxPuuctM5XVd2/VewivRWStieuMQ
	 fR6caq72eq/bWPTmB4zXvODgFvwP1aZpOoW0LY0AyOe4Si6YR8TA/Qt5/KV3eJamg6
	 4dKSyThFgdUv75ZAS/rVW2rW1qJ8nnL7w1e1zXsrFKLB0ic4/908DFhNVHMFTcrgJF
	 v7lMKPAJ9/8sw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 2/5] phy: qcom: qmp-usbc: Prevent unnecessary PM
 runtime suspend at boot
To: "Loic Poulain" <loic.poulain@oss.qualcomm.com>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260721-qcom-usb-phy-fix-null-v5-2-a181e2adbd2d@oss.qualcomm.com>
References: <20260721-qcom-usb-phy-fix-null-v5-0-a181e2adbd2d@oss.qualcomm.com>
 <20260721-qcom-usb-phy-fix-null-v5-2-a181e2adbd2d@oss.qualcomm.com>
Date: Tue, 21 Jul 2026 13:13:57 +0000
Message-Id: <20260721131358.E53A41F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIEFzeW5jaHJvbm91cyBw
bV9ydW50aW1lX3B1dCgpIGJlZm9yZSBkZXZtX29mX3BoeV9wcm92aWRlcl9yZWdpc3RlcigpIGNh
biBjYXVzZSBhbiBhc3luYyBzdXNwZW5kIHJhY2UgaWYgcmVnaXN0cmF0aW9uIGZhaWxzLgotLQoK
LS0tIFBhdGNoIFsyXTogW1BBVENIIHY1IDIvNV0gcGh5OiBxY29tOiBxbXAtdXNiYzogUHJldmVu
dCB1bm5lY2Vzc2FyeSBQTSBydW50aW1lIHN1c3BlbmQgYXQgYm9vdCAtLS0KY29tbWl0IDRlNjdj
ZmYyZDRlM2FiNzY5NzY2NjJiN2MzYThmNTVmYWEyNWYyYmQKQXV0aG9yOiBMb2ljIFBvdWxhaW4g
PGxvaWMucG91bGFpbkBvc3MucXVhbGNvbW0uY29tPgoKcGh5OiBxY29tOiBxbXAtdXNiYzogUHJl
dmVudCB1bm5lY2Vzc2FyeSBQTSBydW50aW1lIHN1c3BlbmQgYXQgYm9vdAoKVGhpcyBjb21taXQg
dGFrZXMgYSBydW50aW1lIFBNIHVzYWdlIHJlZmVyZW5jZSB3aXRoIHBtX3J1bnRpbWVfZ2V0X25v
cmVzdW1lKCkKYmVmb3JlIGVuYWJsaW5nIHJ1bnRpbWUgUE0uIEl0IHRoZW4gcmVsZWFzZXMgdGhl
IHJlZmVyZW5jZSBvbmNlIHRoZSBQSFlzCmhhdmUgYmVlbiBjcmVhdGVkIHRvIHByZXZlbnQgdGhl
IGRldmljZSBmcm9tIGJlaW5nIHJ1bnRpbWUgc3VzcGVuZGVkIGR1cmluZwp0aGUgY3JlYXRpb24g
d2luZG93LgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1w
LXVzYmMuYyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11c2JjLmMKPiBpbmRl
eCBhYjMwNTViYjViMGMxLi40MzE3MjI0MDcwZmQ4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5
L3F1YWxjb21tL3BoeS1xY29tLXFtcC11c2JjLmMKPiArKysgYi9kcml2ZXJzL3BoeS9xdWFsY29t
bS9waHktcWNvbS1xbXAtdXNiYy5jCgpbIC4uLiBdCgo+IEBAIC0xOTg3LDE3ICsxOTkzLDIxIEBA
IHN0YXRpYyBpbnQgcW1wX3VzYmNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikK
PiAgCQlpZiAoSVNfRVJSKHFtcC0+ZHBfcGh5KSkgewo+ICAJCQlyZXQgPSBQVFJfRVJSKHFtcC0+
ZHBfcGh5KTsKPiAgCQkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gY3JlYXRlIFBIWTogJWRcbiIs
IHJldCk7Cj4gLQkJCWdvdG8gZXJyX25vZGVfcHV0Owo+ICsJCQlnb3RvIGVycl9wbV9wdXQ7Cj4g
IAkJfQo+ICAJCXBoeV9zZXRfZHJ2ZGF0YShxbXAtPmRwX3BoeSwgcW1wKTsKPiAgCX0KPiAgCj4g
KwlwbV9ydW50aW1lX3B1dChkZXYpOwo+ICsKPiAgCW9mX25vZGVfcHV0KG5wKTsKPiAgCj4gIAlw
aHlfcHJvdmlkZXIgPSBkZXZtX29mX3BoeV9wcm92aWRlcl9yZWdpc3RlcihkZXYsIHFtcF91c2Jj
X3BoeV94bGF0ZSk7Cj4gIAo+ICAJcmV0dXJuIFBUUl9FUlJfT1JfWkVSTyhwaHlfcHJvdmlkZXIp
OwoKW1NldmVyaXR5OiBIaWdoXQpTaW5jZSBwbV9ydW50aW1lX3B1dCgpIHF1ZXVlcyBhbiBhc3lu
Y2hyb25vdXMgaWRsZSBub3RpZmljYXRpb24sIGlzIHRoZXJlIGEKcmFjZSBjb25kaXRpb24gaGVy
ZSBpZiBkZXZtX29mX3BoeV9wcm92aWRlcl9yZWdpc3RlcigpIGZhaWxzPwoKSWYgZGV2bV9vZl9w
aHlfcHJvdmlkZXJfcmVnaXN0ZXIoKSByZXR1cm5zIGFuIGVycm9yLCB0aGUgZnVuY3Rpb24gcmV0
dXJucwppbW1lZGlhdGVseSBhbmQgdHJpZ2dlcnMgZGV2bSB1bndpbmRpbmcuIFRoaXMgdW53aW5k
aW5nIHdpbGwgY2FsbApwbV9ydW50aW1lX2Rpc2FibGUoKSBkdWUgdG8gdGhlIGVhcmxpZXIgZGV2
bV9wbV9ydW50aW1lX2VuYWJsZSgpIGNhbGwuCgpJZiBwbV9ydW50aW1lX2Rpc2FibGUoKSBjYW5j
ZWxzIHRoZSBwZW5kaW5nIGFzeW5jaHJvbm91cyBpZGxlL3N1c3BlbmQgd29yaywKY291bGQgdGhl
IGhhcmR3YXJlIGJlIGxlZnQgaW4gYW4gaW5jb3JyZWN0IGFjdGl2ZSBwb3dlciBzdGF0ZT8KCldv
dWxkIGl0IGJlIHNhZmVyIHRvIG1vdmUgZGV2bV9vZl9waHlfcHJvdmlkZXJfcmVnaXN0ZXIoKSBi
ZWZvcmUKcG1fcnVudGltZV9wdXQoZGV2KSwgYW5kIHVzZSB0aGUgZXJyX3BtX3B1dCBsYWJlbCAo
d2hpY2ggc2FmZWx5IHVzZXMgdGhlCnN5bmNocm9ub3VzIHBtX3J1bnRpbWVfcHV0X25vaWRsZSgp
KSBpZiBpdCBmYWlscz8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28u
ZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MjEtcWNvbS11c2ItcGh5LWZpeC1udWxsLXY1LTAtYTE4MWUy
YWRiZDJkQG9zcy5xdWFsY29tbS5jb20/cGFydD0yCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
