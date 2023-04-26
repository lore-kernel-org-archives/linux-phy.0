Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0DB3C77B78
	for <linux-phy@archiver.kernel.org>; Wed, 26 Apr 2023 10:21:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MKZJ8luNgn7oXV9K9edLBbACdAcdAT2c9BhHcjRA0V4=; b=o7JduWKRODkE4d
	EchYPECbvxZ3ys+DgCtmgXHwn/WSkgh6MNMew0PbK9a3QS33tfjbRs9uQp5v6XBG8Gi1DCjeGl/rK
	gzmxs7VLiQAPIC9YZQxGaPQX+rEzVbfwoJtzyA3lL2jiByJljxW7Zgv8kddj7xPOgHc+KXgJr6aoH
	XZnVuHhOUtzAFk7SrpG7hOX2g9/X3+xpgymdEfVIxq/wQbjahvpKULbvlNWNGevpX8aDJuRYOzUj+
	e1EsTZ40LXZnhZIyW6m+pjSbzOb4UDF7Pfk+kOH+xjwDClHUDULigMTYsmPt1g47UXRtDnvmgZdA/
	cb4v+Xl+giboTq4N2xLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1prcHU-003QOH-0k;
	Wed, 26 Apr 2023 10:21:48 +0000
Received: from mail-vk1-xa2b.google.com ([2607:f8b0:4864:20::a2b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1prcHQ-003QNn-2v
	for linux-phy@lists.infradead.org;
	Wed, 26 Apr 2023 10:21:46 +0000
Received: by mail-vk1-xa2b.google.com with SMTP id 71dfb90a1353d-440403d34a4so2497667e0c.0
        for <linux-phy@lists.infradead.org>; Wed, 26 Apr 2023 03:21:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexus-software-ie.20221208.gappssmtp.com; s=20221208; t=1682504501; x=1685096501;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G5ddJJouQF0VMg4gLphGJLFIlcb6TbSvOUl9yWeTAB0=;
        b=zsa8P4i496EbZ9/9LRHfm1Evv1CuEbHUX3snQ7nJzrrN0Bpetkz5flyHJBq7GP6ZY+
         ZDN6lYgi03rJQ39TC1ONkGoUcnlTYaO0wTAknsa6BEO/eZptGfP1/Wk2rmxhy/cDFN1u
         fg3uQNBGXXdLlL6QwJiPFNXIFOy0hEHCB3i8MvIUiBou7zklIKfvkGQfz43o8VohfGVc
         OJ73U3gxiNbCx7ZScD0ypfbdJe9zxRLZyfk7N+HBB2GvK2XIuQULBsMPhSVdFNuvjmfy
         syVmhZd7P4Z8sWbz7DAh7rUGfzOu/vgvoLnTXgTRg9jgTLEXnfmupwmlsNLk2kOB/PVJ
         5Auw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682504501; x=1685096501;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G5ddJJouQF0VMg4gLphGJLFIlcb6TbSvOUl9yWeTAB0=;
        b=ftBoUykar6I43T7ZALWx0uFDf95LP/FBe8z2tyriAYWQMmY4ROkT3iIhfH7EimvMM8
         jbSU2LN5QLoyqWwslg40g3KXR1zEBQRhTCpKq05FpBwk+IH60YYPXJn/VoiA7dvPgHgC
         mkDktcJrcTI+MkWUnCxP2N3Tu6sBeIkMzchBorAXuIgDUr4K02UkCFt12MWFzEwq05vF
         NyMaHef4RXL1cCNP7ytN1RAAPprNTUOFjS9sGvj4qo5jKzTzsighA3OkmUzlWR7VWsGk
         5NCdc5x0zS0BIEV1UUlFPlkmZ7cKHtnrYwDKxM3/D486MqcFUFwEdV/aqG2naFpC8k2/
         er9g==
X-Gm-Message-State: AAQBX9fE6sd/T6Bda2EUHdMb3dTYVmn9yQwAdJJWDKgx6t0vbk+dbbKj
	HJ3EV7A3jwIgIfp8oZ8Cpiq40jM1FZM8WCdhY6g7LA==
X-Google-Smtp-Source: AKy350Zi9Q1Lktqu4EEULyrk/A02CU31Usyj5JoncFgGwtXrBx71o/Oi0fhGYphHH3NKVhpiK4Dqe5GdaCdrPCC9fZc=
X-Received: by 2002:a1f:4f83:0:b0:43f:bcdf:b60e with SMTP id
 d125-20020a1f4f83000000b0043fbcdfb60emr4937454vkb.0.1682504501111; Wed, 26
 Apr 2023 03:21:41 -0700 (PDT)
MIME-Version: 1.0
References: <20230425034010.3789376-1-quic_bjorande@quicinc.com> <20230425034010.3789376-2-quic_bjorande@quicinc.com>
In-Reply-To: <20230425034010.3789376-2-quic_bjorande@quicinc.com>
From: "Bryan O'Donoghue" <pure.logic@nexus-software.ie>
Date: Wed, 26 Apr 2023 11:21:29 +0100
Message-ID: <CAJB8c06H+3pxoUGXWOXyCgtbOj6y0OhSxb9dvoTo1b6iChy7ng@mail.gmail.com>
Subject: Re: [PATCH 1/7] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Add
 ports and orientation-switch
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Johan Hovold <johan@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230426_032145_187084_6F71B358 
X-CRM114-Status: GOOD (  15.18  )
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

T24gVHVlLCBBcHIgMjUsIDIwMjMgYXQgNDo0MOKAr0FNIEJqb3JuIEFuZGVyc3Nvbgo8cXVpY19i
am9yYW5kZUBxdWljaW5jLmNvbT4gd3JvdGU6Cj4KPiBUaGUgUU1QIGNvbWJvIHBoeSBjYW4gYmUg
Y29ubmVjdGVkIHRvIGEgVENQTSwgYSBVU0IgY29udHJvbGxlciBhbmQgYQo+IERpc3BsYXlQb3J0
IGNvbnRyb2xsZXIgZm9yIGhhbmRsaW5nIFVTQiBUeXBlLUMgb3JpZW50YXRpb24gc3dpdGNoaW5n
Cj4gYW5kIHByb3BhZ2F0aW5nIEhQRCBzaWduYWxzLgo+Cj4gRXh0ZW5kIHRoZSBiaW5kaW5nIHRv
IGFsbG93IHRoZXNlIGNvbm5lY3Rpb25zIHRvIGJlIGRlc2NyaWJlZC4KPgo+IFNpZ25lZC1vZmYt
Ynk6IEJqb3JuIEFuZGVyc3NvbiA8cXVpY19iam9yYW5kZUBxdWljaW5jLmNvbT4KPiAtLS0KPiAg
Li4uL3BoeS9xY29tLHNjODI4MHhwLXFtcC11c2I0M2RwLXBoeS55YW1sICAgIHwgNTEgKysrKysr
KysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNTEgaW5zZXJ0aW9ucygrKQo+Cj4gZGlm
ZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgy
ODB4cC1xbXAtdXNiNDNkcC1waHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9waHkvcWNvbSxzYzgyODB4cC1xbXAtdXNiNDNkcC1waHkueWFtbAo+IGluZGV4IDNjZDVm
YzNlOGZhYi4uYzAzN2FjOTBjZTdmIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgyODB4cC1xbXAtdXNiNDNkcC1waHkueWFtbAo+ICsr
KyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgyODB4cC1x
bXAtdXNiNDNkcC1waHkueWFtbAo+IEBAIC02MCw2ICs2MCwyNiBAQCBwcm9wZXJ0aWVzOgo+ICAg
ICAgZGVzY3JpcHRpb246Cj4gICAgICAgIFNlZSBpbmNsdWRlL2R0LWJpbmRpbmdzL2R0LWJpbmRp
bmdzL3BoeS9waHktcWNvbS1xbXAuaAo+Cj4gKyAgb3JpZW50YXRpb24tc3dpdGNoOgo+ICsgICAg
ZGVzY3JpcHRpb246Cj4gKyAgICAgIEZsYWcgdGhlIFBIWSBhcyBwb3NzaWJsZSBoYW5kbGVyIG9m
IFVTQiBUeXBlLUMgb3JpZW50YXRpb24gc3dpdGNoaW5nCj4gKyAgICB0eXBlOiBib29sZWFuCj4g
Kwo+ICsgIHBvcnRzOgo+ICsgICAgJHJlZjogL3NjaGVtYXMvZ3JhcGgueWFtbCMvcHJvcGVydGll
cy9wb3J0cwo+ICsgICAgcHJvcGVydGllczoKPiArICAgICAgcG9ydEAwOgo+ICsgICAgICAgICRy
ZWY6IC9zY2hlbWFzL2dyYXBoLnlhbWwjL3Byb3BlcnRpZXMvcG9ydAo+ICsgICAgICAgIGRlc2Ny
aXB0aW9uOiBPdXRwdXQgZW5kcG9pbnQgb2YgdGhlIFBIWQo+ICsKPiArICAgICAgcG9ydEAxOgo+
ICsgICAgICAgICRyZWY6IC9zY2hlbWFzL2dyYXBoLnlhbWwjLyRkZWZzL3BvcnQtYmFzZQo+ICsg
ICAgICAgIGRlc2NyaXB0aW9uOiBJbmNvbWluZyBlbmRwb2ludCBmcm9tIHRoZSBVU0IgY29udHJv
bGxlcgoKRG8geW91IHJlYWxseSBuZWVkIHRoaXMgb25lID8KClRoZSBjb250cm9sbGVyIGRvZXNu
J3QgcHJvY2VzcyBvcmllbnRhdGlvbiBzd2l0Y2hpbmcuCgotLS0KYm9kCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
