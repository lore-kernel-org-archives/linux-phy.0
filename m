Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3357FCCA470
	for <linux-phy@archiver.kernel.org>; Thu,  9 Oct 2025 05:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8jR90FCd8H+8EBGjxla7SZz7AKfPuzYGjx5hfAKgyNs=; b=hhjjYes+PJgQyS
	z/jn3zNaKmzLvYayyTv4x+rhJ2k9cmxv3qzoCmVZAi3MrO45UAkVz3vntzF7QRPOtL7/ICFyoxVs1
	KnPT1kJg0GetdnsjQpgOR7vb9xOAPa3fhQwDLOq88PQLRpeWNULfVOxbTC9jzHrrOYG7EX5eQSLDx
	R+tLrgKhJqinUV2dQkh+GCcy8cGnxib+EQrySVD1Nsmf7JmVvZ6/rMQSoqA/aMqONiU20DTbnPXEw
	GOyQSuFAGFyNMqQaY6KSRzqQr9UkZ6O+EgvpJu+4p2hPY2wXejYzSzs7MyLCSGJKkm+o0LolXiBBs
	K4v8B+IDEtiHKrYazlHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6jGt-00000005DPL-3Z60;
	Thu, 09 Oct 2025 05:32:59 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6jGq-00000005DOd-4AJi
	for linux-phy@lists.infradead.org;
	Thu, 09 Oct 2025 05:32:58 +0000
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-27eec33b737so9044205ad.1
        for <linux-phy@lists.infradead.org>; Wed, 08 Oct 2025 22:32:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1759987976; x=1760592776; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ktzba1DKI99kYPMwl1srTlE2mog9+B/vdYobPJ4WgxM=;
        b=O1Pxp+WFlyZUnloyFzQShywE1HotDGiGoy9FFU3W45UAdnz/NCF8FDVth6dCsxHSMw
         E4Eu9MTM63kEbJwrCgxYufg2vigUy8gD5y5afHNOsjyQOjw81txlTfCeM/802EqbeOiU
         UnbULrFo1rmqMOAm2tIPFd4WSm7Po7T8YhnyMayQJi46jyrUkmidZNvs5cHDmUK5DnOl
         YJZtGmqLNgMYIGkuvid2xAEjyf5WK6gZGvuYBQXVltPe0BcOlrATYWIQ3bhbi9nwXHS4
         L3ruc4JzCx9fjYYCThLJe0RLqFPshMd6+hLR0V2eDRCNaU0t9H89ckhdee01QBbtbHa3
         3SsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759987976; x=1760592776;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ktzba1DKI99kYPMwl1srTlE2mog9+B/vdYobPJ4WgxM=;
        b=w/20TExtiOskRSV5rmM1zyS6ZqIdw6zT4l6LNIuI+hstYzY6xslbbX1dZs8OEVStYt
         fh7fxzugVn0i/4r7bkHLUz37ApwydVOobSL7bDgsty6wSV7hDsWItcRL6KCJnbMV/bVO
         PxDG6GKS9YXHf/x4h4+4jCC7fJajvrRLQMdQBQlNt9rq+giS3075/kovIIykJsEXUklW
         wtXcY/PAN2mEbDtxV3O9f2Fl1hc/DAOTfkMYjRGoewjZFCmEnAUuvl0tirGevVkDB8zI
         dTBTZeOIMW4d/jfgjvUTScnAex0W0CESGsH5T/KYvCC86h2kat+qIz9TSSV9ArswUITS
         oGaA==
X-Forwarded-Encrypted: i=1; AJvYcCVW6Q64HuC4je/8J2OQ4stKhVTSUrLTwWDiT6EjPlQlbCHjAIPd6vd17R18fpPGaNDLWL2C4dcMGWA=@lists.infradead.org
X-Gm-Message-State: AOJu0YzMgMs2BCxQU+0C59w99q3WrRGd7lXH8ZkSytMJnnH+MnxbcruL
	SahxgyNkQ6iSfuMBIUjBw8qkMbSH2kJeB32gTyE+ek6r2dJfeCynzcMgRVKOuatR3PuEXrVUuPV
	C39yjv51642kE989znu+95gtrPYUJ1gYv8HoctxXu
X-Gm-Gg: ASbGncveDl15GQSFFqtGEYSU+W0UMTsIV/5ktc34EmGWirjNA4zWal1WLrCtfGG+SDv
	nG21eEjUYkOqYsHNygLbaWTA3m06mZpBKDZ+CeIK67Xk6obIYUQMRURENXK36NAC5ocbslBqoSO
	Hs025NPBxLr6i6yAAvc2uWZL/ZJ24kvD1LFJWFXthuhTCopgkCK0jYpe+0/f0JkTMy76TFpfOxF
	t5Wv1lbW3RJ3CPzhWXMJh79TjaoYPkE1ukbTgnSD+48RJNHx5AVsWh1Q45AsHHrOvhxegS2As6W
	G6hpnA==
