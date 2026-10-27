Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FB98606A32A
	for <linux-phy@archiver.kernel.org>; Tue, 27 Oct 2026 08:42:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=d8PuV2/8;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=svHfJ8vX
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=aW+ZhTM4KcT3vdACDLHhH7GcQntlxTSsGA877ecVMyg=; b=d8PuV2/8Z7HEHpWLpOZ3oTAG5z
	lPrgH49AwpxxL/HyBNmHP6sAiIdg4TP0Gh1T9jaS3E8q6MJmB1BK5OjS5zRyG3uBTUSvD8Y11ZKTk
	M8ZcZzZf8Ep69KLRD0YtJe6IXndR9RDN1tEGzE7g8wgkkVfcpIiQW289L8jhOxxvfzVv2o4GFuSg/
	KSfy2BkERI6FsCo+TWUpg1Kugtqefa2jmlwJuQ3ed92CInd9pOFmcBF9wOd6LQMjF5+YHnfcf0QRG
	I9xEWjslJX+G45yrkswgWml1a5U+JvfWUabM9jzVPT3yyDckZywF3wbY5EBwW4rfSwgTG5wdXz2tw
	QmdFuxLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLcl6-0000000444B-1LqN;
	Tue, 27 Oct 2026 08:42:16 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLcl4-0000000443k-2yGs
	for linux-phy@lists.infradead.org;
	Tue, 27 Oct 2026 08:42:15 +0000
Received: by mail-pj1-x1032.google.com with SMTP id 98e67ed59e1d1-3ae25008e2aso827084a91.2
        for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 01:42:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1793090534; x=1793695334; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=HO3eUNo6YHl/86Pkx4f7zdxkSoZXsSxNeQ0MlXL2Mv4=;
        b=svHfJ8vX03LVT6iIPF7Wz57VenRF86aJ+PT5SQA83y+sz9IJGV8aoePkEKueB+vKYe
         xOqx6X152NChWHGnV5a7UcJrcowehn71K8Fz1MpswRqWIlygO5VfVZbUdk1S3n3mFmcu
         JFulZcmZISJ/g17144h81Hpv4AqaGTZBoOvJYn8Yxk0etHIBWzdWsVpfIBhGGGF5JoyV
         qpI1GSCHBC9uLcWnFsMYm3bdkrQHTDn+gM2r1srp3uPwl61H9hMS8B0qDzliVz/UC7w3
         VA15X8IcamA4QfGpZCijnh2hBmWRqhkSWlC+IfLLGi/TBXOzjS94KB/lHU3OafqDt+ox
         VLJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793090534; x=1793695334;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=HO3eUNo6YHl/86Pkx4f7zdxkSoZXsSxNeQ0MlXL2Mv4=;
        b=w+bWqoeaKsVUbWwXjTFVEMaRhau8fbkuOUa3h+FL0pLKQr+Zw1BpgYnKuvQiamvmUF
         CBwWA+Gg7YVeFUhOL7i2HiT10OS2+d6IY+ISatscFM8VG1Tnh+8FTnuWg6Pw4IVz13ef
         7h5NvguDEY3QB7kz/oMVirr64WyfLAQQet9PPNFrDV3mN8vO0ksoLHlXWtpgxygRTRrt
         kjq2Svk5YtG+xMlrWeMvENwIzFwZlqXqi3eQvXaYVzIPf2WwcNTh9FNpk6ZR0M/O/jfC
         RWDGpK2VC/Ni6LeMZE4OgSDc2waD7QxwhXpgzSgUcdXZINiivZExLnCSNMkrBQuj8SIQ
         sxtA==
X-Forwarded-Encrypted: i=1; AKwUvBxWC0Kryu3K7bugkEmk0BB8H6dzYRbbK4tNUeTAr1IHEnYyHrU9C6pu3Zk2TPxgsXIQreFk8jexfJ0=@lists.infradead.org
X-Gm-Message-State: AFq9FYKIObmJup9QZG161WStnYH1qKF012ifyJ2XPrY8Qfk9hgYJDLBR
	sKufRc3qtKk8HRYDPF3Aks7QTb5DKF/0EHNXFIdHSo+bsjmyGLW9DTuXrz4AF4RnLA4=
