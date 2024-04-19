Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD782C4345F
	for <linux-phy@archiver.kernel.org>; Fri, 19 Apr 2024 19:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t9uuPs/94pEzZxoDP/cv2oRuX0mT1FxihRp1yux2hfQ=; b=zLRLXF+qUpyiUOuIZTDePZhFA8
	o2DmkGajxaxAZ34+wRwF9KWrmLc1yQY4QYGXfVwOrhcKQT2tEG1jNvut1qBwe13BQE6z9fcQ/OHyB
	5LSi9GWv8ZUC78zpJ2NJEl46SJNqH1eFMOT5YhUQ9sfTOaoANa/aB3dtjrqari6SoX4/9jwDGeOdc
	RK0gh4g6RC9ETgGhYB4oQRHTuGoJhmmcO97olAj0mE7rNcSWtdqd5WqH6D739jM01omgtyDsowYKr
	KntpDTP8mh+H6EYUNPd2UR1MHcNZURuR0FENIE9Jda8rWzYTkN5fWDB8hvlaeVMYax6nzq4klCGom
	v847OUpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxuDB-00000006pB5-173D;
	Fri, 19 Apr 2024 19:47:53 +0000
Received: from mail-oo1-xc34.google.com ([2607:f8b0:4864:20::c34])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxuD7-00000006pAW-2oGa
	for linux-phy@lists.infradead.org;
	Fri, 19 Apr 2024 19:47:51 +0000
Received: by mail-oo1-xc34.google.com with SMTP id 006d021491bc7-5ac5376c4b2so1438549eaf.2
        for <linux-phy@lists.infradead.org>; Fri, 19 Apr 2024 12:47:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713556068; x=1714160868; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=d4vt7WxL+lftWXnOyyq6W0xqoiKJI7AgK/HIHDISMe0=;
        b=WP4H9fwCPRpXa3B9ueYcYo9JTWj91pQMSmJNTGzQFk4ukrk4GBa4bW4LK3rvlwa6Ft
         h+XEbZZPF2UpZK9/TsuEpWrT7EcUD7YtphLC4UTLaFSG9IIwh4fnsMtms2peB1vb7Z5E
         Svfeu8HzIxgPY+p89+T/SKqa+nqgkqO1ia0LGbr2AB1bdcVdLxh3zN6a/Eplx6lrt7P9
         BjkMjkEZCH9cjdArQhAgtPOwet5wlgZk2AO/B3gLqm0Bq78yIevwgDafVq1Sw1AYVj4L
         /wCC/cns2dzY/s269TQE8k9pvNZGN5EuPdL4SdNTO4Upf3GnjnijfNobf1KtBtlvzOYs
         8Dxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713556068; x=1714160868;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=d4vt7WxL+lftWXnOyyq6W0xqoiKJI7AgK/HIHDISMe0=;
        b=ZlVqAEi+Ifik8iQHuARCOjca6Cq1rCRktQguSobVGm7AfWsWVDypH5X3wV6e6MJpNE
         7L5jkdNDpE7UtPLe+KIXIEjPKo001cNyMacHiWicbZ4aqOyRLnHtWwpANyDzaV0ABTz8
         fOI3Q0VBkO2znE3rj+duar5lO7Ydi5R5yN0gDgVp9uzQGCOe6llkRMZf5tlFLFozYOMQ
         C34YIH/Rb/mE6hriI9J20630eFM3DXW72qczejW9ohAj3s7HWARfunR9rwdGViJuD1iU
         G4t0IofmhxPvAeITaeP0YA0i0DTb92JHBnctL5HTKlpHWYc/FggYHzizxczZROswFK5t
         DwpA==
X-Forwarded-Encrypted: i=1; AJvYcCXyvDzj/XZrRnA/d54dGVrb7JeNttfBwaeW9B5D5XurdcmrqSh1MD5jL8QnIw2kWFMoCpfoEk0guvr9DB6PdkbuamIIgRutzIKEd4OLsg==
X-Gm-Message-State: AOJu0YyFGc68btXWohfjjhjuBdzmadAU2OWY6fnKPp1MaPYOfwxqzv4H
	1ORkd1Ofv8UXkhA7JmqzKVJVn6bfLyHnWljeAf0QKIOkkZkjvzzj
