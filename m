Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9570C87FCA
	for <linux-phy@archiver.kernel.org>; Thu, 31 Jul 2025 17:13:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0giNHYa2YlWSgFmyaeC8BoCl/9aEkYNm/KIEJOL2KKM=; b=0L8bWL//TZwsiY
	tO09jJ9NAUJ0TVdDGENfyzggollmW4Nt5AqENWxLCupEe5KpUj7Eb6lCZV2ui/6O0SlHZ6xowpeFf
	Y+ava46QKRuXyRr55PIfpX9csN+/k79rMgBj2oDjxT0f8xuwZluxM16pxaZpoDc6Pm2+Vbpt+mNhV
	rIn8m/MhcpnJ+XLIjQ1JhNLorbAPuqLE/zTWq3sptpkkj5c1KPmReYFUbgJO7OHYoMM6ENx8R2HJo
	ms5+qgFAZY6Qrn+T33XRZQTuV0103c/ppdEGSIlvZgLvbjs2uLatFEGWU/vKPS85MwYFlxhBZ9TTI
	9VJEGmkSfoy4Dx+MsU/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhWqo-000000049Pv-1Zjq;
	Thu, 31 Jul 2025 17:13:55 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhWql-000000049PW-2zGb
	for linux-phy@lists.infradead.org;
	Thu, 31 Jul 2025 17:13:53 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56VDfOnY018750
	for <linux-phy@lists.infradead.org>; Thu, 31 Jul 2025 17:13:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ofCj3+DeUV/y5WrDcns9NIGKwdDXCv8HNiS6UfKisRo=; b=WX50MObla3mMccxm
	ttNOLrjiWUwAoWZTPwT3Xm72rI/wWRFztiSINDhCfV6JHIRCl3nw2WezEn0CFkdS
	E5PT3RTxlkhUBTGnaCFvvWKTXTY62EomlWlz8LvGu+98SKu7Xe2iC9bKh82+VLF8
	m3pC2BYM4lpNU4tPE8ZDEuo3s30YUZyJpwtY/CxKGak/1KZSd96kHEE9ZraMuWP7
	doiTPmL/J7FkQ1+f/+PfhnsZEZ7UKRXcX4j73mnpQSZ0grapCtxkj9gfV9lzeeLN
	oB2qciirDcHaZqxLDTYWmblraG5PKBoUP3zG5CvzVh3NCPf4whRh2zwzi+vSc5I1
	jGpXNA==
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com [209.85.222.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 487jwgd6ud-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 31 Jul 2025 17:13:51 +0000 (GMT)
Received: by mail-ua1-f70.google.com with SMTP id a1e0cc1a2514c-88bad6865baso1576930241.1
        for <linux-phy@lists.infradead.org>; Thu, 31 Jul 2025 10:13:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753982030; x=1754586830;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ofCj3+DeUV/y5WrDcns9NIGKwdDXCv8HNiS6UfKisRo=;
        b=okHJCr36ygbCblp0jiD7j+yJzIIt0gNQEhrmpwmthImNdBiUmMqovDiAZ17ljTEuHZ
         8yfl+C9zY761lNaDXnV6SSbNqTAgIbmju3m3wEhETC2atdJCmV92t4ifnKNM4rIdn02R
         uREIhG9nv6k7Cjs7lM1QALOMgx19efLrfjZV0m17NjZz/j0bMmPc434/fzruxoxM50vl
         pblUZ+NEKFM/kDUjftYnoSK66OlFN5GNDfCHFlwBQj2yhvLxrwD2pKt5w4Xw0NQWXVDG
         E/lTErlym1kEbCmkGwHTOUiLrBBivHc7qNuMEXGs1RxycJLitf8wyxKMw7nWuBDQznvg
         Kkkw==
X-Forwarded-Encrypted: i=1; AJvYcCXgLbWjsdeNrRV1YLrrCmRCNeAr06dv68F9U91j6jLjiegLFMfBiwMESaWGfHElqJPQR08JXdem8C4=@lists.infradead.org
X-Gm-Message-State: AOJu0YyGrXmnvtXMwyYgD10VpT7/uq5ecZAOwm47WAYM5GPUtozakwc/
	PJ4yLtoqbJll3ILsyLEmk601xaUS+8O+BEu6rTRcmUwhPOGL0y16CeRlqvJOVPQnWxWIDshtiYl
	6yjZYoJfcNl/Z75jZEpcgpKeGiAzOo5XqJEX9z//L12EPMm+TFuossDtRKEJCnjZH8kQw
X-Gm-Gg: ASbGncu+vjunEw1BNycNlGZXnqPWsIUPaIXB4SK4oKPy8MOGFpMkbuTBS5koJkMlFjO
	Cqhz1N5ftlTZ3i48VeldA4tkMsQiGtcABh53lxZjX96zxaMlIPVCGBCWt6htVATuiVT0Wljafe0
	zqHYcOaE98UzJH3upK9ndmUmDKQlO1vfTpyxczACZCcaF6VUMwSfjluA7f2q6ls4sWtsF9EnODn
	eya/HfNVxe4QNa5TzGGqT+LmBHrsVLpfuU5Z9sgkITeXpDXQNqiIl+6dFOmti0Gy2dBd8MXUUwD
	3Y7e4cpzeTXLm/r4hnrmtmHeKd8NxEGDOpZYA8m/aJoPHzXkJBERdJMXz7gSQZMwvj2QlAsSOG7
	bOHRlORUs+feMHA==
X-Received: by 2002:a05:6122:62ca:b0:538:e454:ea8e with SMTP id 71dfb90a1353d-53938905a99mr1857792e0c.7.1753982029446;
        Thu, 31 Jul 2025 10:13:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF52dzZur4u5mVprmHH1cNIiS5IST4nNlWgeTkq324s1h1QrAG/Kd+PfkF4M7ViNxObk+iijw==
X-Received: by 2002:a05:6122:62ca:b0:538:e454:ea8e with SMTP id 71dfb90a1353d-53938905a99mr1857741e0c.7.1753982028845;
        Thu, 31 Jul 2025 10:13:48 -0700 (PDT)
Received: from [10.148.43.238] (87-95-32-33.bb.dnainternet.fi. [87.95.32.33])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-33238272963sm2983111fa.14.2025.07.31.10.13.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Jul 2025 10:13:47 -0700 (PDT)
Message-ID: <ad4f53eb-2f4b-4e62-a162-461de431e3de@oss.qualcomm.com>
Date: Thu, 31 Jul 2025 20:13:46 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 02/13] dt-bindings: phy: Add binding for QCS615
 standalone QMP DP PHY
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        konrad.dybcio@oss.qualcomm.com, fange.zhang@oss.qualcomm.com,
        quic_lliu6@quicinc.com, quic_yongmou@quicinc.com
