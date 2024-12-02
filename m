Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81C04D73612
	for <linux-phy@archiver.kernel.org>; Mon,  2 Dec 2024 10:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uOYS3FGrB0v1hF57WcxlOaCfRoA64ZT+BEj5dnLXDY4=; b=mzOsXpvxGdE0y0
	kbqZrG5LWRsk4b6YvclCd//vsbKLJDPtg3ErUGWReV0B/YutsPPiMFH8w4WdtVK9tLxp0Dy1IRZjx
	WB07QmcYJTGZr9BhHEjai+EnsUq1X0UOoxVrF7FrNUuQ/kCYusLn000GmI+2cQQOi8pEptGq9S/uP
	AI9xUoXEBilmsJkQX5Xxr+6KdgoJ/Um2kD9PwVK9zn9+ZRqsOQkIQW1/eUwpKy/iRHOxyG70QzbqT
	ppZs4KRx6gGGpafV5ef1PaR4JDXn4R50NqEGxF4w/flC0aa9HhNqLgqjg1dJRFiISyDJDUIMXVKQj
	7z5H1UbpULN8E4ZO8klw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI3Od-00000005gQd-19Ic;
	Mon, 02 Dec 2024 10:11:15 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI3OY-00000005gPI-1Ntv
	for linux-phy@lists.infradead.org;
	Mon, 02 Dec 2024 10:11:13 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-434a10588f3so24848265e9.1
        for <linux-phy@lists.infradead.org>; Mon, 02 Dec 2024 02:11:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733134268; x=1733739068; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uALrewd2bf6VCEyNjbilrOuFF8ofT7dZTVrBfsuxsiI=;
        b=Hf+/00dXRs35uAVWwquTHgljyfimXKKm/pJ5kpGe8dwfuTRjkom6vRjl0G51417uWM
         I8sPfTnVhcN3upnH+A/6aUdzPIc6wU51FAW3fiY0EKWyQksclYa8SSvNr3oUHd19cZXv
         HRsGgFu3SJoSr7n7bleCQwTOiIW1ckzDnfNErzJCsRWcEwoXOjpoVr2Fj4w3i2UgaBxc
         bjgqnKSsOAUWEYMMPwK9vC83uNJ9VF9c8ZTcTTlQec7wOG+0v3PYdZcO1xDfSStY7BNs
         W1b+LZ+48//DT+ozX0PKoghnmZMwDLggROwTEm7r7MmTBndK2fo8HMZSOHhXWT8Gczzl
         D6wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733134268; x=1733739068;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uALrewd2bf6VCEyNjbilrOuFF8ofT7dZTVrBfsuxsiI=;
        b=ao0WJZy7I/2kx/WWgndaTLEhYGYf8cWir5OwhLexTN25hEE2GmnS47gDYP/Eafa9kC
         NqICGrtkznIAm/bx2zx+yh2AUvBg4YEEu64Xr70/EJxip7Xkbkx4ANeP1dYgQWdJR8BA
         zVVMtJGroNnxz/FnKsza5uEAXMw1z3//HEjAT4b/y2CU0vltS9PnAZ3ydlpLaA8ssSNl
         MSNdI+5Y1CALOkf3SFc+gRTUimjFFgWwfNtujtG1GV11rv9scB//BbuzY8pytk8jLkTj
         kUZDziyHOkjiF8sWuvozeIeuGL55vS2uv6e7qGI2S7kjHeSDsAhjqh8TizxJWRqI6qDv
         zieQ==
X-Forwarded-Encrypted: i=1; AJvYcCXbM3qdlMDax34JHQh5LFE4X+BBJvm+JL4RD1qOsLwvSdvI9V5soItqdpJ08CkNsJG0nxbePQSHlSI=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywq4oXDDnlZMvjdksQJA2z8H85vzFywjNwaWQIKO3jszJ4bXG/w
	zFvCvKmU2ViBlFInP7FSVNmHrDz7Xb7Na+7+oWcXea4k34SZ8qDsyxtZsCio3SQ=
