Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52A7CCA9ED1
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 08:45:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4W7EyKD3+SRcLZELZLAzjXsrQc9l4Ie6GVuMWOVeFVw=; b=XC4vkADZ7PJvxE
	3kPGct8y+ut72+QR4+SGULJuantfnXhAm84G+8wwKy0z/8X3nGbEed4NoNTihQO5dGy6PCiCmunwb
	ibMqP/slJppqmF/su8LdKGkEo0FyvkT7haOB13yZRPKRdEgVj2ip+1nB7Mb7Qw9BNupUXv41mjw1V
	2re+R9vDAPjO6+/gFbrh86VEsr+7LFdBq4zFFwlJ4XhcBWfKFjffAD1ua0halsMQMrRA2UtpZgBLg
	SaIsufFMzmHszN5JQr3CQPY2G7jqvKAb3fE3wwbPfujmMJ21Z3YkiyYRIBjRzp56l53gLH1icNLhy
	CKycj9yb/K15xThXsJCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGBel-00000009yid-04Y3;
	Mon, 12 Oct 2026 08:45:15 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGBej-00000009yi1-22gm
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 08:45:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D46D540F18;
	Mon, 12 Oct 2026 08:45:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F17EF1F0089B;
	Mon, 12 Oct 2026 08:45:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791794712;
	bh=mLq/ymuCxjQn6Fzuy7KDen+WF8JmVHF/Ne4WHKOpXH8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Y5RvL1SrOadQ661Atpug9vUhm8R68LIzDdNNQP6l/xanOO4p9RnJNrWjpdsH2fyh8
	 AHv7N7XQHhr5E2H+q/DiKsUTsFNUMFfl3l5Oexgp7GGtVfXHZrlTkrRvINDnpIH1LF
	 xBKJf4vXeUSYxcIO37YNI90Qo1tovx9xysOWB54fc23x8EecvHidGoiVTxfT1RWF++
	 hILSrrQCZHzLz2O2iM09gbnvtyv45YrqtjEIK6uy4HwBEvX+8eIG4VkXzFqQ5lLF25
	 Rh5ad5B+B2CE08yRfGAEdw/d7azKCkfmyOXzGZci21h+b1Tiuj/3susKvIA7vd5P3z
	 9opJsy4OFHoSw==
Date: Mon, 12 Oct 2026 14:14:59 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bartosz Golaszewski <brgl@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Xu Yang <xu.yang_2@nxp.com>, Peng Fan <peng.fan@nxp.com>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Peter Chen <peter.chen@kernel.org>, Pavankumar Kondeti <quic_pkondeti@quicinc.com>, 
	Stephen Boyd <stephen.boyd@linaro.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-phy@lists.infradead.org, Greg Kroah-Hartman <gregkh@suse.de>, 
	Peter Chen <peter.chen@nxp.com>
Subject: Re: [PATCH 06/10] usb: chipidea: msm: keep the glue device
 runtime-active
Message-ID: <asydU5qSPDhJa65R@debian>
References: <20260810-msm8974-usb-hsic-v1-0-e5f93ea76ffa@oss.qualcomm.com>
 <20260810-msm8974-usb-hsic-v1-6-e5f93ea76ffa@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260810-msm8974-usb-hsic-v1-6-e5f93ea76ffa@oss.qualcomm.com>
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

T24gTW9uLCBBdWcgMTAsIDIwMjYgYXQgMDY6NDI6MTBQTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBUaGUgbXNtIGNoaXBpZGVhIGdsdWUgZW5hYmxlcyBydW50aW1lIFBNIHdpdGgg
cG1fcnVudGltZV9ub19jYWxsYmFja3MoKQo+IGFuZCBub3RoaW5nIHBpbm5pbmcgaXQgYWN0aXZl
LiBSaWdodCBhZnRlciBhIHN1Y2Nlc3NmdWwgcHJvYmUgdGhlCj4gZHJpdmVyIGNvcmUncyBwbV9y
ZXF1ZXN0X2lkbGUoKSBydW50aW1lLXN1c3BlbmRzIHRoZSBnbHVlICh0aGUgY2kgY29yZQo+IGNo
aWxkIGhhcyBydW50aW1lIFBNIGRpc2FibGVkLCBzbyBpdCBkb2VzIG5vdCBob2xkIGl0cyBwYXJl
bnQpLAoKV2h5IGRvZXMgdGhlIGNoaWxkJ3MgcnVudGltZSBQTSBkaXNhYmxlZCBmaXJzdCBvZiBh
bGw/Cgo+IGFuZAo+IHdoZW4gdGhlIGdsdWUgc2l0cyBpbiBhIHBvd2VyIGRvbWFpbiAtIHRoZSBI
U0lDIGluc3RhbmNlcyBsaXZlIGluIHRoZQo+IFVTQl9IU19IU0lDIEdEU0Mgb24gbXNtODk3NCAt
IGdlbnBkIHRoZW4gcG93ZXJzIHRoZSBkb21haW4gb2ZmCj4gdW5kZXJuZWF0aCB0aGUgcnVubmlu
ZyBjb250cm9sbGVyLiBUaGUgRUhDSSByZWdpc3RlciBmaWxlIHJlYWRzIGJhY2sKPiB6ZXJvZXMs
IGFuIG9uYm9hcmQgaHViJ3MgY29ubmVjdCBpcyBuZXZlciBzZWVuLCBhbmQgc3Vic2VxdWVudCBi
dXMKPiBhY2Nlc3NlcyBpbnRvIHRoZSB1bnBvd2VyZWQgYmxvY2sgd2VkZ2UgdGhlIGludGVyY29u
bmVjdCwgZXZlbnR1YWxseQo+IHRha2luZyB0aGUgd2hvbGUgU29DIGRvd24uCj4gCj4gUGluIHRo
ZSBnbHVlIHJ1bnRpbWUtYWN0aXZlIHNvIHRoZSBkb21haW4gc3RheXMgcG93ZXJlZCBmb3IgdGhl
Cj4gbGlmZXRpbWUgb2YgdGhlIGNvbnRyb2xsZXIuIFByb3BlciBsb3ctcG93ZXIgaGFuZGxpbmcg
Y2FuIGxhdGVyIGJlCj4gYnVpbHQgb24gdGhlIGNoaWxkJ3MgcnVudGltZSBQTSB0b2dldGhlciB3
aXRoIHRoZSBIU0lDIHdha2V1cAo+IGludGVycnVwdC4KPiAKClRoZSBjb21taXQgbWVzc2FnZSBj
b25mdXNlcyBiZXR3ZWVuIFBNIHJ1bnRpbWUgJ2FjdGl2ZScgYW5kICd1c2FnZSBjb3VudCcuCk1h
cmtpbmcgYSBkZXZpY2UgYXMgcnVudGltZSBQTSAnYWN0aXZlJyB3b3VsZG4ndCBwcmV2ZW50IGl0
IGZyb20gYmVpbmcKc3VzcGVuZGVkLCBidXQgb25seSBpbmNyZWFzaW5nIGl0J3MgJ3VzYWdlIGNv
dW50JyB3aWxsLiBXaGljaCBpcyB3aGF0IHRoaXMgcGF0Y2gKaXMgZG9pbmcgYnR3LCBidXQganVz
dCB0aGF0IHRoZSB0ZXJtaW5vbG9neSBpcyBub3QgY29ycmVjdC4KCi0gTWFuaQoKLS0gCuCuruCu
o+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