X-Google-Smtp-Source: AGHT+IESVUNCkk4qmxVAx9LJph/+dlWojTCH2hUrbcfDKEG7HjEaHHrdoMtO6Rsw83EBp0EQAopUJwb8ZBCKUnW4eIk=
X-Received: by 2002:a17:903:3c30:b0:270:ea84:324a with SMTP id
 d9443c01a7336-290272c1898mr84726695ad.38.1759987975870; Wed, 08 Oct 2025
 22:32:55 -0700 (PDT)
MIME-Version: 1.0
References: <20251008060000.3136021-1-royluo@google.com> <20251008060000.3136021-4-royluo@google.com>
 <fa743412-d9f1-43fd-95e8-3b2a58cd6c25@kernel.org>
In-Reply-To: <fa743412-d9f1-43fd-95e8-3b2a58cd6c25@kernel.org>
From: Roy Luo <royluo@google.com>
Date: Wed, 8 Oct 2025 22:32:19 -0700
X-Gm-Features: AS18NWBygRM42KHUCeYjOx9jxiQbWPiyFalWSXt9KQT6EVktBFe8TaXkrSn7-PI
Message-ID: <CA+zupgyjkyr-zfnecvL5i572q-S2BPSz9w-ue+OmyGoj7EtW_A@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] dt-bindings: phy: google: Add Google Tensor G5 USB PHY
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
X-CRM114-CacheID: sfid-20251008_223257_038872_BB53F812 
X-CRM114-Status: GOOD (  28.23  )
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

