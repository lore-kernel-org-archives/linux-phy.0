Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29A22FEC0F6
	for <linux-phy@archiver.kernel.org>; Tue, 24 Mar 2026 19:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AtAe4FmaeK5e+HxiCmQivtQAfvRc3eTX5+G1ohkGFDg=; b=lHWmC03mAxTrsB
	rb242EpNOflNRzeRtK0Pr6awq/NI41X3yT4si+i3kTIFR5nCQpx7P6KtMXgzMnuCqhn9+ONW8+lAE
	pFL6gb0ROQsSOjUNgwoi4uoX7AK1PTvLDrPXNZlaOMFeSi1ESsty9uj0+7dZnzWkaHxxEJe6NoDWj
	X1WcbOuQH8iLNXg01NmnI45eIZSngobfsIPZjBvjkuwHFTnyJG12yiQF0G+GDcBNtELRGCUxRVitI
	iypslZz1ZvD3qY5oKduikkfWrGwEJ4qwVTI6NcBQtZgZ/N4beTVycbDOUXJUU3JXvbw5I8Fkn4FaM
	oFXGUHJuAwx6gAUEQXrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w57DR-0000000289z-2nnt;
	Tue, 24 Mar 2026 19:15:02 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w57DM-0000000287Y-18P6
	for linux-phy@lists.infradead.org;
	Tue, 24 Mar 2026 19:14:59 +0000
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 9A5CE3F28E
	for <linux-phy@lists.infradead.org>; Tue, 24 Mar 2026 19:14:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20251003; t=1774379692;
	bh=ngqb+DmGtwEG3FK8sIpZyt2ZJ6Tw4EzBiHu4t/MVsn4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=lRGmo3NENOanaizI5i0CxuJcJ2E31k1e7sB4scygqi5w085Ync+2hOaajcrdnQU88
	 4NcbiTuCxJ9fd59kT5R3K75i9TDezETUeu7vxL0nCOwiC3PgNzn2IeoxIr+5Yimj6f
	 +QuLClm4Iq8VphFXjgFSHk8B5qPiiMv7acTzhFWZdqcj7+haRgyAn1PaTzQGhkKDDE
	 36yd31HTp0Qq7un2CKXwwHhkU1CSrwviHzkA+E7dP4Hz9+k8DWv80KZF3RpxKZQIN1
	 spj1pbc5aPXuZhsKwkuC0jZZyR15F1X0FjG//4rdVicPTIKSzMJr7SHRus2cQP35Uv
	 y04E/ydMWLqPM7y43+PgefVCmjiIeHvyWUGxw+Txpu5MPAbZCgRoZoiPPeCAeUq1Z6
	 0X91StoXC9FHFDjtMZWe8p3QVmJcOcOl7fybueD56lFNe5XIvUIh1bhP4T2r02ZvdI
	 2FFxklQe3uPHmNtnOsRPfCEZMHHvES+eED4jeyp7bH0MGMiFROOh9bqwsi9NsPCaIn
	 yjhNvvmf++jRaN9dzBnPY/Upom4vHOl2w28WjqzU8CgkZUx9o6iRDwYK2e8t9BVWmN
	 eAvnzC6fN+tqSbRrmuvsxNYAa7oYGSvFjyrFqJ73XRjjm0O0Vpyi1NIl0dZGhCkh6P
	 p3aQmdFrSiCiel76MYX5gfjA=
