Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7590DC54F47
	for <linux-phy@archiver.kernel.org>; Thu, 22 May 2025 08:59:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LbX7dAH12Io8/CatmxJvsKgzACB1KPB6Wpb6u45HjCE=; b=HCF+ZZZc9zDbC5
	+j83dv2rxovtVMW76ioyraADYnWKriQGK7yojvPQst/yd5ovDsX7QpffZEiVHMeqa2AYcjLCMGE2K
	/2ntrFPvj4x7iXx1FLCkInqzXX6ry0gyhodnRO+Fg9pDjSalM2cVNv9CSIaXOTo7qvheLDx8QZ/BE
	17JVrffPx7CxzLXMEhMyR/3VU+Jo5wIrvod7PwtXa9o2uapZTEGi0HhtGhN5w3BGFj6heYtlFwrTc
	MEQxJTXBeSOXTfpsxt9XD/4xdEnEEbw7qdA0sryD2HPcj3eU7lbBC4w1P7sep6Rohrh+FLz8x6SqP
	sY8HHFt7tEP3TLeVQG/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI1m9-00000000Oip-0ebW;
	Thu, 22 May 2025 08:59:41 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI1iJ-00000000NgD-3vip
	for linux-phy@lists.infradead.org;
	Thu, 22 May 2025 08:55:45 +0000
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-742c73f82dfso3949482b3a.2
        for <linux-phy@lists.infradead.org>; Thu, 22 May 2025 01:55:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747904143; x=1748508943; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rnv34DyLz2EhtSWIQDuMJvaAtqi0gnS9aObV/nmCyco=;
        b=UioocxnRy/El6CuoLpVGqPf4HOjVEKP/sGFdP4iQe6138xP2ZUV+EZudXVs+3sERp6
         K8a3NgGERwU/NEfjjYbYdGzrA8YX6r5nOdlN3nMasY+RYWupojU8mePn/rOQxoVLe75w
         DfNWuwUzfglzgy2hwct61pLQiymgWfgK8uLNzQbaIAYSBeBw71BVQ3zOBJLR96/ZpT1/
         8Vdb2tLClqcypuBnRSMmvqe1wnToEqFhJR1SMxGGIwlOhnECeZBzNkSF1UYbfGdNnIjk
         4IrwloH5+jQD8Mi04Hqw1Xajpho82GzkOQX1RP8g5Ceg6JdspvctPpCiqtEe1XZW+sba
         R4qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747904143; x=1748508943;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rnv34DyLz2EhtSWIQDuMJvaAtqi0gnS9aObV/nmCyco=;
        b=oNMig155vbtxjqgsqdjyxXTk5IRS+oGsjSytOZwOoqCvmPeYKt45q6OmvQ/GCokqPF
         HT0VnQqhPklwx1XqsAXE+yz0A43cMxQj+WXEqdgQ1/3+FelVvU1UQ04yIlnc7U0x5MzV
         oqHa5/WSOQFDkJo0FLoyMBMNQ4BcPGx9YKZHWPagJ2kzlhrXxcVMco4PxfLYwMOT14rK
         T+uLySMF9/VsDbwjss0m3YnyR19Qe0cZJqLPkpxHM6OZtJlcIssqXXQbqGWqqcmSJzMh
         GUHxfmXm79Z7EBF1v5HCQytmeuIuOqAXuh6aDTibMPY7wlr7yfgK10HjGSRhKl/vfoH0
         /aXA==
X-Forwarded-Encrypted: i=1; AJvYcCW6G3diNMQSgOVbGVRTqUHzipfXL5vJiY+m9f3inD7jEfGkfLGUPvDSE8BvVqtImDIvzps9Y5wQf5s=@lists.infradead.org
X-Gm-Message-State: AOJu0YxbZunU/9AEaw5BtqJ+l+Pt/lwzL4H3HNKkAwP9e+nKNajd8zB6
	GXH9smiQF5tJgkZY/Jb0eac+Kuv2H3X4TpBaXkO4aICEXRkIaLwnn880CYfun5WJsA==
