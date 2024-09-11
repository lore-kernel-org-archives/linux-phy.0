Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F89FEE0213
	for <linux-phy@archiver.kernel.org>; Wed, 11 Sep 2024 15:55:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pqVVsOIfrUpmoMQLYYuDvnMDSnWxQaMDGWmv0rR/qrs=; b=lP6hM/6xQRpolV
	92Pt32bnnWvA9gYgcSYk+CGKjYv+QJwWgcrI7oJrY4nbujNhfeS5uUWsQb9+Xuqt5Zvnr0GiA0Dba
	EDtnjK+FnhWDtyz9ezLVkhzcmuvdKAYJyiO6ILAEeiKufUOR9bSYAKJCI/pgMt0tpXLBAIbb6R7xg
	e2dIe8QJoNqmrvaEOirz4YfpF3fztui6ptBojBIodeZsmr9VsPUXjRX15JUJ6utF7cxv0V55zyG79
	j6MoUaKHnDl1bjYhE9V9GIHR+NbdCiF0bVINiPyfSezCm67ES3ttuMSaAxWjuNEMN51oCFEhi1hxI
	0HUH0pb6gNKE+v7WAMwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soPgW-0000000AFhk-28sc;
	Wed, 11 Sep 2024 15:55:12 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soPKh-0000000AAa9-3IR7
	for linux-phy@lists.infradead.org;
	Wed, 11 Sep 2024 15:32:41 +0000
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-718da0821cbso4492568b3a.0
        for <linux-phy@lists.infradead.org>; Wed, 11 Sep 2024 08:32:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726068759; x=1726673559; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JUnLTmnkKuTjduDvDakmnEv59zQ17ggV64w/1jebL68=;
        b=kCj1ynVm5YYVKdX5ttSDXnrdMQUX9n8wIVCKBNdGptU3wOqMzE4RMokW6Y0TFNgeJg
         57pV3amyM8eyBvKcgNcz2Sg46tP6gBfTiqAAzsMk4VU1PJ5IVNHr/XMjXPm8+gLewkeu
         siYX0Gjuor/A8rP0kFDouQW4ReVoX4kuoV4VKwxC5/fIyNomCzYrEjjlbbhNzcqVhHgX
         4yaQW324ChAPzQtrwyzeRBNW7bbxvLyktVjaZC0DnqzJCdWmEZuX1f63x9OnDZDdTbvu
         oBQHhpq7nNJm74lWEjiE7imBF16mnru/dQPLnCG8hV4im9RdzpY1XEU8ymKkia8Xakq9
         dHfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726068759; x=1726673559;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JUnLTmnkKuTjduDvDakmnEv59zQ17ggV64w/1jebL68=;
        b=uE8Wp4jzJC+tBjKB8XKpYLGhazcleVL6Li7bL7I9RISyMBVIqsCw+qv85ww8Rf0kBE
         bI9cGcOXAxsyjYiT1XUVcSzZf9PvUwJVzyIVVOVRv61Jmw6R9TJCYzjdrA+WNclTxpne
         Uz82GR55PyT8NUwPgfPIRyVcITuBGJcc6Zvxn/ByRfBLriWUYQnZb2mlsWfa9VBrbbfw
         z1jmZ3Z0MihhqVDPmhEWwgjmAbmiAPwfJJyXbkThD56C/EcbVDhnR/XCeI7lRZHdIr0A
         NGLPvEIGOkTtOb+EWz18rVON3f87INS1J5qQ3qgTENywVosFC1LjkqBJP+6JtH3wI4R5
         8SGw==
X-Forwarded-Encrypted: i=1; AJvYcCUJLO+sDLySiHGJ3m+MkW0Y0KI6ijGzCtX1Xg5/liDmXMmU0j0CoRwTK1vgRCNnNQZV6SP9hapKwNo=@lists.infradead.org
X-Gm-Message-State: AOJu0YxUYUZNFaJljs/DpOHZlxuNBYH1z95nNC4b5i307rg8GTvi7fls
	mfQTwZyU/sagQPPOG80br5CYWeP7GV460mqDbFRTWGItQMss1ZHRqZH3LXglew==
