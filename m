Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F9A0C43334
	for <linux-phy@archiver.kernel.org>; Thu, 21 Jul 2022 13:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=krhkgQjCSIIW+g7C4CY1OBNsF4PeifMIIHqZI9M12uY=; b=fAKJd+KmYnWHo1
	olhnXOCLLGImxjZPMl0GVhvtc6emwpG2RKwKSMTp2Le5UJzAt5oU3zFh1/qbIjcwmDFKIB8ks26uO
	3Fl7TJL9wMZV4HryiQ3gGSJAKMOHXIAd+JUsvNYL91LQQGFs8F0cqsQbtOYQfBU2UfQtpZ1Bh3w/q
	RLGKkVQkcXBzrx2Pe9cP3gV9H0AvT+Jmr1gcNYu2++Sw+plVR6J4khQGDtsTGb/0IJzIlV7wJgJhy
	MecBEuPWE1TZSxFhQkIyyaduANAew29lblZ4Pvv/Wxkev0GXy3/XYTvD/ckHVHVUAXNacAPEtQok9
	RxqgZkqN05UJdogMkfZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEWLP-007779-RR; Thu, 21 Jul 2022 13:35:59 +0000
Received: from mail-qt1-x82e.google.com ([2607:f8b0:4864:20::82e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEWFR-00730J-Uj
	for linux-phy@lists.infradead.org; Thu, 21 Jul 2022 13:29:51 +0000
Received: by mail-qt1-x82e.google.com with SMTP id w29so1208207qtv.9
        for <linux-phy@lists.infradead.org>; Thu, 21 Jul 2022 06:29:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=Ui3he7DowmFEO/fEYSCWy+Md4Ohe389ZK5/NC3CDYLQ=;
        b=FTvS2RR6/8WdClMMdUmnXQUGbeUY+JFDEdOng6jp3cvtOBZZVVct/NtwltPoEUu+F4
         TYPY6ixrlMv49oKIeAaNIHvc3E00rWPS0HWe5785ld+YnTn+PvCVTStK7uOyBFG64A9y
         2d+gzkKJCYAC6MFO/D03oktdWg1oxYPdKaHGYyACwpbGH9Aki/hsi/2e/ZXAL4RodJNj
         Gmt3KedOnbrq6xznPX4yWAALCcGR4p8iSqGsbyODHfWoCbqvAAC5GvvqGnS2QnCD02gr
         nO36by/loAixhGuzkJClqIoS4jrOG9Ao/oEK8/nRfo9b0njIQ729O6GdB+4d0xPtXlWH
         3zVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Ui3he7DowmFEO/fEYSCWy+Md4Ohe389ZK5/NC3CDYLQ=;
        b=fnxWjJv330zNNleUv55VolEy32IO2PZfUcEa2oXD2wccilEMjbz7rCx0Bt524H95NR
         5wLEoPmuxgRId5lA+bQDSu3pf5BgE37zgwFexSI1GeDWhb/byZmERyyvKNVFUhUOUGtz
         jGrfNiGcw9oSxCwh3lyYgNf1BdSVkHfYjZmHQ+Fn18bOIWfbEKe4MpyFubK4GM+Jr/IO
         EsQsY/NN7mMN+oQs7pg1/88Eyp3dXq7P8GR0ZGUSTU/MTFQdypgalxNFdPu9yCHMSTyz
         4KDGEAFLFhtuy7gc6iD9lnNoUKoAGwtySyj44uKhx44MW4KlaofDWsCH9NTjB0Eov4I7
         mpYA==
X-Gm-Message-State: AJIora/p2Inho48k3tVBQ80Sy1dtUVhF4kJPuHyTw9GDY1oo4LaVQH1u
	Cuzxh73L/gCojnWaRT4srdZWKdW9V5I52EWaMQLr8g==
X-Google-Smtp-Source: AGRyM1u/hEA8MVKfS1pR/OdjyEyyfJwLsRAo0+lFcqnHYQCN+Lp0OhlYemZauGLN9EdZWde7muKf0n4NNhP7DIyolkI=
X-Received: by 2002:ac8:5dca:0:b0:31e:85b8:8a18 with SMTP id
 e10-20020ac85dca000000b0031e85b88a18mr33195980qtx.370.1658410186088; Thu, 21
 Jul 2022 06:29:46 -0700 (PDT)
MIME-Version: 1.0
References: <20220719200626.976084-1-dmitry.baryshkov@linaro.org> <20220721101530.GE39125@thinkpad>
In-Reply-To: <20220721101530.GE39125@thinkpad>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 21 Jul 2022 16:29:33 +0300
Message-ID: <CAA8EJpqgBBoyn1ba72NuupoPPEcs_txUunkD83M4bvT68ivXRA@mail.gmail.com>
Subject: Re: [RFC PATCH 0/4] PCI: qcom: support using the same PHY for both RC
 and EP
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>, 
	Konrad Dybcio <konrad.dybcio@somainline.org>, Rob Herring <robh+dt@kernel.org>, 
	Jingoo Han <jingoohan1@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, 
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@ti.com>, Philipp Zabel <p.zabel@pengutronix.de>, Johan Hovold <johan@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220721_062950_054893_B6E86909 
X-CRM114-Status: GOOD (  27.71  )
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

T24gVGh1LCAyMSBKdWwgMjAyMiBhdCAxMzoxNSwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtCjxtYW5p
dmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBPbiBUdWUsIEp1bCAxOSwg
MjAyMiBhdCAxMTowNjoyMlBNICswMzAwLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+ID4gUHJv
Z3JhbW1pbmcgb2YgUU1QIFBDSWUgUEhZcyBzbGlnaHRseSBkaWZmZXJzIGJldHdlZW4gUkMgYW5k
IEVQIG1vZGVzLgo+ID4KPiA+IEN1cnJlbnRseSBib3RoIHFjb20gYW5kIHFjb20tZXAgUENJZSBj
b250cm9sbGVycyBzZXR1cCB0aGUgUEhZIGluIHRoZQo+ID4gZGVmYXVsdCBtb2RlLCBtYWtpbmcg
aXQgaW1wb3NzaWJsZSB0byBzZWxlY3QgYXQgcnVudGltZSB3aGV0aGVyIHRoZSBQSFkKPiA+IHNo
b3VsZCBiZSBydW5uaW5nIGluIFJDIG9yIGluIEVQIG1vZGVzLiBVc3VhbGx5IHRoaXMgaXMgbm90
IGFuIGlzc3VlLAo+ID4gc2luY2UgZm9yIG1vc3QgZGV2aWNlcyBvbmx5IHRoZSBSQyBtb2RlIGlz
IHVzZWQsIHdoaWxlIGZvciBzb21lIChTRFg1NSkKPiA+IHRoZSBFUCBtb2RlIGlzIHVzZWQgd2l0
aG91dCBzdXBwb3J0IGZvciB3b3JraW5nIGFzIHRoZSBSQy4KPiA+Cj4KPiBTRFg1NSBjb3VsZCB3
b3JrIGluIFJDIG1vZGUgYWxzby4gU3VwcG9ydCBpcyBvbiB0aGUgd2F5Lgo+Cj4gPiBTb21lIG9m
IHRoZSBRdWFsY29tbSBwbGF0Zm9ybXMgd291bGQgc3RpbGwgYmVuZWZpdCBmcm9tIGJlaW5nIGFi
bGUgdG8KPiA+IHN3aXRjaCBiZXR3ZWVuIFJDIGFuZCBFUCBkZXBlbmRpbmcgb24gdGhlIGRyaXZl
ciBiZWluZyB1c2VkLiBXaGlsZSBpdCBpcwo+ID4gcG9zc2libGUgdG8gdXNlIGRpZmZlcmVudCBj
b21wYXQgc3RyaW5ncyBmb3IgdGhlIFBIWSBkZXBlbmRpbmcgb24gdGhlCj4gPiBtb2RlLCBpdCBz
ZWVtcyBsaWtlIGFuIGluY29ycmVjdCBhcHByb2FjaCwgc2luY2UgdGhlIFBIWSBkb2Vzbid0IGRp
ZmZlcgo+ID4gYmV0d2VlbiB1c2VjYXNlcy4gSXQncyB0aGUgUENJZSBjb250cm9sbGVyLCB3aG8g
c2hvdWxkIGRlY2lkZSBob3cgdG8KPiA+IGNvbmZpZ3VyZSB0aGUgUEhZLgo+ID4KPiA+IFRoaXMg
cGF0Y2ggc2VyaWVzIGltcGxlbWVudHMgdGhlIGFiaWxpdHkgdG8gc2VsZWN0IGJldHdlZW4gUkMg
YW5kIEVQCj4gPiBtb2RlcywgYnkgYWxsb3dpbmcgdGhlIFBDSWUgUU1QIFBIWSBkcml2ZXIgdG8g
c3dpdGNoIGJldHdlZW4KPiA+IHByb2dyYW1taW5nIHRhYmxlcy4KPiA+Cj4KPiBUaGlzIGlzIHJl
YWxseSBuaWNlISBPbiB0aGUgY2FzZSBvZiBTRFg1NSwgdGhlcmUgaXMgYSBzaW5nbGUgUEhZIGFu
ZCBQQ0llCj4gY29udHJvbGxlciB0aGF0IGlzIGJlaW5nIHVzZWQgYXMgYm90aCBSQyBhbmQgRVAg
ZGVwZW5kaW5nIG9uIHRoZSB1c2VjYXNlLiBXaGlsZQo+IGl0IG1ha2VzIHNlbnNlIHRvIHVzZSBh
IGRpZmZlcmVudCBQQ0llIG5vZGUgYmFzZWQgb24gdXNlY2FzZSwgaXQgZG9lcyBub3QgZm9yCj4g
dGhlIFBIWS4gU28gdGhlIHJ1bnRpbWUgc3dpdGNoIGlzIGEgbmVhdCB3YXkgb2YgaGFuZGxpbmcg
dGhlIGRpZmZlcmVuY2VzLgo+Cj4gSSd2ZSBwcm92aWRlZCBteSByZXZpZXcgZm9yIHRoZSBwYXRj
aGVzLiBCdXQgZm9yIHRoZSBuZXh0IGl0ZXJhdGlvbiwgeW91IGNvdWxkCj4gcmVtb3ZlIHRoZSBS
RkMgdGFnLgoKVGhhbmtzIGZvciB0aGUgcmV2aWV3IQoKPiBBbHNvLCBwbGVhc2UgbWVudGlvbiB0
aGUgZGVwZW5kZW5jeSBvZiB0aGUgc2VyaWVzIGluIHRoZSBjb3ZlciBsZXR0ZXIgaWYgYW55Lgo+
IExpa2UgdGhpcyBvbmUgZGVwZW5kcyBvbiB5b3VyIHByZXZpb3VzIFBIWSBjbGVhbnVwIHNlcmll
cy4gSXQgd2lsbCBoZWxwCj4gbWFpbnRhaW5lcnMgd2hpbGUgcGlja2luZyB0aGUgcGF0Y2hlcy4K
CkFjay4gSG93ZXZlciB0aGUgUEhZIHNlcmllcyBhcmUgYWxyZWFkeSBwYXJ0IG9mIHBoeS9uZXh0
LCB0aHVzIEkKb21pdHRlZCBtZW50aW9uaW5nIHRoZW0uCgo+Cj4gVGhhbmtzIGEgbG90IGZvciB0
aGUgc2VyaWVzIQo+Cj4gUmVnYXJkcywKPiBNYW5pCj4KPiA+IERtaXRyeSBCYXJ5c2hrb3YgKDQp
Ogo+ID4gICBwaHk6IHFjb20tcW1wLXBjaWU6IHNwbGl0IHJlZ2lzdGVyIHRhYmxlcyBpbnRvIHBy
aW1hcnkgYW5kIHNlY29uZGFyeQo+ID4gICAgIHBhcnQKPiA+ICAgcGh5OiBxY29tLXFtcC1wY2ll
OiBzdXBwb3Igc2VwYXJhdGUgdGFibGVzIGZvciBFUCBtb2RlCj4gPiAgIFBDSTogcWNvbTogY2Fs
bCBwaHlfc2V0X21vZGVfZXh0KCkKPiA+ICAgUENJOiBxY29tLWVwOiBjYWxsIHBoeV9zZXRfbW9k
ZV9leHQoKQo+ID4KPiA+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20tZXAu
YyB8ICAgNCArCj4gPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMgICAg
fCAgIDQgKwo+ID4gIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2llLmMgIHwg
MTU1ICsrKysrKysrKysrKy0tLS0tLS0tLS0KPiA+ICAzIGZpbGVzIGNoYW5nZWQsIDk2IGluc2Vy
dGlvbnMoKyksIDY3IGRlbGV0aW9ucygtKQo+ID4KPiA+IC0tCj4gPiAyLjM1LjEKPiA+Cj4KPiAt
LQo+IOCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40K
Ci0tIApXaXRoIGJlc3Qgd2lzaGVzCkRtaXRyeQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
