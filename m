Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E59DE7718F
	for <linux-phy@archiver.kernel.org>; Tue, 31 Dec 2024 02:11:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lWYlIbIhsb9lRsNPC+otyMZCJHCg3lkTYSs0cmbj59g=; b=YfTEbW+Dcb2G2J
	vyScS6ls4XkfB4cs32+E4hIsJne6UJcwdVSzUp1Q6P8x9DZmTaCSxthOacu6w9z0FYpEZ1E3bsHHs
	aj6sHbyNIZ5/FQfL3eC1Nk5zarf0yLBUvW/1pzswIptsNy5zHd0DjxiYXCD04HjHz7sk+10rgBoa1
	S21vLHesWV1j8TVMlevNIDf0hlaOYsQ2v/K3xtkfdqgqfTpDgucjOXAG2KwTd7ivLVXmnksluwxQg
	cd+M/ZwyQ1roDXuy6oQXgYTyNDxFJ1UFnJX73bcmh1BBpNTDouHkO0zPh9Q8DiSa6CLhcPbhpz53H
	ZH+E8L0TchK18lF3Py1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tSRjH-00000006JGL-1gGo;
	Tue, 31 Dec 2024 02:11:31 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tSRjF-00000006JFR-12II
	for linux-phy@lists.infradead.org;
	Tue, 31 Dec 2024 02:11:30 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-2163bd70069so25651575ad.0
        for <linux-phy@lists.infradead.org>; Mon, 30 Dec 2024 18:11:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735611088; x=1736215888; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AabIInyrM37GIeN8J7oG+2bSVRDwtqXzSY+L5IjxPYg=;
        b=PYqJM9OLPMSX8g11BU/43AIjkzFD0golWDkWyE8UkAx2w3EaRDshyv2GoL1nDMNpyL
         zaQ2ey7YzN3Z8cH1YdJg8IObcy6z+Hlpzuxme7NfW3tokVRrYU5ptDsc63odFrAOBHtn
         Mtl/+zwecIfyZCr1JHRJlMS1UKIfplqPk2cEXkSlea0VGKi6PB4dsH02RHXibIa9R4TJ
         Foc3Rs7tFdATt5QRuvTGh2iE3I5Nom02cJNvb1DaIX+MiDy6FwzBRLDHvjUAlH+wB4Us
         fRv6Tz5G812CWPbckMuPViUpRBkBYJigSc+g+KBG7aA0QcPC5Z+n4epzkqnbaRcSBHcF
         V8Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735611088; x=1736215888;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AabIInyrM37GIeN8J7oG+2bSVRDwtqXzSY+L5IjxPYg=;
        b=LuEl/jEfNUeRDj4OzWalGsVkGFVOqmF/gXJjnoBlLtlIWN89Lrk5RRPy0Mc79myool
         y0RGLBbwraE+SfA17HACfpUlg7vayip0CNzt4J4HWrzEBOpRbiHKzTV3MweYQEu7YzXr
         p9cMwKqlTF2UNBZQcNgagViYlg6dIDKDB/Yr6NU9m/tkmTwptfaOXdlgyEIVisClUNQA
         keaP4o30gidsmOi6NGXPG5KNUbPqBlKwme7v9ascOJKX7gBHfyn5JDui9Z6hP8Z+4k1l
         FEBzCFlmi0LIDgm4bfJ0Le5+G2+DZraaVCOasAa2E/sH008af617kObYq9ZDecq+Ns90
         eJWw==
X-Forwarded-Encrypted: i=1; AJvYcCX4cVqBX2RwAepa9F/NiBd0GseMrUxT6MKi1B6GTCui7yQYJrgCkhg7BYo7Cepf2k+f5j3vk6pTOVY=@lists.infradead.org
X-Gm-Message-State: AOJu0YxQLIJfGPTLodWG8ZghBYwBeZvgYQp46oDY/39ahxpRtbRyrXbs
	mxfgE3QTh3Mpn4h8RtzfUXz5OzBr3esAH6PJoPM2o7nVNmepGRZBXPpEIO/oGifDvgRztOqr1eZ
	Jg1EoTyVeYnrdBdAf33N91x0c4f8=
X-Gm-Gg: ASbGncuytv8BWgag9HH7q/3OU+2k3faXOlJSpYui8mAfN+XYbK78yBqgpAY6MbM1Mwz
	EuARusCHecTI9LZG3TMh9LpHgvS+sTlQVylqNCg==