X-Gm-Gg: ASbGncvnk6DbSL7xmNCyWezYAAJo5hfvMyr1DLOZFhlXtk5x19zi4T7j5j3Vy0RVw2l
	n2OKsycxaIzs9IsDMG7vWUGyvaDMYMiyoKhK9/MKhuH5PKc8h66cz1HKZ9lsfpvGs5k82uf3TQi
	Z22ZXeuzCdaVYf0pz4HGXnzKIXqNL1kL5oEvx7s8nszLbF/qJNTaD+kDPoshNQ45l0/KAbFcout
	OBG4gx8KQKB2QRhhUBtG0smifQLvZVApGUv3I6mjoCxdfnBKxz+yLSqyYM9sXUxKHuJ6UaL3lBg
	tE13ojS0NyiGVnlCES0mzzxopnTmAmWHb9F7xwsOy8oAEaki7r23TdKv/YY5C7+mzxyZGxU6
X-Google-Smtp-Source: AGHT+IHq3Bbf8nhBuJ8dc/yRE+e5Su3YtKEAGVHhkTBz5QbJAhFT2+T/UfMA09WAkSzGhja7TXZJcQ==
X-Received: by 2002:a05:6a20:7f8d:b0:206:a9bd:ad7b with SMTP id adf61e73a8af0-2162188cce3mr31661968637.7.1747904143010;
        Thu, 22 May 2025 01:55:43 -0700 (PDT)
Received: from thinkpad ([120.60.130.60])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b26eaf8db5csm10851412a12.34.2025.05.22.01.55.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 01:55:42 -0700 (PDT)
Date: Thu, 22 May 2025 14:25:35 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, 
	James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com, bvanassche@acm.org, 
	andersson@kernel.org, neil.armstrong@linaro.org, dmitry.baryshkov@oss.qualcomm.com, 
	konrad.dybcio@oss.qualcomm.com, quic_rdwivedi@quicinc.com, quic_cang@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-scsi@vger.kernel.org
Subject: Re: [PATCH V5 09/11] scsi: ufs: qcom : Refactor phy_power_on/off
 calls
Message-ID: <5z5yfa2xrnkrgz6ol6baaynsy4vugxv3kf7c2xrqjqvrr7dbcr@u3qycb4ucguz>
References: <20250515162722.6933-1-quic_nitirawa@quicinc.com>
 <20250515162722.6933-10-quic_nitirawa@quicinc.com>
 <knlhbl3mwo3b7xc4rjp4y7yka2nwythumjacmvn236v72ykddo@r3cp2w4uomol>
 <5584c019-d435-4d1b-b38c-80fb9b9f00f6@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5584c019-d435-4d1b-b38c-80fb9b9f00f6@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_015543_989702_B51C99DF 
X-CRM114-Status: GOOD (  31.53  )
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