X-Google-Smtp-Source: AGHT+IEgOgO8muSou4mMHOAUIftNXmTF9h5ug/uQEGPL0Bqkvr313ObMh3MqMwuRezxyzZzkjOshzA==
X-Received: by 2002:a05:6a00:4fc3:b0:717:fd98:4a6 with SMTP id d2e1a72fcca58-718e3fc0534mr21290930b3a.11.1726068758507;
        Wed, 11 Sep 2024 08:32:38 -0700 (PDT)
Received: from thinkpad ([120.60.130.207])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7db1fdf67b0sm108896a12.79.2024.09.11.08.32.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 08:32:38 -0700 (PDT)
Date: Wed, 11 Sep 2024 21:02:28 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, vkoul@kernel.org,
	kishon@kernel.org, robh@kernel.org, andersson@kernel.org,
	konradybcio@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	mturquette@baylibre.com, sboyd@kernel.org, abel.vesa@linaro.org,
	quic_msarkar@quicinc.com, quic_devipriy@quicinc.com, kw@linux.com,
	lpieralisi@kernel.org, neil.armstrong@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH 8/8] PCI: qcom: Add support to PCIe slot power supplies
Message-ID: <20240911153228.7ajcqicxnu2afhbp@thinkpad>
References: <20240827063631.3932971-1-quic_qianyu@quicinc.com>
 <20240827063631.3932971-9-quic_qianyu@quicinc.com>
 <CAA8EJpq5KergZ8czg4F=EYMLANoOeBsiSVoO-zAgfG0ezQrKCQ@mail.gmail.com>
 <20240827165826.moe6cnemeheos6jn@thinkpad>
 <26f2845f-2e29-4887-9f33-0b5b2a06adb6@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <26f2845f-2e29-4887-9f33-0b5b2a06adb6@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_083239_858789_B6137D08 
X-CRM114-Status: GOOD (  33.66  )
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

