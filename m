Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62DD2C46CD2
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jan 2024 08:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J+dZcC3tRwByvqAl3arZK0sALThTqrRiUhS6xMbD6YQ=; b=SNoH7GT31Iw6bJ
	ELYCbhgJinBG/Bw9O8CdlzDfzM/SKd8KeFaEmnBOVm6qBukPEhZHXBfXiT3SBK5p852LhruAwSf3f
	QReQFdxpa7NiJ6F/LBLdiBR903p/mrwNjlBi9NElvwg5j6FDoHFfcKnyOa9GAg0DS9fzlbKciHrtc
	dttl5BDlAsG5MroAPb25H2hyWuGrursm8GNfjbScPpupiZmW3FsV3Yk5rPjY1QMiOZTg+7JulC28K
	ueJoQiH9H4Mmi2KTtSwC/J9zPvEAOFNBWnqMOOb36t1zd9sUZyS68hobuJ/aDdHe2s7swPy/RZEj6
	s3MJ+Dyrfhn5HQgbpbxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSYWx-001ztf-2x;
	Wed, 24 Jan 2024 08:22:43 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSYWu-001zsX-2H
	for linux-phy@lists.infradead.org;
	Wed, 24 Jan 2024 08:22:42 +0000
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-6da6b0eb2d4so2904353b3a.1
        for <linux-phy@lists.infradead.org>; Wed, 24 Jan 2024 00:22:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706084559; x=1706689359; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xHnMGTip0k5WQr/ocF61LjVmzrROreb8ZXQsvgEPM10=;
        b=TFNo9qRvsMjhtF+Lm1CQFa9IImrGPtFrFYtB+Qwu/lLEerPvElz5BxHDg3g/7650Fq
         n8VF+smIEmim6cTxq/BJaqCT5LYITcsGC54+tIvR9yastByv77sPtHZi6CS7lkx6DGYK
         8KWfgKg4Nzng9g1wH6MsLKxoPcb0OWp1j/r0CR3dfmqrMAiUHLXzRE1qhnFE3AaWSGf/
         9WNJL4LxrcVF2V6ZSws+HOXTAgvWJ4vQ3RDm3dAxwRuhOawGcOxF636NuykGanCSsbIA
         Cjlt3V+DSYvfkYV5NjEKysOg8485lVXUbxX2L+FFeZe/CqrPAXTlIn5+HyPI5aSIpfZV
         NwIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706084559; x=1706689359;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xHnMGTip0k5WQr/ocF61LjVmzrROreb8ZXQsvgEPM10=;
        b=eew1MdPfdZag9rkSaPmz2MJf6q+3ngCXYNhAUWoonqOWUnXCbInAMqsuok2/TlYWiF
         xRB9GZbD2Km3bnGErysUV2a4NSllf7w9slNkDTnsQ+p62jst8KPcvutTuDqWfJtHmkEE
         f6JH3Q0hakrqnhwCahIjMhF9r2zDcoRktiUP1m2Dn44quj9KvO4KGXgKT5ukWz5jgEVf
         y2i47s0fDVyyRS/xt16ZfFJ1OBXhAIbd3MyX+4ZB0pW4qM8hdJO0urFOPedomofhUGHo
         nibwpxNIe0mN0kJbjIDHR6BQUs1GDEu5Y8GG6Hzq/VRNUg2QEOjEUVU1wfonsYSdJrZU
         ET0g==
X-Gm-Message-State: AOJu0Yw2gG5cvkLUVoEG7PlBP3nMzsfYDFo78b0zv3b7MYuPInswCx4y
	1fe1nM/0IqiKv88oZHnZGPL0XpmJeDBz3tf7Oe4Pxmpa3YT1zXCRDrlUHigE0Q==
X-Google-Smtp-Source: AGHT+IFYijfZfQJRYeJr90+4Q5xmMq6ccGYCRmITy1K5PGzM1guUVEdm+Q1tNA1zYNMr19HRhkaD0g==
X-Received: by 2002:a05:6a20:6115:b0:19c:32cf:8ff2 with SMTP id m21-20020a056a20611500b0019c32cf8ff2mr273690pzb.79.1706084559474;
        Wed, 24 Jan 2024 00:22:39 -0800 (PST)
