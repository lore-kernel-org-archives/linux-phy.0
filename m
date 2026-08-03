Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C331C55182
	for <linux-phy@archiver.kernel.org>; Mon,  3 Aug 2026 19:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uX+eKYN9Dq5cE7pRehIgiOJkKGe2cXrD2MsZzljDt3A=; b=2zZAtINReRAFBv
	i3kHiu8VYTOL+0c1rJymoUrBF6Fgtir+gIkMlsUSuqGrSpD4vwfVas8t5E+tanHflUAvXDSL37Vlf
	5dRtxc8JxCMvbMG9p/ochIbQEKk/Ps0XxxQGFnKI57F0Wg41ZH0pSkqJHYwwD4ifSf2nRnb5bn4D8
	tM0XKSXdRwz780gXGGupvVxdyYZbKsLw33ASkdiwpOh5umZdHbbkyzAXzxGcrSKjH00xkvSgQNn+e
	08iiqppttfzCVMJZ5+6g0bQ2LIllLuHcAVOsyqBvfiid2wOwnfadamROdc8gw8Xts55Li86IiJzxu
	jL2DJvbRQ1oWt2r6HbeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqydR-00000000SGE-13Ug;
	Mon, 03 Aug 2026 19:47:41 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqydQ-00000000SFo-0bpZ
	for linux-phy@lists.infradead.org;
	Mon, 03 Aug 2026 19:47:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id DBEE14055F;
	Mon,  3 Aug 2026 19:47:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E0D51F000E9;
	Mon,  3 Aug 2026 19:47:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785786458;
	bh=dxcOY/Bwmv4BFz5N3ve8AYSlFhK1EmAyJQiHrmv3Rng=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=khfQybPqSW69GG7QF+d1UsgiGkyTqzbHa3peCNQzs8Jbz8ulOH9P9iXQdUfF0p71E
	 5KzZLIrhulbkkL5D5Vaml/6HsqXVnXRWjRSg8Ha/PEjo5bBhwFwhj7PBXZda0JcqZQ
	 l4gElG6+q1dLuGG69Q87XgJxw9Ga9yzLD7G/nU+eF2wlKInUf9pB8Y9ycwGg+mKs+M
	 OF8WGof8l+ip+FHxhJYvjA9Nt+DYduUJnOEM0FpoGnlpAZNUFjgkFKQWIehz8LIo+E
	 DaF//XwCo5QVPvEsyDAmjNatV59oc1o170PM0VIPkqJgPXIxJYkkzHsZDJUClQEDW8
	 KZHYrv8Akb0eg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: monaco-evk: fix SerDes PHY
 regulator supplies
To: "Mohd Ayaan Anwar" <mohd.anwar@oss.qualcomm.com>
Cc: conor+dt@kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org
In-Reply-To: <20260804-b4-sgmiieth_serdes_regulator-v2-5-c4bc688177dd@oss.qualcomm.com>
References: <20260804-b4-sgmiieth_serdes_regulator-v2-0-c4bc688177dd@oss.qualcomm.com>
 <20260804-b4-sgmiieth_serdes_regulator-v2-5-c4bc688177dd@oss.qualcomm.com>