T24gV2VkLCBTZXAgMTEsIDIwMjQgYXQgMDQ6MTc6NDFQTSArMDgwMCwgUWlhbmcgWXUgd3JvdGU6
Cj4gCj4gT24gOC8yOC8yMDI0IDEyOjU4IEFNLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6
Cj4gPiBPbiBUdWUsIEF1ZyAyNywgMjAyNCBhdCAwMjo0NDowOVBNICswMzAwLCBEbWl0cnkgQmFy
eXNoa292IHdyb3RlOgo+ID4gPiBPbiBUdWUsIDI3IEF1ZyAyMDI0IGF0IDA5OjM2LCBRaWFuZyBZ
dSA8cXVpY19xaWFueXVAcXVpY2luYy5jb20+IHdyb3RlOgo+ID4gPiA+IE9uIHBsYXRmb3JtIHgx
ZTgwMTAwIFFDUCwgUENJZTMgaXMgYSBzdGFuZGFyZCB4OCBmb3JtIGZhY3Rvci4gSGVuY2UsIGFk
ZAo+ID4gPiA+IHN1cHBvcnQgdG8gdXNlIDMuM3YsIDMuM3YgYXV4IGFuZCAxMnYgcmVndWxhdG9y
cy4KPiA+ID4gRmlyc3Qgb2YgYWxsLCBJIGRvbid0IHNlZSBjb3JyZXNwb25kaW5nIGJpbmRpbmdz
IGNoYW5nZS4KPiA+ID4gCj4gPiA+IFNlY29uZCwgdGhlc2Ugc3VwcGxpZXMgcG93ZXIgdXAgdGhl
IHNsb3QsIG5vdCB0aGUgaG9zdCBjb250cm9sbGVyCj4gPiA+IGl0c2VsZi4gQXMgc3VjaCB0aGVz
ZSBzdXBwbGllcyBkbyBub3QgYmVsb25nIHRvIHRoZSBob3N0IGNvbnRyb2xsZXIKPiA+ID4gZW50
cnkuIFBsZWFzZSBjb25zaWRlciB1c2luZyB0aGUgcHdyc2VxIGZyYW1ld29yayBpbnN0ZWFkLgo+
ID4gPiAKPiA+IEluZGVlZC4gRm9yIGxlZ2FjeSByZWFzb25zLCBzbG90IHBvd2VyIHN1cHBsaWVz
IHdlcmUgcG9wdWxhdGVkIGluIHRoZSBob3N0Cj4gPiBicmlkZ2Ugbm9kZSBpdHNlbGYgdW50aWwg
cmVjZW50bHkgUm9iIHN0YXJ0ZWQgb2JqZWN0aW5nIGl0IFsxXS4gQW5kIGl0IG1ha2VzCj4gPiBy
ZWFsIHNlbnNlIHRvIHB1dCB0aGVzZSBzdXBwbGllcyBpbiB0aGUgcm9vdCBwb3J0IG5vZGUgYW5k
IGhhbmRsZSB0aGVtIGluIHRoZQo+ID4gcmVsZXZhbnQgZHJpdmVyLgo+ID4gCj4gPiBJJ20gc3Rp
bGwgZXZhbHVhdGluZyB3aGV0aGVyIHRoZSBoYW5kbGluZyBzaG91bGQgYmUgZG9uZSBpbiB0aGUg
cG9ydGRydiBvcgo+ID4gcHdyY3RsIGRyaXZlciwgYnV0IGhhdmVuJ3QgcmVhY2hlZCB0aGUgY29u
Y2x1c2lvbi4gUHdyY3RsIHNlZW1zIHRvIGJlIHRoZSBpZGVhbAo+ID4gY2hvaWNlLCBidXQgSSBz
ZWUgYSBmZXcgaXNzdWVzIHJlbGF0ZWQgdG8gaGFuZGxpbmcgdGhlIE9GIG5vZGUgZm9yIHRoZSBy
b290Cj4gPiBwb3J0Lgo+ID4gCj4gPiBIb3BlIEknbGwgY29tZSB0byBhIGNvbmNsdXNpb24gaW4g
dGhlIG5leHQgZmV3IGRheXMgYW5kIHdpbGwgdXBkYXRlIHRoaXMgdGhyZWFkLgo+ID4gCj4gPiAt
IE1hbmkKPiA+IAo+ID4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAyNDA2MDQy
MzU4MDYuR0ExOTAzNDkzLXJvYmhAa2VybmVsLm9yZy8KPiBIaSBNYW5pLCBkbyB5b3UgaGF2ZSBh
bnkgdXBkYXRlcz8KPiAKCkknbSB3b3JraW5nIHdpdGggQmFydG9zeiB0byBhZGQgYSBuZXcgcHdy
Y3RsIGRyaXZlciBmb3Igcm9vdHBvcnRzLiBBbmQgd2UgYXJlCmRlYnVnZ2luZyBhbiBpc3N1ZSBj
dXJyZW50bHkuIFVuZm9ydHVuYXRlbHksIHRoZSBwcm9ncmVzcyBpcyB2ZXJ5IHNsb3cgYXMgSSdt
IG9uCnZhY2F0aW9uIHN0aWxsLgoKV2lsbCBwb3N0IHRoZSBwYXRjaGVzIG9uY2UgaXQgZ290IHJl
c29sdmVkLgoKLSBNYW5pCgo+IFRoYW5rcywKPiBRaWFuZwo+ID4gCj4gPiA+ID4gU2lnbmVkLW9m
Zi1ieTogUWlhbmcgWXUgPHF1aWNfcWlhbnl1QHF1aWNpbmMuY29tPgo+ID4gPiA+IC0tLQo+ID4g
PiA+ICAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMgfCA1MiArKysrKysr
KysrKysrKysrKysrKysrKysrLQo+ID4gPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDUwIGluc2VydGlv
bnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPiA+ID4gCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxl
ci9kd2MvcGNpZS1xY29tLmMKPiA+ID4gPiBpbmRleCA2Zjk1M2UzMmQ5OTAuLjU5ZmI0MTVkZmVl
YiAxMDA2NDQKPiA+ID4gPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFj
b20uYwo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5j
Cj4gPiA+ID4gQEAgLTI0OCw2ICsyNDgsOCBAQCBzdHJ1Y3QgcWNvbV9wY2llX2NmZyB7Cj4gPiA+
ID4gICAgICAgICAgYm9vbCBub19sMHM7Cj4gPiA+ID4gICB9Owo+ID4gPiA+IAo+ID4gPiA+ICsj
ZGVmaW5lIFFDT01fUENJRV9TTE9UX01BWF9TVVBQTElFUyAgICAgICAgICAgICAgICAgICAgMwo+
ID4gPiA+ICsKPiA+ID4gPiAgIHN0cnVjdCBxY29tX3BjaWUgewo+ID4gPiA+ICAgICAgICAgIHN0
cnVjdCBkd19wY2llICpwY2k7Cj4gPiA+ID4gICAgICAgICAgdm9pZCBfX2lvbWVtICpwYXJmOyAg
ICAgICAgICAgICAgICAgICAgIC8qIERUIHBhcmYgKi8KPiA+ID4gPiBAQCAtMjYwLDYgKzI2Miw3
IEBAIHN0cnVjdCBxY29tX3BjaWUgewo+ID4gPiA+ICAgICAgICAgIHN0cnVjdCBpY2NfcGF0aCAq
aWNjX2NwdTsKPiA+ID4gPiAgICAgICAgICBjb25zdCBzdHJ1Y3QgcWNvbV9wY2llX2NmZyAqY2Zn
Owo+ID4gPiA+ICAgICAgICAgIHN0cnVjdCBkZW50cnkgKmRlYnVnZnM7Cj4gPiA+ID4gKyAgICAg
ICBzdHJ1Y3QgcmVndWxhdG9yX2J1bGtfZGF0YSBzbG90X3N1cHBsaWVzW1FDT01fUENJRV9TTE9U
X01BWF9TVVBQTElFU107Cj4gPiA+ID4gICAgICAgICAgYm9vbCBzdXNwZW5kZWQ7Cj4gPiA+ID4g
ICAgICAgICAgYm9vbCB1c2VfcG1fb3BwOwo+ID4gPiA+ICAgfTsKPiA+ID4gPiBAQCAtMTE3NCw2
ICsxMTc3LDQxIEBAIHN0YXRpYyBpbnQgcWNvbV9wY2llX2xpbmtfdXAoc3RydWN0IGR3X3BjaWUg
KnBjaSkKPiA+ID4gPiAgICAgICAgICByZXR1cm4gISEodmFsICYgUENJX0VYUF9MTktTVEFfRExM
TEEpOwo+ID4gPiA+ICAgfQo+ID4gPiA+IAo+ID4gPiA+ICtzdGF0aWMgaW50IHFjb21fcGNpZV9l
bmFibGVfc2xvdF9zdXBwbGllcyhzdHJ1Y3QgcWNvbV9wY2llICpwY2llKQo+ID4gPiA+ICt7Cj4g
PiA+ID4gKyAgICAgICBzdHJ1Y3QgZHdfcGNpZSAqcGNpID0gcGNpZS0+cGNpOwo+ID4gPiA+ICsg
ICAgICAgaW50IHJldDsKPiA+ID4gPiArCj4gPiA+ID4gKyAgICAgICByZXQgPSByZWd1bGF0b3Jf
YnVsa19lbmFibGUoQVJSQVlfU0laRShwY2llLT5zbG90X3N1cHBsaWVzKSwKPiA+ID4gPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwY2llLT5zbG90X3N1cHBsaWVzKTsKPiA+
ID4gPiArICAgICAgIGlmIChyZXQgPCAwKQo+ID4gPiA+ICsgICAgICAgICAgICAgICBkZXZfZXJy
KHBjaS0+ZGV2LCAiRmFpbGVkIHRvIGVuYWJsZSBzbG90IHJlZ3VsYXRvcnNcbiIpOwo+ID4gPiA+
ICsKPiA+ID4gPiArICAgICAgIHJldHVybiByZXQ7Cj4gPiA+ID4gK30KPiA+ID4gPiArCj4gPiA+
ID4gK3N0YXRpYyB2b2lkIHFjb21fcGNpZV9kaXNhYmxlX3Nsb3Rfc3VwcGxpZXMoc3RydWN0IHFj
b21fcGNpZSAqcGNpZSkKPiA+ID4gPiArewo+ID4gPiA+ICsgICAgICAgcmVndWxhdG9yX2J1bGtf
ZGlzYWJsZShBUlJBWV9TSVpFKHBjaWUtPnNsb3Rfc3VwcGxpZXMpLAo+ID4gPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBwY2llLT5zbG90X3N1cHBsaWVzKTsKPiA+ID4gPiArfQo+
ID4gPiA+ICsKPiA+ID4gPiArc3RhdGljIGludCBxY29tX3BjaWVfZ2V0X3Nsb3Rfc3VwcGxpZXMo
c3RydWN0IHFjb21fcGNpZSAqcGNpZSkKPiA+ID4gPiArewo+ID4gPiA+ICsgICAgICAgc3RydWN0
IGR3X3BjaWUgKnBjaSA9IHBjaWUtPnBjaTsKPiA+ID4gPiArICAgICAgIGludCByZXQ7Cj4gPiA+
ID4gKwo+ID4gPiA+ICsgICAgICAgcGNpZS0+c2xvdF9zdXBwbGllc1swXS5zdXBwbHkgPSAidnBj
aWUxMnYiOwo+ID4gPiA+ICsgICAgICAgcGNpZS0+c2xvdF9zdXBwbGllc1sxXS5zdXBwbHkgPSAi
dnBjaWUzdjMiOwo+ID4gPiA+ICsgICAgICAgcGNpZS0+c2xvdF9zdXBwbGllc1syXS5zdXBwbHkg
PSAidnBjaWUzdjNhdXgiOwo+ID4gPiA+ICsgICAgICAgcmV0ID0gZGV2bV9yZWd1bGF0b3JfYnVs
a19nZXQocGNpLT5kZXYsIEFSUkFZX1NJWkUocGNpZS0+c2xvdF9zdXBwbGllcyksCj4gPiA+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwY2llLT5zbG90X3N1cHBsaWVz
KTsKPiA+ID4gPiArICAgICAgIGlmIChyZXQgPCAwKQo+ID4gPiA+ICsgICAgICAgICAgICAgICBk
ZXZfZXJyKHBjaS0+ZGV2LCAiRmFpbGVkIHRvIGdldCBzbG90IHJlZ3VsYXRvcnNcbiIpOwo+ID4g
PiA+ICsKPiA+ID4gPiArICAgICAgIHJldHVybiByZXQ7Cj4gPiA+ID4gK30KPiA+ID4gPiArCj4g
PiA+ID4gICBzdGF0aWMgaW50IHFjb21fcGNpZV9ob3N0X2luaXQoc3RydWN0IGR3X3BjaWVfcnAg
KnBwKQo+ID4gPiA+ICAgewo+ID4gPiA+ICAgICAgICAgIHN0cnVjdCBkd19wY2llICpwY2kgPSB0
b19kd19wY2llX2Zyb21fcHAocHApOwo+ID4gPiA+IEBAIC0xMTgyLDEwICsxMjIwLDE0IEBAIHN0
YXRpYyBpbnQgcWNvbV9wY2llX2hvc3RfaW5pdChzdHJ1Y3QgZHdfcGNpZV9ycCAqcHApCj4gPiA+
ID4gCj4gPiA+ID4gICAgICAgICAgcWNvbV9lcF9yZXNldF9hc3NlcnQocGNpZSk7Cj4gPiA+ID4g
Cj4gPiA+ID4gLSAgICAgICByZXQgPSBwY2llLT5jZmctPm9wcy0+aW5pdChwY2llKTsKPiA+ID4g
PiArICAgICAgIHJldCA9IHFjb21fcGNpZV9lbmFibGVfc2xvdF9zdXBwbGllcyhwY2llKTsKPiA+
ID4gPiAgICAgICAgICBpZiAocmV0KQo+ID4gPiA+ICAgICAgICAgICAgICAgICAgcmV0dXJuIHJl
dDsKPiA+ID4gPiAKPiA+ID4gPiArICAgICAgIHJldCA9IHBjaWUtPmNmZy0+b3BzLT5pbml0KHBj
aWUpOwo+ID4gPiA+ICsgICAgICAgaWYgKHJldCkKPiA+ID4gPiArICAgICAgICAgICAgICAgZ290
byBlcnJfZGlzYWJsZV9zbG90Owo+ID4gPiA+ICsKPiA+ID4gPiAgICAgICAgICByZXQgPSBwaHlf
c2V0X21vZGVfZXh0KHBjaWUtPnBoeSwgUEhZX01PREVfUENJRSwgUEhZX01PREVfUENJRV9SQyk7
Cj4gPiA+ID4gICAgICAgICAgaWYgKHJldCkKPiA+ID4gPiAgICAgICAgICAgICAgICAgIGdvdG8g
ZXJyX2RlaW5pdDsKPiA+ID4gPiBAQCAtMTIxNiw3ICsxMjU4LDggQEAgc3RhdGljIGludCBxY29t
X3BjaWVfaG9zdF9pbml0KHN0cnVjdCBkd19wY2llX3JwICpwcCkKPiA+ID4gPiAgICAgICAgICBw
aHlfcG93ZXJfb2ZmKHBjaWUtPnBoeSk7Cj4gPiA+ID4gICBlcnJfZGVpbml0Ogo+ID4gPiA+ICAg
ICAgICAgIHBjaWUtPmNmZy0+b3BzLT5kZWluaXQocGNpZSk7Cj4gPiA+ID4gLQo+ID4gPiA+ICtl
cnJfZGlzYWJsZV9zbG90Ogo+ID4gPiA+ICsgICAgICAgcWNvbV9wY2llX2Rpc2FibGVfc2xvdF9z
dXBwbGllcyhwY2llKTsKPiA+ID4gPiAgICAgICAgICByZXR1cm4gcmV0Owo+ID4gPiA+ICAgfQo+
ID4gPiA+IAo+ID4gPiA+IEBAIC0xMjI4LDYgKzEyNzEsNyBAQCBzdGF0aWMgdm9pZCBxY29tX3Bj
aWVfaG9zdF9kZWluaXQoc3RydWN0IGR3X3BjaWVfcnAgKnBwKQo+ID4gPiA+ICAgICAgICAgIHFj
b21fZXBfcmVzZXRfYXNzZXJ0KHBjaWUpOwo+ID4gPiA+ICAgICAgICAgIHBoeV9wb3dlcl9vZmYo
cGNpZS0+cGh5KTsKPiA+ID4gPiAgICAgICAgICBwY2llLT5jZmctPm9wcy0+ZGVpbml0KHBjaWUp
Owo+ID4gPiA+ICsgICAgICAgcWNvbV9wY2llX2Rpc2FibGVfc2xvdF9zdXBwbGllcyhwY2llKTsK
PiA+ID4gPiAgIH0KPiA+ID4gPiAKPiA+ID4gPiAgIHN0YXRpYyB2b2lkIHFjb21fcGNpZV9ob3N0
X3Bvc3RfaW5pdChzdHJ1Y3QgZHdfcGNpZV9ycCAqcHApCj4gPiA+ID4gQEAgLTE2MDIsNiArMTY0
NiwxMCBAQCBzdGF0aWMgaW50IHFjb21fcGNpZV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICpwZGV2KQo+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICBnb3RvIGVycl9wbV9ydW50
aW1lX3B1dDsKPiA+ID4gPiAgICAgICAgICB9Cj4gPiA+ID4gCj4gPiA+ID4gKyAgICAgICByZXQg
PSBxY29tX3BjaWVfZ2V0X3Nsb3Rfc3VwcGxpZXMocGNpZSk7Cj4gPiA+ID4gKyAgICAgICBpZiAo
cmV0KQo+ID4gPiA+ICsgICAgICAgICAgICAgICBnb3RvIGVycl9wbV9ydW50aW1lX3B1dDsKPiA+
ID4gPiArCj4gPiA+ID4gICAgICAgICAgcmV0ID0gcGNpZS0+Y2ZnLT5vcHMtPmdldF9yZXNvdXJj
ZXMocGNpZSk7Cj4gPiA+ID4gICAgICAgICAgaWYgKHJldCkKPiA+ID4gPiAgICAgICAgICAgICAg
ICAgIGdvdG8gZXJyX3BtX3J1bnRpbWVfcHV0Owo+ID4gPiA+IC0tCj4gPiA+ID4gMi4zNC4xCj4g
PiA+ID4gCj4gPiA+IAo+ID4gPiAtLSAKPiA+ID4gV2l0aCBiZXN0IHdpc2hlcwo+ID4gPiBEbWl0
cnkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u
4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
