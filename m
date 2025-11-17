Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A41D7CE8D6B
	for <linux-phy@archiver.kernel.org>; Mon, 17 Nov 2025 17:12:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZR1saa+DL2oSX980aCaIIxMYN20CdN4x7CuNZhM6D1w=; b=LwtSww9AP5nYot
	bJ390GhXMMgIBCHKH1adjNmEyf/2JTIbZDaB4rAvqePzd8Ew7PnA/yaKPXQO4nIWT/3z4VVsE+8ac
	nwDsNLs2hCDde54rx2b/lv6TurpFWf+uBpqO2BAYmGtsjCtDVga16duO88ena942gtKLj0CdICvqd
	G3JrH4P9CUai9v5FRjD0lEJxancsbBbKTn8v5cfH3dUd9pP6nukrPm682s9YictS7m/sWRncCugRh
	XBDxRzL+KbUbYCFVchOQmCqWaQm4esL7fVRnsWkeNqL91/KLEMPQihQ+TOuRlrBhWcFyt1Tw6bhYY
	2RDUpM+xMdewzGu7WmkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL2mX-0000000GVn5-0s1m;
	Mon, 17 Nov 2025 17:12:49 +0000
Received: from mail-io1-xd32.google.com ([2607:f8b0:4864:20::d32])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL2mU-0000000GVmD-0USi
	for linux-phy@lists.infradead.org;
	Mon, 17 Nov 2025 17:12:47 +0000
Received: by mail-io1-xd32.google.com with SMTP id ca18e2360f4ac-94822ad1baeso332549939f.2
        for <linux-phy@lists.infradead.org>; Mon, 17 Nov 2025 09:12:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1763399565; x=1764004365; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UVyQ1lgChGCDzR3SsqjIRgL3e2y5+BZfD9Zpt6v7tGs=;
        b=g1rP6oYYQ3uJR5xMJQ3QjDPSCXJpb2FlfemWgj98WSoP9178ZF4tq9USg6aD3KNZba
         PghkboSPSf9S6fU0q970bmHR6jY0p+2FVHEDJJ6SMLcz+bi+MV32YOfzFtn+UBFA1WEQ
         GlV7nXnpgUvjqMCm1wjG/mnYhURigMDbWK5t1kqWKLzV0GytKvvx8VjQkEIvrYIqKXPh
         bHO7s1HqZ18HtZdhJv5Vivffy7JcXGXKVvyDAEiWG8bvnBz8X8RrNeJ9s9DwcnC5wBG2
         WqVv0ARE4XFx3CcYGXT8J4se9GSpuPgSthiDLrMv8qJCNNklsB8VjZ3y2XfpFjBmVjyl
         TIkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763399565; x=1764004365;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UVyQ1lgChGCDzR3SsqjIRgL3e2y5+BZfD9Zpt6v7tGs=;
        b=Yx6dxbW8iu3empVG1UiWQhoLSvhKh+os4MXDI1EqtPLXq7iGRRl/pMb2HYpHpqNcZH
         CFcrIXTLmaarv0GQp490D37/lK9f2kaEUdF7oJumPNBCuHBEjM/lBbVXMjEN+9ZsIlS9
         OXfTrf8h5jJa+W8UKIg+cHIpLq5xoTPB7UPKUeJHV5dgOhVFl/y1awJ3ej4IaDVF/OK2
         IcNg6xJtacxWTKE3xWMDhtx9Gsvx1ZdISdyILDL+Y4uha9CwmTGMVdxg1c/a1d4FVAv+
         O7kh52vGIns49cJ4Q/uWEKONh4AeG/65tEZ/wqK2fl7+waT0xMohvMhZkt+mKkof+t+q
         wGEw==
X-Forwarded-Encrypted: i=1; AJvYcCU6ibKX6LzKQJVWHkiTBf/LlqnvpwKZAOE4hW8gUddbHMIz3jRuwoDAl6ytsV7bXBZjTM7x6+0PqwE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz7Rdg8Q0Ut74CEqZyhVVw9tfrF3NgXXusXnzp68BoajaSlz1AJ
	pAqSf71Xwy3oWNdqWgEZHoyNuLFyeDwh+fglLLAB68WDKHLwHGndaRAGzczvPCQDdOo=