Date: Mon, 03 Aug 2026 19:47:37 +0000
Message-Id: <20260803194738.4E0D51F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIEluY29tcGxldGUgZGV2
aWNlIHRyZWUgbWlncmF0aW9uIGNhdXNlcyBhIGZ1bmN0aW9uYWwgcmVncmVzc2lvbiBvbiBxY3M4
MzAwLXJpZGUgYW5kIG1vbmFjby1tb256YS1zb20gYm9hcmRzLCB3aGVyZSB0aGUgU2VyRGVzIFBI
WSB3aWxsIGZhaWwgdG8gcG93ZXIgdXAgYmVjYXVzZSBpdHMgMC45ViByZWd1bGF0b3IgcmFpbCBp
cyBub3QgZW5hYmxlZC4KLS0KCi0tLSBQYXRjaCBbNV06IFtQQVRDSCB2MiA1LzZdIGFybTY0OiBk
dHM6IHFjb206IG1vbmFjby1ldms6IGZpeCBTZXJEZXMgUEhZIHJlZ3VsYXRvciBzdXBwbGllcyAt
LS0KY29tbWl0IDc3MTI2NjAxYWUwY2Q3OWZmM2UzMjc2ZThmMzU0MjBiMjFhMmQyZjUKQXV0aG9y
OiBNb2hkIEF5YWFuIEFud2FyIDxtb2hkLmFud2FyQG9zcy5xdWFsY29tbS5jb20+Cgphcm02NDog
ZHRzOiBxY29tOiBtb25hY28tZXZrOiBmaXggU2VyRGVzIFBIWSByZWd1bGF0b3Igc3VwcGxpZXMK
ClRoZSBjb21taXQgdXBkYXRlcyB0aGUgU2VyRGVzIFBIWSBub2RlIGluIHRoZSBtb25hY28tZXZr
IGRldmljZSB0cmVlIHRvIHVzZQpleHBsaWNpdCBuYW1lZCByZWd1bGF0b3Igc3VwcGxpZXMgKHZk
ZGEtMHA5LXN1cHBseSBhbmQgdmRkYS0xcDItc3VwcGx5KQppbnN0ZWFkIG9mIHRoZSBkZXByZWNh
dGVkIHBoeS1zdXBwbHkgcHJvcGVydHkuIFRoaXMgZW5zdXJlcyBib3RoIHJlcXVpcmVkCnJhaWxz
IGFyZSBwcm9wZXJseSBkZXNjcmliZWQgYW5kIGVuYWJsZWQuCgo+IGRpZmYgLS1naXQgYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3Fjb20vbW9uYWNvLWV2ay5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3Fjb20vbW9uYWNvLWV2ay5kdHMKPiBpbmRleCA5ZDE3ZWY3ZDJjYWYxLi5mNzg3ZTc4YjM1Y2U0
IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9tb25hY28tZXZrLmR0cwo+
ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9tb25hY28tZXZrLmR0cwo+IEBAIC03MDYs
NyArNzA2LDggQEAgJnNkaGNfMSB7Cj4gIH07Cj4gIAo+ICAmc2VyZGVzMCB7Cj4gLQlwaHktc3Vw
cGx5ID0gPCZ2cmVnX2w0YT47Cj4gKwl2ZGRhLTBwOS1zdXBwbHkgPSA8JnZyZWdfbDRhPjsKPiAr
CXZkZGEtMXAyLXN1cHBseSA9IDwmdnJlZ19sNWE+OwoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIHRo
aXMgbWlncmF0aW9uIHRvIHZkZGEtMHA5LXN1cHBseSBhbmQgdmRkYS0xcDItc3VwcGx5IG5lZWQg
dG8gYmUgYXBwbGllZAp0byBvdGhlciBib2FyZHMgYXMgd2VsbD8KCkxvb2tpbmcgYXQgYXJjaC9h
cm02NC9ib290L2R0cy9xY29tL3FjczgzMDAtcmlkZS5kdHMgYW5kCmFyY2gvYXJtNjQvYm9vdC9k
dHMvcWNvbS9tb25hY28tbW9uemEtc29tLmR0c2ksIHRoZXkgc3RpbGwgdXNlIHRoZSBkZXByZWNh
dGVkCnBoeS1zdXBwbHkgcHJvcGVydHkgZm9yIHNlcmRlczA6CgphcmNoL2FybTY0L2Jvb3QvZHRz
L3Fjb20vcWNzODMwMC1yaWRlLmR0czpzZXJkZXMwIHsKCXBoeS1zdXBwbHkgPSA8JnZyZWdfbDVh
PjsKCXN0YXR1cyA9ICJva2F5IjsKfTsKCklmIHRoZSBxY29tLWR3bWFjLXNnbWlpLXBoeSBkcml2
ZXIgd2FzIHVwZGF0ZWQgaW4gdGhpcyBzZXJpZXMgdG8gcmVxdWlyZQpleHBsaWNpdCB2ZGRhLTBw
OSBhbmQgdmRkYS0xcDIgc3VwcGxpZXMsIGRldm1fcmVndWxhdG9yX2J1bGtfZ2V0X2NvbnN0KCkg
d2lsbApmYWxsIGJhY2sgdG8gZHVtbXkgcmVndWxhdG9ycyBmb3IgdGhlc2UgbWlzc2luZyBuYW1l
ZCBzdXBwbGllcy4KClRoaXMgd291bGQgbGVhdmUgdGhlIDAuOVYgcGh5c2ljYWwgcmFpbCB1bnBv
d2VyZWQgb24gdGhlc2Ugb3RoZXIgYm9hcmRzLCB3aGljaApjYXVzZXMgdGhlIFBIWSBjYWxpYnJh
dGlvbiB0byB0aW1lIG91dCBhbmQgdGhlIEV0aGVybmV0IGludGVyZmFjZSB0byBmYWlsIHRvCmlu
aXRpYWxpemUuCgpTaG91bGQgdGhlc2UgZGV2aWNlIHRyZWVzIGFsc28gYmUgdXBkYXRlZCB0byBl
bnN1cmUgdGhlaXIgU2VyRGVzIFBIWXMgZG8gbm90CmZhaWwgdG8gcG93ZXIgdXA/Cgo+ICAKPiAg
CXN0YXR1cyA9ICJva2F5IjsKPiAgfTsKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczov
L3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA4MDQtYjQtc2dtaWlldGhfc2VyZGVzX3JlZ3Vs
YXRvci12Mi0wLWM0YmM2ODgxNzdkZEBvc3MucXVhbGNvbW0uY29tP3BhcnQ9NQoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