X-Gm-Gg: ASbGncsefMw+RpCA76FNJm6+1bPh7A4KOBGxBS5QrX3D92bP5UN+cSnR8ELJPp4cf01
	dWjJPlE0jWqUKSOTHDt/28ENhq0oNOJaP32OR9oNzi/Jrozaoq7M2Rh/mEmiUfVpqwc+/p2yfKC
	nccoDxQz3vt+jf7/XXY/hQAbRRm3oJxLmqI1sX2xgZvB97JtBw7rEyGKTtCP/eyzXkp3G8w4xw9
	0RUGwrVb3yCzujHfOZCdemAOEbhlI0HnG//58MUc2DBQkhvzmokEy726w==
X-Google-Smtp-Source: AGHT+IErBHQMNcCywMPgGeLil++jgNC3MB2USHxqD4fnoD5fhsRnNjP8lRK2LV8oHmVsxpRvL8auCQ==
X-Received: by 2002:a05:600c:314a:b0:434:9e63:fb15 with SMTP id 5b1f17b1804b1-434a9dbb864mr173023505e9.1.1733134268229;
        Mon, 02 Dec 2024 02:11:08 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.46])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434aa78c202sm177567155e9.26.2024.12.02.02.11.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Dec 2024 02:11:07 -0800 (PST)
Message-ID: <014a8db6-adcc-4755-8ab5-a15afa1d3f44@tuxon.dev>
Date: Mon, 2 Dec 2024 12:11:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/15] dt-bindings: soc: renesas: renesas,rzg2l-sysc:
 Add #renesas,sysc-signal-cells
Content-Language: en-US
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, magnus.damm@gmail.com,
 gregkh@linuxfoundation.org, yoshihiro.shimoda.uh@renesas.com,
 christophe.jaillet@wanadoo.fr, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-usb@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
 Ulf Hansson <ulf.hansson@linaro.org>
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
 <20241126092050.1825607-2-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdWjzR6vgbr_CfR7r-h1FqWxs1nY0hm274kxFmoHjCtRAA@mail.gmail.com>
 <0bb9f461-c7a2-4db0-9492-c04cc298504d@tuxon.dev>
 <CAMuHMdUuRSJu1c2zJvOc8EGrZy1uYcN0aiUG6T7WShawPmCNJg@mail.gmail.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdUuRSJu1c2zJvOc8EGrZy1uYcN0aiUG6T7WShawPmCNJg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_021110_364922_D6C98458 
X-CRM114-Status: GOOD (  24.62  )
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

