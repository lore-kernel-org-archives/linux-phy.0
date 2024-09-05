Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E321CD4F58
	for <linux-phy@archiver.kernel.org>; Thu,  5 Sep 2024 12:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ly4ncLZ3PaKn3/jtjRhPPvf5cDJNvxZnzh1HijV0muI=; b=px7EBO+vm9b3HH
	nXhcodNJF7PlOp5m2H/EHVe1ud1EK4bFwAVU/hp+9n8TgL34xHyvqIrPJ3ji80tbnAvW33/jSIv+6
	vvC6cb+MHGxj/8XoCnPJ5S04PhWKxXUIScKZCZ+uBVuDIQJYCwXJLTcX5FGR+xJLu5fCT5XY38GwQ
	HdSsOKENbuX54za82hx8tf75B+ATtRIlzqGDcpbqJW6cdCToDjRoP5XBswClu12oYgwBano57hzN6
	W+hqhz6v7FwrAMRH31ELEngDAVv3Ahjr0jDIo2WTvdsY8cV3/p7M/ehWfwT9AJl3Oq+8GIfB3m8sh
	aeOoBmG/D650uZruIdow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smBiP-00000008LSo-3X8W;
	Thu, 05 Sep 2024 12:35:57 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smBiN-00000008LRo-15A0
	for linux-phy@lists.infradead.org;
	Thu, 05 Sep 2024 12:35:56 +0000
Received: by mail-pj1-x1036.google.com with SMTP id 98e67ed59e1d1-2d889207d1aso527843a91.3
        for <linux-phy@lists.infradead.org>; Thu, 05 Sep 2024 05:35:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725539754; x=1726144554; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZQGDNoElnqbegbI87nipULY8XnKrQyvD+TCnZ/Vzi5E=;
        b=bl0k2PNZEMjDDHsFUzFjoqDVDlhC8iZS4Ec76JTXjgUjgLrGem84EMadmqSzdO2AZt
         LWBd/w9Wyhfiev4TfN8F8ugpBnGwaBWdAjXpByEm8eEFDSUQ6bTALeV+IUKCx+hZYXI1
         ija8+SGQ/vKBXxu+WEO6mhAtQuIJzEt/lA6f1hnsFiEleYyZ/t4vm8XiU5F+/EjK8TO6
         Nn9DW/qpMFMTaZZx0WZwlnPhC0/kAU+ucKkF7S0M/szfHJ2N95ZIHLqJLJOX0Hy4m3H8
         f5ns4LzBMCE2DcSiXmDZyggAfojPJQyOGBmA1+jc9ubYm7FQL+7FpifQ8RorgTK5XbA8
         InYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725539754; x=1726144554;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZQGDNoElnqbegbI87nipULY8XnKrQyvD+TCnZ/Vzi5E=;
        b=rBwS1VUZ+Zo78I+E2XLhkkXJVYr3mI/jGDpsmjtGh0QeJrhAPWDQbBeLF5mw3t81pA
         WoouuSuqmDNgAs87xOA+Qh7BPFEqAkr806sXfp9ZPP28l5JsJcUdCoxauNR4QLzIRDs9
         9ocdXOVcu1OFqxf+7YGrgeEqkk6KDw7uSihzJF73todIT30KVMkxmOAvFv8uT4FY4EKu
         4quUXT5j+492Cl86vk4ft/vnHBouJuxh8MfzlcAQ1Dve+jXCUA8xrZfDa/iVoyeLKRMU
         98tH5VoWuoQ1zSYy0xclsGW5OgM/5qPk5xsDbhx5mx1/A1978vrgtMkGtDzvLGcQ1ANB
         UtCQ==
X-Gm-Message-State: AOJu0YxuV/vTch/COdS8xyicbkC0OX8FAxSJZjzBJgfswcRCSICi79lr
	KEldqed+lGbbibhD+tigaHNhBr4FVDW07qIoHMt0R37fv40MgBf+IC0bK1BOci0/6T0ze4DqOrJ
	9X4AUfydRe+7yKwhkQaxD8Czem5ntLmtx