X-Google-Smtp-Source: AGHT+IEDlJm01IwxYEhd4mG2VdxP367p99wmW6HIUobwNqmHPXu3dYCDLfA/eRy045Ex9WRUvDBIcQ==
X-Received: by 2002:a4a:98ce:0:b0:5aa:3e8e:e1f with SMTP id b14-20020a4a98ce000000b005aa3e8e0e1fmr3384337ooj.5.1713556068066;
        Fri, 19 Apr 2024 12:47:48 -0700 (PDT)
Received: from [192.168.7.169] (c-98-197-58-203.hsd1.tx.comcast.net. [98.197.58.203])
        by smtp.gmail.com with ESMTPSA id 185-20020a4a06c2000000b005a49df78628sm966302ooj.39.2024.04.19.12.47.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Apr 2024 12:47:47 -0700 (PDT)
Message-ID: <c498f5b9-df07-0802-800c-67c18dcf3e67@gmail.com>
Date: Fri, 19 Apr 2024 14:47:46 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v3 0/7] ipq9574: Enable PCI-Express support
Content-Language: en-US
To: Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Manivannan Sadhasivam
 <manivannan.sadhasivam@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org
References: <20240415182052.374494-1-mr.nuke.me@gmail.com>
 <4a83afeb-8e82-4f95-b44e-74d39d55f448@quicinc.com>
