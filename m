Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A2EBCEDD93
	for <linux-phy@archiver.kernel.org>; Tue, 18 Nov 2025 14:13:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gv4s0m3jtyL5WM+7qox5qAkkgoc6cLz+B3q4V4GGyYM=; b=p/7DlihIzDyzWo
	nN9Nbq3zIcTsz92RLaOAcNpPMxeyfEhixbTHKppawXv/WiIIHCcHDRPyJRhlsPtEfB7IWvL1TCHEk
	cCioCYbLsvOcMnSbMis/Iv2KhqqzZWuD7FvRVG9EIJrmqhnVEE9hYY+GcWOZfPctS34Aqp30/Wl7Y
	FXdvWUxoVZ06DscnbUY6HTfA9IcDW9cYnpOPXH2s4VdfToBJ3UTVp956BUFbNQS17RUCGZdnknzc3
	4klk5nO0gjF0fjk64HmyMf+Qob0zSFzViY0G0uyBBeK7eULgGheC5IFAbifnIH7jZwHYEuoDYiXIZ
	1CVYH3EV22NEhfjt74+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLMSl-00000000XlN-0GQ3;
	Tue, 18 Nov 2025 14:13:43 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLMSh-00000000XkZ-2BLT
	for linux-phy@lists.infradead.org;
	Tue, 18 Nov 2025 14:13:41 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-477a219db05so16302865e9.2
        for <linux-phy@lists.infradead.org>; Tue, 18 Nov 2025 06:13:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1763475218; x=1764080018; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ztfXAVtJF02n2U4iqu1oYXFqjTOpzewfao4XQU6K0fg=;
        b=J2NhVPxhd+S2UHfjJQ9tkHJqxkjkNZ3W4faN1DjKD0rWHYpsvP+GR8Y9CPBu+OF1Im
         2dDg26SznsWBtPzDzDL1UwR6Qb54M7ONxM3K8mpbHkNViMHcTDlUtGDcadikxmd9buLg
         C1xvDWdymKnH6fdkoexbZG9vxBhkITyvk8mpcjp7Ou8Oftd5QF7OTwOY37c3BgVfWvU/
         0A4lDkeJn+GvE0TxD0Tztv0qn5goaefzIT9xWKHp5Yjc6IaHiAWfFU2hoJbcoSk1xJfr
         sBUy0vqaKGJ3O+CSY/8/S9dAmgvdwXOkFIieVV6Z3iPaT+uwAwLSKJPOmY3IKeT8exm3
         2YKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763475218; x=1764080018;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ztfXAVtJF02n2U4iqu1oYXFqjTOpzewfao4XQU6K0fg=;
        b=Z7T1EwTy01koP027hVyf1LBR0O60TpFemT2cXpdZ/RdaAfnnMx28aBQAERCVySsfeL
         D8Dpy6rYucyexPksCIPVHYd5hYHYBO/c1THikDKze2UPQjqCBpi+B6rO+DVt8kJpbZ+s
         UaS092FV8LF2IRhkgQ6k88+a4B17IXq+Ucll1VLbuYjEiefyaVuw2IwlLOtpQF+JS28F
         NMncysknLPk2L4UUIcHzzPh6rSu0jR3kzh+GEcaK9eQ4g/CpJExInvIKImIo5WvovHtx
         RsAXA7DODKnvVRF1k79OeWCCeLsGLyhfVu/3TTIdWa67sAiG9o/myl1DfNtBktj0XKWb
         L8yg==
X-Forwarded-Encrypted: i=1; AJvYcCVqJGMPCTJEzE1xdnYkhtqc90WU+GLPRLuUjdpRzQ9KioGt9nUi2Oh0CLlS+CjQ/kvq/MFcTgfVLBA=@lists.infradead.org
X-Gm-Message-State: AOJu0YwRR9wojh4TdWapbbVpE8ZB7SweSQ3IG3TwB6FOq4xlESckUS/H
	1edJfSuyjcGeaku+jQCDb4vCj6bpr/oIJtPocmojzUvByZAj6XTNoPr+nNf8VVjmTXc=
