Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0249BC982C3
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u3dQAFRhUtsl8Bxe/qdK237dP/+0mD7rEOR+MK/38EI=; b=FDwemhIYQQwhmp
	5c0CKUZUDa/l4ODAHSa/C7/E+94r+kzMLfZ3X0R+3wz6gIwpKBAoQ68Nr9samFwOQDyK4O0LOUwsf
	+fZnxFNYgjVv/uPZak1Eq3iX2Pz5QaDCy2DoX995/30ipsK1F9kGSQxHgRTGSPRkdxAwvl8UnZn2Q
	Vv59/sIlv0MKBkGGbsR1AEYCEzQ+JDukqwgMqPZv9IQpPY1iQTW1xp6jh15pOs3MQpGIJmKb+wEdJ
	oW6GS+w5UzaUIFBTOX1/6u5b3+CnG74nrNuvtRsq1Y0FdL9ywIEr7SZI8wTKXqsqiT7iXw42MMhW9
	v6RwYcu8CGdMYFpl54vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6raj-00000009b0i-25gd;
	Wed, 16 Sep 2026 15:30:33 +0000
Received: from mail-ej2-x05.google.com ([2a00:1450:4864:34::5])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6rag-00000009azb-2dFA
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 15:30:32 +0000
Received: by mail-ej2-x05.google.com with SMTP id a640c23a62f3a-c2950c25486so316265966b.1
        for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 08:30:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1789572628; cv=none;
        d=google.com; s=arc-20260327;
        b=YTZC8dTVN867W7OKZktIOOyrDSXk6OxRAzI9AvaEGg0kXgeoWMrrX1i09lLmneRja0
         VI5FxapcKrXOSQVykXCWChSoPkURn87svCsG+iRMJlSf+loFni1W1YZg53vacA+pElTD
         dqBM1gLETO8NYUUZqZECVhvBTsGk8BGju4aL78xj66m8ajagXrMSbF7Lekmejwia7cb/
         Wco79i+XukjVOC+8CK/BFIkR1e8fsljOY9dpjauKDht7YYO47zN+R1qnJcWjvv1jvtwI
         HJnjqViIUFWPWc8GdOLo38/Jali9PoTM3dG/FPmw45qTdnQwF+mMtB2xPyjlgjnSRiae
         CTkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=3iZhP1DReptHMS9Q1/qn9BvRZUgDeQPXvK/H8HNEb5g=;
        fh=euRkZ0TaG2wDMbMCIOb84TQEx9J3Ge7sKWWelBKvbXs=;
        b=rXEz/s04ZaGxulsJjOnJF+TAbXOyx59AJMsTBKW77z/UY23js5tS843kdqR4l8g24c
         YuV2Gw5u2VG4U+xElzE5bJhKYH88BdXpiw7WHDtlw9id723CLcoKhZOOsQrc8UWBtqGw
         xlZqEoFzkSghUTfYEYrNTCuJ88+5vQ0LV3k8mTd3nsw62wcSsJ6i7FrTpyFpaTYXKiBf
         dnh3QkWNSjl1j/zQ6lmRhmbKbgBDWy/fQEkhFT42Ofi02ZB8Q0V3V/sNZ11pnn+7uCHQ
         oOCNIpPdBIO6tc425jWN38JJ70ycxFnXXgayNM+j54aUx9t9TUlMAGi3dF+z6jKQbOVX
         aaUw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789572628; x=1790177428; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=3iZhP1DReptHMS9Q1/qn9BvRZUgDeQPXvK/H8HNEb5g=;
        b=fwoUK+pUgVtX9fNS5fCvCTx/OJpBNeqtrRJQ+sPHTnrUv0r1VreqCCJfrMVvG98f42
         PuZoTzW+ejYPuidPGCjV+FuOxew7RI1m2WJBspvnY/VfNjkfoMVTip3adKCZA2tKIOWK
         9q1RJPA20Rd4y0IyDKpVV6U5ooiyEA7Q099hmfZmArO96EuDghLWT8CntnYyHEWziFkM
         abEioOWshEViKhybqnMUl7ZpfcgWG70pyuz2gLNj9lDSvhlMsqknqlt+j7boTbQQmxTb
         7VW/t72ZfdlmOk/U0f9QGvHKhnAmCHrUE9h0jM4vcMvcjbZa41VmwpwGUuankIfDoB+r
         GuTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789572628; x=1790177428;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=3iZhP1DReptHMS9Q1/qn9BvRZUgDeQPXvK/H8HNEb5g=;
        b=I9mus7uyngpPvtIwXZthNXt1bgZZ0hHRzSgxYDLmYrypsGoiobEmeEGs2ToOt1vOTk
         /fL48HnRpVj2ERtwzljWQ+KxWTqyb0oRfQvZ6q2CoSHjEcg2W+MctkrXU2Hd+xTGrk9C
         vBGCNhcrl/afQjDXTLnA5Om1gWYz26S9VpSLj9hDY/7qe0ge5+GGno/c2fcCsF4BJW3a
         YG5Q8BnEHvqdIJmuWBIMGzm9VtmazYJcaESwd6VRKOeDrnNq5evifQ+Zhqbyf7livu8X
         BvvGXIBBvtXbT6qrWX1KMuZOvC/mmZqV7j5VDwVHPmFfy4r+8YUoqnHtFBijZKmP1Weh
         3NXQ==
