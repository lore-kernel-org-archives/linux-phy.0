Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D355EFD374E
	for <linux-phy@archiver.kernel.org>; Wed, 25 Feb 2026 14:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1isieLJqzszGOJ+YlI+2742SQz1ci/LiXWyWLWcELd4=; b=wEdOTDuHkj8dXt
	R1X15Ap/X387JCsDuF3j+DeWKa+STKwVjB19sxnCkcKCnpn+PPiCbrlJGz5tfLMRUJWsZ40lvR3dh
	RXN7Xg1d3X2eCCux0lM5+cXQzBOVMfHlb0nTaIZKP5vpDHVa+bSDXhMvHbcTwyF/cG5Amnx+oQh9l
	2+XnYrEYfqdHuznpvWRVHddVMif53npinBBizj6/228/QOL/KE22mJ7JraaVWK1pmuOnv7kfqiVa2
	77MgnMU7yYGGz7vlUFY3k+K+E4FA0JGqiNe4yPczHodwpDu94Lyl1Ywig1XJmXuDd3AQuKf5DMej2
	YKX8tm/S5wgRsoQmJrfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvFRj-000000049j5-1qV1;
	Wed, 25 Feb 2026 14:00:59 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvFRf-000000049hg-19fl
	for linux-phy@lists.infradead.org;
	Wed, 25 Feb 2026 14:00:57 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-65a2fea1a1eso1403811a12.0
        for <linux-phy@lists.infradead.org>; Wed, 25 Feb 2026 06:00:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772028053; cv=none;
        d=google.com; s=arc-20240605;
        b=GT/q2vteBERXRE+8JWhNFpgXq4Vvgv2HO1V/JTmE0rJAY6+uiiwKXa0/j0CTDcY6oz
         Oa2yU8m/CNi+8k7mDeETPB63+8tWv9w1wBCteB0TXv/8kWp1NzQTLcZpGZErN0EGAi5s
         VsISGcq/A2Q9C9Ht2p7NLCGh1uHd1/INs5Vbzy+U6PEiib/KOTDzokiuP1FPo8dF8g13
         4wsdaTDyBLf65rIxbs2xW/5TD3w4jUyv/5hXMnJNBqxrEWixQ/rWw9ZoDT89789LlJ0h
         wVBn4C2f68O+07mJo0DrlypGn6yA6QwHvPLgZn2zWp6hPffiKUDabGsANnZkOhKclKaT
         YNpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=LWDapfQMSHQo645PmLjObrtYUkjcF1qIGp665H7E8ZM=;
        fh=qbkE/ErO05C1lfp6RHFOKLW9ItazkSdzsPvYdSQuVNs=;
        b=hcTSfPzEUIskmfcG9au7SWlDGVyQHym03FcLWJHLq7/fCTtVa0ICWnIIRTyLcozinG
         M4LejKVgVYkBgr4bAUCjQHy5rTet7TRe6WBaYWXtK0GnbIUbIMA5VvDtjV0ffEEU7SDL
         t4ZzewhX2IJ8VWug9YjSrLO4PBX3KPZ/tGLbKPQW7WFSAK1EwbJqLBAxk8IkrV94/2zm
         oGX/smsAHm5AvSdTZPEJg4ptgvSuW+2YUMJwCPwv+mKhwo4KOs5hFAqbl8FkFxJYqpQx
         N7Y9b2V9vGxWbZX36vnfBbnt3bFUMdq7Jz+lRTqt39iEAqfohGRvGVO0jlqecYCSysAe
         G82w==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772028053; x=1772632853; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LWDapfQMSHQo645PmLjObrtYUkjcF1qIGp665H7E8ZM=;
        b=HK+5a7UOuQEwr+7mfN7z59fwOw/uBlsUTHVeIWjCx1Ij6IcOqR5ErfI0P1oYlm9ZUA
         ISsj1sqHwBCdjkmSUCgLddHFsA0H+LU1IFQdehTCRwOWU/KCJSIcRs6sXWWK13QS2M1Z
         Idde3DiyeSODHDeCOqR9PaSqf2pHNZiyMCPt92rXthVmao1rIVcWJljNdUtIyN651R+q
         h5GuJxYQ3nx1VZH84WDwTJ3z8qEnKR+/nRvPPWvC/7fdtuWwkJtrnlTan0bCoCHQ+F0G
         8hGapZXwrVV9VUC53G3Ul+YzPgepth5IX7EEbzlxohSi1xHvN3P6Yj3lCCyyngvCnkTh
         +F/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772028053; x=1772632853;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LWDapfQMSHQo645PmLjObrtYUkjcF1qIGp665H7E8ZM=;
        b=rNSIeyg0D3bXDDY5qRYt01fegKL5zI+axZ8C5qATGMg3AxK4JhDlyAzvS4Qfvf6ItY
         dY9BUwiXQFZtiQmCI4yHa8vHq7RetslJ8RrVcSNjwVvWnZTuT6Nlk3QoEEtr0rO9FQ5z
         h5iKrRHiP+s96bmwKwKGuSxJcX53pXPX0XU7h1yUkbjV1Z/9W78IiWLcOwApuhw7bhFH
         Wt72NL/1uSpFfMDzS6biy54+rE10TFEnWg3s9I/Ywz3noNsxaSPE/dJ8/mTI9jxLznHf
         dVQAVt78xCgYUXP9d9qNM+0jf8sfyTfq0nafzArXLxgBNUPkZVupdbhdOLP/Z0gbxgVw
         JR2A==
