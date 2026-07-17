Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1176CC4450F
	for <linux-phy@archiver.kernel.org>; Fri, 17 Jul 2026 06:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vaQcLHBotJXhp/si/cLR6gVONzyYVp3JEXwbyq0Cx5k=; b=tJxBJosRfzTWnt
	X0XZ/idvCVKnoeeGBNA5kjJ+jURwn2hYVebUBDSlrFBKIoMzZl6DjY5lowmM3o4BUL+3SPBilrtYS
	wEM4J4afOWieRjpe6jlIwj55nRRSrM32QHAEzazh4sl18mMT3XAIdy6P/NGRHnoBYsfOLGs4l5EJm
	4y+NpHUVjUJ1NKwORPAfePHNFjoQMiyTY7GX05Tt3BfVHe/3ga7P96dUzhgA8UJdC5r9mcfwWP+AQ
	wjybGjT6T8kdBaPruxEA5lrS+zN5mr6JTNa+dBqxi7BigK3xo1KvrbwnqrINq5lm5PzfjKliV102o
	Hi/NGeJ0rGZOgYRVI4ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkc46-00000001GxT-2yOi;
	Fri, 17 Jul 2026 06:28:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkc45-00000001GwP-2F48
	for linux-phy@bombadil.infradead.org;
	Fri, 17 Jul 2026 06:28:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=YHiP6evwjPbQqK8L1EQutQLTUMUz7gccfKbMReIBbck=; b=GeqO7KbV4RiOSpW35stSOST9ly
	dykvCRzcIFM47b+GOTUSlVHzFV3HmEV+QpVpX4iojDKeGjAKRHLM4nTF/XCktBW2JOMBehcB7RDtA
	mOScI6ye7MjefLL3Bzgb+2o/yc5q1CX/UEvKRAr0akp4cEGzcCNZ87cBCpGj9TGe53cixudPPHCwC
	1b+ZjKsYoAXP29VhO9LukABUXHcX3jnyBaGFPOc+njMwiOs7JCXM3zAtRtRUXtor35HsJWBJQ9xNN
	jR+47WWaOOZ5fcxOAv98s+t48BzVpDaQjwTVyPtacUZHfhtaoX0w2zoybHMRtzOViAwlCyhDAqZ3A
	zPSCMK8g==;
Received: from mail-ed2-x0a.google.com ([2a00:1450:4864:33::a])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wkc41-0000000EZM9-0jrL
	for linux-phy@lists.infradead.org;
	Fri, 17 Jul 2026 06:28:52 +0000
