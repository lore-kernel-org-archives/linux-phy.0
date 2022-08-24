Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DC7EC00140
	for <linux-phy@archiver.kernel.org>; Wed, 24 Aug 2022 15:07:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L6yTEEk1JDcSFho6tHjHz2p9zIthx+Z7Xe6YlQVPUwc=; b=WBJdfKyd9HnRkv
	37lo43CP3wpAbOQo/P3EyRDw+vnfBvFo838sPZCreyoRijcA3divs/ixLRO7oVtngO9i4cFgbFrMj
	3LmzjE0nvwJyQEtdB8UJpOmjdS0snfSmW9Y6UZEKsFdgz3v89cw4pIiLhTyy82r2A5KwWg1UMifhl
	CAXaOX9JCPfFuKdGMXtwRIboMDb1CKxxOUDFXygB2TF3RQynDZTprmS4T1bWb1xYUjN1gtJ6CiRmr
	2zWM14lnWAvDi6gJH/xquPGOXPiKqlK1MqAg9PoEsBu25L5+/Ys0kLDzYpw26GydBRRbBr3iescyc
	InisSG33P4FAYIKzHK+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQryO-00DtZw-Mh; Wed, 24 Aug 2022 15:07:16 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQryL-00DtWC-Oh
	for linux-phy@lists.infradead.org; Wed, 24 Aug 2022 15:07:15 +0000
Received: by mail-pg1-x530.google.com with SMTP id r69so15284639pgr.2
        for <linux-phy@lists.infradead.org>; Wed, 24 Aug 2022 08:07:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc;
        bh=en5fJioWb1/tYEyOYyeymC+F2mSt5gCOg/3YQO22W/s=;
        b=kmCU1wRgOodNOCpDQZjRxGbuZn9IFI1hLbQdaa4sSq5wQ9RROkfwkRrG/Rp/8n83lb
         rc00wtM8LXLy9/SA2AIkJwV5ORHesIwyVxoK5HRzXziJETcKR23ORwxKipF1UGglYVpm
         mL1HEdU4h9uiX6F5dhtaz1Ni7e2FB/ZzORfCWPJKyrp4dlBaRfG4dXQdoEmS0VxSicRm
         Yyzdmn3iMplldGN2NooCN8di1J1LMBoBfuwEf+bmtdbZiXqgiGqWVkxSVAUzfVINE4z9
         /T6JsvjbjCVTszRlwuHZnaLWOX0s1uxD2ksoNU5+bez5Utccbtx+QyHUtlnMZq1tMbx7
         OLkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc;
        bh=en5fJioWb1/tYEyOYyeymC+F2mSt5gCOg/3YQO22W/s=;
        b=Iduh5iBPgb+77aDv/uu7If7+5pSqJlSNlW38UDZhlGMZ7BFA0YaKjVUNPwhLrA5quE
         rto3Z8WQzitVX2FaTqWI9KmbUIBd9VQo8N7R9nJWbF3yp6Ps9v92y4nVc0b5xbXE9cmu
         qBE+DOMa3Plz07nRmZzSSEkRYpFChkTalsNvEw5o6bf9Q1B7b4jDnsFjotd0AblTsHQT
         wlO9Ie7sCRFKc6By6kkZKl/5ajgka3ttiFF/Nfv1gFSSxoXcve9fdMn5NGmpI8sq9oKu
         j1rYfJGPVcay93BKpJwwv9dTG+KZGuYm/nqhfrmuAcWqe6nW7H5uuET42NB1ydZ8FwDr
         l7mQ==
X-Gm-Message-State: ACgBeo1ky1rhsf/drL5SIQ2rUYQhwvDb8teWCO+GpA3fwlT6ooywScfj
	LIMaa1049o7jRW5/T3GzVT7F
X-Google-Smtp-Source: AA6agR4I9qbzYAiGbI+cKiSPz6vV8dLS8BKWrwUL0WyVPYcNCgprOjlUILqDhdnHLbLF43532+mQ7w==
X-Received: by 2002:a65:6cc7:0:b0:42a:4d40:8dc1 with SMTP id g7-20020a656cc7000000b0042a4d408dc1mr19894592pgw.321.1661353628331;
        Wed, 24 Aug 2022 08:07:08 -0700 (PDT)
Received: from thinkpad ([117.207.24.28])
        by smtp.gmail.com with ESMTPSA id q4-20020aa79604000000b005367a03d566sm7673082pfg.112.2022.08.24.08.07.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Aug 2022 08:07:07 -0700 (PDT)
Date: Wed, 24 Aug 2022 20:36:58 +0530
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
Message-ID: <20220824150658.GG4767@thinkpad>
References: <20220726203401.595934-1-dmitry.baryshkov@linaro.org>
 <20220726203401.595934-4-dmitry.baryshkov@linaro.org>
 <20220824145748.GF4767@thinkpad>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220824145748.GF4767@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220824_080713_827627_0B2A67F2 
X-CRM114-Status: GOOD (  18.40  )
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

T24gV2VkLCBBdWcgMjQsIDIwMjIgYXQgMDg6Mjc6NThQTSArMDUzMCwgTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIHdyb3RlOgo+IE9uIFR1ZSwgSnVsIDI2LCAyMDIyIGF0IDExOjM0OjAwUE0gKzAzMDAs
IERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gPiBDYWxsIHBoeV9zZXRfbW9kZV9leHQoKSB0byBu
b3RpZnkgdGhlIFBIWSBkcml2ZXIgdGhhdCB0aGUgUEhZIGlzIGJlaW5nCj4gPiB1c2VkIGluIHRo
ZSBSQyBtb2RlLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBEbWl0cnkgQmFyeXNoa292IDxkbWl0
cnkuYmFyeXNoa292QGxpbmFyby5vcmc+Cj4gCj4gUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2Fk
aGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+Cj4gCj4gVGhhbmtzLAo+
IE1hbmkKPiAKPiA+IC0tLQo+ID4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNv
bS5jIHwgNCArKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+ID4gCj4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMgYi9k
cml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20uYwo+ID4gaW5kZXggOTNkNzVjZGE0
YjA0Li5mODVmMjU3OWMwODcgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVy
L2R3Yy9wY2llLXFjb20uYwo+ID4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNp
ZS1xY29tLmMKPiA+IEBAIC0xNDg1LDYgKzE0ODUsMTAgQEAgc3RhdGljIGludCBxY29tX3BjaWVf
aG9zdF9pbml0KHN0cnVjdCBkd19wY2llX3JwICpwcCkKPiA+ICAJaWYgKHJldCkKPiA+ICAJCXJl
dHVybiByZXQ7Cj4gPiAgCj4gPiArCXJldCA9IHBoeV9zZXRfbW9kZV9leHQocGNpZS0+cGh5LCBQ
SFlfTU9ERV9QQ0lFLCAwKTsKPiA+ICsJaWYgKHJldCkKPiA+ICsJCXJldHVybiBlcnJfZGVpbml0
OwoKT29wcy4uLiBNaXNzZWQgdGhpcyBvbmUuIFNob3VsZCBiZSBnb3RvIGVycl9kZWluaXQ7CgpU
aGFua3MsCk1hbmkKCj4gPiArCj4gPiAgCXJldCA9IHBoeV9wb3dlcl9vbihwY2llLT5waHkpOwo+
ID4gIAlpZiAocmV0KQo+ID4gIAkJZ290byBlcnJfZGVpbml0Owo+ID4gLS0gCj4gPiAyLjM1LjEK
PiA+IAo+IAo+IC0tIAo+IOCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprg
rr/grrXgrq7gr40KCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a
4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
