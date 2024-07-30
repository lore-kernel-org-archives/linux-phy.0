Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 400D0C3DA49
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jul 2024 08:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=APaRDvaSmg5GDnDk/GhhxOnjlyHfobEjQzEEy6PwssM=; b=zVDCo8F3lFLC3P
	05RtRGghZ1EuJuT8mjeJLomh2KDh7N61fTgWe3fiFoM5pz/pSGvT3t4Rcc8RlkT2Htjrjr8OkUf2U
	LHaaijN3BFHHueJyXB+ASUWVTX0RGNmFTSULwIuDGu5xEXteMvSu0H7Iy/Y2nca9jlzU6o3AQBxl4
	bE0MRvgN6UuJ2njccHjiInpzvex+cVTnF0mmykACpQPIDW21IOB69oGwGtKkrjjYz8CVvnXPwvswv
	WC3yi5RXwJ/Noa2aoPF2Hpm7JzGWhvF6lFLZZfBHJowvElPwwnvnByOQ7CfVzoe+lsOSGwcyv/6vH
	d4RCAbtKYgMKjhAf8KNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYhsO-0000000EAFv-3xyf;
	Tue, 30 Jul 2024 08:06:32 +0000
Received: from mail-ot1-x335.google.com ([2607:f8b0:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYhrw-0000000EA8l-1god;
	Tue, 30 Jul 2024 08:06:05 +0000
Received: by mail-ot1-x335.google.com with SMTP id 46e09a7af769-7094641d4e6so1043204a34.3;
        Tue, 30 Jul 2024 01:06:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722326763; x=1722931563; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VnmuEU1N5dDRQk0+bcOAjceMX+K/96omYj/mPhdj7Fo=;
        b=JGuyqYbC0CbqPmnqPCzPvk2iGK/pXiCuKbuSeV6kSvjw7IPdZwN9Qla5j+LjZam3fK
         ZK/nVcln9lvo0EB2VM8eSFU9mYi9efE1+bFXbSy+SsbGhqELwwlEogRL8d7I8jQgSlKq
         di3ufnf3C1TRMk9T1KST8YMH+U4EW5hrxxVGfwxTgACyzWa2lFD2+GusH+v1tNFMacNq
         RePCqjSdcTdVHHnw6n56L8t0+ZsoJLNnGPfWrCPar8T0A3xcmcn8TY7rmomA7vbYlDqN
         FkxVPxaDrUF9ov0q6pdT8fUso18ZFGX8L+VUdzAegVm4ASA8quQl3sT+bdqFsql5ysru
         4mRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722326763; x=1722931563;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VnmuEU1N5dDRQk0+bcOAjceMX+K/96omYj/mPhdj7Fo=;
        b=LsTT6iRtlYIMH+gPfHOdEQX37gMOZ6SRyxssmMFY8FsWTSlZSaJUH4XarHiqlOMDi1
         T4Tb2Odpqev9TuzFUz2YMKvgXSJqaxgKh3spr/T4T/atZCcgSzu118XBHO2Ju9mIzI4V
         RGDw9PIJ0Pz9CZSAWefyiYuPVBHfYDdHaMLpMKPsjVdTtL/RQB5eCXgjG0bfmdC54l1+
         kT5hZECaMTeFkampXMt81r33N1noyGiod3YcFTIKO704CTCXFtdtcYqzEIg6/UFhIQBq
         Izjzp/Gr2esNLSZolYnYHQb8b9wMMeYvCoRrikTfhg34MVZ6JajZEbs0QPcIqVGKKTbw
         B+6A==
X-Forwarded-Encrypted: i=1; AJvYcCWEiH3Siryv6koyvhPnHx/exzuBuM6IgOd2kAJxjeWsOdkznYAIGZrIGrV9473Ennik5haLtIZTksjykM6XXNZ4Mwwv27aJByDSK02zBQ==
X-Gm-Message-State: AOJu0YyfFOOQzAZLNqr9UyFpM42Ley9CJk5gMC17tv1mB5ASs7C51QWZ
	LAibR9tFO0rJphTaab889tAwJ5G0G+fpFqzuL6YYWgkb99HqIuL+2gW18w==
X-Google-Smtp-Source: AGHT+IGbl7ULapgplJbjM/8/oPfogx6+4bUbzvc2wp+tUSavKIiI1R/bIhZlzQV8jlAPQNkLcNv2aA==
X-Received: by 2002:a05:6870:9691:b0:254:994b:5e6b with SMTP id 586e51a60fabf-267d4ef8f16mr12453508fac.44.1722326763010;
        Tue, 30 Jul 2024 01:06:03 -0700 (PDT)
Received: from [172.19.1.53] (60-250-192-107.hinet-ip.hinet.net. [60.250.192.107])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7a9f7c6fcefsm8511098a12.1.2024.07.30.01.06.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jul 2024 01:06:02 -0700 (PDT)
Message-ID: <a3538f0a-fd44-4aa1-8796-6adb3a753919@gmail.com>
Date: Tue, 30 Jul 2024 16:05:59 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: nuvoton: add new driver for the Nuvoton MA35 SoC
 USB 2.0 PHY
To: Krzysztof Kozlowski <krzk@kernel.org>, vkoul@kernel.org,
 kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240729061509.83828-1-hpchen0nvt@gmail.com>
 <20240729061509.83828-3-hpchen0nvt@gmail.com>
 <7ce7f373-c738-48c7-835e-6e7d10e8ae20@kernel.org>
Content-Language: en-US
From: Hui-Ping Chen <hpchen0nvt@gmail.com>
In-Reply-To: <7ce7f373-c738-48c7-835e-6e7d10e8ae20@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_010604_468010_C109709C 
X-CRM114-Status: GOOD (  17.96  )
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

RGVhciBLcnp5c3p0b2YsCgpUaGFuayB5b3UgZm9yIHlvdXIgcmVwbHkuCgoKCk9uIDIwMjQvNy8y
OSDkuIvljYggMDM6MzIsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gT24gMjkvMDcvMjAy
NCAwODoxNSwgaHBjaGVuMCB3cm90ZToKPj4gTnV2b3RvbiBNQTM1IFNvQ3Mgc3VwcG9ydCBEV0My
IFVTQiBjb250cm9sbGVyLgo+PiBBZGQgdGhlIGRyaXZlciB0byBkcml2ZSB0aGUgVVNCIDIuMCBQ
SFkgdHJhbnNjZWl2ZXJzLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBocGNoZW4wIDxocGNoZW4wbnZ0
QGdtYWlsLmNvbT4KPj4gKwo+PiArCXJldCA9IGNsa19wcmVwYXJlX2VuYWJsZShwX3BoeS0+Y2xr
KTsKPj4gKwlpZiAocmV0IDwgMCkgewo+PiArCQlkZXZfZXJyKHBfcGh5LT5kZXYsICJGYWlsZWQg
dG8gZW5hYmxlIFBIWSBjbG9jazogJWRcbiIsIHJldCk7Cj4+ICsJCXJldHVybiByZXQ7Cj4+ICsJ
fQo+PiArCj4+ICsJcmVnbWFwX3JlYWQocF9waHktPnN5c3JlZywgTUEzNV9TWVNfUkVHX1VTQlBN
SVNDUiwgJnZhbCk7Cj4+ICsJaWYgKHZhbCAmIFBIWTBTVVNQRU5EKSB7Cj4+ICsJCS8qCj4+ICsJ
CSAqIFVTQiBQSFkwIGlzIGluIG9wZXJhdGlvbiBtb2RlIGFscmVhZHkKPj4gKwkJICogbWFrZSBz
dXJlIFVTQiBQSFkgNjAgTUh6IFVUTUkgSW50ZXJmYWNlIENsb2NrIHJlYWR5Cj4+ICsJCSAqLwo+
PiArCQl0aW1lb3V0ID0gamlmZmllcyArIG1zZWNzX3RvX2ppZmZpZXMoMjAwKTsKPj4gKwkJd2hp
bGUgKHRpbWVfYmVmb3JlKGppZmZpZXMsIHRpbWVvdXQpKSB7Cj4+ICsJCQlyZWdtYXBfcmVhZChw
X3BoeS0+c3lzcmVnLCBNQTM1X1NZU19SRUdfVVNCUE1JU0NSLCAmdmFsKTsKPj4gKwkJCWlmICh2
YWwgJiBQSFkwREVWQ0tTVEIpCj4+ICsJCQkJcmV0dXJuIDA7Cj4+ICsJCQl1c2xlZXBfcmFuZ2Uo
MTAwMCwgMTUwMCk7Cj4+ICsJCX0KPiBZb3Ugd2FudCBzb21lIHJlYWRsX3BvbGxfdGltZW91dCB2
ZXJzaW9uIGhlcmUuCgpPa2F5LiBUaGUgcmVhZGxfcG9sbF90aW1lb3V0IGZ1bmN0aW9uIHdpbGwg
YmUgdXNlZCBpbnN0ZWFkLgoKCgo+PiArCX0KPj4gKwo+PiArCS8qCj4+ICsJICogcmVzZXQgVVNC
IFBIWTAuCj4+ICsJICogd2FpdCB1bnRpbCBVU0IgUEhZMCA2MCBNSHogVVRNSSBJbnRlcmZhY2Ug
Q2xvY2sgcmVhZHkKPj4gKwkgKi8KPj4gKwlyZWdtYXBfdXBkYXRlX2JpdHMocF9waHktPnN5c3Jl
ZywgTUEzNV9TWVNfUkVHX1VTQlBNSVNDUiwgMHg3LCAoUEhZMFBPUiB8IFBIWTBTVVNQRU5EKSk7
Cj4+ICsJdGltZW91dCA9IGppZmZpZXMgKyBtc2Vjc190b19qaWZmaWVzKDIwMCk7Cj4+ICsJd2hp
bGUgKHRpbWVfYmVmb3JlKGppZmZpZXMsIHRpbWVvdXQpKSB7Cj4+ICsJCXJlZ21hcF9yZWFkKHBf
cGh5LT5zeXNyZWcsIE1BMzVfU1lTX1JFR19VU0JQTUlTQ1IsICZ2YWwpOwo+PiArCQlpZiAodmFs
ICYgUEhZMERFVkNLU1RCKQo+PiArCQkJYnJlYWs7Cj4+ICsJCXVzbGVlcF9yYW5nZSgxMDAwLCAx
NTAwKTsKPj4gKwl9Cj4+ICsKPj4gKwkvKiBtYWtlIFVTQiBQSFkwIGVudGVyIG9wZXJhdGlvbiBt
b2RlICovCj4+ICsJcmVnbWFwX3VwZGF0ZV9iaXRzKHBfcGh5LT5zeXNyZWcsIE1BMzVfU1lTX1JF
R19VU0JQTUlTQ1IsIDB4NywgUEhZMFNVU1BFTkQpOwo+PiArCj4+ICsJLyogbWFrZSBzdXJlIFVT
QiBQSFkgNjAgTUh6IFVUTUkgSW50ZXJmYWNlIENsb2NrIHJlYWR5ICovCj4+ICsJdGltZW91dCA9
IGppZmZpZXMgKyBtc2Vjc190b19qaWZmaWVzKDIwMCk7Cj4+ICsJd2hpbGUgKHRpbWVfYmVmb3Jl
KGppZmZpZXMsIHRpbWVvdXQpKSB7Cj4+ICsJCXJlZ21hcF9yZWFkKHBfcGh5LT5zeXNyZWcsIE1B
MzVfU1lTX1JFR19VU0JQTUlTQ1IsICZ2YWwpOwo+PiArCQlpZiAodmFsICYgUEhZMERFVkNLU1RC
KQo+PiArCQkJcmV0dXJuIDA7Cj4+ICsJCXVzbGVlcF9yYW5nZSgxMDAwLCAxNTAwKTsKPj4gKwl9
Cj4+ICsKPj4gKwlkZXZfZXJyKHBfcGh5LT5kZXYsICJUaW1lZCBvdXQgd2FpdGluZyBmb3IgUEhZ
IHRvIHBvd2VyIG9uXG4iKTsKPj4gKwlyZXQgPSAtRVRJTUVET1VUOwo+PiArCj4+ICsJY2xrX2Rp
c2FibGVfdW5wcmVwYXJlKHBfcGh5LT5jbGspOwo+PiArCXJldHVybiByZXQ7Cj4+ICt9Cj4+ICsK
Pj4gK3N0YXRpYyBpbnQgbWEzNV91c2JfcGh5X3Bvd2VyX29mZihzdHJ1Y3QgcGh5ICpwaHkpCj4+
ICt7Cj4+ICsJc3RydWN0IG1hMzVfdXNiX3BoeSAqcF9waHkgPSBwaHlfZ2V0X2RydmRhdGEocGh5
KTsKPj4gKwo+PiArCWNsa19kaXNhYmxlX3VucHJlcGFyZShwX3BoeS0+Y2xrKTsKPj4gKwlyZXR1
cm4gMDsKPj4gK30KPj4gKwo+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBwaHlfb3BzIG1hMzVfdXNi
X3BoeV9vcHMgPSB7Cj4+ICsJLnBvd2VyX29uID0gbWEzNV91c2JfcGh5X3Bvd2VyX29uLAo+PiAr
CS5wb3dlcl9vZmYgPSBtYTM1X3VzYl9waHlfcG93ZXJfb2ZmLAo+PiArCS5vd25lciA9IFRISVNf
TU9EVUxFLAo+PiArfTsKPj4gKwo+PiArc3RhdGljIGludCBtYTM1X3VzYl9waHlfcHJvYmUoc3Ry
dWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPj4gK3sKPj4gKwlzdHJ1Y3QgcGh5X3Byb3ZpZGVy
ICpwcm92aWRlcjsKPj4gKwlzdHJ1Y3QgbWEzNV91c2JfcGh5ICpwX3BoeTsKPj4gKwljb25zdCBj
aGFyICpjbGtnYXRlOwo+PiArCXN0cnVjdCBwaHkgKnBoeTsKPj4gKwo+PiArCXBfcGh5ID0gZGV2
bV9remFsbG9jKCZwZGV2LT5kZXYsIHNpemVvZigqcF9waHkpLCBHRlBfS0VSTkVMKTsKPj4gKwlp
ZiAoIXBfcGh5KQo+PiArCQlyZXR1cm4gLUVOT01FTTsKPj4gKwo+PiArCXBfcGh5LT5kZXYgPSAm
cGRldi0+ZGV2Owo+PiArCXBsYXRmb3JtX3NldF9kcnZkYXRhKHBkZXYsIHBfcGh5KTsKPj4gKwo+
PiArCXBfcGh5LT5zeXNyZWcgPSBzeXNjb25fcmVnbWFwX2xvb2t1cF9ieV9waGFuZGxlKHBfcGh5
LT5kZXYtPm9mX25vZGUsICJudXZvdG9uLHN5cyIpOwo+PiArCWlmIChJU19FUlIocF9waHktPnN5
c3JlZykpCj4+ICsJCXJldHVybiBkZXZfZXJyX3Byb2JlKCZwZGV2LT5kZXYsIFBUUl9FUlIocF9w
aHktPnN5c3JlZyksCj4+ICsJCQkJICAgICAiRmFpbGVkIHRvIGdldCBTWVMgcmVnaXN0ZXJzXG4i
KTsKPj4gKwo+PiArCS8qIGVuYWJsZSBjbG9jayAqLwo+PiArCW9mX3Byb3BlcnR5X3JlYWRfc3Ry
aW5nKHBfcGh5LT5kZXYtPm9mX25vZGUsICJjbG9jay1lbmFibGUiLCAmY2xrZ2F0ZSk7Cj4gVGhl
cmUgaXMgbm8gc3VjaCBwcm9wZXJ0eS4KCkknbSBzb3JyeSwgSSBmb3Jnb3QgdG8gcmVtb3ZlIHRo
aXMgcGFydC4gSSB3aWxsIHJlbW92ZSBpdCBhbmQgY29ycmVjdCBpdC4KCgoKPj4gKwlwX3BoeS0+
Y2xrID0gZGV2bV9jbGtfZ2V0KHBfcGh5LT5kZXYsIGNsa2dhdGUpOwo+IERvbid0IG1peCBzdHls
ZXMgb2YgdmFyaWFibGVzOiB5b3Ugd2VyZSB1c2luZyBwZGV2LT5kZXYgYnV0IG5vdyBlbnRpcmVs
eQo+IGRpZmZlcmVudC4gU3RpY2sgdG8gcGRldi0+ZGV2LgoKT2theS4gSSB3aWxsIGNvbnNpc3Rl
bnRsecKgIHVzZSBwZGV2LT5kZXZ8LnwKClRoYW5rIHlvdSBmb3IgdGhlIHJlbWluZGVyLgoKCgo+
PiArCWlmIChJU19FUlIocF9waHktPmNsaykpCj4+ICsJCXJldHVybiBkZXZfZXJyX3Byb2JlKCZw
ZGV2LT5kZXYsIFBUUl9FUlIocF9waHktPmNsayksCj4gQW5kIGhlcmUgYWdhaW4gcGRldi0+ZGV2
Li4uIEJyaW5nIHNvbWUgY29uc2lzdGVuY3ksIG5vdCByYW5kb20gY29kaW5nIHN0eWxlLgoKT2th
eS4gSSB3aWxsIGNvbnNpc3RlbnRsecKgIHVzZSBwZGV2LT5kZXZ8LnwKClRoYW5rIHlvdSBmb3Ig
dGhlIHJlbWluZGVyLgoKCgo+PiArCQkJCSAgICAgIkZhaWxlZCB0byBnZXQgdXNiX3BoeSBjbG9j
a1xuIik7Cj4+ICsKPgo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0b2YKCgpCZXN0IHJlZ2FyZHMs
CgpIdWktUGluZyBDaGVuCgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
