Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0C48C43458
	for <linux-phy@archiver.kernel.org>; Sat, 11 Jul 2026 01:59:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Subject:CC:To:MIME-Version:
	From:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Quh9UArsG5ABuL3WTeBsOdAJZo2eyoAz1tOkl5UXvWg=; b=M6ZO8iwX6EjY5Ara/d27Ge6sVA
	5zUynTPGdzKA4pee/ZoDPaxs/t7wcFZrEbVKKGNJxnd6+kPVclauDPmd5nEz76zaSaXA4eJWhsfhm
	b6q9Ib5QNG13Hfn1Nx+EGcugRR8eC2CPt+OagG/Nvwp891k0Okr5U3pcumyqjgL4yQlw7CSwk0epq
	DgU/KcaLBiX5FZjpqMMQvH+ri0AoHsfPCAWkcpdtyEX7ooljNmo7kysdpJnWJH5loZkcwRrtd7ykL
	8nvSpGVfu15fD5A2WHWtZPwrzVyS8Sd0og+lpDY0g9RgqGpZNCWKuQoerGwuSmERVypI3u7ytQi/6
	YiG1YKUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiN0K-000000067M6-19uK;
	Sat, 11 Jul 2026 01:59:44 +0000
Received: from m16.mail.126.com ([220.197.31.7])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiN0H-000000067Hl-1ofH
	for linux-phy@lists.infradead.org;
	Sat, 11 Jul 2026 01:59:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=Message-ID:Date:From:MIME-Version:To:Subject:
	Content-Type; bh=RoJbUhQ51FGQX0o2Oje8tEhBvzpUy2b4+W7+qDbLlRE=;
	b=Q2VBsT4bT9QZscFiZ25tUDpz7sAo/4zLuCny6ZnzGQN/VuAVGda6W7XSIe/guo
	ldUc78kvOtf+fJ8T0Gptxvrn7xISdtJ6dTaWUZbaq6kzx9D7zx2aPcIiC91VLQ7D
	TBSjoH5Y9zc8qKXEfnSNaAOeHmCfDlrjgfoRQrUbiB7Z8=
Received: from localhost.localdomain (unknown [])
	by gzga-smtp-mtada-g1-3 (Coremail) with SMTP id _____wDXj5Roo1Fqf9e9DA--.18665S2;
	Sat, 11 Jul 2026 09:59:04 +0800 (CST)
Message-ID: <6A51A355.5000509@126.com>
Date: Sat, 11 Jul 2026 09:58:45 +0800
From: Hongling Zeng <zhongling0719@126.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: vkoul@kernel.org, neil.armstrong@linaro.org, johan@kernel.org, 
 kishon@kernel.org, rogerq@ti.com
CC: Hongling Zeng <zenghongling@kylinos.cn>, 
 linux-phy@lists.infradead.org
Subject: Re: [PATCH v6 0/4] phy: ti-pipe3: Fix clock resource handling issues
References: <1782118512975255.3963.seg@mailgw.kylinos.cn>
In-Reply-To: <1782118512975255.3963.seg@mailgw.kylinos.cn>
X-CM-TRANSID: _____wDXj5Roo1Fqf9e9DA--.18665S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7KFykurWkCw1kCF1DXw1xAFb_yoW8Zr43pF
	sxXa95CrWUCrZ2ganIyw48Jan3Z3yrKay5KF4ft34fX3W5ury5JF47K3y5WryDCr929a13
	tw1UtF1YkFyDCw7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07j-3kAUUUUU=
X-Originating-IP: [112.64.161.44]
X-CM-SenderInfo: x2kr0wpolqwiqxrzqiyswou0bp/xtbBrwjxwmpRo2hBsQAA3U
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260710_185941_883758_C70FEBCF 
X-CRM114-Status: GOOD (  14.81  )
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

