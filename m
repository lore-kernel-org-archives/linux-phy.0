Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE27EC02182
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jan 2025 07:00:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mvV6/permnuxGEnch4RhgM//tFILiG8qkqpLRMvVAsA=; b=PKcoa2HRc4SjPW
	AsreBEuIZbqflLI9+1qGNSp43b0hrdgOnaRYusxG10vTiQerlgt2YTKsv/p/54trXkWM9paOptExc
	5E7TAuFeb8fXooSKKjAKuArci5Z0oiJH6XJg8R9y3Vt4FQnWCkrFJ5WBSW7FXxIz34nFH+QGu2HDs
	tz9GVqnGiVUnIjRULKkAqnHxabojVu1wpwL2/fCC4lcfGAn2oEUn214ejA3vU0S2Jfv5w2bZDizYp
	ETSQkyZgQEME1vFma9b3w/gyZhAlOYN1mii7R3AmdI9atX2Q+Fs0tJy0GB6woC5ZU4ajXOyVXVA5v
	csIEzHwnLA/Ekl6Rafmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tarCf-0000000BpR6-2lug;
	Thu, 23 Jan 2025 07:00:37 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tarCc-0000000BpQj-0PZx
	for linux-phy@lists.infradead.org;
	Thu, 23 Jan 2025 07:00:35 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50N6WVPH011388
	for <linux-phy@lists.infradead.org>; Thu, 23 Jan 2025 07:00:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lLn0ZtrJED7RhWi4kHyBZkUHUNX/qZUfzSOJZgWhM0k=; b=b1IeRc1sjY0SB1vB
	nE496pnBziEdFoL+LY0oXyyfWqAFcC3LuKjzTWdkmHbwzVN1RMvnM12ybBGZmmRh
	cAZmAAguXVKonhowybrw9tfLMDJ3SljqiTr2yTdCYmkN9CIugSfadkAecLrtauHH
	WDx4sHBR+/DsrczAVQbiZqgx7LHu6JYPfKBPg6Rqrn0v+zh6inMyQ/mO8WwDB+WQ
	aobb85E96jjacwPf3Kbkafm3eU9yDB1J4woOp51KfhS9QoOilMaWHnX3Y4PcCPF+
	ZiSfGfRZBk7un25i/ARWGt/ZcO9sBoQZvwj+g5nrk/CWdXvC2tJCKbT7wBnvDjBh
	0RQHBg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44bgk1g1uw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 23 Jan 2025 07:00:31 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2178115051dso11715385ad.1
        for <linux-phy@lists.infradead.org>; Wed, 22 Jan 2025 23:00:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737615631; x=1738220431;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lLn0ZtrJED7RhWi4kHyBZkUHUNX/qZUfzSOJZgWhM0k=;
        b=ufQ/y0JmWPmW9SXGmHVGFBeo2ymXrcqF3YDP3tMHtUgGf3GTdb6oO/05LGq0yMUhDj
         iDBeN52BmBp06/38BQnRErW3RE7osAC5zNCE2V3BkOCuH2uQoxLdVHcDAcIaIJNv/98p
         Ib8qil6ugjJ2Zl2GliR0cURLDAs3TjC0c4dYxd9TGKEfUPo+NigbAhsmCo8NfYKW2+M2
         t0zsF8f59jKDtcz8C50+FKfOL1QiW2lEChTCDENGe5ZiyStPX98zdWBzNQ2Ns3l2o4Xm
         o9/Zq8+dWnVxf68Bhx22IjeH7Zp2aOYkiGggDiYYm3Tk5fFOmAA7hDcZKY3xLThHO9Qp
         rrqw==
X-Forwarded-Encrypted: i=1; AJvYcCXYBdEk1hIsuKKp7Wy0h8/rSDqtt6McqT10FbmvsUdeA24bcWJNdbKodQEMNUFSmUCXp7s3/te+Inw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz4kp8N5opapm29l1+dGlTx4rnEGp5nLhvYy3mLDYVXZiyvrBvN
	kf5Zpe6Mss+/uhk0u9rxQKjq26tkwAlHYPhcxpz3hV4kmX5I5JuoapUp1y69yv1UcAFTSDW7/8D
	Nv/wruKkuOM8+/qZVYmRzTtCxDgFzkCtqFqabVZjb4sZYdlAkjCD6GJnf1Xr4yBP0
X-Gm-Gg: ASbGncsxca1dJyPJDpCUoQYaY4JRUu3chnty7yOrN+efaYh5O1AcHaposPtljrydpr8
	mJueMc5XII/hJimk/LMepnfRt8Oc4QxUrYXsQnADnJKmIOeBVNtOnkTV3anN3bC65UlSz9PFJPS
	nrs1/SyWR1YUPaChFPqJ6b0E6Ww/Ev546myccZC/KiZomWuNkLkXsy9mTcZos3CMEWniIb2ZjyQ
	WAHWPPLE8OkwirTRy6jvhCkmD9BV/rlGQGJy2XGfQm4xoO6ENi/R7+rb/RU0Omw1cAjqz0H8JPK
	gOj1/UVp3dKXyiXMuVTVyXkB
