Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CF7ECD4F52
	for <linux-phy@archiver.kernel.org>; Mon, 18 May 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Subject:CC:To:MIME-Version:
	From:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bhlzFmNbqBeBJdxaJ3cbxjwS8mGNjAez8WladEN7ZYw=; b=C3kr0hxVJz91GR/VmRaIVdh37y
	9oZxOoi1pmTb7QW28/xhZY9enWmdyaZZnSXsa+jRiBQ+AHXuuQNlVZ0Gy1LXH8ovbCHQBgepjzi50
	pdzDvy4h1VajrnKzAqovh9Y+kbbT7/gchiZ+st3mrsTEKUIG2UL6gilWWmQzVxNUm8VwMezIGnW7O
	kY9jmCF3PpX5umHNp8rTlVJ80ljNv5nkQS6vUeQIrnWiYHgJncwOVS8OZqVVV6lo5Zg/knhwrNq5V
	K/ryAg6QPMgXfzVxN3lxs9fZKr4Jt8tIx/14NZ9rV9NCLQMH3hYXZJhOwC+Oy5AE9Ig8iLrxh0lmg
	Sgavi4tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOtam-0000000Erg5-3xLA;
	Mon, 18 May 2026 08:44:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOtam-0000000Erft-25a6
	for linux-phy@bombadil.infradead.org;
	Mon, 18 May 2026 08:44:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:References:Subject:CC:To:MIME-Version:From:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=MoSM3oNDxks2O9L5VU9jc7lW6/H6+hqc8WMoI8bWQlk=; b=OpdKRHbhCMnbIQeSFSrwK2Qb7a
	5epEG3QaYRR4qawihg1BwhrV1xGB9DGKdVN7iPXUxJfsQ1AU4Q0ZkAOes47g5sUY/OlBNOnAx5i8k
	yQkvmHPv7y+iQsPjqWKERVN7X18I9x1ko/ktKx00IkZ9yc8lzrcDLplGAQt3gOTjm2ybb152nZ44A
	3W7GFA3ovSolC27gew1cnxKKCoCeZNvMh+OAVbqhi+KRVTNfJjLA0DhlYPGRsthGYCgGfF46xMVni
	LLHp4XwwHsHv5fiBDOoVBx45Nborh6ypDGMK8l1hiUsK5zp22HRy3+L+88ArXR7pCV4yurQNtcfyB
	324zPXlQ==;
Received: from m16.mail.126.com ([220.197.31.8])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOtai-0000000ARFL-18IN
	for linux-phy@lists.infradead.org;
	Mon, 18 May 2026 08:44:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=Message-ID:Date:From:MIME-Version:To:Subject:
	Content-Type; bh=MoSM3oNDxks2O9L5VU9jc7lW6/H6+hqc8WMoI8bWQlk=;
	b=jpqZYLoyjUcdk5lOEV8eP/pTvAef7X3LxosODLi1QalD5vbO+9oFyQIFlXOni1
	V7n1FUk3inJM76IGXsfMHy/qcekdKJbfMC5SG56zViDbkaa4PO04a2YR50r2HlVF
	kv1ghZTp0FPUiml/1Zevn6JyLLwys3SdASnpydgb/SqsA=
Received: from localhost.localdomain (unknown [])
	by gzga-smtp-mtada-g0-2 (Coremail) with SMTP id _____wDXzwBf0QpqTvPRBg--.65235S2;
	Mon, 18 May 2026 16:44:16 +0800 (CST)
Message-ID: <6A0AD168.4040500@126.com>
Date: Mon, 18 May 2026 16:44:24 +0800
From: Hongling Zeng <zhongling0719@126.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: vkoul@kernel.org, neil.armstrong@linaro.org, johan@kernel.org, 
 kishon@kernel.org, rogerq@ti.com
CC: Hongling Zeng <zenghongling@kylinos.cn>, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Sashiko AI <sashiko@kernel.org>,
 stable@vger.kernel.org
Subject: Re: [PATCH v5 4/4] phy: ti-pipe3: Fix clock leak in init error path
References: <20260518062938.48114-1-zenghongling@kylinos.cn> <20260518062938.48114-5-zenghongling@kylinos.cn>
In-Reply-To: <20260518062938.48114-5-zenghongling@kylinos.cn>
X-CM-TRANSID: _____wDXzwBf0QpqTvPRBg--.65235S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7CrWDZFWrZw1DXw1fWFyUJrb_yoW8uFy3pr
	ZxJa95Crn5tw4vy3Wxtw4UX3WFqw15GayagFWjgw4rZ3ZxAr1DWFWxXr47ZryDCrW8CF4f
	t3WDtF13t3WUZF7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UxEfrUUUUU=