Received: by mail-ed2-x0a.google.com with SMTP id 4fb4d7f45d1cf-69c13c316ffso1074049a12.0
        for <linux-phy@lists.infradead.org>; Thu, 16 Jul 2026 23:28:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784269725; cv=none;
        d=google.com; s=arc-20260327;
        b=TEpeDAyls0cp6STMhudQ7MZKo9zbUJmf5vztpbgTNueiZQykW6/FJDjm1BFFF4p1ST
         o5iZBy+yM5BOONczqPRM4Gz9zdWuiIA65fd6EWk+GCBdUtJi8C8sAMdBhCEQAaI9iuKB
         gn55nBLZTSnJWj6lImWGXgHXKh31yrsV69svYlyDLolKZ/iVDyjx93hSB/Ngww+Rt54i
         oR2QR0CY3rSdPsjYNAxVZpS53ndoPIfl5rMXWArLNexfHw/RhpmYNirpAsjFdtLk9AVx
         HxkGnfEhaOrpIZgomcIweZ4sFFSVZYmQKg2rv6lYOV78jOBiu64+2/YDOMhVnB8n53OU
         AQ+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=YHiP6evwjPbQqK8L1EQutQLTUMUz7gccfKbMReIBbck=;
        fh=vSnwXdMnBwVbonXoBzDsZqVGm8rbkL0aUQPlplHFMB4=;
        b=e2pRGc19M+D8qBcseEf9ai3CZjvoS0SRmolEZ5oLbx9KEAOURchFcrEA078QkRsL85
         nPuWAL46F9vI2juuJd0mT1b5QXCDytvN3FiGI89wCEEJXS1gdLLknEm+NM6AXyCmCi39
         HP375SccRgWZqChssWt/oiWOup5sARUt+c4R7JcMBmdaUMZeljwwqsQ1/mWQnMkQGhEN
         CTZFnDw3/sosp8f0antFyYbpUppaMaiNYf+ANRuu+npotdhitqGS872rhNsXm688xRh0
         /Z8AiDC1ASaIoNN506za6/jJ0G+b3EYgA6KWZrzaI5b6kORfCE+l5wD+lKCo2uNpf9La
         URaQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784269725; x=1784874525; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=YHiP6evwjPbQqK8L1EQutQLTUMUz7gccfKbMReIBbck=;
        b=HoC/QJU73DCk8cRwYLBPqp8UpawDnB7IRU93/9my55DUgoxAKjI8eTlPyJnyYpnao4
         xuoyKDrGXClxXiLYPgcPQK8oamU4xy1pSrSVzxzrydtBADQT16gVmYdy+jaUfLP6B1xs
         WPKUG+uL7RKvDRoqGm25JLXzYPas3D1lD4Te/7dxsEUrpdGkaz2qNFrO2RGjdZPWG1LG
         9/PSHoIiduFxToc/wLptH5o61FLwSHx12FphLoVVo7ZgNke7w5b594wwjZrrRUSnnP3i
         bPpxVDpjlkdO7A85v2S8eUJdepLNhpXg1uOCsW5VYdVssoIbQV+4s5S1ehk4/BjS+UfM
         izwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784269725; x=1784874525;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=YHiP6evwjPbQqK8L1EQutQLTUMUz7gccfKbMReIBbck=;
        b=jDnpeG0I/VBA0KG2QZLVxJ3Z/5lB5L142sP3TIz126vs8xsZi5L+6/T8sUr1FM+nZk
         uTldLz4+/lpRNfNAdjABbGlXjegz5MzuLjmq1K3XYvuEBsSP2L5bvUMU9mgqENNySHCg
         oDSJ2FmD29zxejvjhOaEFaCi9k0oCAumO8VWcRtn1BzyTEwB6ACgRAC6mNqbuBPx789R
         dk2USe/Nm0JmN+nZFSFU5Zuj/sw8PemXbdVZT6TvH6QGKf7gauGhMnBVvhM6aa0Kvsdy
         ZH9in4sDxTbdgOywmU6lbmGRmIYypgv8daXEZe8PJg6XEvcVchzD/EH7NDJOa+Z0m8Al
         VxiA==
X-Forwarded-Encrypted: i=1; AHgh+Rpl8MjD4DlvqK+8evLXJ/lHtrYZXgF2WFH6z7ovEh3xskp1CQpzQAUA79PyxmjgWuwx0fUpESo22Pw=@lists.infradead.org
X-Gm-Message-State: AOJu0YzyveJ9htPD6LbZxCb/Ia8gjXBv0oMW+plXUU3OGdcP6qdtog24
	6a6h0R8PbYTlwNbbAle5Yv0rKxAMsqVR9PDWp7/QaB3cwypyItvegWxAs+FkicZMk0xd2QioC6B
	lF2aMgZjB953dyYbGsMxDzrQVjHFMb8QDrY1j1TXjKg==
X-Gm-Gg: AfdE7cnm2QMNj1AAXyvzWB+3AbXa3NuaxcP6ft+GoN4pZmcYO3aci8dNN2jAX7mrP4v
	SQ2oPEM/rdRtFFcHuou91XOYM1nZCZgsvwqw63r2qRZMOJrnbFjLXaJR8yVLOU8rJF/bR0AYpV5
	jgYjkStVvKbTfwiq10A3pmGrc9VSkpcceRSCqP9YaRolCMGhyhoyAGyeQtp9yJQBn/Eq5WspzPS
	lgi5fi4SUGWiNy9XStdQEgi3Gongv0ANsw5DRY7VFOUTh9KPUnQ8iNgQgCuqCsB
