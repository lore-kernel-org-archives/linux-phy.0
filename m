Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EBE9C982E1
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 11:40:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qgRE9quzf8csKj8GeSaRdktYmkj8mZaZL8FszkcTaQg=; b=RnnKkhH2rz0QIy
	MsuwVUe0vDg7pKRzhJVCyHb8XeM+Z54xgq3gZW2XN2/Z9U853EsapnjA41slaLvrFDuuWUI6vqlfD
	j6LAhE2Q2ZH6JC6WKeapp+VInj2CV4gkv53+rbN65bspa0aeTjbCWW0VGoan9IzD4CE9pGOb+Qf5q
	MykJ5b8XU0sGjvBDx7LD/e2hPRanZDKwTlLIQq9ZYMjXaNCp3sB+wGDni6r2DUJj4vW6rVJb/t2j4
	ew9lEfTXeEimBEYCzHKKVlMI0jC+46oJb+m7fGxYloYsmsyxQaYJF9FsTGTAn64nvWXynK4A1ecZp
	IAM+1NgIDDZX3DX4tqfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8cNy-00000001wpN-0Kob;
	Mon, 21 Sep 2026 11:40:38 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8cNu-00000001woQ-2cHG
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 11:40:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0784440327;
	Mon, 21 Sep 2026 11:40:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 644391F000FF;
	Mon, 21 Sep 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789990833;
	bh=Pma1GOXfPcPEVtvFI91F+Aj2Iy3Q46cl+VPrJ6bEO30=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ZIVzC4oAwdtToJflZXtRHdIXZ/xN7MUn27nO7LUyDdbyhKViWlhQurkezDBNFFhqV
	 4JLz/N+WkoGUwrxL8O7Yc9dvGBv7N2EquDnFVIn4E4F3xQtanh1H552NCy0vbdLfkZ
	 Yug6+oi6hxC00SR4PyL89tYTnDN4+LvrRGNwI1PVAnonGM6B7q5qagld527oDchIzw
	 j/FX1xpKf1+hG98fuVs5wyaoNV1ZSvUzD0ufHD0RdzGwWNUaHlFZMQVPg+aBEWKmca
	 x5gpZTkEV9cbFZ97KMlRtjR/7KZEQIZAaZePgdBWsEwzf+XL4wwMYRgMLcpMmm0EGQ
	 I7pH2c/tI949A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 6/6] arm64: qcom: monaco: Add PCIe Endpoint nodes
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: olteanv@gmail.com, conor+dt@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, vkoul@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, linux-pci@vger.kernel.org
In-Reply-To: <20260921-monaco_ep-v1-6-63c5282fb0db@oss.qualcomm.com>
References: <20260921-monaco_ep-v1-0-63c5282fb0db@oss.qualcomm.com>
 <20260921-monaco_ep-v1-6-63c5282fb0db@oss.qualcomm.com>
