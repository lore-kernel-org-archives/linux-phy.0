Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC55ECAC5BB
	for <linux-phy@archiver.kernel.org>; Fri, 10 Oct 2025 08:50:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZgueG+P9r5aag2z1gOze/HDdoJJQ5eF9Gay01HEPItA=; b=h5aOCLujNHIrVl
	XQ82PLJAh4Q4YePsuh7Jd4/xPpxFSRdsJiLRnH8EV+W4gvntwYwg5/DfIBvyBatQxdT16JNVS02zL
	gNF3H9EW+Getx+tyyZSTqAkoioHTY1+B0dwXAQBwQR5TJFvM4IomVKLb4bMtGwc0kvR88dOgVQjqI
	uf2OFvjg+5HKVWc4iYyTZNsLUsSE1kmvQWP+Fiupt3wG9sDXEX/C0clrIT+GQ1uHyzP/EYvvr1e9K
	EqhIflUUP99rFfOhZyq4O7Q8PvxlKu3PwdnyQVtqjb7eS4NNNIZ70gCj3tcDbyVt56usJ17INsTEK
	GfGYMqruSL23SKoDcWGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v78p8-000000085NV-26kR;
	Fri, 10 Oct 2025 08:50:02 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v78p5-000000085Ll-1IN3
	for linux-phy@lists.infradead.org;
	Fri, 10 Oct 2025 08:50:01 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59A6WnWl008193
	for <linux-phy@lists.infradead.org>; Fri, 10 Oct 2025 08:49:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Cwh4ZsIqg1G/kV4tcJ1hinaVGiVD/hz+Bz+dzBU2qIo=; b=AiaG21A4/6eEAxS4
	TwgvOuTTBuQb+RFCwGmITqDkoNzKU46W9v0MuWGXnUhSMy1d4MyOUx2Kc8yI+NIy
	z69AM1S7FvN7ksz2n38pwKXxKJsVhnH9yFzLxtWsoGxjCLUApaosAqJIGZBogzKy
	krLmcNFGxxfh0k9iSPMFJ6SO7X78hhiW45ivifFp2iPz6GtTgoaInXHv2Pgq8ABG
	VK6fPWqg3LDRW4LA4KHH/a1OcVeFBHJeFs78xhNh0QX3MLn4YAaOfQpIwxlz0vBo
	YVUCPskFm2fedFqdGe6Ld+9AtCTwnlyOs6v0FUrFZZ31lfowrVM/x3nRSx2BqZ+k
	NwuUDA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4knqcd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 10 Oct 2025 08:49:58 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8703ba5a635so71931885a.2
        for <linux-phy@lists.infradead.org>; Fri, 10 Oct 2025 01:49:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760086197; x=1760690997;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Cwh4ZsIqg1G/kV4tcJ1hinaVGiVD/hz+Bz+dzBU2qIo=;
        b=Ve0bfif7VpwGgpU8ztTUXfULiAUqnrJlh20XlQ795fzGPcTBGygrcHH/RN5PX9JqGw
         MoY/cKWAB2+9xMRoMJuPyXgtx7m0M5+G0I7A5hC92eV2D+ehd9n9T1beTHQevBFOn2ko
         vOF9akcVjmBAHSdVrUviWjIg4L0h2lIaJ8Cctjnfm+UJkFW0+4yk/vEIl3d8lpr9UPyA
         +phs1A73RZCycMXDsmYttu7Rdr6CQHuiR10/lYqQXu2V62y1T6NceZ1wbJPtxtp8/kGT
         qbWomOuCWjzvhEKwSWAtW4rTKhlG67hZxeBM3Fl16VAX5xkvaVzW3ZFI+HV4Z7P1Csyz
         uYlQ==
X-Forwarded-Encrypted: i=1; AJvYcCWXg5j1ALpsvgzJKG7gl9mfG5sj+Wd69KQQ+xx2GimvGhkfnv2Df1uRZ1UtRLuQoW+v+jl7krvRJkM=@lists.infradead.org
X-Gm-Message-State: AOJu0YxXcCJTsRWjG/mXFh5fvnJRb07xteh0yRAXA30qhUJGk+yuthhK
	wc1VgVE+GAR4xwff9pA6VD8AeTkLIjkZLdvDJBhjWfIEXrYt/Ghz5QZMiv3Yo4aDAvRUT/FnHzX
	MhmXziz+RVrfWf6pUH2k3A0QMRdKOdveU3qOwrnU5PNQq1agNXBuFW3JU4q8waj33afaV
