Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0626EEB64DD
	for <linux-phy@archiver.kernel.org>; Wed,  5 Jul 2023 10:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MlU7SR7+BbZEnWFlSPN9wbhp78NJTqjSvsY/puETbDc=; b=OAIn0GH1xea/om
	fnsow8/iu5sqiWlC75KNAMNSHNUNuGkYQlI7VOsxjAw0FcfWSb+6dMere2CZYUXX8ZJcEOF7oJm89
	4/Bm3hchi9hYU5Md3nlQbDb4+tHnxJ1Ej2w4wseAajSuNk99HNp9ijc2FKQb6gEBO7HXuLoMowWev
	P9i2u722tQulv/mHxe8lqTwWuGJ2Wo73EAWcIAcwGzt+tfRHasrZsVd1iamlE6zoPbI7k+IBLL18C
	hUWPJpq1IXn9DWaZt5wG22zHUym0rAs7w0Iuu9A+fENaO1q79kC2yW0iCQGD/fZP5REgNfjVjoKW8
	sWCx2AvrBfobSzDit9Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGzJ7-00FQw9-1x;
	Wed, 05 Jul 2023 10:00:21 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGzJ4-00FQuO-1u;
	Wed, 05 Jul 2023 10:00:20 +0000
Received: from [IPV6:2001:b07:2ed:14ed:c5f8:7372:f042:90a2] (unknown [IPv6:2001:b07:2ed:14ed:c5f8:7372:f042:90a2])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9873C66018CF;
	Wed,  5 Jul 2023 11:00:16 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1688551217;
	bh=LWBUM2eAeMbEAdWCxLKa7EIHcDRWR8YL8nCssD1CCe4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=djcXx8aPIDfdDlqSgm5afDE69qEwnOwDiGHiwcfdXow+r4J+SCeO8vfhHEpRmy++N
	 wUtFswCrDP3DK9E5rbh2B4dk1cQuWMDKRYXzlCTnQlE5SBYfuyRmrevTK9m2zwSrKA
	 PH5TxX47sCVBkIE8wXVkb2UMQcZF2j2nluOGAQ2bohdW2xOC7r7Mg9WjA28M0dq+1F
	 hl9TZT1pyuRRud/QCMpF4Lcj4PA9l2GwjRh69yhVNE4rT4xGsxh8Vt4d6cgf7Da2rA
	 9bZpqViGH0w/nlQI+eE+fOWUTCjEYyKoi/1nrDA+kbDpGtCD9lw7sHPboA4nk05rTg
	 5qTqBR6pszZew==
Message-ID: <be88f6db-8b07-1767-f48c-24a215006a4f@collabora.com>
Date: Wed, 5 Jul 2023 12:00:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 4/4] phy: mediatek: tphy: Convert to
 devm_platform_ioremap_resource()
Content-Language: en-US
To: Yangtao Li <frank.li@vivo.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230705090126.26854-1-frank.li@vivo.com>
 <20230705090126.26854-4-frank.li@vivo.com>
 <ddc05f70-7075-97ab-1c94-cb3d5839ef2b@collabora.com>
 <6a1bde36-fbf9-9ddd-e47f-f3c21a3528f7@vivo.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <6a1bde36-fbf9-9ddd-e47f-f3c21a3528f7@vivo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_030018_778897_1E1FF38A 
X-CRM114-Status: GOOD (  20.05  )
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

