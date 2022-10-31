Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8116FFA3746
	for <linux-phy@archiver.kernel.org>; Mon, 31 Oct 2022 14:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U1Rxwv5Hc1npylJ37HJ7OCpoaSUUxZfWX7IEj8N28uk=; b=3ZeQATLYbP5rQ1
	/MzxYyaE90jexus/ErO8V0TVnKbWCzu02ORGshAPKFMH6/isPFo4aKKTRYd8+Nx5rv87a+vjv70Z+
	IQLWN9i5MO4EjYb6J62IbUPx//dp8+iT3tON6ur7uQ1QhjKopHikP8xlVAab8Hcfe4+FeXwBsYOLB
	HERD+EVNLDO62Yq96nZlOQiKCfSNBt7D7AkRsYfR9SX784pDDZ0iWqXIjsdfCh6qQa/pl5l4vOCDX
	jAIIQT+pWtCvGXneCWcQszWKkUuODSwH9h9ESk5fwiayxgrEZPWmzdBjOgZcsYwSztXsfRhRisqYe
	uvlEaTYt5npfCgNkPa5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opWDr-00CPw5-Sp; Mon, 31 Oct 2022 14:57:07 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opWDo-00CPoU-Gu
	for linux-phy@lists.infradead.org; Mon, 31 Oct 2022 14:57:06 +0000
Received: by mail-pf1-x42d.google.com with SMTP id k22so10909810pfd.3
        for <linux-phy@lists.infradead.org>; Mon, 31 Oct 2022 07:56:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qfRWCQkOBm2MxnVgDK5v0Vn9xRjDYCGceLE5mq8RAWI=;
        b=stVuBKmZrU7+ei+AFFBE+eKP4PINriYNYY5RsQGv1tc+A6WJ/s7pAKdcc7QZYF4+XO
         QWS2lLzveBESkZroA6tZEavUJE03g62quWyzPY0QbB9S9Fn4ePHiMyvv7qiHILct2ilD
         +dmu15gA+VXLxciUsRlhZw65iOYkZ6Lk8j36WixjIHf+1eqf+RajjtP3DfofZztb2SQc
         0tBimU3mNeMZKv1ZT0LOkiQcQA9AY5OIQscOmqH2B3+LT8oxNq75BZKMlT3L6gep76Uv
         NQGPc+iBjB+3bAG7L9vnZBqtR9QbTby81m4+c1vAT3Ir6uWvpVrzAMV800H5ZUQjoymv
         KBAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qfRWCQkOBm2MxnVgDK5v0Vn9xRjDYCGceLE5mq8RAWI=;
        b=myUEuCWWBRkIecymjC4++v3LoPB6U6pPqTDav7VVyDxPkvAOyYk5FJgnCYpEvNOgY2
         PKxCode1qUSFHYt8/oK3drs4dnUc61jKQiEpL3/sVnm60nVzJ8b4wP0VgWlqvXXcxNwr
         ezEvLIMKHF2Um7AYGfcmCNxoi53PFMBbRYJykgt/ox9HiX6ir3NSrb7S2Sebt6IYGLX2
         sMttd9uvm9ZEktgt7BHyC40KJYlcY+2zegr/wtPoK0VXq/MzRa7w1Sa6+lgrZrYqSYqp
         PJPtqcCzlOP3vziX11nnH4ue+xlX87JEb4KA8yY2tG1ApJnqD0QgKDvTiJL4XbN8J0H7
         XNZg==
X-Gm-Message-State: ACrzQf0gm48kUuaSqaWnmhuMMTxBMoCfXkIurTh1bG7kUYAEH8Aoqo9O
	LdassHu216xP1C+lWaAWarwc2GfVQiYX
X-Google-Smtp-Source: AMsMyM7SHU/9duW/QueVKxebwPeGGo51l3TZSSc9aXZpBWMnn19DzLxyNQfHIvbOJuiSkwcMuVYOrw==
X-Received: by 2002:a05:6a00:230f:b0:53e:2c2c:5c03 with SMTP id h15-20020a056a00230f00b0053e2c2c5c03mr14699448pfh.11.1667228216041;
        Mon, 31 Oct 2022 07:56:56 -0700 (PDT)
Received: from thinkpad ([117.193.209.221])
        by smtp.gmail.com with ESMTPSA id m12-20020a17090a414c00b002135fdfa995sm4235595pjg.25.2022.10.31.07.56.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Oct 2022 07:56:54 -0700 (PDT)