X-Received: by 2002:a05:6a20:8423:b0:1e1:ca27:89f0 with SMTP id adf61e73a8af0-1eb215bec54mr40615261637.37.1737615630964;
        Wed, 22 Jan 2025 23:00:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEZ6pMT4A88Fdmsz/cNXQ9PxRhY0+FNHVX1QOqxLkCD3YyRypW/6C9+UUpI2loS7HZ7xJvTqw==
X-Received: by 2002:a05:6a20:8423:b0:1e1:ca27:89f0 with SMTP id adf61e73a8af0-1eb215bec54mr40615194637.37.1737615630406;
        Wed, 22 Jan 2025 23:00:30 -0800 (PST)
Received: from [10.92.167.45] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-aa84ed133fdsm9486272a12.17.2025.01.22.23.00.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jan 2025 23:00:30 -0800 (PST)
Message-ID: <f607aa9b-018c-4df6-9921-725693353f65@oss.qualcomm.com>
Date: Thu, 23 Jan 2025 12:30:25 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: (subset) [PATCH v3 0/3] Add support for USB controllers on QCS615
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <20241224084621.4139021-1-krishna.kurapati@oss.qualcomm.com>
 <173505391861.950293.11120368190852109172.b4-ty@kernel.org>
 <anfqf3jvh7timbvbfqfidylb4iro47cdinbb2y64fdalbiszum@2s3n7axnxixb>
 <Z2sJK9g7hiHnPwYA@vaman>
 <i7gptvn2fitpqypycjhsyjnp63s2w5omx4jtpubylfc3hx3m5l@jbuin5uvxuoc>
 <Z2sOl9ltv0ug4d82@vaman>
 <318620fc-e174-4ef3-808a-69fe1d4e1df5@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <318620fc-e174-4ef3-808a-69fe1d4e1df5@oss.qualcomm.com>
X-Proofpoint-GUID: ACdJ6HhxMeltMu_AL3eX4FIZVJsiEDDA
X-Proofpoint-ORIG-GUID: ACdJ6HhxMeltMu_AL3eX4FIZVJsiEDDA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-23_02,2025-01-22_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxlogscore=999
 phishscore=0 spamscore=0 impostorscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 suspectscore=0 adultscore=0 lowpriorityscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501230052
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250122_230034_150487_840812AB 
X-CRM114-Status: GOOD (  18.67  )
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