T24gV2VkLCBPY3QgOCwgMjAyNSBhdCA0OjU44oCvUE0gS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6
a0BrZXJuZWwub3JnPiB3cm90ZToKPgo+IE9uIDA4LzEwLzIwMjUgMTQ6NTksIFJveSBMdW8gd3Jv
dGU6Cj4gPiBEb2N1bWVudCB0aGUgZGV2aWNlIHRyZWUgYmluZGluZ3MgZm9yIHRoZSBVU0IgUEhZ
IGludGVyZmFjZXMgaW50ZWdyYXRlZAo+ID4gd2l0aCB0aGUgRFdDMyBjb250cm9sbGVyIG9uIEdv
b2dsZSBUZW5zb3IgU29Dcywgc3RhcnRpbmcgd2l0aCBHNQo+ID4gZ2VuZXJhdGlvbi4KPiA+Cj4g
PiBEdWUgdG8gYSBjb21wbGV0ZSBhcmNoaXRlY3R1cmFsIG92ZXJoYXVsIGluIHRoZSBHb29nbGUg
VGVuc29yIEc1LCB0aGUKPiA+IGV4aXN0aW5nIFNhbXN1bmcvRXh5bm9zIFVTQiBQSFkgZHJpdmVy
IGFuZCBiaW5kaW5nIGZvciBvbGRlciBnZW5lcmF0aW9ucwo+ID4gb2YgR29vZ2xlIHNpbGljb25z
IHN1Y2ggYXMgZ3MxMDEgYXJlIG5vIGxvbmdlciBjb21wYXRpYmxlLgo+ID4KPiA+IFRoZSBVU0Ig
UEhZIG9uIFRlbnNvciBHNSBpbmNsdWRlcyB0d28gaW50ZWdyYXRlZCBTeW5vcHN5cyBQSFkgSVBz
OiB0aGUKPiA+IGVVU0IgMi4wIFBIWSBJUCBhbmQgdGhlIFVTQiAzLjIvRGlzcGxheVBvcnQgY29t
Ym8gUEhZIElQLiBDdXJyZW50bHkgb25seQo+ID4gVVNCIGhpZ2gtc3BlZWQgaXMgZGVzY3JpYmVk
IGFuZCBzdXBwb3J0ZWQuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogUm95IEx1byA8cm95bHVvQGdv
b2dsZS5jb20+Cj4gPiAtLS0KPiA+ICAuLi4vYmluZGluZ3MvcGh5L2dvb2dsZSxncy11c2ItcGh5
LnlhbWwgICAgICAgfCA5NiArKysrKysrKysrKysrKysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQs
IDk2IGluc2VydGlvbnMoKykKPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9nb29nbGUsZ3MtdXNiLXBoeS55YW1sCj4gPgo+ID4gZGlm
ZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvZ29vZ2xlLGdz
LXVzYi1waHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvZ29v
Z2xlLGdzLXVzYi1waHkueWFtbAo+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+IGluZGV4IDAw
MDAwMDAwMDAwMC4uMjI5NjFlMmRhNmVmCj4gPiAtLS0gL2Rldi9udWxsCj4gPiArKysgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2dvb2dsZSxncy11c2ItcGh5LnlhbWwK
PiA+IEBAIC0wLDAgKzEsOTYgQEAKPiA+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BM
LTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkKPiA+ICsjIENvcHlyaWdodCAoQykgMjAyNSwgR29v
Z2xlIExMQwo+ID4gKyVZQU1MIDEuMgo+ID4gKy0tLQo+ID4gKyRpZDogaHR0cDovL2RldmljZXRy
ZWUub3JnL3NjaGVtYXMvcGh5L2dvb2dsZSxncy11c2ItcGh5LnlhbWwjCj4gPiArJHNjaGVtYTog
aHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjCj4gPiArCj4gPiAr
dGl0bGU6IEdvb2dsZSBUZW5zb3IgU2VyaWVzIChHNSspIFVTQiBQSFkKPiA+ICsKPiA+ICttYWlu
dGFpbmVyczoKPiA+ICsgIC0gUm95IEx1byA8cm95bHVvQGdvb2dsZS5jb20+Cj4gPiArCj4gPiAr
ZGVzY3JpcHRpb246IHwKPiA+ICsgIERlc2NyaWJlcyB0aGUgVVNCIFBIWSBpbnRlcmZhY2VzIGlu
dGVncmF0ZWQgd2l0aCB0aGUgRFdDMyBVU0IgY29udHJvbGxlciBvbgo+ID4gKyAgR29vZ2xlIFRl
bnNvciBTb0NzLCBzdGFydGluZyB3aXRoIHRoZSBHNSBnZW5lcmF0aW9uLgo+ID4gKyAgVHdvIHNw
ZWNpZmljIFBIWSBJUHMgZnJvbSBTeW5vcHN5cyBhcmUgaW50ZWdyYXRlZCwgaW5jbHVkaW5nIGVV
U0IgMi4wIFBIWSBJUAo+ID4gKyAgYW5kIFVTQiAzLjIvRGlzcGxheVBvcnQgY29tYm8gUEhZIElQ
Lgo+ID4gKyAgVGhlIGZpcnN0IHBoYW5kbGUgYXJndW1lbnQgd2l0aGluIHRoZSBQSFkgc3BlY2lm
aWVyIGlzIHVzZWQgdG8gaWRlbnRpZnkgdGhlCj4gPiArICBkZXNpcmVkIFBIWS4gVGhlIGN1cnJl
bnRseSBzdXBwb3J0ZWQgdmFsdWUgaXM6Ogo+Cj4gQ3VycmVudGx5IHN1cHBvcnRlZCBhcyBoYXJk
d2FyZSB3aWxsIGNoYW5nZT8gWW91IGRlc2NyaWJlIGhlcmUgaGFyZHdhcmUKPiBPTkxZLgoKSSB3
YW50ZWQgdG8gZXhwbGFpbiB0aGUgUEhZIHNwZWNpZmllciBhcyBJIHNhdyBvdGhlciBiaW5kaW5n
cyBhcmUgYWxzbyBkb2luZyBpdCwKZS5nLiAiRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3BoeS9zYW1zdW5nLHVzYjMtZHJkLXBoeS55YW1sIi4KVGhlb3JldGljYWxseSB0aGUgaGFy
ZHdhcmUgc3VwcG9ydHMgMyBQSFkgaW50ZXJmYWNlczogaGlnaC1zcGVlZCwgc3VwZXItc3BlZWQK
YW5kIERQLCBob3dldmVyLCB0aGUgY29ycmVzcG9uZGluZyBkcml2ZXIgb25seSBzdXBwb3J0cyBo
aWdoLXNwZWVkIGF0IHRoZQptb21lbnQuCkkgY2FuIHN0aWxsIGRvY3VtZW50IGFsbCB0aGUgMyBQ
SFkgaW50ZXJmYWNlcyBhbmQgYXNzaWduIHRoZW0gd2l0aAphIHRoZW9yZXRpY2FsIHNwZWNpZmll
ciB2YWx1ZSBoZXJlIGFzIHRoYXQncyB3aGF0IHRoZSBoYXJkd2FyZSBpcyBjYXBhYmxlIG9mLAph
bmQgdGhlbiBtYWtlIGl0IGNsZWFyIHRoYXQgb25seSBoaWdoLXNwZWVkIGlzIGN1cnJlbnRseSBz
dXBwb3J0ZWQgb24gdGhlIGRyaXZlcgpzaWRlLiBEb2VzIHRoaXMgbWFrZSBzZW5zZSB0byB5b3U/
Cgo+Cj4gPiArICAgIDAgLSBVU0IgaGlnaC1zcGVlZC4KPiA+ICsKPiA+ICtwcm9wZXJ0aWVzOgo+
ID4gKyAgY29tcGF0aWJsZToKPiA+ICsgICAgaXRlbXM6Cj4gPiArICAgICAgLSBlbnVtOgo+ID4g
KyAgICAgICAgICAtIGdvb2dsZSxnczUtdXNiLXBoeQo+ID4gKwo+ID4gKyAgcmVnOgo+ID4gKyAg
ICBtaW5JdGVtczogMwo+ID4gKyAgICBtYXhJdGVtczogMwo+ID4gKwo+ID4gKyAgcmVnLW5hbWVz
Ogo+ID4gKyAgICBpdGVtczoKPiA+ICsgICAgICAtIGNvbnN0OiB1c2IyX2NmZ19jc3IKPiA+ICsg
ICAgICAtIGNvbnN0OiBkcF90b3BfY3NyCj4gPiArICAgICAgLSBjb25zdDogdXNiX3RvcF9jZmdf
Y3NyCj4KPiBEcm9wIGNzcgo+CgpBY2ssIHdpbGwgZml4IGl0IGluIHRoZSBuZXh0IHBhdGNoLgoK
PiA+ICsKPiA+ICsgICIjcGh5LWNlbGxzIjoKPiA+ICsgICAgY29uc3Q6IDEKPiA+ICsKPiA+ICsg
IGNsb2NrczoKPiA+ICsgICAgbWF4SXRlbXM6IDEKPiA+ICsKPiA+ICsgIGNsb2NrLW5hbWVzOgo+
ID4gKyAgICBpdGVtczoKPiA+ICsgICAgICAtIGNvbnN0OiB1c2IyX3BoeV9jbGsKPgo+IERyb3Ag
bmFtZXMsIHBvaW50bGVzcyBmb3Igb25lIGVudHJ5Lgo+CgpBY2ssIHdpbGwgZml4IGl0IGluIHRo
ZSBuZXh0IHBhdGNoLgoKPiA+ICsKPiA+ICsgIHJlc2V0czoKPiA+ICsgICAgbWF4SXRlbXM6IDEK
PiA+ICsKPiA+ICsgIHJlc2V0LW5hbWVzOgo+ID4gKyAgICBpdGVtczoKPiA+ICsgICAgICAtIGNv
bnN0OiB1c2IyX3BoeV9yZXNldAo+Cj4gRHJvcCBuYW1lcywgcG9pbnRsZXNzIGZvciBvbmUgZW50
cnkuCj4KCkFjaywgd2lsbCBmaXggaXQgaW4gdGhlIG5leHQgcGF0Y2guCgo+ID4gKwo+ID4gKyAg
cG93ZXItZG9tYWluczoKPiA+ICsgICAgbWF4SXRlbXM6IDEKPiA+ICsKPiA+ICsgIG9yaWVudGF0
aW9uLXN3aXRjaDoKPiA+ICsgICAgdHlwZTogYm9vbGVhbgo+ID4gKyAgICBkZXNjcmlwdGlvbjoK
PiA+ICsgICAgICBJbmRpY2F0ZXMgdGhlIFBIWSBhcyBhIGhhbmRsZXIgb2YgVVNCIFR5cGUtQyBv
cmllbnRhdGlvbiBjaGFuZ2VzCj4gPiArCj4gPiArcmVxdWlyZWQ6Cj4gPiArICAtIGNvbXBhdGli
bGUKPiA+ICsgIC0gcmVnCj4gPiArICAtIHJlZy1uYW1lcwo+ID4gKyAgLSAiI3BoeS1jZWxscyIK
PiA+ICsgIC0gY2xvY2tzCj4gPiArICAtIGNsb2NrLW5hbWVzCj4gPiArICAtIHJlc2V0cwo+ID4g
KyAgLSByZXNldC1uYW1lcwo+ID4gKwo+ID4gK3VuZXZhbHVhdGVkUHJvcGVydGllczogZmFsc2UK
PiA+ICsKPgo+Cj4gYWRkaXRpb25hbFByb3BzIGluc3RlYWQuIFJlYWQgd3JpdGluZyBzY2hlbWEg
b3IgZXhhbXBsZSBzY2hlbWEuCj4KCkFjaywgd2lsbCBmaXggdGhpcyBpbiB0aGUgbmV4dCBwYXRj
aC4KQXBwcmVjaWF0ZSB0aGUgcmV2aWV3IQoKVGhhbmtzLApSb3kgTHVvCgo+Cj4gQmVzdCByZWdh
cmRzLAo+IEtyenlzenRvZgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