Received: by mail-ej1-f70.google.com with SMTP id a640c23a62f3a-b90bb54d034so21808166b.0
        for <linux-phy@lists.infradead.org>; Tue, 24 Mar 2026 12:14:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774379692; cv=none;
        d=google.com; s=arc-20240605;
        b=Nvd2kQBnYYZ5hsm1FVKkx3XdYqSBCwv4p4D7kxDH+DC8TM0QeTzNYFeNJrdSEb6nSZ
         FEdl/sZ4tNCoAveayNPpZbA9MvEoeT5Ec3jfwT5bfsuCf6imsyzUYNBnTwL4hRTqazlT
         iqE7Md1WC8FUPcXhGW/ZTAmDG6LfI3wrHKysa8Gz4c4Z7CGKKrOeOOhSZWtHwZhUJ6FN
         J/1nEzYIb/1KhE9PWrHHgF2ySprwpIAua/EjseO4z5SwlZ8gaxZPbkDWdLGbzA/hfcHK
         //FD8x+nxobUOdbAvEYqcX5bRVKdTDQl2OK2PDJEg/ShJrN1lA7RKHgp8LZYo4DFiCYq
         UenA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version;
        bh=ngqb+DmGtwEG3FK8sIpZyt2ZJ6Tw4EzBiHu4t/MVsn4=;
        fh=pzm07QLMu0u/pQJiWohbyQE4l7pK1ZHS3S/jnzKRavE=;
        b=gnIX0In3jEVaZfEsf+2/rwvWgkK0sIGeuTpkvHoOHExxNWJMlPagL4M3OwL5H+UQWP
         y7TtPgWfxGcQH7MZhjD7411OzGltp7qgmUdO911nfFenCZAT/cpkI7lrN4WsW4J+Ej/G
         Qzq+SdTVQS047O9qF6KAAuCZ68iBl+XQKICAtGWpwqshP/dDdJzHvMIg0WSCJRvw7P1G
         N7dPsp8PNYU7OKbR8U5zjITTcm8DfsJBKtt1BfoRHITPrQfzkAcc1t2Cfv4Rp12hUs10
         lj9oF/5jB7HcM1iODYKFlnyD1yS7YFod3sksDrpfiecC1dUfLJZN0Qr3LY+H6U2L8Ns8
         PFyA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774379692; x=1774984492;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ngqb+DmGtwEG3FK8sIpZyt2ZJ6Tw4EzBiHu4t/MVsn4=;
        b=niguNBCEzBr3L36Nly51HobeNP+SAcv51W+mKjpKt9Ik6PzRUe7SyL+M6mfYeh1jFi
         A6oU+4zM3mGSKBZrdEnx4bY1tAU7b0SPwzfFaDskLuWCgmK/eacjmi1GMt4mrU7a0lww
         5KmB0+H8/unI2hK+B6iUwtkX1xgD9p+JGztez5NHuJRP6+AvH/QZSAIUo2yavoqZKALA
         mlIcSFuB0oMTZmrvX8Cu+TzEwNyHtgVZ68juzcARM3+FQkrAGqxQRFDRTlXnXmQV6B1D
         /ybBtpMUfTVjQI+atRPhlkJAD7zeQbG/lQH6YuYlANVJpzM3yuPsxbuvtwr71Tgk5kRB
         ywXQ==
X-Forwarded-Encrypted: i=1; AJvYcCXjw8uF/cb4DYCsdprg5yipcRWzXxK1qdOtipk+Nfgr9VHRk1qs3PkgKsY0Gl5m3pl7gyhturJCmoY=@lists.infradead.org
X-Gm-Message-State: AOJu0YyzcpGZ+fzy8Jm+vduIhDv2cXIo34lOx5SlZS8DFeTDovHIOyXx
	ytF7t8fB2/bCdzBJ5dSWlKw9lweYp4GDUDFbPr4FsB2XyGJtcnDKjjsebga4jv+/1owvYDp13zV
	05VAadrgl7T30ifB5a0zC3usD2V+AJo0e3LMSMziQyw51oJtVx2v36MzgQRYqwF/2YUMWiH5ENL
	ZE82WMroX0cBdWuVkmg3Xs8fF/P9Febkqw4EbD9vpbEJSaAwg/+SKgO/uxsw==
X-Gm-Gg: ATEYQzzj83Ztu1j9njop3A3Dc6KFreg9B7keyrv2GrSke+idBf7up36fXcMQBYqsj0M
	mSjW/6e3+wEXLHE63ivttlsRD40ODsXu2bknn7V+o6Qv1zAnCikWTnQJFKFylGXW0thXVVrQ6Vc
	ZvNg8zPG5q5WfLInixHwGtenKbqBwIR9fjCn8znU/yuWnSoPScEFSNQ0w6ePqurtw4JHpCJhhsp
	wQ+0FrFylU53jvtKReU2vf0z0sz8sMEOQl5O9g=
X-Received: by 2002:a17:907:7fac:b0:b8f:d2a0:c283 with SMTP id a640c23a62f3a-b99ae1f7d0cmr36032866b.1.1774379692035;
        Tue, 24 Mar 2026 12:14:52 -0700 (PDT)
