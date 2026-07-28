Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 226E3C54F51
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jul 2026 21:08:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qy79hyOkxeXgmmgXRZM85NRSEpDadq9nj1TqdY3c9Xc=; b=1PTpMgtM5D5KGE
	etpYXCnMn06eyfRkT8A6wTru+fk4BB90qIov5IMQCfS9qi48kPmzMKOh8Fm8U70bHP6/xBa//wF/e
	cYKtZajBH6Rm96Z6PCxluat6RoRlFTHnvMUmtId4qeeLPaQUCohv013Ttzgkz+WCw+UMEKkDJXyzP
	F7VV1uoF7HNhUDMRTTJIl+pqRAB2xibVi0NsUY30I+qK18vPYwbqZBRdMuWvJ8rgAVw+ykCSIzHTM
	WngVD5Si8Lxgm/SKMAWkZKXy6fcJozAfFHgSVxw3uQz1MYzFR7ATV0WdOB3+PoCzAyGxl9XEW97Vm
	Sx72z23dq2ipPqgCtmCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wop24-00000006GDy-2U08;
	Tue, 28 Jul 2026 21:08:12 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wop24-00000006GDk-0Gxo
	for linux-phy@lists.infradead.org;
	Tue, 28 Jul 2026 21:08:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id CD04D4046A;
	Tue, 28 Jul 2026 21:08:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92FF81F000E9;
	Tue, 28 Jul 2026 21:08:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785272891;
	bh=LPD3vftpA1RxTfNr7o7PVynVjZyebX8OkuRakP1/rOI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=O5kz8OV4r3stpc1BEMsvSsrwYEyOPGYMHukc1ewdwQxh7rNgGlbIOUQG5yONDFnH7
	 0HPnSlt6fiINOivz29iP6phXWkvTvHPYCBLQ1hoNA98JPaDWlUV3BKh6j6cK2SnhbD
	 JEikiPLdQg/KgouyV1F9SZY8l1a/oUtTzd2T2jBd3B4GD+d2lfen474tkyFNd6Uvg3
	 tNEzgiKy1giN6kJe9ant+M/COEm+PCdmIxUL7pTSSpdxzhBHJsUsMN5m2FcXZr+Ovk
	 VaIj3sXitpgoNK/z7JPUndFQ9S/gd3eIuhT7iC3LbnpZQeCVzMZdNyJ+r+ZYI+qa56
	 F1mNqQnEOLJMw==
Date: Tue, 28 Jul 2026 14:08:10 -0700
From: Drew Fustini <fustini@kernel.org>
To: Icenowy Zheng <zhengxingda@iscas.ac.cn>
Cc: sashiko-reviews@lists.linux.dev, vkoul@kernel.org, conor+dt@kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	robh@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: add binding for T-Head TH1520
 USB PHY
Message-ID: <amkaOo9mkjJfDNsf@x1>
References: <20260723084316.3573714-1-zhengxingda@iscas.ac.cn>
 <20260723084316.3573714-2-zhengxingda@iscas.ac.cn>
 <20260723084759.3BBF81F000E9@smtp.kernel.org>
 <8c2d675115b25107bf463cbbb6a377f80c46e592.camel@iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8c2d675115b25107bf463cbbb6a377f80c46e592.camel@iscas.ac.cn>
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

T24gVGh1LCBKdWwgMjMsIDIwMjYgYXQgMTA6MDk6NDhQTSArMDgwMCwgSWNlbm93eSBaaGVuZyB3
cm90ZToKPiDlnKggMjAyNi0wNy0yM+Wbm+eahCAwODo0NyArMDAwMO+8jHNhc2hpa28tYm90QGtl
cm5lbC5vcmflhpnpgZPvvJoKPiA+IFRoYW5rIHlvdSBmb3IgeW91ciBjb250cmlidXRpb24hIFNh
c2hpa28gQUkgcmV2aWV3IGZvdW5kIDIgcG90ZW50aWFsCj4gPiBpc3N1ZShzKSB0byBjb25zaWRl
cjoKPiA+IC0gW01lZGl1bV0gVGhlICdyZWcnIHByb3BlcnR5IGlzIG9taXR0ZWQgZnJvbSB0aGUg
J3JlcXVpcmVkJyBsaXN0IGZvcgo+ID4gYSBtZW1vcnktbWFwcGVkIFBIWS4KPiA+IC0gW01lZGl1
bV0gVGhlICdhdmRkMzMtdXNiMy1zdXBwbHknIGlzIG9taXR0ZWQgZnJvbSB0aGUgJ3JlcXVpcmVk
Jwo+ID4gbGlzdCBiYXNlZCBvbiBzb2Z0d2FyZSBsaW1pdGF0aW9ucyByYXRoZXIgdGhhbiBoYXJk
d2FyZSBkZXNjcmlwdGlvbi4KPiAKPiBCVFcgdGhlIHBvd2VyIHJhaWwgaXMgZXhwZWN0ZWQgdG8g
YmUgYWx3YXlzIG9uIGF0IGxlYXN0IGFjY29yZGluZyB0bwo+IHRoZSBzY2hlbWF0aWNzIG9mIG11
bHRpcGxlIGJvYXJkcywgYXMgbWVudGlvbmVkIGluIHRoZSBuZXh0IHBhdGNoLgo+IAo+IFRoYW5r
cywKPiBJY2Vub3d5CgpUaGF0IG1ha2VzIHNlbnNlIGZvciB0aGUgc3VwcGx5LiBIb3dldmVyLCBJ
IHRoaW5rIHRoZSBlYXJsaWVyIHBvaW50CmFib3V0ICdyZWcnIHByb3BlcnR5IGlzIHByb2JhYmx5
IHZhbGlkLiBXb3VkbG4ndCBhbGwgdXNlcnMgb2YgdGhpcwpjb21wYXRpYmxlIG5lZWQgdGhlIGJh
c2UgYWRkcmVzcz8KClRoYW5rcywKRHJldwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
