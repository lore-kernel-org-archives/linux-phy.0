Return-Path: <SRS0=qg3g=IG=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3E602C4321A
	for <linux-phy@archiver.kernel.org>; Mon,  8 Mar 2021 06:09:25 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CC853651EE
	for <linux-phy@archiver.kernel.org>; Mon,  8 Mar 2021 06:09:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CC853651EE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=x9FsprQNnSaYDgw3JanKfkiWjZ/2TIjetSH14JWAdLw=; b=WLASAszepNp0S6F+a7bO/eTiz
	9NQhGr6rSuuTA1W5kxmH7PmsCs5tD0Yp4k38GgHmUHtlEe4P3uQuW3jz6OrvB88sWBlY+UzPZTcRC
	j3k4pAkVNaaWkn3ZyzKEXcJPkMckWNW74zYb+OsWCXNbY9st3LvfKwemxpXPlaCk67sUVMom87d5Z
	VpFFlEdeagEh/y3kjsELdp33Sdp9vf/k7z3PbEh7n36VGK/T0Tr1NPLzaZ7m+TUHdYN3rWsujpeb/
	fkkk2eD2Y1wkk8eJnuwtmYRb7Y7UOaTK0k+R6XhM2upzzj10tI06oEP+SW8HCxgnO9feJJv68MhOx
	Jrb+meDyw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJ951-00FQSx-0p; Mon, 08 Mar 2021 06:09:23 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lIEBx-00Fm8W-MY
 for linux-phy@lists.infradead.org; Fri, 05 Mar 2021 17:24:48 +0000
Received: by mail-lj1-x22b.google.com with SMTP id u4so3741447ljh.6
 for <linux-phy@lists.infradead.org>; Fri, 05 Mar 2021 09:24:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Pt5Fsxp0IRUkNaNAFLem7HhTN4BRWv6ct+2aPx9+/kU=;
 b=ps1aJHWQFQUyxlHJzFrc6WxtaEaAIuvWPaYvqXYVrqejqb6O9MiKdjwqggav/bmnOT
 tncYxvoKHq7TwI8FjT77KULPgl8TAT8UTpQuJYyRVYuCwEd9/voHidcsav6ce/wUSVG7
 scJX/TCq7VEs6iw5+gnuPj6fhOWS+ttPdALEcH+QEqVaXqByugWOi9H1Ol1dXOjSqp2v
 jlA5hzkt53UsxXkszb6fyo/Rvhg3WhphcfeVfAMA/44lhHmrvqo91Lp8fpI+gMmQX1dd
 dCDTDUpmvk2LMEBkzosdGlcGDkh0MIO/wUewXkT1OliHlVAAwydrRrphlNooqzx1kepi
 umXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Pt5Fsxp0IRUkNaNAFLem7HhTN4BRWv6ct+2aPx9+/kU=;
 b=dxHBRq0HqBdT8X38zWRqrJ9CXfk5BrmoFuKaZzi9876I4Jm5C1xR69uGUTnD/A3Tl4
 8eyhzYRsMs7P1Sbwu1/in1u70SrPM9vFHY1Q+T3yprWPIf1BZ6kzaWE/n4SLd1NbmUaV
 Zan6tsrIpu/u6QDj3hjwkWwUUWOMI6k+LMfOoekEU2RnUb82mv/JZJK3mG5IcYgSzOGd
 8rrUro4Zg3typQmDVDZ7N7Wo9Hyi5xHX6FPZ4JenNHQzLySTnCtUW0b4zkDB5eUFcsXh
 ND9q2+PHrM0euSiy5NNGb5bkMaUFF52eCzFKvOmumLi2Hv/EMml2FXDosAnjGOqqKk1w
 tz/w==
X-Gm-Message-State: AOAM533J0vin7XKzBwAF9pt7bwNysXRvWntyVQgIyGTWxkw15Xj8qqp8
 /DdLf+7DX4VJvKCvWypM/hwvRkVw6w8=
X-Google-Smtp-Source: ABdhPJy52v8QLwBwOXbsDWsPiK8hDKV4i5BPmIaBHEb5tLDGbHNuN3FAjyTvre3sNUIRpAy2IFGUWg==
X-Received: by 2002:a2e:9f54:: with SMTP id v20mr5858459ljk.261.1614965076589; 
 Fri, 05 Mar 2021 09:24:36 -0800 (PST)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.googlemail.com with ESMTPSA id t16sm383752ljj.137.2021.03.05.09.24.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 05 Mar 2021 09:24:36 -0800 (PST)