X-Forwarded-Encrypted: i=1; AJvYcCUzMd56GanWyBXDYgkGWAs4NLBzMHpXuJW3NYY7EXNC6oSFPjUC21NR1M/g/5n5YEBiqrapQrsI6kY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxi59LALD16ZrZi4lkZ++qvsRsCmYsyKDSw6N/PgyDM7H5cCSMC
	otbN1+y2GiV7F4i10nDu6clZIBHpUHInLuspRC2OU2TDSZ/msr89QctRXIGyTeS3fCxCoxEdPJB
	dwMSCPf/4+EiskHiPF35LAeHaMULhY3I6ORBZ+WzJ0w==
X-Gm-Gg: ATEYQzyzWBYtCGU3klpjrOg9BBeFftER3OdMT7gHXGyjAoWOXdUCbU7xZe3GeuxXQl2
	1uex/V4i+bKeaQj9AOSV4fJxMuDq0K5LrUuz4oSryVLuA6eIGW5VHEvCC0UOgxVSVpy4Um4Rdcr
	EPhMoZisUX0pMbU+iNMcml/VKldb6UQ93zMSwYcB4d2I9wdFV4rfDV4BXyJ/lqvYNx/U3mEqBdh
	5UVROd3Y5QNE3CNAuxGf30bV/6zrHrCBrhybgapmhRHTr7gXYN0GQwe8Yc2xjiEOtQjllk0278Z
	nrCztJVaO5CLFwrANbI61XirWvbbUW1IrYo7TBgXCYZ+
X-Received: by 2002:a17:907:d9e:b0:b88:72da:1055 with SMTP id
 a640c23a62f3a-b933cda1035mr265143666b.29.1772028052640; Wed, 25 Feb 2026
 06:00:52 -0800 (PST)
MIME-Version: 1.0
References: <20260203161917.1666696-1-vincent.guittot@linaro.org>
 <20260203161917.1666696-2-vincent.guittot@linaro.org> <20260210004011.GA2188625-robh@kernel.org>
 <CAKfTPtA299R7yn3r=tCqhhP_tK3E_UpGSMrDLyRP4Ccwt1m58g@mail.gmail.com> <CAL_Jsq+SswpTjQShfkdhVwL_k8gJ_5+NrecPCUiFR52UB5zNMA@mail.gmail.com>
In-Reply-To: <CAL_Jsq+SswpTjQShfkdhVwL_k8gJ_5+NrecPCUiFR52UB5zNMA@mail.gmail.com>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Wed, 25 Feb 2026 15:00:40 +0100
X-Gm-Features: AaiRm505TTN6nS9yOA4a06y3Eph6mjLyAzAM02exWTGSkD9LPmzld_Vs-lqHg20
Message-ID: <CAKfTPtCX8cAT0f6k74_uYvP3=A3SFgV-GJfPMq50heUOmH=_Og@mail.gmail.com>
Subject: Re: [PATCH 1/4 v2] dt-bindings: serdes: s32g: Add NXP serdes subsystem
To: Rob Herring <robh@kernel.org>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, ciprianmarian.costea@oss.nxp.com, s32@nxp.com, 
	p.zabel@pengutronix.de, linux@armlinux.org.uk, ghennadi.procopciuc@nxp.com, 
	Ionut.Vicovan@nxp.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org, 
	horms@kernel.org, Frank.li@nxp.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_060055_396177_B435C598 
