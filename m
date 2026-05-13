Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DD33CD37B6
	for <linux-phy@archiver.kernel.org>; Wed, 13 May 2026 04:28:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uO93icHe6DKxfz8tEY9BqBUvqiGCDIIgQ38XlhCBhws=; b=QDTOAXPVk6/u4W
	uiBCyQXC6faLxIHJk4DxW0ZDRXV6Um28Ch7M/glaIWIa66J+qnh6N9cWXtftIZRUa5Du5RSQO4x6F
	2FowNXRj1eNR0dLsJk+K67Ri243+xF5fc5kH39/g4dP7mjGNiVTH77Zp7et0269q/vcVm/VwTQ7Do
	knJ8yiDDJOuwAnbmSlCmfmDijsQAHNWHeFtCaxfMnu/aKUmSs+vOUBqX3P0c7iW3+U3mv0BmYT2S7
	bYBdQtsy02KCTEi9saNvT2MJfrcR+m4XLasARwQ3wAbjJoY8CWazCKoSHVuSQe2tecrS2zsGb0vr9
	J3NkjGReJ6VErZulhn6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN1D6-00000001CkL-3LuJ;
	Wed, 13 May 2026 04:28:40 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN1D4-00000001Cjm-0EsD
	for linux-phy@lists.infradead.org;
	Wed, 13 May 2026 04:28:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 83E7542A85;
	Wed, 13 May 2026 04:28:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 073F9C2BCB7;
	Wed, 13 May 2026 04:28:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778646516;
	bh=53KRb+QdttugPWcaOLSqdmFPTnZQu0vobGCck0ENdsA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=jm2tuO+yYFYRTS6rFjTCoLhbUywV/kf7kFruRGcYcndqNzeiEJ9b2IBmknma+UzSg
	 69eyN66TAQpqUViefcMYbvtTQn6g5CrlJttGMFEMCak/zWUhCGlhyl0y9o8IV89VUo
	 c+65y2bRVwl9KOXh5E8yeG/XPYs6rexg+D1iR0OlsQjJLR6I+YdFOcPMjFvMU31s5F
	 tAwO4G8CRFEBNo2mfFVH8qEnlZ2zXFRQ3XIBFq3InUY7gj9G/gVPQXb1yiZQqerUbD
	 98+3RgQ+78OZbxn0Tj9srn7DhekpC0sApKtVLoPdbDFboPDn2uKvqWcyn0hnRK5saa
	 u/k1xeqWx6t8w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: qcom: Add Shikra CQM SoM platform
