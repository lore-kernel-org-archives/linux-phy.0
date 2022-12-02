Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60420C4167B
	for <linux-phy@archiver.kernel.org>; Fri,  2 Dec 2022 07:32:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c2jWhuiV5ban5hchuG0/fb00DvATcXmKSCL4bgLXeZk=; b=hRtp59ZQeh9HH7
	foUsNvYi8NaQRGv49TU6n4F/+ochuJC9lz4xND37b+Y9S0lS+2heFXoZj+/ylPlo6Eg20OvFRu1Bk
	Q8AZ1AuDrZc9erFPpX5p8etXy9iThy/Ok/Qks41GHON3OJ+U9oswC+r2j9Pr6o9nwvOqGa3hijbwS
	ZNMt47ITH6qGkW9dqbXJcz9eISP2jsxZ8Pdt1wYPPA4DrQisSUK5NYrsAl42CIaFJuR+h4Hhgg31q
	+yEoY5evWY2P8xGTwUDwrjxCoG7VUtgHm3+PDv+E+Q/isjdJmoGmxUcX+J1MB7eftxRDBPe8NCBin
	HB7pt36N9QJbZ92rV1tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p10XN-00EAPf-Qn; Fri, 02 Dec 2022 07:32:45 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p10XL-00EAO5-Cq
	for linux-phy@lists.infradead.org; Fri, 02 Dec 2022 07:32:44 +0000
Received: by mail-pg1-x531.google.com with SMTP id h193so3715029pgc.10
        for <linux-phy@lists.infradead.org>; Thu, 01 Dec 2022 23:32:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XMc+fVt7lMfpPfThQ2LlpZjE3HoFIHWqL+MbvHeGkEw=;
        b=oplmIpKFwFcFi6/ERjvfl0+tQ/V8jWbzFESczzbKPDTgQVNfrp3vRG7+gCT0Z/b5+x
         xD49t/+X9FZqYePZCmfUzwJ76isJLV2MfDBd8TIa14UmO2p+8T8TfJyMoVVbqop8j3Y1
         c9whpqskeIMG7M5bClR1rdr9+J7TL13EmVakLaTb5DnZ3jHD+EYCrMC3Cz0UOtkIgSz+
         eKLOo6caI46pIEkRUIOPeVIR+Yrv6vg6EcXZjfgGIzy8TJ+03Rmh6K5+CUWJIxhocDCu
         A9HSaXvtbQoZswTpzajRjLWm5edk/rbuNicq/DUsB7ivUAbrOmBS7DcgUqSSzWGDkgSL
         uZ2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XMc+fVt7lMfpPfThQ2LlpZjE3HoFIHWqL+MbvHeGkEw=;
        b=SzwSCuIS5mBdcPSYwz0K0eoPFR145ix/5U836ENeof98znHsVBItc9HAnWOoNXRJ4c
         VGS/J/9tp6/Awy/5ELYzr6usIO6t/eeDnhNUtQ/nKRI0nC1v4qcG0kfayr+I1Fz6tY0h
         ROpvRYU05rsiFehiEr5l5HFjw4ib63MQnZ0zLK8PvdqUGOj4RedBzO8DcZ3mxQYXsc81
         GzJe7i9WyHFz1CO577gOQZOsSSxhH4GP9fkYssIl++WIu9BnVVMFfNN/yPTtlx6O7eP3
         f/HnuxaPs+A3t7JCOc4Tsp/9Z4ngwROFhjpF191Prux1KGT0rilbyg2BCzVwnMy5p2tR
         BEGQ==
X-Gm-Message-State: ANoB5pmdqbvsmgqm3A3YZs+jlkEzM30kAS5mIo49wjKfQ9RCviwhtqAW
	+LEn8+jx7HGWbEIGmbiyvE/R
X-Google-Smtp-Source: AA0mqf7qXeTcy+fGt0iYZFNf/ZVn4x0iMUwzgp35UZl85c396Ki0j3U9GoxMup5q3KyaRCUXr3odpg==
X-Received: by 2002:a63:f80a:0:b0:478:427a:85f0 with SMTP id n10-20020a63f80a000000b00478427a85f0mr14001019pgh.124.1669966360305;
        Thu, 01 Dec 2022 23:32:40 -0800 (PST)
Received: from thinkpad ([27.111.75.154])
        by smtp.gmail.com with ESMTPSA id jg20-20020a17090326d400b00189bf5deda3sm317712plb.133.2022.12.01.23.32.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 23:32:38 -0800 (PST)
