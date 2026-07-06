Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A070C43458
	for <linux-phy@archiver.kernel.org>; Mon,  6 Jul 2026 22:44:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wlzvMpfl1QEvdiLDP3405JxYfFT6qGTer1xoqFuHu34=; b=tBZ46JMCr5xPAT
	eSD4HDVCo+VxfNOWYE6WfBleSz4zT8RFSzcoCqwRmASg6fJUDiCBu0BdH4NM8fg7WMrvekBBYhzFS
	XnqeM3O1nzPjUE3qy/kS1TE0r4fv1gdvDBK4in9264nAaXQAPkex6TunyvRHYRS35VG7nKwlSkgXH
	I4gi5SLiYhR8Pd5Dht/gXPoXNTkbZyZD122woOKEUSaUeARD4A8BeGNyW0Fjg9BThvUbmkbSnJkHX
	jfQcBjdOga+nRiFPqiRuAdPhjm1isiKer9Dt2ginxhlcVGdRZDkFPhhiMcKGXvO2HhzGSgFDgqxac
	FELm/tSL3ky/hXG2eiQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgs2q-0000000DkHK-2kbd;
	Mon, 06 Jul 2026 22:44:08 +0000
Received: from mail-oo1-xc2b.google.com ([2607:f8b0:4864:20::c2b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgs2o-0000000DkGu-0Yr8
	for linux-phy@lists.infradead.org;
	Mon, 06 Jul 2026 22:44:07 +0000
Received: by mail-oo1-xc2b.google.com with SMTP id 006d021491bc7-6a192afad7dso1878685eaf.2
        for <linux-phy@lists.infradead.org>; Mon, 06 Jul 2026 15:44:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783377843; cv=none;
        d=google.com; s=arc-20260327;
        b=lamNOMItys17RvMgWp6LG7hFgP2BQKGy83YUcqTxyPyp6VCJ0AiiqolDnDjCHx2Jmy
         Kez/4b2dwK/HSLM16+ql2ZejAe/o/V1eexBZmE3Ufb/0KxwpD77ybVrSOMAgSiqfZzPo
         twDFwXR/EN6bDkyLN6wVvPaHS1D4cOvrwzlhFYZqYF6JpYVZq8FTYpH42xmyQ9uyZcQy
         5ONcNG+S1GGJcHKh6rcGz98kfZcnDFDT4LfN8VWSdbLoiGXVYI2o7Mw9hJzMTN9qgrPS
         /5tUNv95fgQd3jL4VeiBUdhL6CIinHW9SA0+2JttM17s6k48IM4zxpxNt/d3y9HGC2Se
         oMTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=yx74mKYdJqkO2FUcIAj7kyzeQKoLU5qySEVSk2mMPWs=;
        fh=gR9MDh5FebFo385T+Zj8WZjCGqBDRycss2/2pO67K04=;
        b=HYkVslbKPHasHFwlEulYZ9mqy9JYCEp3fI0RbfYNc+VOhNkstlWR7muH29Ch2/M/kl
         cDfnyn5S0oysL4+edLRuJj3ypGUqX5qO83CfHfIp2gCQJ6OauSQlUFg+KcVn5hpleqGE
         Gv9QQMmjIe66oGCDHn2u1tQ7/mT+CAySmqn3rHzO4w2Xki7lq7jLtn66fvJaDm38deez
         KA9Po4fjv6Dg31xjqq+f62TmmnAa1PsTtc4aGj2m7zPmSQIBbluqd37DnJ++R09yjgtt
         BF5R+SbR2W4rVjbO1lU0ym4tyMsueThjoayGJ1u8JtdsQ2nhhJoBx3moa+EqDnKWc3QV
         Yz1A==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1783377843; x=1783982643; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=yx74mKYdJqkO2FUcIAj7kyzeQKoLU5qySEVSk2mMPWs=;
        b=IZrHO4DGWYro1P6obah0SkJzpqmbaOag+WYQ8f/hzmOxFK5UAZbk/6ZFkDx52vo1f3
         qhUIVWXF6yafWGnb4wXwCk8llAyfFrlrwtbht2sHKtfDiP9k/slwVwe9KoHOS4UdeBDA
         Mwdui1CjJmJzV3v9aYOKmQMEyIfxQ1eHCuqSuA+/2wjjilmHLFMUxjzGCCTOiYd8gJvg
         faWTO+VYpwIUE9eyP2m2P+/UlKcGgFyjrE4tDwgyDTzahSkxcvt9pEDWYDW7blyNVWjg
         tGNY42TzYlao7xCVi6l7h5pfvtQcsYowuMtI9TW6FNk9COiw0hHgr8/557QZr3wPIcfM
         ysTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783377843; x=1783982643;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=yx74mKYdJqkO2FUcIAj7kyzeQKoLU5qySEVSk2mMPWs=;
        b=CgiYFzuSlakjpL17XRJTwy3mMfe5A7UtCeqe2y84i1jcOrlBkENHmc0ph+Y6akNuYI
         gjrN0qPysTDxOamcG7a9oHpHgvt13DzN3Fj2ulWv14J5vYZTCEX6fLatZuWgaUSS4Zc+
         TNAJXKh5sAueuwpJwzkaedj4aIY4zkL+p7UEtsCvjaph4rZ1nk+XgX3C+jRHjxwPKRoo
         a2cbllwrVQPo+rt4s59kelkRFxPolYKg0HSe8hEBZ7anG/52czOgJs6btGsd8xp0As98
         gzMDEL65lo8xJt9VGdbpj80ML0e0n1tpD1k8kgFS/fIfMOoaH7nibcWHLvKVQdYgSiBt
         q7sQ==
X-Forwarded-Encrypted: i=1; AFNElJ/c+B/SFbu+GzMIy/SdNaUd5SQOJHeIRVO2mg2aGjwmyyRHz8WBPPXFhj2mcRTx1wdbeojy5AllHrc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwVMgeJdw1Ztq6bWma5Cxac749X0q2oNgxHuCszYE+RCovUI4sX
	sNmbnd8Ynyf9/dW856ZtSMY0GEjaKu/CJU1/cD1cYQDQtuii4b3262//z2cDmZJuoF7Y8qYX0Ir
	cvU6WoocuhIIwlxALGzoduoFzbJkK8E1uRcjbft9G
X-Gm-Gg: AfdE7clHxuEp5GcUQZi94nrA85C2NzIYtpLFihz30Smmo1y+1UwL4Ml8hqsHwzxrah/
	NPfoeprdl4UsLwheVxFYstgwLxXWvl8Plwz0sCEXlX2bWzi60MNxH/LQotZjDDvgxfsJ0m3rGCG
	wuysrQmsQW+iVlRiEuCV6K4TCVcfRhPGR+X7Nlr0aWvUfzrJQyXRFrYnkO31pjO16Nsf0/oMfep
	Rd7rXBPW30KqP/MXFstSfrOq2ovRtnd/6KaZgzt9EZy/i/ebJwnioHmM69OU20JNIUBA+0aAlJm
	9VJfpxOste6Yvrf1CMsV9EXeqipvCi8=
X-Received: by 2002:a05:6820:1392:b0:6a1:8223:466b with SMTP id
 006d021491bc7-6a355504c46mr1874256eaf.28.1783377842141; Mon, 06 Jul 2026
 15:44:02 -0700 (PDT)
MIME-Version: 1.0
References: <20260701022827.785674-2-rdbabiera@google.com> <20260701024002.DB4E71F000E9@smtp.kernel.org>
In-Reply-To: <20260701024002.DB4E71F000E9@smtp.kernel.org>
From: RD Babiera <rdbabiera@google.com>
Date: Mon, 6 Jul 2026 15:43:51 -0700
X-Gm-Features: AVVi8CfUsgnGHZq-c3BxQdwCm9qIfw2Qtbp7kwS_ksYMx_hhFjYJQvUN7HwDsVc
Message-ID: <CALzBnUHDyYe8gJbKGNG_XYS6Fv016JdtbpfGX-4DHwd-7vY_+w@mail.gmail.com>
Subject: Re: [PATCH v3] phy: Add USB3 PHY support to Google Tensor SoC USB PHY driver
To: sashiko-reviews@lists.linux.dev, 
	Badhri Jagan Sridharan <badhri@google.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_154406_185154_69EFF923 
X-CRM114-Status: GOOD (  16.07  )
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

T24gVHVlLCBKdW4gMzAsIDIwMjYgYXQgNzo0MOKAr1BNIDxzYXNoaWtvLWJvdEBrZXJuZWwub3Jn
PiB3cm90ZToKPiA+ICtzdGF0aWMgaW50IGdvb2dsZV91c2IzX3BoeV9leGl0KHN0cnVjdCBwaHkg
Kl9waHkpCj4gPiArewo+ID4gKyAgICAgc3RydWN0IGdvb2dsZV91c2JfcGh5X2luc3RhbmNlICpp
bnN0ID0gcGh5X2dldF9kcnZkYXRhKF9waHkpOwo+ID4gKyAgICAgc3RydWN0IGdvb2dsZV91c2Jf
cGh5ICpncGh5ID0gaW5zdC0+cGFyZW50Owo+ID4gKwo+ID4gKyAgICAgZGV2X2RiZyhncGh5LT5k
ZXYsICJleGl0aW5nIHVzYjMgcGh5XG4iKTsKPiA+ICsKPiA+ICsgICAgIGd1YXJkKG11dGV4KSgm
Z3BoeS0+cGh5X211dGV4KTsKPiA+ICsKPiA+ICsgICAgIHNldF9wbWd0X3JlZl9jbGtfcmVxX24o
Z3BoeSwgZmFsc2UpOwo+ID4gKyAgICAgcmVzZXRfY29udHJvbF9idWxrX2Fzc2VydChpbnN0LT5u
dW1fcnN0cywgaW5zdC0+cnN0cyk7Cj4gPiArICAgICBjbGtfYnVsa19kaXNhYmxlX3VucHJlcGFy
ZShpbnN0LT5udW1fY2xrcywgaW5zdC0+Y2xrcyk7Cj4KPiBbU2V2ZXJpdHk6IEhpZ2hdCj4gSXMg
dGhlIG1hbnVhbCB0ZWFyZG93biBzZXF1ZW5jZSBoZXJlIGluIHRoZSBjb3JyZWN0IG9yZGVyPwo+
Cj4gSW4gZ29vZ2xlX3VzYjNfcGh5X2luaXQoKSwgcmVzb3VyY2VzIGFyZSBhY3F1aXJlZCBpbiB0
aGlzIG9yZGVyOgo+IDEpIHNldF9wbWd0X3JlZl9jbGtfcmVxX24odHJ1ZSkKPiAyKSBjbG9jayBl
bmFibGUKPiAzKSByZXNldCBkZWFzc2VydAo+Cj4gVGhlIF9fZnJlZSBibG9ja3MgaW4gdGhlIGlu
aXQgZnVuY3Rpb24gY29ycmVjdGx5IGVzdGFibGlzaCB0aGUgZXJyb3IgY2xlYW51cAo+IHNlcXVl
bmNlIGluIHJldmVyc2Ugb3JkZXIgKExJRk8pLiBIb3dldmVyLCBoZXJlIHRoZSB1cHN0cmVhbSBy
ZWZlcmVuY2UgY2xvY2sKPiByZXF1ZXN0IGlzIGRpc2FibGVkIGJlZm9yZSBwbGFjaW5nIHRoZSBo
YXJkd2FyZSBibG9jayBpbnRvIHJlc2V0IGFuZAo+IGRpc2FibGluZyBjbG9ja3MuCj4KPiBDb3Vs
ZCBkaXNhYmxpbmcgdGhlIGNsb2NrIHJlcXVlc3QgYmVmb3JlIGFzc2VydGluZyByZXNldCBmcmVl
emUgdGhlIElQIGluIGFuCj4gaW52YWxpZCBzdGF0ZSBhbmQgcHJldmVudCBzdWJzZXF1ZW50IHdh
a2V1cHM/CgpJJ3ZlIHZlcmlmaWVkIGJvdGggb3JkZXJpbmdzIG9mIHNldF9wbWd0X3JlZl9jbGtf
cmVxX24gaW4gcGh5X2V4aXQsIHdpbGwKY2hhbmdlIHRvIGJlIGNvbnNpc3RlbnQgd2l0aCBwaHlf
aW5pdCBvcmRlcmluZyB0aG91Z2guCgo+ID4gKwo+ID4gKyAgICAgcmV0dXJuIHByb2dyYW1fdGNh
X2xvY2tlZChncGh5KTsKPgo+IFtTZXZlcml0eTogSGlnaF0KPiBTaG91bGQgdGhpcyBjaGVjayBp
ZiB0aGUgVHlwZS1DIHBvcnQgaXMgYWN0dWFsbHkgY29ubmVjdGVkIGJlZm9yZSBjYWxsaW5nCj4g
cHJvZ3JhbV90Y2FfbG9ja2VkKCk/Cj4KPiBJZiB0aGUgcG9ydCBpcyBkaXNjb25uZWN0ZWQgKGdw
aHktPm9yaWVudGF0aW9uID09IFRZUEVDX09SSUVOVEFUSU9OX05PTkUpLAo+IHByb2dyYW1fdGNh
X2xvY2tlZCgpIGZhbGxzIHRocm91Z2ggaXRzIGVsc2UgYnJhbmNoLCBjb25maWd1cmluZyB0aGUg
cmVnaXN0ZXJzCj4gZm9yIFRZUEVDX09SSUVOVEFUSU9OX05PUk1BTCBhbmQgc2V0dGluZyBUQ0Ff
VENQQ19WQUxJRC4KPgo+IFNpbmNlIHRoZSBUeXBlLUMgc3dpdGNoIGNhbGxiYWNrIGdvb2dsZV91
c2Jfc2V0X29yaWVudGF0aW9uKCkgY29ycmVjdGx5IHNraXBzCj4gVENBIHByb2dyYW1taW5nIGlm
IHRoZSBvcmllbnRhdGlvbiBpcyBOT05FLCBzaG91bGQgYSBzaW1pbGFyIGNoZWNrIGJlIHByZXNl
bnQKPiBoZXJlIHRvIHByZXZlbnQgZW5hYmxpbmcgdGhlIFN1cGVyU3BlZWQgZGF0YSBwYXRoIGZv
ciBhIHBoYW50b20gY29ubmVjdGlvbj8KCldpbGwgZ3VhcmQgYmVoaW5kIGdwaHktPm9yaWVudGF0
aW9uIGluIG5leHQgdmVyc2lvbi4gSWYgdGhlIHBvcnQgaXMKZGlzY29ubmVjdGVkIHRoZQpQSFkg
d2lsbCBiZSB0cmVhdGVkIGFzIGJlaW5nIGluIG5vcm1hbCBvcmllbnRhdGlvbiwgYnV0IGdpdmVu
IFVTQiBtb2RlIGlzIGJlaW5nCnByb2dyYW1tZWQgaGVyZSBhbmQgbm90IE5DLCBpdCdzIG1vcmUg
Y29ycmVjdCB0byBvbmx5IHByb2dyYW0gVVNCIHdoZW4KYSBwb3J0IHBhcnRuZXIgaXMgYWN0dWFs
bHkgY29ubmVjdGVkLgoKQmVzdCwKUkQKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