X-Google-Smtp-Source: AGHT+IG+FVCO5xpvIGR7iOBMMvAwEpFdz2OIKpIECGtKh03Ujd9nXQQygjjejHS0aA4M5fOE46bQ1Kj87heTwsK4og8=
X-Received: by 2002:a05:6a20:c681:b0:1e1:a9dd:5a58 with SMTP id
 adf61e73a8af0-1e5e080dfb8mr57166732637.30.1735611087960; Mon, 30 Dec 2024
 18:11:27 -0800 (PST)
MIME-Version: 1.0
References: <CAMuHMdUG7A10E2SZR6kHiQBrzp_OVvMSd7jxggaoU3B_6fZ+nQ@mail.gmail.com>
 <d4b59d5e94c4c4a488cd24c6c169e418ad53980d.1735524526.git.xiaopei01@kylinos.cn>
In-Reply-To: <d4b59d5e94c4c4a488cd24c6c169e418ad53980d.1735524526.git.xiaopei01@kylinos.cn>
From: Adam Ford <aford173@gmail.com>
Date: Mon, 30 Dec 2024 20:11:16 -0600
Message-ID: <CAHCN7x+UzXQz+2zs+qvvWfWCmhsxsZoxP+2WHpfdZGnzwDPNQg@mail.gmail.com>
Subject: Re: [PATCH] phy: freescale: fsl-samsung-hdmi: fix build error in fsl_samsung_hdmi_phy_configure_pll_lock_det
To: Pei Xiao <xiaopei01@kylinos.cn>
Cc: geert@linux-m68k.org, aford@beaconembedded.com, arnd@arndb.de, 
	dominique.martinet@atmark-techno.com, frieder.schrempf@kontron.de, 
	kishon@kernel.org, l.stach@pengutronix.de, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, m.felsch@pengutronix.de, sandor.yu@nxp.com, 
	u.kleine-koenig@baylibre.com, vkoul@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241230_181129_286731_50395956 
X-CRM114-Status: GOOD (  16.66  )
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