CgpPbiAxMi8yNS8yMDI0IDI6MDEgUE0sIEtyaXNobmEgS3VyYXBhdGkgd3JvdGU6Cj4gCj4gCj4g
T24gMTIvMjUvMjAyNCAxOjEyIEFNLCBWaW5vZCBLb3VsIHdyb3RlOgo+PiBPbiAyNC0xMi0yNCwg
MjE6MzMsIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+PiBPbiBXZWQsIERlYyAyNSwgMjAyNCBh
dCAxMjo0OTowN0FNICswNTMwLCBWaW5vZCBLb3VsIHdyb3RlOgo+Pj4+IE9uIDI0LTEyLTI0LCAx
NzozOCwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPj4+Pj4gT24gVHVlLCBEZWMgMjQsIDIwMjQg
YXQgMDg6NTU6MThQTSArMDUzMCwgVmlub2QgS291bCB3cm90ZToKPj4+Pj4+Cj4+Pj4+PiBPbiBU
dWUsIDI0IERlYyAyMDI0IDE0OjE2OjE4ICswNTMwLCBLcmlzaG5hIEt1cmFwYXRpIHdyb3RlOgo+
Pj4+Pj4+IFRoaXMgc2VyaWVzIGFpbXMgYXQgZW5hYmxpbmcgVVNCIG9uIFFDUzYxNSB3aGljaCBo
YXMgMiBVU0IgCj4+Pj4+Pj4gY29udHJvbGxlcnMuCj4+Pj4+Pj4gVGhlIHByaW1hcnkgY29udHJv
bGxlciBpcyBTdXBlclNwZWVkIGNhcGFibGUgYW5kIHNlY29uZGFyeSBvbmUgaXMKPj4+Pj4+PiBI
aWdoIFNwZWVkIG9ubHkgY2FwYWJsZS4gVGhlIEhpZ2ggU3BlZWQgUGh5IGlzIGEgUVVTQjIgcGh5
IGFuZCB0aGUKPj4+Pj4+PiBTdXBlclNwZWVkIFBoeSBpcyBhIFFNUCBVbmkgUGh5IHdoaWNoIHN1
cHBvcnRzIG5vbi1jb25jdXJyZW50IERQLgo+Pj4+Pj4+Cj4+Pj4+Pj4gTGluayB0byB2MToKPj4+
Pj4+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNDEwMTQwODQ0MzIuMzMxMDExNC0x
LXF1aWNfa3Jpc2t1cmFAcXVpY2luYy5jb20vCj4+Pj4+Pj4KPj4+Pj4+PiBbLi4uXQo+Pj4+Pj4K
Pj4+Pj4+IEFwcGxpZWQsIHRoYW5rcyEKPj4+Pj4+Cj4+Pj4+PiBbMi8zXSBwaHk6IHFjb20tcXVz
YjI6IEFkZCBzdXBwb3J0IGZvciBRQ1M2MTUKPj4+Pj4+IMKgwqDCoMKgwqDCoCBjb21taXQ6IDhh
ZGJmMjBlMDUwMjVmNTg4ZDY4ZmI1YjBmYmJkYWI0ZTlhNmY5N2Vjb21taXQgCj4+Pj4+PiBlMWIy
NzcyZWE5NTdjOTE2OTRhYTkxYjkwZTRjMGExZDdiMGZiMTQ0Cj4gQXV0aG9yOiBLcmlzaG5hIEt1
cmFwYXRpIDxxdWljX2tyaXNrdXJhQHF1aWNpbmMuY29tPgo+IERhdGU6wqDCoCBNb24gT2N0IDE0
IDE0OjE0OjMwIDIwMjQgKzA1MzAKPiAKPiAgwqDCoMKgIGR0LWJpbmRpbmdzOiBwaHk6IHFjb20s
bXNtODk5OC1xbXAtdXNiMy1waHk6IEFkZCBzdXBwb3J0IGZvciBRQ1M2MTUKPiAKPiAKPj4+Pj4K
Pj4+Pj4gSXMgdGhlcmUgYW55IGlzc3VlIHdpdGggdGhlIHR3byByZW1haW5pbmcgcGF0Y2hlcz8K
Pj4+Pgo+Pj4+IFNvbWV0aGluZyB3cm9uZyB3aXRoIGI0Li4uIEkgaGF2ZSBhcHBsaWVkIDIgJiAz
Cj4+Pj4gUGF0Y2ggMSBzaG91bGQgZ28gdGhydSBVU0IgdHJlZQo+Pj4KPj4+IEhtbSwgc3RyYW5n
ZS4gQnV0IHRoZW4sIHBsZWFzZSBleGN1c2UgbXkgaWdub3JhbmNlLCBkbyB3ZSBoYXZlIGJpbmRp
bmdzCj4+PiBmb3IgdGhlc2UgdHdvIHBhdGNoZXM/Cj4+Cj4+IEkgc2VlIHRvIGhhdmUgbWlzc2Vk
IG9uZSEKPj4KPj4gVGhpcyBvbmUgaXMgZG9jdW1lbnRlZCBzZWU6Cj4+IGQxNDZkMzg0MjIyZSBk
dC1iaW5kaW5nczogcGh5OiBxY29tLHF1c2IyOiBBZGQgYmluZGluZ3MgZm9yIFFDUzYxNQo+Pgo+
PiBidXQsIHRoZSB0aGlyZCBwYXRjaCBpcyBzYWRseSBub3QuLi4gSSBhbSBkcm9wcGluZyB0aGUg
dGhpcmQgcGF0Y2gKPj4KPiAKPiBIaSBEbWl0cnksIFZpbm9kLAo+IAo+ICDCoEkgc2VlIHRoZSBi
aW5kaW5ncyBmb3IgUU1QIFBIWSBpbiBsaW51eCBuZXh0IGFzIGZvbGxvd3M6Cj4gCj4gY29tbWl0
IGUxYjI3NzJlYTk1N2M5MTY5NGFhOTFiOTBlNGMwYTFkN2IwZmIxNDQKPiBBdXRob3I6IEtyaXNo
bmEgS3VyYXBhdGkgPHF1aWNfa3Jpc2t1cmFAcXVpY2luYy5jb20+Cj4gRGF0ZTrCoMKgIE1vbiBP
Y3QgMTQgMTQ6MTQ6MzAgMjAyNCArMDUzMAo+IAo+ICDCoMKgwqAgZHQtYmluZGluZ3M6IHBoeTog
cWNvbSxtc204OTk4LXFtcC11c2IzLXBoeTogQWRkIHN1cHBvcnQgZm9yIFFDUzYxNQo+IAo+IEFz
IG1lbnRpb25lZCBpbiB0aGUgY292ZXIgbGV0dGVyLCB0aGUgYmluZGluZ3Mgb2YgcGh5IGhhdmUg
YmVlbiBtZXJnZWQgCj4gZnJvbSB2MS4KCkhpIFZpbm9kLAoKICBDYW4geW91IGhlbHAgaW4gdGFr
aW5nIGluIHRoZSBwYXRjaC0zLiBBcyBtZW50aW9uZWQgaW4gcHJldmlvdXMgbWFpbCwgCnRoZSBi
aW5kaW5ncyBhcmUgbWVyZ2VkIGFuZCBwcmVzZW50IGluIGxpbnV4LW5leHQuCgpSZWdhcmRzLApL
cmlzaG5hLAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