X-Received: by 2002:a17:907:c248:b0:c0d:7c31:26a9 with SMTP id
 a640c23a62f3a-c16b4002edbmr59028266b.2.1784269724589; Thu, 16 Jul 2026
 23:28:44 -0700 (PDT)
MIME-Version: 1.0
References: <20260714191341.690906-1-coiaprant@gmail.com> <20260714191341.690906-7-coiaprant@gmail.com>
 <464cbdf3-2e9e-43ea-b30a-75b3d1b8a188@lunn.ch> <CALj3r0jdkDEjpO+7NOTGs+wgukKvD=fzFn4ewpurxxPswCE5GA@mail.gmail.com>
 <000c01dd1593$2ac0b0f0$804212d0$@trustnetic.com>
In-Reply-To: <000c01dd1593$2ac0b0f0$804212d0$@trustnetic.com>
From: Coia Prant <coiaprant@gmail.com>
Date: Fri, 17 Jul 2026 14:28:33 +0800
X-Gm-Features: AUfX_myHBcwddy6Oo5pOOK0tb7eS6ZkIgRUXXggid3ZrYcHNKgmGXLOcuUDQTlg
Message-ID: <CALj3r0hH=mF+8oVbisoECYo6HRuSdfSt_nuhFunHowyPsw2srQ@mail.gmail.com>
Subject: Re: [RFC PATCH 06/10] net: pcs: xpcs: improve SGMII AN state handling
 for Rockchip RK3568
To: Jiawen Wu <jiawenwu@trustnetic.com>
Cc: Andrew Lunn <andrew@lunn.ch>, kuba@kernel.org, davem@davemloft.net, 
	edumazet@google.com, pabeni@redhat.com, andrew+netdev@lunn.ch, 
	robh@kernel.org, krzk+dt@kernel.org, heiko@sntech.de, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, 
	Mengyuan Lou <mengyuanlou@net-swift.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260717_072849_561784_D8C42537 
X-CRM114-Status: GOOD (  46.48  )
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