X-Gm-Gg: ASbGnctxJk1JzQTJ1VlPCM3UW+wvGiMgQeR3FuVAIiCHNFjp+xaVIOTFca9BI9ZS6+7
	4THPtAE4lQLdf5fbEsB135bYRCTWGSQ50NHr66wOHvY8RXezR/lR7rqo7k0nx2JqZnU5GLexzUJ
	o2Dsx+44g/bDjSDnfcfihmwDWTVPGSkLtsd+UetgXUvDvsNwE9Rqhq6lsw7rjhsALuIIowqcleA
	EIKC0SjY0FZXafQneJnZB+Wc9vL1H/gLWElxVDUgnxe0X916CsKAoeVIYjzbPIP7tcKmORxpNAV
	rce2kSdwSEjWU4qB+TbT1Cna1UppzpjzgF44sqJfEKhorI6MWweRcteyYAP4EW5vOp8ESZlJma9
	viM7BosukZvb7qb3L1jko3fPB5QsToGH19OcI58Em3fDJo9VHEpls0Z9BVx9jWFV6YHiyy3GjWi
	CZvYCzXiC5C4WfnbJ5gb9vawbldIw88Q==
X-Google-Smtp-Source: AGHT+IGnLLVOgtBb6QoIpnryngoXF9ZsVrA0Hu/BPktiacTI1lwDmiBLrou7m3q1ehoWZoiBVrtp+A==
X-Received: by 2002:a05:600c:6289:b0:46e:37fc:def0 with SMTP id 5b1f17b1804b1-4778fe62100mr154949795e9.9.1763475216662;
        Tue, 18 Nov 2025 06:13:36 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.134])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4779a684202sm188236015e9.10.2025.11.18.06.13.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 06:13:35 -0800 (PST)
Message-ID: <3054e8f6-a11f-4278-a27b-1a868699b958@tuxon.dev>
Date: Tue, 18 Nov 2025 16:13:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: renesas: rcar-gen3-usb2: Add suspend/resume support
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
To: Neil Armstrong <neil.armstrong@linaro.org>,
 yoshihiro.shimoda.uh@renesas.com, vkoul@kernel.org, kishon@kernel.org,
 geert+renesas@glider.be, magnus.damm@gmail.com, p.zabel@pengutronix.de
Cc: linux-renesas-soc@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20251106144148.3051962-1-claudiu.beznea.uj@bp.renesas.com>
 <4d486bd8-9e87-4bf2-a96f-38aa0f701c45@linaro.org>
 <047df95e-b1b6-4e7b-89f7-d7cb69559a49@tuxon.dev>
Content-Language: en-US
In-Reply-To: <047df95e-b1b6-4e7b-89f7-d7cb69559a49@tuxon.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_061340_564901_832C56EC 
X-CRM114-Status: GOOD (  18.62  )
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