X-Gm-Gg: ASbGncvtCUTuJQNJXvTJ86JtJgKbD20w8owDYjllOjgQqCRZs87iqW1VDd1NnDn5GAb
	2873yx9SMSHk5qXEkcoG/eGBj+9XM3Guy+xrKx3u3kzEZOxGgCy0Rn4A6l6RLa0EAl9XoXIHznk
	hhsr6bgx9qGHH86fTEOj/BYTRI4MLJWJVgEVyJWMkilh/v0i8QLh0vnnpwgtubCCT6GKl/RTRJJ
	WwkRNQETNJvMKyop5wYYjaOKDLR+qZOHgCqTPqq02wbPrJZt2XriC40STlRdHwglXozfVrDAKs+
	rDf5BG+Rmm9C9Jcfvd48m1YiC8M8+IMFlLv3imQahbZC3rRHRA+yjj2REN7lF2tnXZ/7YbFLAPm
	qAxveSobOUZfgevMXwcLK6dESaem1URRWvnl3Qe8umNI7NNUX65t33XJB18o8Rp6kQr1gRmo7hr
	+JXWubBgWaqWoeEBWTiQ2yrJP0VF5PoXNjux2nlPcOdyQ3CVUPdQ/eWp48Sazt
X-Google-Smtp-Source: AGHT+IFGKqdRJLV9RQOyvs5MvCac0JQUqvPl4j+mCywXmiQhs/UBqawUJsZSrZzGsMyRTHumxUBE2g==
X-Received: by 2002:a05:6638:4b8b:b0:5b7:1ebd:4d11 with SMTP id 8926c6da1cb9f-5b7c9c45d2bmr9122365173.3.1763399564687;
        Mon, 17 Nov 2025 09:12:44 -0800 (PST)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-5b7bd24d5e9sm4708226173.3.2025.11.17.09.12.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Nov 2025 09:12:44 -0800 (PST)
Message-ID: <b9769b9f-cbc4-459f-911e-f29f848b6ce7@riscstar.com>
Date: Mon, 17 Nov 2025 11:12:41 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/7] Introduce SpacemiT K1 PCIe phy and host controller
To: Jason Montleon <jmontleo@redhat.com>
Cc: dlan@gentoo.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org,
 bhelgaas@google.com, lpieralisi@kernel.org, kwilczynski@kernel.org,
 mani@kernel.org, ziyao@disroot.org, aurelien@aurel32.net,
 johannes@erdfelt.com, mayank.rana@oss.qualcomm.com,
 qiang.yu@oss.qualcomm.com, shradha.t@samsung.com, inochiama@gmail.com,
 pjw@kernel.org, palmer@dabbelt.com, aou@eecs.berkeley.edu, alex@ghiti.fr,
 p.zabel@pengutronix.de, christian.bruel@foss.st.com,
 thippeswamy.havalige@amd.com, krishna.chundru@oss.qualcomm.com,
 guodong@riscstar.com, devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org, spacemit@lists.linux.dev,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20251113214540.2623070-1-elder@riscstar.com>
 <CAJD_bP+AjhNCB6kCeKdnXERjP9j8dhbCejnS1OVmFf_VShti5Q@mail.gmail.com>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <CAJD_bP+AjhNCB6kCeKdnXERjP9j8dhbCejnS1OVmFf_VShti5Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_091246_391010_503B3568 
X-CRM114-Status: GOOD (  15.94  )
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

