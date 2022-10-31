Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A2D3ECAAA1
	for <linux-phy@archiver.kernel.org>; Mon, 31 Oct 2022 14:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xaYXymGY9OgtbWn5m2D7SGHFqVGVoyDOkHH42xxH0iA=; b=J566E76CeXlK5t
	yw+wmzENfp/pcq+0VM5tL6ah+iDjraCl+U/sg+iMhROxblDU1TSkC2oLM5O5nxf9GlB/SIQmegQqr
	qiMMQdDx9z/jmLPuNAgvIT/RolYAACQN4k0D17KDVQTtKTL8rvcvxNJ7CBZBvmJ6pvEo/a4OolnsQ
	FX3vUywGe95emGqkPntM9J6MToXnONtjEmwSDn3bPY/OzBWre+E2Erjq4SvWSy+DfHtbK1p+oicVQ
	Qxc1hLD0cp/5FlEq3XHw6YutvT1NBJGLA7ejJOHsAM8qT7GeK4dEy59MV93b6gZ6V0IJ3KjaQ4CJ8
	8z77UyfhJ/yD/+OVhmXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opW83-00CNlz-Rb; Mon, 31 Oct 2022 14:51:07 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opW81-00CNkC-10
	for linux-phy@lists.infradead.org; Mon, 31 Oct 2022 14:51:06 +0000
Received: by mail-pl1-x62c.google.com with SMTP id k7so1231346pll.6
        for <linux-phy@lists.infradead.org>; Mon, 31 Oct 2022 07:51:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LgaSg3YilW0bY3wb0PfV4C2o6RkFEiky2r/QW3cr95Q=;
        b=NDX+/pbFibStxDbfcIKfe9Cw1g+cwYVRJeqt5kJcdCi5TKhYHmo+n1CuKGLOqdKfP2
         GdYXCuDUGPno200z7QLnM/0kZI3H5VtIGCuXDrXLNUNoi1M2H7/GPm2ZTE8W0aH7TMj0
         2tg8a9Z5lQ+FMlKEPqjqhyENTtWE85NpEIDSIQSy0kdA8zvhUXrZq7P230w0EUmx4r2C
         N8omqUJH8CmYmXeGofaell5BDTX/4R/PRuQmsHkJ3lr7MCScv4rPvYORfr15pG6v+YTy
         G9+RyL2zZJIZSW+V63spiZ9cxugZvL2X5UkIVxh7I1Ql+dc9vayvpM86NFJYW/rt46uU
         J+8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LgaSg3YilW0bY3wb0PfV4C2o6RkFEiky2r/QW3cr95Q=;
        b=FC7D/Aws3KZM8rQKZsBioawoTUnmL/EDHRuoc9iFJNxhe00ZEdbSTMJsI7CKzfL17j
         5N2YdCb8tiJyv7NwhOnj6oYiEd63Qfe9ElG4+9mMkuGtU1ypVSz2vQ6bHOT3xroUC8xm
         PHRDu14MXgttX663lGGRsKIIxrlbFZNFGYpHqcHdXcGdxY7qCqk14DqOgDlmT2yQX7vq
         6x5QCufHJb4O73ByOb70GMUMBY3Z7dN2TYBoGdXRltj35uf6/qY37mBcY8oZwu21QD3k
         2l50bii3wB5cFXa4RnQxoflDe52zcT/JiRWIDZGP8EQg460CrM876/jHBBy/rCze6cbK
         A6Cg==
X-Gm-Message-State: ACrzQf3Lij+4Dm8Q/ulNjnWyBAJYYrRdOGr2qvZXleQgX3vc+hAcJvzA
	T+vtk1Ml7wUYeFSqJ/OeB7WZ
X-Google-Smtp-Source: AMsMyM6Ca2btqqaMDtFBtgxJEd4UJ/gTOBby0iJg7mkBNzulg11Wh9oaaSrw15z7NN+qZrNYh7rIuQ==
X-Received: by 2002:a17:90a:e606:b0:212:f100:22e3 with SMTP id j6-20020a17090ae60600b00212f10022e3mr32735016pjy.83.1667227863165;
        Mon, 31 Oct 2022 07:51:03 -0700 (PDT)