T24gU3VuLCBEZWMgMjksIDIwMjQgYXQgODoxMeKAr1BNIFBlaSBYaWFvIDx4aWFvcGVpMDFAa3ls
aW5vcy5jbj4gd3JvdGU6Cj4KPiBGSUVMRF9QUkVQKCkgY2hlY2tzIHRoYXQgYSBjb25zdGFudCBm
aXRzIGludG8gdGhlIGF2YWlsYWJsZSBiaXRmaWVsZCwKPiBidXQgdGhlIGluZGV4IGRpdiBlcXVh
bHMgdG8gNCxpcyBvdXQgb2YgcmFuZ2UsIHdoaWNoIGdjYwo+IGNvcnJlY3RseSBjb21wbGFpbnMg
YWJvdXQ6Cj4KPiBJbiBmdW5jdGlvbiDigJhmc2xfc2Ftc3VuZ19oZG1pX3BoeV9jb25maWd1cmVf
cGxsX2xvY2tfZGV04oCZLAo+IGlubGluZWQgZnJvbSDigJhmc2xfc2Ftc3VuZ19oZG1pX3BoeV9j
b25maWd1cmXigJkgYXQKPiBkcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1zYW1zdW5nLWhk
bWkuYyA6NDcwOjI6Cj4gLi8uL2luY2x1ZGUvbGludXgvY29tcGlsZXJfdHlwZXMuaDo1NDI6Mzg6
IGVycm9yOiBjYWxsIHRvIOKAmF9fY29tcGlsZXRpbWVfYXNzZXJ0XzUzOOKAmQo+IGRlY2xhcmVk
IHdpdGggYXR0cmlidXRlIGVycm9yOiBGSUVMRF9QUkVQOiB2YWx1ZSB0b28gbGFyZ2UgZm9yIHRo
ZSBmaWVsZAo+ICAgNTQyIHwgIF9jb21waWxldGltZV9hc3NlcnQoY29uZGl0aW9uLCBtc2csIF9f
Y29tcGlsZXRpbWVfYXNzZXJ0XywKPiBfX0NPVU5URVJfXykKPiAgICAgICB8ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBeCj4gLi8uL2luY2x1ZGUvbGludXgvY29tcGlsZXJf
dHlwZXMuaDo1MjM6NDogbm90ZTogaW4gZGVmaW5pdGlvbiBvZgo+IG1hY3JvIOKAmF9fY29tcGls
ZXRpbWVfYXNzZXJ04oCZIDUyMyB8ICAgIHByZWZpeCAjIyBzdWZmaXgoKTsKPiAgICAgICB8ICAg
IF5+fn5+fgo+IC4vLi9pbmNsdWRlL2xpbnV4L2NvbXBpbGVyX3R5cGVzLmg6NTQyOjI6IG5vdGU6
IGluIGV4cGFuc2lvbiBvZiBtYWNybwo+IOKAmF9jb21waWxldGltZV9hc3NlcnTigJkKPiAgIDU0
MiB8ICBfY29tcGlsZXRpbWVfYXNzZXJ0KGNvbmRpdGlvbiwgbXNnLCBfX2NvbXBpbGV0aW1lX2Fz
c2VydF8sCj4gIF9fQ09VTlRFUl9fKQo+Cj4gUmV3b3JrIHRoaXMgc28gdGhlIGZpZWxkIHZhbHVl
IHdoaWNoIGlzIHJlc3RyaWN0ZWQgdG8gdGhlIHJhbmdlIG9mIDAgdG8gMywKPiBzbyBidWlsZCBl
cnJvciB3aWxsIGZpeC4KPgo+IEZpeGVzOiBkNTY3Njc5ZjJiNmEgKCJwaHk6IGZyZWVzY2FsZTog
ZnNsLXNhbXN1bmctaGRtaTogQ2xlYW4gdXAgZmxkX3RnX2NvZGUgY2FsY3VsYXRpb24iKQo+IFNp
Z25lZC1vZmYtYnk6IFBlaSBYaWFvIDx4aWFvcGVpMDFAa3lsaW5vcy5jbj4KPiAtLS0KPiAgZHJp
dmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMgfCAyICstCj4gIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLXNhbXN1bmctaGRtaS5jIGIvZHJpdmVycy9w
aHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMKPiBpbmRleCA1ZWFjNzBhMWU4NTgu
LjNlNGQxYTUxNjBlYSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZz
bC1zYW1zdW5nLWhkbWkuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLXNh
bXN1bmctaGRtaS5jCj4gQEAgLTM0MSw3ICszNDEsNyBAQCBmc2xfc2Ftc3VuZ19oZG1pX3BoeV9j
b25maWd1cmVfcGxsX2xvY2tfZGV0KHN0cnVjdCBmc2xfc2Ftc3VuZ19oZG1pX3BoeSAqcGh5LAo+
ICAgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+ICAgICAgICAgfQo+Cj4gLSAgICAgICB3
cml0ZWIoRklFTERfUFJFUChSRUcxMl9DS19ESVZfTUFTSywgZGl2KSwgcGh5LT5yZWdzICsgUEhZ
X1JFRygxMikpOwo+ICsgICAgICAgd3JpdGViKEZJRUxEX1BSRVAoUkVHMTJfQ0tfRElWX01BU0ss
IGRpdiA9PSA0ID8gZGl2IC0gMSA6IGRpdiksIHBoeS0+cmVncyArIFBIWV9SRUcoMTIpKTsKClRo
ZSBmb3ItbG9vcCBhYm92ZSB0aGlzIGxpbmUgc3RhdGVzOiAgIGZvciAoZGl2ID0gMDsgZGl2IDwg
NDsgZGl2KyspCkhvdyBjb3VsZCB0aGlzIGV2ZXIgcmVhY2ggND8gIElmIGl0IGRpZCByZWFjaCA0
LCB0aGUgY2FsY3VsYXRpb24gZm9yCmludF9wbGxjbGsgd291bGQgbmVlZCB0byBiZSByZWNhbGN1
bGF0ZWQgc2luY2UgaW50X3BsbGNsayA9IHBjbGsgLyAoMQo8PCBkaXYpOwoKYWRhbQo+ICAgICAg
ICAgLyoKPiAgICAgICAgICAqIENhbGN1bGF0aW9uIGZvciB0aGUgZnJlcXVlbmN5IGxvY2sgZGV0
ZWN0b3IgdGFyZ2V0IGNvZGUgKGZsZF90Z19jb2RlKQo+IC0tCj4gMi4yNS4xCj4KCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