CgpPbiAxMS8xOC8yNSAxNjoxMywgQ2xhdWRpdSBCZXpuZWEgd3JvdGU6Cj4gSGksIE5laWwsCj4g
Cj4gT24gMTEvMTgvMjUgMTU6NTQsIE5laWwgQXJtc3Ryb25nIHdyb3RlOgo+PiBPbiAxMS82LzI1
IDE1OjQxLCBDbGF1ZGl1IHdyb3RlOgo+Pj4gRnJvbTogQ2xhdWRpdSBCZXpuZWEgPGNsYXVkaXUu
YmV6bmVhLnVqQGJwLnJlbmVzYXMuY29tPgo+Pj4KPj4+IFRoZSBSZW5lc2FzIFJaL0czUyBzdXBw
b3J0cyBhIHBvd2VyIHNhdmluZyBtb2RlIHdoZXJlIHBvd2VyIHRvIG1vc3Qgb2YgdGhlCj4+PiBT
b0MgY29tcG9uZW50cyBpcyB0dXJuZWQgb2ZmLiBUaGUgVVNCIFBIWSBpcyBhbW9uZyB0aGVzZSBj
b21wb25lbnRzLgo+Pj4gQmVjYXVzZSBvZiB0aGlzIHRoZSBzZXR0aW5ncyBhcHBsaWVkIGluIGRy
aXZlciBwcm9iZSBuZWVkIHRvIGJlIGV4ZWN1dGVkCj4+PiBhbHNvIG9uIHJlc3VtZSBwYXRoLiBP
biBzdXNwZW5kIHBhdGggb25seSByZXNldCBzaWduYWwgbmVlZCB0byBiZSBhc3NlcnRlZC4KPj4+
IEFkZCBzdXNwZW5kL3Jlc3VtZSBzdXBwb3J0Lgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IENsYXVk
aXUgQmV6bmVhIDxjbGF1ZGl1LmJlem5lYS51akBicC5yZW5lc2FzLmNvbT4KPj4+IC0tLQo+Pj4K
Pj4+IFRoaXMgcGF0Y2ggaXMgYnVpbHQgb24gdG9wIG9mIHBhdGNoZXMgMS83LCAyLzcgYXQgWzFd
Cj4+Pgo+Pj4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI1MTAyMzEzNTgxMC4x
Njg4NDE1LTItCj4+PiBjbGF1ZGl1LmJlem5lYS51akBicC5yZW5lc2FzLmNvbQo+Pj4KPj4+IMKg
IGRyaXZlcnMvcGh5L3JlbmVzYXMvcGh5LXJjYXItZ2VuMy11c2IyLmMgfCA2NiArKysrKysrKysr
KysrKysrKy0tLS0tLS0KPj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA0NyBpbnNlcnRpb25zKCspLCAx
OSBkZWxldGlvbnMoLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcmVuZXNhcy9w
aHktcmNhci1nZW4zLXVzYjIuYyBiL2RyaXZlcnMvcGh5Lwo+Pj4gcmVuZXNhcy9waHktcmNhci1n
ZW4zLXVzYjIuYwo+Pj4gaW5kZXggYTM4ZWFkN2M4MDU1Li4zYzA2M2U0ZGVhNDEgMTAwNjQ0Cj4+
PiAtLS0gYS9kcml2ZXJzL3BoeS9yZW5lc2FzL3BoeS1yY2FyLWdlbjMtdXNiMi5jCj4+PiArKysg
Yi9kcml2ZXJzL3BoeS9yZW5lc2FzL3BoeS1yY2FyLWdlbjMtdXNiMi5jCj4+PiBAQCAtMTMyLDYg
KzEzMiw3IEBAIHN0cnVjdCByY2FyX2dlbjNfY2hhbiB7Cj4+PiDCoMKgwqDCoMKgIHN0cnVjdCBk
ZXZpY2UgKmRldjvCoMKgwqAgLyogcGxhdGZvcm1fZGV2aWNlJ3MgZGV2aWNlICovCj4+PiDCoMKg
wqDCoMKgIGNvbnN0IHN0cnVjdCByY2FyX2dlbjNfcGh5X2Rydl9kYXRhICpwaHlfZGF0YTsKPj4+
IMKgwqDCoMKgwqAgc3RydWN0IGV4dGNvbl9kZXYgKmV4dGNvbjsKPj4+ICvCoMKgwqAgc3RydWN0
IHJlc2V0X2NvbnRyb2wgKnJzdGM7Cj4+PiDCoMKgwqDCoMKgIHN0cnVjdCByY2FyX2dlbjNfcGh5
IHJwaHlzW05VTV9PRl9QSFlTXTsKPj4+IMKgwqDCoMKgwqAgc3RydWN0IHJlZ3VsYXRvciAqdmJ1
czsKPj4+IMKgwqDCoMKgwqAgc3RydWN0IHdvcmtfc3RydWN0IHdvcms7Cj4+PiBAQCAtNzc4LDM1
ICs3NzksMjQgQEAgc3RhdGljIHZvaWQgcmNhcl9nZW4zX3Jlc2V0X2Fzc2VydCh2b2lkICpkYXRh
KQo+Pj4gwqAgc3RhdGljIGludCByY2FyX2dlbjNfcGh5X3VzYjJfaW5pdF9idXMoc3RydWN0IHJj
YXJfZ2VuM19jaGFuICpjaGFubmVsKQo+Pj4gwqAgewo+Pj4gwqDCoMKgwqDCoCBzdHJ1Y3QgZGV2
aWNlICpkZXYgPSBjaGFubmVsLT5kZXY7Cj4+PiAtwqDCoMKgIHN0cnVjdCByZXNldF9jb250cm9s
ICpyc3RjOwo+Pj4gwqDCoMKgwqDCoCBpbnQgcmV0Owo+Pj4gwqDCoMKgwqDCoCB1MzIgdmFsOwo+
Pj4gwqAgLcKgwqDCoCByc3RjID0gZGV2bV9yZXNldF9jb250cm9sX2FycmF5X2dldF9zaGFyZWQo
ZGV2KTsKPj4+IC3CoMKgwqAgaWYgKElTX0VSUihyc3RjKSkKPj4+IC3CoMKgwqDCoMKgwqDCoCBy
ZXR1cm4gUFRSX0VSUihyc3RjKTsKPj4+ICvCoMKgwqAgaWYgKCFjaGFubmVsLT5waHlfZGF0YS0+
aW5pdF9idXMpCj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIDA7Cj4+PiDCoCDCoMKgwqDCoMKg
IHJldCA9IHBtX3J1bnRpbWVfcmVzdW1lX2FuZF9nZXQoZGV2KTsKPj4+IMKgwqDCoMKgwqAgaWYg
KHJldCkKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gcmV0Owo+Pj4gwqAgLcKgwqDCoCBy
ZXQgPSByZXNldF9jb250cm9sX2RlYXNzZXJ0KHJzdGMpOwo+Pj4gLcKgwqDCoCBpZiAocmV0KQo+
Pj4gLcKgwqDCoMKgwqDCoMKgIGdvdG8gcnBtX3B1dDsKPj4+IC0KPj4+IC3CoMKgwqAgcmV0ID0g
ZGV2bV9hZGRfYWN0aW9uX29yX3Jlc2V0KGRldiwgcmNhcl9nZW4zX3Jlc2V0X2Fzc2VydCwgcnN0
Yyk7Cj4+PiAtwqDCoMKgIGlmIChyZXQpCj4+PiAtwqDCoMKgwqDCoMKgwqAgZ290byBycG1fcHV0
Owo+Pj4gLQo+Pj4gwqDCoMKgwqDCoCB2YWwgPSByZWFkbChjaGFubmVsLT5iYXNlICsgVVNCMl9B
SEJfQlVTX0NUUik7Cj4+PiDCoMKgwqDCoMKgIHZhbCAmPSB+VVNCMl9BSEJfQlVTX0NUUl9NQkxf
TUFTSzsKPj4+IMKgwqDCoMKgwqAgdmFsIHw9IFVTQjJfQUhCX0JVU19DVFJfTUJMX0lOQ1I0Owo+
Pj4gwqDCoMKgwqDCoCB3cml0ZWwodmFsLCBjaGFubmVsLT5iYXNlICsgVVNCMl9BSEJfQlVTX0NU
Uik7Cj4+PiDCoCAtcnBtX3B1dDoKPj4+IMKgwqDCoMKgwqAgcG1fcnVudGltZV9wdXQoZGV2KTsK
Pj4+IMKgIC3CoMKgwqAgcmV0dXJuIHJldDsKPj4+ICvCoMKgwqAgcmV0dXJuIDA7Cj4+PiDCoCB9
Cj4+PiDCoCDCoCBzdGF0aWMgaW50IHJjYXJfZ2VuM19waHlfdXNiMl9wcm9iZShzdHJ1Y3QgcGxh
dGZvcm1fZGV2aWNlICpwZGV2KQo+Pj4gQEAgLTg0Niw2ICs4MzYsMTggQEAgc3RhdGljIGludCBy
Y2FyX2dlbjNfcGh5X3VzYjJfcHJvYmUoc3RydWN0Cj4+PiBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYp
Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+Pj4gwqDCoMKgwqDCoCB9Cj4+PiDCoCArwqDCoMKg
IGNoYW5uZWwtPnJzdGMgPSBkZXZtX3Jlc2V0X2NvbnRyb2xfYXJyYXlfZ2V0X29wdGlvbmFsX3No
YXJlZChkZXYpOwo+Pj4gK8KgwqDCoCBpZiAoSVNfRVJSKGNoYW5uZWwtPnJzdGMpKQo+Pj4gK8Kg
wqDCoMKgwqDCoMKgIHJldHVybiBQVFJfRVJSKGNoYW5uZWwtPnJzdGMpOwo+Pj4gKwo+Pj4gK8Kg
wqDCoCByZXQgPSByZXNldF9jb250cm9sX2RlYXNzZXJ0KGNoYW5uZWwtPnJzdGMpOwo+Pj4gK8Kg
wqDCoCBpZiAocmV0KQo+Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiByZXQ7Cj4+PiArCj4+PiAr
wqDCoMKgIHJldCA9IGRldm1fYWRkX2FjdGlvbl9vcl9yZXNldChkZXYsIHJjYXJfZ2VuM19yZXNl
dF9hc3NlcnQsIGNoYW5uZWwtCj4+Pj4gcnN0Yyk7Cj4+PiArwqDCoMKgIGlmIChyZXQpCj4+PiAr
wqDCoMKgwqDCoMKgwqAgcmV0dXJuIHJldDsKPj4+ICsKPj4+IMKgwqDCoMKgwqAgLyoKPj4+IMKg
wqDCoMKgwqDCoCAqIGRldm1fcGh5X2NyZWF0ZSgpIHdpbGwgY2FsbCBwbV9ydW50aW1lX2VuYWJs
ZSgmcGh5LT5kZXYpOwo+Pj4gwqDCoMKgwqDCoMKgICogQW5kIHRoZW4sIHBoeS1jb3JlIHdpbGwg
bWFuYWdlIHJ1bnRpbWUgcG0gZm9yIHRoaXMgZGV2aWNlLgo+Pj4gQEAgLTg2MSwxMSArODYzLDkg
QEAgc3RhdGljIGludCByY2FyX2dlbjNfcGh5X3VzYjJfcHJvYmUoc3RydWN0Cj4+PiBwbGF0Zm9y
bV9kZXZpY2UgKnBkZXYpCj4+PiDCoMKgwqDCoMKgIHBsYXRmb3JtX3NldF9kcnZkYXRhKHBkZXYs
IGNoYW5uZWwpOwo+Pj4gwqDCoMKgwqDCoCBjaGFubmVsLT5kZXYgPSBkZXY7Cj4+PiDCoCAtwqDC
oMKgIGlmIChjaGFubmVsLT5waHlfZGF0YS0+aW5pdF9idXMpIHsKPj4+IC3CoMKgwqDCoMKgwqDC
oCByZXQgPSByY2FyX2dlbjNfcGh5X3VzYjJfaW5pdF9idXMoY2hhbm5lbCk7Cj4+PiAtwqDCoMKg
wqDCoMKgwqAgaWYgKHJldCkKPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gZXJyb3I7
Cj4+PiAtwqDCoMKgIH0KPj4KPj4gSSBkb24ndCBzZWUgd2h5IHlvdSBjaGFuZ2VkIHRoZSBsb2dp
YyBvZiBjYWxsaW5nCj4+IHJjYXJfZ2VuM19waHlfdXNiMl9pbml0X2J1cygpLAo+PiBtb3Zpbmcg
dGhlIHJlc2V0IHNldHVwIGFuZCBoYW5kbGluZyBzaG91bGQgYmUgZW5vdWdoLCBubyA/Cj4+Cj4g
U29ycnksIEkgbWlzc2VkIHRvIG1lbnRpb24gaXQuIEkgZGlkIGl0IGxpa2UgdGhpcyBqdXN0IHRv
IGF2b2lkIHRoaXMgcGF0dGVybjoKPiAKPiAJaWYgKGNoYW5uZWwtPnBoeV9kYXRhLT5pbml0X2J1
cykgewo+IAkJcmV0ID0gcmNhcl9nZW4zX3BoeV91c2IyX2luaXRfYnVzKGNoYW5uZWwpOwo+IAkJ
aWYgKHJldCkKPiAJCQlyZXR1cm4gcmV0Owo+IAl9Cj4gCj4gaW4gYm90aCBwcm9iZSBhbmQgcmVz
dW1lIHBhdGguIFRoZSBjaGFubmVsLT5waHlfZGF0YS0+aW5pdF9idXMgY2hlY2sgaXMgbm90Cgpz
L25vdC9ub3cKCj4gZW1iZWRkZWQgaW4gcmNhcl9nZW4zX3BoeV91c2IyX2luaXRfYnVzKCkuIFBs
ZWFzZSBsZXQgbWUga25vdyBpZiB5b3Ugd2FudAo+IG1lIHRvIHJldmVydCBpdC4KPiAKPiBUaGFu
ayB5b3UsCj4gQ2xhdWRpdQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