X-Gm-Gg: ASbGncu7UfN6STYJeJnXDBzXUc6hg1AlwH/7anHLbPr7KIZqw/8G2DQku2iOCEec7VF
	Yz3Y9H7NiTRlcu+lUAlpomFvr4U94kcEI4Ah5t2KJ8GV+d76DtJ5ckZN51glKBM48uhppYAHqX/
	EspPdGRhPLh4W86rWKA0o6bYSjXDEOFn9E5gpaiGy2Y9N25AZvZPhS/lkn5xKXBxOaXi3aCnjpX
	RnwHu9QbBfk2RvPSEtxSTNuYltCQqf3BXHzBafa6936omiPmDl4Doqv1pG/BvZD6dhebY2I9CYj
	VySrE29aYewMPsObQxu6+xjKacib+QahHNu1HiEocb/BwvpXzxvaMuvDxxdvorXbLus2T8V6y9Y
	G95vEjSMV2d+kLWlw3l+c2g==
X-Received: by 2002:a05:620a:40ce:b0:883:3c5c:9077 with SMTP id af79cd13be357-883543faa58mr1036124385a.13.1760086197114;
        Fri, 10 Oct 2025 01:49:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEnW/+isTRsgYN2x+tF3lYH+BB+Zvwj6IcISdiTQNK0hXoGC7zcoK1c/76jo+BmMhQiHGuJcw==
X-Received: by 2002:a05:620a:40ce:b0:883:3c5c:9077 with SMTP id af79cd13be357-883543faa58mr1036122285a.13.1760086196579;
        Fri, 10 Oct 2025 01:49:56 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63b616d12fesm1034403a12.24.2025.10.10.01.49.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Oct 2025 01:49:56 -0700 (PDT)
Message-ID: <8c099106-49e6-499a-942e-6349fa96c246@oss.qualcomm.com>
Date: Fri, 10 Oct 2025 10:49:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/3] phy: qcom: qmp-combo: get the USB3 & DisplayPort
 lanes mapping from DT
To: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul
 <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Xilin Wu <sophon@radxa.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20251006-topic-x1e80100-hdmi-v5-0-c006311d59d7@linaro.org>
 <20251006-topic-x1e80100-hdmi-v5-2-c006311d59d7@linaro.org>
 <141e33fc-c963-4f58-a69c-e7068c9ec6e8@oss.qualcomm.com>
 <e10594dd-cfc2-4d5e-bc1f-35aca05be027@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <e10594dd-cfc2-4d5e-bc1f-35aca05be027@linaro.org>
X-Authority-Analysis: v=2.4 cv=dojWylg4 c=1 sm=1 tr=0 ts=68e8c8b6 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=kQruSXXmluR0ARYnVvMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: dizYVb9vEKqWHqAvk47hV8JFPkDjwzSI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX173G2mrHaz1s
 FZVnudnz1+5qisgH2PBvfr6GFaVj+NnI1OeYAFwmU6piiYaTYnKXaYTlMsaKQ3h5JBT6vFHBJjk
 3hqmB+UnMYZiO4xTbd5NMv++yXnqiBmrr7HxDarpAC5WsufeJB4LSmbQZxoEQKYL35Va1nNBxBk
 0ASW+kFpFpkgPUFYs6hXodfoNz60niP9wLfa1DGsfUcDdnzaJ3s/LtR3BwSVEabU5vq4OUDXeqk
 4WHdEIzu92FmnQW7Yyw2O9wcIyYcwjY6LQxtUFDAOiPI94V4RdxpiAm0NcP1gX+Uy3R6eb5odQs
 20pwKPrGwOu5/Vc5liy6lJ30XztZSG6ymo7ZUj95lI332A2Yx5By8ce1Y+vJmyxMlvs3nnrUWz7
 2QEGvKIjv4u0CIn//ivmAIQeWQoXtA==
X-Proofpoint-ORIG-GUID: dizYVb9vEKqWHqAvk47hV8JFPkDjwzSI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-10_01,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251010_014959_351209_6BE55677 
X-CRM114-Status: GOOD (  11.94  )
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