From: mr.nuke.me@gmail.com
In-Reply-To: <4a83afeb-8e82-4f95-b44e-74d39d55f448@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240419_124749_740616_28A43628 
X-CRM114-Status: GOOD (  21.38  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

SGkgS2F0aGlyYXZhbiwKCk9uIDQvMTkvMjQgMDk6MjgsIEthdGhpcmF2YW4gVGhpcnVtb29ydGh5
IHdyb3RlOgo+IAo+IAo+IE9uIDQvMTUvMjAyNCAxMTo1MCBQTSwgQWxleGFuZHJ1IEdhZ25pdWMg
d3JvdGU6Cj4+IFRoZXJlIGFyZSBmb3VyIFBDSWUgcG9ydHMgb24gSVBROTU3NCwgcGNpZTAgdGhy
dSBwY2llMy4gVGhpcyBzZXJpZXMKPj4gYWRkcmVzc2VzIHBjaWUyLCB3aGljaCBpcyBhIGdlbjN4
MiBwb3J0LiBUaGUgYm9hcmQgSSBoYXZlIG9ubHkgdXNlcwo+PiBwY2llMiwgYW5kIHRoYXQncyB0
aGUgb25seSBvbmUgZW5hYmxlZCBpbiB0aGlzIHNlcmllcy4KPj4KPj4gSSBiZWxpZXZlIHRoaXMg
bWFrZXMgc2Vuc2UgYXMgYSBtb25vbGl0aGljIHNlcmllcywgYXMgdGhlIGluZGl2aWR1YWwKPj4g
cGllY2VzIGFyZSBub3QgdGhhdCB1c2VmdWwgYnkgdGhlbXNlbHZlcy4KPj4KPj4gSW4gdjIsIEkn
dmUgaGFkIHNvbWUgaXNzdWVzIHJlZ2FyZGluZyB0aGUgZHQgc2NoZW1hIGNoZWNrcy4gRm9yCj4+
IHRyYW5zcGFyZW5jeSwgSSB1c2VkIHRoZSBmb2xsb3dpbmcgdGVzdCBpbnZvY2F0aW9ucyB0byB0
ZXN0IHYzOgo+Pgo+PiDCoMKgwqDCoMKgwqAgbWFrZSBkdF9iaW5kaW5nX2NoZWNrICAgICAKPj4g
RFRfU0NIRU1BX0ZJTEVTPXFjb20scGNpZS55YW1sOnFjb20saXBxODA3NC1xbXAtcGNpZS1waHku
eWFtbAo+PiDCoMKgwqDCoMKgwqAgbWFrZSBkdGJzX2NoZWNrICAgICAgICAgICAKPj4gRFRfU0NI
RU1BX0ZJTEVTPXFjb20scGNpZS55YW1sOnFjb20saXBxODA3NC1xbXAtcGNpZS1waHkueWFtbAo+
Pgo+Pgo+IAo+IEFsZXhhbmRydSwKPiAKPiBUaGFua3MgZm9yIHlvdXIgY29udHJpYnV0aW9ucyB0
byB0aGUgUXVhbGNvbW0gSVBRIGNoaXBzZXRzLgo+IAo+IEkgd291bGQgbGlrZSB0byBpbmZvcm0g
eW91IHRoYXQgd2UgaGF2ZSBhbHNvIHN1Ym1pdHRlZCB0aGUgcGF0Y2hlcyB0byAKPiBlbmFibGUg
dGhlIFBDSWUgc3VwcG9ydCBvbiBJUFE5NTc0WzFdWzJdIGFuZCB3YWl0aW5nIGZvciB0aGUgSUND
IAo+IHN1cHBvcnRbM10gdG8gbGFuZCB0byBlbmFibGUgdGhlIE5PQyBjbG9ja3MuCj4gCj4gWzFd
IAo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWFybS1tc20vMjAyMzA1MTkwOTAyMTku
MTU5MjUtMS1xdWljX2Rldmlwcml5QHF1aWNpbmMuY29tLwo+IFsyXSAKPiBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9saW51eC1hcm0tbXNtLzIwMjMwNTE5MDg1NzIzLjE1NjAxLTEtcXVpY19kZXZp
cHJpeUBxdWljaW5jLmNvbS8KPiBbM10gCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgt
YXJtLW1zbS8yMDI0MDQxODA5MjMwNS4yMzM3NDI5LTEtcXVpY192YXJhZGFAcXVpY2luYy5jb20v
Cj4gCj4gUGxlYXNlIHRha2UgYSBsb29rIGF0IHRoZXNlIHBhdGNoZXMgYXMgd2VsbC4KCkkgdGhp
bmsgSSd2ZSBzZWVuIFsxXSBiZWZvcmUgLS0gSSB0aG91Z2h0IHRoZSBzZXJpZXMgd2FzIGFiYW5k
b25lZC4gClNpbmNlIHdlIGhhdmUgdGhlIGR0LXNjaGVtYSBhbmQgYXBwbGljYWJpbGl0eSBvbiBt
YWlubGluZSByZXNvbHZlZCBoZXJlLCAKZG8geW91IHdhbnQgdG8gdXNlIHRoaXMgc2VyaWVzIGFz
IHRoZSBiYXNlIGZvciBhbnkgbmV3IFBDSWUgd29yaz8KCkFsZXgKCj4gVGhhbmtzLAo+IEthdGhp
cmF2YW4gVC4KPiAKPiAKPj4gQ2hhbmdlcyBzaW5jZSB2MjoKPj4gwqAgLSByZXdvcmtlZCByZXNl
dHMgaW4gcWNvbSxwY2llLnlhbWwgdG8gcmVzb2x2ZSBkdCBzY2hlbWEgZXJyb3JzCj4+IMKgIC0g
Y29uc3RyYWluZWQgInJlZyIgaW4gcWNvbSxwY2llLnlhbWwKPj4gwqAgLSByZXdvcmtlZCBtaW4v
bWF4IGludGVtcyBpbiBxY29tLGlwcTgwNzQtcW1wLXBjaWUtcGh5LnlhbWwKPj4gwqAgLSBkcm9w
cGVkIG1zaS1wYXJlbnQgZm9yIHBjaWUgbm9kZSwgYXMgaXQgaXMgaGFuZGxlZCBieSAibXNpIiBJ
UlEKPj4KPj4gQ2hhbmdlcyBzaW5jZSB2MToKPj4gwqAgLSB1cGRhdGVkIG5ldyB0YWJsZXMgaW4g
cGh5LXFjb20tcW1wLXBjaWUuYyB0byB1c2UgbG93ZXJjYXNlIGhleCAKPj4gbnVtYmVycwo+PiDC
oCAtIHJlb3JnYW5pemVkIHFjb20saXBxODA3NC1xbXAtcGNpZS1waHkueWFtbCB0byB1c2UgYSBz
aW5nbGUgbGlzdCBvZiAKPj4gY2xvY2tzCj4+IMKgIC0gcmVvcmdhbml6ZWQgcWNvbSxwY2llLnlh
bWwgdG8gaW5jbHVkZSBjbG9ja3MrcmVzZXRzIHBlciBjb21wYXRpYmxlCj4+IMKgIC0gUmVuYW1l
ZCAicGNpZTJfcW1wX3BoeSIgbGFiZWwgdG8gInBjaWUyX3BoeSIKPj4gwqAgLSBtb3ZlZCAicmFu
Z2VzIiBwcm9wZXJ0eSBvZiBwY2llQDIwMDAwMDAwIGhpZ2hlciB1cAo+Pgo+PiBBbGV4YW5kcnUg
R2Fnbml1YyAoNyk6Cj4+IMKgwqAgZHQtYmluZGluZ3M6IGNsb2NrOiBBZGQgUENJZSBwaXBlIHJl
bGF0ZWQgY2xvY2tzIGZvciBJUFE5NTc0Cj4+IMKgwqAgY2xrOiBxY29tOiBnY2MtaXBxOTU3NDog
QWRkIFBDSWUgcGlwZSBjbG9ja3MKPj4gwqDCoCBkdC1iaW5kaW5nczogUENJOiBxY29tOiBBZGQg
SVBROTU3NCBQQ0llIGNvbnRyb2xsZXIKPj4gwqDCoCBQQ0k6IHFjb206IEFkZCBzdXBwb3J0IGZv
ciBJUFE5NTc0Cj4+IMKgwqAgZHQtYmluZGluZ3M6IHBoeTogcWNvbSxpcHE4MDc0LXFtcC1wY2ll
OiBhZGQgaXBxOTU3NCBnZW4zeDIgUEhZCj4+IMKgwqAgcGh5OiBxY29tLXFtcC1wY2llOiBhZGQg
c3VwcG9ydCBmb3IgaXBxOTU3NCBnZW4zeDIgUEhZCj4+IMKgwqAgYXJtNjQ6IGR0czogcWNvbTog
aXBxOTU3NDogYWRkIFBDSWUyIG5vZGVzCj4+Cj4+IMKgIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3BjaS9xY29tLHBjaWUueWFtbMKgwqDCoCB8wqAgMzUgKysrKysKPj4gwqAgLi4uL3BoeS9xY29t
LGlwcTgwNzQtcW1wLXBjaWUtcGh5LnlhbWzCoMKgwqDCoMKgwqDCoCB8wqAgMzYgKysrKy0KPj4g
wqAgYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2lwcTk1NzQuZHRzacKgwqDCoMKgwqDCoMKgwqAg
fMKgIDkzICsrKysrKysrKysrLQo+PiDCoCBkcml2ZXJzL2Nsay9xY29tL2djYy1pcHE5NTc0LmPC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDc2ICsrKysrKysrKysKPj4gwqAgZHJp
dmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmPCoMKgwqDCoMKgwqDCoCB8wqAgMTMg
Ky0KPj4gwqAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjaWUuY8KgwqDCoMKg
wqAgfCAxMzYgKysrKysrKysrKysrKysrKystCj4+IMKgIC4uLi9waHkvcXVhbGNvbW0vcGh5LXFj
b20tcW1wLXBjcy1wY2llLXY1LmjCoMKgIHzCoCAxNCArKwo+PiDCoCBpbmNsdWRlL2R0LWJpbmRp
bmdzL2Nsb2NrL3Fjb20saXBxOTU3NC1nY2MuaMKgIHzCoMKgIDQgKwo+PiDCoCA4IGZpbGVzIGNo
YW5nZWQsIDQwMCBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+PgoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
