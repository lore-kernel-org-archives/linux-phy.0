Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F035D3748B
	for <linux-phy@archiver.kernel.org>; Fri,  5 Dec 2025 19:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=62HWe15IyuX4h5fQVedg2jNXX+qqY6Puqsl02AbAAyQ=; b=EKgTjHBhM+D8d1
	qUgFV/Ar683Z8O8Yz8fG+oNsXr6AltYJ/CMHsNG0MMyga7AMz3LhC4VZ+VucpW/8q3raenJu1JzoQ
	53P/Fb7RvhhOObaQ3qTrp11vT7DOAF1X+Fu22vgdjv/BO/tAK1u2HvltR0hbrQz7561eg5Az1wrFl
	Dkc8trEf0bD9akMf/YSgv71VILx2UBklUxc402519OV6pvGZFNu0XhJHAAvbp503vQU0GjYculyoB
	B2edp/4cAavTotLpRE7XnDs8ru7lWQZ7IGfs7bR2PRtZc7xMmcTVqfEjlkZi1PqyrEt7d44EINyYG
	3TbGWVJpHGH0kv+rVpTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRbDo-00000009vYe-3UsK;
	Fri, 05 Dec 2025 19:12:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRbDo-00000009vYB-0D1s
	for linux-phy@bombadil.infradead.org;
	Fri, 05 Dec 2025 19:12:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=wM9ZHbZ5gPCyVTZL6N8CtsU8BUTDcZjFM6EaKvjgNpw=; b=UD99Xpvol+jUF8Q4A4SBjSqFO5
	z+eCbxOOe9RKL/izAB0eUqUeNWUCTROmOdSTjSTKo3+bD9THX39dFPEbhgGn2IutfPiNB/+h2bEoD
	EWurCmP5TyvE8OeJsbOnW4X34Xl0JgwGvt+eGZIbaj866cyxcHR60EO841M3KkhGE0JW+wlxFLOcW
	Fl/KpQh1JFd3PDg/79o2zkT+ZMOO/sZM40q2aagAbVN8h7qNE6MDcVuh0rnYDANTVbSn/5FFeR2Yf
	tNwPC/dVkq8FRvPYstbphcKx62a1rmuApcOLkzNt1g3RYDjQOsW0vpomnuroK++Oy1JJMvEi4uiFK
	cDqRi3hA==;
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRaMD-00000006eWV-3OBx
	for linux-phy@lists.infradead.org;
	Fri, 05 Dec 2025 18:16:43 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-297f35be2ffso37617285ad.2
        for <linux-phy@lists.infradead.org>; Fri, 05 Dec 2025 11:11:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1764961918; x=1765566718; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wM9ZHbZ5gPCyVTZL6N8CtsU8BUTDcZjFM6EaKvjgNpw=;
        b=UpS8uDeYvU1gDQOpxHCggEM2r6g5AAtgiy+t+G/bLWRxtikQNWa5T7swWlU1f/TiXE
         l5z7XhUEQqZX8AWMp7tL9fDrQBMRIqNMhQX/7IPzxuDdo8tXwzkV29SoDVPOSnFj+95f
         kfqKO1LjlvU4UzZVEHYwgGk8bmmk3Oq6xlepyUB3kqsLUUZQXFufcr70z1VxQMT81rM8
         KYHiUZqM9SzgGyXnTajWvHS+h1shG9d54mb49tR98nNY63PpTuJI1edE/j02fyrlACk9
         5WOdX6aFkfSiq7WiTFxkVVmRskBd74e2QYmBq7FLEBZp8wfa1myKjgmDBsDc9GZjOWAy
         mgiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764961918; x=1765566718;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wM9ZHbZ5gPCyVTZL6N8CtsU8BUTDcZjFM6EaKvjgNpw=;
        b=gr44f77AcTyWsFxjnCAi7HqW3Rc4SwMCs0q90TNoZ/tYRFttDDNjHYhIS5G9P3Zqz8
         xoM6QP/e9bRWQQXmzVq64VNR5eatRsPRMF7uL9cTrpXK9dkHuCYSWrqJsyxm8eL5llJk
         fz2UuIhachMQeKyyx9uBHSsOeZNSL9Ba97ulnc19y8aWs7WcA0u4teCHCCi3y2vioyIj
         2whGxMHAj3X2B6aFu/Y6n83TuB9CKHtbeoYPMXqYaUkfHEL3VOg5zolbeQ+tFIE3y4Q8
         xiRLbag4er49q62AewS39YdgCbPNry7SDUMQJN9WemtvD3QFmY7thc+UzRzT0effFQJP
         k+vg==