X-Forwarded-Encrypted: i=1; AKwUvBye2zVDl0ICqqEwa4VH3iLMTPvbD5HFOQJWtTLlkfWPDmF3hMBCB1yQY9Xe0f30yPg5PEHKPQaXbJs=@lists.infradead.org
X-Gm-Message-State: AFuF++nl08YF8nKmK9fHbooW9H13XB1FsyyGWBB7N5D5z8nKIABLIhTe
	AvSknh+RiPhoI283Cb9lENjrGlFk0gezWO4XntsbSXkcatirFQlXIskfRI/mdwQ+VuTVJUqDLXI
	SYeM8TlKX7ovVTuL+bRWztvH7HuZOUwc=
X-Gm-Gg: AYBFou2mnL2U6MdEuXNqd7HsBoEEUMFgMSAg9XGuP7mehZqyZ/BSMsKhs5EiAEIes+q
	Q6d0CeWbBjp3rBR2p7/NBCsTheo9RFfrZHWPEalKuaGzQ4No5wxDiZ6lbz6YeXhMUcR8B6Nt34M
	xt+Jy7/VMpcU2YPQBF9IAzWAcdSuhY3V86vfGtDks8AhCqCOcbhAAbRjejL5yAtpyQflBOH4kTb
	E5UrW+Si24GsoE7afUZOy+/SJ5iHXql4nwpb7qqJvrHZleK6id6TaOPJlnXi01pnj5kjM9Dpgj0
	KuUDklUBQNtZLHC8VKmT6WgQo/XXpZq0O0Hyx0cjxzqi41ngRTPsBtUSAg==
X-Received: by 2002:a17:907:c49a:b0:c25:8e53:45ca with SMTP id
 a640c23a62f3a-c29e52bf59bmr425926066b.21.1789572627794; Wed, 16 Sep 2026
 08:30:27 -0700 (PDT)
MIME-Version: 1.0
References: <20260915123802.1561724-1-coiaprant@gmail.com> <20260915123802.1561724-6-coiaprant@gmail.com>
 <20260916145017.00DBA1F000FF@smtp.kernel.org>
In-Reply-To: <20260916145017.00DBA1F000FF@smtp.kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Wed, 16 Sep 2026 23:30:16 +0800
X-Gm-Features: AcwNN1VAHr5mQCG8cyXXjxTi5LTBgNFWZMnSTKdoeh45_aT0Zqjxqq28yQF9Z9M
Message-ID: <CALj3r0hA00u7E-N8o+rkMae_8wHt9s=EfAcHO8TE=ERHKmmYWw@mail.gmail.com>
Subject: Re: [PATCH net-next v6 05/11] arm64: dts: rockchip: rk3568: add XPCS
 and fixed-clock nodes
To: sashiko-reviews@lists.linux.dev
Cc: vkoul@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, 
	wsa+renesas@sang-engineering.com, olteanv@gmail.com, 
	devicetree@vger.kernel.org, robh@kernel.org, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_083030_690238_BB24DF3B 
X-CRM114-Status: GOOD (  23.67  )
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

