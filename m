Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56442606A319
	for <linux-phy@archiver.kernel.org>; Thu, 22 Oct 2026 00:47:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=H5KLKFCD;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=c0f+zkhD
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i9x4C1Fxg544D/FyCeSEaq/urTv5T+JqB2O2WSDXEM0=; b=H5KLKFCDAKkJhK
	Lia539zoEhIxTiKHJz34nCCbzl9bUNGO8rF6W4BxefOSVzjRDfNsZ58K1Rhp4nCzOjN2Q0A23rAz+
	MnrxFYkwad08rkFUULqcan3DQ8pJqdcFPz2V5rLFVjhgJRx8JRNF6oEYbXOtVLde1kaJdmHfgGP6e
	jPP2m5EKaG1c2VYeU17Vtdmt6+xzYU9b69lHK+m/e833PfQ+/R8h11ki3X+Eh8rc1sYrlv/PsAKQH
	wI32n0gQCqgdiaz9p3pTbHTsKeVDCrofNXlj3aZLA23P/5TRcbUMSO5UEXFsghJbCL6iGfDnJ2sf9
	kjMGfeNKE0w9cfF5deYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJgxo-0000000D7Cu-3Wbc;
	Thu, 22 Oct 2026 00:47:24 +0000
Received: from mail-yw1-x1130.google.com ([2607:f8b0:4864:20::1130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJgxl-0000000D7CP-3t9o
	for linux-phy@lists.infradead.org;
	Thu, 22 Oct 2026 00:47:23 +0000
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-8b0a921ee46so12003577b3.2
        for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 17:47:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792630040; cv=none;
        d=google.com; s=arc-20260327;
        b=UsQqB/L31FNAN4fiGf00qsPthCs6jCog3oda/73vDIhf7GPlrE9jLx9xUydzslZCzo
         Nw7w4XgGpNguxDqpJxegPrfsHFGPuiD+GOUAZSho6JuP1FQfz1H+k9HzblfCmdkDcJs/
         gOafcwyqC5dc+X+1NpLN2hMZRTXjVWnMWuyog2nky5w1FYRhD8OHT7RS3EkMzeWw0IG0
         QTkgViVCPTd1vZKqE2gkWSIHSGWZE4j+smL8jMlW2T0XkQaksRujgoSivgx7FHd3g0/n
         aT5P6eaJuK80VfEw19ZyPzb5rzvn2KrIT12G+sYnb4mKa6EUCUGUWJHRNXoJYkwTWKKH
         NbvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=pwGPGU23GI6h9pUQHAK84Z+CzrPzJKabg5jcCAcJQ1Q=;
        fh=5ttx8dXyu3QlFB6VpkUIpn7n3ZXQJCthKvMyaaH43A0=;
        b=VIqT3B3TP5JhIk0tOnUlYrRJoCr3eplA1osWEMAylolZ7KrANFsGBAi4tLOmBuuMYf
         WnncFfS7s//mgMPZ/B/VnGz9VrWEPUJBtz8Jg+GWUz5gJ/3ecuZnnN+ojTDe/d42BEHw
         t9F5FX4YiuMqCIK2Urwo6cBcNxZ4yWHDCF3Kyl8G2BpACx9GzWj363z4LFGkvGQSSOAZ
         N+oNgaVTsvmm6O8rWm3tL/bqRbWzo7mkh8nwvNI/8ZSKDM/T1/yZEXF+KwB1YeWY1eZk
         MIryeTeBotWMDZAxE/JlSlydLtFTzZI1aqPUrWi8ALc+JgzLpQ+qo9UKqSgpo7RlIBwx
         CLSQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792630040; x=1793234840; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=pwGPGU23GI6h9pUQHAK84Z+CzrPzJKabg5jcCAcJQ1Q=;
        b=c0f+zkhDrmGqx7hzjXtMeuK2tYY7AhBJsMwTMvQQ17w4fm7aQaMyGI4m7Un6358tj5
         OQU0XztAmgrt+n+lKyb021cCRQoxE53DDDI/1ZKvL5GODkdkMoGmcNzL+bPdItNCXrNj
         Q4FYRxzftqiyEFzjbcTate6C9eaYJUpQ+RbR9WvUlwJvWZzF+/FHN9iDG4kR7nXQdaoQ
         0LR6hkPjGwNBt72hGvaikTBVLxhNZXPe2YySWqkkO1Xypb9zfAlOy/sQn7RNIWb9bSmS
         5I9bs3zDtP2xBNgOsjZBWQDzqGkKrs1t0FOcRLEaFL3KD5Vl8kiTVSv+RPdleWhu3Znt
         6WSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792630040; x=1793234840;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=pwGPGU23GI6h9pUQHAK84Z+CzrPzJKabg5jcCAcJQ1Q=;
        b=gT4c5CiEX1KHN7sLbhlz/PEFRKSLBOoaM4+v3xTlvxRWfi+o7eqgv5o1ZVDZbq63c9
         YcAdTGx5ObnTtrC83FcCZ99kW0jmQO2Rd7vwslpPLENm0VN87A7YpufDL6DTHLpyj82U
         xZ5a2sZ/SsQAnytGarGcqYYpSnUS9UceXfwZuxrkzOoqfwTX132wQiXyxa0RFKp3fhBs
         HfcfS5PhsJDtlYLYPFXLsGHS7+IWkk9ijfR2k15wbrQ9abhRBgJjPnDnFXir8wO4RMYP
         697ZNFURLngecS8d9um3s78IKVUCe8WrfN3czJH40vv235b4pbWxtqeJmhuGaZ1HxfoF
         yaeg==
X-Forwarded-Encrypted: i=1; AKwUvByT878yhNtgRy8MEK9YvkWZrMEq+No9dVK108l3SU8vB+QKRqVS7xlovkZ726Fa/LIlU1FZr9GSf6Q=@lists.infradead.org
X-Gm-Message-State: AFq9FYIoUoe307ijLflDWNqlj0eA932vNSRlokW1z8viUqUINFra/LO/
	jNi8npZpVLH1PY+OwMVMJf7A45GIptPGWohcVjyvv2GFuTlKCmKlS98xdTCsue7Fs7mifL5A3M7
	lQqIf//tiAHRGDu+qHRIsez7Bh+gjHec=
X-Gm-Gg: AYBFou2UjJPNZiq9sfzXg9BnHyLvJ5QB34Llp49Q0CtjCCXUOxwI7LkOtle0QMHnNtz
	L5bJPC+z+U7AOpE8H+t6Dl+o8/5G/9Y2nQQM5MQ3ZFeL/SnTR118Uj1jCqWRpiiWXGZzdSb8WRo
	sY4OTRItKKB1t+KmffFIcYiq3dVUD1xfjFS4KTO2i3GhXsEVMqTA0IJffDKHCFYnYsEiQlBMA/m
	CD9c/lVbwgQZE/inq0Hx5gDtgSG6ZEuCEncsEd2CokJHkg1CJA9nYV8ZKzaKTW9Yh4sRNQ5xuPf
	Mj5wkZoqvOs3OtQcjg/V1RXCMgKQAOOpEXttcvNq55bZkbRrQ4bmo9eGAXC3q8Qn+vdY4xAlRcB
	7F2zeG+nacU0vjXWsjg34TiOJj9SvcTetfElK
X-Received: by 2002:a05:690c:c673:20b0:8ab:33d2:1528 with SMTP id
 00721157ae682-8b133f552e5mr14795247b3.35.1792630040090; Wed, 21 Oct 2026
 17:47:20 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <CAAnD8Rb4ZZrHFWMJayabioB_8bOHh1mqZ5LCXZz0jTNGMA7UZQ@mail.gmail.com>
In-Reply-To: <CAAnD8Rb4ZZrHFWMJayabioB_8bOHh1mqZ5LCXZz0jTNGMA7UZQ@mail.gmail.com>
From: Jeff Roach <jeff.roach0@gmail.com>
Date: Wed, 21 Oct 2026 19:47:09 -0500
X-Gm-Features: AclHuK8JKBY8JP6pZeQPmFOuI9QrPgjaWpGEcYfrrzYDKfYz42LajgcwAPxTyjc
Message-ID: <CAAnD8RaicCmi2vk_Mna-Mfct4Ebh5dFVnKUkvVSiX6kpTB_imw@mail.gmail.com>
Subject: Re: HP OmniBook X 16 (X2 Elite, Mahua): DT bring-up report and questions
To: linux-arm-msm@vger.kernel.org
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Clark <robin.clark@oss.qualcomm.com>, Akhil P Oommen <akhilpo@oss.qualcomm.com>, 
	lumag@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_174722_005124_4CE8B3B4 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: -1.9 (-)
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
X-Spam-Status: No, score=-5.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gV2VkLCBPY3QgMjEsIDIwMjYgYXQgNTozNOKAr1BNIEplZmYgUm9hY2ggPGplZmYucm9hY2gw
QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBIaSBhbGwsCj4KPiBJIGhhdmUgYSBkZXZpY2UgdHJlZSBm
b3IgdGhlIEhQIE9tbmlCb29rIFggTGFwdG9wIDE2LWNwMXh4eCAoYm9hcmQKPiA4RjQ2LCBTbmFw
ZHJhZ29uIFgyIEVsaXRlIDEyLWNvcmUsICJxY29tLG1haHVhIikgdGhhdCBib290cyBhbmQgcnVu
cyBhCgpIaSBhbGwsCgpBIGZvbGxvdy11cCB3aXRoIG9uZSBuZXcgcmVzdWx0OiBEaXNwbGF5UG9y
dCBhbHQgbW9kZSBvbiB0aGUgVVNCLUMKcG9ydHMsIGFuZCB3aGF0IGxvb2tzIGxpa2UgYSB3cm9u
ZyBjbG9jayBkaXZpZGVyIGluIHRoZSBHbHltdXIgY29tYm8KUEhZIGRyaXZlci4KClNldHVwOiBt
ZHNzX2RwMC9tZHNzX2RwMSBlbmFibGVkIGFzIGluIGdseW11ci1ocC1lbGl0ZWJvb2steC1nMnEu
ZHRzCihnbHltdXIuZHRzaSBhbHJlYWR5IGxpbmtzIHRoZW0gdG8gdXNiXzAvdXNiXzFfcW1wcGh5
LCBhbmQKcG1pY19nbGlua19hbHRtb2RlIHByb3ZpZGVzIEhQRCkuIFNpbms6IFVTQi1DIGh1YiB3
aXRoIGEgUGFyYWRlIFBTMTc2CkRQLXRvLUhETUkgY29udmVydGVyLCAxMDgwcCBtb25pdG9yLiBU
aGUgc2FtZSBodWIgYW5kIG1vbml0b3Igd29yawp1bmRlciBXaW5kb3dzIG9uIHRoaXMgbGFwdG9w
LgoKV2l0aCB0aGUgZGVmYXVsdCBsaW5rLWZyZXF1ZW5jaWVzIHRoZSBkcml2ZXIgcGlja2VkIEhC
UjIsIDIgbGFuZXMuCkFVWCwgRURJRCBhbmQgbGluayB0cmFpbmluZyBhbGwgc3VjY2VlZGVkIChk
cm0uZGVidWcgc2hvd3MgIm1haW5saW5rClJFQURZIiwgMTkyMHgxMDgwQDYwLCAxNDguNSBNSHos
IHNlbnNpYmxlIE12aWQvTnZpZCksIGFuZCBHTk9NRSBzaG93ZWQKdGhlIG1vbml0b3IgYXMgYWN0
aXZlLCBidXQgdGhlIG1vbml0b3IgcmVwb3J0ZWQgIk5vIHNpZ25hbCIuCgpDb3VudGluZyB2Ymxh
bmtzIHdpdGggRFJNX0lPQ1RMX1dBSVRfVkJMQU5LIG9uIHRoYXQgQ1JUQyBnYXZlIGV4YWN0bHkK
MzMuMzMgbXMgcGVyIGZyYW1lLCBpLmUuIDMwIEh6IGZvciBhIDYwIEh6IG1vZGUgKHRoZSBlRFAg
Q1JUQyBtZWFzdXJlZAo1OS44NiBIeiBhdCB0aGUgc2FtZSB0aW1lKS4gU28gdGhlIHRpbWluZyBl
bmdpbmUgYXBwZWFycyB0byBydW4gYXQKaGFsZiB0aGUgcGl4ZWwgY2xvY2sgdGhlIHN0cmVhbSBo
ZWFkZXIgYW5ub3VuY2VzLCBhbmQgdGhlIFBTMTc2IG5ldmVyCmxvY2tzLgoKQ2FwcGluZyBsaW5r
LWZyZXF1ZW5jaWVzIGF0IEhCUiBpbiB0aGUgRFQKKDwxNjIwMDAwMDAwIDI3MDAwMDAwMDA+KSBm
aXhlcyBpdDogdGhlIHNhbWUgQ1JUQyBtZWFzdXJlcyA2MC4wMDAgSHoKYW5kIHRoZSBtb25pdG9y
IHNob3dzIGEgcGljdHVyZS4gQm90aCBVU0ItQyBwb3J0cyAobWRzc19kcDAgYW5kCm1kc3NfZHAx
KSBiZWhhdmUgdGhlIHNhbWUgd2F5LgoKTG9va2luZyBhdCBkcml2ZXJzL3BoeS9xdWFsY29tbS9w
aHktcWNvbS1xbXAtY29tYm8uYywKcW1wX3Y4X2NvbmZpZ3VyZV9kcF9jbG9ja3MoKSAodXNlZCBi
eSBnbHltdXJfdXNiM2RwcGh5X2NmZykgc2V0cwpwaHlfdmNvX2RpdiA9IDB4NCAvIDB4MiAvIDB4
NCAvIDB4MyBmb3IgUkJSIC8gSEJSIC8gSEJSMiAvIEhCUjMuIFRoZQpHbHltdXIgZURQIFBIWSBp
biBwaHktcWNvbS1lZHAuYyAoZWRwX3BoeV92Y29fZGl2X2NmZ192OCkgdXNlcyAweDAwIC8KMHgw
MCAvIDB4MDIgLyAweDAxLiBJIGhhdmVuJ3QgY2hlY2tlZCB0aGlzIGFnYWluc3QgZG9jdW1lbnRh
dGlvbiAoSQpkb24ndCBoYXZlIGFueSksIGFuZCBJIGhhdmVuJ3QgeWV0IHRyaWVkIGEgcGF0Y2hl
ZCBtb2R1bGUsIHNvIGl0IGlzCm9ubHkgYSBzdXNwaWNpb24gdGhhdCB0aGUgSEJSMiAoYW5kIG1h
eWJlIEhCUjMpIHZhbHVlIGlzIHdyb25nLiBJdCBpcwp0aGUgc2FtZSBpbiBsaW51eC1uZXh0IGFz
IGZhciBhcyBJIGNhbiBzZWUuCgpRdWVzdGlvbnM6Ci0gRG9lcyB0aGUgSEJSMiBkaXZpZGVyIGlu
IHFtcF92OF9jb25maWd1cmVfZHBfY2xvY2tzKCkgbG9vayByaWdodCB0bwogIHlvdT8gSWYgc29t
ZW9uZSBjYW4gdGVsbCBtZSB0aGUgZXhwZWN0ZWQgdmFsdWUgSSdtIGhhcHB5IHRvIGJ1aWxkCiAg
dGhlIG1vZHVsZSBhbmQgdGVzdCBIQlIyIGFuZCBIQlIzLgotIElzIGNhcHBpbmcgbGluay1mcmVx
dWVuY2llcyBhY2NlcHRhYmxlIGluIGEgYm9hcmQgRFRTIHVudGlsIHRoaXMgaXMKICB1bmRlcnN0
b29kLCBvciBzaG91bGQgSSBsZWF2ZSBEUCBvdXQgb2YgdGhlIGZpcnN0IHN1Ym1pc3Npb24/CgpE
ZXRhaWxzOgpodHRwczovL2dpdGh1Yi5jb20vamVmZnJvYWNoMC9vbW5pYm9vay14MTYtbGludXgv
YmxvYi9tYWluL2RvY3MvZmluZGluZ3MubWQjZGlzcGxheXBvcnQtb3Zlci11c2ItYwoKVGhhbmtz
LApKZWZmCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
