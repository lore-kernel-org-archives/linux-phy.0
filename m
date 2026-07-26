Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBD98C531C9
	for <linux-phy@archiver.kernel.org>; Sun, 26 Jul 2026 14:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N3/ySUwd3Im3KUrFB/JssdMaxQNS74YMRkT3i0uyz9o=; b=DEkQv33UATd6d1
	HgpewauH36vkRxQACZXWjReL0rd2rjwak/NHSzpn4uNuIfVRX6zZ48MlHafiSD5IuXrj6PCU9SM+9
	OaRlZKjKNV2dObTYkj7WGSa/EcrRyNpzlUKBql/Po0WARYvBI0fHTKJMJVx60HMfzItvz1e0INSFb
	dhflVH3QPU83dswnaY7xUz9OkHe4eoVoyGPA3FYiNMpVGhAtAMESpzybYX7dwJDoxv3KbV0fkJ/ST
	NymRUocNoFkSs3WKZvca3czGZdHtWhJ27Qb9Vtcw41qaqf6k1Pti4EaGd0gdqoskcX71EY93ZI+a1
	XBfBele2l2WNsRVTAKeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wo0EW-00000001Ff3-1LBB;
	Sun, 26 Jul 2026 14:53:40 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wo0EU-00000001Fei-1oO9
	for linux-phy@lists.infradead.org;
	Sun, 26 Jul 2026 14:53:39 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-69edc72e513so346953a12.3
        for <linux-phy@lists.infradead.org>; Sun, 26 Jul 2026 07:53:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785077616; cv=none;
        d=google.com; s=arc-20260327;
        b=NJQqsFIVHEVxJc59Haowr3fB9SAQ6klMEcftNi9Hqk4lzhpiqr8DOqLEv6IBEq7NfM
         ReMDgkJUbNJzo4E8HyOsojCmYz0TEo+76mK2PQgoCOZXgRSsq70DKoN9hu4Ibv/5MSz2
         WPn8dxaq4piww8ymKgCMni51CxvoYgQVvPelLqvhHBvKbs5AaPFom72uxHy9F7mtQEvD
         bNme/B5vL82SE4rFYPYqUI0/LAyfdiVejDVxugtKXUoWpxHUDwCMV5jK/dIbSUJBHs7k
         cjhJAwHLiJn20JAIXwkHiaNESJWOMOVgsMNn7Gn0vDLalACNLIy27vlSS8DPt+HMm/JL
         5emQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=2SqHyyBA+Ia1q8kRP2fi5yiAfiuE7PWnVjVyGMbBz8E=;
        fh=2WQLG3+TN05tK2eedsXhPd14AIZCmhP/XUVBZ+DIHcs=;
        b=deeDJLpuSUn8CvHllmXPN62WJAukwU4XveEyUSI6FbLZPyoyT7iKUeH5igqypJP1Je
         Ef/RTOayTXM8d7mFAWa/3fseIujiJYxXX8gX2EO66J6RsB2p6V+LP+CNAXm9yq+6b29e
         EpM949CIvmfvD6U7su/03G1VgrbgwhbpG4gc/4KPrUaWKv1Fy4IQ3joMo0sUg3xzEIDy
         rRLuwH8OpBgeQalONA9xdcWKqFTqUvotI8kucSES2kFiASpaw+5lJovg2g22iapyDG+P
         GwMly60qxZfh7NcDXuI0Xl7IkvSnKVpMWFII13fM/ac3OHkokuc4ULcmb17YaT3kEoxX
         bC2w==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785077616; x=1785682416; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=2SqHyyBA+Ia1q8kRP2fi5yiAfiuE7PWnVjVyGMbBz8E=;
        b=TVqiDqkp+wJ9tZI7kX1fxvbtNM7PEnBeNdsAuxx7cPz3P7a2SILmpRLbXOmQGeJITS
         aWeGlM4Vzre8vyi0vG5TaOHiGM9HbF6pqRG837aECNWMB5CnAaB9wqMhyi7ztFsHH4c/
         icR0Hm4DMRka6Xw443muuLojWTjJJtYcaAFmCLaDnxRm+dmfV9IRSbSQjMPyCjyzWTng
         FdIR08N9V5silIJX9yrbHbko0VfLumwl1sbgoZOxGR+ltF8U78ubEGcf6hnm9jqAsjOQ
         fD8PkiJ9bXCNoQzWP5UywlqbrCWf+XZBz0XgSfTv0URUmwM6SvPlnAnZdtThfY1unNve
         gi0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785077616; x=1785682416;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=2SqHyyBA+Ia1q8kRP2fi5yiAfiuE7PWnVjVyGMbBz8E=;
        b=FJut7y4a3ev7njmHwJgpMdWu2Pws1iw5/ThlIqExX6NMWILrEppqXR+E/DzVSxcLcS
         GZlkEkTYxvB7NOKLckfQa9cCfJEQ4Hwf48/cCuPfb7I2nok373peaUAUSOYo4YZv0Ki5
         1sQ9XxgEguB5J2lT/N3w1S0FoZGBzpi2IPCkHJtVTJAP1FBuk/IR51samVJTauyZp5J3
         YveoL/dcR0z6yRBOjSb6d62jHwZ9I/XALQ2YzknbxikhtUNustvCnF+ZRf2zlxxlpaxT
         QAzfilV1WzRT3fVVyLxmdiri+HUeQnlaoez7jL/+KSRnMmVZEapr4i2K3iFcZVPi6yZ0
         YlyA==