To: "Komal Bajaj" <komal.bajaj@oss.qualcomm.com>
Cc: robh@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, vkoul@kernel.org, olteanv@gmail.com, krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260512-shikra-dt-v1-3-716438330dd0@oss.qualcomm.com>
References: <20260512-shikra-dt-v1-3-716438330dd0@oss.qualcomm.com>
Date: Wed, 13 May 2026 04:28:35 +0000
Message-Id: <20260513042836.073F9C2BCB7@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260512_212838_551122_0630E40A 
X-CRM114-Status: GOOD (  10.18  )
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBQTUlDIHJlZ3Vs
YXRvciBkZWZpbml0aW9ucyBvbWl0IHRoZWlyIHJlcXVpcmVkIGlucHV0IHN1cHBseSBkZXBlbmRl
bmNpZXMgKGUuZy4sIGB2ZGRfczItc3VwcGx5YCwgYHZkZF9sMy1zdXBwbHlgKSwgYnJlYWtpbmcg
dGhlIHBvd2VyIGhpZXJhcmNoeS4KLSBbTWVkaXVtXSBUaGUgZGV2aWNlIHRyZWUgaW5hY2N1cmF0
ZWx5IGhhcmRjb2RlcyB0aGUgYGNvbXBhdGlibGVgIHN0cmluZyB0byBhIGRpZmZlcmVudCBQTUlD
IG1vZGVsIChgcWNvbSxycG0tcG0yMjUwLXJlZ3VsYXRvcnNgKSBpbnN0ZWFkIG9mIGV4cGxpY2l0
bHkgaWRlbnRpZnlpbmcgdGhlIGFjdHVhbCBoYXJkd2FyZSAoUE00MTI1KS4KLS0KCmNvbW1pdCA0
NTdhYmY2ZTdhYzQxMDQzMGM4NjY4NDJlMDhlNjAyZWMzZGFhYTUxCkF1dGhvcjogS29tYWwgQmFq
YWogPGtvbWFsLmJhamFqQG9zcy5xdWFsY29tbS5jb20+Cgphcm02NDogZHRzOiBxY29tOiBBZGQg
U2hpa3JhIENRTSBTb00gcGxhdGZvcm0KCkFkZCBkZXZpY2UgdHJlZSBpbmNsdWRlIGZvciB0aGUg
Q1FNIHZhcmlhbnQgb2YgdGhlIFNoaWtyYSBTeXN0ZW0tb24tTW9kdWxlLgpUaGlzIHZhcmlhbnQg
aW50ZWdyYXRlcyB0aGUgU2hpa3JhIFNvQyBhbmQgUE00MTI1IFBNSUMuIFRoZSBEVFNJIGluY2x1
ZGVzCnRoZSBjb21tb24gc2hpa3JhLmR0c2kgYW5kIGFkZHMgUE00MTI1IFBNSUMgcmVndWxhdG9y
IGRlZmluaXRpb25zLgoKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3No
aWtyYS1jcW0tc29tLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2hpa3JhLWNxbS1z
b20uZHRzaQo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwMC4uNDAx
ZTcxNzIwNTE5ZAo+IC0tLSAvZGV2L251bGwKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fj
b20vc2hpa3JhLWNxbS1zb20uZHRzaQpbIC4uLiBdCj4gKyZycG1fcmVxdWVzdHMgewo+ICsJcmVn
dWxhdG9ycyB7Cj4gKwkJY29tcGF0aWJsZSA9ICJxY29tLHJwbS1wbTIyNTAtcmVndWxhdG9ycyI7
CgpTaW5jZSB0aGUgY29tbWl0IG1lc3NhZ2UgaW5kaWNhdGVzIHRoaXMgaXMgYSBQTTQxMjUgUE1J
Qywgc2hvdWxkIHRoZQpjb21wYXRpYmxlIHN0cmluZyBpbmNsdWRlIGEgc3BlY2lmaWMgaWRlbnRp
ZmllciBmb3IgdGhlIGFjdHVhbCBoYXJkd2FyZT8KClVzaW5nIGEgc3BlY2lmaWMgaWRlbnRpZmll
ciBsaWtlICJxY29tLHJwbS1wbTQxMjUtcmVndWxhdG9ycyIgYWxvbmdzaWRlCnRoZSBmYWxsYmFj
ayBhbGxvd3MgdGhlIGtlcm5lbCB0byBhcHBseSBzcGVjaWZpYyBxdWlya3MgaWYgUE00MTI1IGVy
cmF0YQphcmUgZGlzY292ZXJlZCBsYXRlci4KCj4gKwo+ICsJCXBtNDEyNV9zMjogczIgewo+ICsJ
CQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwxMDAwMDAwPjsKPiArCQkJcmVndWxhdG9yLW1h
eC1taWNyb3ZvbHQgPSA8MTIwMDAwMD47Cj4gKwkJfTsKCkRvIHRoZXNlIHJlZ3VsYXRvcnMgbmVl
ZCB0byBleHBsaWNpdGx5IGRlZmluZSB0aGVpciBpbnB1dCBzdXBwbHkgZGVwZW5kZW5jaWVzCnN1
Y2ggYXMgdmRkX3MyLXN1cHBseT8KCldpdGhvdXQgdGhlc2UgcHJvcGVydGllcywgdGhlIHJlZ3Vs
YXRvciBmcmFtZXdvcmsgbWlnaHQgYmUgdW5hd2FyZSB0aGF0IHRoZQpQTUlDIHJlZ3VsYXRvcnMg
ZHJhdyBwb3dlciBmcm9tIHVwc3RyZWFtIHN1cHBsaWVzLgoKSWYgdGhlIGtlcm5lbCBkeW5hbWlj
YWxseSBtYW5hZ2VzIHRoZSB1cHN0cmVhbSBzdXBwbHkgYW5kIGl0cyByZWZlcmVuY2UgY291bnQK
ZHJvcHMgdG8gemVybywgY291bGQgaXQgYmUgZGlzYWJsZWQsIGNhdXNpbmcgYW4gdW5leHBlY3Rl
ZCBwb3dlciBsb3NzIGZvcgpkb3duc3RyZWFtIGNvbXBvbmVudHM/CgpbIC4uLiBdCgotLSAKU2Fz
aGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNTEy
LXNoaWtyYS1kdC12MS0wLTcxNjQzODMzMGRkMEBvc3MucXVhbGNvbW0uY29tP3BhcnQ9MwoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