T24gVGh1LCBNYXkgMjIsIDIwMjUgYXQgMDM6MTA6NDhBTSArMDUzMCwgTml0aW4gUmF3YXQgd3Jv
dGU6Cj4gCj4gCj4gT24gNS8yMS8yMDI1IDc6MjcgUE0sIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3
cm90ZToKPiA+IE9uIFRodSwgTWF5IDE1LCAyMDI1IGF0IDA5OjU3OjIwUE0gKzA1MzAsIE5pdGlu
IFJhd2F0IHdyb3RlOgo+ID4gPiBDb21taXQgM2Y2ZDE3NjdiMWEwICgicGh5OiB1ZnMtcWNvbTog
UmVmYWN0b3IgYWxsIGluaXQgc3RlcHMgaW50bwo+ID4gPiBwaHlfcG93ZXJvbiIpIHJlbW92ZXMg
dGhlIHBoeV9wb3dlcl9vbi9vZmYgZnJvbSB1ZnNfcWNvbV9zZXR1cF9jbG9ja3MKPiA+IAo+ID4g
cy9yZW1vdmVzL21vdmVkCj4gCj4gU3VyZSwgd2lsbCBhZGRyZXNzIGluIG5leHQgcGF0Y2hzZXQu
Cj4gCj4gPiAKPiA+ID4gdG8gc3VzcGVuZC9yZXN1bWUgZnVuYy4KPiA+ID4gCj4gPiA+IFRvIGhh
dmUgYSBiZXR0ZXIgcG93ZXIgc2F2aW5nLCByZW1vdmUgdGhlIHBoeV9wb3dlcl9vbi9vZmYgY2Fs
bHMgZnJvbQo+ID4gPiByZXN1bWUvc3VzcGVuZCBwYXRoIGFuZCBwdXQgdGhlbSBiYWNrIHRvIHVm
c19xY29tX3NldHVwX2Nsb2Nrcywgc28gdGhhdAo+ID4gPiBQSFkgcmVndWxhdG9ycyAmIGNsa3Mg
Y2FuIGJlIHR1cm5lZCBvbi9vZmYgYWxvbmcgd2l0aCBVRlMncyBjbG9ja3MuCj4gPiA+IAo+ID4g
PiBTaW5jZSBwaHkgcGh5X3Bvd2VyX29uIGlzIHNlcGFyYXRlZCBvdXQgZnJvbSBwaHkgY2FsaWJy
YXRlLCBtYWtlCj4gPiA+IHNlcGFyYXRlIGNhbGxzIHRvIHBoeV9wb3dlcl9vbiBhbmQgcGh5X2Nh
bGlicmF0ZSBjYWxscyBmcm9tIHVmcyBxY29tCj4gPiA+IGRyaXZlci4KPiA+ID4gCj4gPiAKPiA+
IFRoaXMgcGF0Y2ggaXMgbm90IGNhbGxpbmcgcGh5X2NhbGlicmF0ZSgpLgo+IAo+IHVwZGF0ZWQg
Y29tbWl0IHRleHQgdG8gcmVtb3ZlIHBoeV9DYWxpYnJhdGUgZnJvbSBjb21taXQgdGV4dAo+IAo+
ID4gCj4gPiA+IENvLWRldmVsb3BlZC1ieTogQ2FuIEd1byA8cXVpY19jYW5nQHF1aWNpbmMuY29t
Pgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBDYW4gR3VvIDxxdWljX2NhbmdAcXVpY2luYy5jb20+Cj4g
PiA+IFNpZ25lZC1vZmYtYnk6IE5pdGluIFJhd2F0IDxxdWljX25pdGlyYXdhQHF1aWNpbmMuY29t
Pgo+ID4gPiAtLS0KPiA+ID4gICBkcml2ZXJzL3Vmcy9ob3N0L3Vmcy1xY29tLmMgfCA2MSArKysr
KysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tCj4gPiA+ICAgMSBmaWxlIGNoYW5nZWQs
IDI5IGluc2VydGlvbnMoKyksIDMyIGRlbGV0aW9ucygtKQo+ID4gPiAKPiA+IAo+ID4gWy4uLl0K
PiA+IAo+ID4gPiAgIHN0YXRpYyBpbnQgdWZzX3Fjb21fc2V0dXBfY2xvY2tzKHN0cnVjdCB1ZnNf
aGJhICpoYmEsIGJvb2wgb24sCj4gPiA+ICAgCQkJCSBlbnVtIHVmc19ub3RpZnlfY2hhbmdlX3N0
YXR1cyBzdGF0dXMpCj4gPiA+ICAgewo+ID4gPiAgIAlzdHJ1Y3QgdWZzX3Fjb21faG9zdCAqaG9z
dCA9IHVmc2hjZF9nZXRfdmFyaWFudChoYmEpOwo+ID4gPiArCXN0cnVjdCBwaHkgKnBoeSA9IGhv
c3QtPmdlbmVyaWNfcGh5Owo+ID4gPiArCWludCBlcnI7Cj4gPiA+ICAgCS8qCj4gPiA+ICAgCSAq
IEluIGNhc2UgdWZzX3Fjb21faW5pdCgpIGlzIG5vdCB5ZXQgZG9uZSwgc2ltcGx5IGlnbm9yZS4K
PiA+ID4gQEAgLTExNTcsMTAgKzExNDEsMjIgQEAgc3RhdGljIGludCB1ZnNfcWNvbV9zZXR1cF9j
bG9ja3Moc3RydWN0IHVmc19oYmEgKmhiYSwgYm9vbCBvbiwKPiA+ID4gICAJCQkJLyogZGlzYWJs
ZSBkZXZpY2UgcmVmX2NsayAqLwo+ID4gPiAgIAkJCQl1ZnNfcWNvbV9kZXZfcmVmX2Nsa19jdHJs
KGhvc3QsIGZhbHNlKTsKPiA+ID4gICAJCQl9Cj4gPiA+ICsKPiA+ID4gKwkJCWVyciA9IHBoeV9w
b3dlcl9vZmYocGh5KTsKPiA+ID4gKwkJCWlmIChlcnIpIHsKPiA+ID4gKwkJCQlkZXZfZXJyKGhi
YS0+ZGV2LCAicGh5IHBvd2VyIG9mZiBmYWlsZWQsIHJldD0lZFxuIiwgZXJyKTsKPiA+ID4gKwkJ
CQlyZXR1cm4gZXJyOwo+ID4gPiArCQkJfQo+ID4gPiAgIAkJfQo+ID4gPiAgIAkJYnJlYWs7Cj4g
PiA+ICAgCWNhc2UgUE9TVF9DSEFOR0U6Cj4gPiA+ICAgCQlpZiAob24pIHsKPiA+ID4gKwkJCWVy
ciA9IHBoeV9wb3dlcl9vbihwaHkpOwo+ID4gPiArCQkJaWYgKGVycikgewo+ID4gPiArCQkJCWRl
dl9lcnIoaGJhLT5kZXYsICJwaHkgcG93ZXIgb24gZmFpbGVkLCByZXQgPSAlZFxuIiwgZXJyKTsK
PiA+ID4gKwkJCQlyZXR1cm4gZXJyOwo+ID4gPiArCQkJfQo+ID4gPiArCj4gPiA+ICAgCQkJLyog
ZW5hYmxlIHRoZSBkZXZpY2UgcmVmIGNsb2NrIGZvciBIUyBtb2RlKi8KPiA+ID4gICAJCQlpZiAo
dWZzaGNkX2lzX2hzX21vZGUoJmhiYS0+cHdyX2luZm8pKQo+ID4gPiAgIAkJCQl1ZnNfcWNvbV9k
ZXZfcmVmX2Nsa19jdHJsKGhvc3QsIHRydWUpOwo+ID4gPiBAQCAtMTM0Myw5ICsxMzM5LDEwIEBA
IHN0YXRpYyBpbnQgdWZzX3Fjb21faW5pdChzdHJ1Y3QgdWZzX2hiYSAqaGJhKQo+ID4gPiAgIHN0
YXRpYyB2b2lkIHVmc19xY29tX2V4aXQoc3RydWN0IHVmc19oYmEgKmhiYSkKPiA+ID4gICB7Cj4g
PiA+ICAgCXN0cnVjdCB1ZnNfcWNvbV9ob3N0ICpob3N0ID0gdWZzaGNkX2dldF92YXJpYW50KGhi
YSk7Cj4gPiA+ICsJc3RydWN0IHBoeSAqcGh5ID0gaG9zdC0+Z2VuZXJpY19waHk7Cj4gPiA+ICAg
CXVmc19xY29tX2Rpc2FibGVfbGFuZV9jbGtzKGhvc3QpOwo+ID4gPiAtCXBoeV9wb3dlcl9vZmYo
aG9zdC0+Z2VuZXJpY19waHkpOwo+ID4gPiArCXBoeV9wb3dlcl9vZmYocGh5KTsKPiA+IAo+ID4g
VGhpcyBjaGFuZ2UgaXMgbm90IGF0IGFsbCBuZWVkZWQuCj4gCj4gSW4gdGhlIGN1cnJlbnQgY29k
ZSwgUEhZIHJlc291cmNlcyAoY2xvY2tzIGFuZCByYWlscykgcmVtYWluIGFjdGl2ZSBldmVuCj4g
d2hlbiB0aGUgbGluayBpcyBpbiBhIGhpYmVybmF0ZSBzdGF0ZSBhbmQgYWxsIGNvbnRyb2xsZXIg
Y2xvY2tzIGFyZSBvZmYuCj4gVGhpcyByZXN1bHRzIGluIGEgc2lnbmlmaWNhbnQgcG93ZXIgcGVu
YWx0eSBhbmQgY2FuIHByZXZlbnQgQ1ggcG93ZXIKPiBjb2xsYXBzZS4KPiAKPiBUaGVzZSByYWls
cyBhbmQgY2xvY2tzIGFyZSBvbmx5IHR1cm5lZCBvZmYgd2hlbiBhIHN5c3RlbSBzdXNwZW5kIGlz
Cj4gdHJpZ2dlcmVkLCBhbmQgZXZlbiB0aGVuLCBvbmx5IGF0IFNQTSBsZXZlbCA1IHdoZXJlIHRo
ZSBsaW5rIGlzIHR1cm5lZCBvZmYuCj4gVGhpcyBhcHByb2FjaCBpcyBub3QgcG93ZXItZWZmaWNp
ZW50Lgo+IAo+IEFzIHBhcnQgb2YgdGhpcyBzZXJpZXMsIHRoZSBjb2RlIHRoYXQgZW5hYmxlcy9k
aXNhYmxlcyB0aGUgUEhZJ3MgcmVndWxhdG9ycwo+IGFuZCBjbG9ja3MgaXMgbm93IGNvbmZpbmVk
IHRvIHRoZSBwaHlfcG93ZXJfb24gYW5kIHBoeV9wb3dlcl9vZmYgY2FsbHMsIHdpdGgKPiB0aGUg
cmVzdCBtb3ZlZCB0byB0aGUgY2FsaWJyYXRpb24gcGhhc2UuCj4gCj4gVGhlcmVmb3JlLCB3ZSBh
cmUgaW52b2tpbmcgdGhlIHBoeV9wb3dlcl9vZmYgYW5kIHBoeV9wb3dlcl9vbiBjYWxscyBmcm9t
Cj4gdWZzX3Fjb21fc2V0dXBfY2xvY2tzLCBlbnN1cmluZyB0aGF0IHRoZSBQSFkncyByZWd1bGF0
b3JzIGFuZCBjbG9ja3MgY2FuIGJlCj4gdHVybmVkIG9uL29mZiBhbG9uZyB3aXRoIHRoZSBVRlMg
Y2xvY2tzLCB0aGVyZWJ5IGFjaGlldmluZyBwb3dlciBzYXZpbmdzLgo+IAo+IFRoZXJlZm9yZSwg
dGhpcyBwYXRjaCBpcyB0aGUgY29ybmVyc3RvbmUgb2YgdGhpcyBzZXJpZXMuCj4gCgpJIGRpZCBu
b3QgcXVlc3Rpb24gdGhlIHBhdGNoLCBidXQganVzdCB0aGUgY2hhbmdlIHRoYXQgeW91IGRpZCBp
biB0aGUKdWZzX3Fjb21fZXhpdCgpIGZ1bmN0aW9uLiBZb3UgYWRkZWQgYSBsb2NhbCB2YXJpYWJs
ZSBmb3IgJ2hvc3QtPmdlbmVyaWNfcGh5JywKd2hpY2ggaXMgbm90IHJlbGF0ZWQgdG8gdGhpcyBw
YXRjaC4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7g
rprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