X-Originating-IP: [112.64.161.44]
X-CM-SenderInfo: x2kr0wpolqwiqxrzqiyswou0bp/xtbBoQCpemoK0WCUdQAA3C
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_094449_247532_69B5ABB3 
X-CRM114-Status: GOOD (  17.16  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

LS0gClNhc2hpa28gQUkgcmV2aWV3IKGkaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIw
MjYwNTE4MDYyOTM4LjQ4MTE0LTEtemVuZ2hvbmdsaW5nQGt5bGlub3MuY24/cGFydD00Ci0tCkhp
OgogIFJlc2VuZCB0byBmaXggdGhyZWFkaW5nIC8gZGVsaXZlcnkgaXNzdWVzLgogICBUaGFuayB5
b3UgZm9yIGlkZW50aWZ5aW5nIHRoZXNlIFNBVEEgbW9kZSBpc3N1ZXMuIEJvdGggYXJlIHByZS1l
eGlzdGluZyBidWdzIGluCiAgIHRoZSBjdXJyZW50IGNvZGViYXNlIGFuZCB3ZXJlIG5vdCBpbnRy
b2R1Y2VkIGJ5IHRoaXMgc2VyaWVzLgoKICAgVGhpcyBzZXJpZXMgZm9jdXNlcyBvbiBzcGVjaWZp
YyBFUFJPQkVfREVGRVIgYW5kIHJlc291cmNlIGxlYWsgZml4ZXMuIFRoZSBTQVRBCiAgIG1vZGUg
aXNzdWVzIHlvdSd2ZSBmb3VuZCBhcmUgdmFsaWQgYnV0IGFmZmVjdCBkaWZmZXJlbnQgY29kZSBw
YXRocyBhbmQgc2hvdWxkIGJlCiAgIGFkZHJlc3NlZCBzZXBhcmF0ZWx5IHRvIGtlZXAgdGhlIHBh
dGNoIHNlcmllcyBmb2N1c2VkLgoKICAgSSBjYW4gc3VibWl0IGZvbGxvdy11cCBwYXRjaGVzIHRv
IGZpeCB0aGVzZSBTQVRBIG1vZGUgaXNzdWVzLiBXb3VsZCB5b3UgcHJlZmVyCiAgIHRoZW0gaW4g
djYgb3IgYXMgc2VwYXJhdGUgcGF0Y2hlcyBhZnRlciB0aGlzIHNlcmllcz8KCiAgIEJlc3QgcmVn
YXJkcywKICAgSG9uZ2xpbmcKICAKCtTaIDIwMjbE6jA11MIxOMjVIDE0OjI5LCBIb25nbGluZyBa
ZW5nINC0tcA6Cj4gV2hlbiByZWdtYXBfdXBkYXRlX2JpdHMoKSBmYWlscyBpbiB0aV9waXBlM19p
bml0KCkgZm9yIFBDSWUgbW9kZSwKPiB0aGUgZnVuY3Rpb24gcmV0dXJucyB0aGUgZXJyb3Igd2l0
aG91dCBjYWxsaW5nIHRpX3BpcGUzX2Rpc2FibGVfY2xvY2tzKCkuCj4gVGhpcyBsZWF2ZXMgdGhl
IGNsb2NrcyBwZXJtYW5lbnRseSBlbmFibGVkIHNpbmNlIHRoZSBQSFkgZnJhbWV3b3JrIHdvbid0
Cj4gaW52b2tlIHRoZSAuZXhpdCBjYWxsYmFjayBvbiBpbml0IGZhaWx1cmUuCj4KPiBGaXggdGhp
cyBieSBhZGRpbmcgcHJvcGVyIGNsb2NrIGNsZWFudXAgaW4gdGhlIFBDSWUgZXJyb3IgcGF0aCwg
Y29uc2lzdGVudAo+IHdpdGggaG93IHRoZSBEUExMIHByb2dyYW0gZXJyb3IgcGF0aCBoYW5kbGVz
IGNsZWFudXAuCj4KPiBGaXhlczogMjM0NzM4ZWEzMzkwICgicGh5OiB0aS1waXBlMzogbW92ZSBj
bGsgaW5pdGlhbGl6YXRpb24gdG8gYSBzZXBhcmF0ZSBmdW5jdGlvbiIpCj4gUmVwb3J0ZWQtYnk6
IFNhc2hpa28gQUkgPHNhc2hpa29Aa2VybmVsLm9yZz4KPiBDbG9zZXM6IGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL2FsbC8yMDI2MDUxODAyMzY1Ny40MTg1MkMyQkNCMEBzbXRwLmtlcm5lbC5vcmcv
Cj4gU2lnbmVkLW9mZi1ieTogSG9uZ2xpbmcgWmVuZyA8emVuZ2hvbmdsaW5nQGt5bGlub3MuY24+
Cj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPgo+IC0tLQo+IENoYW5nZSBpbiB2NToKPiAg
ICAtQWRkIEZpeCBpZ25vcmVkIGNsb2NrIGVuYWJsZSByZXR1cm4gdmFsdWUgaW4gaW5pdCBwYXRj
aAo+IC0tLQo+ICAgZHJpdmVycy9waHkvdGkvcGh5LXRpLXBpcGUzLmMgfCAyICsrCj4gICAxIGZp
bGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkv
dGkvcGh5LXRpLXBpcGUzLmMgYi9kcml2ZXJzL3BoeS90aS9waHktdGktcGlwZTMuYwo+IGluZGV4
IDllYzIyOGMyYTk0MC4uNDg5N2U0YmEyZDdkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3Rp
L3BoeS10aS1waXBlMy5jCj4gKysrIGIvZHJpdmVycy9waHkvdGkvcGh5LXRpLXBpcGUzLmMKPiBA
QCAtNTE4LDYgKzUxOCw4IEBAIHN0YXRpYyBpbnQgdGlfcGlwZTNfaW5pdChzdHJ1Y3QgcGh5ICp4
KQo+ICAgCQl2YWwgPSAweDk2IDw8IE9NQVBfQ1RSTF9QQ0lFX1BDU19ERUxBWV9DT1VOVF9TSElG
VDsKPiAgIAkJcmV0ID0gcmVnbWFwX3VwZGF0ZV9iaXRzKHBoeS0+cGNzX3N5c2NvbiwgcGh5LT5w
Y2llX3Bjc19yZWcsCj4gICAJCQkJCSBQQ0lFX1BDU19NQVNLLCB2YWwpOwo+ICsJCWlmIChyZXQp
Cj4gKwkJCXRpX3BpcGUzX2Rpc2FibGVfY2xvY2tzKHBoeSk7Cj4gICAJCXJldHVybiByZXQ7Cj4g
ICAJfQo+ICAgCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
