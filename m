Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 675CEFC5926
	for <linux-phy@archiver.kernel.org>; Thu, 26 Feb 2026 10:45:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XFsREdRZBvQBKeXpNoldx4Q1/C7vNQw/1cpit4czLYE=; b=iLUcJjmMPfMqc8
	4p+W0hi8w9YTd5EhHUdQ/0IrcwWTpeFuzVCxjdIVIS5LHHr0AlS6FLio7eEkwGB59Uzfn1xqtzYfE
	z2qOCxbgug/Ju6swJNFh7bXzNrKooYNh2Iujw8QBFZolUycP/DoA9P3pL3tvO8DSAHIrRmrVy2+F/
	N6WKAUy6aTPD/HP6VvxIkm58UxuFxaana5Pi3QfxCN6P74zZIypKmk4aQzQfx1NapWAO5YQtvasKh
	hwnfSdcvXYBCO3u7ENkaaJrrreF8GVO5M/rA09vgtACgbPNBRI4F/IIF7xJHDy5O7rEb0XUE8nam/
	c5XO8W5Zi/2k192T8YaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvYsH-00000005ws2-3tTu;
	Thu, 26 Feb 2026 10:45:41 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvYsF-00000005wrD-0iIC;
	Thu, 26 Feb 2026 10:45:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1772102736;
	bh=6YFT7Dv9/RPthcEUnhhwy5zDoUaHap7U9kpRpUeIPV4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=aOKhl1gYmC58Q5XnPaaVFV4AX+HRZb/FaZT8kvMrbAX4ocU8UvOwkOrmxuMbZExjm
	 q/5pxtHOPqwZtl4qTw/eJkvwmwu5Yj9BE8qGvk6kr1AVqhRzDERERpxn0XgjJTSvtj
	 wPWqCgfmYc2RdUxfhGerzWAUOPfTrzvqV1AHbpTXLngoKvpWhap3qPd5vgpOjw+QmD
	 jnx5GXl85lesOX+SfuCKuFHcINonNKENolDlEjaEzUzEdf6A2Y+z2QRqnjOM6Ck3Ao
	 xcyP/cF9XTE1tbDfDSOKNbv0yQ8lZjCVnr0uv25vTWPWTLA0Vw3Efc6/I3SM5fQhuC
	 zmAai5oTQnjcg==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 6C83017E0029;
	Thu, 26 Feb 2026 11:45:35 +0100 (CET)
Message-ID: <84f22f00-e3eb-4ea5-999e-260c81f29338@collabora.com>
Date: Thu, 26 Feb 2026 11:45:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 16/23] scsi: ufs: mediatek: Clean up logging prints
To: =?UTF-8?B?UGV0ZXIgV2FuZyAo546L5L+h5Y+LKQ==?= <peter.wang@mediatek.com>,
 "chu.stanley@gmail.com" <chu.stanley@gmail.com>,
 "robh@kernel.org" <robh@kernel.org>,
 =?UTF-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>,
 "kishon@kernel.org" <kishon@kernel.org>,
 "James.Bottomley@hansenpartnership.com"
 <James.Bottomley@hansenpartnership.com>,
 "bvanassche@acm.org" <bvanassche@acm.org>,
 =?UTF-8?B?Q2hhb3RpYW4gSmluZyAo5LqV5pyd5aSpKQ==?=
 <Chaotian.Jing@mediatek.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "nicolas.frattaroli@collabora.com" <nicolas.frattaroli@collabora.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "neil.armstrong@linaro.org" <neil.armstrong@linaro.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "avri.altman@wdc.com" <avri.altman@wdc.com>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>
Cc: "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
 "kernel@collabora.com" <kernel@collabora.com>
References: <20260216-mt8196-ufs-v7-0-b5f2907c6da7@collabora.com>
 <20260216-mt8196-ufs-v7-16-b5f2907c6da7@collabora.com>
 <c333898413d249c017430d4ae98bc7be3bf33a64.camel@mediatek.com>
 <2575185.irdbgypaU6@workhorse>
 <f0e97a38-a11b-4e69-902a-e0ccd0dc4540@collabora.com>
 <259b24885e5e721ae562d27dd761b02e6a68c971.camel@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <259b24885e5e721ae562d27dd761b02e6a68c971.camel@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_024539_501159_D7FB9098 
