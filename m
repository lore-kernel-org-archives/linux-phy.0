Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 342E8EB64D9
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jun 2023 07:29:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4qNpQUvI9L1xVRGvZF0WT/ypDDSs4LzfqC8WsYyKED8=; b=nFAe1cdl5pz58h
	nH3KxLum2s2GgVSP9w7JyH2N6LSI0rtvQJE+i+fuKWF6gbm5LT7McvKGK5j8FNUZEKAL0CjBQkTnN
	92p1N+lLH2fPu/dFo7/6YZgkISetgSuOkjNCVsst5kE8uTuQhpO5kieYnVAi40CC60t5Ks8IJprX/
	O56JlAtaZ5jBk2y+gWmZJ2fSazFyugz3eZid7FFKK8h2Ks5zHScwdFOIu2Y7Ld3DQfH3cJrgsZQNO
	bY9Dsf6JYhLBKwX3wk1U0+Dz2WvQ5W0FkZcf/ehNdo4L03S4u+6yzEkZyL+TlqimKYUMZFt0aJ+lB
	Km5+8YEFMf/HoQbSXqhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9KwB-00AfZU-2e;
	Wed, 14 Jun 2023 07:29:03 +0000
Received: from mail-vs1-xe29.google.com ([2607:f8b0:4864:20::e29])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9Kw8-00AfY5-29
	for linux-phy@lists.infradead.org;
	Wed, 14 Jun 2023 07:29:01 +0000
Received: by mail-vs1-xe29.google.com with SMTP id ada2fe7eead31-43dd7791396so793090137.0
        for <linux-phy@lists.infradead.org>; Wed, 14 Jun 2023 00:28:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686727739; x=1689319739;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5CRRGmdvDVbIEVTAFye64zUK3XOXIsv8ssMpfcABwlc=;
        b=Nf0/wLoZ38LsOopYbyo0ezI8LUQxgJTAFLkmLtgB++4Cqtqg95I3NTpGl9TXnYDDkY
         wQhNpaGtN+5iKwyxA/Sc3yKL4QWEEoRYv1tUv0/rZ1jPqpc9h2liqXzIFsH7Mk0PzJ2D
         8Dt9l/8xaaR/qGP/pxdKD42jgFfMPgpFD59+6wt7ykOg3xU4OOQOIVjAB7xnsarGe2xV
         S1QJ6zDt5NlO/4rFM4tBxEctZeiRwHUUbqReFG2sT+6YQbOdFDmCmmmOhAPgpwdAefLP
         SOVujR+y+Jx1AZxSFRB5PTZR3D5aXGCdsLrtMDajNAzKERlzusmNmNlP39Tdtw7fIp0C
         Jqdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686727739; x=1689319739;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5CRRGmdvDVbIEVTAFye64zUK3XOXIsv8ssMpfcABwlc=;
        b=O0rX/olFnjZ90JCZUauhEJP+vyThJgvF89wNX9fNwHjyZlhla9XGjLy+hspsEBO+Ah
         CARe6C/XQwYvtATBHqxInn5pFEIk4tx5X7jyXfFCxuuashJsXdXdTh8qvRmU5peP+SeX
         pyLp1P5GIIHc6Vx+tFtpeRedBKKmAn0oCCJ8HYNoqAGJUDWznJ5a5SCA6VTr5kIScprz
         tAFLuc2cDi3fnqAC9v5+LtGLjf0qcs/TT4GyVdiGSzteWtGdNM+fb7bBxZ7EXwclLTaN
         ADazJq+6OCL8d+jSNPJ8s0q+MJ37PrY9ZoL4ZDxswFIchiaDQPhML/GZcxrEBZoAZ8xw
         tpXA==
X-Gm-Message-State: AC+VfDzyxe1C9W4yYL52J66dqj1WN8FF4XWN57e5KRuXFcglHcZ/Fgvk
	oTZXlI2C4h9KR6zt4Ua6BqSg778tYtzc71bKPGK9fA==