X-Google-Smtp-Source: AGHT+IGvDYTD8AVzIiC+FlSbrzC19PS2fSql0s7cno5KAr88iWzFMRtbmqTaV1IV0QyNFtPrDG54MCS5neloF/m2xSQ=
X-Received: by 2002:a17:90b:4b10:b0:2cb:4e14:fd5d with SMTP id
 98e67ed59e1d1-2d89348e171mr15508849a91.17.1725539753743; Thu, 05 Sep 2024
 05:35:53 -0700 (PDT)
MIME-Version: 1.0
References: <20240904233100.114611-1-aford173@gmail.com> <0f9c3794-6bb4-41fa-8bc6-c00ecaf506a1@kontron.de>
In-Reply-To: <0f9c3794-6bb4-41fa-8bc6-c00ecaf506a1@kontron.de>
From: Adam Ford <aford173@gmail.com>
Date: Thu, 5 Sep 2024 07:35:42 -0500
Message-ID: <CAHCN7xK_chbt3t2YkHRLmu+5wNg7KpDuJ0esLAMOav-2w5E4Uw@mail.gmail.com>
Subject: Re: [PATCH V6 0/5] phy: freescale: fsl-samsung-hdmi: Expand phy clock options
To: Frieder Schrempf <frieder.schrempf@kontron.de>
Cc: linux-phy@lists.infradead.org, dominique.martinet@atmark-techno.com, 
	linux-imx@nxp.com, festevam@gmail.com, aford@beaconembedded.com, 
	Sandor.yu@nxp.com, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Marco Felsch <m.felsch@pengutronix.de>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
	Lucas Stach <l.stach@pengutronix.de>, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_053555_321221_C7CB39AE 
X-CRM114-Status: GOOD (  33.71  )
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