Date: Mon, 31 Oct 2022 20:26:47 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
	vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	konrad.dybcio@somainline.org, robh+dt@kernel.org,
	quic_cang@quicinc.com, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org
Subject: Re: [PATCH 14/15] scsi: ufs: ufs-qcom: Add support for finding HS
 gear on new UFS versions
Message-ID: <20221031145647.GC10515@thinkpad>
References: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
 <20221029141633.295650-15-manivannan.sadhasivam@linaro.org>
 <cf8dcf53-f131-68f4-c6aa-d41e02ac6d5c@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cf8dcf53-f131-68f4-c6aa-d41e02ac6d5c@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_075704_591646_F4810051 
X-CRM114-Status: GOOD (  36.85  )
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

T24gU3VuLCBPY3QgMzAsIDIwMjIgYXQgMTI6NDg6MjFBTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBPbiAyOS8xMC8yMDIyIDE3OjE2LCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3Jv
dGU6Cj4gPiBTdGFydGluZyBmcm9tIFVGUyBjb250cm9sbGVyIHY0LCBRY29tIHN1cHBvcnRzIGR1
YWwgZ2VhciBtb2RlIChpLmUuLCB0aGUKPiA+IGNvbnRyb2xsZXIvUEhZIGNhbiBiZSBjb25maWd1
cmVkIHRvIHJ1biBpbiB0d28gZ2VhciBzcGVlZHMpLiBCdXQgdGhhdAo+ID4gcmVxdWlyZXMgYW4g
YWdyZWVtZW50IGJldHdlZW4gdGhlIFVGUyBjb250cm9sbGVyIGFuZCB0aGUgVUZTIGRldmljZS4K
PiA+IFRoaXMgY29tbWl0IGZpbmRzIHRoZSBtYXggZ2VhciBzdXBwb3J0ZWQgYnkgYm90aCBjb250
cm9sbGVyIGFuZCBkZXZpY2UKPiA+IHRoZW4gZGVjaWRlcyB3aGljaCBvbmUgdG8gdXNlLgo+ID4g
Cj4gPiBVRlMgY29udHJvbGxlcidzIG1heCBnZWFyIGNhbiBiZSByZWFkIGZyb20gdGhlIFJFR19V
RlNfUEFSQU0wIHJlZ2lzdGVyIGFuZAo+ID4gVUZTIGRldmljZSdzIG1heCBnZWFyIGNhbiBiZSBy
ZWFkIGZyb20gdGhlICJtYXgtZ2VhciIgZGV2aWNldHJlZSBwcm9wZXJ0eS4KPiA+IAo+ID4gVGhl
IFVGUyBQSFkgYWxzbyBuZWVkcyB0byBiZSBjb25maWd1cmVkIHdpdGggdGhlIGRlY2lkZWQgZ2Vh
ciB1c2luZyB0aGUKPiA+IHBoeV9zZXRfbW9kZV9leHQoKSBBUEkuCj4gPiAKPiA+IFNpZ25lZC1v
ZmYtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFy
by5vcmc+Cj4gPiAtLS0KPiA+ICAgZHJpdmVycy91ZnMvaG9zdC91ZnMtcWNvbS5jIHwgMzUgKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0KPiA+ICAgZHJpdmVycy91ZnMvaG9zdC91
ZnMtcWNvbS5oIHwgIDQgKysrKwo+ID4gICAyIGZpbGVzIGNoYW5nZWQsIDM2IGluc2VydGlvbnMo
KyksIDMgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3Vmcy9ob3N0
L3Vmcy1xY29tLmMgYi9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1xY29tLmMKPiA+IGluZGV4IGY5NTJj
Yzc2OTE5Zi4uMjY4NDYzZTkyZDY3IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy91ZnMvaG9zdC91
ZnMtcWNvbS5jCj4gPiArKysgYi9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1xY29tLmMKPiA+IEBAIC0y
ODEsNiArMjgxLDkgQEAgc3RhdGljIGludCB1ZnNfcWNvbV9ob3N0X3Jlc2V0KHN0cnVjdCB1ZnNf
aGJhICpoYmEpCj4gPiAgIHN0YXRpYyB1MzIgdWZzX3Fjb21fZ2V0X2hzX2dlYXIoc3RydWN0IHVm
c19oYmEgKmhiYSwgdTMyIGhzX2dlYXIpCj4gPiAgIHsKPiA+ICAgCXN0cnVjdCB1ZnNfcWNvbV9o
b3N0ICpob3N0ID0gdWZzaGNkX2dldF92YXJpYW50KGhiYSk7Cj4gPiArCXN0cnVjdCBkZXZpY2Ug
KmRldiA9IGhiYS0+ZGV2Owo+ID4gKwl1MzIgbWF4X2dlYXIsIGhjZF9tYXhfZ2VhciwgcmVnOwo+
ID4gKwlpbnQgcmV0Owo+ID4gICAJaWYgKGhvc3QtPmh3X3Zlci5tYWpvciA9PSAweDEpIHsKPiA+
ICAgCQkvKgo+ID4gQEAgLTI5Miw4ICsyOTUsMzMgQEAgc3RhdGljIHUzMiB1ZnNfcWNvbV9nZXRf
aHNfZ2VhcihzdHJ1Y3QgdWZzX2hiYSAqaGJhLCB1MzIgaHNfZ2VhcikKPiA+ICAgCQkgKi8KPiA+
ICAgCQlpZiAoaHNfZ2VhciA+IFVGU19IU19HMikKPiA+ICAgCQkJcmV0dXJuIFVGU19IU19HMjsK
PiA+ICsJfSBlbHNlIGlmIChob3N0LT5od192ZXIubWFqb3IgPiAweDMpIHsKPiA+ICsJCS8qCj4g
PiArCQkgKiBTdGFydGluZyBmcm9tIFVGUyBjb250cm9sbGVyIHY0LCBRY29tIHN1cHBvcnRzIGR1
YWwgZ2VhciBtb2RlIChpLmUuLCB0aGUKPiA+ICsJCSAqIGNvbnRyb2xsZXIvUEhZIGNhbiBiZSBj
b25maWd1cmVkIHRvIHJ1biBpbiB0d28gZ2VhciBzcGVlZHMpLiBCdXQgdGhhdAo+ID4gKwkJICog
cmVxdWlyZXMgYW4gYWdyZWVtZW50IGJldHdlZW4gdGhlIFVGUyBjb250cm9sbGVyIGFuZCB0aGUg
ZGV2aWNlLiBCZWxvdwo+ID4gKwkJICogY29kZSB0cmllcyB0byBmaW5kIHRoZSBtYXggZ2VhciBv
ZiBib3RoIGFuZCBkZWNpZGVzIHdoaWNoIGdlYXIgdG8gdXNlLgo+ID4gKwkJICoKPiA+ICsJCSAq
IEZpcnN0IGdldCB0aGUgbWF4IGdlYXIgc3VwcG9ydGVkIGJ5IHRoZSBVRlMgZGV2aWNlIGlmIGF2
YWlsYWJsZS4KPiA+ICsJCSAqIElmIHRoZSBwcm9wZXJ0eSBpcyBub3QgZGVmaW5lZCBpbiBkZXZp
Y2V0cmVlLCB0aGVuIHVzZSB0aGUgZGVmYXVsdCBnZWFyLgo+ID4gKwkJICovCj4gPiArCQlyZXQg
PSBvZl9wcm9wZXJ0eV9yZWFkX3UzMihkZXYtPm9mX25vZGUsICJtYXgtZ2VhciIsICZtYXhfZ2Vh
cik7Cj4gPiArCQlpZiAocmV0KQo+ID4gKwkJCWdvdG8gZXJyX291dDsKPiAKPiBDYW4gd2UgZGV0
ZWN0IHRoZSBVRlMgZGV2aWNlJ3MgbWF4IGdlYXIgc29tZWhvdz8gSWYgbm90LCB0aGUgJ21heC1n
ZWFyJwo+IHByb3BlcnR5IG5hbWUgZG9lc24ndCBzb3VuZCBnb29kLiBNYXliZSBjYWxsaW5nIGl0
ICdkZXZpY2UtZ2Vhcicgd291bGQgYmUKPiBiZXR0ZXIuCj4gCgpVRlMgZGV2aWNlIHByb2Jpbmcg
ZGVwZW5kcyBvbiBQSFkgaW5pdCBzZXF1ZW5jZS4gU28gdGVjaG5pY2FsbHkgd2UgY2Fubm90IGtu
b3cKdGhlIG1heCBnZWFyIG9mIHRoZSBkZXZpY2Ugd2l0aG91dCB1c2luZyBhbiBpbml0IHNlcXVl
bmNlLCBidXQgdGhpcyBpbmZvcm1hdGlvbgppcyBzdGF0aWMgYW5kIHNob3VsZCBiZSBrbm93biB0
byBhIGJvYXJkIG1hbnVmYWN0dXJlci4gVGhhdCdzIHdoeSBJIGRlY2lkZWQgdG8KdXNlIHRoaXMg
cHJvcGVydHkuIEFub3RoZXIgb3B0aW9uIGlzIHRvIHVzZSBhIGZpeGVkIGluaXQgc2VxdWVuY2Ug
Zm9yIHByb2JpbmcKdGhlIGRldmljZSBhbmQgZG8gYSByZS1pbml0IGFmdGVyIGtub3dpbmcgaXQn
cyBtYXggZ2VhciBidXQgdGhhdCBpcyBub3QKcmVjb21tZW5kZWQuCgpXZSBuZWVkICJtYXgiIGtl
eXdvcmQgYmVjYXVzZSB0aGlzIHByb3BlcnR5IHNwZWNpZmllcyB0aGUgbWF4aW11bSBnZWFyIGF0
IHdoaWNoCnRoZSBkZXZpY2UgY291bGQgb3BlcmF0ZSBhbmQgbm90IG5lY2Vzc2FyaWx5IHRoZSBn
ZWFyIGF0IHdoaWNoIGl0IG9wZXJhdGVzLgpNYXliZSwgIm1heC1kZXZpY2UtZ2VhciIgd291bGQg
bWFrZSBpdCBjbGVhci4KClRoYW5rcywKTWFuaQoKPiA+ICsKPiA+ICsJCS8qIE5leHQgZ2V0IHRo
ZSBtYXggZ2VhciBzdXBwb3J0ZWQgYnkgdGhlIFVGUyBjb250cm9sbGVyICovCj4gPiArCQlyZWcg
PSB1ZnNoY2RfcmVhZGwoaGJhLCBSRUdfVUZTX1BBUkFNMCk7Cj4gPiArCQloY2RfbWF4X2dlYXIg
PSBVRlNfUUNPTV9NQVhfR0VBUihyZWcpOwo+ID4gKwo+ID4gKwkJLyoKPiA+ICsJCSAqIE5vdyBj
b21wYXJlIGJvdGggdGhlIGdlYXJzLiBJZiB0aGUgbWF4IGdlYXIgc3VwcG9ydGVkIGJ5IHRoZSBV
RlMgZGV2aWNlCj4gPiArCQkgKiBpcyBjb21wYXRpYmxlIHdpdGggVUZTIGNvbnRyb2xsZXIsIHRo
ZW4gdXNlIHRoZSBVRlMgZGV2aWNlJ3MgbWF4IGdlYXIKPiA+ICsJCSAqIHNwZWVkLiBPdGhlcndp
c2UsIHVzZSB0aGUgVUZTIGNvbnRyb2xsZXIgc3VwcG9ydGVkIG1heCBnZWFyIHNwZWVkLgo+ID4g
KwkJICovCj4gPiArCQlyZXR1cm4gKG1heF9nZWFyIDw9IGhjZF9tYXhfZ2VhcikgPyBtYXhfZ2Vh
ciA6IGhjZF9tYXhfZ2VhcjsKPiAKPiByZXR1cm4gbWF4KG1heF9nZWFyLCBoY2RfbWF4X2dlYXIp
OyA/Cj4gCj4gPiAgIAl9Cj4gPiArZXJyX291dDoKPiA+ICAgCS8qIERlZmF1bHQgaXMgSFMtRzMg
Ki8KPiA+ICAgCXJldHVybiBVRlNfSFNfRzM7Cj4gPiAgIH0KPiA+IEBAIC0zMDMsNyArMzMxLDcg
QEAgc3RhdGljIGludCB1ZnNfcWNvbV9wb3dlcl91cF9zZXF1ZW5jZShzdHJ1Y3QgdWZzX2hiYSAq
aGJhKQo+ID4gICAJc3RydWN0IHVmc19xY29tX2hvc3QgKmhvc3QgPSB1ZnNoY2RfZ2V0X3Zhcmlh
bnQoaGJhKTsKPiA+ICAgCXN0cnVjdCBwaHkgKnBoeSA9IGhvc3QtPmdlbmVyaWNfcGh5Owo+ID4g
ICAJaW50IHJldDsKPiA+IC0JYm9vbCBpc19yYXRlX0IgPSBVRlNfUUNPTV9MSU1JVF9IU19SQVRF
ID09IFBBX0hTX01PREVfQjsKPiA+ICsJdTMyIGhzX2dlYXI7Cj4gPiAgIAkvKiBSZXNldCBVRlMg
SG9zdCBDb250cm9sbGVyIGFuZCBQSFkgKi8KPiA+ICAgCXJldCA9IHVmc19xY29tX2hvc3RfcmVz
ZXQoaGJhKTsKPiA+IEBAIC0zMTEsOCArMzM5LDkgQEAgc3RhdGljIGludCB1ZnNfcWNvbV9wb3dl
cl91cF9zZXF1ZW5jZShzdHJ1Y3QgdWZzX2hiYSAqaGJhKQo+ID4gICAJCWRldl93YXJuKGhiYS0+
ZGV2LCAiJXM6IGhvc3QgcmVzZXQgcmV0dXJuZWQgJWRcbiIsCj4gPiAgIAkJCQkgIF9fZnVuY19f
LCByZXQpOwo+ID4gLQlpZiAoaXNfcmF0ZV9CKQo+ID4gLQkJcGh5X3NldF9tb2RlKHBoeSwgUEhZ
X01PREVfVUZTX0hTX0IpOwo+ID4gKwkvKiBVRlNfSFNfRzIgaXMgdXNlZCBoZXJlIHNpbmNlIHRo
YXQncyB0aGUgbGVhc3QgZ2VhciBzdXBwb3J0ZWQgYnkgbGVnYWN5IFFjb20gcGxhdGZvcm1zICov
Cj4gPiArCWhzX2dlYXIgPSB1ZnNfcWNvbV9nZXRfaHNfZ2VhcihoYmEsIFVGU19IU19HMik7Cj4g
PiArCXBoeV9zZXRfbW9kZV9leHQocGh5LCBQSFlfTU9ERV9VRlNfSFNfQiwgaHNfZ2Vhcik7Cj4g
PiAgIAkvKiBwaHkgaW5pdGlhbGl6YXRpb24gLSBjYWxpYnJhdGUgdGhlIHBoeSAqLwo+ID4gICAJ
cmV0ID0gcGh5X2luaXQocGh5KTsKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3Vmcy9ob3N0L3Vm
cy1xY29tLmggYi9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1xY29tLmgKPiA+IGluZGV4IDIxNGVhNTBh
Y2FiOS4uYzkzYmM1MmVhODQ4IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy91ZnMvaG9zdC91ZnMt
cWNvbS5oCj4gPiArKysgYi9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1xY29tLmgKPiA+IEBAIC04OSw2
ICs4OSwxMCBAQCBlbnVtIHsKPiA+ICAgI2RlZmluZSBUTVJMVVRfSFdfQ0dDX0VOCUJJVCg2KQo+
ID4gICAjZGVmaW5lIE9DU0NfSFdfQ0dDX0VOCQlCSVQoNykKPiA+ICsvKiBiaXQgZGVmaW5pdGlv
bnMgZm9yIFJFR19VRlNfUEFSQU0wICovCj4gPiArI2RlZmluZSBNQVhfSFNfR0VBUl9NQVNLCUdF
Tk1BU0soNiwgNCkKPiA+ICsjZGVmaW5lIFVGU19RQ09NX01BWF9HRUFSKHgpCUZJRUxEX0dFVChN
QVhfSFNfR0VBUl9NQVNLLCAoeCkpCj4gPiArCj4gPiAgIC8qIGJpdCBkZWZpbml0aW9uIGZvciBV
RlNfVUZTX1RFU1RfQlVTX0NUUkxfbiAqLwo+ID4gICAjZGVmaW5lIFRFU1RfQlVTX1NVQl9TRUxf
TUFTSwlHRU5NQVNLKDQsIDApICAvKiBBbGwgWFhYX1NFTCBmaWVsZHMgYXJlIDUgYml0cyB3aWRl
ICovCj4gCj4gLS0gCj4gV2l0aCBiZXN0IHdpc2hlcwo+IERtaXRyeQo+IAoKLS0gCuCuruCuo+Cu
v+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