X-Google-Smtp-Source: ACHHUZ5IOUv06tiZXv2OeC2IVs2JPsy0d5AliyorYz0hKnjFQVcPktvrX5L1vFgxFRciusLts8S8bofr4NgaMAhMxQo=
X-Received: by 2002:a05:6102:ca:b0:43d:54e9:35fb with SMTP id
 u10-20020a05610200ca00b0043d54e935fbmr7796848vsp.14.1686727739229; Wed, 14
 Jun 2023 00:28:59 -0700 (PDT)
MIME-Version: 1.0
References: <20230612092355.87937-1-brgl@bgdev.pl> <20230612092355.87937-21-brgl@bgdev.pl>
 <712b2650-f0c1-088a-612c-ef6d6bcc1eb0@linaro.org>
In-Reply-To: <712b2650-f0c1-088a-612c-ef6d6bcc1eb0@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 14 Jun 2023 09:28:48 +0200
Message-ID: <CAMRc=McvVwk_HGU_cRzJ_qsCriHKfq61qL7bbe10evr-Sp6YSA@mail.gmail.com>
Subject: Re: [PATCH 20/26] dt-bindings: net: qcom,ethqos: add description for sa8775p
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Bhupesh Sharma <bhupesh.sharma@linaro.org>, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Jose Abreu <joabreu@synopsys.com>, 
	netdev@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_002900_728183_7C4A51F6 
X-CRM114-Status: GOOD (  19.81  )
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