ICAgICBTb3JyeSBmb3IgdGhlIG5vaXNl77yMR2VudGxlIHBpbmcuCgogICBUaGlzIHNlcmllcyBm
aXhlcyBjbG9jay9yZXNvdXJjZSBsZWFrIGlzc3VlcyBpbiBUSSBQSVBFMyBQSFkgZHJpdmVyLgog
ICBDb3VsZCB5b3UgcGxlYXNlIHJldmlldz8KCiAgIFRoYW5rcywKICAgSG9uZ2xpbmcKCuWcqCAy
MDI25bm0MDbmnIgxOeaXpSAxMTowMiwgSG9uZ2xpbmcgWmVuZyDlhpnpgZM6Cj4gVGhpcyBwYXRj
aCBzZXJpZXMgZml4ZXMgbXVsdGlwbGUgY2xvY2sgcmVzb3VyY2UgaGFuZGxpbmcgaXNzdWVzIGlu
IHRoZQo+IHRpLXBpcGUzIFBIWSBkcml2ZXIuCj4KPiBQYXRjaCAxIGZpeGVzIGEgY3JpdGljYWwg
aXNzdWUgd2hlcmUgdGlfcGlwZTNfaW5pdCgpIHdhcyBpZ25vcmluZyB0aGUKPiByZXR1cm4gdmFs
dWUgb2YgdGlfcGlwZTNfZW5hYmxlX2Nsb2NrcygpLCB3aGljaCBjb3VsZCBsZWFkIHRvIHVuY2xv
Y2tlZAo+IGhhcmR3YXJlIGFjY2VzcyBhbmQgdW5iYWxhbmNlZCBjbG9jayBkaXNhYmxlcy4KPgo+
IFBhdGNoIDIgZml4ZXMgYSBjbG9jayByZXNvdXJjZSBsZWFrIHdoZW4gcHJvYmUgZmFpbHMgYWZ0
ZXIgZW5hYmxpbmcKPiB0aGUgU0FUQSByZWZjbGsuIFRoZSBlcnJvciBwYXRoIG5vdyBwcm9wZXJs
eSBkaXNhYmxlcyB0aGUgY2xvY2sgYW5kCj4gY2xlYW5zIHVwIHJ1bnRpbWUgUE0gcmVzb3VyY2Vz
Lgo+Cj4gUGF0Y2ggMyBmaXhlcyBFUFJPQkVfREVGRVIgaGFuZGxpbmcgdG8gcHJldmVudCBtYXNr
aW5nIHByb2JlIGRlZmVycmFsCj4gZXJyb3JzLiBJdCB1c2VzIGRldm1fY2xrX2dldF9vcHRpb25h
bCgpIGZvciBTQVRBIHJlZmNsayB0byBwcm9wZXJseQo+IGhhbmRsZSBvcHRpb25hbCBjbG9ja3Mg
d2hpbGUgc3RpbGwgcHJvcGFnYXRpbmcgLUVQUk9CRV9ERUZFUiBhbmQgb3RoZXIKPiBlcnJvciBj
b2Rlcy4KPgo+IFBhdGNoIDQgZml4ZXMgYSBjbG9jayBsZWFrIGluIHRoZSBpbml0IGVycm9yIHBh
dGggd2hlbiByZWdtYXBfdXBkYXRlX2JpdHMoKQo+IGZhaWxzIGluIFBDSWUgbW9kZSwgYWRkaW5n
IHByb3BlciBjbG9jayBjbGVhbnVwIGNvbnNpc3RlbnQgd2l0aCBvdGhlcgo+IGVycm9yIHBhdGhz
Lgo+Cj4gVGhlc2UgZml4ZXMgZW5zdXJlIHByb3BlciByZXNvdXJjZSBjbGVhbnVwIG9uIHByb2Jl
IGFuZCBpbml0IGZhaWx1cmVzLAo+IGFuZCBwcmV2ZW50IHBlcm1hbmVudCBkcml2ZXIgaW5pdGlh
bGl6YXRpb24gZmFpbHVyZXMgZHVlIHRvIGluY29ycmVjdAo+IGVycm9yIGhhbmRsaW5nLgo+Cj4g
Q2hhbmdlIGluIHY2Ogo+IC0gRml4IGFsbCBjbG9jayBsZWFrIHBhdGhzIGNvbXByZWhlbnNpdmVs
eQo+Cj4gQ2hhbmdlcyBpbiB2NToKPiAtIEFkZCBwYXRjaCB0byBmaXggaWdub3JlZCBjbG9jayBl
bmFibGUgcmV0dXJuIHZhbHVlIGluIHRpX3BpcGUzX2luaXQoKQo+IC0gSW1wcm92ZSBlcnJvciBo
YW5kbGluZyBjb25zaXN0ZW5jeSBhY3Jvc3MgYWxsIHBhdGhzCj4KPiBDaGFuZ2VzIGluIHY0Ogo+
IC0gVXNlIGRldm1fY2xrX2dldF9vcHRpb25hbCgpIGZvciBTQVRBIHJlZmNsawo+IC0gRHJvcCBt
YW51YWwgLUVOT0VOVCBoYW5kbGluZwo+Cj4gSG9uZ2xpbmcgWmVuZyAoNCk6Cj4gICAgcGh5OiB0
aS1waXBlMzogRml4IGlnbm9yZWQgY2xvY2sgZW5hYmxlIHJldHVybiB2YWx1ZSBpbiBpbml0Cj4g
ICAgcGh5OiB0aTogcGlwZTM6IEZpeCBjbG9jayByZXNvdXJjZSBsZWFrIG9uIHByb2JlIGVycm9y
cwo+ICAgIHBoeTogdGktcGlwZTM6IEZpeCBFUFJPQkVfREVGRVIgaGFuZGxpbmcgZm9yIGNsb2Nr
IHJlc291cmNlcwo+ICAgIHBoeTogdGktcGlwZTM6IEZpeCBjbG9jayBsZWFrIGluIGluaXQgZXJy
b3IgcGF0aAo+Cj4gICBkcml2ZXJzL3BoeS90aS9waHktdGktcGlwZTMuYyB8IDU4ICsrKysrKysr
KysrKysrKysrKysrKysrKysrKystLS0tLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDQ2IGluc2Vy
dGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQo+Cj4gLS0KPiAyLjI1LjEKCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