Received: from thinkpad ([117.193.209.221])
        by smtp.gmail.com with ESMTPSA id l6-20020a622506000000b0056c08c87196sm4705475pfl.48.2022.10.31.07.50.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Oct 2022 07:51:01 -0700 (PDT)
Date: Mon, 31 Oct 2022 20:20:51 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
	vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	konrad.dybcio@somainline.org, robh+dt@kernel.org,
	quic_cang@quicinc.com, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org
Subject: Re: [PATCH 12/15] scsi: ufs: ufs-qcom: Fix the Qcom register name
 for offset 0xD0
Message-ID: <20221031145051.GB10515@thinkpad>
References: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
 <20221029141633.295650-13-manivannan.sadhasivam@linaro.org>
 <9c1ca51d-2202-8279-cecb-12792385b18d@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9c1ca51d-2202-8279-cecb-12792385b18d@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_075105_107142_0EC1163B 
X-CRM114-Status: GOOD (  15.98  )
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

T24gU3VuLCBPY3QgMzAsIDIwMjIgYXQgMDE6MDY6MjBBTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBPbiAyOS8xMC8yMDIyIDE3OjE2LCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3Jv
dGU6Cj4gPiBGaXggdGhlIHJlZ2lzdGVyIG5hbWUgdXNlZCBmb3Igb2Zmc2V0IDB4RDAuIFRoZSBj
b3JyZWN0IG5hbWUgaXMKPiA+IFJFR19VRlNfUEFSQU0wLgo+IAo+IFRoZSB2ZW5kb3Iga2VybmVs
cyBzdGFydGluZyBmcm9tIDMuMTAgZGVmaW5lIHRoaXMgcmVnaXN0ZXIgYXMKPiBSRVRSWV9USU1F
Ul9SRUcgKGJ1dCBpdCBpcyB1bnVzZWQpLiBJJ2Qgc3VnZ2VzdCBhZGRpbmcgYSBjb21tZW50IGFi
b3V0IHRoZQo+IG9sZGVyIHJlZ2lzdGVyIG5hbWUuCj4gCgpNYWtlcyBzZW5zZSB0byBtZS4KClRo
YW5rcywKTWFuaQoKPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFt
IDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4KPiA+IC0tLQo+ID4gICBkcml2ZXJz
L3Vmcy9ob3N0L3Vmcy1xY29tLmggfCAyICstCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy91ZnMv
aG9zdC91ZnMtcWNvbS5oIGIvZHJpdmVycy91ZnMvaG9zdC91ZnMtcWNvbS5oCj4gPiBpbmRleCA2
Y2IwNzc2NDU2YjMuLjIxNGVhNTBhY2FiOSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvdWZzL2hv
c3QvdWZzLXFjb20uaAo+ID4gKysrIGIvZHJpdmVycy91ZnMvaG9zdC91ZnMtcWNvbS5oCj4gPiBA
QCAtMzMsNyArMzMsNyBAQCBlbnVtIHsKPiA+ICAgCVJFR19VRlNfVFhfU1lNQk9MX0NMS19OU19V
UyAgICAgICAgID0gMHhDNCwKPiA+ICAgCVJFR19VRlNfTE9DQUxfUE9SVF9JRF9SRUcgICAgICAg
ICAgID0gMHhDOCwKPiA+ICAgCVJFR19VRlNfUEFfRVJSX0NPREUgICAgICAgICAgICAgICAgID0g
MHhDQywKPiA+IC0JUkVHX1VGU19SRVRSWV9USU1FUl9SRUcgICAgICAgICAgICAgPSAweEQwLAo+
ID4gKwlSRUdfVUZTX1BBUkFNMCAgICAgICAgICAgICAgICAgICAgICA9IDB4RDAsCj4gPiAgIAlS
RUdfVUZTX1BBX0xJTktfU1RBUlRVUF9USU1FUiAgICAgICA9IDB4RDgsCj4gPiAgIAlSRUdfVUZT
X0NGRzEgICAgICAgICAgICAgICAgICAgICAgICA9IDB4REMsCj4gPiAgIAlSRUdfVUZTX0NGRzIg
ICAgICAgICAgICAgICAgICAgICAgICA9IDB4RTAsCj4gCj4gLS0gCj4gV2l0aCBiZXN0IHdpc2hl
cwo+IERtaXRyeQo+IAoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7g
rprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
