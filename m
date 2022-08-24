Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B77E4C00140
	for <linux-phy@archiver.kernel.org>; Wed, 24 Aug 2022 14:58:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2d2qyACBkyxPvhxRJWTp30mUbs9sZARevNvbx19NblQ=; b=sv20co5LsbLhJU
	fjzaQBjRgfZdZ08mF+uRRxJ+g/MVDJTzVN10Kr8tlRV0yMh6dBqyMrfsiMuXXagEGFYIIY2jlZTMP
	sLY1ht7W9XTqf6x4i5WI4zesjw83PU7+vWn3TyOqGMhkNJ2M31eTTMPpBLSPUf8DX0lqDtVQS62xB
	Ht5Rhv5EbWpDCgt5MdDWnsD241s6YPQGdXMInrFuSbd78oAoWsMrVRhFb47IaGqPpMi1TQsAVOqxp
	NPmLjE5uI4izoU0Bgpgh4FaUhGMd3Jgp+mZy68LT2Aau3GFgnPbS07qyzQWRsLKdRaOoK/QZUUcnq
	OrzWFrT9oMFC7Dh19PCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQrpR-00DpNN-45; Wed, 24 Aug 2022 14:58:01 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQrpO-00DpLr-TE
	for linux-phy@lists.infradead.org; Wed, 24 Aug 2022 14:58:00 +0000
Received: by mail-pl1-x62c.google.com with SMTP id g8so11996435plq.11
        for <linux-phy@lists.infradead.org>; Wed, 24 Aug 2022 07:57:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc;
        bh=41sAcz9c3vs/nXk4pYq7pvmGQL8rf/lJNZMSCRKunZY=;
        b=BplH8rV9dJab5d0+huQtWC9Ga3VR4bg3HipSXAjQvMaPC6oYxdJTJiXgqlWuH1DceA
         uOZSt/F5WeWN5n+FyPXGEyDsyw/W/ZAA0Wgd+ntyacyrJKzcCOi+niQEJRx2Mh4/CAQM
         +ED8IqxRJHLZEIL6WZ/NHxeOBtogGNnCzyJ463hxwPDI2lFaEkyiZYbdXm/oFarHxA4o
         vzlHoWqqPtXcKldCP1U6FEOaDrqbDNgahQyWW0c3wHYzub3jLQ706KKpG3G71SOVat4V
         aI1KDvuSAwE+TcQaCZrWgTrNBsvR/gezSSHBieWOeAqaJgAD3Lt0egbewPt0HKhG6mlN
         knBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc;
        bh=41sAcz9c3vs/nXk4pYq7pvmGQL8rf/lJNZMSCRKunZY=;
        b=unGUzgpcNj3mtWDRfYquWgngZAqPXlvMG/pKok/XHBuU+gHAltj4B0KdJ2cwST6S1G
         s/SkRGNpkZ+apDdnq2mwG5QRAXTMrQkgT69qoJoQqDLbxsL7WlOSOcjkzulAL3DVhUZB
         Eq7u5eWUujso3sCXYNE3FpYpzqfjZVyCyCS9n7dTC0+mgQ/I+2PuVUIr7OWtlFRgh4pI
         0ltM5Z0Xq8B1jVuUWsNKySYZ8kDGVrze4LvYSiZLksx1BMqx9YGqKThv0g1SnfwV5M1t
         cp43ZrJXyVuaE3NAQvvKQe6JwAQcfCq7KfwF9liME53GjIbbRFKUjzl6XRXx3MnCbWzh
         GTUQ==
X-Gm-Message-State: ACgBeo1c3ByZ8bwsJmQeygXwmBjG9/H6nPRSdJX+riyDLBEsSiKvWZ5z
	OuZMsNj3n7k4IaDztvCHiwQ/HOPVLtZa
X-Google-Smtp-Source: AA6agR77UPEmdtKtAgeec0tOsknV1XD+1Mb+D7hmZ1LJDqjwAh3z8uumtlhAObxtWctNxqbgo6L6sw==
X-Received: by 2002:a17:90a:cb13:b0:1fb:1aab:4f72 with SMTP id z19-20020a17090acb1300b001fb1aab4f72mr8526798pjt.58.1661353078135;
        Wed, 24 Aug 2022 07:57:58 -0700 (PDT)
Received: from thinkpad ([117.207.24.28])
        by smtp.gmail.com with ESMTPSA id u9-20020a170902e5c900b00172fad607b3sm4842211plf.207.2022.08.24.07.57.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Aug 2022 07:57:57 -0700 (PDT)
Date: Wed, 24 Aug 2022 20:27:48 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v1 3/4] PCI: qcom: Setup PHY to work in RC mode
Message-ID: <20220824145748.GF4767@thinkpad>
References: <20220726203401.595934-1-dmitry.baryshkov@linaro.org>
 <20220726203401.595934-4-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220726203401.595934-4-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220824_075758_965112_CD5446E9 
X-CRM114-Status: GOOD (  15.29  )
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

T24gVHVlLCBKdWwgMjYsIDIwMjIgYXQgMTE6MzQ6MDBQTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBDYWxsIHBoeV9zZXRfbW9kZV9leHQoKSB0byBub3RpZnkgdGhlIFBIWSBkcml2
ZXIgdGhhdCB0aGUgUEhZIGlzIGJlaW5nCj4gdXNlZCBpbiB0aGUgUkMgbW9kZS4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBEbWl0cnkgQmFyeXNoa292IDxkbWl0cnkuYmFyeXNoa292QGxpbmFyby5vcmc+
CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2
YW1AbGluYXJvLm9yZz4KClRoYW5rcywKTWFuaQoKPiAtLS0KPiAgZHJpdmVycy9wY2kvY29udHJv
bGxlci9kd2MvcGNpZS1xY29tLmMgfCA0ICsrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0
aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ll
LXFjb20uYyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jCj4gaW5kZXgg
OTNkNzVjZGE0YjA0Li5mODVmMjU3OWMwODcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9wY2kvY29u
dHJvbGxlci9kd2MvcGNpZS1xY29tLmMKPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3
Yy9wY2llLXFjb20uYwo+IEBAIC0xNDg1LDYgKzE0ODUsMTAgQEAgc3RhdGljIGludCBxY29tX3Bj
aWVfaG9zdF9pbml0KHN0cnVjdCBkd19wY2llX3JwICpwcCkKPiAgCWlmIChyZXQpCj4gIAkJcmV0
dXJuIHJldDsKPiAgCj4gKwlyZXQgPSBwaHlfc2V0X21vZGVfZXh0KHBjaWUtPnBoeSwgUEhZX01P
REVfUENJRSwgMCk7Cj4gKwlpZiAocmV0KQo+ICsJCXJldHVybiBlcnJfZGVpbml0Owo+ICsKPiAg
CXJldCA9IHBoeV9wb3dlcl9vbihwY2llLT5waHkpOwo+ICAJaWYgKHJldCkKPiAgCQlnb3RvIGVy
cl9kZWluaXQ7Cj4gLS0gCj4gMi4zNS4xCj4gCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p
4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