X-CRM114-Status: GOOD (  39.70  )
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

SGksCgpTb3JyeSBmb3IgdGhlIGRlbGF5ZWQgcmVwbHkuIFNvbWUgZGF5cyBvZmYga2VwdCBtZSBh
d2F5IGZyb20ga2V5Ym9hcmQKCk9uIFRodSwgMTIgRmViIDIwMjYgYXQgMjI6MTAsIFJvYiBIZXJy
aW5nIDxyb2JoQGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gVGh1LCBGZWIgMTIsIDIwMjYgYXQg
MToxN+KAr0FNIFZpbmNlbnQgR3VpdHRvdAo+IDx2aW5jZW50Lmd1aXR0b3RAbGluYXJvLm9yZz4g
d3JvdGU6Cj4gPgo+ID4gT24gVHVlLCAxMCBGZWIgMjAyNiBhdCAwMTo0MCwgUm9iIEhlcnJpbmcg
PHJvYmhAa2VybmVsLm9yZz4gd3JvdGU6Cj4gPiA+Cj4gPiA+IE9uIFR1ZSwgRmViIDAzLCAyMDI2
IGF0IDA1OjE5OjE0UE0gKzAxMDAsIFZpbmNlbnQgR3VpdHRvdCB3cm90ZToKPiA+ID4gPiBEZXNj
cmliZSB0aGUgc2VyZGVzIHN1YnN5c3RlbSBhdmFpbGFibGUgb24gdGhlIFMzMkcgcGxhdGZvcm1z
Lgo+ID4gPiA+Cj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogVmluY2VudCBHdWl0dG90IDx2aW5jZW50
Lmd1aXR0b3RAbGluYXJvLm9yZz4KPiA+ID4gPiAtLS0KPiA+ID4gPiAgLi4uL2JpbmRpbmdzL3Bo
eS9ueHAsczMyZy1zZXJkZXMueWFtbCAgICAgICAgIHwgMTU0ICsrKysrKysrKysrKysrKysrKwo+
ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTU0IGluc2VydGlvbnMoKykKPiA+ID4gPiAgY3JlYXRl
IG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbnhwLHMz
Mmctc2VyZGVzLnlhbWwKPiA+ID4gPgo+ID4gPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvcGh5L254cCxzMzJnLXNlcmRlcy55YW1sIGIvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9ueHAsczMyZy1zZXJkZXMueWFtbAo+ID4gPiA+
IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiA+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi5mYWQzNGJl
ZTJhNGYKPiA+ID4gPiAtLS0gL2Rldi9udWxsCj4gPiA+ID4gKysrIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9ueHAsczMyZy1zZXJkZXMueWFtbAo+ID4gPiA+IEBAIC0w
LDAgKzEsMTU0IEBACj4gPiA+ID4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4w
LW9ubHkgT1IgQlNELTItQ2xhdXNlKQo+ID4gPiA+ICslWUFNTCAxLjIKPiA+ID4gPiArLS0tCj4g
PiA+ID4gKyRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvcGh5L254cCxzMzJnLXNl
cmRlcy55YW1sIwo+ID4gPiA+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1z
Y2hlbWFzL2NvcmUueWFtbCMKPiA+ID4gPiArCj4gPiA+ID4gK3RpdGxlOiBOWFAgUzMyRzJ4eHgv
UzMyRzN4eHggU2VyRGVzIFBIWSBzdWJzeXN0ZW0KPiA+ID4gPiArCj4gPiA+ID4gK21haW50YWlu
ZXJzOgo+ID4gPiA+ICsgIC0gR2hlbm5hZGkgUHJvY29wY2l1YyA8Z2hlbm5hZGkucHJvY29wY2l1
Y0BueHAuY29tPgo+ID4gPiA+ICsKPiA+ID4gPiArZGVzY3JpcHRpb246IHwKPiA+ID4gPiArICBU
aGUgU2VyRGVzIHN1YnN5c3RlbSBvbiBTMzJHIFNvQyBGYW1pbHkgaW5jbHVkZXMgdHdvIHR5cGVz
IG9mIFBIWXM6Cj4gPiA+ID4gKyAgICAtIE9uZSBQQ0llIFBIWTogU3VwcG9ydHMgdmFyaW91cyBQ
Q0llIG9wZXJhdGlvbiBtb2Rlcwo+ID4gPiA+ICsgICAgLSBUd28gRXRoZXJuZXQgUGh5c2ljYWwg
Q29kaW5nIFN1YmxheWVyIChYUENTKSBjb250cm9sbGVycwo+ID4gPiA+ICsKPiA+ID4gPiArICBT
ZXJEZXMgb3BlcmF0aW9uIG1vZGUgc2VsZWN0cyB0aGUgZW5hYmxlZCBQSFlzIGFuZCBzcGVlZHMu
IENsb2NrIGZyZXF1ZW5jeQo+ID4gPiA+ICsgIG11c3QgYmUgYWRhcHRlZCBhY2NvcmRpbmdseS4g
QmVsb3cgdGFibGUgZGVzY3JpYmVzIGFsbCBwb3NzaWJsZSBvcGVyYXRpb24KPiA+ID4gPiArICBt
b2Rlcy4KPiA+ID4gPiArCj4gPiA+ID4gKyAgTW9kZSAgUENJZSBYUENTMCAgICAgICAgICAgWFBD
UzEgICAgICAgICAgIFBIWSBjbG9jayAgICAgICBEZXNjcmlwdGlvbgo+ID4gPiA+ICsgICAgICAg
ICAgICAgICAgU0dNSUkgICAgICAgICAgICAgICAgU0dNSUkgICAgICAgICAgICAgKE1IeikKPiA+
ID4gPiArICAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gPiA+ID4gKyAgMCAgR2VuMyAgICBOL0EgICAgICAg
ICAgICAgTi9BICAgICAgICAgICAgIDEwMCAgICAgICAgICAgICBTaW5nbGUgUENJZQo+ID4gPiA+
ICsgIDEgIEdlbjIgICAgMS4yNUdicHMgICAgICAgIE4vQSAgICAgICAgICAgICAxMDAgICAgICAg
ICAgICAgUENJZS9TR01JSQo+ID4gPiA+ICsgIDIgIEdlbjIgICAgTi9BICAgICAgICAgICAgIDEu
MjVHYnBzICAgICAgICAxMDAgICAgICAgICAgICAgUENJZS9TR01JSQo+ID4gPiA+ICsgIDMgIE4v
QSAgICAgMS4yNUdicHMgICAgICAgIDEuMjVHYnBzICAgICAgICAxMDAsMTI1ICAgICAgICAgU0dN
SUkKPiA+ID4gPiArICA0ICBOL0EgICAgIDMuMTI1LzEuMjVHYnBzICAzLjEyNS8xLjI1R2JwcyAg
MTI1ICAgICAgICAgICAgIFNHTUlJCj4gPiA+ID4gKyAgNSAgR2VuMiAgICBOL0EgICAgICAgICAg
ICAgMy4xMjVHYnBzICAgICAgIDEwMCAgICAgICAgICAgICBQQ0llL1NHTUlJCj4gPiA+Cj4gPiA+
IE1peGVkIHRhYnMgYW5kIHNwYWNlcy4gRHJvcCB0aGUgdGFicy4KPiA+Cj4gPiBva2F5Cj4gPgo+
ID4gPgo+ID4gPiBXaGF0J3Mgbm90IGNsZWFyIHRvIG1lIGlzIGRvIHlvdSBoYXZlIDIgb3IgNCBs
YW5lcz8KPiA+Cj4gPiAyIGxhbmVzIHBlciBzZXJkZXMKPiA+IGFzIGFuIGV4YW1wbGUgbW9kZSAw
IGlzIG9uZSBQQ0llIHgyIGxhbmUKPiA+IGFuZCBtb2RlIDEgaXMgb25lIFBDSWUgeDEgYW5kIG9u
ZSB4cGNzMC9TR01JSSBvbiBsYW5lIDEKPiA+IG9yIG1vZGUgMyBpcyBvbmUgIHhwY3MwL1NHTUlJ
IG9uIGxhbmUgMCBhbmQgb25lIHhwY3MxL1NHTUlJIG9uIGxhbmUgMQo+Cj4gU3RpbGwgY29uZnVz
ZWQuIFNvIDIgdG90YWwgbGFuZXM/CgpZZXMsIHRoZXJlIGFyZSAyIHNlcmRlcyBodyBpcCBpbnN0
YW5jZXMgYW5kIGVhY2ggaW5zdGFuY2UgaGFzIDIgbGFuZXMKdGhhdCBjYW4gYmUgY29uZmlndXJl
ZCB0byBvdXRwdXQgUENJZSBhbmQvb3IgU0dNSUkKCj4KPiA+Cj4gPiA+Cj4gPiA+ID4gKwo+ID4g
PiA+ICtwcm9wZXJ0aWVzOgo+ID4gPiA+ICsgIGNvbXBhdGlibGU6Cj4gPiA+ID4gKyAgICBvbmVP
ZjoKPiA+ID4gPiArICAgICAgLSBlbnVtOgo+ID4gPiA+ICsgICAgICAgICAgLSBueHAsczMyZzIt
c2VyZGVzCj4gPiA+ID4gKyAgICAgIC0gaXRlbXM6Cj4gPiA+ID4gKyAgICAgICAgICAtIGNvbnN0
OiBueHAsczMyZzMtc2VyZGVzCj4gPiA+ID4gKyAgICAgICAgICAtIGNvbnN0OiBueHAsczMyZzIt
c2VyZGVzCj4gPiA+ID4gKwo+ID4gPiA+ICsgIHJlZzoKPiA+ID4gPiArICAgIG1heEl0ZW1zOiA0
Cj4gPiA+ID4gKwo+ID4gPiA+ICsgIHJlZy1uYW1lczoKPiA+ID4gPiArICAgIGl0ZW1zOgo+ID4g
PiA+ICsgICAgICAtIGNvbnN0OiBzc19wY2llCj4gPiA+ID4gKyAgICAgIC0gY29uc3Q6IHBjaWVf
cGh5Cj4gPiA+ID4gKyAgICAgIC0gY29uc3Q6IHhwY3MwCj4gPiA+ID4gKyAgICAgIC0gY29uc3Q6
IHhwY3MxCj4gPiA+ID4gKwo+ID4gPiA+ICsgIGNsb2NrczoKPiA+ID4gPiArICAgIG1pbkl0ZW1z
OiA0Cj4gPiA+ID4gKyAgICBtYXhJdGVtczogNQo+ID4gPiA+ICsKPiA+ID4gPiArICBjbG9jay1u
YW1lczoKPiA+ID4gPiArICAgIGl0ZW1zOgo+ID4gPiA+ICsgICAgICAtIGNvbnN0OiBheGkKPiA+
ID4gPiArICAgICAgLSBjb25zdDogYXV4Cj4gPiA+ID4gKyAgICAgIC0gY29uc3Q6IGFwYgo+ID4g
PiA+ICsgICAgICAtIGNvbnN0OiByZWYKPiA+ID4gPiArICAgICAgLSBjb25zdDogZXh0Cj4gPiA+
ID4gKyAgICBtaW5JdGVtczogNAo+ID4gPiA+ICsKPiA+ID4gPiArICByZXNldHM6Cj4gPiA+ID4g
KyAgICBtYXhJdGVtczogMgo+ID4gPiA+ICsKPiA+ID4gPiArICByZXNldC1uYW1lczoKPiA+ID4g
PiArICAgIGl0ZW1zOgo+ID4gPiA+ICsgICAgICAtIGNvbnN0OiBzZXJkZXMKPiA+ID4gPiArICAg
ICAgLSBjb25zdDogcGNpZQo+ID4gPiA+ICsKPiA+ID4gPiArICBueHAsc3lzLW1vZGU6Cj4gPiA+
ID4gKyAgICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy91aW50MzIKPiA+
ID4KPiA+ID4gICAgICAgIG1heGltdW06IDUKPiA+ID4KPiA+ID4gVGhvdWdoIGlzbid0IHRoaXMg
cmVkdW5kYW50IHdpdGggdGhlIGNoaWxkIG5vZGVzPyBZb3UgY291bGQgdXNlIHRoZQo+ID4gPiBz
dGFuZGFyZCAncGh5LW1vZGUnIHByb3BlcnR5IGluIGVhY2ggY2hpbGQuCj4gPgo+ID4gbm90IHJl
YWxseSBiZWNhdXNlIHdlIGNhbiBoYXZlIG1vZGUgMSBidXQgb25seSBhIG5vZGUgdG8gZGVzY3Jp
YmUKPiA+IGxhbmUwIGZvciBQQ0llIHgxIGlmIHRoZSBsYW5lIDEgaXMgbm90IHVzZWQKPiA+Cj4g
PiA+Cj4gPiA+ID4gKyAgICBkZXNjcmlwdGlvbjogfAo+ID4gPiA+ICsgICAgICBTZXJEZXMgb3Bl
cmF0aW9uYWwgbW9kZS4gU2VlIGFib3ZlIHRhYmxlIGZvciBwb3NzaWJsZSB2YWx1ZXMuCj4gPiA+
ID4gKwo+ID4gPiA+ICsgICcjYWRkcmVzcy1jZWxscyc6Cj4gPiA+ID4gKyAgICBjb25zdDogMQo+
ID4gPiA+ICsKPiA+ID4gPiArICAnI3NpemUtY2VsbHMnOgo+ID4gPiA+ICsgICAgY29uc3Q6IDAK
PiA+ID4gPiArCj4gPiA+ID4gK3BhdHRlcm5Qcm9wZXJ0aWVzOgo+ID4gPiA+ICsgICdec2VyZGVz
WzAsMV1fbGFuZUBbMCwxXSQnOgo+ID4gPgo+ID4gPiBEbyB5b3UgbmVlZCB0byBzdXBwb3J0IHNl
cmRlczBfbGFuZUAwIGFuZCBzZXJkZXMxX2xhbmVAMCAob3Igc2ltaWxhcgo+ID4gPiB3aXRoICJA
MSIpPyBUaGF0J3MgaWxsZWdhbCBhcyB5b3UgaGF2ZSAyIG5vZGVzIHdpdGggdGhlIHNhbWUgYWRk
cmVzcy4KPiA+Cj4gPiBva2F5LCB3ZSBjYW4gZmluZCBvdGhlciBuYW1pbmcKPiA+Cj4gPiA+Cj4g
PiA+ID4gKyAgICBkZXNjcmlwdGlvbjoKPiA+ID4gPiArICAgICAgRGVzY3JpYmUgYSBzZXJkZXMg
bGFuZS4KPiA+ID4gPiArICAgIHR5cGU6IG9iamVjdAo+ID4gPiA+ICsKPiA+ID4gPiArICAgIHBy
b3BlcnRpZXM6Cj4gPiA+ID4gKyAgICAgIGNvbXBhdGlibGU6Cj4gPiA+ID4gKyAgICAgICAgZW51
bToKPiA+ID4gPiArICAgICAgICAgIC0gbnhwLHMzMmcyLXNlcmRlcy1wY2llLXBoeQo+ID4gPiA+
ICsgICAgICAgICAgLSBueHAsczMyZzItc2VyZGVzLXhwY3MKPiA+ID4KPiA+ID4gU2VlbXMgbGlr
ZSBwaHktbW9kZSB3b3VsZCBiZSBzdWZmaWNpZW50LiBBcmUgdGhlc2Ugc2VwYXJhdGUgYmxvY2tz
IGZyb20KPiA+ID4gdGhlIHBhcmVudD8KPiA+Cj4gPiBJc24ndCBwaHktbW9kZSBvbmx5IGZvciBl
dGhlcm5ldCBwaHkgPwo+Cj4gU29ycnksIGl0IGlzICJwaHktdHlwZSIgdGhhdCBJIHdhcyB0aGlu
a2luZyBhYm91dC4gVGhhdCB0YWtlcyB0aGUKPiB0eXBlcyBkZWZpbmVkIGluIGR0LWJpbmRpbmdz
L3BoeS9waHkuaC4gVGhlIHR5cGUgY2FuIGJlIGRlZmluZWQgZWl0aGVyCj4gaW4gInBoeS10eXBl
IiBvciBpbiB0aGUgcGh5IGNlbGxzIGlmIHRoZSB0eXBlIGlzIHBlciBpZGVudGlmaWVyLgo+Cj4g
UmVhbGx5LCBHaXZlbiBlYWNoIGxhbmUgZG9lc24ndCBoYXZlIGFueSBvZiBpdHMgb3duIHJlc291
cmNlcywgSSdkCj4gcHJvYmFibHkgZ2V0IHJpZCBvZiB0aGUgY2hpbGQgbm9kZXMgYW5kIHB1dCB0
aGUgdHlwZSBpbnRvIHRoZSBwaHkKPiBjZWxscy4gVGhlbiB5b3UnZCBoYXZlIHNvbWV0aGluZyBs
aWtlIHRoaXM6Cj4KPiAvLyBQQ0lFIG9uIGxhbmVzIDAgYW5kIDEgKG1vZGUgMCkKPiBwY2llIHsK
PiAgIHBoeXMgPSA8JnBoeSAwIFBIWV9UWVBFX1BDSUU+LCA8JnBoeSAxIFBIWV9UWVBFX1BDSUU+
Owo+IH07CgpXZSBvbmx5IHJlZ2lzdGVyIG9uZSBwaHkgd2l0aCBQQ0lFIHgyIGluIHRoaXMgY2Fz
ZQoKPgo+IC8vIFBDSUUgb24gbGFuZSAwIChtb2RlIDEpCj4gcGNpZSB7Cj4gICBwaHlzID0gPCZw
aHkgMCBQSFlfVFlQRV9QQ0lFPjsKPiB9Owo+IC8vIEV0aGVybmV0IG9uIGxhbmUgMQo+IGV0aGVy
bmV0IHsKPiAgIHBoeXMgPSA8JnBoeSAxIFBIWV9UWVBFX1NHTUlJPjsKPiB9OwoKRm9yIGV0aGVy
bmV0LCB3ZSB1c2UgcGNzLWhhbmRsZSBhbmQgd2UgZG9uJ3QgcmVnaXN0ZXIgZ2VuZXJpYyBwaHkg
YXMKd2UgZG9uJ3QgaGF2ZSBhbnl0aGluZyB0byBkbwoKQWxzbywgdGhlIG1vZGUgKGlmIGEgbGFu
ZSBvdXRwdXQgcGNpZSBvciBzZ21paSkgaXMgYSBzdGF0aWMKY29uZmlndXJhdGlvbiB0aGF0IGlz
IGRlY2lkZWQgYmVmb3JlIHVucmVzZXR0aW5nIHRoZSBzZXJkZXMgaXAsIHdlCmRvbid0IGNoYW5n
ZSB0aGUgbW9kZSBhdCBydW50aW1lCgpUaGF0IGJlaW5nIHNhaWQsIHdlIGNhbiB1c2UgcGh5LXR5
cGUgPSA8UEhZX1RZUEVfUENJRT4gb3IKPFBIWV9UWVBFX1hQQ1M+IGluIGNoaWxkIG5vZGUgaW5z
dGVhZCBvZiBhIGNvbXBhdGlibGUgdG8gZGVzY3JpYmUgdGhlCnB1cnBvc2Ugb2YgZWFjaCBsYW5l
Cgo+Cj4gSSBwZXJoYXBzIGRvbid0IGhhdmUgdGhlIGNlbGxzIHJpZ2h0IGlmIGl0IGlzIG1vcmUg
dGhhbiBqdXN0IGxhbmUgMAo+IGFuZCBsYW5lIDEsIGJ1dCB5b3UgY2FuIHB1dCBhbnl0aGluZyB0
aGVyZSB5b3Ugd2FudC4gVGhlIGNlbGwKPiBkZWZpbml0aW9uIGlzIHByb3ZpZGVyIHNwZWNpZmlj
Lgo+Cj4gSWYgeW91IG5lZWQgdG8gZ2V0IHRoZSBvdmVyYWxsIHN5c3RlbSB3aWRlIGNvbmZpZ3Vy
YXRpb24sIHRoYXQgY2FuIGJlCj4gZG9uZS4gSXQncyBub3QgdGVycmlibHkgZWZmaWNpZW50LCBi
dXQgeW91IGNhbiBpdGVyYXRlIGFsbCAncGh5cycKPiBub2RlcyBpbiB0aGUgRFQsIGZpbmQgdGhl
IG9uZXMgZm9yIHlvdXIgcHJvdmlkZXIgKCZwaHkpIGFuZCBleGFtaW5lCj4gdGhlIGNlbGwgdmFs
dWVzLgoKQXMgbWVudGlvbmVkIHByZXZpb3VzbHksIHdlIGNhbiBkZWNpZGUgbm90IHRvIHVzZSBh
bGwgbGFuZXMgb2YgYSBtb2RlLgpBcyBhbiBleGFtcGxlLCB1c2luZyBtb2RlIDEgZm9yIGEgcGNp
ZSB4MSBidXQgbm8gc2dtaWkgc28gd2Ugd2lsbCBub3QKZmluZCBhbGwgbGFuZXMgZGVzY3JpcHRp
b24gaW4gdGhlIERUCgpWaW5jZW50Cj4KPiBSb2IKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