X-Received: by 2002:a17:907:7fac:b0:b8f:d2a0:c283 with SMTP id
 a640c23a62f3a-b99ae1f7d0cmr36028866b.1.1774379691469; Tue, 24 Mar 2026
 12:14:51 -0700 (PDT)
MIME-Version: 1.0
References: <20260313094618.1361418-1-ziyue.zhang@oss.qualcomm.com>
 <20260313164542.GA1405513@bhelgaas> <en5a7jrgpbn4bsmw5qwprugb2qmjkqw2x5eey6jxxu63634duz@b43rhcsqkj3o>
 <abdviJbrluDn2Vrx@baldur> <kqpgjzcxnazjohiop27exget6qrv37wn3csmixt5nmc6d5dkbg@n7qjo6flaabn>
 <abtgaXSv-zRysJqO@baldur> <4byysnjodmlphwcevw5gb2asxbwwwlf526mtpwpkfi6crjxoqb@vyuktezfu2wu>
 <CAARv3RSag8n0=ut9KGm0yALRPVTiyQ+bBBbT+3Vf1sNOCBLbGA@mail.gmail.com> <dnx4ge2e2zy2unw5jtmmhktyzlnmmhrogb5skskxewi6y7ekau@vpfdphzay7td>
In-Reply-To: <dnx4ge2e2zy2unw5jtmmhktyzlnmmhrogb5skskxewi6y7ekau@vpfdphzay7td>
From: Tobias Heider <tobias.heider@canonical.com>
Date: Tue, 24 Mar 2026 20:14:39 +0100
X-Gm-Features: AaiRm50Xa8MYmaP0uH8BT8rSPTXsqKVKZcUFfeHqOG5ZpI8OP5QNHanLv-y60Mk
Message-ID: <CAARv3RRqXxNePX=4RqnLu7OnfjQmStynsL9RCNY19EKQOTcnLQ@mail.gmail.com>
Subject: Re: [PATCH v1 1/1] arm64: dts: qcom: hamoa: Move PCIe PERST and Wake
 GPIOs to port nodes
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Bjorn Helgaas <helgaas@kernel.org>, 
	Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com, 
	lpieralisi@kernel.org, kwilczynski@kernel.org, bhelgaas@google.com, 
	johan+linaro@kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com, 
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_121456_720271_A4DC1408 
X-CRM114-Status: GOOD (  47.17  )
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

