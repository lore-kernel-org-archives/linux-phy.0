Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEC11CCD185
	for <linux-phy@archiver.kernel.org>; Tue, 14 Oct 2025 01:40:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xizoXc6QsrvBWlghxHngpvulamNbUY3yJLfw7Fx/zS8=; b=yo/TuFi7DaWvsx
	GO8/xJdQhpmyek9yTdIEGrfpU+Uuuv1EKF3Mg59ycdVbRzGfiuGVGx4bTDIAyZ9+fjHWgtYPpRC4Y
	jq3A7Rd+y2/D9cL8blnV1eZe+2uwq0moaGR9M5SoMaK3rOf6V2k42QzoJJkgJd+vP9VOwEm/s3MG1
	f72Nhmr5ZCm7jdYXIWhG33+O75a1XTciE12Mu9POuP4EVN5FUG90Np7/eu0BXchijwbMQNttO76yj
	SzTuuArQj6MbYJktIIx1GhmWpRXhtxm6CZdenF+8fq69tu2r/ZzM+yN+MRaQg6yCBcJ+dG4lC0gJi
	Aci7mI8+SZ61AqqCYsnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8U1x-0000000EuZW-1tUT;
	Tue, 14 Oct 2025 01:40:49 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8U1u-0000000EuYl-3tUg
	for linux-phy@lists.infradead.org;
	Tue, 14 Oct 2025 01:40:48 +0000
Received: by mail-pg1-x531.google.com with SMTP id 41be03b00d2f7-b609a32a9b6so2837444a12.2
        for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 18:40:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1760406045; x=1761010845; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z0HrrIP4IFVgvTei6bJGzfuFKTrJwkNbVYBJNZOs3MY=;
        b=HodcCrXVDqc6ScNfOtdOxZ6Zmy9/wZI8y/T+SQGDyA9sfbqjMTxOtiCVRJgaSjsFiy
         NcQQ4KXJDBFg+e8DBCpYFQfFE2wOu+2+AxvdHmQk0qyvPLgDNhAEqVaC3IVYJAxFDkR6
         rqST5UAHLukv/cmRKKo+7XRuYGh4obxz4uktq9oNsEoa2v8NwzLe/msyOEQhEQgHJCRW
         m7hmT+PmIUDKgyenZy5zqAc4nYrABr+Oif6NqGtAmcJzgsiJhwxqZ8wVdfQl8t0BtOpH
         o+EoGCYpc7Z9Uu6o4Lw8eUkecpSlg05cO5r0mdSWp0sDEZpHMrIqtq5e+wklm2wEfPpT
         cB4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760406045; x=1761010845;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z0HrrIP4IFVgvTei6bJGzfuFKTrJwkNbVYBJNZOs3MY=;
        b=cK719ksx8xoEjtVZUQbDsm7p06Fd/vyUohfX9OtsXPbKVW3oFVJMToVZJ4bmRPqdWs
         JRO5AmuMoiE+5gDIFCbFbIuUMiEh8u2Mg6jbNAvpFf7cAckkHE1hcHtn0dXM3RPi18CV
         JASdlbH8+4TKOdQiW1Byofzc/LHSkPpvRpOtwc5F9cfAqmMucg8dZ76nAl/eCwK0MHCO
         fHpu6JvLVgCiTx+HRkDY2a1mp5ce6U4iiHmJde7JqYoLWr7LCybyxcCsqevi7b+SwXpq
         MM92gMaY6+hRfaSJBlVDR2qQxLb5jM3mC0HvP3ax0HLADM9RifrquzYhDzjJbxnPkXf6
         hqlg==
X-Forwarded-Encrypted: i=1; AJvYcCUdmweSPsH2xQKI2pZ/6cEAxvWtZMR3HOVzPzD/IAubhqhcUH+Nbq5dzRrUjpvdLAkObQ5ZKP1jjvE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw1ewsaEP/JIT+CgHtlxAaKwWobrWYN5dKI2H0eeb77KnxSBU58
	ZYmWKe98LHyU21UQu3T9VDVaP/bK3YIRTBDdQJLhFBTZEnu5EIf6AU6lqguYGUUeaDe3dufec2m
	m5MkfCOjhjPbSCwqNlGDerB3JTkClhoT06DrXt3Fr