PHNhc2hpa28tYm90QGtlcm5lbC5vcmc+IOS6jjIwMjblubQ55pyIMTbml6XlkajkuIkgMjI6NTDl
hpnpgZPvvJoKPgo+IFRoYW5rIHlvdSBmb3IgeW91ciBjb250cmlidXRpb24hIFNhc2hpa28gQUkg
cmV2aWV3IGZvdW5kIDEgcG90ZW50aWFsIGlzc3VlKHMpIHRvIGNvbnNpZGVyOgo+IC0gW01lZGl1
bV0gZHRzOiBpbmNvcnJlY3QgZml4ZWQtY2xvY2sgbW9kZWxpbmcgZm9yIFhQQ1MgZ2VuZXJhdGVk
IGNsb2NrCj4gLS0KPgo+IGNvbW1pdCAxOGVkY2E4YTY3OGMwNDViYTJmZTMyNzBiMWYzY2EwNTA1
Yjk0YmFhCj4gQXV0aG9yOiBDb2lhIFByYW50IDxjb2lhcHJhbnRAZ21haWwuY29tPgo+Cj4gYXJt
NjQ6IGR0czogcm9ja2NoaXA6IHJrMzU2ODogYWRkIFhQQ1MgYW5kIGZpeGVkLWNsb2NrIG5vZGVz
Cj4KPiBUaGlzIGNvbW1pdCBhZGRzIHRoZSBEZXNpZ25XYXJlIFhQQ1Mgbm9kZSBhbmQgaXRzIHN1
Yi1ub2RlcyBmb3IgdGhlIFJLMzU2OAo+IFNvQywgbWFwcGluZyBpdCB0byB0aGUgQVBCMyBidXMu
IEl0IGFsc28gYWRkcyB0d28gZml4ZWQtY2xvY2sgbm9kZXMgdG8KPiBwcm92aWRlIHJlZmVyZW5j
ZSBjbG9ja3MgZm9yIHRoZSBHTUFDcyB3aGVuIG9wZXJhdGluZyB3aXRoIFhQQ1MuCj4KPiA+IGRp
ZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC5kdHNpIGIvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjguZHRzaQo+ID4gaW5kZXggM2JjNjUzZjAy
N2YxZi4uMjI3ZDAzZTMzNjA0MyAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTY4LmR0c2kKPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszNTY4LmR0c2kKPiBbIC4uLiBdCj4gPiArICAgICBjbGtfZ21hYzBfeHBjc19taWk6IGNs
b2NrLXhwY3MtZ21hYzAgewo+ID4gKyAgICAgICAgICAgICBjb21wYXRpYmxlID0gImZpeGVkLWNs
b2NrIjsKPiA+ICsgICAgICAgICAgICAgY2xvY2stZnJlcXVlbmN5ID0gPDEyNTAwMDAwMD47Cj4g
PiArICAgICAgICAgICAgIGNsb2NrLW91dHB1dC1uYW1lcyA9ICJjbGtfZ21hYzBfeHBjc19taWki
Owo+ID4gKyAgICAgICAgICAgICAjY2xvY2stY2VsbHMgPSA8MD47Cj4gPiArICAgICB9Owo+Cj4g
W1NldmVyaXR5OiBNZWRpdW1dCj4gRG9lcyBtb2RlbGluZyB0aGUgWFBDUy1nZW5lcmF0ZWQgY2xv
Y2sgYXMgYW4gaW5kZXBlbmRlbnQgZml4ZWQtY2xvY2sgYnlwYXNzCj4gcG93ZXIgbWFuYWdlbWVu
dCBhbmQgZGVwZW5kZW5jeSB0cmFja2luZz8KPgo+IEJlY2F1c2UgdGhlIGNsb2NrIGZyYW1ld29y
ayBoYXMgbm8gZGVwZW5kZW5jeSBsaW5rIHRvIHRoZSBYUENTIHBvd2VyIGRvbWFpbgo+IChSSzM1
NjhfUERfUElQRSksIGl0IHNlZW1zIGl0IHdpbGwgc3dpdGNoIHRoZSBHTUFDIHRvIHRoaXMgY2xv
Y2sgZXZlbiBpZiB0aGUKPiBYUENTIGJsb2NrIGhhcyBub3QgeWV0IHByb2JlZCBhbmQgaXMgc3Rp
bGwgcG93ZXItZ2F0ZWQuCj4KPiBXaGVuIHRoZSBHTUFDIGRldmljZSB1c2VzIHRoaXMgdmlhIGFz
c2lnbmVkLWNsb2NrcywgdGhlIGRyaXZlciBjb3JlIHN3aXRjaGVzCj4gdGhlIHBhcmVudCBjbG9j
ayBiZWZvcmUgdGhlIEdNQUMgcHJvYmUgZnVuY3Rpb24gaXMgZXhlY3V0ZWQuIElmIFhQQ1MgaXMK
PiBhYnNlbnQgb3IgdW5pbml0aWFsaXplZCwgY291bGQgc3dpdGNoaW5nIHRvIHRoaXMgdW5wb3dl
cmVkIGNsb2NrIGhhbmcgdGhlCj4gc3lzdGVtIGF0IGJvb3QgdGltZT8KPgo+IFdvdWxkIGl0IGJl
IHNhZmVyIHRvIGhhdmUgdGhlIFhQQ1Mgb3IgU2VyRGVzIG5vZGUgaXRzZWxmIGFjdCBhcyB0aGUg
Y2xvY2sKPiBwcm92aWRlciBzbyB0aGUgY2xvY2sgZnJhbWV3b3JrIHByb3Blcmx5IHRyYWNrcyBw
b3dlciBkb21haW4gbGlmZWN5Y2xlcz8KPgo+ID4gKwo+ID4gKyAgICAgY2xrX2dtYWMxX3hwY3Nf
bWlpOiBjbG9jay14cGNzLWdtYWMxIHsKPiA+ICsgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJm
aXhlZC1jbG9jayI7Cj4gPiArICAgICAgICAgICAgIGNsb2NrLWZyZXF1ZW5jeSA9IDwxMjUwMDAw
MDA+Owo+ID4gKyAgICAgICAgICAgICBjbG9jay1vdXRwdXQtbmFtZXMgPSAiY2xrX2dtYWMxX3hw
Y3NfbWlpIjsKPiA+ICsgICAgICAgICAgICAgI2Nsb2NrLWNlbGxzID0gPDA+Owo+ID4gKyAgICAg
fTsKPgo+IFtTZXZlcml0eTogTWVkaXVtXQo+IElzIHRoaXMgc2Vjb25kIFhQQ1MtZ2VuZXJhdGVk
IE1BQyBjbG9jayBzdWJqZWN0IHRvIHRoZSBzYW1lIGRlY291cGxpbmcgZnJvbQo+IHRoZSBYUENT
IHBvd2VyIGRvbWFpbiBhcyB0aGUgZmlyc3QgY2xvY2s/Cj4KPiAtLQo+IFNhc2hpa28gQUkgcmV2
aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDkxNTEyMzgwMi4xNTYx
NzI0LTEtY29pYXByYW50QGdtYWlsLmNvbT9wYXJ0PTUKClRoYW5rcyBmb3IgdGhlIHJldmlldy4K
ClRoZSBkZXBlbmRlbmN5IGlzIGVuZm9yY2VkIGJ5IEVQUk9CRV9ERUZFUiBpbnN0ZWFkLiBJZiB0
aGUgWFBDUyBoYXMgbm90CnByb2JlZCB5ZXQsIHB4cGNzLT5idXMgaXMgTlVMTCwgeHBjc19ya19j
cmVhdGUoKSByZXR1cm5zIC1FUFJPQkVfREVGRVIsCnJrX3Bjc19pbml0KCkgcHJvcGFnYXRlcyBp
dCwgYW5kIHRoZSBHTUFDIHByb2JlIGZhaWxzIGFuZCByZXRyaWVzLiBUaGUKR01BQyBjYW5ub3Qg
cmVhY2ggYSBzdGF0ZSB3aGVyZSBpdCB1c2VzIHRoZSBYUENTIGNsb2NrIHdoaWxlIHRoZSBYUENT
CmlzIHVucG93ZXJlZC4KCk9uIHRoZSBhc3NpZ25lZC1jbG9jay1wYXJlbnRzIHBhdGg6IGZpeGVk
LWNsb2NrIGhhcyBubyBwcm92aWRlciBkcml2ZXIsCnNvIHRoZSBjbG9jayBmcmFtZXdvcmsgcmVn
aXN0ZXJzIGl0IGR1cmluZyBlYXJseSBpbml0LiBTd2l0Y2hpbmcgdGhlCnBhcmVudCB0byBpdCBv
bmx5IHVwZGF0ZXMgdGhlIENDRiBwYXJlbnQgcG9pbnRlciBhbmQgZG9lcyBub3QgdG91Y2ggYW55
CmhhcmR3YXJlLiBUaGUgYWN0dWFsIGNsa19wcmVwYXJlX2VuYWJsZSgpIGhhcHBlbnMgaW4gdGhl
IEdNQUMgcHJvYmUsCmJ5IHdoaWNoIHRpbWUgdGhlIFhQQ1MgaXMgcmVhZHkuCgpNYWtpbmcgWFBD
UyBhIGNsb2NrIHByb3ZpZGVyIHdvdWxkIHJlcXVpcmUgYSBjbG9jayBjb250cm9sbGVyIGRyaXZl
cgpmb3IgYSBibG9jayB0aGF0IGhhcyBubyBjb250cm9sbGFibGUgY2xvY2sgb3V0cHV0LiBmaXhl
ZC1jbG9jayBpcyB0aGUKY29ycmVjdCBkZXNjcmlwdGlvbiBmb3IgYSBmaXhlZCAxMjUgTUh6IG91
dHB1dC4KClRoYW5rcywKQ29pYQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