Date: Fri, 2 Dec 2022 13:02:31 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Bart Van Assche <bvanassche@acm.org>
Cc: martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
	vkoul@kernel.org, quic_cang@quicinc.com, quic_asutoshd@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
	dmitry.baryshkov@linaro.org, ahalaney@redhat.com,
	abel.vesa@linaro.org, alim.akhtar@samsung.com, avri.altman@wdc.com
Subject: Re: [PATCH v4 18/23] scsi: ufs: core: Add reinit_notify() callback
Message-ID: <20221202073231.GA5356@thinkpad>
References: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org>
 <20221201174328.870152-19-manivannan.sadhasivam@linaro.org>
 <fa0e6167-a893-4eb7-efff-8f378ee819e1@acm.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fa0e6167-a893-4eb7-efff-8f378ee819e1@acm.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_233243_473422_CA9EFA9D 
X-CRM114-Status: GOOD (  15.15  )
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

T24gVGh1LCBEZWMgMDEsIDIwMjIgYXQgMTA6MDU6NTdBTSAtMDgwMCwgQmFydCBWYW4gQXNzY2hl
IHdyb3RlOgo+IE9uIDEyLzEvMjIgMDk6NDMsIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToK
PiA+IHJlaW5pdF9ub3RpZnkoKSBjYWxsYmFjayBjYW4gYmUgdXNlZCBieSB0aGUgVUZTIGNvbnRy
b2xsZXJzIHRvIHBlcmZvcm0KPiA+IGNoYW5nZXMgcmVxdWlyZWQgZm9yIFVGUyBjb3JlIHJlaW5p
dC4KPiAKPiBXaGF0IGRvZXMgIlVGUyBjb3JlIiByZWZlciB0byBpbiB0aGlzIGNvbnRleHQ/IFNo
b3VsZCAiVUZTIGNvcmUiIHBlcmhhcHMgYmUKPiBjaGFuZ2VkIGludG8gIlVGUyBjb250cm9sbGVy
IHBoeSI/Cj4gCgpCeSAiVUZTIGNvcmUiIEkgbWVhbnQgdGhlIFVGU0hDRCBkcml2ZXIuIFdpbGwg
Y2hhbmdlIGl0LgoKPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL3Vmcy91ZnNoY2QuaCBiL2luY2x1
ZGUvdWZzL3Vmc2hjZC5oCj4gPiBpbmRleCA1Y2Y4MWRmZjYwYWEuLmFmOGM5NTA3N2Q5NiAxMDA2
NDQKPiA+IC0tLSBhL2luY2x1ZGUvdWZzL3Vmc2hjZC5oCj4gPiArKysgYi9pbmNsdWRlL3Vmcy91
ZnNoY2QuaAo+ID4gQEAgLTI5Nyw2ICsyOTcsNyBAQCBzdHJ1Y3QgdWZzX3B3cl9tb2RlX2luZm8g
ewo+ID4gICAgKiBAY29uZmlnX3NjYWxpbmdfcGFyYW06IGNhbGxlZCB0byBjb25maWd1cmUgY2xv
Y2sgc2NhbGluZyBwYXJhbWV0ZXJzCj4gPiAgICAqIEBwcm9ncmFtX2tleTogcHJvZ3JhbSBvciBl
dmljdCBhbiBpbmxpbmUgZW5jcnlwdGlvbiBrZXkKPiA+ICAgICogQGV2ZW50X25vdGlmeTogY2Fs
bGVkIHRvIG5vdGlmeSBpbXBvcnRhbnQgZXZlbnRzCj4gPiArICogQHJlaW5pdF9ub3RpZnk6IGNh
bGxlZCB0byBub3RpZnkgVUZTIGNvcmUgcmVpbml0Cj4gCj4gUGxlYXNlIG1ha2UgdGhpcyBjb21t
ZW50IG1vcmUgY2xlYXIuIE5vYm9keSBrbm93cyB3aGF0ICJVRlMgY29yZSIgbWVhbnMuCj4gCgpX
aWxsIGNoYW5nZSBpdCB0byAiY2FsbGVkIHRvIG5vdGlmeSByZWluaXQgb2YgVUZTSENEIGR1cmlu
ZyBtYXggZ2VhciBzd2l0Y2giCgpUaGFua3MsCk1hbmkKCj4gVGhhbmtzLAo+IAo+IEJhcnQuCj4g
CgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCv
jQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