X-Gm-Gg: ASbGncutSio7flHPZ1T+Seli/MAV52q1r2x/DRQjVyRYX6rWhiAsXLNcxb+NUntY3Ct
	YqE4/f5l1bs8jruVWEu28T1gSrgzUeoQ2+nyfh6r3FbpzhYPFlaAPo+6CBDs1Jpjydr9IbaFzg2
	OxNybh04YYzYEacflupc6c7LGrEjf8BFMSyRk9TGi2RW2Gdz77okI+0YAZ/BTZJCpqQCr694LQY
	bBmVTPjps1Y2jgE1LHWSAoNsX6O2ibmywFGpNG2TcMtuDmQB2klDydF+LARz5RzmK6MfTIMJLDo
X-Google-Smtp-Source: AGHT+IH/gaVhehz3sRp9VrrzaU79D/o/NZJP8CN7/dl/fC68uxDpeqnl6j3qA8EnLxqoVUctH31vKw6FBzQox/YYs6w=
X-Received: by 2002:a17:903:2408:b0:28e:7fce:667e with SMTP id
 d9443c01a7336-2902723f51emr324260245ad.17.1760406045183; Mon, 13 Oct 2025
 18:40:45 -0700 (PDT)
MIME-Version: 1.0
References: <20251010201607.1190967-1-royluo@google.com> <20251010201607.1190967-2-royluo@google.com>
 <066a9598-ad30-4327-be68-87299bba6fda@kernel.org>
In-Reply-To: <066a9598-ad30-4327-be68-87299bba6fda@kernel.org>
From: Roy Luo <royluo@google.com>
Date: Mon, 13 Oct 2025 18:40:08 -0700
X-Gm-Features: AS18NWCf063mHzWv1lf5a6FraaWgtqWiANzRpv6KaU2cy8h_cSvnS3pGamEVoLc
Message-ID: <CA+zupgwc7b51pNRLWRy2CX=n4=FTm=AP7J0dRP2RLjyK5LxGtw@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: usb: dwc3: Add Google Tensor G5 DWC3
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Peter Griffin <peter.griffin@linaro.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>, Badhri Jagan Sridharan <badhri@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_184046_994750_25E05027 
X-CRM114-Status: GOOD (  26.90  )
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