X-Forwarded-Encrypted: i=1; AJvYcCXPMfHzxoCG2rzTB92U3PrctAV3cj4m5gmY8lM/RflTYRZMr+HoSHOb4xlY/cqz7+T08TVFnvnwdvg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw5ojA8I0fPqGuTZ+bNlIKRB1Fz5iTb9hhHvbvYkN2j61mZCYpq
	gCW+OynlUAAiw2Z/O5xWpQOdglaZ/7d4PID+uFibYWez2DAeMGkEjVerhkpUJpNUCajG4G9vnLi
	xj3ZOwajYk1hxlA/7lrXNQ9WzWBwpzfsMHxWz3WKF
X-Gm-Gg: ASbGncsiF1rDg4sdonnnGRelefAr5xKX1ODFl8aDRTJh/TTouuccdzYlxVk6JJcD9J8
	IEfTSQhDMhxzWTANV9Wm5uVIATw9d0AGIL5pj8vXweuHn+wgOuBfQt1D2eR7+nXxK4/F6BP/9RC
	naYUQ1vvHNLvMHtjgTdWORKg1qaF99T0yQ5TmnXDkXezXawhHIoQGqMVbAe/c4zAd3u+ByVAJAb
	uxO5Ijb8mpAQCrt1L2RjJJdXyRSJKq/tTFxdRXgcr0Q9xK6BMOqfUcDBUFIEnwgz4SEeqBi66b3
	MdJ1tQhSGX8dZF43/f6Z1a+5yZE=
X-Google-Smtp-Source: AGHT+IF8J92R4M7+pLwot0D0+DgTjmbE3S+sUzVpC/q61q+B6raArwC6JCX3rpjp0dZrIL5XNz8EpvQLm8BmLoh84nA=
X-Received: by 2002:a05:7022:d93:b0:119:e569:f627 with SMTP id
 a92af1059eb24-11e032b99a8mr103172c88.32.1764961917558; Fri, 05 Dec 2025
 11:11:57 -0800 (PST)
MIME-Version: 1.0
References: <20251205-phyb4-v8-0-c59ea80a4458@google.com> <20251205-phyb4-v8-1-c59ea80a4458@google.com>
 <18eeb1c5-d21b-4505-b6a4-472f6e191864@kernel.org> <CA+zupgwa+m8Pa=+8shORaOA1OO6zoo6zYEojFS2UDuP0doBq7A@mail.gmail.com>
 <f32e0810-56f9-417e-abf6-0cc7b361bd15@kernel.org>
In-Reply-To: <f32e0810-56f9-417e-abf6-0cc7b361bd15@kernel.org>
From: Roy Luo <royluo@google.com>
Date: Fri, 5 Dec 2025 11:11:21 -0800
X-Gm-Features: AWmQ_bm3YiJStmimt8YeHw9S3Ay4OOTCAl_PiUAMxoeOahq1USzcbH6CTsqmBZo
Message-ID: <CA+zupgyxQisYBnLj9_3DtcN3R1Ugfv+-p-wimFp-hnqkhrrgyA@mail.gmail.com>
Subject: Re: [PATCH v8 1/2] dt-bindings: phy: google: Add Google Tensor G5 USB PHY
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Badhri Jagan Sridharan <badhri@google.com>, Doug Anderson <dianders@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	Joy Chakraborty <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251205_181641_937192_1FC34EA3 
X-CRM114-Status: GOOD (  30.76  )
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

