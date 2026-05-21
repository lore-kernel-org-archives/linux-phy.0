Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6768CD343F
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 03:53:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jRbCXDh8ptD8y0adUdnMcgLkgtLtrpcvD+XEqOUctyk=; b=cBA9ND08d0RZ1x
	TSHSLTgXsjD4CtiVXz1FEwKkb+PH/EVdUqpf4mmiZlK9peai3hWQ7ePFhxWMb4Zeg8h0Gekvonleg
	1v0/FG6Z4eiO1iGdeVbtWmZMnqoAk10+zSDALl1MXQOH14Z+77B63T/cyqbh+rY1zymdiTiSEekJ0
	UQnzimYK1izYpq9BoqEgZKLPO2nAOZNYwHOITGUBwghPtqsTIFMDRzuarVaeKEIIB3BCeF5JOQH25
	Gv7yjwNIH/iI44L+MZTAUwKiE5qaosD75yODsvibanaEOZ6yZHWcvHi1rvi2ag7Z0oLfKzP9s7tiK
	AVMSsFQmbTL4o5uLqovA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPuTD-00000006b3R-19xO;
	Thu, 21 May 2026 03:53:15 +0000
Received: from out-173.mta0.migadu.com ([2001:41d0:1004:224b::ad])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPuT5-00000006b2W-3cH2
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 03:53:13 +0000
Message-ID: <e5b40f3c-25f6-401b-84d3-2fb96897d936@packett.cool>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1779335581;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4jM3IMyfdKs25SZpyNI9Om0n89NTgnxOlePLIEzgJW8=;
	b=jGJZCG6byCD/8otwlmej1JB83HUbaCT2TxVp0eUshi6T/i0B8OoC+6X/uIaAllqmHSfDE4
	dRB6aBQ2L49GtoCnirTnmwq3NWwmwoDRDjqXAt1mJgXCqCUaR6d+AbJtO+7cF5x9w0FBmZ
	8Xg2tcrTIO6X3vdccn1JypNDqn0O1gF27uMbcnAP+3NMQtYIfFEha1UyQoaGUHNOCwlTM9
	VeQClJxN/Dac/xxyGfbX0jM1vSJLss31MW/4NsuvU76xXr1QQx/3pf5zD9c49Rf7otHE0M
	5oXdX8wvRqyombtSwwNY21+iAsoSGJnHVg6pOA5r+c+xXodAUUcGQUkd0RylDA==
Date: Thu, 21 May 2026 00:52:47 -0300
MIME-Version: 1.0
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: x1-dell-thena: bump linux,cma to
 256 MiB
To: Michael Scott <mike.scott@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org
Cc: vkoul@kernel.org, neil.armstrong@linaro.org,
 dmitry.baryshkov@oss.qualcomm.com, wesley.cheng@oss.qualcomm.com,
 abelvesa@kernel.org, faisal.hassan@oss.qualcomm.com,
 linux-phy@lists.infradead.org, andersson@kernel.org, konradybcio@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, bryan.odonoghue@linaro.org,
 laurentiu.tudor1@dell.com, alex.vinarskis@gmail.com,
 linux-kernel@vger.kernel.org
References: <20260521010935.1333494-1-mike.scott@oss.qualcomm.com>
 <20260521010935.1333494-5-mike.scott@oss.qualcomm.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Val Packett <val@packett.cool>
In-Reply-To: <20260521010935.1333494-5-mike.scott@oss.qualcomm.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_205310_906664_C9F39B72 
X-CRM114-Status: GOOD (  12.80  )
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