T24gRnJpLCBPY3QgMTAsIDIwMjUgYXQgNTowOeKAr1BNIEtyenlzenRvZiBLb3psb3dza2kgPGty
emtAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiAxMC8xMC8yMDI1IDIyOjE2LCBSb3kgTHVvIHdy
b3RlOgo+ID4gRG9jdW1lbnQgdGhlIGRldmljZSB0cmVlIGJpbmRpbmdzIGZvciB0aGUgRFdDMyBV
U0IgY29udHJvbGxlciBmb3VuZCBpbgo+ID4gR29vZ2xlIFRlbnNvciBTb0NzLCBzdGFydGluZyB3
aXRoIHRoZSBHNSBnZW5lcmF0aW9uLgo+ID4KPiA+IFRoZSBUZW5zb3IgRzUgc2lsaWNvbiByZXBy
ZXNlbnRzIGEgY29tcGxldGUgYXJjaGl0ZWN0dXJhbCBkZXBhcnR1cmUgZnJvbQo+ID4gcHJldmlv
dXMgZ2VuZXJhdGlvbnMgKGxpa2UgZ3MxMDEpLCBpbmNsdWRpbmcgZW50aXJlbHkgbmV3IGNsb2Nr
L3Jlc2V0Cj4gPiBzY2hlbWVzLCB0b3AtbGV2ZWwgd3JhcHBlciBhbmQgcmVnaXN0ZXIgaW50ZXJm
YWNlLiBDb25zZXF1ZW50bHksCj4gPiBleGlzdGluZyBTYW1zdW5nL0V4eW5vcyBEV0MzIFVTQiBi
aW5kaW5ncyBhcmUgaW5jb21wYXRpYmxlLCBuZWNlc3NpdGF0aW5nCj4gPiB0aGlzIG5ldyBkZXZp
Y2UgdHJlZSBiaW5kaW5nLgo+ID4KPiA+IFRoZSBVU0IgY29udHJvbGxlciBvbiBUZW5zb3IgRzUg
aXMgYmFzZWQgb24gU3lub3BzeXMgRFdDMyBJUCBhbmQgZmVhdHVyZXMKPiA+IER1YWwtUm9sZSBE
ZXZpY2Ugc2luZ2xlIHBvcnQgd2l0aCBoaWJlcm5hdGlvbiBzdXBwb3J0Lgo+Cj4gWW91IHN0aWxs
IG1peCwgY29tcGxldGVseSB1bm5lY2Vzc2FyaWx5LCBzdWJzeXN0ZW1zLiBGb3IgR3JlZyB0aGlz
IGlzCj4gYWN0dWFsbHkgZXZlbiB1bmRlc2lyZWQsIGJ1dCByZWdhcmRsZXNzIGRvbid0IGRvIHRo
aXMgZm9yIGFueSBjYXNlcwo+IGJlY2F1c2UgaXQganVzdCBtYWtlcyBldmVyeXRoaW5nIHNsb3dl
ciBvciBtb3JlIGRpZmZpY3VsdCB0byBhcHBseS4KPgo+IFJlYWxseSwgdGhpbmsgaG93IG1haW50
YWluZXJzIHNob3VsZCBkZWFsIHdpdGggeW91ciBwYXRjaGVzLgo+CgpVbmRlcnN0b29kLCBJIHdp
bGwgc2VwYXJhdGUgdGhlIHBhdGNoZXMgaW50byB0d28gZGlzdGluY3Qgc2VyaWVzOiBvbmUgZm9y
CnRoZSBjb250cm9sbGVyIGFuZCBvbmUgZm9yIHRoZSBQSFkuCkFwcHJlY2lhdGUgdGhlIGZlZWRi
YWNrIGFuZCB0aGUgZXhwbGFuYXRpb24uCgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFJveSBMdW8g
PHJveWx1b0Bnb29nbGUuY29tPgo+ID4gLS0tCj4gPiAgLi4uL2JpbmRpbmdzL3VzYi9nb29nbGUs
Z3M1LWR3YzMueWFtbCAgICAgICAgIHwgMTQxICsrKysrKysrKysrKysrKysrKwo+ID4gIDEgZmls
ZSBjaGFuZ2VkLCAxNDEgaW5zZXJ0aW9ucygrKQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL2dvb2dsZSxnczUtZHdjMy55YW1sCj4g
Pgo+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2Iv
Z29vZ2xlLGdzNS1kd2MzLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
dXNiL2dvb2dsZSxnczUtZHdjMy55YW1sCj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gaW5k
ZXggMDAwMDAwMDAwMDAwLi42ZmFkZWE3ZjQxZTgKPiA+IC0tLSAvZGV2L251bGwKPiA+ICsrKyBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvZ29vZ2xlLGdzNS1kd2MzLnlh
bWwKPiA+IEBAIC0wLDAgKzEsMTQxIEBACj4gPiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
KEdQTC0yLjAgT1IgQlNELTItQ2xhdXNlKQo+ID4gKyMgQ29weXJpZ2h0IChjKSAyMDI1LCBHb29n
bGUgTExDCj4gPiArJVlBTUwgMS4yCj4gPiArLS0tCj4gPiArJGlkOiBodHRwOi8vZGV2aWNldHJl
ZS5vcmcvc2NoZW1hcy91c2IvZ29vZ2xlLGdzNS1kd2MzLnlhbWwjCj4gPiArJHNjaGVtYTogaHR0
cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjCj4gPiArCj4gPiArdGl0
bGU6IEdvb2dsZSBUZW5zb3IgU2VyaWVzIChHNSspIERXQzMgVVNCIFNvQyBDb250cm9sbGVyCj4g
PiArCj4gPiArbWFpbnRhaW5lcnM6Cj4gPiArICAtIFJveSBMdW8gPHJveWx1b0Bnb29nbGUuY29t
Pgo+ID4gKwo+ID4gK2Rlc2NyaXB0aW9uOgo+ID4gKyAgRGVzY3JpYmVzIHRoZSBEV0MzIFVTQiBj
b250cm9sbGVyIGJsb2NrIGltcGxlbWVudGVkIG9uIEdvb2dsZSBUZW5zb3IgU29DcywKPiA+ICsg
IHN0YXJ0aW5nIHdpdGggdGhlIEc1IGdlbmVyYXRpb24uIEJhc2VkIG9uIFN5bm9wc3lzIERXQzMg
SVAsIHRoZSBjb250cm9sbGVyCj4gPiArICBmZWF0dXJlcyBEdWFsLVJvbGUgRGV2aWNlIHNpbmds
ZSBwb3J0IHdpdGggaGliZXJuYXRpb24gYWRkLW9uLgo+ID4gKwo+ID4gK3Byb3BlcnRpZXM6Cj4g
PiArICBjb21wYXRpYmxlOgo+ID4gKyAgICBjb25zdDogZ29vZ2xlLGdzNS1kd2MzCj4gPiArCj4g
PiArICByZWc6Cj4gPiArICAgIGl0ZW1zOgo+ID4gKyAgICAgIC0gZGVzY3JpcHRpb246IENvcmUg
RFdDMyBJUCByZWdpc3RlcnMuCj4gPiArICAgICAgLSBkZXNjcmlwdGlvbjogVVNCIGhvc3QgY29u
dHJvbGxlciBjb25maWd1cmF0aW9uIHJlZ2lzdGVycy4KPiA+ICsgICAgICAtIGRlc2NyaXB0aW9u
OiBVU0IgY3VzdG9tIGludGVycnJ1cHRzIGNvbnRyb2wgcmVnaXN0ZXJzLgo+ID4gKwo+ID4gKyAg
cmVnLW5hbWVzOgo+ID4gKyAgICBpdGVtczoKPiA+ICsgICAgICAtIGNvbnN0OiBkd2MzX2NvcmUK
PiA+ICsgICAgICAtIGNvbnN0OiBob3N0X2NmZwo+ID4gKyAgICAgIC0gY29uc3Q6IHVzYmludF9j
ZmcKPiA+ICsKPiA+ICsgIGludGVycnVwdHM6Cj4gPiArICAgIGl0ZW1zOgo+ID4gKyAgICAgIC0g
ZGVzY3JpcHRpb246IENvcmUgRFdDMyBpbnRlcnJ1cHQuCj4gPiArICAgICAgLSBkZXNjcmlwdGlv
bjogSGlnaCBzcGVlZCBwb3dlciBtYW5hZ2VtZW50IGV2ZW50IGZvciByZW1vdGUgd2FrZXVwIGZy
b20gaGliZXJuYXRpb24uCj4gPiArICAgICAgLSBkZXNjcmlwdGlvbjogU3VwZXIgc3BlZWQgcG93
ZXIgbWFuYWdlbWVudCBldmVudCBmb3IgcmVtb3RlIHdha2V1cCBmcm9tIGhpYmVybmF0aW9uLgo+
Cj4gV3JhcCBhdCA4MCAoc2VlIGNvZGluZyBzdHlsZSkgb3IganVzdCBzaG9ydGVuIHRoZXNlLgoK
QWNrLCB3aWxsIGZpeCBpdCBpbiB0aGUgbmV4dCBwYXRjaC4KCj4KPiA+ICsKPiA+ICsgIGludGVy
cnVwdC1uYW1lczoKPiA+ICsgICAgaXRlbXM6Cj4gPiArICAgICAgLSBjb25zdDogZHdjX3VzYjMK
Pgo+IFNvIGp1c3QgImNvcmUiPwoKSSdkIHByZWZlciB0byBzdGljayB0byAiZHdjX3VzYjMiIGFz
IHRoYXQncwoxLiBtb3JlIGV4cHJlc3NpdmUgYnkgcmVmZXJyaW5nIHRvIHRoZSB1bmRlcmx5aW5n
IElQIG5hbWUsCjIuIGNvbnNpc3RlbnQgd2l0aCBlc3RhYmxpc2hlZCBkd2MzIGJpbmRpbmdzIHN1
Y2ggYXMKICAgIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2Ivc25wcyxkd2Mz
LnlhbWwsCiAgICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL3Fjb20sc25w
cy1kd2MzLnlhbWwsCnVubGVzcyB5b3UgaGF2ZSBhIHN0cm9uZyBwcmVmZXJlbmNlIGZvciB0aGUg
YWx0ZXJuYXRpdmUgbmFtaW5nLgoKPgo+ID4gKyAgICAgIC0gY29uc3Q6IGhzX3BtZQo+ID4gKyAg
ICAgIC0gY29uc3Q6IHNzX3BtZQo+ID4gKwo+ID4gKyAgY2xvY2tzOgo+ID4gKyAgICBpdGVtczoK
PiA+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBOb24tc3RpY2t5IG1vZHVsZSBjbG9jay4KPiA+ICsg
ICAgICAtIGRlc2NyaXB0aW9uOiBTdGlja3kgbW9kdWxlIGNsb2NrLgo+ID4gKyAgICAgIC0gZGVz
Y3JpcHRpb246IFVTQjIgUEhZIEFQQiBjbG9jay4KPgo+IFRoaXMgbG9va3Mgd3JvbmcuIFRoaXMg
aXMgbm90IHRoZSBVU0IyIHBoeSwgc28gaG93IGNhbiBpdCBjb25zdW1lIEFQQiBjbG9jaz8KClRo
YXQncyBhIGZhaXIgcG9pbnQsIEknbGwgbG9vayBpbnRvIHRoZSBuZWNlc3NpdHkgYW5kIHBsYWNl
bWVudCBvZiB0aGlzIHNwZWNpZmljCmNsay9yZXNldCBhbmQgZ2V0IGJhY2suCgpUaGFua3MsClJv
eSBMdW8KCj4KPiA+ICsKPiA+ICsgIGNsb2NrLW5hbWVzOgo+ID4gKyAgICBpdGVtczoKPiA+ICsg
ICAgICAtIGNvbnN0OiBub25fc3RpY2t5Cj4gPiArICAgICAgLSBjb25zdDogc3RpY2t5Cj4gPiAr
ICAgICAgLSBjb25zdDogdTJwaHlfYXBiCj4gPiArCj4gPiArICByZXNldHM6Cj4gPiArICAgIGl0
ZW1zOgo+ID4gKyAgICAgIC0gZGVzY3JpcHRpb246IE5vbi1zdGlja3kgbW9kdWxlIHJlc2V0Lgo+
ID4gKyAgICAgIC0gZGVzY3JpcHRpb246IFN0aWNreSBtb2R1bGUgcmVzZXQuCj4gPiArICAgICAg
LSBkZXNjcmlwdGlvbjogVVNCMiBQSFkgQVBCIHJlc2V0Lgo+Cj4gVGhpcyBhcyB3ZWxsLgo+Cj4g
PiArICAgICAgLSBkZXNjcmlwdGlvbjogRFJEIGJ1cyByZXNldC4KPiA+ICsgICAgICAtIGRlc2Ny
aXB0aW9uOiBUb3AtbGV2ZWwgcmVzZXQuCj4gPiArCj4gPiArICByZXNldC1uYW1lczoKPiA+ICsg
ICAgaXRlbXM6Cj4gPiArICAgICAgLSBjb25zdDogbm9uX3N0aWNreQo+ID4gKyAgICAgIC0gY29u
c3Q6IHN0aWNreQo+ID4gKyAgICAgIC0gY29uc3Q6IHUycGh5X2FwYgo+ID4gKyAgICAgIC0gY29u
c3Q6IGRyZF9idXMKPiA+ICsgICAgICAtIGNvbnN0OiB0b3AKPgo+Cj4gQmVzdCByZWdhcmRzLAo+
IEtyenlzenRvZgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