X-Forwarded-Encrypted: i=1; AHgh+RqQh8qqU9tMie45wsOZjl5EsptMIWZ9PHvVrx6bcaTYLp0UYkmd+YK6iXyRhi134+u13kGwNkyHj0U=@lists.infradead.org
X-Gm-Message-State: AOJu0YyPWy9evOxUhEEnspydSWEYUFaNVoc7tdowSMJsIIGjkLdve8YW
	sXV6Tx3j8I+f5YTUupNMzF7ktWq0PCjUrOwqFrMBROoVO5U1jh9wBBmKfMhPQPmi4OE3TbVSKD8
	lazKdkqisQ37Sw8nFSm9jp/QoVJIyHppNAPQL
X-Gm-Gg: AR+sD13B1shKeP5t/cmivSk5Hgyc5pvb/xJzM+oAjbFiciJVCv9L5nDMT3pJCJup/Js
	Bt0k8J9hzgMcRVDG0xxgcXrXubwndf8XSP5sR8kREQnGt6JSvDMHBI5aoVBUSwXlxysf+ooPebk
	3KuB/TNMC8C4DEPdopvwdAje0atnBLuIIBmD/NRJgcSpkX6LTHmBUTSgBd+JR/zj5fqI7vKkzGa
	bJQYJrT54L51H4i79iDZ9lLX2KZFU5pv1G8wyNsZ2A5AuxCwf+suu0SfLl+T055fcd49Zr+/peI
	L7qFKXE=
X-Received: by 2002:a05:6402:51c7:b0:69c:7a3f:9fb5 with SMTP id
 4fb4d7f45d1cf-69fc117f84dmr1172000a12.7.1785077616017; Sun, 26 Jul 2026
 07:53:36 -0700 (PDT)
MIME-Version: 1.0
References: <20260721-dcphy-rx-v1-v1-0-4fc83c0ccac9@gmail.com>
 <20260721-dcphy-rx-v1-v1-3-4fc83c0ccac9@gmail.com> <20260721104456.0695D1F01560@smtp.kernel.org>
In-Reply-To: <20260721104456.0695D1F01560@smtp.kernel.org>
From: =?UTF-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>
Date: Sun, 26 Jul 2026 22:54:10 +0800
X-Gm-Features: AUfX_mzTjOOwIggGzm-aEH5bYG0UISvchkAs7LjBaVST0b3wi1zvFpg_5iayiDI
Message-ID: <CAPwA33Kin3jRGmUCCUt86n64C+q5N0E4a+afsWZPyFypDAW3Og@mail.gmail.com>
Subject: Re: [PATCH 3/4] phy: rockchip-samsung-dcphy: model TX and RX as
 separate PHYs
To: sashiko-reviews@lists.linux.dev
Cc: conor+dt@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, 
	vkoul@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260726_075338_519485_DBD11786 
X-CRM114-Status: GOOD (  20.83  )
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