X-Gm-Gg: AYBFou0X4/oCH3tvDO3+qkWvY3z7fvmjCO8wf8m/9fpxWKmSltyBGCoaIFzWkK7QH3F
	eN3mNowwnZNkd/enotI6PFYnbMW1tUJXegl3Rxc4+kKCC9uxLOG2LH7NNm8vFtMl+9F1sT6xrsC
	DXhUsppnIW4GrPTpM3VA7WcO8Sq4gGrB2AVK35AP8MIn9WtPa3k7XtocGiBanws3MNeswLB86uw
	awiJGxh0p+V5TfQsUfu/5erGXr6qK/9YbOQpzDqvHk6OIrYa2Zdj9agPOUeEDVjwjDgIGl3Pgz0
	CFxNu8J5Qw8u8+GN1mkr2lOx//ri2MzOFbyIAZnKsAvhfV0ofw+cy5Vhp6qxFgZUNBm2W3DdRAc
	rCXlzuAeFtdSYMfZvxw2pBYpEyM4U8ytAAyggXIaU3UxcPHpNO2Dkf8UiuGohBnOqi7QGIK1miy
	WngdgqKmOzrxy/q7IjtunkY619K/+I7eGilz575jnzLYlFzIsqtd/qtmpQfN3hq+4vhaHwz72XZ
	H0v75eOww0L5SpfWiN8OcCmbX6YXxiOm10Z8DL+oeAVa3PtESOxLQ==
X-Received: by 2002:a17:90b:548e:b0:3ac:8741:e2e4 with SMTP id 98e67ed59e1d1-3adeafad105mr7635070a91.52.1793090533442;
        Tue, 27 Oct 2026 01:42:13 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2eae64549dfsm5844425ad.4.2026.10.27.01.42.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2026 01:42:12 -0700 (PDT)
Date: Tue, 27 Oct 2026 16:41:26 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Manivannan Sadhasivam <mani@kernel.org>, 
	Inochi Amaoto <inochiama@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Jonathan Corbet <corbet@lwn.net>, 
	Shuah Khan <skhan@linuxfoundation.org>, Randy Dunlap <rdunlap@infradead.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rhys Tumelty <rhys@tumelty.co.uk>, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, Yixun Lan <dlan@gentoo.org>, 
	Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH v4 3/5] phy: core: Add phy bulk data helper functions
Message-ID: <auBi722rs5BvaExx@inochi.infowork>
References: <20260929085235.469515-1-inochiama@gmail.com>
 <20260929085235.469515-4-inochiama@gmail.com>
 <asN4I1cpVb5HLNu7@parshuram>
 <asOMP3uJJmdpfvtt@inochi.infowork>
 <atS9fkULEWfCbVVm@debian>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <atS9fkULEWfCbVVm@debian>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_014214_755101_613CED38 