T24gRnJpLCBEZWMgNSwgMjAyNSBhdCAxMDo1MuKAr0FNIEtyenlzenRvZiBLb3psb3dza2kgPGty
emtAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiAwNS8xMi8yMDI1IDE5OjQ3LCBSb3kgTHVvIHdy
b3RlOgo+ID4gT24gRnJpLCBEZWMgNSwgMjAyNSBhdCA5OjEz4oCvQU0gS3J6eXN6dG9mIEtvemxv
d3NraSA8a3J6a0BrZXJuZWwub3JnPiB3cm90ZToKPiA+Pgo+ID4+IE9uIDA1LzEyLzIwMjUgMDQ6
NTQsIFJveSBMdW8gd3JvdGU6Cj4gPj4+IERvY3VtZW50IHRoZSBkZXZpY2UgdHJlZSBiaW5kaW5n
cyBmb3IgdGhlIFVTQiBQSFkgaW50ZXJmYWNlcyBpbnRlZ3JhdGVkCj4gPj4+IHdpdGggdGhlIERX
QzMgY29udHJvbGxlciBvbiBHb29nbGUgVGVuc29yIFNvQ3MsIHN0YXJ0aW5nIHdpdGggRzUKPiA+
Pj4gZ2VuZXJhdGlvbiAoTGFndW5hKS4gVGhlIFVTQiBQSFkgb24gVGVuc29yIEc1IGluY2x1ZGVz
IHR3byBpbnRlZ3JhdGVkCj4gPj4+IFN5bm9wc3lzIFBIWSBJUHM6IHRoZSBlVVNCIDIuMCBQSFkg
SVAgYW5kIHRoZSBVU0IgMy4yL0Rpc3BsYXlQb3J0IGNvbWJvCj4gPj4+IFBIWSBJUC4KPiA+Pj4K
PiA+Pj4gRHVlIHRvIGEgY29tcGxldGUgYXJjaGl0ZWN0dXJhbCBvdmVyaGF1bCBpbiB0aGUgR29v
Z2xlIFRlbnNvciBHNSwgdGhlCj4gPj4+IGV4aXN0aW5nIFNhbXN1bmcvRXh5bm9zIFVTQiBQSFkg
YmluZGluZyBmb3Igb2xkZXIgZ2VuZXJhdGlvbnMgb2YgR29vZ2xlCj4gPj4+IHNpbGljb25zIHN1
Y2ggYXMgZ3MxMDEgYXJlIG5vIGxvbmdlciBjb21wYXRpYmxlLCBuZWNlc3NpdGF0aW5nIHRoaXMg
bmV3Cj4gPj4+IGRldmljZSB0cmVlIGJpbmRpbmcuCj4gPj4+Cj4gPj4+IFNpZ25lZC1vZmYtYnk6
IFJveSBMdW8gPHJveWx1b0Bnb29nbGUuY29tPgo+ID4+Cj4gPj4gV2h5IGludGVudGlvbmFsbHkg
ZHJvcHBpbmcgdGhlIHRhZz8gSG93IGFyZSB5b3UgaGFuZGxpbmcgdGhpcyBwYXRjaHNldD8KPiA+
PiBSZXdyaXRlIGV2ZXJ5IHRpbWUgZnJvbSBzY3JhdGNoPwo+ID4KPiA+IEhpIEtyenlzenRvZiwK
PiA+Cj4gPiBJIGRyb3BwZWQgdGhlIHRhZyBiZWNhdXNlIGEgbmV3IGZpbGUgaXMgYmVpbmcgbW9k
aWZpZWQgaW4gdGhpcyB2ZXJzaW9uLAo+ID4gQWx0aG91Z2ggaXQncyBqdXN0IE1BSU5UQUlORVIg
ZmlsZSBidXQgSSB0aG91Z2h0IHlvdSBtaWdodCBhbHNvIHdhbnQKPiA+IHRvIHRha2UgYSBsb29r
LiBJIHdhc24ndCBzdXJlIGlmIG1vZGlmeWluZyBhIG5ldyBmaWxlIHF1YWxpZmllcyBhcwo+ID4g
InN1YnN0YW50aWFsIiBzbyBJIGVycmVkIG9uIHRoZSBzaWRlIG9mIGNhdXRpb24uIEkgc2hvdWxk
J3ZlIGNhbGxlZCBpdAo+ID4gb3V0IHNwZWNpZmljYWxseSBpbiB0aGUgY2hhbmdlIGxvZy4gU29y
cnkgZm9yIHRoZSBpbmNvbnZlbmllbmNlLgo+Cj4gMS4gc28ganVzdCBzcXVlZXplIHRoYXQgY2hh
bmdlIGludG8gc2Vjb25kIHBhdGNoIGFuZCBubyBuZWVkIHRvIGFzayBmb3IKPiByZS1yZXZpZXcK
ClRoYXQncyBhIGZhaXIgcG9pbnQuIEkgd2lsbCBiZSBtb3JlIG1pbmRmdWwgb2YgdGhlIHJldmll
dyBvdmVyaGVhZApnb2luZyBmb3J3YXJkLgoKPiAyLiBZb3UgZGlkIG5vdCByZWFkIG15IGNvbXBs
YWluIGZ1bGx5LCBsb29rOgo+Cj4gPgo+ID4gUmVnYXJkcywKPiA+IFJveSBMdW8KPiA+Cj4gPj4K
PiA+PiA8Zm9ybSBsZXR0ZXI+Cj4gPj4gVGhpcyBpcyBhIGZyaWVuZGx5IHJlbWluZGVyIGR1cmlu
ZyB0aGUgcmV2aWV3IHByb2Nlc3MuCj4gPj4KPiA+PiBJdCBsb29rcyBsaWtlIHlvdSByZWNlaXZl
ZCBhIHRhZyBhbmQgZm9yZ290IHRvIGFkZCBpdC4KPiA+Pgo+ID4+IElmIHlvdSBkbyBub3Qga25v
dyB0aGUgcHJvY2VzcywgaGVyZSBpcyBhIHNob3J0IGV4cGxhbmF0aW9uOgo+ID4+IFBsZWFzZSBh
ZGQgQWNrZWQtYnkvUmV2aWV3ZWQtYnkvVGVzdGVkLWJ5IHRhZ3Mgd2hlbiBwb3N0aW5nIG5ldyB2
ZXJzaW9ucwo+ID4+IG9mIHBhdGNoc2V0LCB1bmRlciBvciBhYm92ZSB5b3VyIFNpZ25lZC1vZmYt
YnkgdGFnLCB1bmxlc3MgcGF0Y2ggY2hhbmdlZAo+ID4+IHNpZ25pZmljYW50bHkgKGUuZy4gbmV3
IHByb3BlcnRpZXMgYWRkZWQgdG8gdGhlIERUIGJpbmRpbmdzKS4gVGFnIGlzCj4gPj4gInJlY2Vp
dmVkIiwgd2hlbiBwcm92aWRlZCBpbiBhIG1lc3NhZ2UgcmVwbGllZCB0byB5b3Ugb24gdGhlIG1h
aWxpbmcKPiA+PiBsaXN0LiBUb29scyBsaWtlIGI0IGNhbiBoZWxwIGhlcmUuIEhvd2V2ZXIsIHRo
ZXJlJ3Mgbm8gbmVlZCB0byByZXBvc3QKPiA+PiBwYXRjaGVzICpvbmx5KiB0byBhZGQgdGhlIHRh
Z3MuIFRoZSB1cHN0cmVhbSBtYWludGFpbmVyIHdpbGwgZG8gdGhhdCBmb3IKPiA+PiB0YWdzIHJl
Y2VpdmVkIG9uIHRoZSB2ZXJzaW9uIHRoZXkgYXBwbHkuCj4gPj4KPiA+PiBQbGVhc2UgcmVhZDoK
PiA+PiBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92Ni4xMi1yYzMvc291cmNlL0Rv
Y3VtZW50YXRpb24vcHJvY2Vzcy9zdWJtaXR0aW5nLXBhdGNoZXMucnN0I0w1NzcKPiA+Pgo+ID4+
IElmIGEgdGFnIHdhcyBub3QgYWRkZWQgb24gcHVycG9zZSwgcGxlYXNlIHN0YXRlIHdoeSBhbmQg
d2hhdCBjaGFuZ2VkLgo+Cj4gV2hlcmUgZGlkIHlvdSBhZGRyZXNzIHRoaXM/IFlvdSBkcm9wcGVk
IHRoZSB0YWcgc2lsZW50bHkuCgpXaHk6IGEgbmV3IGZpbGUgaXMgYmVpbmcgbW9kaWZpZWQuCldo
YXQgY2hhbmdlZDogTUFJTlRBSU5FUgpXaGF0J3Mgbm90IGNoYW5nZWQ6CkRvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvZ29vZ2xlLGxnYS11c2ItcGh5LnlhbWwKCkNvdWxkIHlv
dSBjb25zaWRlciByZS1yZXZpZXdpbmcgdGhpcyBwYXRjaD8KClRoYW5rcywKUm95IEx1bwoKPgo+
Cj4gQmVzdCByZWdhcmRzLAo+IEtyenlzenRvZgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