PiBEb2VzIHRoaXMgY29kZSBtb2RpZnkgdGhlIHNoYXJlZCBzYW1zdW5nLT5sYW5lcyBzdGF0ZSBi
ZWZvcmUgY2hlY2tpbmcgaWYKPiB0aGUgZGlyZWN0aW9uIGlzIHN1cHBvcnRlZD8KClllcywgdGhp
cyBpcyBhIHZhbGlkIGZpbmRpbmcgLSBhbmQgdGhlIHNoYXJlZCBsYW5lIGNvdW50IHR1cm5lZCBv
dXQgdG8KYmUgYSByZWFsIHByb2JsZW0gYmV5b25kIHRoZSBvcmRlcmluZy4gSXQgcmVwcm9kdWNl
cyBvbiBoYXJkd2FyZTogd2l0aAp0aGUgcmVjZWl2ZXIgY29uZmlndXJlZCBmb3Igb25lIGRhdGEg
bGFuZSwgcG93ZXJpbmcgdGhlIHRyYW5zbWl0dGVyCm9mZiBhZnRlcndhcmRzIGRpc2FibGVzIG9u
bHkgb25lIG9mIGl0cyB0d28gbGFuZXMgYW5kIGxlYXZlcyB0aGUKc2Vjb25kIHN0aWxsIGVuYWJs
ZWQsIHdoaWNoIHRoZSBwZXItbGFuZSBHTlJfQ09OMCByZWdpc3RlcnMgY29uZmlybS4KCkluIHYy
IGJvdGggdGhlIGxhbmUgY291bnQgYW5kIHRoZSByZWNlaXZlciBsaW5rIHJhdGUgYmVjb21lCnBl
ci1kaXJlY3Rpb24gc3RhdGUsIHNvIGEgY29uZmlndXJlKCkgY2FsbCBjYW4gbm8gbG9uZ2VyIGNs
b2JiZXIgdGhlCm90aGVyIGRpcmVjdGlvbiwgYW5kIHRoZSBwZWVyIHBvd2VyX2NvdW50IGNoZWNr
IGlzIHJlcGxhY2VkIGJ5IGEKcG93ZXJlZCBmbGFnIGtlcHQgdW5kZXIgdGhlIHByb3ZpZGVyIG11
dGV4LiBXaXRoIHRob3NlIGNoYW5nZXMgdGhlCnNhbWUgc2VxdWVuY2UgZGlzYWJsZXMgYm90aCBs
YW5lcyBjbGVhbmx5IG9uIHRoZSBzYW1lIGhhcmR3YXJlLgoKVGhhbmtzLApKYXNvbgoKPHNhc2hp
a28tYm90QGtlcm5lbC5vcmc+IOaWvCAyMDI25bm0N+aciDIx5pel6YCx5LqMIOS4i+WNiDY6NDTl
r6vpgZPvvJoKPgo+IFRoYW5rIHlvdSBmb3IgeW91ciBjb250cmlidXRpb24hIFNhc2hpa28gQUkg
cmV2aWV3IGZvdW5kIDEgcG90ZW50aWFsIGlzc3VlKHMpIHRvIGNvbnNpZGVyOgo+IC0gW0hpZ2hd
IENvbmN1cnJlbnQgb3IgdW5zdXBwb3J0ZWQgUEhZIGNvbmZpZ3VyYXRpb24gY2xvYmJlcnMgdGhl
IHNoYXJlZCBgc2Ftc3VuZy0+bGFuZXNgIGRyaXZlciBzdGF0ZSBiZWZvcmUgdmVyaWZ5aW5nIHRo
ZSBkaXJlY3Rpb24gaXMgc3VwcG9ydGVkLgo+IC0tCj4KPiAtLS0gUGF0Y2ggWzNdOiBbUEFUQ0gg
My80XSBwaHk6IHJvY2tjaGlwLXNhbXN1bmctZGNwaHk6IG1vZGVsIFRYIGFuZCBSWCBhcyBzZXBh
cmF0ZSBQSFlzIC0tLQo+IGNvbW1pdCAyNDJiOTQzNWQwOWUwMTMzZGU0NjU4MTU2ZjNjYzIyNGFh
MmY4NGM5Cj4gQXV0aG9yOiBKYXNvbiBZYW5nIDxqYXNvbjk4MTY2QGdtYWlsLmNvbT4KPgo+IHBo
eTogcm9ja2NoaXAtc2Ftc3VuZy1kY3BoeTogbW9kZWwgVFggYW5kIFJYIGFzIHNlcGFyYXRlIFBI
WXMKPgo+IFRoaXMgY29tbWl0IG1vZGVscyB0aGUgTUlQSSBEU0kgdHJhbnNtaXR0ZXIgYW5kIE1J
UEkgQ1NJIHJlY2VpdmVyIGFzIHNlcGFyYXRlCj4gUEhZcyB0aGF0IHNoYXJlIHRoZSBzYW1lIGhh
cmR3YXJlIGJsb2NrLiBJdCByZWdpc3RlcnMgb25lIHN0cnVjdCBwaHkgcGVyCj4gZGlyZWN0aW9u
IGFuZCBhZGRzIGEgcGVyLXByb3ZpZGVyIG11dGV4IHRvIHNlcmlhbGl6ZSBhY2Nlc3MgdG8gdGhl
IHNoYXJlZAo+IHN0YXRlLgo+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAv
cGh5LXJvY2tjaGlwLXNhbXN1bmctZGNwaHkuYyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1y
b2NrY2hpcC1zYW1zdW5nLWRjcGh5LmMKPiA+IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3Bo
eS1yb2NrY2hpcC1zYW1zdW5nLWRjcGh5LmMKPiA+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlw
L3BoeS1yb2NrY2hpcC1zYW1zdW5nLWRjcGh5LmMKPgo+IFsgLi4uIF0KPgo+ID4gQEAgLTE0ODgs
MTEgKzE1MjEsMTUgQEAgc2Ftc3VuZ19taXBpX2RjcGh5X3BsbF9jYWxjX3JhdGUoc3RydWN0IHNh
bXN1bmdfbWlwaV9kY3BoeSAqc2Ftc3VuZywKPiA+ICBzdGF0aWMgaW50IHNhbXN1bmdfbWlwaV9k
Y3BoeV9jb25maWd1cmUoc3RydWN0IHBoeSAqcGh5LAo+ID4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB1bmlvbiBwaHlfY29uZmlndXJlX29wdHMgKm9wdHMpCj4gPiAgewo+
ID4gLSAgICAgc3RydWN0IHNhbXN1bmdfbWlwaV9kY3BoeSAqc2Ftc3VuZyA9IHBoeV9nZXRfZHJ2
ZGF0YShwaHkpOwo+ID4gKyAgICAgc3RydWN0IHNhbXN1bmdfbWlwaV9kY3BoeV9kaXIgKnBkID0g
cGh5X2dldF9kcnZkYXRhKHBoeSk7Cj4gPiArICAgICBzdHJ1Y3Qgc2Ftc3VuZ19taXBpX2RjcGh5
ICpzYW1zdW5nID0gcGQtPnBhcmVudDsKPiA+ICAgICAgIHVuc2lnbmVkIGxvbmcgbG9uZyB0YXJn
ZXRfcmF0ZSA9IG9wdHMtPm1pcGlfZHBoeS5oc19jbGtfcmF0ZTsKPiA+Cj4gPiAgICAgICBzYW1z
dW5nLT5sYW5lcyA9IG9wdHMtPm1pcGlfZHBoeS5sYW5lcyA+IDQgPyA0IDogb3B0cy0+bWlwaV9k
cGh5LmxhbmVzOwo+ID4KPiA+ICsgICAgIGlmIChwZC0+ZGlyID09IFJLX0RDUEhZX0RJUl9SWCkK
PiA+ICsgICAgICAgICAgICAgcmV0dXJuIC1FT1BOT1RTVVBQOwo+ID4gKwo+Cj4gW1NldmVyaXR5
OiBIaWdoXQo+IERvZXMgdGhpcyBjb2RlIG1vZGlmeSB0aGUgc2hhcmVkIHNhbXN1bmctPmxhbmVz
IHN0YXRlIGJlZm9yZSBjaGVja2luZyBpZgo+IHRoZSBkaXJlY3Rpb24gaXMgc3VwcG9ydGVkPwo+
Cj4gU2luY2UgdGhpcyBpcyBkb25lIHdpdGhvdXQgaG9sZGluZyBzYW1zdW5nLT5sb2NrLCBjYW4g
YSBjb25zdW1lcgo+IGNvbmZpZ3VyaW5nIHRoZSBSWCBQSFkgY2xvYmJlciB0aGUgYWN0aXZlIFRY
IFBIWSdzIGxhbmUgY291bnQ/Cj4KPiBJZiB0aGUgbGFuZSBjb3VudCBpcyBjb3JydXB0ZWQsIGl0
IGxvb2tzIGxpa2UgaXQgY291bGQgbGVhZCB0byBpbmNvcnJlY3QgbGFuZQo+IHBvd2VyLWRvd24g
c2VxdWVuY2VzIHdoZW4gdGhlIFRYIFBIWSBpcyBkaXNhYmxlZCBsYXRlciwgcG90ZW50aWFsbHkg
bGVhdmluZwo+IE1JUEkgbGFuZXMgYWN0aXZlbHkgZHJpdmVuLgo+Cj4gU2hvdWxkIHRoZSBwZC0+
ZGlyIGNoZWNrIGFuZCB0aGUgbG9jayBhY3F1aXNpdGlvbiBoYXBwZW4gYmVmb3JlIHVwZGF0aW5n
Cj4gc2Ftc3VuZy0+bGFuZXM/Cj4KPiBbIC4uLiBdCj4KPiAtLQo+IFNhc2hpa28gQUkgcmV2aWV3
IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcyMS1kY3BoeS1yeC12MS12
MS0wLTRmYzgzYzBjY2FjOUBnbWFpbC5jb20/cGFydD0zCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