X-CRM114-Status: GOOD (  19.15  )
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

SWwgMjYvMDIvMjYgMDg6MDAsIFBldGVyIFdhbmcgKOeOi+S/oeWPiykgaGEgc2NyaXR0bzoKPiBP
biBXZWQsIDIwMjYtMDItMjUgYXQgMTQ6MTggKzAxMDAsIEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJl
Z25vIHdyb3RlOgo+Pj4gRGVwZW5kcyBvbiB5b3VyIHZpZXcgb2Ygd2hhdCdzIHVzZWZ1bCBpbmZv
cm1hdGlvbiBmb3IgdGhlIHVzZXIuCj4+Pgo+Pj4gSSBjYW4gY2hhbmdlIGJvdGggb2YgdGhlc2Ug
YmFjayB0byBfaW5mbyBpZiBJIGhhdmUgdG8gc2VuZCBvdXQgYQo+Pj4gbmV4dAo+Pj4gcmV2aXNp
b24sIGp1c3QgdG8gZ2V0IHRoaXMgdGhyb3VnaCB0aG91Z2guCj4+Pgo+Pgo+PiBEZWZpbml0ZWx5
IGRvbid0IGNoYW5nZSB0aGF0IGJhY2sgdG8gZGV2X2luZm8oKSBhcyB0aGlzIGlzIGRlYnVnZ2lu
Zwo+PiBpbmZvcm1hdGlvbgo+PiB0aGF0IHNwYW1zIHRoZSBrZXJuZWwgbG9nIGZvciBubyByZWFz
b24uCj4+Cj4+IFRoaXMgaGFzIHRvIGJlIGRldl9kYmcoKS4KPj4KPj4gUmVnYXJkcywKPj4gQW5n
ZWxvCj4+Cj4+Pgo+IAo+IEhpIEFuZ2Vsb0dpb2FjY2hpbm8sIE5pY29sYXMsCj4gCj4gQXQgbGVh
c3QsICJkZXZpY2UgcmVzZXQgZG9uZSIgaXMgaW1wb3J0YW50IGluZm9ybWF0aW9uIHRoYXQKPiB1
c2VycyB3b3VsZCBjYXJlIGFib3V0LCBhbmQgaXQgc2hvdWxkIG5vdCBzcGFtIHRoZSBrZXJuZWwg
bG9nLgo+IFlvdSB3b3VsZG4ndCBleHBlY3QgZGV2aWNlIHJlc2V0cyB0byBvY2N1ciByZXBlYXRl
ZGx5LCB3b3VsZCB5b3U/Cj4gCgpTb3JyeSBQZXRlciwgYnV0IEknZCBhcmd1ZSB0aGF0IHRoZSB1
c2VycyBkb24ndCBjYXJlIGFib3V0IGhvdyBtdWNoIGFuZCB3aGVuCnRoZWlyIFVGUyBkZXZpY2Ug
cmVzZXRzLiBVc2VycyBqdXN0IHdhbnQgdG8gdXNlIGEgZGV2aWNlLCB3aXRob3V0IGNhcmluZwph
Ym91dCBhbnkgaW1wbGVtZW50YXRpb24gZGV0YWlsLgpUaGUgc3Bpcml0IGlzOiAicmFkaW8gc2ls
ZW5jZSBhcyBsb25nIGFzIGV2ZXJ5dGhpbmcgd29ya3MgZ29vZCIuCgpQb3dlciB1c2VycyBtaWdo
dCB3YW50IHRvIGNoZWNrIHRoZSBrZXJuZWwgbG9nIGluIGEgcHJvYmxlbWF0aWMgc2NlbmFyaW8g
dG8Kc2VlayBmb3IgYSBtZXNzYWdlIHRoYXQgc2F5cyB0aGF0ICJzb21ldGhpbmcgd2VudCBob3Jy
aWJseSB3cm9uZyIsIGJ1dCBvdGhlcgp0aGFuIGRldmVsb3BlcnMsIG5vYm9keSBjYXJlcyBhYm91
dCB3aGVuIFVGUyByZXNldHMuCgogRnJvbSBhIGRldmVsb3BlciBzdGFuZHBvaW50LCBJIGRvIGFn
cmVlIHdpdGggeW91IGluIHRoYXQgd2UgZG8gKm5vdCogd2FudCB0bwpzZWUgZGV2aWNlIHJlc2V0
cyBvY2N1cnJpbmcgcmVwZWF0ZWRseSwgYnV0IHdlJ3JlIHRhbGtpbmcgYWJvdXQgYSB1c2VyIGhl
cmUuCgpTZWUgaXQgbGlrZSB0aGlzLi4uIGltYWdpbmUgaWYgYWxsIG9mIHRoZSBkZXZpY2UgZHJp
dmVycyBpbiB0aGUgTGludXgga2VybmVsCndvdWxkIHNheSAiZGV2aWNlIHJlc2V0IGRvbmUiOiBo
b3cgbWFueSBkZXZpY2VzIGFyZSBwcmVzZW50IGluIG9uZSBTb0MgKG9mCmNvdXJzZSwgaWdub3Jp
bmcgc3ViZGV2aWNlcyBvbiBhIGJvYXJkKT8KCk9mIGFsbCB0aG9zZSBtYW55IGRldmljZXMsIGlm
IGFsbCBvZiB0aGVtIHdvdWxkIHByaW50IGEgbWVzc2FnZSBzYXlpbmcgdGhhdAp0aGVpciByZXNl
dCBpcyBkb25lIChhbmQgb3BlcmF0aW9uIGlzIG9rKSwgdGhlIGtlcm5lbCBsb2cgd291bGQgZ2V0
IHF1aXRlIGEKYml0IGNsb2dnZWQsIHlvdSdkIG5lZWQgdG8gaGF2ZSBhIGJpZ2dlciBSQU0gY2Fy
dmVvdXQganVzdCBmb3IgLi4gd2VsbCwgdGhlCmtlcm5lbCBsb2cgaXRzZWxmLCBhbmQgdGhlbiB5
b3UnZCBoYXZlIHRvIGdyZXAgdGhlIGxvZywgaG9waW5nIHRvIGZpbmQgdGhlCm9uZSBzaW5nbGUg
bGluZSB0aGF0IGhlbHBzIHlvdSBmaW5kaW5nIGFuIGlzc3VlIHRoYXQgeW91J3JlIGhhdmluZy4K
ClRoaXMgaXMgdGhlIHJlYXNvbiB3aHkga2VlcGluZyBhbnkgbWVzc2FnZSB0aGF0IGlzIG5vdCBl
eGFjdGx5IGEgKnNpbmdsZSoKaW5kaWNhdGlvbiBvZiBhbiBlcnJvciAoc28sIGFuIGFjdHVhbCBp
c3N1ZSkgYXMgYSBkZXZfZGJnKCkgaXMgYSBzZW5zaWJsZQp0aGluZyB0byBkbyAoYW5kIG9mIGNv
dXJzZSwgd2l0aCBkeW5hbWljIGRlYnVnIGluIHRoZSBrZXJuZWwsIHlvdSBjYW4gYWx3YXlzCmFj
dGl2YXRlIHRoYXQgb24tdGhlLWZseSB3aXRob3V0IHJlY29tcGlsaW5nIHRvIHZlcmlmeSBmdW5j
dGlvbmFsaXR5IHNob3VsZAp5b3UgaGF2ZSBhbnkgaW1tZWRpYXRlIGRvdWJ0KS4KClNvIHdoaWxl
IEkgYWdyZWUgYWJvdXQgeW91ciByZWFzb25zLCBJIHZlcnkgc3Ryb25nbHkgZGlzYWdyZWUgYWJv
dXQgaGF2aW5nCnRoaXMgbWVzc2FnZSBhcyBhIGRldl9pbmZvKCksIG5vciBhbnl0aGluZyBlbHNl
IHRoYXQgaXMgbm90IGRldl9kYmcoKSByZWFsbHkuCgpSZWdhcmRzLApBbmdlbG8KCj4gVGhhbmtz
Cj4gUGV0ZXIKPiAKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