Ck9uIDUvMjAvMjYgMTA6MDkgUE0sIE1pY2hhZWwgU2NvdHQgd3JvdGU6Cj4gVGhlIDEyOCBNaUIg
bGludXgsY21hIHJlc2VydmVkLW1lbW9yeSBwb29sIG9uIGRlbGwtdGhlbmEgaXMgdG9vIHNtYWxs
Cj4gdG8gc3VwcG9ydCB0aGUgY2FtZXJhIHBpcGVsaW5lIGluIHBhcmFsbGVsIHdpdGggdGhlIG5v
cm1hbCBMaW51eAo+IGRlc2t0b3AuIE9uIGEgZnJlc2hseS1ib290ZWQgc3lzdGVtIHdpdGggR05P
TUUgcnVubmluZywgdGhlIHR5cGljYWwKPiBydW50aW1lIGNvbnN1bWVycyDigJQgbXNtIERSTSBm
cmFtZWJ1ZmZlcnMgKFdheWxhbmQgdHJpcGxlIGJ1ZmZlcmluZyBvbgo+IHRoZSBlRFAgcGFuZWwp
LCBxY29tX2lyaXMgdmlkZW8gY29kZWMgYnVmZmVycywgcWNvbV9jYW1zcyBWRkUKPiBwcmUtYWxs
b2NhdGVkIGJ1ZmZlcnMg4oCUIGFscmVhZHkgb2NjdXB5IH4xMDAgTWlCIG9mIHRoZSBwb29sLCBs
ZWF2aW5nCj4gb25seSB+MjUgTWlCIGZyZWUuCgpIdWgsIEknbSBzdXJwcmlzZWQgdGhhdCBkcm0g
ZnJhbWVidWZmZXJzIHVzZSBDTUHigKYgSUlSQywgbXNtIGRybSBjYW4gd29yayAKZmluZSB3aXRo
b3V0IGEgY21hIG5vZGUgcHJlc2VudCBhdCBhbGwuCgpJbmRlZWQsIHdpdGggYSBkZXNrdG9wIG9u
IGEgNEsgbW9uaXRvciBJJ20gc2VlaW5nLi4KCkNtYVRvdGFsOsKgIMKgIMKgIMKgIMKgMTMxMDcy
IGtCCkNtYUZyZWU6wqAgwqAgwqAgwqAgwqAgwqAgMTcwNCBrQgoKPiBUaGUgbGliY2FtZXJhICJz
aW1wbGUiIHBpcGVsaW5lIGhhbmRsZXIgdXNlZCBieSAvZGV2L21lZGlhMCBvbgo+IGRlbGwtdGhl
bmEgYWxsb2NhdGVzIGZvdXIgQUJHUjg4ODggZnJhbWVzIGF0IDE5MjDDlzEwODggPSAzMiBNaUIg
dG90YWwuCj4gVGhhdCByZXF1ZXN0IGZhaWxzIG9uIHRoZSBmb3VydGggZnJhbWU6Cj4KPiAgICAg
IEVSUk9SIERtYUJ1ZkFsbG9jYXRvcjogZG1hLWhlYXAgYWxsb2NhdGlvbiBmYWlsdXJlIGZvciBm
cmFtZS0zCj4gICAgICBFUlJPUiBBbGxvY2F0b3I6IFN0cmVhbSBpcyBub3QgcGFydCBvZiAvYmFz
ZS8uLi4vY2FtZXJhQDEwIGFjdGl2ZSBjb25maWd1cmF0aW9uCj4gICAgICBDYW4ndCBhbGxvY2F0
ZSBidWZmZXJzCj4gICAgICBGYWlsZWQgdG8gc3RhcnQgY2FtZXJhIHNlc3Npb24KPgo+IHJlc3Vs
dGluZyBpbiBnbm9tZS1zbmFwc2hvdCdzICJDb3VsZCBub3QgcGxheSBjYW1lcmEgc3RyZWFtIiBh
bmQgYW55Cj4gb3RoZXIgbGliY2FtZXJhLW1lZGlhdGVkIGFwcCBiZWluZyB1bmFibGUgdG8gYWN0
dWFsbHkgc3RyZWFtLgoKLi5ob3dldmVyIEkgY291bGRuJ3QgcmVwcm9kdWNlIGFueSBmYWlsdXJl
cywgU25hcHNob3Qgc3RhcnRlZCB1cCBqdXN0IApmaW5lLCBsb3dlcmluZyBDbWFGcmVlIHRvIDMw
MCBrQi4KCkkgaGF2ZSBldmVuIGxhdW5jaGVkIGJvdGggU25hcHNob3QgYW5kIGZmcGxheSB3aXRo
IGEgNEsgQVYxIHZpZGVvIAp0aHJvdWdoIGF2MV92NGwybTJtLCBDbWFGcmVlIHdlbnQgYWxsIHRo
ZSB3YXkgZG93biB0byB6ZXJvIGJ1dCB0aGVyZSAKd2VyZSBubyBlcnJvcnMgd2hhdHNvZXZlciwg
Ym90aCB3b3JrZWQgc2ltdWx0YW5lb3VzbHkganVzdCBmaW5lLiBvXzAKCkkgdGhpbmsgZHJtIGJ1
ZmZlcnMgbWlnaHQganVzdCBnZXQgZXZpY3RlZCBmcm9tIHRoYXQgYXJlYSBvciBzb21ldGhpbmc/
Cgo+IEJ1bXBpbmcgbGludXgsY21hIHRvIDI1NiBNaUIgKGEgMC45JSByZXNlcnZhdGlvbiBvbiB0
aGVzZSBsYXB0b3BzJwo+IHR5cGljYWwgMjcgR2lCIFJBTSkgbGVhdmVzIH4xNTAgTWlCIGZyZWUg
YXQgcnVudGltZSDigJQgc3VmZmljaWVudCBmb3IKPiB0aGUgbGliY2FtZXJhIGJ1ZmZlciBzZXQg
cGx1cyBoZWFkcm9vbSBmb3IgdmlkZW8gcGxheWJhY2sgb3Igb3RoZXIKPiBDTUEtaHVuZ3J5IHdv
cmtsb2FkcyBpbiBwYXJhbGxlbC4KPgo+IFRlc3RlZCBvbiBEZWxsIExhdGl0dWRlIDc0NTU6IHdp
dGggdGhlIDI1NiBNaUIgcG9vbCwgQ21hRnJlZSBhdAo+IEdOT01FLWRlc2t0b3AgaWRsZSBpcyB+
MTUwIE1pQiwgZ25vbWUtc25hcHNob3Qgc3RyZWFtcyB0aGUgT1YwMkUxMAo+IGNhbWVyYSBjbGVh
bmx5LCBhbmQgYGNhbSAtYyAxIC0tY2FwdHVyZT0yYCBzdWNjZWVkcy4KPgo+IFRoZSBjb21wYW5p
b24gYm9hcmQgZmlsZXMgZGVsbC1pbnNwaXJvbi0xNC1wbHVzLTc0NDEgYW5kIHRoZSB1cHN0cmVh
bQo+IC5kdHMgdmFyaWFudHMgaW5oZXJpdCBmcm9tIHgxLWRlbGwtdGhlbmEuZHRzaSwgc28gdGhp
cyBjaGFuZ2VzIHRoZQo+IHBvb2wgc2l6ZSBmb3IgZXZlcnkgZGVsbC10aGVuYS1iYXNlZCBsYXB0
b3AgaW4gb25lIHBsYWNlLgoKCkluIGFueSBjYXNlLCB0aGF0J3Mgbm90IGFuIG9iamVjdGlvbiBv
ZiBjb3Vyc2UsIGp1c3Qgd29uZGVyaW5nIHdoeSBpdCdzIAp3b3JraW5nIGZpbmUgZm9yIG1lIGFu
ZCBub3QgZm9yIHlvdS4uCgpBY2tlZC1ieTogVmFsIFBhY2tldHQgPHZhbEBwYWNrZXR0LmNvb2w+
Cgp+dmFsCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