References: <20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com>
 <20250722-add-displayport-support-for-qcs615-platform-v2-2-42b4037171f8@oss.qualcomm.com>
 <jemfu5sy7k4a2iar55im5bhyhxzlrwpftmpqmps3b2tco7r6a2@oodls7gi45yy>
 <e673a3a3-6924-49db-9040-e34b82199a43@oss.qualcomm.com>
 <w3rwao5wbmstdyics6qhp7beulbbp5ludqkwpfsmevgqmzz3d6@u2e533zlitkr>
 <e5a3f05f-9775-4e3d-ae7d-ebbca14b4df5@oss.qualcomm.com>
 <ffdvzupefzhqq7fqtloycc3xzu57i55ths73xcjftor2cifuzr@5vhq2hfmkvda>
 <bd8f8643-a8c8-43d7-b293-acdba5ff798a@oss.qualcomm.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <bd8f8643-a8c8-43d7-b293-acdba5ff798a@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=WvgrMcfv c=1 sm=1 tr=0 ts=688ba44f cx=c_pps
 a=R6oCqFB+Yf/t2GF8e0/dFg==:117 a=H8T8cKqSsIHj2cBiWKmgXw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=Oh2cFVv5AAAA:8 a=EUspDBNiAAAA:8
 a=74qhCITlYKpdjXRJ2hIA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=TD8TdBvy0hsOASGTdmB-:22 a=7KeoIwV6GZqOttXkcoxL:22
X-Proofpoint-ORIG-GUID: iaPHY39Z9WJn5ahi5UFTCKKKVbTWG4qe
X-Proofpoint-GUID: iaPHY39Z9WJn5ahi5UFTCKKKVbTWG4qe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzMxMDExOCBTYWx0ZWRfX7sRfpm5mMH5k
 dvh3xXIDSNxFv/pnrEPhAXSHCCX2q2SmU4ZddqfZgMOwAHisT7Om229sRfTiv8DaHfGmnkAsaLx
 M0pMXtQYLgNdhXh5Q79lQADr/S0uW4sdyvTuCVB5qm4GUAhoJMKh65P0Gll6KfHs2g7IBWuZE0J
 PQuY71H0TwzjpeVjd8fObN/vFGhPAem0rusbNoSl34kjEFHjj4ZV5opff7EXjL6L0TKGTDRogTv
 3M8Ln+Uyrx3orcIWDTqWiyYl3a9d4WvzcqhODbr9pM9Vem16enhArYbTX+riSAMqnG1/bfP+hqR
 nMAfYXcb+jUg7J2Qchhn5sKO2Lb3/kvyWBL2AnhinNc0mi/SWQr0wV1KYCKXApuTRFOwYkQcy2d
 ERHxKrnV0avZW8x+9ZToLy2WcTPqq9BQ7/0gE4ZDeQsLAW5DqYgmm2eDWcgDAUi2XHQlUSP5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-31_03,2025-07-31_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 clxscore=1015 suspectscore=0 lowpriorityscore=0
 spamscore=0 mlxscore=0 impostorscore=0 adultscore=0 malwarescore=0
 priorityscore=1501 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507310118
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250731_101351_762746_419822CC 
X-CRM114-Status: GOOD (  35.61  )
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