SWwgMDUvMDcvMjMgMTE6MzAsIFlhbmd0YW8gTGkgaGEgc2NyaXR0bzoKPiBISSBBbmdlbG9HaW9h
Y2NoaW5vLAo+IAo+IE9uIDIwMjMvNy81IDE3OjIyLCBBbmdlbG9HaW9hY2NoaW5vIERlbCBSZWdu
byB3cm90ZToKPj4gSWwgMDUvMDcvMjMgMTE6MDEsIFlhbmd0YW8gTGkgaGEgc2NyaXR0bzoKPj4+
IFVzZSBkZXZtX3BsYXRmb3JtX2lvcmVtYXBfcmVzb3VyY2UoKSB0byBzaW1wbGlmeSBjb2RlLgo+
Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IFlhbmd0YW8gTGkgPGZyYW5rLmxpQHZpdm8uY29tPgo+Pj4g
LS0tCj4+PiDCoCBkcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLXRwaHkuYyB8IDEwICsrKy0t
LS0tLS0KPj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25z
KC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGstdHBo
eS5jIAo+Pj4gYi9kcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLXRwaHkuYwo+Pj4gaW5kZXgg
MGQxMTBlNTBiYmZkLi5jYjdhNGU2ZWEwMTcgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL3BoeS9t
ZWRpYXRlay9waHktbXRrLXRwaHkuYwo+Pj4gKysrIGIvZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5
LW10ay10cGh5LmMKPj4+IEBAIC0xNTU0LDcgKzE1NTQsNiBAQCBzdGF0aWMgaW50IG10a190cGh5
X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4+PiDCoMKgwqDCoMKgIHN0cnVj
dCBkZXZpY2Vfbm9kZSAqbnAgPSBkZXYtPm9mX25vZGU7Cj4+PiDCoMKgwqDCoMKgIHN0cnVjdCBk
ZXZpY2Vfbm9kZSAqY2hpbGRfbnA7Cj4+PiDCoMKgwqDCoMKgIHN0cnVjdCBwaHlfcHJvdmlkZXIg
KnByb3ZpZGVyOwo+Pj4gLcKgwqDCoCBzdHJ1Y3QgcmVzb3VyY2UgKnNpZl9yZXM7Cj4+PiDCoMKg
wqDCoMKgIHN0cnVjdCBtdGtfdHBoeSAqdHBoeTsKPj4+IMKgwqDCoMKgwqAgc3RydWN0IHJlc291
cmNlIHJlczsKPj4+IMKgwqDCoMKgwqAgaW50IHBvcnQsIHJldHZhbDsKPj4+IEBAIC0xNTc2LDE1
ICsxNTc1LDEyIEBAIHN0YXRpYyBpbnQgbXRrX3RwaHlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldikKPj4+IMKgwqDCoMKgwqAgdHBoeS0+ZGV2ID0gZGV2Owo+Pj4gwqDCoMKgwqDC
oCBwbGF0Zm9ybV9zZXRfZHJ2ZGF0YShwZGV2LCB0cGh5KTsKPj4+IMKgIC3CoMKgwqAgc2lmX3Jl
cyA9IHBsYXRmb3JtX2dldF9yZXNvdXJjZShwZGV2LCBJT1JFU09VUkNFX01FTSwgMCk7Cj4+PiDC
oMKgwqDCoMKgIC8qIFNBVEEgcGh5IG9mIFYxIG5lZWRuJ3QgaXQgaWYgbm90IHNoYXJlZCB3aXRo
IFBDSWUgb3IgVVNCICovCj4+PiAtwqDCoMKgIGlmIChzaWZfcmVzICYmIHRwaHktPnBkYXRhLT52
ZXJzaW9uID09IE1US19QSFlfVjEpIHsKPj4+ICvCoMKgwqAgaWYgKHRwaHktPnBkYXRhLT52ZXJz
aW9uID09IE1US19QSFlfVjEpIHsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCAvKiBnZXQgYmFua3Mg
c2hhcmVkIGJ5IG11bHRpcGxlIHBoeXMgKi8KPj4+IC3CoMKgwqDCoMKgwqDCoCB0cGh5LT5zaWZf
YmFzZSA9IGRldm1faW9yZW1hcF9yZXNvdXJjZShkZXYsIHNpZl9yZXMpOwo+Pj4gLcKgwqDCoMKg
wqDCoMKgIGlmIChJU19FUlIodHBoeS0+c2lmX2Jhc2UpKSB7Cj4+PiAtwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBkZXZfZXJyKGRldiwgImZhaWxlZCB0byByZW1hcCBzaWYgcmVnc1xuIik7Cj4+PiAr
wqDCoMKgwqDCoMKgwqAgdHBoeS0+c2lmX2Jhc2UgPSBkZXZtX3BsYXRmb3JtX2lvcmVtYXBfcmVz
b3VyY2UocGRldiwgMCk7Cj4+PiArwqDCoMKgwqDCoMKgwqAgaWYgKElTX0VSUih0cGh5LT5zaWZf
YmFzZSkgJiYgUFRSX0VSUih0cGh5LT5zaWZfYmFzZSkgIT0gLUVJTlZBTCkKPj4KPj4gVGhhdCdz
IHdyb25nLiBZb3Ugd2FudCB0byByZXR1cm4gYW55IGVycm9yIHVuY29uZGl0aW9uYWxseSwgYXMg
dGhlIFYxIFBIWSAqbmVlZHMqCj4+IHRoZSBzaWYgaW9zcGFjZSBhbmQgdGhlcmUncyBub3RoaW5n
IGFmdGVyd2FyZHMgcmV0cnlpbmcgdGhpcy4KPiAKPiAKPiBXaGVuIHNpZl9yZXMgaXMgbm90IGNv
bmZpZ3VyZWQsIGFuIElPTUVNX0VSUl9QVFIoLUVJTlZBTCkgZXJyb3Igd2lsbCBiZSByZXR1cm5l
ZCBpbiAKPiBfX2Rldm1faW9yZW1hcF9yZXNvdXJjZS4KPiAKPiBUaGlzIGtpbmQgb2YgZXJyb3Ig
aXMgaWdub3JlZCBpbiB0aGUgbmV3bHkgYWRkZWQgY29kZSwgYW5kIHRoZSBkcml2aW5nIHByb2Jl
IAo+IHByb2Nlc3Mgd2lsbCBub3QgYmUgaW50ZXJydXB0ZWQgYXQgdGhpcyB0aW1lLgo+IAo+IFdo
YXQgZGlkIEkgbWlzcz8KPiAKCkFzIEkgc2FpZCwgTVRLX1BIWV9WMSAqbmVlZHMqIHNpZjsgZGV2
bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNlKCkgcmV0dXJucyBhCmhhbmRsZSB0byB0aGF0IGlv
c3BhY2UsIG9yIGVycm9yLgoKdHBoeS0+c2lmX2Jhc2UgPSBkZXZtX3BsYXRmb3JtX2lvcmVtYXBf
cmVzb3VyY2UocGRldiwgMCk7CmlmIChJU19FUlIodHBoeS0+c2lmX2Jhc2UpKQoJcmV0dXJuIFBU
Ul9FUlIodHBoeS0+c2lmX2Jhc2UpOwoKUmVnYXJkcywKQW5nZWxvCgo+IFRoeCwKPiAKPiBZYW5n
dGFvCj4gCj4gCj4+Cj4+IFBsZWFzZSBmaXguCj4+Cj4+IFJlZ2FyZHMsCj4+IEFuZ2Vsbwo+Pgo+
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIFBUUl9FUlIodHBoeS0+c2lmX2Jh
c2UpOwo+Pj4gLcKgwqDCoMKgwqDCoMKgIH0KPj4+IMKgwqDCoMKgwqAgfQo+Pj4gwqAgwqDCoMKg
wqDCoCBpZiAodHBoeS0+cGRhdGEtPnZlcnNpb24gPCBNVEtfUEhZX1YzKSB7Cj4+Cj4+CgoKCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