Received: from thinkpad ([117.217.189.109])
        by smtp.gmail.com with ESMTPSA id z66-20020a626545000000b006dbe6eba197sm4768321pfb.217.2024.01.24.00.22.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jan 2024 00:22:39 -0800 (PST)
Date: Wed, 24 Jan 2024 13:52:31 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
	Can Guo <quic_cang@quicinc.com>,
	Naveen Kumar Goud Arepalli <quic_narepall@quicinc.com>
Subject: Re: [PATCH V1 1/2] scsi: ufs: qcom : Refactor phy_power_on/off calls
Message-ID: <20240124082231.GA4906@thinkpad>
References: <20240112153348.2778-1-quic_nitirawa@quicinc.com>
 <20240112153348.2778-2-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240112153348.2778-2-quic_nitirawa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240124_002240_750295_C3727CEE 
X-CRM114-Status: GOOD (  23.25  )
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

T24gRnJpLCBKYW4gMTIsIDIwMjQgYXQgMDk6MDM6NDdQTSArMDUzMCwgTml0aW4gUmF3YXQgd3Jv
dGU6Cj4gQ29tbWl0IDNmNmQxNzY3YjFhMCAoInBoeTogdWZzLXFjb206IFJlZmFjdG9yIGFsbCBp
bml0IHN0ZXBzIGludG8KPiBwaHlfcG93ZXJvbiIpIHJlbW92ZXMgdGhlIHBoeV9wb3dlcl9vbi9v
ZmYgZnJvbSB1ZnNfcWNvbV9zZXR1cF9jbG9ja3MKCnMvcmVtb3Zlcy9tb3ZlZAoKPiB0byBzdXNw
ZW5kL3Jlc3VtZSBmdW5jLgo+IAo+IFRvIGhhdmUgYSBiZXR0ZXIgcG93ZXIgc2F2aW5nLCByZW1v
dmUgdGhlIHBoeV9wb3dlcl9vbi9vZmYgY2FsbHMgZnJvbQo+IHJlc3VtZS9zdXNwZW5kIHBhdGgg
YW5kIHB1dCB0aGVtIGJhY2sgdG8gdWZzX3Fjb21fc2V0dXBfY2xvY2tzLCBzbyB0aGF0Cj4gUEhZ
J3MgcmVndWxhdG9ycyAmIGNsa3MgY2FuIGJlIHR1cm5lZCBvbi9vZmYgYWxvbmcgd2l0aCBVRlMn
cyBjbG9ja3MuCj4gCj4gU2luY2UgcGh5IHBoeV9wb3dlcl9vbiBpcyBzZXBhcmF0ZWQgb3V0IGZy
b20gcGh5IGNhbGlicmF0ZSwgbWFrZQo+IHNlcGFyYXRlIGNhbGxzIHRvIHBoeV9wb3dlcl9vbiBh
bmQgcGh5X2NhbGlicmF0ZSBjYWxscyBmcm9tIHVmcyBxY29tCj4gZHJpdmVyLgo+IAoKQWJvdmUg
Y2hhbmdlIHNob3VsZCBiZSBpbiBhIHNlcGFyYXRlIHBhdGNoLgoKPiBBbHNvIGFkZCBhIG11dGV4
IGxvY2sgdG8gcHJvdGVjdCB0aGUgdXNhZ2Ugb2YgaXNfcGh5X3B3cl9vbiBhZ2FpbnN0Cj4gcG9z
c2libGUgcmFjaW5nLgo+IAo+IENvLWRldmVsb3BlZC1ieTogQ2FuIEd1byA8cXVpY19jYW5nQHF1
aWNpbmMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IENhbiBHdW8gPHF1aWNfY2FuZ0BxdWljaW5jLmNv
bT4KPiBDby1kZXZlbG9wZWQtYnk6IE5hdmVlbiBLdW1hciBHb3VkIEFyZXBhbGxpIDxxdWljX25h
cmVwYWxsQHF1aWNpbmMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IE5hdmVlbiBLdW1hciBHb3VkIEFy
ZXBhbGxpIDxxdWljX25hcmVwYWxsQHF1aWNpbmMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IE5pdGlu
IFJhd2F0IDxxdWljX25pdGlyYXdhQHF1aWNpbmMuY29tPgo+IC0tLQo+ICBkcml2ZXJzL3Vmcy9o
b3N0L3Vmcy1xY29tLmMgfCAxMDQgKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0t
Cj4gIGRyaXZlcnMvdWZzL2hvc3QvdWZzLXFjb20uaCB8ICAgNCArKwo+ICAyIGZpbGVzIGNoYW5n
ZWQsIDcyIGluc2VydGlvbnMoKyksIDM2IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3Vmcy9ob3N0L3Vmcy1xY29tLmMgYi9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1xY29tLmMK
PiBpbmRleCAzOWVlZjQ3MGY4ZmEuLjI3MjFhMzBmMGRiOCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L3Vmcy9ob3N0L3Vmcy1xY29tLmMKPiArKysgYi9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1xY29tLmMK
PiBAQCAtMzM4LDYgKzMzOCw0NiBAQCBzdGF0aWMgdTMyIHVmc19xY29tX2dldF9oc19nZWFyKHN0
cnVjdCB1ZnNfaGJhICpoYmEpCj4gIAlyZXR1cm4gVUZTX0hTX0czOwo+ICB9Cj4gCj4gK3N0YXRp
YyBpbnQgdWZzX3Fjb21fcGh5X3Bvd2VyX29uKHN0cnVjdCB1ZnNfaGJhICpoYmEpCj4gK3sKPiAr
CXN0cnVjdCB1ZnNfcWNvbV9ob3N0ICpob3N0ID0gdWZzaGNkX2dldF92YXJpYW50KGhiYSk7Cj4g
KwlzdHJ1Y3QgcGh5ICpwaHkgPSBob3N0LT5nZW5lcmljX3BoeTsKPiArCWludCByZXQgPSAwOwo+
ICsKPiArCW11dGV4X2xvY2soJmhvc3QtPnBoeV9tdXRleCk7CgpZb3UgZG8gbm90IG5lZWQgbXV0
ZXggdG8gcHJvdGVjdCBhIHZhcmlhYmxlLiBJZiB5b3Ugd2FudCB0byBlbnN1cmUgdGhhdCB0aGUK
YWNjZXNzIHRvIHRoZSBmbGFnIGlzIGF0b21pYywgeW91IGNhbiB1c2UgdGVzdF9hbmRfe3NldC9j
bGVhcn1fYml0IGhlbHBlcnMuCgo+ICsJaWYgKCFob3N0LT5pc19waHlfcHdyX29uKSB7Cj4gKwkJ
cmV0ID0gcGh5X3Bvd2VyX29uKHBoeSk7Cj4gKwkJaWYgKHJldCkgewo+ICsJCQltdXRleF91bmxv
Y2soJmhvc3QtPnBoeV9tdXRleCk7Cj4gKwkJCXJldHVybiByZXQ7Cj4gKwkJfQo+ICsJCWhvc3Qt
PmlzX3BoeV9wd3Jfb24gPSB0cnVlOwo+ICsJfQo+ICsJbXV0ZXhfdW5sb2NrKCZob3N0LT5waHlf
bXV0ZXgpOwo+ICsKPiArCXJldHVybiByZXQ7Cj4gK30KPiArCj4gK3N0YXRpYyBpbnQgdWZzX3Fj
b21fcGh5X3Bvd2VyX29mZihzdHJ1Y3QgdWZzX2hiYSAqaGJhKQo+ICt7Cj4gKwlzdHJ1Y3QgdWZz
X3Fjb21faG9zdCAqaG9zdCA9IHVmc2hjZF9nZXRfdmFyaWFudChoYmEpOwo+ICsJc3RydWN0IHBo
eSAqcGh5ID0gaG9zdC0+Z2VuZXJpY19waHk7Cj4gKwlpbnQgcmV0ID0gMDsKPiArCj4gKwltdXRl
eF9sb2NrKCZob3N0LT5waHlfbXV0ZXgpOwo+ICsJaWYgKGhvc3QtPmlzX3BoeV9wd3Jfb24pIHsK
PiArCQlyZXQgPSBwaHlfcG93ZXJfb2ZmKHBoeSk7Cj4gKwkJaWYgKHJldCkgewo+ICsJCQltdXRl
eF91bmxvY2soJmhvc3QtPnBoeV9tdXRleCk7Cj4gKwkJCXJldHVybiByZXQ7Cj4gKwkJfQo+ICsJ
CWhvc3QtPmlzX3BoeV9wd3Jfb24gPSBmYWxzZTsKPiArCX0KPiArCW11dGV4X3VubG9jaygmaG9z
dC0+cGh5X211dGV4KTsKPiArCj4gKwlyZXR1cm4gcmV0Owo+ICt9Cj4gKwo+ICBzdGF0aWMgaW50
IHVmc19xY29tX3Bvd2VyX3VwX3NlcXVlbmNlKHN0cnVjdCB1ZnNfaGJhICpoYmEpCj4gIHsKPiAg
CXN0cnVjdCB1ZnNfcWNvbV9ob3N0ICpob3N0ID0gdWZzaGNkX2dldF92YXJpYW50KGhiYSk7Cj4g
QEAgLTM3OCwxMyArNDE4LDE4IEBAIHN0YXRpYyBpbnQgdWZzX3Fjb21fcG93ZXJfdXBfc2VxdWVu
Y2Uoc3RydWN0IHVmc19oYmEgKmhiYSkKPiAgCQlnb3RvIG91dF9kaXNhYmxlX3BoeTsKPiAKPiAg
CS8qIHBvd2VyIG9uIHBoeSAtIHN0YXJ0IHNlcmRlcyBhbmQgcGh5J3MgcG93ZXIgYW5kIGNsb2Nr
cyAqLwo+IC0JcmV0ID0gcGh5X3Bvd2VyX29uKHBoeSk7Cj4gKwlyZXQgPSB1ZnNfcWNvbV9waHlf
cG93ZXJfb24oaGJhKTsKPiAgCWlmIChyZXQpIHsKPiAgCQlkZXZfZXJyKGhiYS0+ZGV2LCAiJXM6
IHBoeSBwb3dlciBvbiBmYWlsZWQsIHJldCA9ICVkXG4iLAo+ICAJCQlfX2Z1bmNfXywgcmV0KTsK
PiAgCQlnb3RvIG91dF9kaXNhYmxlX3BoeTsKPiAgCX0KPiAKPiArCXJldCA9IHBoeV9jYWxpYnJh
dGUocGh5KTsKPiArCWlmIChyZXQpIHsKPiArCQlkZXZfZXJyKGhiYS0+ZGV2LCAiJXM6IEZhaWxl
ZCB0byBjYWxpYnJhdGUgUEhZICVkXG4iLAo+ICsJCQkJICBfX2Z1bmNfXywgcmV0KTsKCkV2ZW4g
dGhvdWdoIHRoZSBkcml2ZXIgYWxyZWFkeSBoYXMgYSBsb3Qgb2YgIl9fZnVuY19fIiB0byBwcmlu
dCB0aGUgZnVuY3Rpb24KbmFtZXMgaW4gZXJyb3IgbG9nLCBwbGVhc2UgZG8gbm90IGFkZCBtb3Jl
LiBJIHdpbGwgZ2V0IHJpZCBvZiB0aGUgZXhpc3Rpbmcgb25lcwphdCBzb21lIHBvaW50LgoKLSBN
YW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCu
ruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