Smlhd2VuIFd1IDxqaWF3ZW53dUB0cnVzdG5ldGljLmNvbT4g5LqOMjAyNuW5tDfmnIgxN+aXpeWR
qOS6lCAxMDoyM+WGmemBk++8mgo+Cj4gT24gV2VkLCBKdWwgMTUsIDIwMjYgNzowNSBBTSwgQ29p
YSBQcmFudCB3cm90ZToKPiA+IEFuZHJldyBMdW5uIDxhbmRyZXdAbHVubi5jaD4g5LqOMjAyNuW5
tDfmnIgxNeaXpeWRqOS4iSAwNjo0NOWGmemBk++8mgo+ID4gPgo+ID4gPiBPbiBXZWQsIEp1bCAx
NSwgMjAyNiBhdCAwMzowODozNEFNICswODAwLCBDb2lhIFByYW50IHdyb3RlOgo+ID4gPiA+IENv
bW1pdCAyYTIyYjdhZTJmYTMgKCJuZXQ6IHBjczogeHBjczogYWRhcHQgV2FuZ3h1biBOSUNzIGZv
ciBTR01JSSBtb2RlIikKPiA+ID4KPiA+ID4gWW91IGRvIG5vdCBhcHBlYXIgdG8gQ2M6IHRoZSBX
YW5neHVuIE5JQyBwZW9wbGUuIEl0IHdvdWxkIGJlIGdvb2QgdG8KPiA+ID4gaGF2ZSB0aGVyZSBj
b21tZW50cyBvbiB0aGlzIGNoYW5nZS4KPiA+Cj4gPiBJIGFwb2xvZ2l6ZTsgdGhlIG91dHB1dCBm
cm9tIGdldF9tYWludGFpbmVyLnBsIGlzIHZlcnkgbG9uZy4gSeKAmXZlCj4gPiBoZWFyZCB0aGF0
IGhhdmluZyB0b28gbWFueSByZWNpcGllbnRzIGNhbiBjYXVzZSB0aGUgUEFUQ0ggdG8gYmUKPiA+
IHJlamVjdGVkIGJ5IHRoZSBMS01MIG1haWwgc2VydmVyLgo+ID4KPiA+IEkgaGF2ZSBhZGRlZCBX
YW5neHVuIG1haW50YWluZXIgKEppYXdlbiBXdSA8amlhd2Vud3VAdHJ1c3RuZXRpYy5jb20+Cj4g
PiBhbmQgTWVuZ3l1YW4gTG91IDxtZW5neXVhbmxvdUBuZXQtc3dpZnQuY29tPikgdG8gdGhlIEND
IGxpc3QuCj4gPgo+ID4gPiA+IEZpeGVzOiAyYTIyYjdhZTJmYTMgKCJuZXQ6IHBjczogeHBjczog
YWRhcHQgV2FuZ3h1biBOSUNzIGZvciBTR01JSSBtb2RlIikKPiA+ID4gPiBTaWduZWQtb2ZmLWJ5
OiBDb2lhIFByYW50IDxjb2lhcHJhbnRAZ21haWwuY29tPgo+ID4gPgo+ID4gPiBQbGVhc2UgZG9u
J3QgbWl4IGZpeGVkIGFuZCBuZXcgY29kZS4gSXMgdGhpcyBhIHJlYWwgZml4PyBTaG91bGQgaXQg
YmUKPiA+ID4gYmFjayBwb3J0ZWQgdG8gc3RhYmxlPwo+ID4KPiA+IEkgYW0gbm90IHN1cmUgaWYg
dGhpcyBpcyBhIHNwZWNpZmljIGNoYXJhY3RlcmlzdGljIG9mIFdhbmd4dW4gTklDcywgYXMKPiA+
IEkgZG8gbm90IGhhdmUgYW55IGF2YWlsYWJsZSBmb3IgdGVzdGluZy4KPiA+Cj4gPiBUaGUgYmVo
YXZpb3Igb2YgdGhlIFJvY2tjaGlwIERXIFhQQ1MgSVAgY29yZSBtYXRjaGVzIHdoYXQgaXMgZGVz
Y3JpYmVkCj4gPiBpbiB0aGUgY29tbWl0IG1lc3NhZ2UgKGV2ZW4gdGhvdWdoIHBoeWxpbmsgYnJp
bmdzIHRoZSBsaW5rIHRvIGRvd24KPiA+IGJhc2VkIG9uIHRoZSBwaHlkZXYgbGluayBzdGF0dXMp
Lgo+ID4KPiA+IFRoaXMgYXBwZWFycyB0byBiZSBhIGJ1ZyAoYXQgbGVhc3Qgb24gUm9ja2NoaXAg
cGxhdGZvcm1zKSBvciBXYW5neHVuCj4gPiBOSUNzIGZlYXR1cmVzLgo+ID4KPiA+IEhvd2V2ZXIs
IEkgY2Fubm90IGNvbmZpcm0gd2hldGhlciBXYW5neHVuIE5JQ3MgYmVoYXZlIHRoZSBzYW1lIHdh
eS4KPiA+IFRoZXJlZm9yZSwgSSBoYXZlIGtlcHQgdGhlaXIgY29kZSBhcyBpcyBmb3Igbm93Lgo+
ID4KPiA+IENvdWxkIGEgV2FuZ3h1biBOSUNzIG1haW50YWluZXIgcHJvdmlkZSBzb21lIGZlZWRi
YWNrIGJhc2VkIG9uIHRlc3Rpbmc/Cj4gPgo+ID4gSWYgd2UgY2FuIGNvbmZpcm0gdGhhdCB0aGlz
IGlzIGluZGVlZCBhIGJ1ZywgSSBjYW4gc3VibWl0IGEgc2VwYXJhdGUgZml4Lgo+ID4KPiA+IEkg
d291bGQgZ3JlYXRseSBhcHByZWNpYXRlIGl0Lgo+ID4KPiA+IFRoYW5rcy4KPgo+IEhpIENvaWEs
Cj4KPiBJIGhhdmUgdGVzdGVkIHRoaXMgcGF0Y2ggYW5kIGl0IHdvcmtzIG9uIFdhbmd4dW4gTklD
cywgdGhhbmtzLgo+Cj4gVGhlIGNvbW1pdCAyYTIyYjdhZTJmYTMgKCJuZXQ6IHBjczogeHBjczog
YWRhcHQgV2FuZ3h1biBOSUNzIGZvciBTR01JSSBtb2RlIikKPiBpcyB0b28gbG9uZyBhZ28gZm9y
IG1lIHRvIHJlY2FsbCBleGFjdGx5IHdoYXQgdGhhdCB0aG91Z2h0IHdhcy4KPgo+IFRoZSBsb2cg
c2hvd3M6Cj4KPiAiT24gdGhpcyBkZXZpY2UsIENMMzdfQU5TR01fU1RTIChiaXRbNDoxXSBvZiBW
Ul9NSUlfQU5fSU5UUl9TVFMpIGluZGljYXRlcwo+IHRoZSBzdGF0dXMgcmVjZWl2ZWQgZnJvbSBy
ZW1vdGUgbGluayBkdXJpbmcgdGhlIGF1dG8tbmVnb3RpYXRpb24sIGFuZAo+IHNlbGYtY2xlYXIg
YWZ0ZXIgdGhlIGF1dG8tbmVnb3RpYXRpb24gaXMgY29tcGxldGUuCj4gTWVhbndoaWxlLCBDTDM3
X0FOQ01QTFRfSU5UUiB3aWxsIGJlIHNldCB0byAxLCB0byBpbmRpY2F0ZSBDTDM3IEFOIGlzCj4g
Y29tcGxldGUuIFNvIGFkZCBhbm90aGVyIHdheSB0byBnZXQgdGhlIHN0YXRlIGZvciBDTDM3IFNH
TUlJLiIKPgo+IEkgdHJpZWQgdG8gcmVwcm9kdWNlIHRoaXMgaXNzdWUsIGJ1dCBpdCBkaWRuJ3Qg
c2VlbSB0byBleGlzdC4KPiBJbiB0aGUgY3VycmVudCBsb2dpYzoKPgo+IGxpbmsgdXAgLT4gcmVh
ZCBzdGF0dXMgZnJvbSBDTDM3X0FOU0dNX1NUUyAtPiBDTDM3X0FOQ01QTFRfSU5UUiBub3QgY2xl
YXIKPiBsaW5rIGRvd24gLT4gcmVhZCBzdGF0dXMgZnJvbSBCTUNSIC0+IENMMzdfQU5DTVBMVF9J
TlRSIGNsZWFyCj4KPiBJdCBhbHNvIHdvcmtzLCBhbHRob3VnaCBDTDM3X0FOQ01QTFRfSU5UUiBp
cyBub3QgY2xlYXJlZCBldmVyeSB0aW1lLCBhbmQgQU4KPiByZXN0YXJ0IGlzIGFic2VudC4gQnV0
IEJNQ1IgbG9va3MgbGlrZSBpdCBvbmx5IHdhbnRzIHRvIGJlIHJldHVybiBhcyAwLCBpdCBpcwo+
IHdlaXJkLgo+Cj4gU28gSSB0aGluayBXYW5neHVuIE5JQ3MgYWxzbyBjYW4gYmUgYXBwbGllZCB0
byBnZW5lcmFsIGNvZGUgYXMgd2VsbCwgZm9yCj4gZ2V0dGluZyBzdGF0ZSBpbiBDMzcgU0dNSUkg
bW9kZS4KCkhpIEppYXdlbiwKClRoYW5rcyBzbyBtdWNoIGZvciB0ZXN0aW5nIGFuZCBjb25maXJt
aW5nIHRoYXQgdGhlIHBhdGNoIHdvcmtzIG9uIFdhbmd4dW4KTklDcy4gVGhhdCdzIGEgaHVnZSBy
ZWxpZWYuCgpZb3UncmUgcmlnaHQgdG8gYXNrIGFib3V0IHRoZSBDTDM3X0FOQ01QTFRfSU5UUiBj
bGVhciBhbmQgQU5SRVNUQVJULiBMZXQKbWUgZXhwbGFpbiB3aGF0IEkgb2JzZXJ2ZWQgb24gUksz
NTY4LgoKVGhlIGtleSBkaWZmZXJlbmNlIGlzIHRoYXQgb24gUkszNTY4J3MgWFBDUywgd2UncmUg
d29ya2luZyBpbiB0aGUgTUFDCnNpZGUgKFRYX0NPTkZJRyA9IDApLCB3aGVyZWFzIG9uIFdhbmd4
dW4gaXQgc2VlbXMgeW91J3JlIGluIHRoZSBQSFkgc2lkZQooVFhfQ09ORklHID0gMSkuIFRoaXMg
aXMgYmFzZWQgb24gdGhlIGNvbW1pdCAyYTIyYjdhZTJmYTMgd2hlcmUgeW91IHNldApUWF9DT05G
SUcgPSAxLgoKPiBIb3dldmVyLCBJIGFtIHdvbmRlcmluZyB3aGV0aGVyIENMMzdfQU5DTVBMVF9J
TlRSIGNsZWFyIGFuZCBBTlJFU1RBUlQgYXJlCj4gbmVjZXNzYXJ5LgoKT24gdGhlIFJLMzU2OCAo
TUFDIHNpZGUpLCBhY2NvcmRpbmcgdG8gdGhlIERlc2lnbldhcmUgWFBDUyBUUk0sIHRoZQpoYXJk
d2FyZSBiZWhhdmlvciBpcyBhcyBmb2xsb3dzOgoKLSBBZnRlciBhIHNvZnR3YXJlIHJlc2V0IChC
TUNSX1JFU0VUKSwgQU5FTkFCTEUgaXMgYXV0b21hdGljYWxseSBzZXQgdG8gMQogICh0aGUgaGFy
ZHdhcmUgcmVzZXQgdmFsdWUpLiBTbyBhdXRvLW5lZ290aWF0aW9uIHN0YXJ0cyBhdXRvbWF0aWNh
bGx5LgoKLSBXaGVuIHRoZSBsaW5rIGlzIHVwLCBDTDM3X0FOU0dNX1NUUyBjb250YWlucyB0aGUg
bmVnb3RpYXRlZCBzcGVlZC9kdXBsZXgKICBhbmQgdGhlIGxpbmsgc3RhdHVzLgoKLSBXaGVuIHRo
ZSBsaW5rIGdvZXMgZG93biwgQ0wzN19BTlNHTV9TVFMgYmVjb21lcyBhbGwgemVybywgYnV0CiAg
Q0wzN19BTkNNUExUX0lOVFIgcmVtYWlucyBzZXQgdG8gMS4KCi0gQ3J1Y2lhbGx5LCB0aGUgUENT
IGRvZXMgKipub3QqKiBhdXRvbWF0aWNhbGx5IHJlc3RhcnQgQU4gd2hlbiB0aGUgbGluawogIGNv
bWVzIGJhY2sgdXAuIFdpdGhvdXQgYW4gZXhwbGljaXQgQU5SRVNUQVJULCB0aGUgbGluayBzdGF5
cyBkb3duCiAgZm9yZXZlci4KClNvIG9uIFJLMzU2OCwgdGhlIEFOUkVTVEFSVCBpcyBtYW5kYXRv
cnkgdG8gcmVjb3ZlciBmcm9tIGEgbGluay1kb3duCmV2ZW50LiBXaXRob3V0IGl0LCB0aGUgbGlu
ayBuZXZlciBjb21lcyBiYWNrIHVwIGFmdGVyIGEgY2FibGUgZGlzY29ubmVjdC4KCkluIG15IGN1
cnJlbnQgbG9naWM6CgoxLiBJZiBDTDM3X0FOU0dNX1NUUyBoYXMgdmFsaWQgc3BlZWQvZHVwbGV4
IGJpdHMsIHJlcG9ydCB0aGUgbGluayBhcyB1cAogICBhbmQgcmV0dXJuLgoKMi4gSWYgQ0wzN19B
TlNHTV9TVFMgaXMgemVybyBidXQgQ0wzN19BTkNNUExUX0lOVFIgaXMgc2V0LCB0aGUgbGluayBp
cwogICBkb3duLiBXZSBjbGVhciB0aGUgaW50ZXJydXB0IGFuZCBpc3N1ZSBhbiBBTlJFU1RBUlQg
dG8gc3RhcnQgYSBuZXcKICAgbmVnb3RpYXRpb24uCgpUaGlzIHdvcmtzIHJlbGlhYmx5IG9uIFJL
MzU2OCBpbiBTR01JSSBNQUMgc2lkZSBtb2RlLgoKU2luY2UgeW91IGNvbmZpcm1lZCB0aGF0IHRo
ZSBnZW5lcmFsIGNvZGUgcGF0aCBhbHNvIHdvcmtzIG9uIFdhbmd4dW4sIEkKd29uZGVyOiBkb2Vz
IHRoZSBBTlJFU1RBUlQgYWxzbyB3b3JrIG9uIHlvdXIgc2lkZT8gSWYgeWVzLCBwZXJoYXBzIHdl
IGNhbgptYWtlIHRoaXMgdGhlIGNvbW1vbiBwYXRoIGZvciBhbGwgaGFyZHdhcmUsIG5vdCBqdXN0
IFJLMzU2OC4KCklmIHlvdSBjYW4gdGVzdCB0aGUgQU5SRVNUQVJUIGxvZ2ljIG9uIFdhbmd4dW4g
YW5kIGl0IHdvcmtzLCBJJ2QgYmUgaGFwcHkKdG8gc3VibWl0IGEgc3RhbmRhbG9uZSBmaXggdGhh
dCBtYWtlcyB0aGlzIHRoZSBjb21tb24gY29kZSBwYXRoLgoKT3RoZXJ3aXNlLCB0aGUgY3VycmVu
dCBhcHByb2FjaCAoc2tpcHBpbmcgdGhlIEFOUkVTVEFSVCB0cmlnZ2VyIG9uCldhbmd4dW4gTklD
cyBpbiBjMzdfc2dtaWlfZ2V0X3N0YXRlKSByZW1haW5zIHNhZmUuCgpJZiB5b3UncmUgY29tZm9y
dGFibGUgd2l0aCB0aGUgY2hhbmdlLCBJJ2QgYXBwcmVjaWF0ZSBpdCBpZiB5b3UgY291bGQgYWRk
CnlvdXIgVGVzdGVkLWJ5IHRhZyB0byB0aGUgY29tbWl0LiBJJ2xsIGFsc28gbWFrZSBzdXJlIHRv
IGluY2x1ZGUgeW91IG9uCnRoZSBDQyBsaXN0IGZvciBhbnkgZnV0dXJlIHJldmlzaW9ucyBvciBy
ZWxhdGVkIGZpeGVzLgoKVGhhbmtzIGFnYWluIGZvciB0ZXN0aW5nIQoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