T24gMzEvMDcvMjAyNSAwODowNiwgWGlhbmd4dSBZaW4gd3JvdGU6Cj4gCj4gT24gNy8zMS8yMDI1
IDI6MzUgQU0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+IE9uIFdlZCwgSnVsIDMwLCAyMDI1
IGF0IDA0OjUzOjE2UE0gKzA4MDAsIFhpYW5neHUgWWluIHdyb3RlOgo+Pj4gT24gNy8yMi8yMDI1
IDg6NDEgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+Pj4gT24gVHVlLCBKdWwgMjIsIDIw
MjUgYXQgMDg6MDU6MDZQTSArMDgwMCwgWGlhbmd4dSBZaW4gd3JvdGU6Cj4+Pj4+IE9uIDcvMjIv
MjAyNSA0OjM4IFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+Pj4+Pj4gT24gVHVlLCBKdWwg
MjIsIDIwMjUgYXQgMDM6MjI6MDNQTSArMDgwMCwgWGlhbmd4dSBZaW4gd3JvdGU6Cj4+Pj4+Pj4g
SW50cm9kdWNlIGRldmljZSB0cmVlIGJpbmRpbmcgZG9jdW1lbnRhdGlvbiBmb3IgdGhlIFF1YWxj
b21tIFFNUCBEUCBQSFkKPj4+Pj4+PiBvbiBRQ1M2MTUgU29Dcy4gVGhpcyBQSFkgc3VwcG9ydHMg
RGlzcGxheVBvcnQgZnVuY3Rpb25hbGl0eSBhbmQgaXMKPj4+Pj4+PiBkZXNpZ25lZCB0byBvcGVy
YXRlIGluZGVwZW5kZW50bHkgZnJvbSB0aGUgVVNCMyBQSFkuCj4+Pj4+Pj4KPj4+Pj4+PiBVbmxp
a2UgY29tYm8gUEhZcyBmb3VuZCBvbiBvdGhlciBwbGF0Zm9ybXMsIHRoZSBRQ1M2MTUgRFAgUEhZ
IGlzCj4+Pj4+Pj4gc3RhbmRhbG9uZSBhbmQgZG9lcyBub3Qgc3VwcG9ydCBVU0IvRFAgbXVsdGlw
bGV4aW5nLiBUaGUgYmluZGluZwo+Pj4+Pj4+IGRlc2NyaWJlcyB0aGUgcmVxdWlyZWQgY2xvY2tz
LCByZXNldHMsIFRDU1IgY29uZmlndXJhdGlvbiwgYW5kIGNsb2NrL1BIWQo+Pj4+Pj4+IGNlbGxz
IGZvciBwcm9wZXIgaW50ZWdyYXRpb24uCj4+Pj4+PiBTaW1wbHkgcHV0OiBubywgdGhpcyBpcyBu
b3QgY29ycmVjdC4gRXZlbiBpZiB5b3UgZ28gdG8gdGhlIFNNNjE1MCBibG9jawo+Pj4+Pj4gZGlh
Z3JhbSwgaXQgcG9pbnRzIG91dCB0aGF0IERQIHVzZXMgdGhlIFVTQjMgUEhZLCBub3QgYSBzZXBh
cmF0ZSBEUCBQSFkuCj4+Pj4+Pgo+Pj4+Pj4gSSB0aG91Z2h0IHRoYXQgd2UgaGF2ZSBkaXNjdXNz
ZWQgaXQgYmVmb3JlaGFuZC4KPj4+Pj4+Cj4+Pj4+PiBJIGNhbiBxdW90ZSBteSBjb21tZW50IGZy
b20gdGhlIHByZXZpb3VzIHRocmVhZDoKPj4+Pj4+Cj4+Pj4+Pj4+IE5vLiBJdCBtZWFucyByZXBs
YWNpbmcgZXh0ZW5kaW5nIGV4aXN0aW5nIGVudHJpZXMgd2l0aCBiaWdnZXIgcmVnIGFuZAo+Pj4+
Pj4+PiAjcGh5LWNlbGxzID0gPDE+LiBUaGUgZHJpdmVyIG11c3Qga2VlcCB3b3JraW5nIHdpdGgg
b2xkIG5vZGUgZGVmaW5pdGlvbnMKPj4+Pj4+Pj4gYXMgaXMgdG8gZW5zdXJlIGJhY2t3YXJkcyBj
b21wYXRpYmlsaXR5LiBOZXcgbm9kZXMgc2hvdWxkIG1ha2UgaXQKPj4+Pj4+Pj4gcmVnaXN0ZXIg
dHdvIFBIWXMgKFVTQjMgYW5kIERQKS4gT24gdGhlIGRyaXZlciBzaWRlIG1vZGlmeSBnZW5lcmlj
IGNvZGUKPj4+Pj4+Pj4gcGF0aHMsIGFsbCBwbGF0Zm9ybXMgc3VwcG9ydGVkIGJ5IHRoZSBkcml2
ZXIgc2hvdWxkIGJlIGFibGUgdG8gc3VwcG9ydAo+Pj4+Pj4+PiBVU0IzK0RQIGNvbWJpbmF0aW9u
Lgo+Pj4+Pj4gTG9va2luZyBhdCB0aGUgaGFyZHdhcmUgbWVtb3J5IG1hcHM6Cj4+Pj4+Pgo+Pj4+
Pj4gTVNNODk5ODogVVNCMyBQSFkgcmVncyBhdCAweGMwMTAwMDAsIERQIFBIWSByZWdzIGF0IDB4
YzAxMTAwMAo+Pj4+Pj4gU0RNNjYwOiBVU0IzIFBIWSByZWdzIGF0IDB4YzAxMDAwMCwgRFAgUEhZ
IHJlZ3MgYXQgMHhjMDExMDAwCj4+Pj4+PiBRQ00yMjkwOiBVU0IzIFBIWSByZWdzIGF0IDB4MTYx
NTAwMCwgRFAgUEhZIHJlZ3MgYXQgMHgxNjE2MDAwCj4+Pj4+PiBTTTYxMTU6IFVTQjMgUEhZIHJl
Z3MgYXQgMHgxNjE1MDAwLCBEUCBQSFkgcmVncyBhdCAweDE2MTYwMDAKPj4+Pj4+Cj4+Pj4+PiBO
b3c6Cj4+Pj4+PiBTTTYxNTA6IFVTQjMgUEhZIHJlZ3MgYXQgMHg4OGU2MDAwCj4+Pj4+PiAgICAg
ICAgICBVU0IzIFBIWSByZWdzIGF0IDB4ODhlODAwMCwgRFAgUEhZIHJlZ3MgYXQgMHg4OGU5MDAw
Cj4+Pj4+Pgo+Pj4+Pj4gSSBkbyBub3Qga25vdywgd2h5IG1zbS00LjE0IGRpZG4ndCBkZXNjcmli
ZSBzZWNvbmQgVVNCMyBQSFkuIE1heWJlIHlvdQo+Pj4+Pj4gY2FuIGNvbW1lbnQgb24gaXQuCj4+
Pj4+Pgo+Pj4+Pj4gQnV0IGJhc2VkIG9uIHRoYXQgbGlzdCwgdGhlIG9ubHkgc3BlY2lhbCBjYXNl
IHRoYXQgd2UgbmVlZCB0byBoYW5kbGUgaXMKPj4+Pj4+IHRoZSBmaXJzdCBVU0IzIFBIWSwgd2hp
Y2ggZG9lc24ndCBoYXZlIGEgY29ycmVzcG9uZGluZyBEUCBQSFkgYmxvY2suIEJ1dAo+Pj4+Pj4g
aXQgd2lsbCBiZSBoYW5kbGVkIGFueXdheSBieSB0aGUgY29kZSB0aGF0IGltcGxlbWVudHMgc3Vw
cG9ydCBmb3IgdGhlCj4+Pj4+PiBleGlzdGluZyBEVCBlbnRyaWVzLiBBbGwgb3RoZXIgaGFyZHdh
cmUgYmxvY2tzIGFyZSBjb21ibyBVU0IrRFAgUEhZcy4KPj4+Pj4+Cj4+Pj4+PiBIYXZpbmcgYWxs
IG9mIHRoYXQgaW4gbWluZCwgcGxlYXNlLCBmb3IgdjMgcGF0Y2hzZXQgaW1wbGVtZW50IFVTQitE
UAo+Pj4+Pj4gc3VwcG9ydCBpbiB0aGUgcGh5LXFjb20tcW1wLXVzYmMgZHJpdmVyIGFuZCBhZGQg
dGhlIGZvbGxvd2luZyBsb2dpYwo+Pj4+Pj4gdGhhdCBhbHNvIHdhcyByZXF1ZXN0ZWQgaW4gdjEg
cmV2aWV3Ogo+Pj4+Pj4KPj4+Pj4+Pj4gTm90IHF1aXRlLiBCb3RoIFVTQjMgYW5kIERQIGRyaXZl
cnMgc2hvdWxkIGJlIGNhbGxpbmcgcG93ZXJfb24gLyBfb2ZmLgo+Pj4+Pj4+PiBJZiBVU0IzIGlz
IG9uLCBwb3dlcmluZyBvbiBEUCBQSFkgc2hvdWxkIGZhaWwuIFZpY2UgdmVyc2EsIGlmIERQIGlz
IG9uLAo+Pj4+Pj4+PiBwb3dlcmluZyBvbiBVU0Igc2hvdWxkIGZhaWwuCj4+Pj4+PiBJIHRoaW5r
IG91ciB1bmRlcnN0YW5kaW5nIG1pZ2h0IG5vdCBiZSBmdWxseSBhbGlnbmVkLgo+Pj4+IEkgZGlk
IG5vdCB3cml0ZSB0aGlzLiBQbGVhc2UgZml4IHlvdXIgbWFpbGVyIHRvIHF1b3RlIG1lc3NhZ2Vz
IHByb3Blcmx5Lgo+Pj4+IEFzIHlvdSBhcmUgdXNpbmcgVGh1bmRlcmJpcmQsIEknbSBub3Qgc3Vy
ZSB3aGVyZSB0aGUgaXNzdWUgY29tZXMgZnJvbS4KPj4+Pgo+Pj4+IEFsc28gcGxlYXNlIGZpeCBp
dCB0byB3cmFwIHlvdXIgcmVzcG9uc2VzIHNvbXdoZXJlIGxvZ2ljYWxseS4KPj4+Pgo+Pj4+Pj4g
UGVyaGFwcyB0aGlzIGlzIGJlY2F1c2UgSSBkaWRu4oCZdCBhY2N1cmF0ZWx5IHVwZGF0ZSB0aGUg
bXV0dWFsIGV4Y2x1c2lvbiByZWxhdGlvbnNoaXBzIGFuZCB0ZXN0IHJlc3VsdHMgZm9yIHRoZSBk
aWZmZXJlbnQgUEhZcy4KPj4+Pj4+IExldCBtZSBjbGFyaWZ5IG15IGxhdGVzdCBmaW5kaW5ncyBh
bmQgZXhwbGFpbiB3aHkgSSBiZWxpZXZlIHRoZXNlIGFyZSBzZXBhcmF0ZSBQSFlzIHRoYXQgcmVx
dWlyZSBtdXR1YWwgZXhjbHVzaW9uIHZpYSBUQ1NSLgo+Pj4+Pj4KPj4+Pj4+IDEuIEFib3V0IHRo
ZSBUQ1NSIERQX1BIWU1PREUgUmVnaXN0ZXJzCj4+Pj4+Pgo+Pj4+Pj4gTVNNODk5OC9TRE02NjA6
Cj4+Pj4+PiAJT25seSBvbmUgVENTUl9VU0IzX0RQX1BIWU1PREUgcmVnaXN0ZXIgYXQgMHgxRkNC
MjQ4Lgo+Pj4+Pj4gUUNNMjI5MC9TTTYxMTU6Cj4+Pj4+PiAJVENTUl9VU0IzXzBfRFBfUEhZTU9E
RSBhdCAweDNDQjI0OAo+Pj4+Pj4gCVRDU1JfVVNCM18xX0RQX1BIWU1PREUgYXQgMHgzQ0IyNEMK
Pj4+Pj4+IFNNNjE1MDoKPj4+Pj4+IAlUQ1NSX1VTQjNfMF9EUF9QSFlNT0RFIGF0IDB4MUZDQjI0
OAo+Pj4+Pj4gCVRDU1JfVVNCM18xX0RQX1BIWU1PREUgYXQgMHgxRkNCMjRDCj4+Pj4gU002MTUw
IGhhcyB0d28gZGlmZmVyZW50IHNldHMgb2Ygb3V0cHV0IHBpbnMsIHNvIHRoZSBmaXJzdCByZWdp
c3Rlcgo+Pj4+IGNvdmVycyBmaXJzdCBzZXQgb2YgU1MgbGFuZXMgKHdoaWNoIGFyZSByb3V0ZWQg
dG8gdGhlIGRvY3VtZW50ZWQgU1MKPj4+PiBQSFkpLCB0aGUgc2Vjb25kIHJlZ2lzdGVyIGNvdmVy
cyB0aGUgc2Vjb25kIHNldCBvZiBTUyBsYW5lcyAod2hpY2ggYXJlCj4+Pj4gcm91dGVkIHRvIHRo
ZSBEUCBhbmQgc2Vjb25kYXJ5IFVTQiBQSFkpLgo+Pj4+Cj4+Pj4gSSBjYW4gb25seSBhc3N1bWUg
dGhhdCB0aGUgc2FtZSBjb25maWd1cmF0aW9uIHdhcyBzdXBwb3NlZCB0byBiZQo+Pj4+IGFwcGxp
Y2FibGUgdG8gUUNNMjI5MCAvIFNNNjExNSwgYnV0IHdhcyBsYXRlciByZW1vdmVkIC8gZGlzYWJs
ZWQsIHdoaWxlCj4+Pj4gdGhlIHJlZ2lzdGVycyB3ZXJlIGtlcHQgaW4gdGhlIFRDU1IgYmxvY2su
Cj4+Pj4KPj4+Pj4+IEV2ZW4gdGhvdWdoIE1TTTg5OTgsIFNETTY2MCwgUUNNMjI5MCwgYW5kIFNN
NjExNSBhbGwgaGF2ZSBvbmUgVVNCMyBQSFkgYW5kIG9uZSBEUCBQSFksIHRoZSBUQ1NSIERQX1BI
WU1PREUgcmVnaXN0ZXIgY29uZmlndXJhdGlvbiBpcyBkaWZmZXJlbnQgb24gZWFjaCBwbGF0Zm9y
bS4KPj4+Pj4+Cj4+Pj4+PiBBZGRpdGlvbmFsbHksIEkgZm91bmQgc29tZSBpbnRlcmVzdGluZyBy
ZWdpc3RlciBkb2N1bWVudGF0aW9uIGZvciBRQ00yMjkwL1NNNjExNToKPj4+Pj4+IAlUQ1NSX1VT
QjNfMF9EUF9QSFlNT0RFOiDigJxJbiBrYW1vcnRhIHRoaXMgb25lIGlzIGZvciBtb2JpbGUgdXNi
LiBEUCBub3Qgc3VwcG9ydGVkLuKAnQo+Pj4+Pj4gCVRDU1JfVVNCM18xX0RQX1BIWU1PREU6IOKA
nERQIG1vZGUgc3VwcG9ydGVkIGZvciBBdXRvIHVzYiBpbiBrYW1vcnRhLuKAnQo+Pj4+Pj4gSSB0
aGluayB0aGUgcmVhc29uIGZvciBoYXZpbmcgdHdvIGRpZmZlcmVudCBUQ1NSIHJlZ2lzdGVycyBp
cyB0byBhbGxvdyBib3RoIHRoZSBVU0IzLjAgYW5kIERQIFBIWXMgdG8gYmUgdXNlZHMgYXQgdGhl
IHNhbWUgdGltZSBpbiBjZXJ0YWluIHByb2R1Y3QgY29uZmlndXJhdGlvbnMuCj4+Pj4gU3VyZS4g
T25lIGZvciB0aGUgZmlyc3QgUEhZIChVU0IpLCBvbmUgZm9yIHRoZSBzZWNvbmQgUEhZIChVU0Ir
RFApLgo+Pj4+IElmIHlvdSBjaGVjayB0aGUgbWVtb3J5IG1hcCwgeW91IHdpbGwgZmluZCB0aGUg
c2Vjb25kIFZMUyBDTEFNUCByZWdpc3Rlcgo+Pj4+IGZvciB0aGUgc2Vjb25kIFVTQiBQSFkuCj4+
Pj4KPj4+Pj4+IDIuIFNNNjE1MCBUZXN0IFJlc3VsdHMKPj4+Pj4+IFdoZW4gVENTUl9EUF9QSFlN
T0RFXzAgaXMgc3dpdGNoZWQgdG8gRFAsIHRoZSBVU0IzIHByaW1hcnkgUEhZIGNhbm5vdCB3b3Jr
LCBhbmQgdGhlIERQIFBIWSBpcyBhbHNvIG5vdCBmdW5jdGlvbmFsIChwb3NzaWJseSBkdWUgdG8g
Y2xvY2sgbGFjayBvciBvdGhlciBjb25maWd1cmF0aW9uIG1pc21hdGNoIHdpdGggdGhpcyBUQ1NS
IHNldHRpbmcpLgo+Pj4+Pj4gV2hlbiBUQ1NSX0RQX1BIWU1PREVfMSBpcyBzd2l0Y2hlZCB0byBE
UCwgYm90aCB0aGUgVVNCMyBwcmltYXJ5IFBIWSBhbmQgdGhlIERQIFBIWSB3b3JrIG5vcm1hbGx5
Lgo+Pj4+Pj4gSSB0aGluayAid2h5IG1zbS00LjE0IGRpZG4ndCBkZXNjcmliZSBzZWNvbmQgVVNC
MyBQSFkiLCBiZWNhdXNlIFRDU1JfRFBfUEhZTU9ERV8xIGFsd2F5cyB3b3JrcyBpbiBEUCBtb2Rl
Lgo+Pj4+Pj4gaHR0cHM6Ly9hbmRyb2lkLmdvb2dsZXNvdXJjZS5jb20va2VybmVsL21zbS8rL2Fm
MDNlZWY3ZDRjM2NiZDFmZTI2YzY3ZDRmMTkxNWIwNWQwYzE0ODgvZHJpdmVycy9ncHUvZHJtL21z
bS9kcC9kcF9jYXRhbG9nX3YyMDAuYwo+Pj4+IEhlcmUgaXQgc3RpbGwgcHJvZ3JhbXMgdGhlIFRD
U1IgcmVnaXN0ZXIuCj4+Pj4KPj4+Pj4+IEJhc2VkIG9uIHRoZXNlIGluZm8sIEkgYmVsaWV2ZSB0
aGVzZSBhcmUgc2VwYXJhdGUgUEhZcywgYW5kIG9ubHkgdGhlCj4+Pj4+PiBUQ1NSIERQX1BIWU1P
REUgcmVnaXN0ZXJzIGRldGVybWluZSB3aGljaCBVU0IzL0RQIFBIWXMgYXJlIHBhaXJlZCBvcgo+
Pj4+Pj4gbXV0dWFsbHkgZXhjbHVzaXZlLiBUaGlzIGlzIHdoeSBJIGhhdmUgbWFpbnRhaW5lZCBz
ZXBhcmF0ZSBwcml2YXRlCj4+Pj4+PiBkYXRhIGZvciBlYWNoIFBIWSBhbmQgaW1wbGVtZW50ZWQg
UG93ZXIgb24gbXV0ZXggY29udHJvbCB2aWEgVENTUiwKPj4+Pj4+IHJhdGhlciB0aGFuIHVzaW5n
IGEgcW1wX2NvbWJvLWxpa2Ugc3RydWN0dXJlLgo+Pj4+IFN0aWxsLCBuby4gQ2hlY2sgdGhlIGJs
b2NrIGRpYWdyYW0gb2YgU002MTUwLgo+Pj4+Cj4+Pj4+PiBHaXZlbiB0aGUgYWJvdmUsIGRvIHlv
dSB0aGluayB3ZSBzdGlsbCBuZWVkIHRvIGZvcmNlIFVTQiBhbmQgRFAgdG8gYmUgc3RyaWN0bHkg
Ym91bmQgdG9nZXRoZXIgbGlrZSBhIGNvbWJvIFBIWT8KPj4+PiBZZXMuCj4+PiBJIGNoZWNrZWQg
dGhlIHJlbGF0ZWQgUEhZIHNlcmllcyBhbmQgYmxvY2sgZGlhZ3JhbXMgYWdhaW4uCj4+Pgo+Pj4g
UFJJIGFuZCBTRUMgZ28gdG8gZGlmZmVyZW50IG5vZGVzIGJhc2VkIG9uIHRoZSBTb0MgZGVzaWdu
LCBhbmQgdGhlcmUgYXJlIHR3byB0eXBlcyBvZiBjb25maWd1cmF0aW9uczogVVNCMy1vbmx5IGFu
ZCBVU0IzK0RQIHBhaXJpbmcuCj4+Pgo+Pj4gQmVmb3JlIHByb2NlZWQgdGhlIHYzIHBhdGNoc2V0
LCBJ4oCZZCBsaWtlIHRvIGRvdWJsZS1jb25maXJtIHdoZXRoZXIgdGhlIGZvbGxvd2luZyBzdHJ1
Y3R1cmUgaXMgd2hhdCB5b3UgZXhwZWN0Ogo+Pj4KPj4+IHVzYl9xbXBwaHlfMTogcGh5QDg4ZTYw
MDAgewo+Pj4gIMKgwqDCoCBjb21wYXRpYmxlID0gInFjb20sc202MTUwLXFtcC11c2IzLXByaW0t
cGh5IjsgPD09IHJlbmFtZSB0byBQUklNCj4+IE5vLCB3ZSBhbHJlYWR5IGhhdmUgYSBjb21wYXRp
YmxlIG5hbWUgYW5kIERUIHNjaGVtYSBmb3IgdGhpcyBkZXZpY2UuCj4gVGhlbiBjdXJyZW50IGNv
bXBhdGlibGUgbmFtZSBpcyAicWNvbSxxY3M2MTUtcW1wLXVzYjMtcGh5IiBhbmQgc2hhbGwgd2Ug
bmVlZCB1cGRhdGUgdG8gInFjb20sc202MTUwLXFtcC11c2IzLXBoeSI/CgpXaHk/IFlvdSBfYWxy
ZWFkeV8gaGF2ZSBhIGNvbXBhdGlibGUgc3RyaW5nLiBZb3UgZG9uJ3QgbmVlZCB0byBjaGFuZ2Ug
aXQgCmp1c3QgdG8gZm9sbG93IHRoZSBTb0MgbmFtZS4KCj4+Cj4+PiAgwqDCoMKgIC4uLgo+Pj4g
IMKgwqDCoCBxY29tLHRjc3ItcmVnID0gPCZ0Y3NyIDB4YjI0ND4sIDwmdGNzciAweGIyNDg+Owo+
Pj4gIMKgwqDCoCBxY29tLHRjc3ItbmFtZXMgPSAidmxzX2NsYW1wIiwgImRwX3BoeV9tb2RlIjsK
Pj4gTm8gbmVlZCBmb3IgcWNvbSx0Y3NyLW5hbWVzLiBTZWNvbmQgVENTUiByZWdpc3RlciBzaG91
bGQgYmUgb3B0aW9uYWwgaW4KPj4gdGhlIGRyaXZlci4KPiBPay4KPj4KPj4+ICAgICAgCj4+PiAg
wqDCoMKgICNjbG9jay1jZWxscyA9IDwxPjsKPj4+ICDCoMKgwqAgI3BoeS1jZWxscyA9IDwxPjsK
Pj4gI2Nsb2NrLWNlbGxzID0gPDA+Owo+PiAjcGh5LWNlbGxzID0gPDA+Owo+Pgo+Pj4gIMKgwqDC
oCAuLi4KPj4+IH07Cj4+Pgo+Pj4gdXNiX3FtcHBoeV8yOiBwaHlAODhlODAwMCB7Cj4+PiAgwqDC
oMKgIGNvbXBhdGlibGUgPSAicWNvbSxzbTYxNTAtcW1wLXVzYjNkcC1zZWMtcGh5IjsgPD09IFNF
QyBTUywgdXNlIHVzYjNkcCB0byBpbmRpY2F0ZSBEUCBjYXBhYmlsaXR5Cj4+IHFjb20sc202MTUw
LXFtcC11c2IzLWRwLXBoeQo+IE9rLCBidXQgZm9yIHRoaXMgcGFydCwgc2hhbGwgd2UgdXBkYXRl
IGR0LWJpbmRpbmcgaW4gInFjb20sbXNtODk5OC1xbXAtdXNiMy1waHkueWFtbCIgb3IgY3JlYXRl
IGEgbmV3IG9uZT8KCkkgdGhpbmsgKEkgbWlnaHQgYmUgd3JvbmcgaGVyZSkgbmV3IG9uZXMgaXMg
YSBiZXR0ZXIgZml0LiBXZSdsbCBtaWdyYXRlIAp0aGUgcmVzdCBvZiBQSFlzIHRvIG5ldyBiaW5k
aW5ncyBsYXRlciBvbi4KCj4+Cj4+PiAgwqDCoMKgIHJlZyA9IDwweDAgMHgwODhlODAwMCAweDAg
MHgyMDAwPjsgPD09IFNTMiBiYXNlIGFkZHJlc3MgYW5kIG9mZnNldCBkZWZpbmUgaW4gZHJpdmVy
IGNvbmZpZwo+Pj4KPj4+ICDCoMKgwqAgY2xvY2tzID0gPCZnY2MgR0NDX0FIQjJQSFlfV0VTVF9D
TEs+LAo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZnY2MgR0NDX1VTQjNfU0VDX0NMS1JF
Rl9DTEs+OyA8PT0gVGhpcyBTb0MgaGFzIG5vIFVTQjMuMCBTRUMgU1MgY2xrCj4+PiAgwqDCoMKg
IGNsb2NrLW5hbWVzID0gImNmZ19haGIiLAo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAicmVmIjsKPj4+ICDCoMKgwqAgY2xvY2stb3V0cHV0LW5hbWVzID0gImRwX3BoeV9saW5r
X2NsayIsCj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgImRwX3Bo
eV92Y29fZGl2X2NsayI7Cj4+IE5vIG5lZWQgdG8sIHRoZSBkcml2ZXIgY2FuIGdlbmVyYXRlIG5h
bWVzIG9uIGl0cyBvd24uCj4gT2suCj4+Cj4+PiAgICAgICAgICAgICAgICAgICAgICAKPj4+ICDC
oMKgwqAgcmVzZXRzID0gPCZnY2MgR0NDX1VTQjNQSFlfUEhZX1NFQ19CQ1IgPiwKPj4+ICDCoMKg
wqDCoMKgwqDCoMKgIDwmZ2NjIEdDQ19VU0IzX0RQX1BIWV9TRUNfQkNSPjsKPj4+ICDCoMKgwqAg
cmVzZXQtbmFtZXMgPSAicGh5IiwgInBoeV9waHkiOwo+PiAicGh5X3BoeSIsICJkcF9waHkiLiBJ
cyB0aGVyZSBubyBHQ0NfVVNCM19QSFlfU0VDX0JDUj8KPiBUaGVyZSBhcmUgb25seSBHQ0NfVVNC
Ml9QSFlfU0VDX0JDUiBhbmQgR0NDX1VTQjNQSFlfUEhZX1NFQ19CQ1IsIG5vIEdDQ19VU0IzX1BI
WV9TRUNfQkNSLgoKQWNrLgoKPj4+ICDCoMKgwqAgcWNvbSx0Y3NyLXJlZyA9IDwmdGNzciAweGJm
ZjA+LCA8JnRjc3IgMHhiMjRjPjsKPj4+ICDCoMKgwqAgcWNvbSx0Y3NyLW5hbWVzID0gInZsc19j
bGFtcCIsICJkcF9waHlfbW9kZSI7IDw9PSBhZGRlZCBmb3IgYmFja3dhcmQgY29tcGF0aWJpbGl0
eSB3aXRoIGxlZ2FjeSBjb25maWdzIHRoYXQgb25seSBoYWQgdmxzX2NsYW1wCj4+IE5vIG5lZWQg
Zm9yIHFjb20sdGNzci1uYW1lcywgY29ycmVjdCBvdGhlcndpc2UuCj4+Cj4+PiAgwqDCoMKgICNj
bG9jay1jZWxscyA9IDwxPjsKPj4+ICDCoMKgwqAgI3BoeS1jZWxscyA9IDwxPjsKPj4+Cj4+PiAg
wqDCoMKgIHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4+PiB9Owo+Pj4KPj4+Pj4+PiBTaWduZWQtb2Zm
LWJ5OiBYaWFuZ3h1IFlpbiA8eGlhbmd4dS55aW5Ab3NzLnF1YWxjb21tLmNvbT4KPj4+Pj4+PiAt
LS0KPj4+Pj4+PiAgIC4uLi9iaW5kaW5ncy9waHkvcWNvbSxxY3M2MTUtcW1wLWRwLXBoeS55YW1s
ICAgICAgIHwgMTExICsrKysrKysrKysrKysrKysrKysrKwo+Pj4+Pj4+ICAgMSBmaWxlIGNoYW5n
ZWQsIDExMSBpbnNlcnRpb25zKCspCj4+Pj4+Pj4KCgotLSAKV2l0aCBiZXN0IHdpc2hlcwpEbWl0
cnkKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