Date: Mon, 21 Sep 2026 11:40:32 +0000
Message-Id: <20260921114033.644391F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gZHRzOiBxY29tOiBz
cHVyaW91cyBQQ0llIFdBS0UjIGFzc2VydGlvbiBkdWUgdG8gb3V0cHV0LWxvdwotLQoKY29tbWl0
IGUwODdhNGFkNTI5YzU5NTAxY2VhYTVkMmIxYTlkMDMzOTIxMDMyMDQKQXV0aG9yOiBLcmlzaG5h
IENoYWl0YW55YSBDaHVuZHJ1IDxrcmlzaG5hLmNodW5kcnVAb3NzLnF1YWxjb21tLmNvbT4KCmFy
bTY0OiBxY29tOiBtb25hY286IEFkZCBQQ0llIEVuZHBvaW50IG5vZGVzCgpUaGlzIGNvbW1pdCBh
ZGRzIHR3byBQQ0llIGNvbnRyb2xsZXJzIHRoYXQgY2FuIG9wZXJhdGUgaW4gRW5kcG9pbnQgbW9k
ZSBmb3IKTW9uYWNvLiBJdCBkZXNjcmliZXMgdGhlIEVuZHBvaW50IG5vZGVzIGZvciBib3RoIGNv
bnRyb2xsZXJzLCBpbmNsdWRpbmcgdGhlaXIKcmVnaXN0ZXIgcmVnaW9ucywgY2xvY2tzLCBpbnRl
cnJ1cHRzLCBpbnRlcmNvbm5lY3RzLCBhbmQgUEhZIGNvbm5lY3Rpb25zLgoKPiBkaWZmIC0tZ2l0
IGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL21vbmFjby5kdHNpIGIvYXJjaC9hcm02NC9ib290
L2R0cy9xY29tL21vbmFjby5kdHNpCj4gaW5kZXggZDdkMTM1ZTg3YThjNy4uOGYyZjA5NDEzODNh
YSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vbW9uYWNvLmR0c2kKPiAr
KysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vbW9uYWNvLmR0c2kKClsgLi4uIF0KCj4gQEAg
LTYyMjUsNiArNjMyMyw1MiBAQCB0bG1tOiBwaW5jdHJsQGYxMDAwMDAgewo+ICAJCQkjaW50ZXJy
dXB0LWNlbGxzID0gPDI+Owo+ICAJCQl3YWtldXAtcGFyZW50ID0gPCZwZGM+Owo+ICAKPiArCQkJ
cGNpZTBfZXBfZGVmYXVsdF9zdGF0ZTogcGNpZTAtZXAtZGVmYXVsdC1zdGF0ZSB7Cj4gKwkJCQl3
YWtlLXBpbnMgewo+ICsJCQkJCXBpbnMgPSAiZ3BpbzAiOwo+ICsJCQkJCWZ1bmN0aW9uID0gImdw
aW8iOwo+ICsJCQkJCWRyaXZlLXN0cmVuZ3RoID0gPDI+Owo+ICsJCQkJCW91dHB1dC1sb3c7Cgpb
U2V2ZXJpdHk6IE1lZGl1bV0KV2lsbCBjb25maWd1cmluZyB0aGlzIHBpbiBhcyBvdXRwdXQtbG93
IGNhdXNlIGEgc3B1cmlvdXMgUENJZSBXQUtFIyBhc3NlcnRpb24/CgpTaW5jZSB0aGUgZW5kcG9p
bnQgbm9kZXMgb21pdCB3YWtlLWdwaW9zLCB0aGUgZW5kcG9pbnQgZHJpdmVyIGluCmRyaXZlcnMv
cGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS1lcC5jIHdpbGwgbm90IHJlcXVlc3QgdGhlIEdQ
SU8gdG8KbG9naWNhbGx5IGRlLWFzc2VydCBpdC4gQmVjYXVzZSB0aGlzIGNvbmZpZ3VyZXMgdGhl
IHBpbiB0byBvdXRwdXQgMFYsIHdvbid0CnRoZSBhY3RpdmUtbG93IFdBS0UjIHNpZ25hbCByZW1h
aW4gcGVybWFuZW50bHkgZHJpdmVuIGxvdyBieSBkZWZhdWx0PwoKVGhpcyBjb3VsZCBjYXVzZSB0
aGUgZW5kcG9pbnQgdG8gY29udGludW91c2x5IGFzc2VydCB0aGUgV0FLRSMgc2lnbmFsIHRvIHRo
ZQpob3N0LCBwb3RlbnRpYWxseSBwcmV2ZW50aW5nIHRoZSBob3N0IGZyb20gc2xlZXBpbmcgb3Ig
Y2F1c2luZyBhIHdha2UKaW50ZXJydXB0IHN0b3JtLgoKPiArCQkJCX07Cj4gKwo+ICsJCQkJY2xr
cmVxLXBpbnMgewoKWyAuLi4gXQoKPiArCQkJcGNpZTFfZXBfZGVmYXVsdF9zdGF0ZTogcGNpZTEt
ZXAtZGVmYXVsdC1zdGF0ZSB7Cj4gKwkJCQl3YWtlLXBpbnMgewo+ICsJCQkJCXBpbnMgPSAiZ3Bp
bzIxIjsKPiArCQkJCQlmdW5jdGlvbiA9ICJncGlvIjsKPiArCQkJCQlkcml2ZS1zdHJlbmd0aCA9
IDwyPjsKPiArCQkJCQlvdXRwdXQtbG93OwoKW1NldmVyaXR5OiBNZWRpdW1dCkRvZXMgdGhpcyBo
YXZlIHRoZSBzYW1lIGNvbnRpbnVvdXMgV0FLRSMgYXNzZXJ0aW9uIGlzc3VlIGFzCnBjaWUwX2Vw
X2RlZmF1bHRfc3RhdGUgYWJvdmU/Cgo+ICsJCQkJfTsKPiArCj4gKwkJCQljbGtyZXEtcGlucyB7
CgpbIC4uLiBdCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8j
L3BhdGNoc2V0LzIwMjYwOTIxLW1vbmFjb19lcC12MS0wLTYzYzUyODJmYjBkYkBvc3MucXVhbGNv
bW0uY29tP3BhcnQ9NgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