T24gV2VkLCBKdW4gMTQsIDIwMjMgYXQgOToyNeKAr0FNIEtyenlzenRvZiBLb3psb3dza2kKPGty
enlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBPbiAxMi8wNi8yMDIzIDEx
OjIzLCBCYXJ0b3N6IEdvbGFzemV3c2tpIHdyb3RlOgo+ID4gRnJvbTogQmFydG9zeiBHb2xhc3pl
d3NraSA8YmFydG9zei5nb2xhc3pld3NraUBsaW5hcm8ub3JnPgo+ID4KPiA+IEFkZCB0aGUgY29t
cGF0aWJsZSBmb3IgdGhlIE1BQyBjb250cm9sbGVyIG9uIHNhODc3NXAgcGxhdGZvcm1zLiBUaGlz
IE1BQwo+ID4gd29ya3Mgd2l0aCBhIHNpbmdsZSBpbnRlcnJ1cHQgc28gYWRkIG1pbkl0ZW1zIHRv
IHRoZSBpbnRlcnJ1cHRzIHByb3BlcnR5Lgo+ID4gVGhlIGZvdXJ0aCBjbG9jaydzIG5hbWUgaXMg
ZGlmZmVyZW50IGhlcmUgc28gY2hhbmdlIGl0LiBFbmFibGUgcmVsZXZhbnQKPiA+IFBIWSBwcm9w
ZXJ0aWVzLgo+ID4KPgo+IEkgdGhpbmsgdGhlIHBhdGNoIHNob3VsZCBiZSBzcXVhc2hlZCB3aXRo
IHByZXZpb3VzLiBBZGRpbmcgY29tcGF0aWJsZSB0bwo+IGNvbW1vbiBzbnBzLGR3bWFjIGJpbmRp
bmcgZG9lcyBub3QgbWFrZSBzZW5zZSBvbiBpdHMgb3duLiBJdCBtYWtlcyBzZW5zZQo+IHdpdGgg
YWRkaW5nIGNvbXBhdGlibGUgaGVyZS4KPgo+ID4gU2lnbmVkLW9mZi1ieTogQmFydG9zeiBHb2xh
c3pld3NraSA8YmFydG9zei5nb2xhc3pld3NraUBsaW5hcm8ub3JnPgo+ID4gLS0tCj4gPiAgLi4u
L2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3Fjb20sZXRocW9zLnlhbWwgICAgICAgfCAxNCArKysr
KysrKysrKysrLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9uZXQvcWNvbSxldGhxb3MueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9uZXQvcWNvbSxldGhxb3MueWFtbAo+ID4gaW5kZXggNjBhMzgwNDRmYjE5Li5iMjA4NDdj
Mjc1Y2UgMTAwNjQ0Cj4gPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
bmV0L3Fjb20sZXRocW9zLnlhbWwKPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9uZXQvcWNvbSxldGhxb3MueWFtbAo+ID4gQEAgLTIwLDYgKzIwLDcgQEAgcHJvcGVy
dGllczoKPiA+ICAgIGNvbXBhdGlibGU6Cj4gPiAgICAgIGVudW06Cj4gPiAgICAgICAgLSBxY29t
LHFjczQwNC1ldGhxb3MKPiA+ICsgICAgICAtIHFjb20sc2E4Nzc1cC1ldGhxb3MKPiA+ICAgICAg
ICAtIHFjb20sc2M4MjgweHAtZXRocW9zCj4gPiAgICAgICAgLSBxY29tLHNtODE1MC1ldGhxb3MK
PiA+Cj4gPiBAQCAtMzIsMTEgKzMzLDEzIEBAIHByb3BlcnRpZXM6Cj4gPiAgICAgICAgLSBjb25z
dDogcmdtaWkKPiA+Cj4gPiAgICBpbnRlcnJ1cHRzOgo+ID4gKyAgICBtaW5JdGVtczogMQo+ID4g
ICAgICBpdGVtczoKPiA+ICAgICAgICAtIGRlc2NyaXB0aW9uOiBDb21iaW5lZCBzaWduYWwgZm9y
IHZhcmlvdXMgaW50ZXJydXB0IGV2ZW50cwo+ID4gICAgICAgIC0gZGVzY3JpcHRpb246IFRoZSBp
bnRlcnJ1cHQgdGhhdCBvY2N1cnMgd2hlbiBSeCBleGl0cyB0aGUgTFBJIHN0YXRlCj4gPgo+ID4g
ICAgaW50ZXJydXB0LW5hbWVzOgo+ID4gKyAgICBtaW5JdGVtczogMQo+ID4gICAgICBpdGVtczoK
PiA+ICAgICAgICAtIGNvbnN0OiBtYWNpcnEKPiA+ICAgICAgICAtIGNvbnN0OiBldGhfbHBpCj4g
PiBAQCAtNDksMTEgKzUyLDIwIEBAIHByb3BlcnRpZXM6Cj4gPiAgICAgICAgLSBjb25zdDogc3Rt
bWFjZXRoCj4gPiAgICAgICAgLSBjb25zdDogcGNsawo+ID4gICAgICAgIC0gY29uc3Q6IHB0cF9y
ZWYKPiA+IC0gICAgICAtIGNvbnN0OiByZ21paQo+ID4gKyAgICAgIC0gZW51bToKPiA+ICsgICAg
ICAgICAgLSByZ21paQo+ID4gKyAgICAgICAgICAtIHBoeWF1eAo+ID4KPiA+ICAgIGlvbW11czoK
PiA+ICAgICAgbWF4SXRlbXM6IDEKPiA+Cj4gPiArICBwaHlzOiB0cnVlCj4gPiArCj4gPiArICBw
aHktc3VwcGx5OiB0cnVlCj4KPiBJc24ndCB0aGlzIHByb3BlcnR5IG9mIHRoZSBwaHk/Cj4KCkl0
IGlzLCBhbmQgYXMgZGlzY3Vzc2VkIGVsc2V3aGVyZSB3aXRoIEFuZHJldywgSSB3aWxsIG1vdmUg
aXQgdG8gdGhlClNlckRlcyBQSFkgZHJpdmVyLgoKQmFydAoKPiA+ICsKPiA+ICsgIHBoeS1uYW1l
czoKPiA+ICsgICAgY29uc3Q6IHNlcmRlcwo+Cj4gS2VlcCB0aGUgcGh5LW5hbWVzIGFmdGVyIHBo
eXMuCj4KPgo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0b2YKPgoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