T24gVHVlLCBNYXIgMjQsIDIwMjYgYXQgNzowN+KAr0FNIE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8
bWFuaUBrZXJuZWwub3JnPiB3cm90ZToKPgo+IE9uIFRodSwgTWFyIDE5LCAyMDI2IGF0IDAyOjUw
OjM3UE0gKzAxMDAsIFRvYmlhcyBIZWlkZXIgd3JvdGU6Cj4gPiBSZXNlbmRpbmcgYmVjYXVzZSB0
aGUgcHJldmlvdXMgbWFpbCBlbmRlZCB1cCBiZWluZyBIVE1MIChzb3JyeSkKPiA+Cj4gPiBPbiBU
aHUsIE1hciAxOSwgMjAyNiBhdCA2OjM54oCvQU0gTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5p
QGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4gPgo+ID4gPiBPbiBXZWQsIE1hciAxOCwgMjAyNiBhdCAw
OTo0Mjo1NlBNIC0wNTAwLCBCam9ybiBBbmRlcnNzb24gd3JvdGU6Cj4gPiA+ID4gT24gTW9uLCBN
YXIgMTYsIDIwMjYgYXQgMDg6NTA6MTJBTSArMDUzMCwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdy
b3RlOgo+ID4gPiA+ID4gT24gU3VuLCBNYXIgMTUsIDIwMjYgYXQgMDk6NTM6MzNQTSAtMDUwMCwg
Qmpvcm4gQW5kZXJzc29uIHdyb3RlOgo+ID4gPiA+ID4gPiBPbiBTYXQsIE1hciAxNCwgMjAyNiBh
dCAwNzo1MDo1MFBNICswNTMwLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gPiA+ID4g
PiA+ID4gT24gRnJpLCBNYXIgMTMsIDIwMjYgYXQgMTE6NDU6NDJBTSAtMDUwMCwgQmpvcm4gSGVs
Z2FhcyB3cm90ZToKPiA+ID4gPiA+ID4gPiA+IE9uIEZyaSwgTWFyIDEzLCAyMDI2IGF0IDA1OjQ2
OjE4UE0gKzA4MDAsIFppeXVlIFpoYW5nIHdyb3RlOgo+ID4gPiA+ID4gPiA+ID4gPiBDb21taXQg
OTYwNjA5YjIyYmU1ICgiYXJtNjQ6IGR0czogcWNvbTogaGFtb2E6IE1vdmUgUEhZLCBQRVJTVCwg
YW5kIFdha2UKPiA+ID4gPiA+ID4gPiA+ID4gR1BJT3MgdG8gUENJZSBwb3J0IG5vZGVzIGFuZCBh
ZGQgcG9ydCBOb2RlcyBmb3IgYWxsIFBDSWUgcG9ydHMiKSBkaWQgbm90Cj4gPiA+ID4gPiA+ID4g
PiA+IGNvbnZlcnQgYWxsIEhhbW9h4oCRYmFzZWQgcGxhdGZvcm1zIHRvIHRoZSBuZXcgbWV0aG9k
IG9mIGRlZmluaW5nIFBFUlNUIGFuZAo+ID4gPiA+ID4gPiA+ID4gPiBXYWtlIEdQSU9zIGluIHRo
ZSBQQ0llIHJvb3QgcG9ydCBub2Rlcy4KPiA+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+
ID4gV2l0aG91dCB0aGUgY2hhbmdlIFBDSWUgcHJvYmUgd2lsbCBmYWlsLiBUaGUgcHJvYmUgZmFp
bHVyZSBoYXBwZW5zIGJlY2F1c2UKPiA+ID4gPiA+ID4gPiA+ID4gdGhlIFBIWSBzdGF5cyBpbiB0
aGUgY29udHJvbGxlciBub2RlIHdoaWxlIHRoZSBQRVJTVC9XYWtlIEdQSU9zIHdlcmUgbW92ZWQK
PiA+ID4gPiA+ID4gPiA+ID4gdG8gdGhlIHBvcnQgbm9kZXMuCj4gPiA+ID4gPiA+ID4gPiA+Cj4g
PiA+ID4gPiA+ID4gPiA+IFRoaXMgZml4ZXMgcHJvYmUgZmFpbHVyZXMgc2VlbiBvbiB0aGUgZm9s
bG93aW5nIHBsYXRmb3JtczoKPiA+ID4gPiA+ID4gPiA+ID4gIC0geDEtaHAtb21uaWJvb2steDE0
Cj4gPiA+ID4gPiA+ID4gPiA+ICAtIHgxLW1pY3Jvc29mdC1kZW5hbGkKPiA+ID4gPiA+ID4gPiA+
ID4gIC0geDFlODAxMDAtbGVub3ZvLXlvZ2Etc2xpbTd4Cj4gPiA+ID4gPiA+ID4gPiA+ICAtIHgx
ZTgwMTAwLW1lZGlvbi1zcHJjaHJnZC0xNC1zMQo+ID4gPiA+ID4gPiA+ID4gPiAgLSB4MXA0MjEw
MC1sZW5vdm8tdGhpbmtib29rLTE2Cj4gPiA+ID4gPiA+ID4gPiA+ICAtIHgxLWFzdXMtemVuYm9v
ay1hMTQKPiA+ID4gPiA+ID4gPiA+ID4gIC0geDEtY3JkCj4gPiA+ID4gPiA+ID4gPiA+ICAtIHgx
LWRlbGwtdGhlbmEKPiA+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+ID4gRml4ZXM6IDk2
MDYwOWIyMmJlNSAoImFybTY0OiBkdHM6IHFjb206IGhhbW9hOiBNb3ZlIFBIWSwgUEVSU1QsIGFu
ZCBXYWtlIEdQSU9zIHRvIFBDSWUgcG9ydCBub2RlcyBhbmQgYWRkIHBvcnQgTm9kZXMgZm9yIGFs
bCBQQ0llIHBvcnRzIikKPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiBBcmUgeW91IHNh
eWluZyB0aGF0IERUcyBpbiB0aGUgZmllbGQgYnJva2UgYmVjYXVzZSBvZiBzb21lIGtlcm5lbAo+
ID4gPiA+ID4gPiA+ID4gY2hhbmdlPyAgVGhhdCdzIG5vdCBzdXBwb3NlZCB0byBoYXBwZW4uICBF
dmVuIHRob3VnaCBQSFksIFBFUlNULCBhbmQKPiA+ID4gPiA+ID4gPiA+IFdha2UgR1BJT3Mgc2hv
dWxkIGJlIGRlc2NyaWJlZCBpbiBSb290IFBvcnQgbm9kZXMgaW5zdGVhZCBvZiB0aGUgUm9vdAo+
ID4gPiA+ID4gPiA+ID4gQ29tcGxleCBub2RlIGluICpmdXR1cmUqIERUcywgdGhlIGtlcm5lbCBp
cyBzdGlsbCBzdXBwb3NlZCB0byBhY2NlcHQKPiA+ID4gPiA+ID4gPiA+IHRoZSBvbGQgc3R5bGUg
d2l0aCB0aGVtIGRlc2NyaWJlZCBpbiB0aGUgUm9vdCBDb21wbGV4IG5vZGUuCj4gPiA+ID4gPiA+
ID4gPgo+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gVGhpcyBpcyBub3QgcmVsYXRlZCB0byB0
aGUgZHJpdmVyIGNoYW5nZS4gVGhlIGRyaXZlciBjb3JyZWN0bHkgcGFyc2VzIGFsbCBSb290Cj4g
PiA+ID4gPiA+ID4gUG9ydCBwcm9wZXJ0aWVzIGVpdGhlciBpbiB0aGUgUm9vdCBDb21wbGV4IG5v
ZGUgKG9sZCBiaW5kaW5nKSBvciBSb290IFBvcnQgbm9kZQo+ID4gPiA+ID4gPiA+IChuZXcgYmlu
ZGluZykuIEJ1dCBjb21taXQgOTYwNjA5YjIyYmU1LCBsZWZ0IGNvbnZlcnRpbmcgbWVudGlvbmVk
IGJvYXJkIERUUyB0bwo+ID4gPiA+ID4gPiA+IHRoZSBuZXcgYmluZGluZywgbGVhdmluZyB0aG9z
ZSBhZmZlY3RlZCBwbGF0Zm9ybXMgaW4gYSBoYWxmIGJha2VkIHN0YXRlIGkuZS4sCj4gPiA+ID4g
PiA+ID4gc29tZSBwcm9wZXJ0aWVzIGluIFJDIG5vZGUgYW5kIHNvbWUgaW4gUm9vdCBQb3J0IG5v
ZGUuIERyaXZlciBjYW5ub3QgcGFyc2Ugc3VjaAo+ID4gPiA+ID4gPiA+IGNvbWJpbmF0aW9ucywg
c28gaXQgZmFpbHMgY29ycmVjdGx5IHNvLgo+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+Cj4gPiA+
ID4gPiA+IEFyZSB5b3Ugc2F5aW5nIHRoYXQgYWJvdmUgbGlzdGVkIG1hY2hpbmVzIGhhcyBicm9r
ZW4gUENJZSBzdXBwb3J0IGluCj4gPiA+ID4gPiA+IHY3LjAtcmM/Cj4gPiA+ID4gPiA+Cj4gPiA+
ID4gPgo+ID4gPiA+ID4gSSBoYXZlbid0IHZlcmlmaWVkIGl0LCBidXQgSSdtIHByZXR0eSBzdXJl
IFBDSWUgaXMgYnJva2VuIG9uIHRoZXNlIHBsYXRmb3Jtcy4KPiA+ID4gPiA+Cj4gPiA+ID4KPiA+
ID4gPiBJbiBsaW5lIHdpdGggQmpvcm4ncyByZXF1ZXN0LCB3ZSBzaG91bGRuJ3QgaGF2ZSB0byBn
dWVzcy4KPiA+ID4gPgo+ID4gPiA+ID4gPiBJdCBzZWVtcyB0aGlzIGlzIGEgKHBhcnRpYWwpIHJl
dmVydCBvZiA5NjA2MDliMjJiZTUsIGlzIHRoaXMgYWN0dWFsbHkKPiA+ID4gPiA+ID4gZml4aW5n
IHRoYXQgY2hhbmdlLCBvciBpcyBpdCBvbmx5IGFwcGxpY2FibGUgb25jZSBzb21lIG90aGVyIGNo
YW5nZXMgYXJlCj4gPiA+ID4gPiA+IGFwcGxpZWQ/Cj4gPiA+ID4gPiA+Cj4gPiA+ID4gPgo+ID4g
PiA+ID4gVGhpcyBjaGFuZ2UgaXMgZml4aW5nIHRoZSBpc3N1ZSBpbiB0aGUgcmVzcGVjdGl2ZSBi
b2FyZCBEVFMgYW5kIGlzIGEgc3RhbmRhbG9uZQo+ID4gPiA+ID4gZml4IG9uIHRvcCBvZiB2Ny4w
LXJjMS4KPiA+ID4gPiA+Cj4gPiA+ID4KPiA+ID4gPiBTbyA5NjA2MDliMjJiZTUgd2FzIGJyb2tl
biB3aGVuIEkgbWVyZ2VkIGl0Pwo+ID4gPiA+Cj4gPiA+Cj4gPiA+IEJyb2tlbiBvbiB0aGUgbWFj
aGluZXMgbWVudGlvbmVkIGluIHRoZSBjb21taXQgbWVzc2FnZSwgbm90IGZvciBhbGwgSGFtb2EK
PiA+ID4gcGxhdGZvcm1zLgo+ID4gPgo+ID4gPiA+IFRoZSBjb21taXQgbWVzc2FnZSBzYXlzIHRo
YXQgdGhlIGNvbW1pdCB3YXMgaW5jb21wbGV0ZSwgaW4gdGhhdCBpdAo+ID4gPiA+IGRpZG4ndCBm
dWxseSBjb252ZXJ0IGZyb20gdGhlIG9sZCB0byB0aGUgbmV3IHN0eWxlLCBzbyBpdCBzb3VuZHMg
bGlrZQo+ID4gPiA+IHRoZSBvZmZlbmRpbmcgY29tbWl0IHdhcyBpbmNvbXBsZXRlIC0gYnV0IEkg
YmVsaWV2ZSB0aGUgb2ZmZW5kaW5nIGNvbW1pdAo+ID4gPiA+IHdhcyBhIHdvcmthcm91bmQgZm9y
IHRoZSBuZXcgc29sdXRpb24gbm90IGJlaW5nIGluIHBsYWNlIGFuZCB0aGlzIGNvbW1pdAo+ID4g
PiA+IG1vc3RseSByZXZlcnRzIHRoZSBjaGFuZ2VzIGluIHRoZSBvZmZlbmRpbmcgY29tbWl0Lgo+
ID4gPiA+Cj4gPiA+Cj4gPiA+IFNvIDk2MDYwOWIyMmJlNSB3YXMgc3VwcG9zZWQgdG8gbW92ZSBh
bGwgdGhlIHBsYXRmb3JtcyBmcm9tIG9sZCBQQ0llIGJpbmRpbmcgdG8KPiA+ID4gbmV3IGZvciBn
cmVhdGVyIGdvb2QsIGJ1dCBpdCBhcHBhcmVudGx5IGRlY2lkZWQgdG8gZG8gc28gb25seSBmb3Ig
YSBzdWJzZXQgb2YKPiA+ID4gdGhlIHBsYXRmb3JtcyBmb3Igc29tZSByZWFzb24gd2hpY2ggIGRv
bid0IGtub3cuIEJ1dCB0aGUgcHJvYmxlbSBhcmlzZXMgZHVlIHRvCj4gPiA+IDk2MDYwOWIyMmJl
NSBjaGFuZ2luZyB0aGUgaGFtb2EuZHRzaSB0byB0aGUgbmV3IGJpbmRpbmcgd2hpY2ggYWxzbyB3
YXJyYW50cyB0aGUKPiA+ID4gcGxhdGZvcm0gRFRTIHRvIGFsc28gYmUgY2hhbmdlZCB0byB0aGUg
bmV3IGJpbmRpbmcuIElmIHdlIG9ubHkgaGF2ZSBlaXRoZXIgZHRzaQo+ID4gPiBvciBkdHMgY29u
dmVydGVkIGFuZCBub3QgYm90aCB0byB0aGUgbmV3IGJpbmRpbmcsIHRoZSBkcml2ZXIgd2lsbCBn
ZXQgY29uZnVzZWQKPiA+ID4gYW5kIGZhaWwuIEFuZCB0aGlzIGlzIHdoYXQgZXhhY3RseSBoYXBw
ZW5kZWQgZm9yIGJlbG93IG1hY2hpbmVzOgo+ID4gPgo+ID4gPiAgLSB4MS1ocC1vbW5pYm9vay14
MTQKPiA+ID4gIC0geDEtbWljcm9zb2Z0LWRlbmFsaQo+ID4gPiAgLSB4MWU4MDEwMC1sZW5vdm8t
eW9nYS1zbGltN3gKPiA+ID4gIC0geDFlODAxMDAtbWVkaW9uLXNwcmNocmdkLTE0LXMxCj4gPiA+
ICAtIHgxcDQyMTAwLWxlbm92by10aGlua2Jvb2stMTYKPiA+ID4gIC0geDEtYXN1cy16ZW5ib29r
LWExNAo+ID4gPiAgLSB4MS1jcmQKPiA+ID4gIC0geDEtZGVsbC10aGVuYQo+ID4KPiA+IEkgY2Fu
IGNvbmZpcm0gdGhlIGJyZWFrYWdlIGZvciAoc29tZSBvZikgdGhlIGxpc3RlZCBkZXZpY2VzIG9u
IFVidW50dS4KPiA+IFdlIGFyZSBleHBlcmltZW50aW5nIHdpdGggNy4wLXJjcyBhaGVhZCBvZiBv
dXIgMjYuMDQgcmVsZWFzZS4KPiA+Cj4gPiBJJ2xsIHRyeSB0byBjb2xsZWN0IHNvbWUgdGVzdCBm
ZWVkYmFjayBmb3IgdGhlIGZpeC4KPiA+IEknZCBjZXJ0YWlubHkgYXBwcmVjaWF0ZSB0aGlzIGJl
aW5nIGluY2x1ZGVkIGFzIGFuIHJjIGZpeCBzaW5jZQo+ID4gY3VycmVudGx5IGhhbGYgb2YKPiA+
IHRoZSB4MSBsYXB0b3AgZGV2aWNlcyBhcmUgYnJva2VuLgo+ID4KPgo+IFRoYW5rcyBmb3IgdGhl
IHJlcG9ydC4gV2Ugd2lsbCB0cnkgdG8gZ2V0IHRoaXMgcGF0Y2ggaW50byB2Ny4wLXJjUy4KPgo+
IEl0J2QgYmUgYXBwcmVjaWF0ZWQgaWYgeW91IGNhbiB0ZXN0IHRoaXMgcGF0Y2ggYW5kIGdpdmUg
eW91ciB0ZXN0ZWQtYnkgdGFnLgo+Cj4gLSBNYW5pCgpUaGFuayB5b3UhCgpUZXN0ZWQgaXQgbXlz
ZWxmIGFuZCBJIGhhdmUgcm9sbGVkIHRoaXMgb3V0IHRvIG15IHVidW50dS1jb25jZXB0IHRlc3Rp
bmcgcmVwby4KSSBoYXZlIHRlc3RlZCB0aGUgQ1JEIGFuZCBnb3QgdXNlciBmZWVkYmFjayB0aGF0
IGl0IHdvcmtzIG9uIGF0IGxlYXN0IGFuCk9tbmlib29rICh3aGVyZSB3ZSBmaXJzdCBzYXcgdGhl
IHJlZ3Jlc3Npb24gd2l0aG91dCB0aGUgcGF0Y2gpIGFuZCBMZW5vdm8gWW9nYS4KUG90ZW50aWFs
bHkgbW9yZSBidXQgbm90IGV2ZXJ5b25lIHByb3ZpZGVzIGZlZWRiYWNrIHdoZW4gdGhpbmdzIGRv
bid0IGJyZWFrLgoKVGVzdGVkLWJ5OiBUb2JpYXMgSGVpZGVyIDx0b2JpYXMuaGVpZGVyQGNhbm9u
aWNhbC5jb20+Cgo+Cj4gLS0KPiDgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+
4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