SGksIEdlZXJ0LAoKT24gMjkuMTEuMjAyNCAxMDozOCwgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3Rl
Ogo+IEhpIENsYXVkaXUsCj4gCj4gT24gRnJpLCBOb3YgMjksIDIwMjQgYXQgOToyMeKAr0FNIENs
YXVkaXUgQmV6bmVhIDxjbGF1ZGl1LmJlem5lYUB0dXhvbi5kZXY+IHdyb3RlOgo+PiBPbiAyOC4x
MS4yMDI0IDE3OjQ2LCBHZWVydCBVeXR0ZXJob2V2ZW4gd3JvdGU6Cj4+PiBPbiBUdWUsIE5vdiAy
NiwgMjAyNCBhdCAxMDoyMeKAr0FNIENsYXVkaXUgPGNsYXVkaXUuYmV6bmVhQHR1eG9uLmRldj4g
d3JvdGU6Cj4+Pj4gRnJvbTogQ2xhdWRpdSBCZXpuZWEgPGNsYXVkaXUuYmV6bmVhLnVqQGJwLnJl
bmVzYXMuY29tPgo+Pj4+Cj4+Pj4gVGhlIFJaL0czUyBzeXN0ZW0gY29udHJvbGxlciAoU1lTQykg
aGFzIHJlZ2lzdGVycyB0byBjb250cm9sIHNpZ25hbHMgdGhhdAo+Pj4+IGFyZSByb3V0ZWQgdG8g
dmFyaW91cyBJUHMuIFRoZXNlIHNpZ25hbHMgbXVzdCBiZSBjb250cm9sbGVkIGR1cmluZwo+Pj4+
IGNvbmZpZ3VyYXRpb24gb2YgdGhlIHJlc3BlY3RpdmUgSVBzLiBPbmUgc3VjaCBzaWduYWwgaXMg
dGhlIFVTQiBQV1JSRFksCj4+Pj4gd2hpY2ggY29ubmVjdHMgdGhlIFNZU0MgYW5kIHRoZSBVU0Ig
UEhZLiBUaGlzIHNpZ25hbCBtdXN0IHRvIGJlIGNvbnRyb2xsZWQKPj4+PiBiZWZvcmUgYW5kIGFm
dGVyIHRoZSBwb3dlciB0byB0aGUgVVNCIFBIWSBpcyB0dXJuZWQgb2ZmL29uLgo+Pj4+Cj4+Pj4g
T3RoZXIgc2ltaWxhciBzaWduYWxzIGluY2x1ZGUgdGhlIGZvbGxvd2luZyAoYWNjb3JkaW5nIHRv
IHRoZSBSWi9HM1MKPj4+PiBoYXJkd2FyZSBtYW51YWwpOgo+Pj4+Cj4+Pj4gKiBQQ0llOgo+Pj4+
IC0gQUxMT1dfRU5URVJfTDEgc2lnbmFsIGNvbnRyb2xsZWQgdGhyb3VnaCB0aGUgU1lTX1BDSUVf
Q0ZHIHJlZ2lzdGVyCj4+Pj4gLSBQQ0lFX1JTVF9SU01fQiBzaWduYWwgY29udHJvbGxlZCB0aHJv
dWdoIHRoZSBTWVNfUENJRV9SU1RfUlNNX0IKPj4+PiAgIHJlZ2lzdGVyCj4+Pj4gLSBNT0RFX1JY
VEVSTUlOQVRJT04gc2lnbmFsIGNvbnRyb2xsZWQgdGhyb3VnaCBTWVNfUENJRV9QSFkgcmVnaXN0
ZXIKPj4+Pgo+Pj4+ICogU1BJOgo+Pj4+IC0gU0VMX1NQSV9PQ1RBIHNpZ25hbCBjb250cm9sbGVk
IHRocm91Z2ggU1lTX0lQQ09OVF9TRUxfU1BJX09DVEEKPj4+PiAgIHJlZ2lzdGVyCj4+Pj4KPj4+
PiAqIEkyQy9JM0M6Cj4+Pj4gLSBhZl9ieXBhc3MgSTJDIHNpZ25hbHMgY29udHJvbGxlZCB0aHJv
dWdoIFNZU19JMkN4X0NGRyByZWdpc3RlcnMKPj4+PiAgICh4PTAuLjMpCj4+Pj4gLSBhZl9ieXBh
c3MgSTNDIHNpZ25hbCBjb250cm9sbGVkIHRocm91Z2ggU1lTX0kzQ19DRkcgcmVnaXN0ZXIKPj4+
Pgo+Pj4+ICogRXRoZXJuZXQ6Cj4+Pj4gLSBGRUNfR0lHQV9FTkFCTEUgRXRoZXJuZXQgc2lnbmFs
cyBjb250cm9sbGVkIHRocm91Z2ggU1lTX0dFVEh4X0NGRwo+Pj4+ICAgcmVnaXN0ZXJzICh4PTAu
LjEpCj4+Pj4KPj4+PiBBZGQgI3JlbmVzYXMsc3lzYy1zaWduYWwtY2VsbHMgRFQgcHJvcGVydHkg
dG8gYWxsb3cgZGlmZmVyZW50IFNZU0Mgc2lnbmFscwo+Pj4+IGNvbnN1bWVycyB0byBtYW5hZ2Ug
dGhlc2Ugc2lnbmFscy4KPj4+Pgo+Pj4+IFRoZSBnb2FsIGlzIHRvIGVuYWJsZSBjb25zdW1lcnMg
dG8gc3BlY2lmeSB0aGUgcmVxdWlyZWQgYWNjZXNzIGRhdGEgZm9yCj4+Pj4gdGhlc2Ugc2lnbmFs
cyAodGhyb3VnaCBkZXZpY2UgdHJlZSkgYW5kIGxldCB0aGVpciByZXNwZWN0aXZlIGRyaXZlcnMK
Pj4+PiBjb250cm9sIHRoZXNlIHNpZ25hbHMgdmlhIHRoZSBzeXNjb24gcmVnbWFwIHByb3ZpZGVk
IGJ5IHRoZSBzeXN0ZW0KPj4+PiBjb250cm9sbGVyIGRyaXZlci4gRm9yIGV4YW1wbGUsIHRoZSBV
U0IgUEhZIHdpbGwgZGVzY3JpYmUgdGhpcyByZWxhdGlvbgo+Pj4+IHVzaW5nIHRoZSBmb2xsb3dp
bmcgRFQgcHJvcGVydHk6Cj4+Pj4KPj4+PiB1c2IyX3BoeTE6IHVzYi1waHlAMTFlMzAyMDAgewo+
Pj4+ICAgICAgICAgLy8gLi4uCj4+Pj4gICAgICAgICByZW5lc2FzLHN5c2Mtc2lnbmFsID0gPCZz
eXNjIDB4ZDcwIDB4MT47Cj4+Pj4gICAgICAgICAvLyAuLi4KPj4+PiB9Owo+Pj4KPj4+IElJVUlD
LCB0aGUgY29uc3VtZXIgZHJpdmVyIHdpbGwgIGFwcGVhciB0byBjb250cm9sIHRoZSBTWVNDIGJp
dHMKPj4+IGRpcmVjdGx5LCBidXQgZHVlIHRvIHRoZSB1c2Ugb2YgY3VzdG9tIHZhbGlkYXRpbmcg
cmVnbWFwIGFjY2Vzc29ycwo+Pj4gYW5kIHJlZmVyZW5jZSBjb3VudGluZyBpbiB0aGUgU1lTQyBk
cml2ZXIsIHRoaXMgaXMgc2FmZT8KPj4KPj4gSSdtIG5vdCBzdXJlIEkgZnVsbHkgdW5kZXJzdGFu
ZCB0aGUgc2FmZXR5IGNvbmNlcm4uCj4gCj4gU29ycnkgZm9yIG15IGJhZCBleHByZXNzaW9uLCB0
aGlzIHdhcyBtb3JlIGxpa2UgYSByaGV0b3JpY2FsIHF1ZXN0aW9uLgo+IEkgbWVhbnQgdGhhdCBp
dCBpcyBzYWZlIGJlY2F1c2U6Cj4gICAxLiBDb25zdW1lcnMgY2Fubm90IHBlcmZvcm0gYXJiaXRy
YXJ5IHJlZ2lzdGVyIGFjY2Vzc2VzLAo+ICAgMi4gVGhlIHJlZmVyZW5jZSBjb3VudGluZyBndWFy
YW50ZWVzIGNvcnJlY3Qgb3BlcmF0aW9uLCBkZXNwaXRlCj4gICAgICAgYm90aCB1c2ItcGh5IG5v
ZGVzIHVzaW5nIHRoZSBzYW1lIHJlbmVzYXMsc3lzYy1zaWduYWwuCj4gCj4gU28gZXZlcnl0aGlu
ZyBpcyBmaW5lLgo+IAo+Pj4gVGhlIGV4dHJhIHNhZmV0eSByZXF1aXJlcyBkdXBsaWNhdGluZyB0
aGUgcmVnaXN0ZXIgYml0cyBpbiBib3RoIERUCj4+PiBhbmQgdGhlIFNZU0MgZHJpdmVyLgo+Pgo+
PiBPbmUgb3RoZXIgb3B0aW9uIEkgc2F3IHdhcyB0byBoYXZlIGNvbW1vbiBkZWZpbmVzIGZvciBy
ZWdpc3RlcnMgdGhhdCBjb3VsZAo+PiBoYXZlIGJlZW4gc2hhcmVkIGIvdyBkcml2ZXIgYW5kIERU
U2VzLiBCdXQgaXQgbG9va2VkIGJldHRlciB0byBtZSB0aGUgd2F5Cj4+IGl0IGhhcyBiZWVuIHBy
ZXNlbnRlZCBpbiB0aGlzIHNlcmllcy4KPj4KPj4+IEJvdGggdXNiLXBoeSBub2RlcyBvbiBSWkcz
UyB1c2UgdGhlIHNhbWUgcmVuZXNhcyxzeXNjLXNpZ25hbCwgc28gdGhlCj4+PiByZWZlcmVuY2Ug
Y291bnRpbmcgaXMgaW5kZWVkIG5lZWRlZC4gIFRoZXkgYXJlIGluIGRpZmZlcmVudCBwb3dlcgo+
Pj4gZG9tYWlucywgY291bGQgdGhhdCBiZSBhbiBpc3N1ZSB3LnIudC4gb3JkZXJpbmc/Cj4+Cj4+
IEluIGNoYXB0ZXIgIjMyLjQuMi4xIFVTQi9QSFkgcmVsYXRlZCBwaW5zIiwgc2VjdGlvbiAiV2hl
biBlaXRoZXIgUG9ydDEgb3IKPj4gUG9ydDIgaXMgdW51c2VkIiBvZiB0aGUgUlovRzNTIEhXIG1h
bnVhbCBpdCBpcyBtZW50aW9uZWQgIlNpbmNlIFVTQl9WREQxOCAvCj4+IFVTQl9WREQzMyBhcmUg
Y29tbW9uIHRvIDIgUG9ydCBQSFksIGl0IGlzIG5lY2Vzc2FyeSB0byBzdXBwbHkgcG93ZXIgZXZl
bgo+PiB3aGVuIG9uZSBvZiB0aGUKPj4gIHBvcnRzIGlzIG5vdCBpbiB1c2UiLgo+IAo+IERvZXMg
dGhhdCBtZWFuIHlvdSBoYXZlIHRvIHBvd2VyIHRoZSBvdGhlciBQSFkgb24gdGhyb3VnaCB0aGUK
PiBDUEdfQlVTX1BFUklfQ09NX01TVE9QIHJlZ2lzdGVyLCB0b28/CgpJIGRvbid0IGtub3cgYXQg
dGhlIG1vbWVudCBpZiB0aGVyZSBpcyBoYXJkIHJlcXVpcmVtZW50IGIvdyBVU0IgUFdSUkRZIGFu
ZAp0aGUgVVNCIFBIWSBDUEcgTVNUT1AgYml0LiBJJ2xsIGhhdmUgdG8gYXNrIGZ1cnRoZXIgaW50
ZXJuYWxseS4KClRoYW5rIHlvdSwKQ2xhdWRpdQoKPiAoSSBrbm93IHlvdSBoYXZlbid0IGFkZGVk
IFI5QTA4RzA0NV9QRF9VU0J4IHRvIHRoZSBVU0Igbm9kZXMgeWV0LAo+ICBhcyAjcG93ZXItZG9t
YWluLWNlbGxzIGlzIHN0aWxsIDApLgo+IAo+PiAoRnJvbSB0aGUgZGlzY3Vzc2lvbnMgdy8gdGhl
IGludGVybmFsIEhXIHRlYW0pIFRoZSBQV1JSRFkgaXMgYW4gKHNvZnR3YXJlCj4+IGNvbnRyb2xs
ZWQpIGluZGljYXRvciB0byB0aGUgVVNCIFBIWSB0aGF0IHBvd2VyIHN1cHBseSBpcyByZWFkeS4K
Pj4KPj4gRnJvbSB0aGF0IGFuZCBbMV0gSSBnZXQgdGhhdCBib3RoIFBIWXMgYXJlIHBvd2VyZWQg
YnkgdGhlIHNhbWUgcmVndWxhdG9ycwo+PiAoVVNCX1ZERDE4L1VTQl9WREQzMykgYW5kIHRoZSBV
U0IgUFdSUkRZIHNpZ25hbCBuZWVkIHRvIGJlIHNldCBiZWZvcmUvYWZ0ZXIKPj4gdGhlIFVTQiBQ
SFkgcG93ZXIgb2ZmL29uLiBCZWNhdXNlIG9mIHRoaXMgSSBjb25zaWRlciB0aGUgb3JkZXIgZG9l
c24ndCBtYXR0ZXIuCj4+Cj4+IFsxXSBodHRwczovL2djZG5iLnBicmQuY28vaW1hZ2VzLzBhMXpZ
QkZaWFpWYi5wbmcKPiAKPiBHcntvZXRqZSxlZXRpbmd9cywKPiAKPiAgICAgICAgICAgICAgICAg
ICAgICAgICBHZWVydAo+IAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