T24gVGh1LCBTZXAgNSwgMjAyNCBhdCAyOjQ54oCvQU0gRnJpZWRlciBTY2hyZW1wZgo8ZnJpZWRl
ci5zY2hyZW1wZkBrb250cm9uLmRlPiB3cm90ZToKPgo+IE9uIDA1LjA5LjI0IDE6MzAgQU0sIEFk
YW0gRm9yZCB3cm90ZToKPiA+IEN1cnJlbnRseSwgdGhlcmUgaXMgYSBsb29rLXVwLXRhYmxlIHRv
IGRlc2NyaWJlIGFsbCB0aGUgY2xvY2sgb3B0aW9ucyB0aGUgSERNSSBQSFkKPiA+IGNhbiB1c2Uu
ICBTb21lIG9mIHRoZXNlIGVudHJpZXMgaW4gdGhlIExVVCBhcmUgdXNpbmcgYSBmcmFjdGlvbmFs
IGRpdmlkZXIgd2hpY2ggZG9lcwo+ID4gbm90IGhhdmUgYSB3ZWxsIGRvY3VtZW50ZWQgYWxnb3Jp
dGhtIGZvciBkZXRlcm1pbmdpbmcgdmFsdWVzLCBidXQgdGhlIHRoZSBpbnRlZ2VyCj4gPiBkaXZp
ZGVyIGNhbiB1c2UgYW4gYWxnb3JpdGhtIHRvIGNhbGN1bGF0ZSB0aGUgaW50ZWdlciBkaXZkZXIg
dmFsdWVzIGR5bmFtaWNhbGx5Cj4gPiBiZXlvbmQgdGhvc2UgbGlzdGVkIGluIHRoZSBMVVQgYW5k
IGFsc28gZHVwbGljYXRlcyBzb21lIG9mIHRoZSBlbnRyaWVzLgo+ID4KPiA+IFRoZSBmaXJzdCB0
d28gcGF0Y2hlcyBkbyBub3QgZG8gYW55dGhpbmcgZnVuY3Rpb25hbGx5IG90aGVyIHRoYW4gc2lt
cGxpZnkKPiA+IHNvbWUgb2YgdGhlIHJlZ2lzdGVyIGFjY2Vzc2VzIGFuZCBkZS1kdXBsaWNhdGVz
IHNvbWUgb2YgdGhlIHJlZ2lzdGVyIGxvb2stdXBzLgo+ID4KPiA+IFRoZSB0aGlyZCBwYXRjaCBh
ZGRzIHN1cHBvcnQgZm9yIHRoZSBpbnRlZ2VyIGRpdmlkZXIgYW5kIHVzZXMgaXQgd2hlbmV2ZXIg
dGhlCj4gPiBjbG9jayByZXF1ZXN0IGlzIGFuIGV4YWN0IG1hdGNoLiAgT3RoZXJ3aXNlLCBpdCB3
aWxsIHVzZSB0aGUgTFVUIGFzIGJlZm9yZS4KPiA+IFRoZSByb3VkaW5nIGlzIHN0aWxsIGJhc2Vk
IG9uIHRoZSBMVVQgaWYgdGhlIGludGVnZXIgY2xvY2sgaXNuJ3QgYW4gZXhhY3QgbWF0Y2guCj4g
Pgo+ID4gVGhlIGZvcnRoIHBhdGNoIHVwZGF0ZXMgdGhlcyBzZXRfcmF0ZSBhbmQgcm91bmRfcmF0
ZSBmdW5jdGlvbnMgdG8gdXNlIGVpdGhlcgo+ID4gdGhlIGZyYWN0aW9uYWwgY2xvY2sgTFVUIG9y
IHRoZSB0aGUgaW50ZWdlciBkaXZkZXIgbWVjaGFuaXNtIHRvIGRldGVybWluZQo+ID4gd2hpY2gg
ZXZlciBjbG9jayByYXRlIG1pZ2h0IGJlIGNsb3Nlc3QgbWF0Y2guCj4gPgo+ID4gVGhlIGxhc3Qg
cGF0Y2ggcmVtb3ZlcyB0aGUgaW50ZWdlciBkaXZpZGVyIGVudHJpZXMgZnJvbSB0aGUgTFVUIHNp
bmNlIGJ5IHRoZW4KPiA+IGl0J2xsIGJlIGNvbXBhcmluZyBib3RoIHRoZSBpbnRlZ2VyIGRpdmlk
ZXIgY2FsY3VsYXRvciBhbmQgdGhlIGNsb3Nlc3QgdmFsdWUKPiA+IGluIHRoZSBMVVQuCj4gPgo+
ID4gSW4gbXkgdGVzdGluZyB3aXRoIGEgQU9DIDRLIG1vbml0b3IsIEkgd2FzIGFibGUgdG8gYWRk
IDQgZW50cmllcyBpbiBteSBtb2RldGVzdAo+ID4gdGFibGUuICBJIGRvIG5vdCBoYXZlIGFuIEhE
TUkgYW5hbHl6ZXIsIHNvIEkganVzdCB1c2VkIG15IG1vbml0b3IgdG8gZGV0ZXJtaW5lCj4gPiBp
ZiB0aGlzIHNlcmllcyB3b3JrZWQuCj4KPiBTbyBJIHRlc3RlZCB0aGlzIHNlcmllcyBhbmQgaXQg
d29ya3MgZmluZS4gV2l0aCBEb21pbmlxdWUncyBwYXRjaCB0bwo+IGFsbG93IGZvciAwLjUlIGRl
dmlhdGlvbiBmb3IgdGhlIGNsb2NrLCBhbGwgdGhlIDI0IG1vZGVzIG9mIG15IG1vbml0b3IKPiBh
bmQgMzAgb3V0IG9mIDQyIG1vZGVzIG9mIG15IEhETUkgZ3JhYmJlciBhcmUgd29ya2luZyBub3cu
Cj4KPiBJIHN0aWxsIGhhdmUgc29tZSBpc3N1ZXMgd2l0aCBMQ0RJRiB1bmRlcnJ1biBlcnJvcnMg
b24gbW9kZXN3aXRjaCB3aXRoCj4gdjYuMTEtcmM2IGJ1dCB0aGVzZSBhcmUgdW5yZWxhdGVkIHRv
IHRoaXMgc2VyaWVzLgoKSSB3YXMgY29tcGFyaW5nIHRoZSBMQ0RJRiBkcml2ZXIgZnJvbSB0aGUg
TlhQIGRvd25zdHJlYW0gYW5kIHRoZQptYWlubGluZSwgYW5kIEkgbm90aWNlZCB0aGUgcGFuaWMg
dGhyZXNob2xkIHZhbHVlcyBhcmUgZGlmZmVyZW50IGluCnRoZSBOWFAgZG93bnN0cmVhbSBmb3Ig
dGhlIExDRElGMyB3aGljaCBnZW5lcmF0ZXMgdGhlIHZpZGVvIGZvciB0aGUKSERNSS4KClRoZSBk
b3duc3RyZWFtIHRocmVzaG9sZCBzdGF0ZXMgdGhlIGRlZmF1bHQgbG93IHZhbHVlIGlzIDEvMyBh
bmQgdGhlCmRlZmF1bHQgaGlnaCB2YWx1ZSBpcyAyLzMKSXQgYXBwZWFycyB0aGUgbWFpbmxpbmUg
bWF0Y2hlcyB0aGVzZSB2YWx1ZXMgWzFdLgpIb3dldmVyLCB0aGVyZSBpcyBhbiBvcHRpb24gdG8g
b3ZlcnJpZGUgdGhlIGRlZmF1bHRzIGFuZCBjaGFuZ2UgdGhlCnZhbHVlcyB0byAxLzIgYW5kIDMv
NC4gIEkgZG9uJ3QgcmVhbGx5IHVuZGVyc3RhbmQgd2hhdCB0aGVzZSB2YWx1ZXMKZG8sIGJ1dCBp
dCBtaWdodCBiZSB3b3J0aCBzb21lIGludmVzdGlnYXRpb24gdG8gc2VlIGlmIHBsYXlpbmcgd2l0
aAp0aGVzZSB2YWx1ZXMgaGVscHMgb3Igbm90LiAgVGhlIG5vdGVzIGluIGJvdGggdmVyc2lvbnMg
c3RhdGUgdGhlIHBhbmljCmlzbid0IGRlc2lnbmVkIHRvIHRyaWdnZXIgYW4gaW50ZXJydXB0LCBi
dXQgdG8gZ2V0IHRoZSBOb2MgYW5kIFFvUwptb2R1bGVzIHRvIGhhbmRsZSBpdC4KCkVpdGhlciB3
YXksIGl0J3MgdW5yZWxhdGVkIHRvIHRoaXMgcGF0Y2gsIGJ1dCBteSBtb25pdG9yIGRvZXNuJ3QK
YWx3YXlzIHN5bmMgdmFsdWVzIGZyb20gdGhlIExVVCwgYnV0IHNvbWV0aW1lcyBpdCBkb2VzLCBi
dXQgSSBjYW4ndAp0ZWxsIGlmIHdlIGhhdmUgYW4gdW5kZXJmbG93IG9yIG5vdC4KCmFkYW0KClsx
XSAtIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L25leHQv
bGludXgtbmV4dC5naXQvdHJlZS9kcml2ZXJzL2dwdS9kcm0vbXhzZmIvbGNkaWZfa21zLmM/aD1u
ZXh0LTIwMjQwOTA1I24zNTAKCj4KPiBUaGFua3MgQWRhbSBhbmQgRG9taW5pcXVlIGZvciB0aGUg
Z3JlYXQgd29yayEKCkkgZW5qb3kgcHV6emxlcy4gIFJlYWRpbmcgdGhyb3VnaCB0aGUgdGFibGVz
IGFuZCBsb29raW5nIGZvciBwYXR0ZXJucwp3YXMgZnVuLiAgSSBkaWQgc3BlbmQgc29tZSB0aW1l
IHRyeWluZyB0byB1bmRlcnN0YW5kIHRoZSBmcmFjdGlvbmFsCmRpdmlkZXIgc3R1ZmYsIGJ1dCBJ
IGRpZG4ndCBtYWtlIG11Y2ggcHJvZ3Jlc3MuCgphZGFtCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