X-CRM114-Status: GOOD (  21.13  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gU3VuLCBPY3QgMTgsIDIwMjYgYXQgMDY6MDk6NDlQTSArMDUzMCwgTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIHdyb3RlOgo+IE9uIE1vbiwgT2N0IDA1LCAyMDI2IGF0IDA3OjQxOjUyUE0gKzA4MDAs
IElub2NoaSBBbWFvdG8gd3JvdGU6Cj4gPiBPbiBNb24sIE9jdCAwNSwgMjAyNiBhdCAxMjoxMjo1
MVBNICswMjAwLCBWaW5vZCBLb3VsIHdyb3RlOgo+ID4gPiBPbiAyOS0wOS0yNiwgMTY6NTIsIElu
b2NoaSBBbWFvdG8gd3JvdGU6Cj4gPiA+ID4gQWRkIHNldmVyYWwgaGVscGVyIGZ1bmN0aW9ucyB0
aGF0IGFsbG93IGRyaXZlcnMgdG8gZ2V0IHNldmVyYWwgcGh5Cj4gPiA+ID4gY29uc3VtZXJzIGlu
IG9uZSBvcGVyYXRpb24uIElmIGFueSBvZiB0aGUgcGh5IGNhbm5vdCBiZSBhY3F1aXJlZCB0aGVu
Cj4gPiA+ID4gYW55IHBoeXMgdGhhdCB3ZXJlIGdvdCB3aWxsIGJlIHB1dCBiZWZvcmUgcmV0dXJu
aW5nIHRvIHRoZSBjYWxsZXIuCj4gPiA+IAo+ID4gPiBEbyB3ZSBoYXZlIG1hbnkgc3VjaCBleGFt
cGxlcz8gUGh5IGlzIG5vdCBhIG1hbnkgcmVzb3VyY2UgbGlrZQo+ID4gPiBjbG9jay9yZWd1bGF0
b3JzLi4uIERvIHdlIHJlYWxseSBuZWVkIHRoaXMuIEhvdyBtYW55IGluIGtlcm5lbCB1c2Vycwo+
ID4gPiB3aWxsIGJlbmVmaXQgZnJvbSB0aGlzIEFQST8KPiA+ID4gCj4gPiAKPiA+IAo+ID4gSSBn
dWVzcyB0aGUgZm9sbG93aW5nIGRyaXZlciBtYXkgYmVuZWZpdCBmcm9tIGJ1bGsgYXBpLiBNb3N0
IG9mIHRoZW0KPiA+IGFyZSBQQ0llIGRyaXZlcnMuLi4uCj4gPiAKPiA+IGRyaXZlcnMvYXRhL2Fo
Y2lfaW14LmMKPiA+IGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvY2FkZW5jZS9wY2llLWNhZGVuY2Uu
Ywo+ID4gZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpLWRyYTd4eC5jCj4gPiBkcml2ZXJz
L3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXRlZ3JhMTk0LmMKPiA+IGRyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvcGNpZS1yb2NrY2hpcC5jCj4gPiBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ll
LXFjb20uYwo+ID4gCj4gPiBOb3RlOiBJIG1lYW4gdGhlIGJ1bGsgYXBpLCBub3QganVzdCB0aGUg
dGhpbmdzIEkgYWRkZWQuIEkgZ3Vlc3MgbWFueQo+ID4gbWF5IHdhbnQgZGV2bV9waHlfYnVsa19n
ZXQoKSBvciBkZXZtX29mX3BoeV9idWxrX2dldCgpIGluc3RlYWQgb2YKPiA+IGRldm1fcGh5X2J1
bGtfZ2V0X2FsbCgpLgo+ID4gCj4gCj4gTm8uIEkgZG9uJ3QgdGhpbmsgdGhlIFBDSWUgaG9zdCBj
b250cm9sbGVycyBuZWVkIHRoZSBQSFkgYnVsayBBUElzLiBNb3N0IG9mIHRoZQo+IHRpbWUgdGhl
eSBuZWVkIHRvIGNvbnRyb2wgZWFjaCBQSFkgaW5kZXBlbmRlbnRseSBpbiBhIG11bHRpLXBvcnQg
c2V0dXAuIFNvCj4gaGF2aW5nIHRoZSBidWxrIEFQSSBkb2Vzbid0IHNlZW0gbG9naWNhbCB0byBt
ZS4KPiAKPiAtIE1hbmkKPiAKPiAtLSAKPiDgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a
4K6k4K6+4K6a4K6/4K614K6u4K+NCgpTb3JyeSBmb3IgbWlzc2luZyB0aGlzIG9uZS4gRm9yIG11
bHRpLXBvcnQgc2V0dXAsIHRoZSBhbnN3ZXIgaXMgbm8uIFRoZSBidWxrCkFQSSBpcyBub3QgYSBn
b29kIGNob2ljZS4gQnV0IGZvciBtdWx0aS1sYW5lIHNldHVwIG9mIG9uZSBwb3J0LCBJIHRoaW5r
IHRoZQphbnN3ZXIgaXMgeWVzLCB0aGUgZHJpdmVyIGNhbiBqdXN0IGNvbnRyb2wgdGhlIHBoeSB0
b2dldGhlciBhbmQgZG8gbm90IG5lZWQKYSBsb29wIGZvciB0aGF0LiBBdCBsZWFzdCBmb3IgcGNp
ZS1yb2NrY2hpcC5jLCBJIHRoaW5rIGl0IGlzIHJlYXNvbmFibGUsIGl0cwpsb2dpYyBzaG93IGl0
IHVzZSBtdWx0aS1sYW5lIHNldHVwLCBzbyBJIHRoaW5rIGl0IGlzIGZpbmUgdG8gcG9ydC4KClJl
Z2FyZHMsCklub2NoaQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