T24gMTEvMTQvMjUgMTA6MjEgUE0sIEphc29uIE1vbnRsZW9uIHdyb3RlOgo+IE9uIFRodSwgTm92
IDEzLCAyMDI1IGF0IDQ6NDXigK9QTSBBbGV4IEVsZGVyIDxlbGRlckByaXNjc3Rhci5jb20+IHdy
b3RlOgo+Pgo+PiBUaGlzIHNlcmllcyBpbnRyb2R1Y2VzIGEgUEhZIGRyaXZlciBhbmQgYSBQQ0ll
IGRyaXZlciB0byBzdXBwb3J0IFBDSWUKPj4gb24gdGhlIFNwYWNlbWlUIEsxIFNvQy4gIFRoZSBQ
Q0llIGltcGxlbWVudGF0aW9uIGlzIGRlcml2ZWQgZnJvbSBhCj4+IFN5bm9wc3lzIERlc2lnbldh
cmUgUENJZSBJUC4gIFRoZSBQSFkgZHJpdmVyIHN1cHBvcnRzIG9uZSBjb21iaW5hdGlvbgo+PiBQ
Q0llL1VTQiBQSFkgYXMgd2VsbCBhcyB0d28gUENJZS1vbmx5IFBIWXMuICBUaGUgY29tYm8gUEhZ
IHBvcnQgdXNlcwo+PiBvbmUgUENJZSBsYW5lLCBhbmQgdGhlIG90aGVyIHR3byBwb3J0cyBlYWNo
IGhhdmUgdHdvIGxhbmVzLiAgQWxsIFBDSWUKPj4gcG9ydHMgb3BlcmF0ZSBhdCA1IEdUL3NlY29u
ZC4KPj4KPj4gVGhlIFBDSWUgUEhZcyBtdXN0IGJlIGNvbmZpZ3VyZWQgdXNpbmcgYSB2YWx1ZSB0
aGF0IGNhbiBvbmx5IGJlCj4+IGRldGVybWluZWQgdXNpbmcgdGhlIGNvbWJvIFBIWSwgb3BlcmF0
aW5nIGluIFBDSWUgbW9kZS4gIFRvIGFsbG93Cj4+IHRoYXQgUEhZIHRvIGJlIHVzZWQgZm9yIFVT
QiwgdGhlIG5lZWRlZCBjYWxpYnJhdGlvbiBzdGVwIGlzIHBlcmZvcm1lZAo+PiBieSB0aGUgUEhZ
IGRyaXZlciBhdXRvbWF0aWNhbGx5IGF0IHByb2JlIHRpbWUuICBPbmNlIHRoaXMgc3RlcCBpcyBk
b25lLAo+PiB0aGUgUEhZIGNhbiBiZSB1c2VkIGZvciBlaXRoZXIgUENJZSBvciBVU0IuCj4+Cj4+
IFRoZSBkcml2ZXIgc3VwcG9ydHMgMjU2IE1TSXMsIGFuZCBpbml0aWFsbHkgZG9lcyBub3Qgc3Vw
cG9ydCBQQ0kgSU5UeAo+PiBpbnRlcnJ1cHRzLiAgVGhlIGhhcmR3YXJlIGRvZXMgbm90IHN1cHBv
cnQgTVNJLVguCj4+Cj4+IFZlcnNpb24gNiBvZiB0aGlzIHNlcmllcyBhZGRyZXNzZXMgYSBmZXcg
Y29tbWVudHMgZnJvbSBDaHJpc3RvcGhlCj4+IEphaWxsZXQsIGFuZCBpbXByb3ZlcyBhIHdvcmth
cm91bmQgdGhhdCBkaXNhYmxlcyBBU1BNIEwxLiAgVGhlIHR3bwo+PiBwZW9wbGUgd2hvIGhhZCBy
ZXBvcnRlZCBlcnJvcnMgb24gZWFybGllciB2ZXJzaW9ucyBvZiB0aGlzIGNvZGUgaGF2ZQo+PiBj
b25maXJtZWQgdGhlaXIgTlZNZSBkZXZpY2VzIG5vdyB3b3JrIHdoZW4gY29uZmlndXJlZCB3aXRo
IHRoZSBkZWZhdWx0Cj4+IFJJU0MtViBrZXJuZWwgY29uZmlndXJhdGlvbi4KPiAKPiBJIHN1Y2Nl
c3NmdWxseSB0ZXN0ZWQgdGhpcyBwYXRjaHNldCBvbiBhIEJhbmFuYSBQaSBGMyBhbmQgYWxzbyBh
Cj4gTWlsay1WIE0xIEp1cGl0ZXIgYnkgbWFraW5nIHRoZSBzYW1lIGFkZGl0aW9ucyB0byBrMS1t
aWxrdi1qdXBpdGVyLmR0cwo+IGFzIHdlcmUgbWFkZSB0byBrMS1iYW5hbmFwaS1mMy5kdHMuCj4g
SSBubyBsb25nZXIgaGF2ZSBwcm9ibGVtcyB3aXRoIE5WTUUgZGV2aWNlcyBsaWtlIEkgZGlkIHdo
ZW4gSSB0cmllZCB2MyBhbmQgdjQuCj4gCj4gVGVzdGVkLWJ5OiBKYXNvbiBNb250bGVvbiA8am1v
bnRsZW9AcmVkaGF0LmNvbT4KClRoYW5rIHlvdSB2ZXJ5IG11Y2ggZm9yIHRlc3RpbmcgdGhpcy4g
IFlvdXIgVGVzdGVkLWJ5IGlzIGluY2x1ZGVkCmluIE1hbmkncyBjb21taXQuCgoJCQkJCS1BbGV4
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