T24gMTAvOS8yNSA2OjQyIFBNLCBOZWlsIEFybXN0cm9uZyB3cm90ZToKPiBPbiAxMC84LzI1IDEx
OjMxLCBLb25yYWQgRHliY2lvIHdyb3RlOgo+PiBPbiAxMC82LzI1IDM6NTUgUE0sIE5laWwgQXJt
c3Ryb25nIHdyb3RlOgo+Pj4gVGhlIFFNUCBVU0IzL0RQIENvbWJvIFBIWSBob3N0cyBhbiBVU0Iz
IHBoeSBhbmQgYSBEUCBQSFkgb24gdG9wCj4+PiBvZiBhIGNvbWJvIGdsdWUgdG8gcm91dGUgZWl0
aGVyIGxhbmVzIHRvIHRoZSA0IHNoYXJlZCBwaHlzaWNhbCBsYW5lcy4KPj4+Cj4+PiBUaGUgcm91
dGluZyBvZiB0aGUgbGFuZXMgY2FuIGJlOgo+Pj4gLSAyIERQICsgMiBVU0IzCj4+PiAtIDQgRFAK
Pj4+IC0gMiBVU0IzCj4+Pgo+Pj4gR2V0IHRoZSBsYW5lcyBtYXBwaW5nIGZyb20gRFQgYW5kIHN0
b3AgcmVnaXN0ZXJpbmcgdGhlIFVTQi1DCj4+PiBtdXhlcyBpbiBmYXZvciBvZiBhIHN0YXRpYyBt
b2RlIGFuZCBvcmllbnRhdGlvbiBkZXRlbWluZWQKPj4+IGJ5IHRoZSBsYW5lcyBtYXBwaW5nLgo+
Pj4KPj4+IFRoaXMgYWxsb3dzIHN1cHBvcnRpbmcgYm9hcmRzIHdpdGggZGlyZWN0IGNvbm5lY3Rp
b24gb2YgVVNCMyBhbmQKPj4+IERpc3BsYXlQb3J0IGxhbmVzIHRvIHRoZSBRTVAgQ29tYm8gUEhZ
IGxhbmVzLCBub3QgdXNpbmcgdGhlCj4+PiBVU0ItQyBBbHRtb2RlIGZlYXR1cmUuCj4+Pgo+Pj4g
UmV2aWV3ZWQtYnk6IERtaXRyeSBCYXJ5c2hrb3YgPGRtaXRyeS5iYXJ5c2hrb3ZAb3NzLnF1YWxj
b21tLmNvbT4KPj4+IFNpZ25lZC1vZmYtYnk6IE5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9u
Z0BsaW5hcm8ub3JnPgo+Pj4gLS0tCgpbLi4uXQoKPj4+ICtlcnJfbm9kZV9wdXQ6Cj4+PiArwqDC
oMKgIG9mX25vZGVfcHV0KGVwKTsKPj4KPj4gX19mcmVlKGRldmljZV9ub2RlKQo+IAo+IHdoeSA/
IGVwIGlzIG5vdCBhbGxvY2F0ZWQsIGl0IGdvZXMgdXAgdG86Cj4gCj4gc3RhdGljIHN0cnVjdCBk
ZXZpY2Vfbm9kZSAqX19vZl9nZXRfbmV4dF9jaGlsZChjb25zdCBzdHJ1Y3QgZGV2aWNlX25vZGUg
Km5vZGUsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBz
dHJ1Y3QgZGV2aWNlX25vZGUgKnByZXYpCj4gewo+IMKgwqDCoMKgc3RydWN0IGRldmljZV9ub2Rl
ICpuZXh0Owo+IAo+IMKgwqDCoMKgaWYgKCFub2RlKQo+IMKgwqDCoMKgwqDCoMKgIHJldHVybiBO
VUxMOwo+IAo+IMKgwqDCoMKgbmV4dCA9IHByZXYgPyBwcmV2LT5zaWJsaW5nIDogbm9kZS0+Y2hp
bGQ7Cj4gwqDCoMKgwqBvZl9ub2RlX2dldChuZXh0KTsKPiDCoMKgwqDCoG9mX25vZGVfcHV0KHBy
ZXYpOwo+IMKgwqDCoMKgcmV0dXJuIG5leHQ7Cj4gfQoKX2ZyZWUoZGV2aWNlX25vZGUpIGNhbGxz
IGRldmljZV9ub2RlX3B1dCgpIHdpdGhvdXQgeW91IGhhdmluZyB0bwphZGQgZXhwbGljaXQgZ290
b3MKCgpLb25yYWQKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