Subject: Re: [PATCH 1/3] dt-bindings: phy: convert Broadcom NS USB 2.0 to the
 json-schema
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Vivek Unune
 <npcomplete13@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 linux-phy@lists.infradead.org
References: <20210226114501.31086-1-zajec5@gmail.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <68de69c3-cf66-2d72-70be-2751963809e8@gmail.com>
Date: Fri, 5 Mar 2021 18:24:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210226114501.31086-1-zajec5@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_172446_176347_0FD8CB40 
X-CRM114-Status: GOOD (  21.72  )
X-Mailman-Approved-At: Mon, 08 Mar 2021 06:09:18 +0000
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

Q2MgbGludXgtcGh5QAoKT24gMjYuMDIuMjAyMSAxMjo0NCwgUmFmYcWCIE1pxYJlY2tpIHdyb3Rl
Ogo+IEZyb206IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KPiAKPiBNaW5vciBl
eGFtcGxlIGZpeGVzOgo+IDEuIEluY2x1ZGUgYmNtLW5zcC5oCj4gMi4gQWRkIGFkZHJlc3MgdG8g
dGhlIG5vZGUgbmFtZQo+IAo+IFNpZ25lZC1vZmYtYnk6IFJhZmHFgiBNacWCZWNraSA8cmFmYWxA
bWlsZWNraS5wbD4KPiAtLS0KPiBUaGlzIGhhcyBiZWVuIHZlcmlmaWVkIHVzaW5nIGR0X2JpbmRp
bmdfY2hlY2sKPiAtLS0KPiAgIC4uLi9iaW5kaW5ncy9waHkvYmNtLW5zLXVzYjItcGh5LnR4dCAg
ICAgICAgICB8IDIxIC0tLS0tLS0KPiAgIC4uLi9iaW5kaW5ncy9waHkvYnJjbSxucy11c2IyLXBo
eS55YW1sICAgICAgICB8IDU1ICsrKysrKysrKysrKysrKysrKysKPiAgIDIgZmlsZXMgY2hhbmdl
ZCwgNTUgaW5zZXJ0aW9ucygrKSwgMjEgZGVsZXRpb25zKC0pCj4gICBkZWxldGUgbW9kZSAxMDA2
NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9iY20tbnMtdXNiMi1waHku
dHh0Cj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3BoeS9icmNtLG5zLXVzYjItcGh5LnlhbWwKPiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9iY20tbnMtdXNiMi1waHkudHh0IGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9iY20tbnMtdXNiMi1waHkudHh0Cj4gZGVs
ZXRlZCBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggYTdhZWU5ZWE4OTI2Li4wMDAwMDAwMDAwMDAK
PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2JjbS1ucy11c2Iy
LXBoeS50eHQKPiArKysgL2Rldi9udWxsCj4gQEAgLTEsMjEgKzAsMCBAQAo+IC1Ecml2ZXIgZm9y
IEJyb2FkY29tIE5vcnRoc3RhciBVU0IgMi4wIFBIWQo+IC0KPiAtUmVxdWlyZWQgcHJvcGVydGll
czoKPiAtLSBjb21wYXRpYmxlOiBicmNtLG5zLXVzYjItcGh5Cj4gLS0gcmVnOiBpb21lbSBhZGRy
ZXNzIHJhbmdlIG9mIERNVSAoRGV2aWNlIE1hbmFnZW1lbnQgVW5pdCkKPiAtLSByZWctbmFtZXM6
ICJkbXUiLCB0aGUgb25seSBuZWVkZWQgJiBzdXBwb3J0ZWQgcmVnIHJpZ2h0IG5vdwo+IC0tIGNs
b2NrczogVVNCIFBIWSByZWZlcmVuY2UgY2xvY2sKPiAtLSBjbG9jay1uYW1lczogInBoeS1yZWYt
Y2xrIiwgdGhlIG9ubHkgbmVlZGVkICYgc3VwcG9ydGVkIGNsb2NrIHJpZ2h0IG5vdwo+IC0KPiAt
VG8gaW5pdGlhbGl6ZSBVU0IgMi4wIFBIWSBkcml2ZXIgbmVlZHMgdG8gc2V0dXAgUExMIGNvcnJl
Y3RseS4gVG8gZG8gdGhpcyBpdAo+IC1yZXF1aXJlcyBwYXNzaW5nIHBoYW5kbGUgdG8gdGhlIFVT
QiBQSFkgcmVmZXJlbmNlIGNsb2NrLgo+IC0KPiAtRXhhbXBsZToKPiAtCXVzYjItcGh5IHsKPiAt
CQljb21wYXRpYmxlID0gImJyY20sbnMtdXNiMi1waHkiOwo+IC0JCXJlZyA9IDwweDE4MDBjMDAw
IDB4MTAwMD47Cj4gLQkJcmVnLW5hbWVzID0gImRtdSI7Cj4gLQkJI3BoeS1jZWxscyA9IDwwPjsK
PiAtCQljbG9ja3MgPSA8JmdlbnBsbCBCQ01fTlNQX0dFTlBMTF9VU0JfUEhZX1JFRl9DTEs+Owo+
IC0JCWNsb2NrLW5hbWVzID0gInBoeS1yZWYtY2xrIjsKPiAtCX07Cj4gZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYnJjbSxucy11c2IyLXBoeS55YW1s
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9icmNtLG5zLXVzYjItcGh5
LnlhbWwKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uYjhiNjgz
Y2U4ZmE5Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9waHkvYnJjbSxucy11c2IyLXBoeS55YW1sCj4gQEAgLTAsMCArMSw1NSBAQAo+ICsj
IFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkgT1IgQlNELTItQ2xhdXNlCj4g
KyVZQU1MIDEuMgo+ICstLS0KPiArJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9w
aHkvYnJjbSxucy11c2IyLXBoeS55YW1sIwo+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5v
cmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKPiArCj4gK3RpdGxlOiBCcm9hZGNvbSBOb3J0aHN0
YXIgVVNCIDIuMCBQSFkKPiArCj4gK2Rlc2NyaXB0aW9uOiBCcm9hZGNvbSdzIFVTQiAyLjAgUEhZ
IGludGVncmF0ZWQgaW50byBOb3J0aHN0YXIgZmFtaWx5IFNvQ3MKPiArCj4gK21haW50YWluZXJz
Ogo+ICsgIC0gUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgo+ICsKPiArcHJvcGVy
dGllczoKPiArICBjb21wYXRpYmxlOgo+ICsgICAgY29uc3Q6IGJyY20sbnMtdXNiMi1waHkKPiAr
Cj4gKyAgcmVnOgo+ICsgICAgbWF4SXRlbXM6IDEKPiArICAgIGRlc2NyaXB0aW9uOiBETVUgKERl
dmljZSBNYW5hZ2VtZW50IFVuaXQpIGFkZHJlc3MgcmFuZ2UKPiArCj4gKyAgcmVnLW5hbWVzOgo+
ICsgICAgY29uc3Q6IGRtdQo+ICsKPiArICBjbG9ja3M6Cj4gKyAgICBtYXhJdGVtczogMQo+ICsg
ICAgZGVzY3JpcHRpb246IFVTQiBQSFkgcmVmZXJlbmNlIGNsb2NrCj4gKwo+ICsgIGNsb2NrLW5h
bWVzOgo+ICsgICAgY29uc3Q6IHBoeS1yZWYtY2xrCj4gKwo+ICsgICIjcGh5LWNlbGxzIjoKPiAr
ICAgIGNvbnN0OiAwCj4gKwo+ICtyZXF1aXJlZDoKPiArICAtIHJlZwo+ICsgIC0gcmVnLW5hbWVz
Cj4gKyAgLSBjbG9ja3MKPiArICAtIGNsb2NrLW5hbWVzCj4gKyAgLSAiI3BoeS1jZWxscyIKPiAr
Cj4gK2FkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxzZQo+ICsKPiArZXhhbXBsZXM6Cj4gKyAgLSB8
Cj4gKyAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvY2xvY2svYmNtLW5zcC5oPgo+ICsKPiArICAg
IHVzYjItcGh5QDE4MDBjMDAwIHsKPiArICAgICAgICBjb21wYXRpYmxlID0gImJyY20sbnMtdXNi
Mi1waHkiOwo+ICsgICAgICAgIHJlZyA9IDwweDE4MDBjMDAwIDB4MTAwMD47Cj4gKyAgICAgICAg
cmVnLW5hbWVzID0gImRtdSI7Cj4gKyAgICAgICAgY2xvY2tzID0gPCZnZW5wbGwgQkNNX05TUF9H
RU5QTExfVVNCX1BIWV9SRUZfQ0xLPjsKPiArICAgICAgICBjbG9jay1uYW1lcyA9ICJwaHktcmVm
LWNsayI7Cj4gKyAgICAgICAgI3BoeS1jZWxscyA9IDwwPjsKPiArICAgIH07Cj4gCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
